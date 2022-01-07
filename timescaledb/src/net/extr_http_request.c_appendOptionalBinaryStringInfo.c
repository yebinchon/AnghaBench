
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int StringInfo ;


 int Assert (int ) ;
 int appendBinaryStringInfo (int ,char const*,int) ;

__attribute__((used)) static void
appendOptionalBinaryStringInfo(StringInfo str, const char *data, int datalen)
{
 if (datalen <= 0)
  return;

 Assert(data != ((void*)0));
 appendBinaryStringInfo(str, data, datalen);
}
