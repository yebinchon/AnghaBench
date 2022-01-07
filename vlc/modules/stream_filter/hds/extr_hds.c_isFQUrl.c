
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int * strcasestr (char const*,char*) ;

__attribute__((used)) static inline bool isFQUrl( const char* url )
{
    return ( ((void*)0) != strcasestr( url, "https://") ||
             ((void*)0) != strcasestr( url, "http://" ) );
}
