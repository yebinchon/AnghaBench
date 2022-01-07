; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/oleaut32/extr_vartype.c_test_VarDateFromStr.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/oleaut32/extr_vartype.c_test_VarDateFromStr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i64, i64, i64 }

@__const.test_VarDateFromStr.with_ideographic_spaceW = private unnamed_addr constant [18 x i8] c"6/30/2011\001:20:34\00", align 16
@LANG_ENGLISH = common dso_local global i32 0, align 4
@SUBLANG_ENGLISH_US = common dso_local global i32 0, align 4
@SORT_DEFAULT = common dso_local global i32 0, align 4
@EXPECT_MISMATCH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"0.0\00", align 1
@S_OK = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [5 x i8] c"1 am\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"0.1\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"0.40\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"2.5\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"0:1\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"0:20\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"0:40\00", align 1
@.str.8 = private unnamed_addr constant [4 x i8] c"3:5\00", align 1
@.str.9 = private unnamed_addr constant [9 x i8] c"00:00 AM\00", align 1
@.str.10 = private unnamed_addr constant [8 x i8] c"00:00 a\00", align 1
@.str.11 = private unnamed_addr constant [9 x i8] c"12:59 AM\00", align 1
@.str.12 = private unnamed_addr constant [8 x i8] c"12:59 A\00", align 1
@.str.13 = private unnamed_addr constant [9 x i8] c"00:00 pm\00", align 1
@.str.14 = private unnamed_addr constant [8 x i8] c"00:00 p\00", align 1
@.str.15 = private unnamed_addr constant [9 x i8] c"12:59 pm\00", align 1
@.str.16 = private unnamed_addr constant [8 x i8] c"12:59 p\00", align 1
@.str.17 = private unnamed_addr constant [9 x i8] c"13:00 AM\00", align 1
@.str.18 = private unnamed_addr constant [9 x i8] c"13:00 PM\00", align 1
@.str.19 = private unnamed_addr constant [4 x i8] c"1 2\00", align 1
@.str.20 = private unnamed_addr constant [4 x i8] c"2 1\00", align 1
@.str.21 = private unnamed_addr constant [5 x i8] c"14 1\00", align 1
@.str.22 = private unnamed_addr constant [5 x i8] c"1 14\00", align 1
@.str.23 = private unnamed_addr constant [5 x i8] c"30 2\00", align 1
@.str.24 = private unnamed_addr constant [5 x i8] c"2 30\00", align 1
@.str.25 = private unnamed_addr constant [6 x i8] c"32 49\00", align 1
@.str.26 = private unnamed_addr constant [5 x i8] c"0 49\00", align 1
@.str.27 = private unnamed_addr constant [6 x i8] c"Jan 2\00", align 1
@.str.28 = private unnamed_addr constant [6 x i8] c"2 Jan\00", align 1
@.str.29 = private unnamed_addr constant [7 x i8] c"Jan 35\00", align 1
@.str.30 = private unnamed_addr constant [7 x i8] c"35 Jan\00", align 1
@.str.31 = private unnamed_addr constant [7 x i8] c"Jan-35\00", align 1
@.str.32 = private unnamed_addr constant [7 x i8] c"35-Jan\00", align 1
@.str.33 = private unnamed_addr constant [7 x i8] c"Jan/35\00", align 1
@.str.34 = private unnamed_addr constant [7 x i8] c"35/Jan\00", align 1
@.str.35 = private unnamed_addr constant [6 x i8] c"0.1.0\00", align 1
@.str.36 = private unnamed_addr constant [6 x i8] c"1.5.2\00", align 1
@.str.37 = private unnamed_addr constant [6 x i8] c"1 2 3\00", align 1
@.str.38 = private unnamed_addr constant [7 x i8] c"14 2 3\00", align 1
@.str.39 = private unnamed_addr constant [7 x i8] c"2 14 3\00", align 1
@.str.40 = private unnamed_addr constant [7 x i8] c"2 3 14\00", align 1
@.str.41 = private unnamed_addr constant [7 x i8] c"32 2 3\00", align 1
@.str.42 = private unnamed_addr constant [7 x i8] c"2 3 32\00", align 1
@.str.43 = private unnamed_addr constant [7 x i8] c"1 2 29\00", align 1
@.str.44 = private unnamed_addr constant [7 x i8] c"1 2 30\00", align 1
@.str.45 = private unnamed_addr constant [7 x i8] c"1 2 31\00", align 1
@.str.46 = private unnamed_addr constant [9 x i8] c"3 am 1 2\00", align 1
@.str.47 = private unnamed_addr constant [9 x i8] c"1 2 3 am\00", align 1
@.str.48 = private unnamed_addr constant [8 x i8] c"1.2 3 4\00", align 1
@.str.49 = private unnamed_addr constant [8 x i8] c"3 4 1.2\00", align 1
@.str.50 = private unnamed_addr constant [10 x i8] c"1.2.3 4 5\00", align 1
@.str.51 = private unnamed_addr constant [10 x i8] c"1.2 3 4 5\00", align 1
@.str.52 = private unnamed_addr constant [10 x i8] c"1 2 3 4.5\00", align 1
@.str.53 = private unnamed_addr constant [12 x i8] c"1.2.3 4 5 6\00", align 1
@.str.54 = private unnamed_addr constant [12 x i8] c"1 2 3 4.5.6\00", align 1
@BadDateStrings = common dso_local global i8** null, align 8
@.str.55 = private unnamed_addr constant [16 x i8] c"2 January, 1970\00", align 1
@.str.56 = private unnamed_addr constant [15 x i8] c"2 January 1970\00", align 1
@.str.57 = private unnamed_addr constant [11 x i8] c"2 Jan 1970\00", align 1
@.str.58 = private unnamed_addr constant [11 x i8] c"2/Jan/1970\00", align 1
@.str.59 = private unnamed_addr constant [11 x i8] c"2-Jan-1970\00", align 1
@.str.60 = private unnamed_addr constant [9 x i8] c"1 2 1970\00", align 1
@.str.61 = private unnamed_addr constant [9 x i8] c"1/2/1970\00", align 1
@.str.62 = private unnamed_addr constant [9 x i8] c"1-2-1970\00", align 1
@.str.63 = private unnamed_addr constant [10 x i8] c"13-1-1970\00", align 1
@.str.64 = private unnamed_addr constant [10 x i8] c"1970-1-13\00", align 1
@.str.65 = private unnamed_addr constant [19 x i8] c"6/30/2011 01:20:34\00", align 1
@.str.66 = private unnamed_addr constant [22 x i8] c"6/30/2011 01:20:34 AM\00", align 1
@.str.67 = private unnamed_addr constant [22 x i8] c"6/30/2011 01:20:34 PM\00", align 1
@.str.68 = private unnamed_addr constant [20 x i8] c"2013-05-14 02:04:12\00", align 1
@.str.69 = private unnamed_addr constant [30 x i8] c"2013-05-14 02:04:12.017000000\00", align 1
@LOCALE_NOUSEROVERRIDE = common dso_local global i32 0, align 4
@.str.70 = private unnamed_addr constant [11 x i8] c"02.01.1970\00", align 1
@.str.71 = private unnamed_addr constant [20 x i8] c"02.01.1970 00:00:00\00", align 1
@LANG_GERMAN = common dso_local global i32 0, align 4
@SUBLANG_GERMAN = common dso_local global i32 0, align 4
@.str.72 = private unnamed_addr constant [11 x i8] c"02.13.1970\00", align 1
@.str.73 = private unnamed_addr constant [11 x i8] c"02-13-1970\00", align 1
@.str.74 = private unnamed_addr constant [11 x i8] c"2020-01-11\00", align 1
@.str.75 = private unnamed_addr constant [11 x i8] c"2173-10-14\00", align 1
@LANG_SPANISH = common dso_local global i32 0, align 4
@SUBLANG_SPANISH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_VarDateFromStr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_VarDateFromStr() #0 {
  %1 = alloca i32, align 4
  %2 = alloca double, align 8
  %3 = alloca double, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.TYPE_3__, align 8
  %6 = alloca [128 x i8], align 16
  %7 = alloca i64, align 8
  %8 = alloca [18 x i8], align 16
  %9 = bitcast [18 x i8]* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %9, i8* align 16 getelementptr inbounds ([18 x i8], [18 x i8]* @__const.test_VarDateFromStr.with_ideographic_spaceW, i32 0, i32 0), i64 18, i1 false)
  %10 = load i32, i32* @LANG_ENGLISH, align 4
  %11 = load i32, i32* @SUBLANG_ENGLISH_US, align 4
  %12 = call i32 @MAKELANGID(i32 %10, i32 %11)
  %13 = load i32, i32* @SORT_DEFAULT, align 4
  %14 = call i32 @MAKELCID(i32 %12, i32 %13)
  store i32 %14, i32* %1, align 4
  %15 = call i32 @GetSystemTime(%struct.TYPE_3__* %5)
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 0
  store i64 0, i64* %16, align 8
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 1
  store i64 0, i64* %17, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 2
  store i64 0, i64* %18, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 3
  store i64 0, i64* %19, align 8
  %20 = call i32 @DFS(i8* null)
  %21 = load i32, i32* @EXPECT_MISMATCH, align 4
  %22 = call i32 @DFS(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %23 = load i64, i64* %4, align 8
  %24 = load i64, i64* @S_OK, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %28

26:                                               ; preds = %0
  %27 = call i32 @EXPECT_DBL(double 0.000000e+00)
  br label %30

28:                                               ; preds = %0
  %29 = load i32, i32* @EXPECT_MISMATCH, align 4
  br label %30

30:                                               ; preds = %28, %26
  %31 = call i32 @DFS(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %32 = call i32 @EXPECT_DBL(double 0x3FA5555555555554)
  %33 = call i32 @DFS(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0))
  %34 = call i32 @EXPECT_DBL(double 0x3F46C16C16C16C17)
  %35 = call i32 @DFS(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0))
  %36 = call i32 @EXPECT_DBL(double 0x3F9C71C71C71C71D)
  %37 = call i32 @DFS(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0))
  %38 = call i32 @EXPECT_DBL(double 0x3FB638E38E38E38E)
  %39 = call i32 @DFS(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0))
  %40 = call i32 @EXPECT_DBL(double 0x3F46C16C16C16C17)
  %41 = call i32 @DFS(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0))
  %42 = call i32 @EXPECT_DBL(double 0x3F8C71C71C71C71D)
  %43 = call i32 @DFS(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0))
  %44 = call i32 @EXPECT_DBL(double 0x3F9C71C71C71C71D)
  %45 = call i32 @DFS(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i64 0, i64 0))
  %46 = call i32 @EXPECT_DBL(double 0x3FC071C71C71C71C)
  %47 = call i32 @DFS(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.9, i64 0, i64 0))
  %48 = call i32 @EXPECT_DBL(double 0.000000e+00)
  %49 = call i32 @DFS(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.10, i64 0, i64 0))
  %50 = call i32 @EXPECT_DBL(double 0.000000e+00)
  %51 = call i32 @DFS(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.11, i64 0, i64 0))
  %52 = call i32 @EXPECT_DBL(double 0x3FA4FA4FA4FA4FA5)
  %53 = call i32 @DFS(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.12, i64 0, i64 0))
  %54 = call i32 @EXPECT_DBL(double 0x3FA4FA4FA4FA4FA5)
  %55 = call i32 @DFS(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.13, i64 0, i64 0))
  %56 = call i32 @EXPECT_DBL(double 5.000000e-01)
  %57 = call i32 @DFS(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.14, i64 0, i64 0))
  %58 = call i32 @EXPECT_DBL(double 5.000000e-01)
  %59 = call i32 @DFS(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.15, i64 0, i64 0))
  %60 = call i32 @EXPECT_DBL(double 0x3FE14FA4FA4FA4FA)
  %61 = call i32 @DFS(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.16, i64 0, i64 0))
  %62 = call i32 @EXPECT_DBL(double 0x3FE14FA4FA4FA4FA)
  %63 = call i32 @DFS(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.17, i64 0, i64 0))
  %64 = call i32 @EXPECT_DBL(double 0x3FE1555555555555)
  %65 = call i32 @DFS(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.18, i64 0, i64 0))
  %66 = call i32 @EXPECT_DBL(double 0x3FE1555555555555)
  %67 = call i32 @DFS(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.19, i64 0, i64 0))
  %68 = call i32 @MKRELDATE(i32 2, i32 1)
  %69 = load double, double* %3, align 8
  %70 = call i32 @EXPECT_DBL(double %69)
  %71 = call i32 @DFS(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.20, i64 0, i64 0))
  %72 = call i32 @MKRELDATE(i32 1, i32 2)
  %73 = load double, double* %3, align 8
  %74 = call i32 @EXPECT_DBL(double %73)
  %75 = call i32 @DFS(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.21, i64 0, i64 0))
  %76 = call i32 @MKRELDATE(i32 14, i32 1)
  %77 = load double, double* %3, align 8
  %78 = call i32 @EXPECT_DBL(double %77)
  %79 = call i32 @DFS(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.22, i64 0, i64 0))
  %80 = load double, double* %3, align 8
  %81 = call i32 @EXPECT_DBL(double %80)
  %82 = call i32 @DFS(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.23, i64 0, i64 0))
  %83 = call i32 @EXPECT_DBL(double 1.099000e+04)
  %84 = call i32 @DFS(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.24, i64 0, i64 0))
  %85 = call i32 @EXPECT_DBL(double 1.099000e+04)
  %86 = call i32 @DFS(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.25, i64 0, i64 0))
  %87 = load i32, i32* @EXPECT_MISMATCH, align 4
  %88 = call i32 @DFS(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.26, i64 0, i64 0))
  %89 = load i32, i32* @EXPECT_MISMATCH, align 4
  %90 = call i32 @DFS(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.27, i64 0, i64 0))
  %91 = call i32 @MKRELDATE(i32 2, i32 1)
  %92 = load double, double* %3, align 8
  %93 = call i32 @EXPECT_DBL(double %92)
  %94 = call i32 @DFS(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.28, i64 0, i64 0))
  %95 = load double, double* %3, align 8
  %96 = call i32 @EXPECT_DBL(double %95)
  %97 = call i32 @DFS(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.29, i64 0, i64 0))
  %98 = call i32 @EXPECT_DBL(double 1.278500e+04)
  %99 = call i32 @DFS(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.30, i64 0, i64 0))
  %100 = call i32 @EXPECT_DBL(double 1.278500e+04)
  %101 = call i32 @DFS(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.31, i64 0, i64 0))
  %102 = call i32 @EXPECT_DBL(double 1.278500e+04)
  %103 = call i32 @DFS(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.32, i64 0, i64 0))
  %104 = call i32 @EXPECT_DBL(double 1.278500e+04)
  %105 = call i32 @DFS(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.33, i64 0, i64 0))
  %106 = call i32 @EXPECT_DBL(double 1.278500e+04)
  %107 = call i32 @DFS(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.34, i64 0, i64 0))
  %108 = call i32 @EXPECT_DBL(double 1.278500e+04)
  %109 = call i32 @DFS(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.35, i64 0, i64 0))
  %110 = call i32 @EXPECT_DBL(double 0x3F46C16C16C16C17)
  %111 = call i32 @DFS(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.36, i64 0, i64 0))
  %112 = call i32 @EXPECT_DBL(double 0x3FA71F7A80308B92)
  %113 = call i32 @DFS(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.37, i64 0, i64 0))
  %114 = call i32 @EXPECT_DBL(double 3.762300e+04)
  %115 = call i32 @DFS(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.38, i64 0, i64 0))
  %116 = call i32 @EXPECT_DBL(double 4.167300e+04)
  %117 = call i32 @DFS(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.39, i64 0, i64 0))
  %118 = call i32 @EXPECT_DBL(double 3.766600e+04)
  %119 = call i32 @DFS(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.40, i64 0, i64 0))
  %120 = call i32 @EXPECT_DBL(double 4.167300e+04)
  %121 = call i32 @DFS(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.41, i64 0, i64 0))
  %122 = call i32 @EXPECT_DBL(double 1.172200e+04)
  %123 = call i32 @DFS(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.42, i64 0, i64 0))
  %124 = call i32 @EXPECT_DBL(double 1.172200e+04)
  %125 = call i32 @DFS(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.43, i64 0, i64 0))
  %126 = call i32 @EXPECT_DBL(double 4.712000e+04)
  %127 = call i32 @DFS(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.44, i64 0, i64 0))
  %128 = call i32 @EXPECT_DBL(double 1.096000e+04)
  %129 = call i32 @DFS(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.45, i64 0, i64 0))
  %130 = call i32 @EXPECT_DBL(double 1.132500e+04)
  %131 = call i32 @DFS(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.46, i64 0, i64 0))
  %132 = call i32 @MKRELDATE(i32 2, i32 1)
  %133 = load double, double* %3, align 8
  %134 = fadd double %133, 1.250000e-01
  store double %134, double* %3, align 8
  %135 = load double, double* %3, align 8
  %136 = call i32 @EXPECT_DBL(double %135)
  %137 = call i32 @DFS(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.47, i64 0, i64 0))
  %138 = load double, double* %3, align 8
  %139 = call i32 @EXPECT_DBL(double %138)
  %140 = call i32 @DFS(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.48, i64 0, i64 0))
  %141 = call i32 @MKRELDATE(i32 4, i32 3)
  %142 = load double, double* %3, align 8
  %143 = fadd double %142, 0x3FA60B60B61526B6
  store double %143, double* %3, align 8
  %144 = load double, double* %3, align 8
  %145 = call i32 @EXPECT_DBL(double %144)
  %146 = call i32 @DFS(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.49, i64 0, i64 0))
  %147 = load double, double* %3, align 8
  %148 = call i32 @EXPECT_DBL(double %147)
  %149 = call i32 @DFS(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.50, i64 0, i64 0))
  %150 = call i32 @MKRELDATE(i32 5, i32 4)
  %151 = load double, double* %3, align 8
  %152 = fadd double %151, 0x3FA60FEDCBAE6A65
  store double %152, double* %3, align 8
  %153 = load double, double* %3, align 8
  %154 = call i32 @EXPECT_DBL(double %153)
  %155 = call i32 @DFS(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.51, i64 0, i64 0))
  %156 = call i32 @EXPECT_DBL(double 0x40E2C1E160B60B61)
  %157 = call i32 @DFS(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.52, i64 0, i64 0))
  %158 = call i32 @EXPECT_DBL(double 0x40E25EE571C71C72)
  %159 = call i32 @DFS(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.53, i64 0, i64 0))
  %160 = call i32 @EXPECT_DBL(double 0x40E2F38160FEDCBB)
  %161 = call i32 @DFS(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.54, i64 0, i64 0))
  %162 = call i32 @EXPECT_DBL(double 0x40E25EE57258BF26)
  store i64 0, i64* %7, align 8
  br label %163

