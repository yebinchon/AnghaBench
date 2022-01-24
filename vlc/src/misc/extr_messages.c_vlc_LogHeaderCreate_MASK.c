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
struct vlc_logger {int /*<<< orphan*/ * ops; } ;
struct vlc_logger_header {struct vlc_logger logger; int /*<<< orphan*/  header; struct vlc_logger* parent; } ;

/* Variables and functions */
 int /*<<< orphan*/  header_ops ; 
 struct vlc_logger_header* FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char const*,size_t) ; 
 int FUNC2 (char const*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 

struct vlc_logger *FUNC4(struct vlc_logger *parent,
                                       const char *str)
{
    size_t len = FUNC2(str) + 1;
    struct vlc_logger_header *header = FUNC0(sizeof (*header) + len);
    if (FUNC3(header == NULL))
        return NULL;

    header->logger.ops = &header_ops;
    header->parent = parent;
    FUNC1(header->header, str, len);
    return &header->logger;
}