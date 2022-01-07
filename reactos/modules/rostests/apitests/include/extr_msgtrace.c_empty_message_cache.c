
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int MSG_CACHE ;


 int memset (int *,int ,int) ;

void empty_message_cache(MSG_CACHE* cache)
{
    memset(cache, 0, sizeof(MSG_CACHE));
}
