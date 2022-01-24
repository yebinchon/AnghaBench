#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  vlc_mutex_t ;
typedef  int /*<<< orphan*/  vlc_cond_t ;
typedef  unsigned int UInt32 ;
struct TYPE_3__ {scalar_t__ mSelector; } ;
typedef  int /*<<< orphan*/  OSStatus ;
typedef  TYPE_1__ AudioObjectPropertyAddress ;
typedef  int /*<<< orphan*/  AudioObjectID ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ kAudioStreamPropertyPhysicalFormat ; 
 int /*<<< orphan*/  noErr ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int FUNC5 () ; 

__attribute__((used)) static OSStatus
FUNC6(AudioObjectID inObjectID, UInt32 inNumberAddresses,
               const AudioObjectPropertyAddress inAddresses[],
               void *inClientData)
{
    OSStatus err = noErr;
    struct { vlc_mutex_t lock; vlc_cond_t cond; } * w = inClientData;

    FUNC0(inObjectID);

    for (unsigned int i = 0; i < inNumberAddresses; i++)
    {
        if (inAddresses[i].mSelector == kAudioStreamPropertyPhysicalFormat)
        {
            int canc = FUNC5();
            FUNC2(&w->lock);
            FUNC1(&w->cond);
            FUNC3(&w->lock);
            FUNC4(canc);
            break;
        }
    }
    return err;
}