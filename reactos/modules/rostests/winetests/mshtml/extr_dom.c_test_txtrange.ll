; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/mshtml/extr_dom.c_test_txtrange.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/mshtml/extr_dom.c_test_txtrange.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@IID_IHTMLTxtRange = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"[object]\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"test abc 123\0D\0Ait's text\00", align 1
@VARIANT_TRUE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@VARIANT_FALSE = common dso_local global i32 0, align 4
@wordW = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [6 x i8] c"test \00", align 1
@characterW = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [5 x i8] c"abc \00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"123\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"c 1\00", align 1
@texteditW = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.7 = private unnamed_addr constant [3 x i8] c"ab\00", align 1
@.str.8 = private unnamed_addr constant [2 x i8] c"t\00", align 1
@.str.9 = private unnamed_addr constant [5 x i8] c"t ab\00", align 1
@.str.10 = private unnamed_addr constant [3 x i8] c"t \00", align 1
@.str.11 = private unnamed_addr constant [7 x i8] c"123\0D\0Ai\00", align 1
@.str.12 = private unnamed_addr constant [3 x i8] c"st\00", align 1
@.str.13 = private unnamed_addr constant [3 x i8] c"12\00", align 1
@.str.14 = private unnamed_addr constant [5 x i8] c"text\00", align 1
@.str.15 = private unnamed_addr constant [3 x i8] c"s \00", align 1
@.str.16 = private unnamed_addr constant [5 x i8] c"word\00", align 1
@.str.17 = private unnamed_addr constant [23 x i8] c"wordabc 123\0D\0Ait's text\00", align 1
@.str.18 = private unnamed_addr constant [4 x i8] c"abc\00", align 1
@.str.19 = private unnamed_addr constant [6 x i8] c"rdabc\00", align 1
@.str.20 = private unnamed_addr constant [3 x i8] c"bc\00", align 1
@.str.21 = private unnamed_addr constant [10 x i8] c"wordabc 1\00", align 1
@S_OK = common dso_local global i64 0, align 8
@.str.22 = private unnamed_addr constant [43 x i8] c"IHTMLDocument2_get_selection failed: %08x\0A\00", align 1
@IID_IHTMLSelectionObject = common dso_local global i32 0, align 4
@selection_iids = common dso_local global i32 0, align 4
@.str.23 = private unnamed_addr constant [47 x i8] c"IHTMLSelectionObject_createRange failed: %08x\0A\00", align 1
@.str.24 = private unnamed_addr constant [51 x i8] c"Could not get IID_IHTMLTxtRange interface: 0x%08x\0A\00", align 1
@.str.25 = private unnamed_addr constant [4 x i8] c"wor\00", align 1
@ET_BODY = common dso_local global i32 0, align 4
@.str.26 = private unnamed_addr constant [9 x i8] c"wordabc \00", align 1
@.str.27 = private unnamed_addr constant [9 x i8] c"abc def \00", align 1
@.str.28 = private unnamed_addr constant [27 x i8] c"abc def abc 123\0D\0Ait's text\00", align 1
@.str.29 = private unnamed_addr constant [4 x i8] c"def\00", align 1
@.str.30 = private unnamed_addr constant [4 x i8] c"xyz\00", align 1
@.str.31 = private unnamed_addr constant [32 x i8] c"moveToElementText failed: %08x\0A\00", align 1
@.str.32 = private unnamed_addr constant [27 x i8] c"abc xyz abc 123\0D\0Ait's text\00", align 1
@.str.33 = private unnamed_addr constant [12 x i8] c"xyz abc 123\00", align 1
@.str.34 = private unnamed_addr constant [14 x i8] c"<br>paste<br>\00", align 1
@.str.35 = private unnamed_addr constant [36 x i8] c"abc \0D\0Apaste\0D\0Axyz abc 123\0D\0Ait's text\00", align 1
@.str.36 = private unnamed_addr constant [6 x i8] c"paste\00", align 1
@.str.37 = private unnamed_addr constant [13 x i8] c"starttostart\00", align 1
@.str.38 = private unnamed_addr constant [12 x i8] c"abc \0D\0Apaste\00", align 1
@.str.39 = private unnamed_addr constant [9 x i8] c"endtoend\00", align 1
@.str.40 = private unnamed_addr constant [11 x i8] c"starttoend\00", align 1
@.str.41 = private unnamed_addr constant [25 x i8] c"\0D\0Axyz abc 123\0D\0Ait's text\00", align 1
@.str.42 = private unnamed_addr constant [11 x i8] c"endtostart\00", align 1
@.str.43 = private unnamed_addr constant [30 x i8] c"paste\0D\0Axyz abc 123\0D\0Ait's text\00", align 1
@.str.44 = private unnamed_addr constant [11 x i8] c"EndToStart\00", align 1
@.str.45 = private unnamed_addr constant [4 x i8] c"xxx\00", align 1
@E_INVALIDARG = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*)* @test_txtrange to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_txtrange(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  store i32* %0, i32** %2, align 8
  %10 = load i32*, i32** %2, align 8
  %11 = call i32* @test_create_body_range(i32* %10)
  store i32* %11, i32** %3, align 8
  %12 = load i32*, i32** %3, align 8
  %13 = call i32 @test_disp(i32* %12, i32* @IID_IHTMLTxtRange, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %14 = load i32*, i32** %3, align 8
  %15 = call i32 @test_range_text(i32* %14, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  %16 = load i32*, i32** %3, align 8
  %17 = call i32* @range_duplicate(i32* %16)
  store i32* %17, i32** %4, align 8
  %18 = load i32*, i32** %3, align 8
  %19 = call i32* @range_duplicate(i32* %18)
  store i32* %19, i32** %5, align 8
  %20 = load i32*, i32** %4, align 8
  %21 = load i32*, i32** %5, align 8
  %22 = load i32, i32* @VARIANT_TRUE, align 4
  %23 = call i32 @test_range_isequal(i32* %20, i32* %21, i32 %22)
  %24 = load i32*, i32** %4, align 8
  %25 = call i32 @test_range_text(i32* %24, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  %26 = load i32*, i32** %3, align 8
  %27 = call i32 @test_range_text(i32* %26, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  %28 = load i32*, i32** %4, align 8
  %29 = load i32, i32* @TRUE, align 4
  %30 = call i32 @test_range_collapse(i32* %28, i32 %29)
  %31 = load i32*, i32** %4, align 8
  %32 = load i32*, i32** %5, align 8
  %33 = load i32, i32* @VARIANT_FALSE, align 4
  %34 = call i32 @test_range_isequal(i32* %31, i32* %32, i32 %33)
  %35 = load i32*, i32** %4, align 8
  %36 = load i32*, i32** %5, align 8
  %37 = load i32, i32* @VARIANT_FALSE, align 4
  %38 = call i32 @test_range_inrange(i32* %35, i32* %36, i32 %37)
  %39 = load i32*, i32** %5, align 8
  %40 = load i32*, i32** %4, align 8
  %41 = load i32, i32* @VARIANT_TRUE, align 4
  %42 = call i32 @test_range_inrange(i32* %39, i32* %40, i32 %41)
  %43 = load i32*, i32** %5, align 8
  %44 = call i32 @IHTMLTxtRange_Release(i32* %43)
  %45 = load i32*, i32** %4, align 8
  %46 = load i32, i32* @wordW, align 4
  %47 = load i32, i32* @VARIANT_TRUE, align 4
  %48 = call i32 @test_range_expand(i32* %45, i32 %46, i32 %47, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0))
  %49 = load i32*, i32** %4, align 8
  %50 = load i32, i32* @wordW, align 4
  %51 = load i32, i32* @VARIANT_FALSE, align 4
  %52 = call i32 @test_range_expand(i32* %49, i32 %50, i32 %51, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0))
  %53 = load i32*, i32** %4, align 8
  %54 = load i32, i32* @characterW, align 4
  %55 = call i32 @test_range_move(i32* %53, i32 %54, i32 2, i32 2)
  %56 = load i32*, i32** %4, align 8
  %57 = load i32, i32* @wordW, align 4
  %58 = load i32, i32* @VARIANT_TRUE, align 4
  %59 = call i32 @test_range_expand(i32* %56, i32 %57, i32 %58, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0))
  %60 = load i32*, i32** %4, align 8
  %61 = load i32, i32* @FALSE, align 4
  %62 = call i32 @test_range_collapse(i32* %60, i32 %61)
  %63 = load i32*, i32** %4, align 8
  %64 = load i32, i32* @wordW, align 4
  %65 = load i32, i32* @VARIANT_TRUE, align 4
  %66 = call i32 @test_range_expand(i32* %63, i32 %64, i32 %65, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0))
  %67 = load i32*, i32** %4, align 8
  %68 = load i32, i32* @FALSE, align 4
  %69 = call i32 @test_range_collapse(i32* %67, i32 %68)
  %70 = load i32*, i32** %4, align 8
  %71 = load i32, i32* @wordW, align 4
  %72 = load i32, i32* @VARIANT_TRUE, align 4
  %73 = call i32 @test_range_expand(i32* %70, i32 %71, i32 %72, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0))
  %74 = load i32*, i32** %4, align 8
  %75 = load i32, i32* @wordW, align 4
  %76 = load i32, i32* @VARIANT_FALSE, align 4
  %77 = call i32 @test_range_expand(i32* %74, i32 %75, i32 %76, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0))
  %78 = load i32*, i32** %4, align 8
  %79 = load i32, i32* @characterW, align 4
  %80 = call i32 @test_range_move(i32* %78, i32 %79, i32 2, i32 2)
  %81 = load i32*, i32** %4, align 8
  %82 = load i32, i32* @wordW, align 4
  %83 = load i32, i32* @VARIANT_TRUE, align 4
  %84 = call i32 @test_range_expand(i32* %81, i32 %82, i32 %83, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0))
  %85 = load i32*, i32** %4, align 8
  %86 = load i32, i32* @characterW, align 4
  %87 = call i32 @test_range_moveend(i32* %85, i32 %86, i32 -5, i32 -5)
  %88 = load i32*, i32** %4, align 8
  %89 = call i32 @test_range_text(i32* %88, i8* null)
  %90 = load i32*, i32** %4, align 8
  %91 = load i32, i32* @characterW, align 4
  %92 = call i32 @test_range_moveend(i32* %90, i32 %91, i32 3, i32 3)
  %93 = load i32*, i32** %4, align 8
  %94 = call i32 @test_range_text(i32* %93, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0))
  %95 = load i32*, i32** %4, align 8
  %96 = load i32, i32* @texteditW, align 4
  %97 = load i32, i32* @VARIANT_TRUE, align 4
  %98 = call i32 @test_range_expand(i32* %95, i32 %96, i32 %97, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  %99 = load i32*, i32** %4, align 8
  %100 = load i32, i32* @TRUE, align 4
  %101 = call i32 @test_range_collapse(i32* %99, i32 %100)
  %102 = load i32*, i32** %4, align 8
  %103 = load i32, i32* @characterW, align 4
  %104 = call i32 @test_range_move(i32* %102, i32 %103, i32 4, i32 4)
  %105 = load i32*, i32** %4, align 8
  %106 = load i32, i32* @characterW, align 4
  %107 = call i32 @test_range_moveend(i32* %105, i32 %106, i32 1, i32 1)
  %108 = load i32*, i32** %4, align 8
  %109 = call i32 @test_range_text(i32* %108, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0))
  %110 = load i32*, i32** %4, align 8
  %111 = load i32, i32* @wordW, align 4
  %112 = call i32 @test_range_move(i32* %110, i32 %111, i32 1, i32 1)
  %113 = load i32*, i32** %4, align 8
  %114 = load i32, i32* @characterW, align 4
  %115 = call i32 @test_range_moveend(i32* %113, i32 %114, i32 2, i32 2)
  %116 = load i32*, i32** %4, align 8
  %117 = call i32 @test_range_text(i32* %116, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i64 0, i64 0))
  %118 = load i32*, i32** %4, align 8
  %119 = call i32 @IHTMLTxtRange_Release(i32* %118)
  %120 = load i32*, i32** %3, align 8
  %121 = call i32* @range_duplicate(i32* %120)
  store i32* %121, i32** %4, align 8
  %122 = load i32*, i32** %4, align 8
  %123 = call i32 @test_range_text(i32* %122, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  %124 = load i32*, i32** %4, align 8
  %125 = load i32, i32* @characterW, align 4
  %126 = call i32 @test_range_move(i32* %124, i32 %125, i32 3, i32 3)
  %127 = load i32*, i32** %4, align 8
  %128 = load i32, i32* @characterW, align 4
  %129 = call i32 @test_range_moveend(i32* %127, i32 %128, i32 1, i32 1)
  %130 = load i32*, i32** %4, align 8
  %131 = call i32 @test_range_text(i32* %130, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i64 0, i64 0))
  %132 = load i32*, i32** %4, align 8
  %133 = load i32, i32* @characterW, align 4
  %134 = call i32 @test_range_moveend(i32* %132, i32 %133, i32 3, i32 3)
  %135 = load i32*, i32** %4, align 8
  %136 = call i32 @test_range_text(i32* %135, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i64 0, i64 0))
  %137 = load i32*, i32** %4, align 8
  %138 = load i32, i32* @characterW, align 4
  %139 = call i32 @test_range_moveend(i32* %137, i32 %138, i32 -2, i32 -2)
  %140 = load i32*, i32** %4, align 8
  %141 = call i32 @test_range_text(i32* %140, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.10, i64 0, i64 0))
  %142 = load i32*, i32** %4, align 8
  %143 = load i32, i32* @characterW, align 4
  %144 = call i32 @test_range_move(i32* %142, i32 %143, i32 6, i32 6)
  %145 = load i32*, i32** %4, align 8
  %146 = load i32, i32* @characterW, align 4
  %147 = call i32 @test_range_moveend(i32* %145, i32 %146, i32 3, i32 3)
  %148 = load i32*, i32** %4, align 8
  %149 = call i32 @test_range_text(i32* %148, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0))
  %150 = load i32*, i32** %4, align 8
  %151 = load i32, i32* @characterW, align 4
  %152 = call i32 @test_range_moveend(i32* %150, i32 %151, i32 2, i32 2)
  %153 = load i32*, i32** %4, align 8
  %154 = call i32 @test_range_text(i32* %153, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.11, i64 0, i64 0))
  %155 = load i32*, i32** %4, align 8
  %156 = call i32 @IHTMLTxtRange_Release(i32* %155)
  %157 = load i32*, i32** %3, align 8
  %158 = call i32* @range_duplicate(i32* %157)
  store i32* %158, i32** %4, align 8
  %159 = load i32*, i32** %4, align 8
  %160 = load i32, i32* @wordW, align 4
  %161 = call i32 @test_range_move(i32* %159, i32 %160, i32 1, i32 1)
  %162 = load i32*, i32** %4, align 8
  %163 = load i32, i32* @characterW, align 4
  %164 = call i32 @test_range_moveend(i32* %162, i32 %163, i32 2, i32 2)
  %165 = load i32*, i32** %4, align 8
  %166 = call i32 @test_range_text(i32* %165, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i64 0, i64 0))
  %167 = load i32*, i32** %4, align 8
  %168 = load i32, i32* @characterW, align 4
  %169 = call i32 @test_range_move(i32* %167, i32 %168, i32 -2, i32 -2)
  %170 = load i32*, i32** %4, align 8
  %171 = load i32, i32* @characterW, align 4
  %172 = call i32 @test_range_moveend(i32* %170, i32 %171, i32 2, i32 2)
  %173 = load i32*, i32** %4, align 8
  %174 = call i32 @test_range_text(i32* %173, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.10, i64 0, i64 0))
  %175 = load i32*, i32** %4, align 8
  %176 = load i32, i32* @wordW, align 4
  %177 = call i32 @test_range_move(i32* %175, i32 %176, i32 3, i32 3)
  %178 = load i32*, i32** %4, align 8
  %179 = load i32, i32* @wordW, align 4
  %180 = call i32 @test_range_move(i32* %178, i32 %179, i32 -2, i32 -2)
  %181 = load i32*, i32** %4, align 8
  %182 = load i32, i32* @characterW, align 4
  %183 = call i32 @test_range_moveend(i32* %181, i32 %182, i32 2, i32 2)
  %184 = load i32*, i32** %4, align 8
  %185 = call i32 @test_range_text(i32* %184, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i64 0, i64 0))
  %186 = load i32*, i32** %4, align 8
  %187 = load i32, i32* @characterW, align 4
  %188 = call i32 @test_range_move(i32* %186, i32 %187, i32 -6, i32 -5)
  %189 = load i32*, i32** %4, align 8
  %190 = load i32, i32* @characterW, align 4
  %191 = call i32 @test_range_moveend(i32* %189, i32 %190, i32 -1, i32 0)
  %192 = load i32*, i32** %4, align 8
  %193 = load i32, i32* @characterW, align 4
  %194 = call i32 @test_range_moveend(i32* %192, i32 %193, i32 -6, i32 0)
  %195 = load i32*, i32** %4, align 8
  %196 = load i32, i32* @characterW, align 4
  %197 = call i32 @test_range_move(i32* %195, i32 %196, i32 2, i32 2)
  %198 = load i32*, i32** %4, align 8
  %199 = load i32, i32* @characterW, align 4
  %200 = call i32 @test_range_moveend(i32* %198, i32 %199, i32 2, i32 2)
  %201 = load i32*, i32** %4, align 8
  %202 = call i32 @test_range_text(i32* %201, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.12, i64 0, i64 0))
  %203 = load i32*, i32** %4, align 8
  %204 = load i32, i32* @characterW, align 4
  %205 = call i32 @test_range_moveend(i32* %203, i32 %204, i32 -6, i32 -4)
  %206 = load i32*, i32** %4, align 8
  %207 = load i32, i32* @characterW, align 4
  %208 = call i32 @test_range_moveend(i32* %206, i32 %207, i32 2, i32 2)
  %209 = load i32*, i32** %4, align 8
  %210 = call i32 @IHTMLTxtRange_Release(i32* %209)
  %211 = load i32*, i32** %3, align 8
  %212 = call i32* @range_duplicate(i32* %211)
  store i32* %212, i32** %4, align 8
  %213 = load i32*, i32** %4, align 8
  %214 = load i32, i32* @wordW, align 4
  %215 = call i32 @test_range_move(i32* %213, i32 %214, i32 2, i32 2)
  %216 = load i32*, i32** %4, align 8
  %217 = load i32, i32* @characterW, align 4
  %218 = call i32 @test_range_moveend(i32* %216, i32 %217, i32 2, i32 2)
  %219 = load i32*, i32** %4, align 8
  %220 = call i32 @test_range_text(i32* %219, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.13, i64 0, i64 0))
  %221 = load i32*, i32** %4, align 8
  %222 = load i32, i32* @characterW, align 4
  %223 = call i32 @test_range_move(i32* %221, i32 %222, i32 15, i32 14)
  %224 = load i32*, i32** %4, align 8
  %225 = load i32, i32* @characterW, align 4
  %226 = call i32 @test_range_move(i32* %224, i32 %225, i32 -2, i32 -2)
  %227 = load i32*, i32** %4, align 8
  %228 = load i32, i32* @characterW, align 4
  %229 = call i32 @test_range_moveend(i32* %227, i32 %228, i32 3, i32 2)
  %230 = load i32*, i32** %4, align 8
  %231 = call i32 @test_range_text(i32* %230, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i64 0, i64 0))
  %232 = load i32*, i32** %4, align 8
  %233 = load i32, i32* @characterW, align 4
  %234 = call i32 @test_range_moveend(i32* %232, i32 %233, i32 -1, i32 -1)
  %235 = load i32*, i32** %4, align 8
  %236 = call i32 @test_range_text(i32* %235, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i64 0, i64 0))
  %237 = load i32*, i32** %4, align 8
  %238 = load i32, i32* @wordW, align 4
  %239 = load i32, i32* @VARIANT_TRUE, align 4
  %240 = call i32 @test_range_expand(i32* %237, i32 %238, i32 %239, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0))
  %241 = load i32*, i32** %4, align 8
  %242 = load i32, i32* @characterW, align 4
  %243 = call i32 @test_range_move(i32* %241, i32 %242, i32 -2, i32 -2)
  %244 = load i32*, i32** %4, align 8
  %245 = load i32, i32* @characterW, align 4
  %246 = call i32 @test_range_moveend(i32* %244, i32 %245, i32 2, i32 2)
  %247 = load i32*, i32** %4, align 8
  %248 = call i32 @test_range_text(i32* %247, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.15, i64 0, i64 0))
  %249 = load i32*, i32** %4, align 8
  %250 = load i32, i32* @characterW, align 4
  %251 = call i32 @test_range_move(i32* %249, i32 %250, i32 100, i32 7)
  %252 = load i32*, i32** %4, align 8
  %253 = load i32, i32* @wordW, align 4
  %254 = call i32 @test_range_move(i32* %252, i32 %253, i32 1, i32 0)
  %255 = load i32*, i32** %4, align 8
  %256 = load i32, i32* @characterW, align 4
  %257 = call i32 @test_range_move(i32* %255, i32 %256, i32 -2, i32 -2)
  %258 = load i32*, i32** %4, align 8
  %259 = load i32, i32* @characterW, align 4
  %260 = call i32 @test_range_moveend(i32* %258, i32 %259, i32 3, i32 2)
  %261 = load i32*, i32** %4, align 8
  %262 = call i32 @test_range_text(i32* %261, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i64 0, i64 0))
  %263 = load i32*, i32** %4, align 8
  %264 = call i32 @IHTMLTxtRange_Release(i32* %263)
  %265 = load i32*, i32** %3, align 8
  %266 = call i32* @range_duplicate(i32* %265)
  store i32* %266, i32** %4, align 8
  %267 = load i32*, i32** %4, align 8
  %268 = load i32, i32* @TRUE, align 4
  %269 = call i32 @test_range_collapse(i32* %267, i32 %268)
  %270 = load i32*, i32** %4, align 8
  %271 = load i32, i32* @wordW, align 4
  %272 = load i32, i32* @VARIANT_TRUE, align 4
  %273 = call i32 @test_range_expand(i32* %270, i32 %271, i32 %272, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0))
  %274 = load i32*, i32** %4, align 8
  %275 = call i32 @test_range_put_text(i32* %274, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.16, i64 0, i64 0))
  %276 = load i32*, i32** %3, align 8
  %277 = call i32 @test_range_text(i32* %276, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.17, i64 0, i64 0))
  %278 = load i32*, i32** %4, align 8
  %279 = call i32 @test_range_text(i32* %278, i8* null)
  %280 = load i32*, i32** %4, align 8
  %281 = load i32, i32* @characterW, align 4
  %282 = call i32 @test_range_moveend(i32* %280, i32 %281, i32 3, i32 3)
  %283 = load i32*, i32** %4, align 8
  %284 = call i32 @test_range_text(i32* %283, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.18, i64 0, i64 0))
  %285 = load i32*, i32** %4, align 8
  %286 = load i32, i32* @characterW, align 4
  %287 = call i32 @test_range_movestart(i32* %285, i32 %286, i32 -2, i32 -2)
  %288 = load i32*, i32** %4, align 8
  %289 = call i32 @test_range_text(i32* %288, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.19, i64 0, i64 0))
  %290 = load i32*, i32** %4, align 8
  %291 = load i32, i32* @characterW, align 4
  %292 = call i32 @test_range_movestart(i32* %290, i32 %291, i32 3, i32 3)
  %293 = load i32*, i32** %4, align 8
  %294 = call i32 @test_range_text(i32* %293, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.20, i64 0, i64 0))
  %295 = load i32*, i32** %4, align 8
  %296 = load i32, i32* @characterW, align 4
  %297 = call i32 @test_range_movestart(i32* %295, i32 %296, i32 4, i32 4)
  %298 = load i32*, i32** %4, align 8
  %299 = call i32 @test_range_text(i32* %298, i8* null)
  %300 = load i32*, i32** %4, align 8
  %301 = load i32, i32* @characterW, align 4
  %302 = call i32 @test_range_movestart(i32* %300, i32 %301, i32 -3, i32 -3)
  %303 = load i32*, i32** %4, align 8
  %304 = call i32 @test_range_text(i32* %303, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0))
  %305 = load i32*, i32** %4, align 8
  %306 = load i32, i32* @characterW, align 4
  %307 = call i32 @test_range_movestart(i32* %305, i32 %306, i32 -7, i32 -6)
  %308 = load i32*, i32** %4, align 8
  %309 = call i32 @test_range_text(i32* %308, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.21, i64 0, i64 0))
  %310 = load i32*, i32** %4, align 8
  %311 = load i32, i32* @characterW, align 4
  %312 = call i32 @test_range_movestart(i32* %310, i32 %311, i32 100, i32 22)
  %313 = load i32*, i32** %4, align 8
  %314 = call i32 @test_range_text(i32* %313, i8* null)
  %315 = load i32*, i32** %4, align 8
  %316 = call i32 @IHTMLTxtRange_Release(i32* %315)
  %317 = load i32*, i32** %2, align 8
  %318 = call i64 @IHTMLDocument2_get_selection(i32* %317, i32** %6)
  store i64 %318, i64* %9, align 8
  %319 = load i64, i64* %9, align 8
  %320 = load i64, i64* @S_OK, align 8
  %321 = icmp eq i64 %319, %320
  %322 = zext i1 %321 to i32
  %323 = load i64, i64* %9, align 8
  %324 = call i32 @ok(i32 %322, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.22, i64 0, i64 0), i64 %323)
  %325 = load i32*, i32** %6, align 8
  %326 = call i32 @test_disp(i32* %325, i32* @IID_IHTMLSelectionObject, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %327 = load i32*, i32** %6, align 8
  %328 = load i32, i32* @selection_iids, align 4
  %329 = call i32 @test_ifaces(i32* %327, i32 %328)
  %330 = load i32*, i32** %6, align 8
  %331 = call i64 @IHTMLSelectionObject_createRange(i32* %330, i32** %7)
  store i64 %331, i64* %9, align 8
  %332 = load i64, i64* %9, align 8
  %333 = load i64, i64* @S_OK, align 8
  %334 = icmp eq i64 %332, %333
  %335 = zext i1 %334 to i32
  %336 = load i64, i64* %9, align 8
  %337 = call i32 @ok(i32 %335, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.23, i64 0, i64 0), i64 %336)
  %338 = load i32*, i32** %6, align 8
  %339 = call i32 @IHTMLSelectionObject_Release(i32* %338)
  %340 = load i32*, i32** %7, align 8
  %341 = bitcast i32** %4 to i8**
  %342 = call i64 @IDispatch_QueryInterface(i32* %340, i32* @IID_IHTMLTxtRange, i8** %341)
  store i64 %342, i64* %9, align 8
  %343 = load i64, i64* %9, align 8
  %344 = load i64, i64* @S_OK, align 8
  %345 = icmp eq i64 %343, %344
  %346 = zext i1 %345 to i32
  %347 = load i64, i64* %9, align 8
  %348 = call i32 @ok(i32 %346, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.24, i64 0, i64 0), i64 %347)
  %349 = load i32*, i32** %7, align 8
  %350 = call i32 @IDispatch_Release(i32* %349)
  %351 = load i32*, i32** %4, align 8
  %352 = call i32 @test_range_text(i32* %351, i8* null)
  %353 = load i32*, i32** %4, align 8
  %354 = load i32, i32* @characterW, align 4
  %355 = call i32 @test_range_moveend(i32* %353, i32 %354, i32 3, i32 3)
  %356 = load i32*, i32** %4, align 8
  %357 = call i32 @test_range_text(i32* %356, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.25, i64 0, i64 0))
  %358 = load i32*, i32** %4, align 8
  %359 = load i32, i32* @ET_BODY, align 4
  %360 = call i32 @test_range_parent(i32* %358, i32 %359)
  %361 = load i32*, i32** %4, align 8
  %362 = load i32, i32* @texteditW, align 4
  %363 = load i32, i32* @VARIANT_TRUE, align 4
  %364 = call i32 @test_range_expand(i32* %361, i32 %362, i32 %363, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.17, i64 0, i64 0))
  %365 = load i32*, i32** %4, align 8
  %366 = load i32, i32* @texteditW, align 4
  %367 = load i32, i32* @VARIANT_TRUE, align 4
  %368 = call i32 @test_range_expand(i32* %365, i32 %366, i32 %367, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.17, i64 0, i64 0))
  %369 = load i32*, i32** %4, align 8
  %370 = load i32, i32* @characterW, align 4
  %371 = call i32 @test_range_move(i32* %369, i32 %370, i32 3, i32 3)
  %372 = load i32*, i32** %4, align 8
  %373 = load i32, i32* @wordW, align 4
  %374 = load i32, i32* @VARIANT_TRUE, align 4
  %375 = call i32 @test_range_expand(i32* %372, i32 %373, i32 %374, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.26, i64 0, i64 0))
  %376 = load i32*, i32** %4, align 8
  %377 = load i32, i32* @characterW, align 4
  %378 = call i32 @test_range_moveend(i32* %376, i32 %377, i32 -4, i32 -4)
  %379 = load i32*, i32** %4, align 8
  %380 = call i32 @test_range_put_text(i32* %379, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.27, i64 0, i64 0))
  %381 = load i32*, i32** %4, align 8
  %382 = load i32, i32* @texteditW, align 4
  %383 = load i32, i32* @VARIANT_TRUE, align 4
  %384 = call i32 @test_range_expand(i32* %381, i32 %382, i32 %383, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.28, i64 0, i64 0))
  %385 = load i32*, i32** %4, align 8
  %386 = load i32, i32* @wordW, align 4
  %387 = call i32 @test_range_move(i32* %385, i32 %386, i32 1, i32 1)
  %388 = load i32*, i32** %4, align 8
  %389 = load i32, i32* @characterW, align 4
  %390 = call i32 @test_range_movestart(i32* %388, i32 %389, i32 -1, i32 -1)
  %391 = load i32*, i32** %4, align 8
  %392 = call i32 @test_range_text(i32* %391, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0))
  %393 = load i32*, i32** %4, align 8
  %394 = load i32, i32* @wordW, align 4
  %395 = call i32 @test_range_move(i32* %393, i32 %394, i32 1, i32 1)
  %396 = load i32*, i32** %4, align 8
  %397 = load i32, i32* @characterW, align 4
  %398 = call i32 @test_range_moveend(i32* %396, i32 %397, i32 3, i32 3)
  %399 = load i32*, i32** %4, align 8
  %400 = call i32 @test_range_text(i32* %399, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.29, i64 0, i64 0))
  %401 = load i32*, i32** %4, align 8
  %402 = call i32 @test_range_put_text(i32* %401, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.30, i64 0, i64 0))
  %403 = load i32*, i32** %4, align 8
  %404 = load i32, i32* @characterW, align 4
  %405 = call i32 @test_range_moveend(i32* %403, i32 %404, i32 1, i32 1)
  %406 = load i32*, i32** %4, align 8
  %407 = load i32, i32* @wordW, align 4
  %408 = call i32 @test_range_move(i32* %406, i32 %407, i32 1, i32 1)
  %409 = load i32*, i32** %4, align 8
  %410 = load i32, i32* @characterW, align 4
  %411 = call i32 @test_range_moveend(i32* %409, i32 %410, i32 2, i32 2)
  %412 = load i32*, i32** %4, align 8
  %413 = call i32 @test_range_text(i32* %412, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i64 0, i64 0))
  %414 = load i32*, i32** %2, align 8
  %415 = call i32* @doc_get_body(i32* %414)
  store i32* %415, i32** %8, align 8
  %416 = load i32*, i32** %4, align 8
  %417 = load i32*, i32** %8, align 8
  %418 = call i64 @IHTMLTxtRange_moveToElementText(i32* %416, i32* %417)
  store i64 %418, i64* %9, align 8
  %419 = load i64, i64* %9, align 8
  %420 = load i64, i64* @S_OK, align 8
  %421 = icmp eq i64 %419, %420
  %422 = zext i1 %421 to i32
  %423 = load i64, i64* %9, align 8
  %424 = call i32 @ok(i32 %422, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.31, i64 0, i64 0), i64 %423)
  %425 = load i32*, i32** %4, align 8
  %426 = call i32 @test_range_text(i32* %425, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.32, i64 0, i64 0))
  %427 = load i32*, i32** %4, align 8
  %428 = load i32, i32* @ET_BODY, align 4
  %429 = call i32 @test_range_parent(i32* %427, i32 %428)
  %430 = load i32*, i32** %4, align 8
  %431 = load i32, i32* @wordW, align 4
  %432 = call i32 @test_range_move(i32* %430, i32 %431, i32 1, i32 1)
  %433 = load i32*, i32** %4, align 8
  %434 = load i32, i32* @characterW, align 4
  %435 = call i32 @test_range_moveend(i32* %433, i32 %434, i32 12, i32 12)
  %436 = load i32*, i32** %4, align 8
  %437 = call i32 @test_range_text(i32* %436, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.33, i64 0, i64 0))
  %438 = load i32*, i32** %4, align 8
  %439 = load i32, i32* @VARIANT_TRUE, align 4
  %440 = call i32 @test_range_collapse(i32* %438, i32 %439)
  %441 = load i32*, i32** %4, align 8
  %442 = call i32 @test_range_paste_html(i32* %441, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.34, i64 0, i64 0))
  %443 = load i32*, i32** %4, align 8
  %444 = call i32 @test_range_text(i32* %443, i8* null)
  %445 = load i32*, i32** %4, align 8
  %446 = load i32, i32* @characterW, align 4
  %447 = call i32 @test_range_moveend(i32* %445, i32 %446, i32 3, i32 3)
  %448 = load i32*, i32** %4, align 8
  %449 = call i32 @test_range_text(i32* %448, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.30, i64 0, i64 0))
  %450 = load i32*, i32** %4, align 8
  %451 = load i32*, i32** %8, align 8
  %452 = call i64 @IHTMLTxtRange_moveToElementText(i32* %450, i32* %451)
  store i64 %452, i64* %9, align 8
  %453 = load i64, i64* %9, align 8
  %454 = load i64, i64* @S_OK, align 8
  %455 = icmp eq i64 %453, %454
  %456 = zext i1 %455 to i32
  %457 = load i64, i64* %9, align 8
  %458 = call i32 @ok(i32 %456, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.31, i64 0, i64 0), i64 %457)
  %459 = load i32*, i32** %4, align 8
  %460 = call i32 @test_range_text(i32* %459, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.35, i64 0, i64 0))
  %461 = load i32*, i32** %4, align 8
  %462 = load i32, i32* @wordW, align 4
  %463 = call i32 @test_range_move(i32* %461, i32 %462, i32 2, i32 2)
  %464 = load i32*, i32** %4, align 8
  %465 = load i32, i32* @VARIANT_TRUE, align 4
  %466 = call i32 @test_range_collapse(i32* %464, i32 %465)
  %467 = load i32*, i32** %4, align 8
  %468 = load i32, i32* @characterW, align 4
  %469 = call i32 @test_range_moveend(i32* %467, i32 %468, i32 5, i32 5)
  %470 = load i32*, i32** %4, align 8
  %471 = call i32 @test_range_text(i32* %470, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.36, i64 0, i64 0))
  %472 = load i32*, i32** %4, align 8
  %473 = call i32* @range_duplicate(i32* %472)
  store i32* %473, i32** %5, align 8
  %474 = load i32*, i32** %4, align 8
  %475 = load i32*, i32** %3, align 8
  %476 = load i64, i64* @S_OK, align 8
  %477 = call i32 @test_range_set_end_point(i32* %474, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.37, i64 0, i64 0), i32* %475, i64 %476)
  %478 = load i32*, i32** %4, align 8
  %479 = call i32 @test_range_text(i32* %478, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.38, i64 0, i64 0))
  %480 = load i32*, i32** %4, align 8
  %481 = load i32*, i32** %3, align 8
  %482 = load i64, i64* @S_OK, align 8
  %483 = call i32 @test_range_set_end_point(i32* %480, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.39, i64 0, i64 0), i32* %481, i64 %482)
  %484 = load i32*, i32** %4, align 8
  %485 = call i32 @test_range_text(i32* %484, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.35, i64 0, i64 0))
  %486 = load i32*, i32** %4, align 8
  %487 = load i32*, i32** %5, align 8
  %488 = load i64, i64* @S_OK, align 8
  %489 = call i32 @test_range_set_end_point(i32* %486, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.40, i64 0, i64 0), i32* %487, i64 %488)
  %490 = load i32*, i32** %4, align 8
  %491 = call i32 @test_range_text(i32* %490, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.41, i64 0, i64 0))
  %492 = load i32*, i32** %4, align 8
  %493 = load i32*, i32** %3, align 8
  %494 = load i64, i64* @S_OK, align 8
  %495 = call i32 @test_range_set_end_point(i32* %492, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.37, i64 0, i64 0), i32* %493, i64 %494)
  %496 = load i32*, i32** %4, align 8
  %497 = load i32*, i32** %5, align 8
  %498 = load i64, i64* @S_OK, align 8
  %499 = call i32 @test_range_set_end_point(i32* %496, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.42, i64 0, i64 0), i32* %497, i64 %498)
  %500 = load i32*, i32** %4, align 8
  %501 = call i32 @test_range_text(i32* %500, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0))
  %502 = load i32*, i32** %4, align 8
  %503 = load i32*, i32** %3, align 8
  %504 = load i64, i64* @S_OK, align 8
  %505 = call i32 @test_range_set_end_point(i32* %502, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.40, i64 0, i64 0), i32* %503, i64 %504)
  %506 = load i32*, i32** %4, align 8
  %507 = call i32 @test_range_text(i32* %506, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.43, i64 0, i64 0))
  %508 = load i32*, i32** %4, align 8
  %509 = load i32*, i32** %3, align 8
  %510 = load i64, i64* @S_OK, align 8
  %511 = call i32 @test_range_set_end_point(i32* %508, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.44, i64 0, i64 0), i32* %509, i64 %510)
  %512 = load i32*, i32** %4, align 8
  %513 = call i32 @test_range_text(i32* %512, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0))
  %514 = load i32*, i32** %4, align 8
  %515 = load i32*, i32** %3, align 8
  %516 = load i64, i64* @E_INVALIDARG, align 8
  %517 = call i32 @test_range_set_end_point(i32* %514, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.45, i64 0, i64 0), i32* %515, i64 %516)
  %518 = load i32*, i32** %4, align 8
  %519 = call i32 @IHTMLTxtRange_Release(i32* %518)
  %520 = load i32*, i32** %5, align 8
  %521 = call i32 @IHTMLTxtRange_Release(i32* %520)
  %522 = load i32*, i32** %3, align 8
  %523 = call i32 @IHTMLTxtRange_Release(i32* %522)
  %524 = load i32*, i32** %8, align 8
  %525 = call i32 @IHTMLElement_Release(i32* %524)
  ret void
}

