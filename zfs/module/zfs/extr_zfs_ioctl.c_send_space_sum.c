
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int objset_t ;



int
send_space_sum(objset_t *os, void *buf, int len, void *arg)
{
 uint64_t *size = arg;
 *size += len;
 return (0);
}
