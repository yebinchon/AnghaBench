
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int xmlParserInputBufferPtr ;
typedef int xmlCharEncoding ;


 int __xmlParserInputBufferCreateFilename (char const*,int ) ;
 int xmlParserInputBufferCreateFilenameValue (char const*,int ) ;

xmlParserInputBufferPtr
xmlParserInputBufferCreateFilename(const char *URI, xmlCharEncoding enc) {
    if ((xmlParserInputBufferCreateFilenameValue)) {
  return xmlParserInputBufferCreateFilenameValue(URI, enc);
 }
 return __xmlParserInputBufferCreateFilename(URI, enc);
}
