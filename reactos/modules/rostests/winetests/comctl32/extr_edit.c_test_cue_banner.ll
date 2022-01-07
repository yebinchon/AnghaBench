; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/comctl32/extr_edit.c_test_cue_banner.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/comctl32/extr_edit.c_test_cue_banner.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@test_cue_banner.getcuetestW = internal global [5 x i8] c"T\00\00\00\00", align 1
@test_cue_banner.testcmp1W = internal constant [5 x i8] c"Test\00", align 1
@test_cue_banner.testcmp2W = internal constant [4 x i8] c"Tes\00", align 1
@test_cue_banner.emptyW = internal constant [1 x i8] zeroinitializer, align 1
@ES_AUTOHSCROLL = common dso_local global i32 0, align 4
@ES_AUTOVSCROLL = common dso_local global i32 0, align 4
@EM_GETCUEBANNER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"skipping for Win XP and 2003 Server.\0A\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"First char is %c\0A\00", align 1
@FALSE = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [45 x i8] c"EM_GETCUEBANNER should have returned FALSE.\0A\00", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c"String was %s.\0A\00", align 1
@EM_SETCUEBANNER = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [45 x i8] c"EM_SETCUEBANNER should have returned FALSE.\0A\00", align 1
@TRUE = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [44 x i8] c"EM_SETCUEBANNER should have returned TRUE.\0A\00", align 1
@.str.6 = private unnamed_addr constant [44 x i8] c"EM_GETCUEBANNER should have returned TRUE.\0A\00", align 1
@.str.7 = private unnamed_addr constant [37 x i8] c"EM_GETCUEBANNER returned string %s.\0A\00", align 1
@ES_MULTILINE = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [18 x i8] c"EM_SETCUEBANNER.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_cue_banner to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_cue_banner() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i64, align 8
  %3 = load i32, i32* @ES_AUTOHSCROLL, align 4
  %4 = load i32, i32* @ES_AUTOVSCROLL, align 4
  %5 = or i32 %3, %4
  %6 = call i32 @create_editcontrolW(i32 %5, i32 0)
  store i32 %6, i32* %1, align 4
  %7 = load i32, i32* %1, align 4
  %8 = load i32, i32* @EM_GETCUEBANNER, align 4
  %9 = call i64 @SendMessageW(i32 %7, i32 %8, i32 ptrtoint ([5 x i8]* @test_cue_banner.getcuetestW to i32), i32 5)
  store i64 %9, i64* %2, align 8
  %10 = call i64 @lstrcmpW(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @test_cue_banner.getcuetestW, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @test_cue_banner.emptyW, i64 0, i64 0))
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %16

