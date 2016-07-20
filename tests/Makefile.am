TESTS =			\
	jwt_new		\
	jwt_grant	\
	jwt_dump	\
	jwt_encode

check_PROGRAMS = $(TESTS)

AM_CPPFLAGS = -I$(top_srcdir)/include $(OPENSSL_INCLUDES)
AM_CFLAGS = -Wall $(CHECK_CFLAGS) $(OPENSSL_CFLAGS)
AM_LDFLAGS = -L$(top_srcdir)/libjwt $(OPENSSL_LDFLAGS)
LDADD = -ljwt $(CHECK_LIBS) $(OPENSSL_LIBS)
