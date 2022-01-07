
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ulong ;


 int RosSymSeekFile (void*,int ) ;
 int assert (int) ;

int seek(void *filectx, ulong position, int origin) {
 assert(origin == 0);
 return RosSymSeekFile(filectx, position);
}
