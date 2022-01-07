
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int TimestampTz ;
typedef int Jsonb ;


 int END_TIME_FIELD ;
 int ERRCODE_FEATURE_NOT_SUPPORTED ;
 int FIELD_NOT_FOUND_ERRSTRING ;
 int cstring_to_text (int ) ;
 int elog (int ,int ,int ) ;
 int ts_jsonb_get_time_field (int *,int ,int*) ;

__attribute__((used)) static TimestampTz
json_get_end_time(Jsonb *license)
{
 bool found = 0;
 TimestampTz end_time =
  ts_jsonb_get_time_field(license, cstring_to_text(END_TIME_FIELD), &found);

 if (!found)
  elog(ERRCODE_FEATURE_NOT_SUPPORTED, FIELD_NOT_FOUND_ERRSTRING, END_TIME_FIELD);
 return end_time;
}
