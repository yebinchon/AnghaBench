; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/msvcrt/extr_string.c_test_wcscpy_s.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/msvcrt/extr_string.c_test_wcscpy_s.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@test_wcscpy_s.szLongText = internal constant [16 x i8] c"ThisALongstring\00", align 16
@test_wcscpy_s.szDest = internal global [18 x i8] zeroinitializer, align 16
@test_wcscpy_s.szDestShort = internal global [8 x i8] zeroinitializer, align 1
@EBADF = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"p_wcscpy_s expect EINVAL got %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"expected errno EINVAL got %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"expected EINVAL got %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [25 x i8] c"szDest[0] not 0, got %c\0A\00", align 1
@ERANGE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [31 x i8] c"expected ERANGE/EINVAL got %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [37 x i8] c"expected errno ERANGE/EINVAL got %d\0A\00", align 1
@.str.6 = private unnamed_addr constant [17 x i8] c"szDest[0] not 0\0A\00", align 1
@.str.7 = private unnamed_addr constant [19 x i8] c"expected 0 got %d\0A\00", align 1
@.str.8 = private unnamed_addr constant [22 x i8] c"szDest != szLongText\0A\00", align 1
@.str.9 = private unnamed_addr constant [22 x i8] c"szDestShort[0] not 0\0A\00", align 1
@.str.10 = private unnamed_addr constant [34 x i8] c"p_wcsncpy_s expect EINVAL got %d\0A\00", align 1
@.str.11 = private unnamed_addr constant [31 x i8] c"expected ERROR_SUCCESS got %d\0A\00", align 1
@STRUNCATE = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [27 x i8] c"expected STRUNCATE got %d\0A\00", align 1
@.str.13 = private unnamed_addr constant [17 x i8] c"szDest[4] not 0\0A\00", align 1
@.str.14 = private unnamed_addr constant [13 x i8] c"szDest = %s\0A\00", align 1
@.str.15 = private unnamed_addr constant [10 x i8] c"ret = %d\0A\00", align 1
@.str.16 = private unnamed_addr constant [18 x i8] c"szDestShort = %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_wcscpy_s to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_wcscpy_s() #0 {
  %1 = alloca i32, align 4
  %2 = load i32, i32* @EBADF, align 4
  store i32 %2, i32* @errno, align 4
  %3 = call i32 @p_wcscpy_s(i8* null, i32 18, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @test_wcscpy_s.szLongText, i64 0, i64 0))
  store i32 %3, i32* %1, align 4
  %4 = load i32, i32* %1, align 4
  %5 = load i32, i32* @EINVAL, align 4
  %6 = icmp eq i32 %4, %5
  %7 = zext i1 %6 to i32
  %8 = load i32, i32* %1, align 4
  %9 = call i32 (i32, i8*, ...) @ok(i32 %7, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %8)
  %10 = load i32, i32* @errno, align 4
  %11 = load i32, i32* @EINVAL, align 4
  %12 = icmp eq i32 %10, %11
  %13 = zext i1 %12 to i32
  %14 = load i32, i32* @errno, align 4
  %15 = call i32 (i32, i8*, ...) @ok(i32 %13, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i32 %14)
  %16 = load i32, i32* @EBADF, align 4
  store i32 %16, i32* @errno, align 4
  store i8 65, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @test_wcscpy_s.szDest, i64 0, i64 0), align 16
  %17 = call i32 @p_wcscpy_s(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @test_wcscpy_s.szDest, i64 0, i64 0), i32 18, i8* null)
  store i32 %17, i32* %1, align 4
  %18 = load i32, i32* %1, align 4
  %19 = load i32, i32* @EINVAL, align 4
  %20 = icmp eq i32 %18, %19
  %21 = zext i1 %20 to i32
  %22 = load i32, i32* %1, align 4
  %23 = call i32 (i32, i8*, ...) @ok(i32 %21, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0), i32 %22)
  %24 = load i32, i32* @errno, align 4
  %25 = load i32, i32* @EINVAL, align 4
  %26 = icmp eq i32 %24, %25
  %27 = zext i1 %26 to i32
  %28 = load i32, i32* @errno, align 4
  %29 = call i32 (i32, i8*, ...) @ok(i32 %27, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i32 %28)
  %30 = load i8, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @test_wcscpy_s.szDest, i64 0, i64 0), align 16
  %31 = sext i8 %30 to i32
  %32 = icmp eq i32 %31, 0
  %33 = zext i1 %32 to i32
  %34 = load i8, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @test_wcscpy_s.szDest, i64 0, i64 0), align 16
  %35 = sext i8 %34 to i32
  %36 = call i32 (i32, i8*, ...) @ok(i32 %33, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0), i32 %35)
  %37 = load i32, i32* @EBADF, align 4
  store i32 %37, i32* @errno, align 4
  store i8 65, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @test_wcscpy_s.szDest, i64 0, i64 0), align 16
  %38 = call i32 @p_wcscpy_s(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @test_wcscpy_s.szDest, i64 0, i64 0), i32 0, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @test_wcscpy_s.szLongText, i64 0, i64 0))
  store i32 %38, i32* %1, align 4
  %39 = load i32, i32* %1, align 4
  %40 = load i32, i32* @ERANGE, align 4
  %41 = icmp eq i32 %39, %40
  br i1 %41, label %46, label %42

