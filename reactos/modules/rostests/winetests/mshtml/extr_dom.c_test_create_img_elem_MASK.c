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
typedef  int /*<<< orphan*/  IHTMLImgElement ;
typedef  int /*<<< orphan*/  IHTMLDocument2 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static void FUNC4(IHTMLDocument2 *doc)
{
    IHTMLImgElement *img;

    img = FUNC1(doc, 10, 15);

    if(img){
        FUNC3(img, 5);
        FUNC2(img, 20);

        FUNC0(img);
        img = NULL;
    }

    img = FUNC1(doc, -1, -1);

    if(img){
        FUNC3(img, 5);
        FUNC2(img, 20);

        FUNC0(img);
    }
}