declare dso_local i32* @test_create_body_range(i32*) #1

declare dso_local i32 @test_disp(i32*, i32*, i8*) #1

declare dso_local i32 @test_range_text(i32*, i8*) #1

declare dso_local i32* @range_duplicate(i32*) #1

declare dso_local i32 @test_range_isequal(i32*, i32*, i32) #1

declare dso_local i32 @test_range_collapse(i32*, i32) #1

declare dso_local i32 @test_range_inrange(i32*, i32*, i32) #1

declare dso_local i32 @IHTMLTxtRange_Release(i32*) #1

declare dso_local i32 @test_range_expand(i32*, i32, i32, i8*) #1

declare dso_local i32 @test_range_move(i32*, i32, i32, i32) #1

declare dso_local i32 @test_range_moveend(i32*, i32, i32, i32) #1

declare dso_local i32 @test_range_put_text(i32*, i8*) #1

declare dso_local i32 @test_range_movestart(i32*, i32, i32, i32) #1

declare dso_local i64 @IHTMLDocument2_get_selection(i32*, i32**) #1

declare dso_local i32 @ok(i32, i8*, i64) #1

declare dso_local i32 @test_ifaces(i32*, i32) #1

declare dso_local i64 @IHTMLSelectionObject_createRange(i32*, i32**) #1

declare dso_local i32 @IHTMLSelectionObject_Release(i32*) #1

declare dso_local i64 @IDispatch_QueryInterface(i32*, i32*, i8**) #1

declare dso_local i32 @IDispatch_Release(i32*) #1

declare dso_local i32 @test_range_parent(i32*, i32) #1

declare dso_local i32* @doc_get_body(i32*) #1

declare dso_local i64 @IHTMLTxtRange_moveToElementText(i32*, i32*) #1

declare dso_local i32 @test_range_paste_html(i32*, i8*) #1

declare dso_local i32 @test_range_set_end_point(i32*, i8*, i32*, i64) #1

declare dso_local i32 @IHTMLElement_Release(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
