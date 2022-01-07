
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct _Locale_messages {int dummy; } ;
typedef int locale_t ;


 int freelocale (int ) ;

void _Locale_messages_destroy( struct _Locale_messages* __loc )
{ freelocale((locale_t)__loc); }
