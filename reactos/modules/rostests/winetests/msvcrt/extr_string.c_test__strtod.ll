; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/msvcrt/extr_string.c_test__strtod.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/msvcrt/extr_string.c_test__strtod.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@__const.test__strtod.double1 = private unnamed_addr constant [5 x i8] c"12.1\00", align 1
@__const.test__strtod.double2 = private unnamed_addr constant [8 x i8] c"-13.721\00", align 1
@__const.test__strtod.double3 = private unnamed_addr constant [4 x i8] c"INF\00", align 1
@__const.test__strtod.double4 = private unnamed_addr constant [7 x i8] c".21e12\00", align 1
@__const.test__strtod.double5 = private unnamed_addr constant [10 x i8] c"214353e-3\00", align 1
@__const.test__strtod.double6 = private unnamed_addr constant [4 x i8] c"NAN\00", align 1
@__const.test__strtod.overflow = private unnamed_addr constant [22 x i8] c"1d9999999999999999999\00", align 16
@__const.test__strtod.white_chars = private unnamed_addr constant [6 x i8] c"  d10\00", align 1
@.str = private unnamed_addr constant [9 x i8] c"d = %lf\0A\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"incorrect end (%d)\0A\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"12.1d2\00", align 1
@EBADF = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [12 x i8] c"errno = %x\0A\00", align 1
@.str.4 = private unnamed_addr constant [22 x i8] c"incorrect end ptr %p\0A\00", align 1
@LC_ALL = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [7 x i8] c"Polish\00", align 1
@.str.6 = private unnamed_addr constant [29 x i8] c"system with limited locales\0A\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"12.1\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"12,1\00", align 1
@.str.9 = private unnamed_addr constant [2 x i8] c"C\00", align 1
@.str.10 = private unnamed_addr constant [4 x i8] c"0.1\00", align 1
@.str.11 = private unnamed_addr constant [5 x i8] c"-0.1\00", align 1
@.str.12 = private unnamed_addr constant [28 x i8] c"0.1281832188491894198128921\00", align 1
@.str.13 = private unnamed_addr constant [17 x i8] c"0.82181281288121\00", align 1
@.str.14 = private unnamed_addr constant [30 x i8] c"21921922352523587651128218821\00", align 1
@.str.15 = private unnamed_addr constant [8 x i8] c"0.1d238\00", align 1
@.str.16 = private unnamed_addr constant [10 x i8] c"0.1D-4736\00", align 1
@ERANGE = common dso_local global i32 0, align 4
@.str.17 = private unnamed_addr constant [7 x i8] c"-1d309\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test__strtod to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test__strtod() #0 {
  %1 = alloca [5 x i8], align 1
  %2 = alloca [8 x i8], align 1
  %3 = alloca [4 x i8], align 1
  %4 = alloca [7 x i8], align 1
  %5 = alloca [10 x i8], align 1
  %6 = alloca [4 x i8], align 1
  %7 = alloca [22 x i8], align 16
  %8 = alloca [6 x i8], align 1
  %9 = alloca i8*, align 8
  %10 = alloca double, align 8
  %11 = bitcast [5 x i8]* %1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %11, i8* align 1 getelementptr inbounds ([5 x i8], [5 x i8]* @__const.test__strtod.double1, i32 0, i32 0), i64 5, i1 false)
  %12 = bitcast [8 x i8]* %2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %12, i8* align 1 getelementptr inbounds ([8 x i8], [8 x i8]* @__const.test__strtod.double2, i32 0, i32 0), i64 8, i1 false)
  %13 = bitcast [4 x i8]* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %13, i8* align 1 getelementptr inbounds ([4 x i8], [4 x i8]* @__const.test__strtod.double3, i32 0, i32 0), i64 4, i1 false)
  %14 = bitcast [7 x i8]* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %14, i8* align 1 getelementptr inbounds ([7 x i8], [7 x i8]* @__const.test__strtod.double4, i32 0, i32 0), i64 7, i1 false)
  %15 = bitcast [10 x i8]* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %15, i8* align 1 getelementptr inbounds ([10 x i8], [10 x i8]* @__const.test__strtod.double5, i32 0, i32 0), i64 10, i1 false)
  %16 = bitcast [4 x i8]* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %16, i8* align 1 getelementptr inbounds ([4 x i8], [4 x i8]* @__const.test__strtod.double6, i32 0, i32 0), i64 4, i1 false)
  %17 = bitcast [22 x i8]* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %17, i8* align 16 getelementptr inbounds ([22 x i8], [22 x i8]* @__const.test__strtod.overflow, i32 0, i32 0), i64 22, i1 false)
  %18 = bitcast [6 x i8]* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %18, i8* align 1 getelementptr inbounds ([6 x i8], [6 x i8]* @__const.test__strtod.white_chars, i32 0, i32 0), i64 6, i1 false)
  %19 = getelementptr inbounds [5 x i8], [5 x i8]* %1, i64 0, i64 0
  %20 = call double @strtod(i8* %19, i8** %9)
  store double %20, double* %10, align 8
  %21 = load double, double* %10, align 8
  %22 = call i32 @almost_equal(double %21, x86_fp80 0xK4002C199999999999800)
  %23 = load double, double* %10, align 8
  %24 = call i32 (i32, i8*, ...) @ok(i32 %22, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), double %23)
  %25 = load i8*, i8** %9, align 8
  %26 = getelementptr inbounds [5 x i8], [5 x i8]* %1, i64 0, i64 0
  %27 = getelementptr inbounds i8, i8* %26, i64 4
  %28 = icmp eq i8* %25, %27
  %29 = zext i1 %28 to i32
  %30 = load i8*, i8** %9, align 8
  %31 = getelementptr inbounds [5 x i8], [5 x i8]* %1, i64 0, i64 0
  %32 = ptrtoint i8* %30 to i64
  %33 = ptrtoint i8* %31 to i64
  %34 = sub i64 %32, %33
  %35 = trunc i64 %34 to i32
  %36 = call i32 (i32, i8*, ...) @ok(i32 %29, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i32 %35)
  %37 = getelementptr inbounds [8 x i8], [8 x i8]* %2, i64 0, i64 0
  %38 = call double @strtod(i8* %37, i8** %9)
  store double %38, double* %10, align 8
  %39 = load double, double* %10, align 8
  %40 = call i32 @almost_equal(double %39, x86_fp80 0xKC002DB89374BC6A7F000)
  %41 = load double, double* %10, align 8
  %42 = call i32 (i32, i8*, ...) @ok(i32 %40, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), double %41)
  %43 = load i8*, i8** %9, align 8
  %44 = getelementptr inbounds [8 x i8], [8 x i8]* %2, i64 0, i64 0
  %45 = getelementptr inbounds i8, i8* %44, i64 7
  %46 = icmp eq i8* %43, %45
  %47 = zext i1 %46 to i32
  %48 = load i8*, i8** %9, align 8
  %49 = getelementptr inbounds [8 x i8], [8 x i8]* %2, i64 0, i64 0
  %50 = ptrtoint i8* %48 to i64
  %51 = ptrtoint i8* %49 to i64
  %52 = sub i64 %50, %51
  %53 = trunc i64 %52 to i32
  %54 = call i32 (i32, i8*, ...) @ok(i32 %47, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i32 %53)
  %55 = getelementptr inbounds [4 x i8], [4 x i8]* %3, i64 0, i64 0
  %56 = call double @strtod(i8* %55, i8** %9)
  store double %56, double* %10, align 8
  %57 = load double, double* %10, align 8
  %58 = call i32 @almost_equal(double %57, x86_fp80 0xK00000000000000000000)
  %59 = load double, double* %10, align 8
  %60 = call i32 (i32, i8*, ...) @ok(i32 %58, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), double %59)
  %61 = load i8*, i8** %9, align 8
  %62 = getelementptr inbounds [4 x i8], [4 x i8]* %3, i64 0, i64 0
  %63 = icmp eq i8* %61, %62
  %64 = zext i1 %63 to i32
  %65 = load i8*, i8** %9, align 8
  %66 = getelementptr inbounds [4 x i8], [4 x i8]* %3, i64 0, i64 0
  %67 = ptrtoint i8* %65 to i64
  %68 = ptrtoint i8* %66 to i64
  %69 = sub i64 %67, %68
  %70 = trunc i64 %69 to i32
  %71 = call i32 (i32, i8*, ...) @ok(i32 %64, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i32 %70)
  %72 = getelementptr inbounds [7 x i8], [7 x i8]* %4, i64 0, i64 0
  %73 = call double @strtod(i8* %72, i8** %9)
  store double %73, double* %10, align 8
  %74 = load double, double* %10, align 8
  %75 = call i32 @almost_equal(double %74, x86_fp80 0xK4024C393E6D000000000)
  %76 = load double, double* %10, align 8
  %77 = call i32 (i32, i8*, ...) @ok(i32 %75, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), double %76)
  %78 = load i8*, i8** %9, align 8
  %79 = getelementptr inbounds [7 x i8], [7 x i8]* %4, i64 0, i64 0
  %80 = getelementptr inbounds i8, i8* %79, i64 6
  %81 = icmp eq i8* %78, %80
  %82 = zext i1 %81 to i32
  %83 = load i8*, i8** %9, align 8
  %84 = getelementptr inbounds [7 x i8], [7 x i8]* %4, i64 0, i64 0
  %85 = ptrtoint i8* %83 to i64
  %86 = ptrtoint i8* %84 to i64
  %87 = sub i64 %85, %86
  %88 = trunc i64 %87 to i32
  %89 = call i32 (i32, i8*, ...) @ok(i32 %82, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i32 %88)
  %90 = getelementptr inbounds [10 x i8], [10 x i8]* %5, i64 0, i64 0
  %91 = call double @strtod(i8* %90, i8** %9)
  store double %91, double* %10, align 8
  %92 = load double, double* %10, align 8
  %93 = call i32 @almost_equal(double %92, x86_fp80 0xK4006D65A5E353F7CF000)
  %94 = load double, double* %10, align 8
  %95 = call i32 (i32, i8*, ...) @ok(i32 %93, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), double %94)
  %96 = load i8*, i8** %9, align 8
  %97 = getelementptr inbounds [10 x i8], [10 x i8]* %5, i64 0, i64 0
  %98 = getelementptr inbounds i8, i8* %97, i64 9
  %99 = icmp eq i8* %96, %98
  %100 = zext i1 %99 to i32
  %101 = load i8*, i8** %9, align 8
  %102 = getelementptr inbounds [10 x i8], [10 x i8]* %5, i64 0, i64 0
  %103 = ptrtoint i8* %101 to i64
  %104 = ptrtoint i8* %102 to i64
  %105 = sub i64 %103, %104
  %106 = trunc i64 %105 to i32
  %107 = call i32 (i32, i8*, ...) @ok(i32 %100, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i32 %106)
  %108 = getelementptr inbounds [4 x i8], [4 x i8]* %6, i64 0, i64 0
  %109 = call double @strtod(i8* %108, i8** %9)
  store double %109, double* %10, align 8
  %110 = load double, double* %10, align 8
  %111 = call i32 @almost_equal(double %110, x86_fp80 0xK00000000000000000000)
  %112 = load double, double* %10, align 8
  %113 = call i32 (i32, i8*, ...) @ok(i32 %111, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), double %112)
  %114 = load i8*, i8** %9, align 8
  %115 = getelementptr inbounds [4 x i8], [4 x i8]* %6, i64 0, i64 0
  %116 = icmp eq i8* %114, %115
  %117 = zext i1 %116 to i32
  %118 = load i8*, i8** %9, align 8
  %119 = getelementptr inbounds [4 x i8], [4 x i8]* %6, i64 0, i64 0
  %120 = ptrtoint i8* %118 to i64
  %121 = ptrtoint i8* %119 to i64
  %122 = sub i64 %120, %121
  %123 = trunc i64 %122 to i32
  %124 = call i32 (i32, i8*, ...) @ok(i32 %117, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i32 %123)
  %125 = call double @strtod(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i8** null)
  store double %125, double* %10, align 8
  %126 = load double, double* %10, align 8
  %127 = call i32 @almost_equal(double %126, x86_fp80 0xK40099740000000000000)
  %128 = load double, double* %10, align 8
  %129 = call i32 (i32, i8*, ...) @ok(i32 %127, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), double %128)
  %130 = getelementptr inbounds [6 x i8], [6 x i8]* %8, i64 0, i64 0
  %131 = call double @strtod(i8* %130, i8** %9)
  store double %131, double* %10, align 8
  %132 = load double, double* %10, align 8
  %133 = call i32 @almost_equal(double %132, x86_fp80 0xK00000000000000000000)
  %134 = load double, double* %10, align 8
  %135 = call i32 (i32, i8*, ...) @ok(i32 %133, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), double %134)
  %136 = load i8*, i8** %9, align 8
  %137 = getelementptr inbounds [6 x i8], [6 x i8]* %8, i64 0, i64 0
  %138 = icmp eq i8* %136, %137
  %139 = zext i1 %138 to i32
  %140 = load i8*, i8** %9, align 8
  %141 = getelementptr inbounds [6 x i8], [6 x i8]* %8, i64 0, i64 0
  %142 = ptrtoint i8* %140 to i64
  %143 = ptrtoint i8* %141 to i64
  %144 = sub i64 %142, %143
  %145 = trunc i64 %144 to i32
  %146 = call i32 (i32, i8*, ...) @ok(i32 %139, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i32 %145)
  %147 = load i32, i32* @EBADF, align 4
  store i32 %147, i32* @errno, align 4
  %148 = call double @strtod(i8* null, i8** null)
  store double %148, double* %10, align 8
  %149 = load double, double* %10, align 8
  %150 = call i32 @almost_equal(double %149, x86_fp80 0xK00000000000000000000)
  %151 = load double, double* %10, align 8
  %152 = call i32 (i32, i8*, ...) @ok(i32 %150, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), double %151)
  %153 = load i32, i32* @errno, align 4
  %154 = load i32, i32* @EINVAL, align 4
  %155 = icmp eq i32 %153, %154
  %156 = zext i1 %155 to i32
  %157 = load i32, i32* @errno, align 4
  %158 = call i32 (i32, i8*, ...) @ok(i32 %156, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0), i32 %157)
  %159 = load i32, i32* @EBADF, align 4
  store i32 %159, i32* @errno, align 4
  store i8* inttoptr (i64 3735928559 to i8*), i8** %9, align 8
  %160 = call double @strtod(i8* null, i8** %9)
  store double %160, double* %10, align 8
  %161 = load double, double* %10, align 8
  %162 = call i32 @almost_equal(double %161, x86_fp80 0xK00000000000000000000)
  %163 = load double, double* %10, align 8
  %164 = call i32 (i32, i8*, ...) @ok(i32 %162, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), double %163)
  %165 = load i32, i32* @errno, align 4
  %166 = load i32, i32* @EINVAL, align 4
  %167 = icmp eq i32 %165, %166
  %168 = zext i1 %167 to i32
  %169 = load i32, i32* @errno, align 4
  %170 = call i32 (i32, i8*, ...) @ok(i32 %168, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0), i32 %169)
  %171 = load i8*, i8** %9, align 8
  %172 = icmp ne i8* %171, null
  %173 = xor i1 %172, true
  %174 = zext i1 %173 to i32
  %175 = load i8*, i8** %9, align 8
  %176 = call i32 (i32, i8*, ...) @ok(i32 %174, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.4, i64 0, i64 0), i8* %175)
  %177 = load i32, i32* @EBADF, align 4
  store i32 %177, i32* @errno, align 4
  %178 = call double @p__strtod_l(i32* null, i32* null, i32* null)
  store double %178, double* %10, align 8
  %179 = load double, double* %10, align 8
  %180 = call i32 @almost_equal(double %179, x86_fp80 0xK00000000000000000000)
  %181 = load double, double* %10, align 8
  %182 = call i32 (i32, i8*, ...) @ok(i32 %180, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), double %181)
  %183 = load i32, i32* @errno, align 4
  %184 = load i32, i32* @EINVAL, align 4
  %185 = icmp eq i32 %183, %184
  %186 = zext i1 %185 to i32
  %187 = load i32, i32* @errno, align 4
  %188 = call i32 (i32, i8*, ...) @ok(i32 %186, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0), i32 %187)
  %189 = load i32, i32* @LC_ALL, align 4
  %190 = call i32 @setlocale(i32 %189, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0))
  %191 = icmp ne i32 %190, 0
  br i1 %191, label %194, label %192