42:                                               ; preds = %0
  %43 = load i32, i32* %1, align 4
  %44 = load i32, i32* @EINVAL, align 4
  %45 = icmp eq i32 %43, %44
  br label %46

46:                                               ; preds = %42, %0
  %47 = phi i1 [ true, %0 ], [ %45, %42 ]
  %48 = zext i1 %47 to i32
  %49 = load i32, i32* %1, align 4
  %50 = call i32 (i32, i8*, ...) @ok(i32 %48, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.4, i64 0, i64 0), i32 %49)
  %51 = load i32, i32* @errno, align 4
  %52 = load i32, i32* @ERANGE, align 4
  %53 = icmp eq i32 %51, %52
  br i1 %53, label %58, label %54

54:                                               ; preds = %46
  %55 = load i32, i32* @errno, align 4
  %56 = load i32, i32* @EINVAL, align 4
  %57 = icmp eq i32 %55, %56
  br label %58

58:                                               ; preds = %54, %46
  %59 = phi i1 [ true, %46 ], [ %57, %54 ]
  %60 = zext i1 %59 to i32
  %61 = load i32, i32* @errno, align 4
  %62 = call i32 (i32, i8*, ...) @ok(i32 %60, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.5, i64 0, i64 0), i32 %61)
  %63 = load i8, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @test_wcscpy_s.szDest, i64 0, i64 0), align 16
  %64 = sext i8 %63 to i32
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %70, label %66

66:                                               ; preds = %58
  %67 = load i32, i32* %1, align 4
  %68 = load i32, i32* @EINVAL, align 4
  %69 = icmp eq i32 %67, %68
  br label %70

