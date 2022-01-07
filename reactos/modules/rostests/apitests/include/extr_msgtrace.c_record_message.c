
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ UINT ;
struct TYPE_5__ {int iwnd; scalar_t__ msg; int param1; int param2; scalar_t__ type; } ;
struct TYPE_4__ {int count; TYPE_3__ last_post_message; TYPE_3__* message_cache; } ;
typedef scalar_t__ MSG_TYPE ;
typedef int MSG_ENTRY ;
typedef TYPE_1__ MSG_CACHE ;


 scalar_t__ POST ;
 scalar_t__ SENT ;
 int memset (TYPE_3__*,int ,int) ;

void record_message(MSG_CACHE* cache, int iwnd, UINT message, MSG_TYPE type, int param1,int param2)
{
    if(cache->count >= 100)
    {
        return;
    }


    if(type == SENT &&
       cache->last_post_message.iwnd == iwnd &&
       cache->last_post_message.msg == message &&
       cache->last_post_message.param1 == param1 &&
       cache->last_post_message.param2 == param2)
    {
        memset(&cache->last_post_message, 0, sizeof(MSG_ENTRY));
        return;
    }

    cache->message_cache[cache->count].iwnd = iwnd;
    cache->message_cache[cache->count].msg = message;
    cache->message_cache[cache->count].type = type;
    cache->message_cache[cache->count].param1 = param1;
    cache->message_cache[cache->count].param2 = param2;

    if(cache->message_cache[cache->count].type == POST)
    {
        cache->last_post_message = cache->message_cache[cache->count];
    }
    else
    {
        memset(&cache->last_post_message, 0, sizeof(MSG_ENTRY));
    }

    cache->count++;
}
