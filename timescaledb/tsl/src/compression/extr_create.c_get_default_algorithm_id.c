
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef enum CompressionAlgorithms { ____Placeholder_CompressionAlgorithms } CompressionAlgorithms ;
struct TYPE_6__ {int * fn_addr; } ;
struct TYPE_5__ {int * fn_addr; } ;
struct TYPE_7__ {TYPE_2__ eq_opr_finfo; TYPE_1__ hash_proc_finfo; } ;
typedef TYPE_3__ TypeCacheEntry ;
typedef int Oid ;



 int COMPRESSION_ALGORITHM_ARRAY ;
 int COMPRESSION_ALGORITHM_DELTADELTA ;
 int COMPRESSION_ALGORITHM_DICTIONARY ;
 int COMPRESSION_ALGORITHM_GORILLA ;
 int TYPECACHE_EQ_OPR_FINFO ;
 int TYPECACHE_HASH_PROC_FINFO ;
 TYPE_3__* lookup_type_cache (int,int) ;

__attribute__((used)) static enum CompressionAlgorithms
get_default_algorithm_id(Oid typeoid)
{
 switch (typeoid)
 {
  case 134:
  case 135:
  case 133:
  case 132:
  case 138:
  case 129:
  case 128:
  {
   return COMPRESSION_ALGORITHM_DELTADELTA;
  }
  case 137:
  case 136:
  {
   return COMPRESSION_ALGORITHM_GORILLA;
  }
  case 131:
  {
   return COMPRESSION_ALGORITHM_ARRAY;
  }
  case 130:
  case 139:
  {
   return COMPRESSION_ALGORITHM_DICTIONARY;
  }
  default:
  {

   TypeCacheEntry *tentry =
    lookup_type_cache(typeoid, TYPECACHE_EQ_OPR_FINFO | TYPECACHE_HASH_PROC_FINFO);
   if (tentry->hash_proc_finfo.fn_addr == ((void*)0) || tentry->eq_opr_finfo.fn_addr == ((void*)0))
    return COMPRESSION_ALGORITHM_ARRAY;
   return COMPRESSION_ALGORITHM_DICTIONARY;
  }
 }
}
