
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum optdec { ____Placeholder_optdec } optdec ;


 int autodec ;
 int * decname ;
 int nodec ;
 int strcasecmp (char const*,int ) ;

enum optdec dectype(const char* decoder)
{
 enum optdec dt;
 if( (decoder == ((void*)0))
    || (decoder[0] == 0) )
 return autodec;

 for(dt=autodec; dt<nodec; ++dt)
 if(!strcasecmp(decoder, decname[dt])) return dt;

 return nodec;
}
