
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ ptrdiff_t ;


 int read (int,char*,int) ;
 int xmlIOErr (int ,char*) ;

__attribute__((used)) static int
xmlFdRead (void * context, char * buffer, int len) {
    int ret;

    ret = read((int) (ptrdiff_t) context, &buffer[0], len);
    if (ret < 0) xmlIOErr(0, "read()");
    return(ret);
}
