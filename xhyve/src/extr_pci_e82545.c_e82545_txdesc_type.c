
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 int E1000_TXD_CMD_DEXT ;
 int E1000_TXD_MASK ;

__attribute__((used)) static int
e82545_txdesc_type(uint32_t lower)
{
 int type;

 type = 0;

 if (lower & E1000_TXD_CMD_DEXT)
  type = lower & E1000_TXD_MASK;

 return (type);
}
