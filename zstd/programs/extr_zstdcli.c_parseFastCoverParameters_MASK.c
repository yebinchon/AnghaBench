#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {double splitPoint; int shrinkDict; void* shrinkDictMaxRegression; void* accel; void* steps; void* f; void* d; void* k; } ;
typedef  TYPE_1__ ZDICT_fastCover_params_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*,void*,void*,void*,void*,unsigned int,void*,void*) ; 
 void* kDefaultRegression ; 
 scalar_t__ FUNC1 (char const**,char*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 void* FUNC3 (char const**) ; 

__attribute__((used)) static unsigned FUNC4(const char* stringPtr, ZDICT_fastCover_params_t* params)
{
    FUNC2(params, 0, sizeof(*params));
    for (; ;) {
        if (FUNC1(&stringPtr, "k=")) { params->k = FUNC3(&stringPtr); if (stringPtr[0]==',') { stringPtr++; continue; } else break; }
        if (FUNC1(&stringPtr, "d=")) { params->d = FUNC3(&stringPtr); if (stringPtr[0]==',') { stringPtr++; continue; } else break; }
        if (FUNC1(&stringPtr, "f=")) { params->f = FUNC3(&stringPtr); if (stringPtr[0]==',') { stringPtr++; continue; } else break; }
        if (FUNC1(&stringPtr, "steps=")) { params->steps = FUNC3(&stringPtr); if (stringPtr[0]==',') { stringPtr++; continue; } else break; }
        if (FUNC1(&stringPtr, "accel=")) { params->accel = FUNC3(&stringPtr); if (stringPtr[0]==',') { stringPtr++; continue; } else break; }
        if (FUNC1(&stringPtr, "split=")) {
          unsigned splitPercentage = FUNC3(&stringPtr);
          params->splitPoint = (double)splitPercentage / 100.0;
          if (stringPtr[0]==',') { stringPtr++; continue; } else break;
        }
        if (FUNC1(&stringPtr, "shrink")) {
          params->shrinkDictMaxRegression = kDefaultRegression;
          params->shrinkDict = 1;
          if (stringPtr[0]=='=') {
            stringPtr++;
            params->shrinkDictMaxRegression = FUNC3(&stringPtr);
          }
          if (stringPtr[0]==',') {
            stringPtr++;
            continue;
          }
          else break;
        }
        return 0;
    }
    if (stringPtr[0] != 0) return 0;
    FUNC0(4, "cover: k=%u\nd=%u\nf=%u\nsteps=%u\nsplit=%u\naccel=%u\nshrink=%u\n", params->k, params->d, params->f, params->steps, (unsigned)(params->splitPoint * 100), params->accel, params->shrinkDictMaxRegression);
    return 1;
}