12:                                               ; preds = %0
  %13 = call i32 @win_skip(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  %14 = load i32, i32* %1, align 4
  %15 = call i32 @DestroyWindow(i32 %14)
  br label %191

16:                                               ; preds = %0
  %17 = call i64 @lstrcmpW(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @test_cue_banner.getcuetestW, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @test_cue_banner.emptyW, i64 0, i64 0))
  %18 = icmp eq i64 %17, 0
  %19 = zext i1 %18 to i32
  %20 = load i8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @test_cue_banner.getcuetestW, i64 0, i64 0), align 1
  %21 = sext i8 %20 to i32
  %22 = call i32 (i32, i8*, ...) @ok(i32 %19, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i32 %21)
  %23 = load i64, i64* %2, align 8
  %24 = load i64, i64* @FALSE, align 8
  %25 = icmp eq i64 %23, %24
  %26 = zext i1 %25 to i32
  %27 = call i32 (i32, i8*, ...) @ok(i32 %26, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.2, i64 0, i64 0))
  %28 = call i32 @lstrcpyW(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @test_cue_banner.getcuetestW, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @test_cue_banner.testcmp1W, i64 0, i64 0))
  %29 = load i32, i32* %1, align 4
  %30 = load i32, i32* @EM_GETCUEBANNER, align 4
  %31 = call i64 @SendMessageW(i32 %29, i32 %30, i32 ptrtoint ([5 x i8]* @test_cue_banner.getcuetestW to i32), i32 0)
  store i64 %31, i64* %2, align 8
  %32 = call i64 @lstrcmpW(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @test_cue_banner.getcuetestW, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @test_cue_banner.testcmp1W, i64 0, i64 0))
  %33 = icmp eq i64 %32, 0
  %34 = zext i1 %33 to i32
  %35 = call i32 @wine_dbgstr_w(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @test_cue_banner.getcuetestW, i64 0, i64 0))
  %36 = call i32 (i32, i8*, ...) @ok(i32 %34, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0), i32 %35)
  %37 = load i64, i64* %2, align 8
  %38 = load i64, i64* @FALSE, align 8
  %39 = icmp eq i64 %37, %38
  %40 = zext i1 %39 to i32
  %41 = call i32 (i32, i8*, ...) @ok(i32 %40, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.2, i64 0, i64 0))
  %42 = load i32, i32* %1, align 4
  %43 = load i32, i32* @EM_GETCUEBANNER, align 4
  %44 = call i64 @SendMessageW(i32 %42, i32 %43, i32 0, i32 0)
  store i64 %44, i64* %2, align 8
  %45 = load i64, i64* %2, align 8
  %46 = load i64, i64* @FALSE, align 8
  %47 = icmp eq i64 %45, %46
  %48 = zext i1 %47 to i32
  %49 = call i32 (i32, i8*, ...) @ok(i32 %48, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.2, i64 0, i64 0))
  %50 = load i32, i32* %1, align 4
  %51 = load i32, i32* @EM_SETCUEBANNER, align 4
  %52 = call i64 @SendMessageW(i32 %50, i32 %51, i32 0, i32 0)
  store i64 %52, i64* %2, align 8
  %53 = load i64, i64* %2, align 8
  %54 = load i64, i64* @FALSE, align 8
  %55 = icmp eq i64 %53, %54
  %56 = zext i1 %55 to i32
  %57 = call i32 (i32, i8*, ...) @ok(i32 %56, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.4, i64 0, i64 0))
  %58 = load i32, i32* %1, align 4
  %59 = load i32, i32* @EM_GETCUEBANNER, align 4
  %60 = call i64 @SendMessageW(i32 %58, i32 %59, i32 0, i32 0)
  store i64 %60, i64* %2, align 8
  %61 = load i64, i64* %2, align 8
  %62 = load i64, i64* @FALSE, align 8
  %63 = icmp eq i64 %61, %62
  %64 = zext i1 %63 to i32
  %65 = call i32 (i32, i8*, ...) @ok(i32 %64, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.2, i64 0, i64 0))
  %66 = call i32 @lstrcpyW(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @test_cue_banner.getcuetestW, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @test_cue_banner.testcmp1W, i64 0, i64 0))
  %67 = load i32, i32* %1, align 4
  %68 = load i32, i32* @EM_SETCUEBANNER, align 4
  %69 = call i64 @SendMessageW(i32 %67, i32 %68, i32 0, i32 ptrtoint ([5 x i8]* @test_cue_banner.getcuetestW to i32))
  store i64 %69, i64* %2, align 8
  %70 = load i64, i64* %2, align 8
  %71 = load i64, i64* @TRUE, align 8
  %72 = icmp eq i64 %70, %71
  %73 = zext i1 %72 to i32
  %74 = call i32 (i32, i8*, ...) @ok(i32 %73, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.5, i64 0, i64 0))
  %75 = load i32, i32* %1, align 4
  %76 = load i32, i32* @EM_GETCUEBANNER, align 4
  %77 = call i64 @SendMessageW(i32 %75, i32 %76, i32 0, i32 5)
  store i64 %77, i64* %2, align 8
  %78 = load i64, i64* %2, align 8
  %79 = load i64, i64* @TRUE, align 8
  %80 = icmp eq i64 %78, %79
  %81 = zext i1 %80 to i32
  %82 = call i32 (i32, i8*, ...) @ok(i32 %81, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.6, i64 0, i64 0))
  %83 = load i32, i32* %1, align 4
  %84 = load i32, i32* @EM_GETCUEBANNER, align 4
  %85 = call i64 @SendMessageW(i32 %83, i32 %84, i32 ptrtoint ([5 x i8]* @test_cue_banner.getcuetestW to i32), i32 5)
  store i64 %85, i64* %2, align 8
  %86 = load i64, i64* %2, align 8
  %87 = load i64, i64* @TRUE, align 8
  %88 = icmp eq i64 %86, %87
  %89 = zext i1 %88 to i32
  %90 = call i32 (i32, i8*, ...) @ok(i32 %89, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.6, i64 0, i64 0))
  %91 = call i64 @lstrcmpW(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @test_cue_banner.getcuetestW, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @test_cue_banner.testcmp1W, i64 0, i64 0))
  %92 = icmp eq i64 %91, 0
  %93 = zext i1 %92 to i32
  %94 = call i32 @wine_dbgstr_w(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @test_cue_banner.getcuetestW, i64 0, i64 0))
  %95 = call i32 (i32, i8*, ...) @ok(i32 %93, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.7, i64 0, i64 0), i32 %94)
  %96 = load i32, i32* %1, align 4
  %97 = load i32, i32* @EM_SETCUEBANNER, align 4
  %98 = call i64 @SendMessageW(i32 %96, i32 %97, i32 0, i32 ptrtoint ([1 x i8]* @test_cue_banner.emptyW to i32))
  store i64 %98, i64* %2, align 8
  %99 = load i64, i64* %2, align 8
  %100 = load i64, i64* @TRUE, align 8
  %101 = icmp eq i64 %99, %100
  %102 = zext i1 %101 to i32
  %103 = call i32 (i32, i8*, ...) @ok(i32 %102, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.5, i64 0, i64 0))
  %104 = load i32, i32* %1, align 4
  %105 = load i32, i32* @EM_GETCUEBANNER, align 4
  %106 = call i64 @SendMessageW(i32 %104, i32 %105, i32 ptrtoint ([5 x i8]* @test_cue_banner.getcuetestW to i32), i32 5)
  store i64 %106, i64* %2, align 8
  %107 = load i64, i64* %2, align 8
  %108 = load i64, i64* @TRUE, align 8
  %109 = icmp eq i64 %107, %108
  %110 = zext i1 %109 to i32
  %111 = call i32 (i32, i8*, ...) @ok(i32 %110, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.6, i64 0, i64 0))
  %112 = call i64 @lstrcmpW(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @test_cue_banner.getcuetestW, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @test_cue_banner.emptyW, i64 0, i64 0))
  %113 = icmp eq i64 %112, 0
  %114 = zext i1 %113 to i32
  %115 = call i32 @wine_dbgstr_w(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @test_cue_banner.getcuetestW, i64 0, i64 0))
  %116 = call i32 (i32, i8*, ...) @ok(i32 %114, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.7, i64 0, i64 0), i32 %115)
  %117 = load i32, i32* %1, align 4
  %118 = load i32, i32* @EM_SETCUEBANNER, align 4
  %119 = call i64 @SendMessageW(i32 %117, i32 %118, i32 0, i32 ptrtoint ([5 x i8]* @test_cue_banner.testcmp1W to i32))
  store i64 %119, i64* %2, align 8
  %120 = load i64, i64* %2, align 8
  %121 = load i64, i64* @TRUE, align 8
  %122 = icmp eq i64 %120, %121
  %123 = zext i1 %122 to i32
  %124 = call i32 (i32, i8*, ...) @ok(i32 %123, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.5, i64 0, i64 0))
  %125 = call i32 @lstrlenW(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @test_cue_banner.testcmp1W, i64 0, i64 0))
  %126 = sext i32 %125 to i64
  %127 = mul i64 %126, 1
  %128 = trunc i64 %127 to i32
  %129 = call i32 @memset(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @test_cue_banner.getcuetestW, i64 0, i64 0), i32 0, i32 %128)
  %130 = load i32, i32* %1, align 4
  %131 = load i32, i32* @EM_GETCUEBANNER, align 4
  %132 = call i32 @lstrlenW(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @test_cue_banner.testcmp1W, i64 0, i64 0))
  %133 = add nsw i32 %132, 1
  %134 = call i64 @SendMessageW(i32 %130, i32 %131, i32 ptrtoint ([5 x i8]* @test_cue_banner.getcuetestW to i32), i32 %133)
  store i64 %134, i64* %2, align 8
  %135 = load i64, i64* %2, align 8
  %136 = load i64, i64* @TRUE, align 8
  %137 = icmp eq i64 %135, %136
  %138 = zext i1 %137 to i32
  %139 = call i32 (i32, i8*, ...) @ok(i32 %138, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.6, i64 0, i64 0))
  %140 = call i64 @lstrcmpW(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @test_cue_banner.getcuetestW, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @test_cue_banner.testcmp1W, i64 0, i64 0))
  %141 = icmp eq i64 %140, 0
  %142 = zext i1 %141 to i32
  %143 = call i32 @wine_dbgstr_w(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @test_cue_banner.getcuetestW, i64 0, i64 0))
  %144 = call i32 (i32, i8*, ...) @ok(i32 %142, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.7, i64 0, i64 0), i32 %143)
  %145 = call i32 @lstrlenW(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @test_cue_banner.testcmp1W, i64 0, i64 0))
  %146 = sext i32 %145 to i64
  %147 = mul i64 %146, 1
  %148 = trunc i64 %147 to i32
  %149 = call i32 @memset(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @test_cue_banner.getcuetestW, i64 0, i64 0), i32 0, i32 %148)
  %150 = load i32, i32* %1, align 4
  %151 = load i32, i32* @EM_GETCUEBANNER, align 4
  %152 = call i32 @lstrlenW(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @test_cue_banner.testcmp1W, i64 0, i64 0))
  %153 = call i64 @SendMessageW(i32 %150, i32 %151, i32 ptrtoint ([5 x i8]* @test_cue_banner.getcuetestW to i32), i32 %152)
  store i64 %153, i64* %2, align 8
  %154 = call i64 @lstrcmpW(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @test_cue_banner.getcuetestW, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @test_cue_banner.testcmp2W, i64 0, i64 0))
  %155 = icmp eq i64 %154, 0
  %156 = zext i1 %155 to i32
  %157 = call i32 @wine_dbgstr_w(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @test_cue_banner.getcuetestW, i64 0, i64 0))
  %158 = call i32 (i32, i8*, ...) @ok(i32 %156, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.7, i64 0, i64 0), i32 %157)
  %159 = load i32, i32* %1, align 4
  %160 = call i32 @DestroyWindow(i32 %159)
  %161 = load i32, i32* @ES_AUTOHSCROLL, align 4
  %162 = load i32, i32* @ES_AUTOVSCROLL, align 4
  %163 = or i32 %161, %162
  %164 = load i32, i32* @ES_MULTILINE, align 4
  %165 = or i32 %163, %164
  %166 = call i32 @create_editcontrolW(i32 %165, i32 0)
  store i32 %166, i32* %1, align 4
  %167 = call i32 @lstrcpyW(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @test_cue_banner.getcuetestW, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @test_cue_banner.testcmp1W, i64 0, i64 0))
  %168 = load i32, i32* %1, align 4
  %169 = load i32, i32* @EM_GETCUEBANNER, align 4
  %170 = call i64 @SendMessageW(i32 %168, i32 %169, i32 ptrtoint ([5 x i8]* @test_cue_banner.getcuetestW to i32), i32 5)
  store i64 %170, i64* %2, align 8
  %171 = load i64, i64* %2, align 8
  %172 = load i64, i64* @FALSE, align 8
  %173 = icmp eq i64 %171, %172
  %174 = zext i1 %173 to i32
  %175 = call i32 (i32, i8*, ...) @ok(i32 %174, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.8, i64 0, i64 0))
  %176 = call i64 @lstrcmpW(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @test_cue_banner.getcuetestW, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @test_cue_banner.testcmp1W, i64 0, i64 0))
  %177 = icmp eq i64 %176, 0
  %178 = zext i1 %177 to i32
  %179 = call i32 @wine_dbgstr_w(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @test_cue_banner.getcuetestW, i64 0, i64 0))
  %180 = call i32 (i32, i8*, ...) @ok(i32 %178, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0), i32 %179)
  %181 = load i32, i32* %1, align 4
  %182 = load i32, i32* @EM_SETCUEBANNER, align 4
  %183 = call i64 @SendMessageW(i32 %181, i32 %182, i32 0, i32 ptrtoint ([5 x i8]* @test_cue_banner.getcuetestW to i32))
  store i64 %183, i64* %2, align 8
  %184 = load i64, i64* %2, align 8
  %185 = load i64, i64* @FALSE, align 8
  %186 = icmp eq i64 %184, %185
  %187 = zext i1 %186 to i32
  %188 = call i32 (i32, i8*, ...) @ok(i32 %187, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.8, i64 0, i64 0))
  %189 = load i32, i32* %1, align 4
  %190 = call i32 @DestroyWindow(i32 %189)
  br label %191

191:                                              ; preds = %16, %12
  ret void
}

declare dso_local i32 @create_editcontrolW(i32, i32) #1

declare dso_local i64 @SendMessageW(i32, i32, i32, i32) #1

declare dso_local i64 @lstrcmpW(i8*, i8*) #1

declare dso_local i32 @win_skip(i8*) #1

declare dso_local i32 @DestroyWindow(i32) #1

declare dso_local i32 @ok(i32, i8*, ...) #1

declare dso_local i32 @lstrcpyW(i8*, i8*) #1

declare dso_local i32 @wine_dbgstr_w(i8*) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i32 @lstrlenW(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
