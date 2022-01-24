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
typedef  int DOMNodeType ;

/* Variables and functions */
#define  NODE_ATTRIBUTE 133 
#define  NODE_COMMENT 132 
#define  NODE_DOCUMENT 131 
#define  NODE_ELEMENT 130 
#define  NODE_PROCESSING_INSTRUCTION 129 
#define  NODE_TEXT 128 
 int /*<<< orphan*/  FUNC0 (char*,char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*,int) ; 

__attribute__((used)) static void FUNC2(DOMNodeType type, char *buf)
{
    switch (type)
    {
        case NODE_ATTRIBUTE:
            FUNC0(buf, "A");
            break;
        case NODE_ELEMENT:
            FUNC0(buf, "E");
            break;
        case NODE_DOCUMENT:
            FUNC0(buf, "D");
            break;
        case NODE_TEXT:
            FUNC0(buf, "T");
            break;
        case NODE_COMMENT:
            FUNC0(buf, "C");
            break;
        case NODE_PROCESSING_INSTRUCTION:
            FUNC0(buf, "P");
            break;
        default:
            FUNC1(buf, "[%d]", type);
    }
}