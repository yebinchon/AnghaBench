
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int boolean_t ;
typedef int arc_buf_t ;


 scalar_t__ ARC_BUF_ENCRYPTED (int *) ;

boolean_t
arc_is_encrypted(arc_buf_t *buf)
{
 return (ARC_BUF_ENCRYPTED(buf) != 0);
}
