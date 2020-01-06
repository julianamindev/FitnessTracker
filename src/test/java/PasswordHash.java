import junit.framework.TestCase;
import org.springframework.security.authentication.encoding.Md5PasswordEncoder;

public class PasswordHash extends TestCase {

    public void testMD5Hash() {
        String password = "Pupstamesa2013";
        Md5PasswordEncoder passwordEncoder = new Md5PasswordEncoder();
        String hashedPassword = passwordEncoder.encodePassword(password, null);
        System.out.println(hashedPassword);
    }
}
