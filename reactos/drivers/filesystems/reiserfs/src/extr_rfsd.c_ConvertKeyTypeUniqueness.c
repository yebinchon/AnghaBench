
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int __u32 ;


 int DBG_ERROR ;
 int DbgBreak () ;




 int RFSD_KEY_TYPE_v2_DIRECT ;
 int RFSD_KEY_TYPE_v2_DIRENTRY ;
 int RFSD_KEY_TYPE_v2_INDIRECT ;
 int RFSD_KEY_TYPE_v2_STAT_DATA ;
 int RfsdPrint (int ) ;

__u32
ConvertKeyTypeUniqueness(__u32 k_uniqueness)
{
 switch (k_uniqueness)
 {
 case 128: return RFSD_KEY_TYPE_v2_STAT_DATA;
 case 129: return RFSD_KEY_TYPE_v2_INDIRECT;
 case 131: return RFSD_KEY_TYPE_v2_DIRECT;
 case 130: return RFSD_KEY_TYPE_v2_DIRENTRY;

 default:
  RfsdPrint((DBG_ERROR, "Unexpected uniqueness value %i", k_uniqueness));

  DbgBreak();
  return 0xF;
 }
}
