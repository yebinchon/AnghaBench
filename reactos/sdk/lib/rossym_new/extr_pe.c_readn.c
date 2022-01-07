
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ulong ;


 int RosSymReadFile (void*,char*,int ) ;

int readn(void *filectx, char *buffer, ulong size) {
 return RosSymReadFile(filectx, buffer, size);
}
