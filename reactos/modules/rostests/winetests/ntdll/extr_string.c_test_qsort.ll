; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/ntdll/extr_string.c_test_qsort.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/ntdll/extr_string.c_test_qsort.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@__const.test_qsort.arr = private unnamed_addr constant [5 x i32] [i32 23, i32 42, i32 8, i32 4, i32 16], align 16
@__const.test_qsort.carr = private unnamed_addr constant [5 x i8] c"*\17\04\08\10", align 1
@.str = private unnamed_addr constant [6 x i8] c"Hello\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"Wine\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"World\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"!\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"Hopefully\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"Sorted\00", align 1
@.str.6 = private unnamed_addr constant [2 x i8] c".\00", align 1
@__const.test_qsort.strarr = private unnamed_addr constant [7 x i8*] [i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i32 0, i32 0)], align 16
@intcomparefunc = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [37 x i8] c"badly sorted, nmemb=0, arr[0] is %d\0A\00", align 1
@.str.8 = private unnamed_addr constant [37 x i8] c"badly sorted, nmemb=0, arr[1] is %d\0A\00", align 1
@.str.9 = private unnamed_addr constant [37 x i8] c"badly sorted, nmemb=0, arr[2] is %d\0A\00", align 1
@.str.10 = private unnamed_addr constant [37 x i8] c"badly sorted, nmemb=0, arr[3] is %d\0A\00", align 1
@.str.11 = private unnamed_addr constant [37 x i8] c"badly sorted, nmemb=0, arr[4] is %d\0A\00", align 1
@.str.12 = private unnamed_addr constant [37 x i8] c"badly sorted, nmemb=1, arr[0] is %d\0A\00", align 1
@.str.13 = private unnamed_addr constant [37 x i8] c"badly sorted, nmemb=1, arr[1] is %d\0A\00", align 1
@.str.14 = private unnamed_addr constant [37 x i8] c"badly sorted, nmemb=1, arr[2] is %d\0A\00", align 1
@.str.15 = private unnamed_addr constant [37 x i8] c"badly sorted, nmemb=1, arr[3] is %d\0A\00", align 1
@.str.16 = private unnamed_addr constant [37 x i8] c"badly sorted, nmemb=1, arr[4] is %d\0A\00", align 1
@.str.17 = private unnamed_addr constant [36 x i8] c"badly sorted, size=0, arr[0] is %d\0A\00", align 1
@.str.18 = private unnamed_addr constant [36 x i8] c"badly sorted, size=0, arr[1] is %d\0A\00", align 1
@.str.19 = private unnamed_addr constant [36 x i8] c"badly sorted, size=0, arr[2] is %d\0A\00", align 1
@.str.20 = private unnamed_addr constant [36 x i8] c"badly sorted, size=0, arr[3] is %d\0A\00", align 1
@.str.21 = private unnamed_addr constant [36 x i8] c"badly sorted, size=0, arr[4] is %d\0A\00", align 1
@.str.22 = private unnamed_addr constant [28 x i8] c"badly sorted, arr[0] is %d\0A\00", align 1
@.str.23 = private unnamed_addr constant [28 x i8] c"badly sorted, arr[1] is %d\0A\00", align 1
@.str.24 = private unnamed_addr constant [28 x i8] c"badly sorted, arr[2] is %d\0A\00", align 1
@.str.25 = private unnamed_addr constant [28 x i8] c"badly sorted, arr[3] is %d\0A\00", align 1
@.str.26 = private unnamed_addr constant [28 x i8] c"badly sorted, arr[4] is %d\0A\00", align 1
@charcomparefunc = common dso_local global i32 0, align 4
@.str.27 = private unnamed_addr constant [29 x i8] c"badly sorted, carr[0] is %d\0A\00", align 1
@.str.28 = private unnamed_addr constant [29 x i8] c"badly sorted, carr[1] is %d\0A\00", align 1
@.str.29 = private unnamed_addr constant [29 x i8] c"badly sorted, carr[2] is %d\0A\00", align 1
@.str.30 = private unnamed_addr constant [29 x i8] c"badly sorted, carr[3] is %d\0A\00", align 1
@.str.31 = private unnamed_addr constant [29 x i8] c"badly sorted, carr[4] is %d\0A\00", align 1
@strcomparefunc = common dso_local global i32 0, align 4
@.str.32 = private unnamed_addr constant [31 x i8] c"badly sorted, strarr[0] is %s\0A\00", align 1
@.str.33 = private unnamed_addr constant [31 x i8] c"badly sorted, strarr[1] is %s\0A\00", align 1
@.str.34 = private unnamed_addr constant [31 x i8] c"badly sorted, strarr[2] is %s\0A\00", align 1
@.str.35 = private unnamed_addr constant [31 x i8] c"badly sorted, strarr[3] is %s\0A\00", align 1
@.str.36 = private unnamed_addr constant [31 x i8] c"badly sorted, strarr[4] is %s\0A\00", align 1
@.str.37 = private unnamed_addr constant [31 x i8] c"badly sorted, strarr[5] is %s\0A\00", align 1
@.str.38 = private unnamed_addr constant [31 x i8] c"badly sorted, strarr[6] is %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_qsort to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_qsort() #0 {
  %1 = alloca [5 x i32], align 16
  %2 = alloca [5 x i8], align 1
  %3 = alloca [7 x i8*], align 16
  %4 = bitcast [5 x i32]* %1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %4, i8* align 16 bitcast ([5 x i32]* @__const.test_qsort.arr to i8*), i64 20, i1 false)
  %5 = bitcast [5 x i8]* %2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %5, i8* align 1 getelementptr inbounds ([5 x i8], [5 x i8]* @__const.test_qsort.carr, i32 0, i32 0), i64 5, i1 false)
  %6 = bitcast [7 x i8*]* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %6, i8* align 16 bitcast ([7 x i8*]* @__const.test_qsort.strarr to i8*), i64 56, i1 false)
  %7 = getelementptr inbounds [5 x i32], [5 x i32]* %1, i64 0, i64 0
  %8 = bitcast i32* %7 to i8*
  %9 = load i32, i32* @intcomparefunc, align 4
  %10 = call i32 @p_qsort(i8* %8, i32 0, i32 4, i32 %9)
  %11 = getelementptr inbounds [5 x i32], [5 x i32]* %1, i64 0, i64 0
  %12 = load i32, i32* %11, align 16
  %13 = icmp eq i32 %12, 23
  %14 = zext i1 %13 to i32
  %15 = getelementptr inbounds [5 x i32], [5 x i32]* %1, i64 0, i64 0
  %16 = load i32, i32* %15, align 16
  %17 = call i32 (i32, i8*, ...) @ok(i32 %14, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.7, i64 0, i64 0), i32 %16)
  %18 = getelementptr inbounds [5 x i32], [5 x i32]* %1, i64 0, i64 1
  %19 = load i32, i32* %18, align 4
  %20 = icmp eq i32 %19, 42
  %21 = zext i1 %20 to i32
  %22 = getelementptr inbounds [5 x i32], [5 x i32]* %1, i64 0, i64 1
  %23 = load i32, i32* %22, align 4
  %24 = call i32 (i32, i8*, ...) @ok(i32 %21, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.8, i64 0, i64 0), i32 %23)
  %25 = getelementptr inbounds [5 x i32], [5 x i32]* %1, i64 0, i64 2
  %26 = load i32, i32* %25, align 8
  %27 = icmp eq i32 %26, 8
  %28 = zext i1 %27 to i32
  %29 = getelementptr inbounds [5 x i32], [5 x i32]* %1, i64 0, i64 2
  %30 = load i32, i32* %29, align 8
  %31 = call i32 (i32, i8*, ...) @ok(i32 %28, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.9, i64 0, i64 0), i32 %30)
  %32 = getelementptr inbounds [5 x i32], [5 x i32]* %1, i64 0, i64 3
  %33 = load i32, i32* %32, align 4
  %34 = icmp eq i32 %33, 4
  %35 = zext i1 %34 to i32
  %36 = getelementptr inbounds [5 x i32], [5 x i32]* %1, i64 0, i64 3
  %37 = load i32, i32* %36, align 4
  %38 = call i32 (i32, i8*, ...) @ok(i32 %35, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.10, i64 0, i64 0), i32 %37)
  %39 = getelementptr inbounds [5 x i32], [5 x i32]* %1, i64 0, i64 4
  %40 = load i32, i32* %39, align 16
  %41 = icmp eq i32 %40, 16
  %42 = zext i1 %41 to i32
  %43 = getelementptr inbounds [5 x i32], [5 x i32]* %1, i64 0, i64 4
  %44 = load i32, i32* %43, align 16
  %45 = call i32 (i32, i8*, ...) @ok(i32 %42, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.11, i64 0, i64 0), i32 %44)
  %46 = getelementptr inbounds [5 x i32], [5 x i32]* %1, i64 0, i64 0
  %47 = bitcast i32* %46 to i8*
  %48 = load i32, i32* @intcomparefunc, align 4
  %49 = call i32 @p_qsort(i8* %47, i32 1, i32 4, i32 %48)
  %50 = getelementptr inbounds [5 x i32], [5 x i32]* %1, i64 0, i64 0
  %51 = load i32, i32* %50, align 16
  %52 = icmp eq i32 %51, 23
  %53 = zext i1 %52 to i32
  %54 = getelementptr inbounds [5 x i32], [5 x i32]* %1, i64 0, i64 0
  %55 = load i32, i32* %54, align 16
  %56 = call i32 (i32, i8*, ...) @ok(i32 %53, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.12, i64 0, i64 0), i32 %55)
  %57 = getelementptr inbounds [5 x i32], [5 x i32]* %1, i64 0, i64 1
  %58 = load i32, i32* %57, align 4
  %59 = icmp eq i32 %58, 42
  %60 = zext i1 %59 to i32
  %61 = getelementptr inbounds [5 x i32], [5 x i32]* %1, i64 0, i64 1
  %62 = load i32, i32* %61, align 4
  %63 = call i32 (i32, i8*, ...) @ok(i32 %60, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.13, i64 0, i64 0), i32 %62)
  %64 = getelementptr inbounds [5 x i32], [5 x i32]* %1, i64 0, i64 2
  %65 = load i32, i32* %64, align 8
  %66 = icmp eq i32 %65, 8
  %67 = zext i1 %66 to i32
  %68 = getelementptr inbounds [5 x i32], [5 x i32]* %1, i64 0, i64 2
  %69 = load i32, i32* %68, align 8
  %70 = call i32 (i32, i8*, ...) @ok(i32 %67, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.14, i64 0, i64 0), i32 %69)
  %71 = getelementptr inbounds [5 x i32], [5 x i32]* %1, i64 0, i64 3
  %72 = load i32, i32* %71, align 4
  %73 = icmp eq i32 %72, 4
  %74 = zext i1 %73 to i32
  %75 = getelementptr inbounds [5 x i32], [5 x i32]* %1, i64 0, i64 3
  %76 = load i32, i32* %75, align 4
  %77 = call i32 (i32, i8*, ...) @ok(i32 %74, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.15, i64 0, i64 0), i32 %76)
  %78 = getelementptr inbounds [5 x i32], [5 x i32]* %1, i64 0, i64 4
  %79 = load i32, i32* %78, align 16
  %80 = icmp eq i32 %79, 16
  %81 = zext i1 %80 to i32
  %82 = getelementptr inbounds [5 x i32], [5 x i32]* %1, i64 0, i64 4
  %83 = load i32, i32* %82, align 16
  %84 = call i32 (i32, i8*, ...) @ok(i32 %81, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.16, i64 0, i64 0), i32 %83)
  %85 = getelementptr inbounds [5 x i32], [5 x i32]* %1, i64 0, i64 0
  %86 = bitcast i32* %85 to i8*
  %87 = load i32, i32* @intcomparefunc, align 4
  %88 = call i32 @p_qsort(i8* %86, i32 5, i32 0, i32 %87)
  %89 = getelementptr inbounds [5 x i32], [5 x i32]* %1, i64 0, i64 0
  %90 = load i32, i32* %89, align 16
  %91 = icmp eq i32 %90, 23
  %92 = zext i1 %91 to i32
  %93 = getelementptr inbounds [5 x i32], [5 x i32]* %1, i64 0, i64 0
  %94 = load i32, i32* %93, align 16
  %95 = call i32 (i32, i8*, ...) @ok(i32 %92, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.17, i64 0, i64 0), i32 %94)
  %96 = getelementptr inbounds [5 x i32], [5 x i32]* %1, i64 0, i64 1
  %97 = load i32, i32* %96, align 4
  %98 = icmp eq i32 %97, 42
  %99 = zext i1 %98 to i32
  %100 = getelementptr inbounds [5 x i32], [5 x i32]* %1, i64 0, i64 1
  %101 = load i32, i32* %100, align 4
  %102 = call i32 (i32, i8*, ...) @ok(i32 %99, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.18, i64 0, i64 0), i32 %101)
  %103 = getelementptr inbounds [5 x i32], [5 x i32]* %1, i64 0, i64 2
  %104 = load i32, i32* %103, align 8
  %105 = icmp eq i32 %104, 8
  %106 = zext i1 %105 to i32
  %107 = getelementptr inbounds [5 x i32], [5 x i32]* %1, i64 0, i64 2
  %108 = load i32, i32* %107, align 8
  %109 = call i32 (i32, i8*, ...) @ok(i32 %106, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.19, i64 0, i64 0), i32 %108)
  %110 = getelementptr inbounds [5 x i32], [5 x i32]* %1, i64 0, i64 3
  %111 = load i32, i32* %110, align 4
  %112 = icmp eq i32 %111, 4
  %113 = zext i1 %112 to i32
  %114 = getelementptr inbounds [5 x i32], [5 x i32]* %1, i64 0, i64 3
  %115 = load i32, i32* %114, align 4
  %116 = call i32 (i32, i8*, ...) @ok(i32 %113, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.20, i64 0, i64 0), i32 %115)
  %117 = getelementptr inbounds [5 x i32], [5 x i32]* %1, i64 0, i64 4
  %118 = load i32, i32* %117, align 16
  %119 = icmp eq i32 %118, 16
  %120 = zext i1 %119 to i32
  %121 = getelementptr inbounds [5 x i32], [5 x i32]* %1, i64 0, i64 4
  %122 = load i32, i32* %121, align 16
  %123 = call i32 (i32, i8*, ...) @ok(i32 %120, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.21, i64 0, i64 0), i32 %122)
  %124 = getelementptr inbounds [5 x i32], [5 x i32]* %1, i64 0, i64 0
  %125 = bitcast i32* %124 to i8*
  %126 = load i32, i32* @intcomparefunc, align 4
  %127 = call i32 @p_qsort(i8* %125, i32 5, i32 4, i32 %126)
  %128 = getelementptr inbounds [5 x i32], [5 x i32]* %1, i64 0, i64 0
  %129 = load i32, i32* %128, align 16
  %130 = icmp eq i32 %129, 4
  %131 = zext i1 %130 to i32
  %132 = getelementptr inbounds [5 x i32], [5 x i32]* %1, i64 0, i64 0
  %133 = load i32, i32* %132, align 16
  %134 = call i32 (i32, i8*, ...) @ok(i32 %131, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.22, i64 0, i64 0), i32 %133)
  %135 = getelementptr inbounds [5 x i32], [5 x i32]* %1, i64 0, i64 1
  %136 = load i32, i32* %135, align 4
  %137 = icmp eq i32 %136, 8
  %138 = zext i1 %137 to i32
  %139 = getelementptr inbounds [5 x i32], [5 x i32]* %1, i64 0, i64 1
  %140 = load i32, i32* %139, align 4
  %141 = call i32 (i32, i8*, ...) @ok(i32 %138, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.23, i64 0, i64 0), i32 %140)
  %142 = getelementptr inbounds [5 x i32], [5 x i32]* %1, i64 0, i64 2
  %143 = load i32, i32* %142, align 8
  %144 = icmp eq i32 %143, 16
  %145 = zext i1 %144 to i32
  %146 = getelementptr inbounds [5 x i32], [5 x i32]* %1, i64 0, i64 2
  %147 = load i32, i32* %146, align 8
  %148 = call i32 (i32, i8*, ...) @ok(i32 %145, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.24, i64 0, i64 0), i32 %147)
  %149 = getelementptr inbounds [5 x i32], [5 x i32]* %1, i64 0, i64 3
  %150 = load i32, i32* %149, align 4
  %151 = icmp eq i32 %150, 23
  %152 = zext i1 %151 to i32
  %153 = getelementptr inbounds [5 x i32], [5 x i32]* %1, i64 0, i64 3
  %154 = load i32, i32* %153, align 4
  %155 = call i32 (i32, i8*, ...) @ok(i32 %152, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.25, i64 0, i64 0), i32 %154)
  %156 = getelementptr inbounds [5 x i32], [5 x i32]* %1, i64 0, i64 4
  %157 = load i32, i32* %156, align 16
  %158 = icmp eq i32 %157, 42
  %159 = zext i1 %158 to i32
  %160 = getelementptr inbounds [5 x i32], [5 x i32]* %1, i64 0, i64 4
  %161 = load i32, i32* %160, align 16
  %162 = call i32 (i32, i8*, ...) @ok(i32 %159, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.26, i64 0, i64 0), i32 %161)
  %163 = getelementptr inbounds [5 x i8], [5 x i8]* %2, i64 0, i64 0
  %164 = load i32, i32* @charcomparefunc, align 4
  %165 = call i32 @p_qsort(i8* %163, i32 5, i32 1, i32 %164)
  %166 = getelementptr inbounds [5 x i8], [5 x i8]* %2, i64 0, i64 0
  %167 = load i8, i8* %166, align 1
  %168 = sext i8 %167 to i32
  %169 = icmp eq i32 %168, 4
  %170 = zext i1 %169 to i32
  %171 = getelementptr inbounds [5 x i8], [5 x i8]* %2, i64 0, i64 0
  %172 = load i8, i8* %171, align 1
  %173 = sext i8 %172 to i32
  %174 = call i32 (i32, i8*, ...) @ok(i32 %170, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.27, i64 0, i64 0), i32 %173)
  %175 = getelementptr inbounds [5 x i8], [5 x i8]* %2, i64 0, i64 1
  %176 = load i8, i8* %175, align 1
  %177 = sext i8 %176 to i32
  %178 = icmp eq i32 %177, 8
  %179 = zext i1 %178 to i32
  %180 = getelementptr inbounds [5 x i8], [5 x i8]* %2, i64 0, i64 1
  %181 = load i8, i8* %180, align 1
  %182 = sext i8 %181 to i32
  %183 = call i32 (i32, i8*, ...) @ok(i32 %179, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.28, i64 0, i64 0), i32 %182)
  %184 = getelementptr inbounds [5 x i8], [5 x i8]* %2, i64 0, i64 2
  %185 = load i8, i8* %184, align 1
  %186 = sext i8 %185 to i32
  %187 = icmp eq i32 %186, 16
  %188 = zext i1 %187 to i32
  %189 = getelementptr inbounds [5 x i8], [5 x i8]* %2, i64 0, i64 2
  %190 = load i8, i8* %189, align 1
  %191 = sext i8 %190 to i32
  %192 = call i32 (i32, i8*, ...) @ok(i32 %188, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.29, i64 0, i64 0), i32 %191)
  %193 = getelementptr inbounds [5 x i8], [5 x i8]* %2, i64 0, i64 3
  %194 = load i8, i8* %193, align 1
  %195 = sext i8 %194 to i32
  %196 = icmp eq i32 %195, 23
  %197 = zext i1 %196 to i32
  %198 = getelementptr inbounds [5 x i8], [5 x i8]* %2, i64 0, i64 3
  %199 = load i8, i8* %198, align 1
  %200 = sext i8 %199 to i32
  %201 = call i32 (i32, i8*, ...) @ok(i32 %197, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.30, i64 0, i64 0), i32 %200)
  %202 = getelementptr inbounds [5 x i8], [5 x i8]* %2, i64 0, i64 4
  %203 = load i8, i8* %202, align 1
  %204 = sext i8 %203 to i32
  %205 = icmp eq i32 %204, 42
  %206 = zext i1 %205 to i32
  %207 = getelementptr inbounds [5 x i8], [5 x i8]* %2, i64 0, i64 4
  %208 = load i8, i8* %207, align 1
  %209 = sext i8 %208 to i32
  %210 = call i32 (i32, i8*, ...) @ok(i32 %206, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.31, i64 0, i64 0), i32 %209)
  %211 = getelementptr inbounds [7 x i8*], [7 x i8*]* %3, i64 0, i64 0
  %212 = bitcast i8** %211 to i8*
  %213 = load i32, i32* @strcomparefunc, align 4
  %214 = call i32 @p_qsort(i8* %212, i32 7, i32 8, i32 %213)
  %215 = getelementptr inbounds [7 x i8*], [7 x i8*]* %3, i64 0, i64 0
  %216 = load i8*, i8** %215, align 16
  %217 = call i32 @strcmp(i8* %216, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  %218 = icmp ne i32 %217, 0
  %219 = xor i1 %218, true
  %220 = zext i1 %219 to i32
  %221 = getelementptr inbounds [7 x i8*], [7 x i8*]* %3, i64 0, i64 0
  %222 = load i8*, i8** %221, align 16
  %223 = call i32 (i32, i8*, ...) @ok(i32 %220, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.32, i64 0, i64 0), i8* %222)
  %224 = getelementptr inbounds [7 x i8*], [7 x i8*]* %3, i64 0, i64 1
  %225 = load i8*, i8** %224, align 8
  %226 = call i32 @strcmp(i8* %225, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0))
  %227 = icmp ne i32 %226, 0
  %228 = xor i1 %227, true
  %229 = zext i1 %228 to i32
  %230 = getelementptr inbounds [7 x i8*], [7 x i8*]* %3, i64 0, i64 1
  %231 = load i8*, i8** %230, align 8
  %232 = call i32 (i32, i8*, ...) @ok(i32 %229, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.33, i64 0, i64 0), i8* %231)
  %233 = getelementptr inbounds [7 x i8*], [7 x i8*]* %3, i64 0, i64 2
  %234 = load i8*, i8** %233, align 16
  %235 = call i32 @strcmp(i8* %234, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %236 = icmp ne i32 %235, 0
  %237 = xor i1 %236, true
  %238 = zext i1 %237 to i32
  %239 = getelementptr inbounds [7 x i8*], [7 x i8*]* %3, i64 0, i64 2
  %240 = load i8*, i8** %239, align 16
  %241 = call i32 (i32, i8*, ...) @ok(i32 %238, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.34, i64 0, i64 0), i8* %240)
  %242 = getelementptr inbounds [7 x i8*], [7 x i8*]* %3, i64 0, i64 3
  %243 = load i8*, i8** %242, align 8
  %244 = call i32 @strcmp(i8* %243, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0))
  %245 = icmp ne i32 %244, 0
  %246 = xor i1 %245, true
  %247 = zext i1 %246 to i32
  %248 = getelementptr inbounds [7 x i8*], [7 x i8*]* %3, i64 0, i64 3
  %249 = load i8*, i8** %248, align 8
  %250 = call i32 (i32, i8*, ...) @ok(i32 %247, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.35, i64 0, i64 0), i8* %249)
  %251 = getelementptr inbounds [7 x i8*], [7 x i8*]* %3, i64 0, i64 4
  %252 = load i8*, i8** %251, align 16
  %253 = call i32 @strcmp(i8* %252, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0))
  %254 = icmp ne i32 %253, 0
  %255 = xor i1 %254, true
  %256 = zext i1 %255 to i32
  %257 = getelementptr inbounds [7 x i8*], [7 x i8*]* %3, i64 0, i64 4
  %258 = load i8*, i8** %257, align 16
  %259 = call i32 (i32, i8*, ...) @ok(i32 %256, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.36, i64 0, i64 0), i8* %258)
  %260 = getelementptr inbounds [7 x i8*], [7 x i8*]* %3, i64 0, i64 5
  %261 = load i8*, i8** %260, align 8
  %262 = call i32 @strcmp(i8* %261, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %263 = icmp ne i32 %262, 0
  %264 = xor i1 %263, true
  %265 = zext i1 %264 to i32
  %266 = getelementptr inbounds [7 x i8*], [7 x i8*]* %3, i64 0, i64 5
  %267 = load i8*, i8** %266, align 8
  %268 = call i32 (i32, i8*, ...) @ok(i32 %265, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.37, i64 0, i64 0), i8* %267)
  %269 = getelementptr inbounds [7 x i8*], [7 x i8*]* %3, i64 0, i64 6
  %270 = load i8*, i8** %269, align 16
  %271 = call i32 @strcmp(i8* %270, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0))
  %272 = icmp ne i32 %271, 0
  %273 = xor i1 %272, true
  %274 = zext i1 %273 to i32
  %275 = getelementptr inbounds [7 x i8*], [7 x i8*]* %3, i64 0, i64 6
  %276 = load i8*, i8** %275, align 16
  %277 = call i32 (i32, i8*, ...) @ok(i32 %274, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.38, i64 0, i64 0), i8* %276)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @p_qsort(i8*, i32, i32, i32) #2

declare dso_local i32 @ok(i32, i8*, ...) #2

declare dso_local i32 @strcmp(i8*, i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
