
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int Languages; int File; } ;
typedef TYPE_1__ MSISIGNATURE ;


 int msi_free (int ) ;

__attribute__((used)) static void ACTION_FreeSignature(MSISIGNATURE *sig)
{
    msi_free(sig->File);
    msi_free(sig->Languages);
}
