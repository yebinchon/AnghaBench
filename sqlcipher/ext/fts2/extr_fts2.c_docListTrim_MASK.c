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
typedef  int /*<<< orphan*/  PLWriter ;
typedef  int /*<<< orphan*/  PLReader ;
typedef  int /*<<< orphan*/  DocListType ;
typedef  int /*<<< orphan*/  DataBuffer ;
typedef  int /*<<< orphan*/  DLWriter ;
typedef  int /*<<< orphan*/  DLReader ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char const*,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC20(DocListType iType, const char *pData, int nData,
                        int iColumn, DocListType iOutType, DataBuffer *out){
  DLReader dlReader;
  DLWriter dlWriter;

  FUNC0( iOutType<=iType );

  FUNC4(&dlReader, iType, pData, nData);
  FUNC7(&dlWriter, iOutType, out);

  while( !FUNC1(&dlReader) ){
    PLReader plReader;
    PLWriter plWriter;
    int match = 0;

    FUNC12(&plReader, &dlReader);

    while( !FUNC8(&plReader) ){
      if( iColumn==-1 || FUNC9(&plReader)==iColumn ){
        if( !match ){
          FUNC18(&plWriter, &dlWriter, FUNC3(&dlReader));
          match = 1;
        }
        FUNC16(&plWriter, FUNC9(&plReader), FUNC13(&plReader),
               FUNC14(&plReader), FUNC11(&plReader));
      }
      FUNC15(&plReader);
    }
    if( match ){
      FUNC19(&plWriter);
      FUNC17(&plWriter);
    }

    FUNC10(&plReader);
    FUNC5(&dlReader);
  }
  FUNC6(&dlWriter);
  FUNC2(&dlReader);
}