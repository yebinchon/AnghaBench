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
typedef  int /*<<< orphan*/  hb_unicode_funcs_t ;
typedef  int hb_codepoint_t ;
typedef  int gunichar ;
typedef  scalar_t__ gconstpointer ;

/* Variables and functions */
 int HB_UNICODE_MAX_DECOMPOSITION_LEN ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int,int,int*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int,int*,int*) ; 
 int FUNC3 (int /*<<< orphan*/ *,int,int*) ; 

__attribute__((used)) static void
FUNC4 (gconstpointer user_data)
{
  hb_unicode_funcs_t *uf = (hb_unicode_funcs_t *) user_data;
  gunichar a, b, ab;
  hb_codepoint_t decomposed[HB_UNICODE_MAX_DECOMPOSITION_LEN];


  /* Test compose() */

  /* Not composable */
  FUNC0 (!FUNC1 (uf, 0x0041, 0x0042, &ab) && ab == 0);
  FUNC0 (!FUNC1 (uf, 0x0041, 0, &ab) && ab == 0);
  FUNC0 (!FUNC1 (uf, 0x0066, 0x0069, &ab) && ab == 0);

  /* Singletons should not compose */
  FUNC0 (!FUNC1 (uf, 0x212B, 0, &ab) && ab == 0);
  FUNC0 (!FUNC1 (uf, 0x00C5, 0, &ab) && ab == 0);
  FUNC0 (!FUNC1 (uf, 0x2126, 0, &ab) && ab == 0);
  FUNC0 (!FUNC1 (uf, 0x03A9, 0, &ab) && ab == 0);

  /* Non-starter pairs should not compose */
  FUNC0 (!FUNC1 (uf, 0x0308, 0x0301, &ab) && ab == 0); /* !0x0344 */
  FUNC0 (!FUNC1 (uf, 0x0F71, 0x0F72, &ab) && ab == 0); /* !0x0F73 */

  /* Pairs */
  FUNC0 (FUNC1 (uf, 0x0041, 0x030A, &ab) && ab == 0x00C5);
  FUNC0 (FUNC1 (uf, 0x006F, 0x0302, &ab) && ab == 0x00F4);
  FUNC0 (FUNC1 (uf, 0x1E63, 0x0307, &ab) && ab == 0x1E69);
  FUNC0 (FUNC1 (uf, 0x0073, 0x0323, &ab) && ab == 0x1E63);
  FUNC0 (FUNC1 (uf, 0x0064, 0x0307, &ab) && ab == 0x1E0B);
  FUNC0 (FUNC1 (uf, 0x0064, 0x0323, &ab) && ab == 0x1E0D);

  /* Hangul */
  FUNC0 (FUNC1 (uf, 0xD4CC, 0x11B6, &ab) && ab == 0xD4DB);
  FUNC0 (FUNC1 (uf, 0x1111, 0x1171, &ab) && ab == 0xD4CC);
  FUNC0 (FUNC1 (uf, 0xCE20, 0x11B8, &ab) && ab == 0xCE31);
  FUNC0 (FUNC1 (uf, 0x110E, 0x1173, &ab) && ab == 0xCE20);


  /* Test decompose() */

  /* Not decomposable */
  FUNC0 (!FUNC2 (uf, 0x0041, &a, &b) && a == 0x0041 && b == 0);
  FUNC0 (!FUNC2 (uf, 0xFB01, &a, &b) && a == 0xFB01 && b == 0);
  FUNC0 (!FUNC2 (uf, 0x1F1EF, &a, &b) && a == 0x1F1EF && b == 0);

  /* Singletons */
  FUNC0 (FUNC2 (uf, 0x212B, &a, &b) && a == 0x00C5 && b == 0);
  FUNC0 (FUNC2 (uf, 0x2126, &a, &b) && a == 0x03A9 && b == 0);

  /* Non-starter pairs decompose, but not compose */
  FUNC0 (FUNC2 (uf, 0x0344, &a, &b) && a == 0x0308 && b == 0x0301);
  FUNC0 (FUNC2 (uf, 0x0F73, &a, &b) && a == 0x0F71 && b == 0x0F72);

  /* Pairs */
  FUNC0 (FUNC2 (uf, 0x00C5, &a, &b) && a == 0x0041 && b == 0x030A);
  FUNC0 (FUNC2 (uf, 0x00F4, &a, &b) && a == 0x006F && b == 0x0302);
  FUNC0 (FUNC2 (uf, 0x1E69, &a, &b) && a == 0x1E63 && b == 0x0307);
  FUNC0 (FUNC2 (uf, 0x1E63, &a, &b) && a == 0x0073 && b == 0x0323);
  FUNC0 (FUNC2 (uf, 0x1E0B, &a, &b) && a == 0x0064 && b == 0x0307);
  FUNC0 (FUNC2 (uf, 0x1E0D, &a, &b) && a == 0x0064 && b == 0x0323);

  /* Hangul */
  FUNC0 (FUNC2 (uf, 0xD4DB, &a, &b) && a == 0xD4CC && b == 0x11B6);
  FUNC0 (FUNC2 (uf, 0xD4CC, &a, &b) && a == 0x1111 && b == 0x1171);
  FUNC0 (FUNC2 (uf, 0xCE31, &a, &b) && a == 0xCE20 && b == 0x11B8);
  FUNC0 (FUNC2 (uf, 0xCE20, &a, &b) && a == 0x110E && b == 0x1173);


  /* Test decompose_compatibility() */

  /* Not decomposable */
  FUNC0 (FUNC3 (uf, 0x0041, decomposed) == 0);
  FUNC0 (FUNC3 (uf, 0x1F632, decomposed) == 0);

  /* Singletons */
  FUNC0 (FUNC3 (uf, 0x00B5, decomposed) == 1 && decomposed[0] == 0x03BC);
  FUNC0 (FUNC3 (uf, 0x03D6, decomposed) == 1 && decomposed[0] == 0x03C0);

  /* Arabic compatibility */
  FUNC0 (FUNC3 (uf, 0xFB54, decomposed) == 1 && decomposed[0] == 0x067B);

  /* Longest decomposition ever */
  FUNC0 (18 <= HB_UNICODE_MAX_DECOMPOSITION_LEN);
  FUNC0 (FUNC3 (uf, 0xFDFA, decomposed) == 18 && decomposed[17] == 0x0645);

  /* Note: we deliberately don't test characters that have canonical decompositions but no
   * compatibility decomposition against the decompose_compatibility() function as that we
   * leave up to implementations (for now). */

  /* Spaces */
  FUNC0 (FUNC3 (uf, 0x2002, decomposed) == 1 && decomposed[0] == 0x0020);
  FUNC0 (FUNC3 (uf, 0x2003, decomposed) == 1 && decomposed[0] == 0x0020);
  FUNC0 (FUNC3 (uf, 0x2004, decomposed) == 1 && decomposed[0] == 0x0020);
  FUNC0 (FUNC3 (uf, 0x2005, decomposed) == 1 && decomposed[0] == 0x0020);
  FUNC0 (FUNC3 (uf, 0x2006, decomposed) == 1 && decomposed[0] == 0x0020);
  FUNC0 (FUNC3 (uf, 0x2008, decomposed) == 1 && decomposed[0] == 0x0020);
  FUNC0 (FUNC3 (uf, 0x2009, decomposed) == 1 && decomposed[0] == 0x0020);
  FUNC0 (FUNC3 (uf, 0x200A, decomposed) == 1 && decomposed[0] == 0x0020);

  /* Pairs */
  FUNC0 (FUNC3 (uf, 0x0587, decomposed) == 2 &&
            decomposed[0] == 0x0565 && decomposed[1] == 0x0582);
  FUNC0 (FUNC3 (uf, 0x2017, decomposed) == 2 &&
            decomposed[0] == 0x0020 && decomposed[1] == 0x0333);
  FUNC0 (FUNC3 (uf, 0x2025, decomposed) == 2 &&
            decomposed[0] == 0x002E && decomposed[1] == 0x002E);
  FUNC0 (FUNC3 (uf, 0x2033, decomposed) == 2 &&
            decomposed[0] == 0x2032 && decomposed[1] == 0x2032);

  /* Triples */
  FUNC0 (FUNC3 (uf, 0x2026, decomposed) == 3 &&
            decomposed[0] == 0x002E && decomposed[1] == 0x002E && decomposed[2] == 0x002E);
  FUNC0 (FUNC3 (uf, 0x2034, decomposed) == 3 &&
            decomposed[0] == 0x2032 && decomposed[1] == 0x2032 && decomposed[2] == 0x2032);
  FUNC0 (FUNC3 (uf, 0x213B, decomposed) == 3 &&
            decomposed[0] == 0x0046 && decomposed[1] == 0x0041 && decomposed[2] == 0x0058);
}