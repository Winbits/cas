package org.jasig.cas.authentication.handler;

import org.springframework.security.authentication.encoding.MessageDigestPasswordEncoder;

public class SpringSecurityPasswordEncoder  extends MessageDigestPasswordEncoder implements PasswordEncoder{
  public SpringSecurityPasswordEncoder(String algorithm) {
    super(algorithm);
  }

  public SpringSecurityPasswordEncoder(String algorithm, boolean encodeHashAsBase64) throws IllegalArgumentException {
    super(algorithm, encodeHashAsBase64);
  }

  @Override
  public String encode(String password) {
    return super.encodePassword(password, null);
  }
}
