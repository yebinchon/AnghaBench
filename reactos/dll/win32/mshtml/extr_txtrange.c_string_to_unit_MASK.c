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
typedef  int /*<<< orphan*/  range_unit_t ;
typedef  char WCHAR ;
typedef  int /*<<< orphan*/  LPCWSTR ;

/* Variables and functions */
 int /*<<< orphan*/  RU_CHAR ; 
 int /*<<< orphan*/  RU_SENTENCE ; 
 int /*<<< orphan*/  RU_TEXTEDIT ; 
 int /*<<< orphan*/  RU_UNKNOWN ; 
 int /*<<< orphan*/  RU_WORD ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char const*) ; 

__attribute__((used)) static range_unit_t FUNC1(LPCWSTR str)
{
    static const WCHAR characterW[] =
        {'c','h','a','r','a','c','t','e','r',0};
    static const WCHAR wordW[] =
        {'w','o','r','d',0};
    static const WCHAR sentenceW[] =
        {'s','e','n','t','e','n','c','e',0};
    static const WCHAR texteditW[] =
        {'t','e','x','t','e','d','i','t',0};

    if(!FUNC0(str, characterW))  return RU_CHAR;
    if(!FUNC0(str, wordW))       return RU_WORD;
    if(!FUNC0(str, sentenceW))   return RU_SENTENCE;
    if(!FUNC0(str, texteditW))   return RU_TEXTEDIT;

    return RU_UNKNOWN;
}