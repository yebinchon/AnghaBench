#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  unsigned char* sds ;
struct TYPE_2__ {size_t len; } ;

/* Variables and functions */
 TYPE_1__* FUNC0 (int,unsigned char* const) ; 
#define  SDS_TYPE_16 132 
#define  SDS_TYPE_32 131 
#define  SDS_TYPE_5 130 
 size_t FUNC1 (unsigned char) ; 
#define  SDS_TYPE_64 129 
#define  SDS_TYPE_8 128 
 unsigned char SDS_TYPE_MASK ; 

__attribute__((used)) static inline size_t FUNC2(const sds s) {
    unsigned char flags = s[-1];
    switch(flags&SDS_TYPE_MASK) {
        case SDS_TYPE_5:
            return FUNC1(flags);
        case SDS_TYPE_8:
            return FUNC0(8,s)->len;
        case SDS_TYPE_16:
            return FUNC0(16,s)->len;
        case SDS_TYPE_32:
            return FUNC0(32,s)->len;
        case SDS_TYPE_64:
            return FUNC0(64,s)->len;
    }
    return 0;
}