70:                                               ; preds = %66, %58
  %71 = phi i1 [ true, %58 ], [ %69, %66 ]
  %72 = zext i1 %71 to i32
  %73 = call i32 (i32, i8*, ...) @ok(i32 %72, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i64 0, i64 0))
  %74 = call i32 @p_wcscpy_s(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @test_wcscpy_s.szDest, i64 0, i64 0), i32 18, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @test_wcscpy_s.szLongText, i64 0, i64 0))
  store i32 %74, i32* %1, align 4
  %75 = load i32, i32* %1, align 4
  %76 = icmp eq i32 %75, 0
  %77 = zext i1 %76 to i32
  %78 = load i32, i32* %1, align 4
  %79 = call i32 (i32, i8*, ...) @ok(i32 %77, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.7, i64 0, i64 0), i32 %78)
  %80 = call i64 @lstrcmpW(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @test_wcscpy_s.szDest, i64 0, i64 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @test_wcscpy_s.szLongText, i64 0, i64 0))
  %81 = icmp eq i64 %80, 0
  %82 = zext i1 %81 to i32
  %83 = call i32 (i32, i8*, ...) @ok(i32 %82, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.8, i64 0, i64 0))
  %84 = call i32 @p_wcscpy_s(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @test_wcscpy_s.szDest, i64 0, i64 0), i32 18, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @test_wcscpy_s.szDest, i64 0, i64 0))
  store i32 %84, i32* %1, align 4
  %85 = load i32, i32* %1, align 4
  %86 = icmp eq i32 %85, 0
  %87 = zext i1 %86 to i32
  %88 = load i32, i32* %1, align 4
  %89 = call i32 (i32, i8*, ...) @ok(i32 %87, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.7, i64 0, i64 0), i32 %88)
  %90 = call i64 @lstrcmpW(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @test_wcscpy_s.szDest, i64 0, i64 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @test_wcscpy_s.szLongText, i64 0, i64 0))
  %91 = icmp eq i64 %90, 0
  %92 = zext i1 %91 to i32
  %93 = call i32 (i32, i8*, ...) @ok(i32 %92, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.8, i64 0, i64 0))
  %94 = load i32, i32* @EBADF, align 4
  store i32 %94, i32* @errno, align 4
  store i8 65, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @test_wcscpy_s.szDest, i64 0, i64 0), align 16
  %95 = call i32 @p_wcscpy_s(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @test_wcscpy_s.szDestShort, i64 0, i64 0), i32 8, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @test_wcscpy_s.szLongText, i64 0, i64 0))
  store i32 %95, i32* %1, align 4
  %96 = load i32, i32* %1, align 4
  %97 = load i32, i32* @ERANGE, align 4
  %98 = icmp eq i32 %96, %97
  br i1 %98, label %103, label %99

99:                                               ; preds = %70
  %100 = load i32, i32* %1, align 4
  %101 = load i32, i32* @EINVAL, align 4
  %102 = icmp eq i32 %100, %101
  br label %103

103:                                              ; preds = %99, %70
  %104 = phi i1 [ true, %70 ], [ %102, %99 ]
  %105 = zext i1 %104 to i32
  %106 = load i32, i32* %1, align 4
  %107 = call i32 (i32, i8*, ...) @ok(i32 %105, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.4, i64 0, i64 0), i32 %106)
  %108 = load i32, i32* @errno, align 4
  %109 = load i32, i32* @ERANGE, align 4
  %110 = icmp eq i32 %108, %109
  br i1 %110, label %115, label %111

111:                                              ; preds = %103
  %112 = load i32, i32* @errno, align 4
  %113 = load i32, i32* @EINVAL, align 4
  %114 = icmp eq i32 %112, %113
  br label %115

