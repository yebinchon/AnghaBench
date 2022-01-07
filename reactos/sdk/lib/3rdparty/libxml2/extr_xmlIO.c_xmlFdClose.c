
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ ptrdiff_t ;


 int close (int) ;
 int xmlIOErr (int ,char*) ;

__attribute__((used)) static int
xmlFdClose (void * context) {
    int ret;
    ret = close((int) (ptrdiff_t) context);
    if (ret < 0) xmlIOErr(0, "close()");
    return(ret);
}
