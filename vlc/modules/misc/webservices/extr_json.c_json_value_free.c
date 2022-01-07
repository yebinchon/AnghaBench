
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_10__ {TYPE_5__* ptr; } ;
struct TYPE_9__ {size_t length; TYPE_5__* values; } ;
struct TYPE_8__ {size_t length; TYPE_5__** values; } ;
struct TYPE_11__ {TYPE_3__ string; TYPE_2__ object; TYPE_1__ array; } ;
struct TYPE_12__ {int type; struct TYPE_12__* parent; TYPE_4__ u; struct TYPE_12__* value; } ;
typedef TYPE_5__ json_value ;


 int free (TYPE_5__*) ;




void json_value_free (json_value * value)
{
   json_value * cur_value;

   if (!value)
      return;

   value->parent = 0;

   while (value)
   {
      switch (value->type)
      {
         case 130:

            if (!value->u.array.length)
            {
               free (value->u.array.values);
               break;
            }

            value = value->u.array.values [-- value->u.array.length];
            continue;

         case 129:

            if (!value->u.object.length)
            {
               free (value->u.object.values);
               break;
            }

            value = value->u.object.values [-- value->u.object.length].value;
            continue;

         case 128:

            free (value->u.string.ptr);
            break;

         default:
            break;
      };

      cur_value = value;
      value = value->parent;
      free (cur_value);
   }
}