115:                                              ; preds = %111, %103
  %116 = phi i1 [ true, %103 ], [ %114, %111 ]
  %117 = zext i1 %116 to i32
  %118 = load i32, i32* @errno, align 4
  %119 = call i32 (i32, i8*, ...) @ok(i32 %117, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.5, i64 0, i64 0), i32 %118)
  %120 = load i8, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @test_wcscpy_s.szDestShort, i64 0, i64 0), align 1
  %121 = sext i8 %120 to i32
  %122 = icmp eq i32 %121, 0
  %123 = zext i1 %122 to i32
  %124 = call i32 (i32, i8*, ...) @ok(i32 %123, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.9, i64 0, i64 0))
  %125 = call i32 @ARRAY_SIZE(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @test_wcscpy_s.szLongText, i64 0, i64 0))
  %126 = call i32 @p_wcsncpy_s(i8* null, i32 18, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @test_wcscpy_s.szLongText, i64 0, i64 0), i32 %125)
  store i32 %126, i32* %1, align 4
  %127 = load i32, i32* %1, align 4
  %128 = load i32, i32* @EINVAL, align 4
  %129 = icmp eq i32 %127, %128
  %130 = zext i1 %129 to i32
  %131 = load i32, i32* %1, align 4
  %132 = call i32 (i32, i8*, ...) @ok(i32 %130, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.10, i64 0, i64 0), i32 %131)
  store i8 65, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @test_wcscpy_s.szDest, i64 0, i64 0), align 16
  %133 = call i32 @p_wcsncpy_s(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @test_wcscpy_s.szDest, i64 0, i64 0), i32 18, i8* null, i32 1)
  store i32 %133, i32* %1, align 4
  %134 = load i32, i32* %1, align 4
  %135 = load i32, i32* @EINVAL, align 4
  %136 = icmp eq i32 %134, %135
  %137 = zext i1 %136 to i32
  %138 = load i32, i32* %1, align 4
  %139 = call i32 (i32, i8*, ...) @ok(i32 %137, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0), i32 %138)
  %140 = load i8, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @test_wcscpy_s.szDest, i64 0, i64 0), align 16
  %141 = sext i8 %140 to i32
  %142 = icmp eq i32 %141, 0
  %143 = zext i1 %142 to i32
  %144 = call i32 (i32, i8*, ...) @ok(i32 %143, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i64 0, i64 0))
  store i8 65, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @test_wcscpy_s.szDest, i64 0, i64 0), align 16
  %145 = call i32 @p_wcsncpy_s(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @test_wcscpy_s.szDest, i64 0, i64 0), i32 18, i8* null, i32 0)
  store i32 %145, i32* %1, align 4
  %146 = load i32, i32* %1, align 4
  %147 = icmp eq i32 %146, 0
  %148 = zext i1 %147 to i32
  %149 = load i32, i32* %1, align 4
  %150 = call i32 (i32, i8*, ...) @ok(i32 %148, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.11, i64 0, i64 0), i32 %149)
  %151 = load i8, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @test_wcscpy_s.szDest, i64 0, i64 0), align 16
  %152 = sext i8 %151 to i32
  %153 = icmp eq i32 %152, 0
  %154 = zext i1 %153 to i32
  %155 = call i32 (i32, i8*, ...) @ok(i32 %154, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i64 0, i64 0))
  store i8 65, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @test_wcscpy_s.szDest, i64 0, i64 0), align 16
  %156 = call i32 @ARRAY_SIZE(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @test_wcscpy_s.szLongText, i64 0, i64 0))
  %157 = call i32 @p_wcsncpy_s(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @test_wcscpy_s.szDest, i64 0, i64 0), i32 0, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @test_wcscpy_s.szLongText, i64 0, i64 0), i32 %156)
  store i32 %157, i32* %1, align 4
  %158 = load i32, i32* %1, align 4
  %159 = load i32, i32* @ERANGE, align 4
  %160 = icmp eq i32 %158, %159
  br i1 %160, label %165, label %161

161:                                              ; preds = %115
  %162 = load i32, i32* %1, align 4
  %163 = load i32, i32* @EINVAL, align 4
  %164 = icmp eq i32 %162, %163
  br label %165

165:                                              ; preds = %161, %115
  %166 = phi i1 [ true, %115 ], [ %164, %161 ]
  %167 = zext i1 %166 to i32
  %168 = load i32, i32* %1, align 4
  %169 = call i32 (i32, i8*, ...) @ok(i32 %167, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.4, i64 0, i64 0), i32 %168)
  %170 = load i8, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @test_wcscpy_s.szDest, i64 0, i64 0), align 16
  %171 = sext i8 %170 to i32
  %172 = icmp eq i32 %171, 0
  br i1 %172, label %177, label %173

173:                                              ; preds = %165
  %174 = load i32, i32* %1, align 4
  %175 = load i32, i32* @EINVAL, align 4
  %176 = icmp eq i32 %174, %175
  br label %177

