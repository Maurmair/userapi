package net.maurmair.userapi.repository;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Component;

import net.maurmair.userapi.model.User;
@Component
public interface UserRepository extends CrudRepository<User, Integer> {
    
}
