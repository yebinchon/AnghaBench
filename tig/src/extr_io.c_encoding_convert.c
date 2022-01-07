
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct encoding {int cd; } ;
struct buffer {int dummy; } ;


 int encoding_convert_string (int ,struct buffer*) ;

bool
encoding_convert(struct encoding *encoding, struct buffer *buf)
{
 return encoding_convert_string(encoding->cd, buf);
}