192:                                              ; preds = %0
  %193 = call i32 @win_skip(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.6, i64 0, i64 0))
  br label %269

194:                                              ; preds = %0
  %195 = call double @strtod(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i8** null)
  store double %195, double* %10, align 8
  %196 = load double, double* %10, align 8
  %197 = call i32 @almost_equal(double %196, x86_fp80 0xK4002C000000000000000)
  %198 = load double, double* %10, align 8
  %199 = call i32 (i32, i8*, ...) @ok(i32 %197, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), double %198)
  %200 = call double @strtod(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0), i8** null)
  store double %200, double* %10, align 8
  %201 = load double, double* %10, align 8
  %202 = call i32 @almost_equal(double %201, x86_fp80 0xK4002C199999999999800)
  %203 = load double, double* %10, align 8
  %204 = call i32 (i32, i8*, ...) @ok(i32 %202, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), double %203)
  %205 = load i32, i32* @LC_ALL, align 4
  %206 = call i32 @setlocale(i32 %205, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9, i64 0, i64 0))
  %207 = call double @strtod(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.10, i64 0, i64 0), i8** null)
  store double %207, double* %10, align 8
  %208 = load double, double* %10, align 8
  %209 = call i32 @almost_equal(double %208, x86_fp80 0xK3FFBCCCCCCCCCCCCD000)
  %210 = load double, double* %10, align 8
  %211 = call i32 (i32, i8*, ...) @ok(i32 %209, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), double %210)
  %212 = call double @strtod(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i64 0, i64 0), i8** null)
  store double %212, double* %10, align 8
  %213 = load double, double* %10, align 8
  %214 = call i32 @almost_equal(double %213, x86_fp80 0xKBFFBCCCCCCCCCCCCD000)
  %215 = load double, double* %10, align 8
  %216 = call i32 (i32, i8*, ...) @ok(i32 %214, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), double %215)
  %217 = call double @strtod(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.12, i64 0, i64 0), i8** null)
  store double %217, double* %10, align 8
  %218 = load double, double* %10, align 8
  %219 = call i32 @almost_equal(double %218, x86_fp80 0xK3FFC8342763369C21000)
  %220 = load double, double* %10, align 8
  %221 = call i32 (i32, i8*, ...) @ok(i32 %219, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), double %220)
  %222 = call double @strtod(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.13, i64 0, i64 0), i8** null)
  store double %222, double* %10, align 8
  %223 = load double, double* %10, align 8
  %224 = call i32 @almost_equal(double %223, x86_fp80 0xK3FFED2625312C2314800)
  %225 = load double, double* %10, align 8
  %226 = call i32 (i32, i8*, ...) @ok(i32 %224, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), double %225)
  %227 = call double @strtod(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.14, i64 0, i64 0), i8** null)
  store double %227, double* %10, align 8
  %228 = load double, double* %10, align 8
  %229 = call i32 @almost_equal(double %228, x86_fp80 0xK405D8DAAC73FF76A0000)
  %230 = load double, double* %10, align 8
  %231 = call i32 (i32, i8*, ...) @ok(i32 %229, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), double %230)
  %232 = call double @strtod(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.15, i64 0, i64 0), i8** null)
  store double %232, double* %10, align 8
  %233 = load double, double* %10, align 8
  %234 = call i32 @almost_equal(double %233, x86_fp80 0xK43129D412E0806E88AA6)
  %235 = load double, double* %10, align 8
  %236 = call i32 (i32, i8*, ...) @ok(i32 %234, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), double %235)
  %237 = call double @strtod(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.16, i64 0, i64 0), i8** null)
  store double %237, double* %10, align 8
  %238 = load double, double* %10, align 8
  %239 = call i32 @almost_equal(double %238, x86_fp80 0xK028782621B6882FDA0FD)
  %240 = load double, double* %10, align 8
  %241 = call i32 (i32, i8*, ...) @ok(i32 %239, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), double %240)
  store i32 -559038737, i32* @errno, align 4
  %242 = getelementptr inbounds [22 x i8], [22 x i8]* %7, i64 0, i64 0
  %243 = call double @strtod(i8* %242, i8** %9)
  %244 = load i32, i32* @errno, align 4
  %245 = load i32, i32* @ERANGE, align 4
  %246 = icmp eq i32 %244, %245
  %247 = zext i1 %246 to i32
  %248 = load i32, i32* @errno, align 4
  %249 = call i32 (i32, i8*, ...) @ok(i32 %247, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0), i32 %248)
  %250 = load i8*, i8** %9, align 8
  %251 = getelementptr inbounds [22 x i8], [22 x i8]* %7, i64 0, i64 0
  %252 = getelementptr inbounds i8, i8* %251, i64 21
  %253 = icmp eq i8* %250, %252
  %254 = zext i1 %253 to i32
  %255 = load i8*, i8** %9, align 8
  %256 = getelementptr inbounds [22 x i8], [22 x i8]* %7, i64 0, i64 0
  %257 = ptrtoint i8* %255 to i64
  %258 = ptrtoint i8* %256 to i64
  %259 = sub i64 %257, %258
  %260 = trunc i64 %259 to i32
  %261 = call i32 (i32, i8*, ...) @ok(i32 %254, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i32 %260)
  store i32 -559038737, i32* @errno, align 4
  %262 = call double @strtod(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.17, i64 0, i64 0), i8** null)
  %263 = load i32, i32* @errno, align 4
  %264 = load i32, i32* @ERANGE, align 4
  %265 = icmp eq i32 %263, %264
  %266 = zext i1 %265 to i32
  %267 = load i32, i32* @errno, align 4
  %268 = call i32 (i32, i8*, ...) @ok(i32 %266, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0), i32 %267)
  br label %269

269:                                              ; preds = %194, %192
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local double @strtod(i8*, i8**) #2

declare dso_local i32 @ok(i32, i8*, ...) #2

declare dso_local i32 @almost_equal(double, x86_fp80) #2

declare dso_local double @p__strtod_l(i32*, i32*, i32*) #2

declare dso_local i32 @setlocale(i32, i8*) #2

declare dso_local i32 @win_skip(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
