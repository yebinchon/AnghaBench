
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int http_parser ;


 scalar_t__ HPE_OK ;
 scalar_t__ HPE_PAUSED ;
 scalar_t__ HTTP_PARSER_ERRNO (int *) ;
 int SET_ERRNO (scalar_t__) ;
 int assert (int) ;

void
http_parser_pause(http_parser *parser, int paused) {




  if (HTTP_PARSER_ERRNO(parser) == HPE_OK ||
      HTTP_PARSER_ERRNO(parser) == HPE_PAUSED) {
    SET_ERRNO((paused) ? HPE_PAUSED : HPE_OK);
  } else {
    assert(0 && "Attempting to pause parser in error state");
  }
}