163:                                              ; preds = %175, %30
  %164 = load i64, i64* %7, align 8
  %165 = load i8**, i8*** @BadDateStrings, align 8
  %166 = call i64 @ARRAY_SIZE(i8** %165)
  %167 = icmp ult i64 %164, %166
  br i1 %167, label %168, label %178

168:                                              ; preds = %163
  %169 = load i8**, i8*** @BadDateStrings, align 8
  %170 = load i64, i64* %7, align 8
  %171 = getelementptr inbounds i8*, i8** %169, i64 %170
  %172 = load i8*, i8** %171, align 8
  %173 = call i32 @DFS(i8* %172)
  %174 = load i32, i32* @EXPECT_MISMATCH, align 4
  br label %175

175:                                              ; preds = %168
  %176 = load i64, i64* %7, align 8
  %177 = add i64 %176, 1
  store i64 %177, i64* %7, align 8
  br label %163

178:                                              ; preds = %163
  %179 = call i32 @DFS(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.55, i64 0, i64 0))
  %180 = call i32 @EXPECT_DBL(double 2.557000e+04)
  %181 = call i32 @DFS(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.56, i64 0, i64 0))
  %182 = call i32 @EXPECT_DBL(double 2.557000e+04)
  %183 = call i32 @DFS(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.57, i64 0, i64 0))
  %184 = call i32 @EXPECT_DBL(double 2.557000e+04)
  %185 = call i32 @DFS(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.58, i64 0, i64 0))
  %186 = call i32 @EXPECT_DBL(double 2.557000e+04)
  %187 = call i32 @DFS(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.59, i64 0, i64 0))
  %188 = call i32 @EXPECT_DBL(double 2.557000e+04)
  %189 = call i32 @DFS(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.60, i64 0, i64 0))
  %190 = call i32 @EXPECT_DBL(double 2.557000e+04)
  %191 = call i32 @DFS(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.61, i64 0, i64 0))
  %192 = call i32 @EXPECT_DBL(double 2.557000e+04)
  %193 = call i32 @DFS(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.62, i64 0, i64 0))
  %194 = call i32 @EXPECT_DBL(double 2.557000e+04)
  %195 = call i32 @DFS(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.63, i64 0, i64 0))
  %196 = call i32 @EXPECT_DBL(double 2.558100e+04)
  %197 = call i32 @DFS(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.64, i64 0, i64 0))
  %198 = call i32 @EXPECT_DBL(double 2.558100e+04)
  %199 = call i32 @DFS(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.65, i64 0, i64 0))
  %200 = call i32 @EXPECT_DBL(double 0x40E3E281CA55B66C)
  %201 = call i32 @DFS(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.66, i64 0, i64 0))
  %202 = call i32 @EXPECT_DBL(double 0x40E3E281CA55B66C)
  %203 = call i32 @DFS(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.67, i64 0, i64 0))
  %204 = call i32 @EXPECT_DBL(double 0x40E3E291CA55B66C)
  %205 = call i32 @DFS(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.68, i64 0, i64 0))
  %206 = call i32 @EXPECT_DBL(double 0x40E43802C28F5C2A)
  %207 = call i32 @DFS(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.69, i64 0, i64 0))
  %208 = load i32, i32* @EXPECT_MISMATCH, align 4
  store double 0.000000e+00, double* %2, align 8
  %209 = getelementptr inbounds [18 x i8], [18 x i8]* %8, i64 0, i64 0
  %210 = load i32, i32* %1, align 4
  %211 = load i32, i32* @LOCALE_NOUSEROVERRIDE, align 4
  %212 = call i64 @VarDateFromStr(i8* %209, i32 %210, i32 %211, double* %2)
  store i64 %212, i64* %4, align 8
  %213 = call i32 @EXPECT_DBL(double 0x40E3E281CA55B66C)
  %214 = call i32 @DFS(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.70, i64 0, i64 0))
  %215 = load i32, i32* @EXPECT_MISMATCH, align 4
  %216 = call i32 @DFS(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.71, i64 0, i64 0))
  %217 = load i32, i32* @EXPECT_MISMATCH, align 4
  %218 = load i32, i32* @LANG_GERMAN, align 4
  %219 = load i32, i32* @SUBLANG_GERMAN, align 4
  %220 = call i32 @MAKELANGID(i32 %218, i32 %219)
  %221 = load i32, i32* @SORT_DEFAULT, align 4
  %222 = call i32 @MAKELCID(i32 %220, i32 %221)
  store i32 %222, i32* %1, align 4
  %223 = call i32 @DFS(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.70, i64 0, i64 0))
  %224 = call i32 @EXPECT_DBL(double 2.557000e+04)
  %225 = call i32 @DFS(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.72, i64 0, i64 0))
  %226 = call i32 @EXPECT_DBL(double 2.561200e+04)
  %227 = call i32 @DFS(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.73, i64 0, i64 0))
  %228 = call i32 @EXPECT_DBL(double 2.561200e+04)
  %229 = call i32 @DFS(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.74, i64 0, i64 0))
  %230 = call i32 @EXPECT_DBL(double 4.384100e+04)
  %231 = call i32 @DFS(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.75, i64 0, i64 0))
  %232 = call i32 @EXPECT_DBL(double 1.000000e+05)
  %233 = call i32 @DFS(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.71, i64 0, i64 0))
  %234 = call i32 @EXPECT_DBL(double 2.557000e+04)
  %235 = load i32, i32* @LANG_SPANISH, align 4
  %236 = load i32, i32* @SUBLANG_SPANISH, align 4
  %237 = call i32 @MAKELANGID(i32 %235, i32 %236)
  %238 = load i32, i32* @SORT_DEFAULT, align 4
  %239 = call i32 @MAKELCID(i32 %237, i32 %238)
  store i32 %239, i32* %1, align 4
  %240 = call i32 @DFS(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.70, i64 0, i64 0))
  %241 = load i32, i32* @EXPECT_MISMATCH, align 4
  %242 = call i32 @DFS(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.71, i64 0, i64 0))
  %243 = load i32, i32* @EXPECT_MISMATCH, align 4
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @MAKELCID(i32, i32) #2

declare dso_local i32 @MAKELANGID(i32, i32) #2

declare dso_local i32 @GetSystemTime(%struct.TYPE_3__*) #2

declare dso_local i32 @DFS(i8*) #2

declare dso_local i32 @EXPECT_DBL(double) #2

declare dso_local i32 @MKRELDATE(i32, i32) #2

declare dso_local i64 @ARRAY_SIZE(i8**) #2

declare dso_local i64 @VarDateFromStr(i8*, i32, i32, double*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