177:                                              ; preds = %173, %165
  %178 = phi i1 [ true, %165 ], [ %176, %173 ]
  %179 = zext i1 %178 to i32
  %180 = call i32 (i32, i8*, ...) @ok(i32 %179, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i64 0, i64 0))
  %181 = call i32 @ARRAY_SIZE(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @test_wcscpy_s.szLongText, i64 0, i64 0))
  %182 = call i32 @p_wcsncpy_s(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @test_wcscpy_s.szDest, i64 0, i64 0), i32 18, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @test_wcscpy_s.szLongText, i64 0, i64 0), i32 %181)
  store i32 %182, i32* %1, align 4
  %183 = load i32, i32* %1, align 4
  %184 = icmp eq i32 %183, 0
  %185 = zext i1 %184 to i32
  %186 = load i32, i32* %1, align 4
  %187 = call i32 (i32, i8*, ...) @ok(i32 %185, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.7, i64 0, i64 0), i32 %186)
  %188 = call i64 @lstrcmpW(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @test_wcscpy_s.szDest, i64 0, i64 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @test_wcscpy_s.szLongText, i64 0, i64 0))
  %189 = icmp eq i64 %188, 0
  %190 = zext i1 %189 to i32
  %191 = call i32 (i32, i8*, ...) @ok(i32 %190, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.8, i64 0, i64 0))
  store i8 65, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @test_wcscpy_s.szDest, i64 0, i64 0), align 16
  %192 = call i32 @ARRAY_SIZE(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @test_wcscpy_s.szLongText, i64 0, i64 0))
  %193 = call i32 @p_wcsncpy_s(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @test_wcscpy_s.szDestShort, i64 0, i64 0), i32 8, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @test_wcscpy_s.szLongText, i64 0, i64 0), i32 %192)
  store i32 %193, i32* %1, align 4
  %194 = load i32, i32* %1, align 4
  %195 = load i32, i32* @ERANGE, align 4
  %196 = icmp eq i32 %194, %195
  br i1 %196, label %201, label %197

197:                                              ; preds = %177
  %198 = load i32, i32* %1, align 4
  %199 = load i32, i32* @EINVAL, align 4
  %200 = icmp eq i32 %198, %199
  br label %201

