
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int audio_output_t ;
struct TYPE_8__ {int lock; int count; TYPE_3__* list; } ;
struct TYPE_9__ {TYPE_1__ dev; } ;
typedef TYPE_2__ aout_owner_t ;
struct TYPE_10__ {struct TYPE_10__* name; struct TYPE_10__* next; int id; } ;
typedef TYPE_3__ aout_dev_t ;


 TYPE_2__* aout_owner (int *) ;
 int free (TYPE_3__*) ;
 TYPE_3__* malloc (scalar_t__) ;
 int strcmp (char const*,int ) ;
 int strcpy (int ,char const*) ;
 TYPE_3__* strdup (char const*) ;
 scalar_t__ strlen (char const*) ;
 scalar_t__ unlikely (int ) ;
 int vlc_mutex_lock (int *) ;
 int vlc_mutex_unlock (int *) ;

__attribute__((used)) static void aout_HotplugNotify (audio_output_t *aout,
                                const char *id, const char *name)
{
    aout_owner_t *owner = aout_owner (aout);
    aout_dev_t *dev, **pp = &owner->dev.list;

    vlc_mutex_lock (&owner->dev.lock);
    while ((dev = *pp) != ((void*)0))
    {
        if (!strcmp (id, dev->id))
            break;
        pp = &dev->next;
    }

    if (name != ((void*)0))
    {
        if (dev == ((void*)0))
        {
            dev = malloc (sizeof (*dev) + strlen (id));
            if (unlikely(dev == ((void*)0)))
                goto out;
            dev->next = ((void*)0);
            strcpy (dev->id, id);
            *pp = dev;
            owner->dev.count++;
        }
        else
            free (dev->name);
        dev->name = strdup (name);
    }
    else
    {
        if (dev != ((void*)0))
        {
            owner->dev.count--;
            *pp = dev->next;
            free (dev->name);
            free (dev);
        }
    }
out:
    vlc_mutex_unlock (&owner->dev.lock);
}
