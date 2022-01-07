
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int rtfMajor; } ;
typedef TYPE_1__ RTF_Info ;


 int RTFPutCodePageChar (TYPE_1__*,int ) ;

__attribute__((used)) static void
TextClass (RTF_Info *info)
{
 RTFPutCodePageChar(info, info->rtfMajor);
}
