
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int off64_t ;


 int _ftelli64 (void*) ;
 int ftell (void*) ;
 int ftello (void*) ;

__attribute__((used)) static off64_t file_tell(void *data)
{





    return ftell(data);

}
