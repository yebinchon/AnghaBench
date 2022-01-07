
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


typedef int uint32 ;
typedef scalar_t__ uint16 ;
struct TYPE_12__ {int key; } ;
struct TYPE_14__ {void* licence_issued; TYPE_1__ licence; } ;
struct TYPE_13__ {int p; } ;
typedef TYPE_2__* STREAM ;
typedef TYPE_3__ RDPCLIENT ;
typedef int RC4_KEY ;


 int RC4 (int *,int,int ,int ) ;
 int RC4_set_key (int *,int,int ) ;
 void* True ;
 int in_uint16 (TYPE_2__*,scalar_t__) ;
 int in_uint16_le (TYPE_2__*,int) ;
 int in_uint32_le (TYPE_2__*,int) ;
 int in_uint8s (TYPE_2__*,int) ;
 int s_check_rem (TYPE_2__*,int) ;
 int save_licence (TYPE_3__*,int ,int) ;

__attribute__((used)) static void
licence_process_issue(RDPCLIENT * This, STREAM s)
{
 RC4_KEY crypt_key;
 uint32 length;
 uint16 check;
 int i;

 in_uint8s(s, 2);
 in_uint16_le(s, length);
 if (!s_check_rem(s, length))
  return;

 RC4_set_key(&crypt_key, 16, This->licence.key);
 RC4(&crypt_key, length, s->p, s->p);

 in_uint16(s, check);
 if (check != 0)
  return;

 This->licence_issued = True;

 in_uint8s(s, 2);


 length = 0;
 for (i = 0; i < 4; i++)
 {
  in_uint8s(s, length);
  in_uint32_le(s, length);
  if (!s_check_rem(s, length))
   return;
 }

 This->licence_issued = True;
 save_licence(This, s->p, length);
}