201:                                              ; preds = %197, %177
  %202 = phi i1 [ true, %177 ], [ %200, %197 ]
  %203 = zext i1 %202 to i32
  %204 = load i32, i32* %1, align 4
  %205 = call i32 (i32, i8*, ...) @ok(i32 %203, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.4, i64 0, i64 0), i32 %204)
  %206 = load i8, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @test_wcscpy_s.szDestShort, i64 0, i64 0), align 1
  %207 = sext i8 %206 to i32
  %208 = icmp eq i32 %207, 0
  %209 = zext i1 %208 to i32
  %210 = call i32 (i32, i8*, ...) @ok(i32 %209, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.9, i64 0, i64 0))
  store i8 65, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @test_wcscpy_s.szDest, i64 0, i64 0), align 16
  %211 = call i32 @p_wcsncpy_s(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @test_wcscpy_s.szDest, i64 0, i64 0), i32 5, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @test_wcscpy_s.szLongText, i64 0, i64 0), i32 -1)
  store i32 %211, i32* %1, align 4
  %212 = load i32, i32* %1, align 4
  %213 = load i32, i32* @STRUNCATE, align 4
  %214 = icmp eq i32 %212, %213
  %215 = zext i1 %214 to i32
  %216 = load i32, i32* %1, align 4
  %217 = call i32 (i32, i8*, ...) @ok(i32 %215, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.12, i64 0, i64 0), i32 %216)
  %218 = load i8, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @test_wcscpy_s.szDest, i64 0, i64 4), align 4
  %219 = sext i8 %218 to i32
  %220 = icmp eq i32 %219, 0
  %221 = zext i1 %220 to i32
  %222 = call i32 (i32, i8*, ...) @ok(i32 %221, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.13, i64 0, i64 0))
  %223 = call i32 @memcmp(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @test_wcscpy_s.szDest, i64 0, i64 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @test_wcscpy_s.szLongText, i64 0, i64 0), i32 4)
  %224 = icmp ne i32 %223, 0
  %225 = xor i1 %224, true
  %226 = zext i1 %225 to i32
  %227 = call i32 @wine_dbgstr_w(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @test_wcscpy_s.szDest, i64 0, i64 0))
  %228 = call i32 (i32, i8*, ...) @ok(i32 %226, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.14, i64 0, i64 0), i32 %227)
  %229 = call i32 @p_wcsncpy_s(i8* null, i32 0, i8* inttoptr (i64 3735928559 to i8*), i32 0)
  store i32 %229, i32* %1, align 4
  %230 = load i32, i32* %1, align 4
  %231 = icmp eq i32 %230, 0
  %232 = zext i1 %231 to i32
  %233 = load i32, i32* %1, align 4
  %234 = call i32 (i32, i8*, ...) @ok(i32 %232, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.15, i64 0, i64 0), i32 %233)
  store i8 49, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @test_wcscpy_s.szDestShort, i64 0, i64 0), align 1
  store i8 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @test_wcscpy_s.szDestShort, i64 0, i64 1), align 1
  %235 = call i32 @p_wcsncpy_s(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @test_wcscpy_s.szDestShort, i64 0, i64 1), i32 4, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @test_wcscpy_s.szDestShort, i64 0, i64 0), i32 -1)
  store i32 %235, i32* %1, align 4
  %236 = load i32, i32* %1, align 4
  %237 = load i32, i32* @STRUNCATE, align 4
  %238 = icmp eq i32 %236, %237
  %239 = zext i1 %238 to i32
  %240 = load i32, i32* %1, align 4
  %241 = call i32 (i32, i8*, ...) @ok(i32 %239, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.11, i64 0, i64 0), i32 %240)
  %242 = load i8, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @test_wcscpy_s.szDestShort, i64 0, i64 0), align 1
  %243 = sext i8 %242 to i32
  %244 = icmp eq i32 %243, 49
  br i1 %244, label %245, label %257

245:                                              ; preds = %201
  %246 = load i8, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @test_wcscpy_s.szDestShort, i64 0, i64 1), align 1
  %247 = sext i8 %246 to i32
  %248 = icmp eq i32 %247, 49
  br i1 %248, label %249, label %257

249:                                              ; preds = %245
  %250 = load i8, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @test_wcscpy_s.szDestShort, i64 0, i64 2), align 1
  %251 = sext i8 %250 to i32
  %252 = icmp eq i32 %251, 49
  br i1 %252, label %253, label %257

253:                                              ; preds = %249
  %254 = load i8, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @test_wcscpy_s.szDestShort, i64 0, i64 3), align 1
  %255 = sext i8 %254 to i32
  %256 = icmp eq i32 %255, 49
  br label %257

257:                                              ; preds = %253, %249, %245, %201
  %258 = phi i1 [ false, %249 ], [ false, %245 ], [ false, %201 ], [ %256, %253 ]
  %259 = zext i1 %258 to i32
  %260 = call i32 @wine_dbgstr_w(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @test_wcscpy_s.szDestShort, i64 0, i64 0))
  %261 = call i32 (i32, i8*, ...) @ok(i32 %259, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.16, i64 0, i64 0), i32 %260)
  ret void
}

declare dso_local i32 @p_wcscpy_s(i8*, i32, i8*) #1

declare dso_local i32 @ok(i32, i8*, ...) #1

declare dso_local i64 @lstrcmpW(i8*, i8*) #1

declare dso_local i32 @p_wcsncpy_s(i8*, i32, i8*, i32) #1

declare dso_local i32 @ARRAY_SIZE(i8*) #1

declare dso_local i32 @memcmp(i8*, i8*, i32) #1

declare dso_local i32 @wine_dbgstr_w(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
