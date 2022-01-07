
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_1__ ;


typedef int uint8 ;
typedef scalar_t__ uint16 ;
typedef int sint16 ;
struct TYPE_10__ {int* p; } ;
typedef TYPE_1__* STREAM ;
typedef int RDPCLIENT ;


 int False ;






 int True ;
 int in_uint16_le (TYPE_1__*,scalar_t__) ;
 int in_uint8 (TYPE_1__*,int) ;
 int process_bmpcache (int *,TYPE_1__*) ;
 int process_bmpcache2 (int *,TYPE_1__*,scalar_t__,int ) ;
 int process_colcache (int *,TYPE_1__*) ;
 int process_fontcache (int *,TYPE_1__*) ;
 int process_raw_bmpcache (int *,TYPE_1__*) ;
 int unimpl (char*,int) ;

__attribute__((used)) static void
process_secondary_order(RDPCLIENT * This, STREAM s)
{



 uint16 length;
 uint16 flags;
 uint8 type;
 uint8 *next_order;

 in_uint16_le(s, length);
 in_uint16_le(s, flags);
 in_uint8(s, type);

 next_order = s->p + (sint16) length + 7;

 switch (type)
 {
  case 129:
   process_raw_bmpcache(This, s);
   break;

  case 131:
   process_colcache(This, s);
   break;

  case 133:
   process_bmpcache(This, s);
   break;

  case 130:
   process_fontcache(This, s);
   break;

  case 128:
   process_bmpcache2(This, s, flags, False);
   break;

  case 132:
   process_bmpcache2(This, s, flags, True);
   break;

  default:
   unimpl("secondary order %d\n", type);
 }

 s->p = next_order;
}
