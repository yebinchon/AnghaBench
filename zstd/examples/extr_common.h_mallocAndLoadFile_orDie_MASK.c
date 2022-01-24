#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */

/* Variables and functions */
 size_t FUNC0 (char const*) ; 
 int /*<<< orphan*/  FUNC1 (char const*,void* const,size_t) ; 
 void* FUNC2 (size_t) ; 

__attribute__((used)) static void* FUNC3(const char* fileName, size_t* bufferSize) {
    size_t const fileSize = FUNC0(fileName);
    *bufferSize = fileSize;
    void* const buffer = FUNC2(*bufferSize);
    FUNC1(fileName, buffer, *bufferSize);
    return buffer;
}