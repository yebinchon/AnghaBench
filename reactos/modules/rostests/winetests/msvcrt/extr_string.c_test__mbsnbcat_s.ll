; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/msvcrt/extr_string.c_test__mbsnbcat_s.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/msvcrt/extr_string.c_test__mbsnbcat_s.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@__const.test__mbsnbcat_s.first = private unnamed_addr constant [9 x i8] c"dinosaur\00", align 1
@__const.test__mbsnbcat_s.second = private unnamed_addr constant [5 x i8] c"duck\00", align 1
@.str = private unnamed_addr constant [42 x i8] c"Expected _mbsnbcat_s to return 0, got %d\0A\00", align 1
@EBADF = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [47 x i8] c"Expected _mbsnbcat_s to return EINVAL, got %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [37 x i8] c"Expected errno to be EINVAL, got %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [44 x i8] c"Expected the output buffer to be untouched\0A\00", align 1
@.str.4 = private unnamed_addr constant [50 x i8] c"Expected the output buffer to be null terminated\0A\00", align 1
@.str.5 = private unnamed_addr constant [48 x i8] c"Expected the output buffer string to be \22duck\22\0A\00", align 1
@.str.6 = private unnamed_addr constant [52 x i8] c"Expected the output buffer string to be \22dinosaur\22\0A\00", align 1
@.str.7 = private unnamed_addr constant [13 x i8] c"dinosaurduck\00", align 1
@.str.8 = private unnamed_addr constant [56 x i8] c"Expected the output buffer string to be \22dinosaurduck\22\0A\00", align 1
@.str.9 = private unnamed_addr constant [12 x i8] c"dinosaurduc\00", align 1
@.str.10 = private unnamed_addr constant [55 x i8] c"Expected the output buffer string to be \22dinosaurduc\22\0A\00", align 1
@.str.11 = private unnamed_addr constant [9 x i8] c"\00inosaur\00", align 1
@.str.12 = private unnamed_addr constant [84 x i8] c"Expected the output buffer string to be \22\\0inosaur\22 without ending null terminator\0A\00", align 1
@ERANGE = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [47 x i8] c"Expected _mbsnbcat_s to return ERANGE, got %d\0A\00", align 1
@.str.14 = private unnamed_addr constant [37 x i8] c"Expected errno to be ERANGE, got %d\0A\00", align 1
@.str.15 = private unnamed_addr constant [10 x i8] c"\00inosaurd\00", align 1
@.str.16 = private unnamed_addr constant [85 x i8] c"Expected the output buffer string to be \22\\0inosaurd\22 without ending null terminator\0A\00", align 1
@.str.17 = private unnamed_addr constant [11 x i8] c"\00inosaurdu\00", align 1
@.str.18 = private unnamed_addr constant [86 x i8] c"Expected the output buffer string to be \22\\0inosaurdu\22 without ending null terminator\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test__mbsnbcat_s to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test__mbsnbcat_s() #0 {
  %1 = alloca [16 x i8], align 16
  %2 = alloca [9 x i8], align 1
  %3 = alloca [5 x i8], align 1
  %4 = alloca i32, align 4
  %5 = bitcast [9 x i8]* %2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %5, i8* align 1 getelementptr inbounds ([9 x i8], [9 x i8]* @__const.test__mbsnbcat_s.first, i32 0, i32 0), i64 9, i1 false)
  %6 = bitcast [5 x i8]* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %6, i8* align 1 getelementptr inbounds ([5 x i8], [5 x i8]* @__const.test__mbsnbcat_s.second, i32 0, i32 0), i64 5, i1 false)
  %7 = call i32 @p_mbsnbcat_s(i8* null, i32 0, i8* null, i32 0)
  store i32 %7, i32* %4, align 4
  %8 = load i32, i32* %4, align 4
  %9 = icmp eq i32 %8, 0
  %10 = zext i1 %9 to i32
  %11 = load i32, i32* %4, align 4
  %12 = call i32 (i32, i8*, ...) @ok(i32 %10, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i32 %11)
  %13 = load i32, i32* @EBADF, align 4
  store i32 %13, i32* @errno, align 4
  %14 = call i32 @p_mbsnbcat_s(i8* null, i32 10, i8* null, i32 0)
  store i32 %14, i32* %4, align 4
  %15 = load i32, i32* %4, align 4
  %16 = load i32, i32* @EINVAL, align 4
  %17 = icmp eq i32 %15, %16
  %18 = zext i1 %17 to i32
  %19 = load i32, i32* %4, align 4
  %20 = call i32 (i32, i8*, ...) @ok(i32 %18, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0), i32 %19)
  %21 = load i32, i32* @errno, align 4
  %22 = load i32, i32* @EINVAL, align 4
  %23 = icmp eq i32 %21, %22
  %24 = zext i1 %23 to i32
  %25 = load i32, i32* @errno, align 4
  %26 = call i32 (i32, i8*, ...) @ok(i32 %24, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0), i32 %25)
  %27 = load i32, i32* @EBADF, align 4
  store i32 %27, i32* @errno, align 4
  %28 = call i32 @p_mbsnbcat_s(i8* null, i32 0, i8* null, i32 10)
  store i32 %28, i32* %4, align 4
  %29 = load i32, i32* %4, align 4
  %30 = load i32, i32* @EINVAL, align 4
  %31 = icmp eq i32 %29, %30
  %32 = zext i1 %31 to i32
  %33 = load i32, i32* %4, align 4
  %34 = call i32 (i32, i8*, ...) @ok(i32 %32, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0), i32 %33)
  %35 = load i32, i32* @errno, align 4
  %36 = load i32, i32* @EINVAL, align 4
  %37 = icmp eq i32 %35, %36
  %38 = zext i1 %37 to i32
  %39 = load i32, i32* @errno, align 4
  %40 = call i32 (i32, i8*, ...) @ok(i32 %38, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0), i32 %39)
  %41 = getelementptr inbounds [16 x i8], [16 x i8]* %1, i64 0, i64 0
  %42 = call i32 @memset(i8* %41, i8 signext 88, i32 16)
  %43 = load i32, i32* @EBADF, align 4
  store i32 %43, i32* @errno, align 4
  %44 = getelementptr inbounds [16 x i8], [16 x i8]* %1, i64 0, i64 0
  %45 = call i32 @p_mbsnbcat_s(i8* %44, i32 0, i8* null, i32 0)
  store i32 %45, i32* %4, align 4
  %46 = load i32, i32* %4, align 4
  %47 = load i32, i32* @EINVAL, align 4
  %48 = icmp eq i32 %46, %47
  %49 = zext i1 %48 to i32
  %50 = load i32, i32* %4, align 4
  %51 = call i32 (i32, i8*, ...) @ok(i32 %49, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0), i32 %50)
  %52 = load i32, i32* @errno, align 4
  %53 = load i32, i32* @EINVAL, align 4
  %54 = icmp eq i32 %52, %53
  %55 = zext i1 %54 to i32
  %56 = load i32, i32* @errno, align 4
  %57 = call i32 (i32, i8*, ...) @ok(i32 %55, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0), i32 %56)
  %58 = getelementptr inbounds [16 x i8], [16 x i8]* %1, i64 0, i64 0
  %59 = load i8, i8* %58, align 16
  %60 = zext i8 %59 to i32
  %61 = icmp eq i32 %60, 88
  %62 = zext i1 %61 to i32
  %63 = call i32 (i32, i8*, ...) @ok(i32 %62, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.3, i64 0, i64 0))
  %64 = getelementptr inbounds [16 x i8], [16 x i8]* %1, i64 0, i64 0
  %65 = call i32 @memset(i8* %64, i8 signext 88, i32 16)
  %66 = load i32, i32* @EBADF, align 4
  store i32 %66, i32* @errno, align 4
  %67 = getelementptr inbounds [16 x i8], [16 x i8]* %1, i64 0, i64 0
  %68 = getelementptr inbounds [5 x i8], [5 x i8]* %3, i64 0, i64 0
  %69 = call i32 @p_mbsnbcat_s(i8* %67, i32 0, i8* %68, i32 0)
  store i32 %69, i32* %4, align 4
  %70 = load i32, i32* %4, align 4
  %71 = load i32, i32* @EINVAL, align 4
  %72 = icmp eq i32 %70, %71
  %73 = zext i1 %72 to i32
  %74 = load i32, i32* %4, align 4
  %75 = call i32 (i32, i8*, ...) @ok(i32 %73, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0), i32 %74)
  %76 = load i32, i32* @errno, align 4
  %77 = load i32, i32* @EINVAL, align 4
  %78 = icmp eq i32 %76, %77
  %79 = zext i1 %78 to i32
  %80 = load i32, i32* @errno, align 4
  %81 = call i32 (i32, i8*, ...) @ok(i32 %79, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0), i32 %80)
  %82 = getelementptr inbounds [16 x i8], [16 x i8]* %1, i64 0, i64 0
  %83 = load i8, i8* %82, align 16
  %84 = zext i8 %83 to i32
  %85 = icmp eq i32 %84, 88
  %86 = zext i1 %85 to i32
  %87 = call i32 (i32, i8*, ...) @ok(i32 %86, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.3, i64 0, i64 0))
  %88 = getelementptr inbounds [16 x i8], [16 x i8]* %1, i64 0, i64 0
  %89 = call i32 @memset(i8* %88, i8 signext 88, i32 16)
  %90 = load i32, i32* @EBADF, align 4
  store i32 %90, i32* @errno, align 4
  %91 = getelementptr inbounds [16 x i8], [16 x i8]* %1, i64 0, i64 0
  %92 = call i32 @p_mbsnbcat_s(i8* %91, i32 16, i8* null, i32 0)
  store i32 %92, i32* %4, align 4
  %93 = load i32, i32* %4, align 4
  %94 = load i32, i32* @EINVAL, align 4
  %95 = icmp eq i32 %93, %94
  %96 = zext i1 %95 to i32
  %97 = load i32, i32* %4, align 4
  %98 = call i32 (i32, i8*, ...) @ok(i32 %96, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0), i32 %97)
  %99 = load i32, i32* @errno, align 4
  %100 = load i32, i32* @EINVAL, align 4
  %101 = icmp eq i32 %99, %100
  %102 = zext i1 %101 to i32
  %103 = load i32, i32* @errno, align 4
  %104 = call i32 (i32, i8*, ...) @ok(i32 %102, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0), i32 %103)
  %105 = getelementptr inbounds [16 x i8], [16 x i8]* %1, i64 0, i64 0
  %106 = load i8, i8* %105, align 16
  %107 = zext i8 %106 to i32
  %108 = icmp eq i32 %107, 0
  %109 = zext i1 %108 to i32
  %110 = call i32 (i32, i8*, ...) @ok(i32 %109, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.4, i64 0, i64 0))
  %111 = getelementptr inbounds [16 x i8], [16 x i8]* %1, i64 0, i64 0
  %112 = call i32 @memset(i8* %111, i8 signext 88, i32 16)
  %113 = load i32, i32* @EBADF, align 4
  store i32 %113, i32* @errno, align 4
  %114 = getelementptr inbounds [16 x i8], [16 x i8]* %1, i64 0, i64 0
  %115 = call i32 @p_mbsnbcat_s(i8* %114, i32 16, i8* null, i32 10)
  store i32 %115, i32* %4, align 4
  %116 = load i32, i32* %4, align 4
  %117 = load i32, i32* @EINVAL, align 4
  %118 = icmp eq i32 %116, %117
  %119 = zext i1 %118 to i32
  %120 = load i32, i32* %4, align 4
  %121 = call i32 (i32, i8*, ...) @ok(i32 %119, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0), i32 %120)
  %122 = load i32, i32* @errno, align 4
  %123 = load i32, i32* @EINVAL, align 4
  %124 = icmp eq i32 %122, %123
  %125 = zext i1 %124 to i32
  %126 = load i32, i32* @errno, align 4
  %127 = call i32 (i32, i8*, ...) @ok(i32 %125, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0), i32 %126)
  %128 = getelementptr inbounds [16 x i8], [16 x i8]* %1, i64 0, i64 0
  %129 = load i8, i8* %128, align 16
  %130 = zext i8 %129 to i32
  %131 = icmp eq i32 %130, 0
  %132 = zext i1 %131 to i32
  %133 = call i32 (i32, i8*, ...) @ok(i32 %132, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.4, i64 0, i64 0))
  %134 = getelementptr inbounds [16 x i8], [16 x i8]* %1, i64 0, i64 0
  %135 = call i32 @memset(i8* %134, i8 signext 88, i32 16)
  %136 = getelementptr inbounds [16 x i8], [16 x i8]* %1, i64 0, i64 0
  store i8 0, i8* %136, align 16
  %137 = getelementptr inbounds [16 x i8], [16 x i8]* %1, i64 0, i64 0
  %138 = getelementptr inbounds [5 x i8], [5 x i8]* %3, i64 0, i64 0
  %139 = call i32 @p_mbsnbcat_s(i8* %137, i32 16, i8* %138, i32 5)
  store i32 %139, i32* %4, align 4
  %140 = load i32, i32* %4, align 4
  %141 = icmp eq i32 %140, 0
  %142 = zext i1 %141 to i32
  %143 = load i32, i32* %4, align 4
  %144 = call i32 (i32, i8*, ...) @ok(i32 %142, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i32 %143)
  %145 = getelementptr inbounds [16 x i8], [16 x i8]* %1, i64 0, i64 0
  %146 = getelementptr inbounds [5 x i8], [5 x i8]* %3, i64 0, i64 0
  %147 = call i32 (i8*, ...) @memcmp(i8* %145, i8* %146, i64 5)
  %148 = icmp ne i32 %147, 0
  %149 = xor i1 %148, true
  %150 = zext i1 %149 to i32
  %151 = call i32 (i32, i8*, ...) @ok(i32 %150, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.5, i64 0, i64 0))
  %152 = getelementptr inbounds [16 x i8], [16 x i8]* %1, i64 0, i64 0
  %153 = call i32 @memset(i8* %152, i8 signext 88, i32 16)
  %154 = getelementptr inbounds [16 x i8], [16 x i8]* %1, i64 0, i64 0
  %155 = getelementptr inbounds [9 x i8], [9 x i8]* %2, i64 0, i64 0
  %156 = call i32 @memcpy(i8* %154, i8* %155, i32 9)
  %157 = getelementptr inbounds [16 x i8], [16 x i8]* %1, i64 0, i64 0
  %158 = getelementptr inbounds [5 x i8], [5 x i8]* %3, i64 0, i64 0
  %159 = call i32 @p_mbsnbcat_s(i8* %157, i32 16, i8* %158, i32 0)
  store i32 %159, i32* %4, align 4
  %160 = load i32, i32* %4, align 4
  %161 = icmp eq i32 %160, 0
  %162 = zext i1 %161 to i32
  %163 = load i32, i32* %4, align 4
  %164 = call i32 (i32, i8*, ...) @ok(i32 %162, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i32 %163)
  %165 = getelementptr inbounds [16 x i8], [16 x i8]* %1, i64 0, i64 0
  %166 = getelementptr inbounds [9 x i8], [9 x i8]* %2, i64 0, i64 0
  %167 = call i32 (i8*, ...) @memcmp(i8* %165, i8* %166, i64 9)
  %168 = icmp ne i32 %167, 0
  %169 = xor i1 %168, true
  %170 = zext i1 %169 to i32
  %171 = call i32 (i32, i8*, ...) @ok(i32 %170, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.6, i64 0, i64 0))
  %172 = getelementptr inbounds [16 x i8], [16 x i8]* %1, i64 0, i64 0
  %173 = call i32 @memset(i8* %172, i8 signext 88, i32 16)
  %174 = getelementptr inbounds [16 x i8], [16 x i8]* %1, i64 0, i64 0
  %175 = getelementptr inbounds [9 x i8], [9 x i8]* %2, i64 0, i64 0
  %176 = call i32 @memcpy(i8* %174, i8* %175, i32 9)
  %177 = getelementptr inbounds [16 x i8], [16 x i8]* %1, i64 0, i64 0
  %178 = getelementptr inbounds [5 x i8], [5 x i8]* %3, i64 0, i64 0
  %179 = call i32 @p_mbsnbcat_s(i8* %177, i32 16, i8* %178, i32 5)
  store i32 %179, i32* %4, align 4
  %180 = load i32, i32* %4, align 4
  %181 = icmp eq i32 %180, 0
  %182 = zext i1 %181 to i32
  %183 = load i32, i32* %4, align 4
  %184 = call i32 (i32, i8*, ...) @ok(i32 %182, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i32 %183)
  %185 = getelementptr inbounds [16 x i8], [16 x i8]* %1, i64 0, i64 0
  %186 = call i32 (i8*, ...) @memcmp(i8* %185, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.7, i64 0, i64 0), i64 13)
  %187 = icmp ne i32 %186, 0
  %188 = xor i1 %187, true
  %189 = zext i1 %188 to i32
  %190 = call i32 (i32, i8*, ...) @ok(i32 %189, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.8, i64 0, i64 0))
  %191 = getelementptr inbounds [16 x i8], [16 x i8]* %1, i64 0, i64 0
  %192 = call i32 @memset(i8* %191, i8 signext 88, i32 16)
  %193 = getelementptr inbounds [16 x i8], [16 x i8]* %1, i64 0, i64 0
  %194 = getelementptr inbounds [9 x i8], [9 x i8]* %2, i64 0, i64 0
  %195 = call i32 @memcpy(i8* %193, i8* %194, i32 9)
  %196 = getelementptr inbounds [16 x i8], [16 x i8]* %1, i64 0, i64 0
  %197 = getelementptr inbounds [5 x i8], [5 x i8]* %3, i64 0, i64 0
  %198 = call i32 @p_mbsnbcat_s(i8* %196, i32 16, i8* %197, i32 6)
  store i32 %198, i32* %4, align 4
  %199 = load i32, i32* %4, align 4
  %200 = icmp eq i32 %199, 0
  %201 = zext i1 %200 to i32
  %202 = load i32, i32* %4, align 4
  %203 = call i32 (i32, i8*, ...) @ok(i32 %201, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i32 %202)
  %204 = getelementptr inbounds [16 x i8], [16 x i8]* %1, i64 0, i64 0
  %205 = call i32 (i8*, ...) @memcmp(i8* %204, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.7, i64 0, i64 0), i64 13)
  %206 = icmp ne i32 %205, 0
  %207 = xor i1 %206, true
  %208 = zext i1 %207 to i32
  %209 = call i32 (i32, i8*, ...) @ok(i32 %208, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.8, i64 0, i64 0))
  %210 = getelementptr inbounds [16 x i8], [16 x i8]* %1, i64 0, i64 0
  %211 = call i32 @memset(i8* %210, i8 signext 88, i32 16)
  %212 = getelementptr inbounds [16 x i8], [16 x i8]* %1, i64 0, i64 0
  %213 = getelementptr inbounds [9 x i8], [9 x i8]* %2, i64 0, i64 0
  %214 = call i32 @memcpy(i8* %212, i8* %213, i32 9)
  %215 = getelementptr inbounds [16 x i8], [16 x i8]* %1, i64 0, i64 0
  %216 = getelementptr inbounds [5 x i8], [5 x i8]* %3, i64 0, i64 0
  %217 = call i32 @p_mbsnbcat_s(i8* %215, i32 16, i8* %216, i32 4)
  store i32 %217, i32* %4, align 4
  %218 = load i32, i32* %4, align 4
  %219 = icmp eq i32 %218, 0
  %220 = zext i1 %219 to i32
  %221 = load i32, i32* %4, align 4
  %222 = call i32 (i32, i8*, ...) @ok(i32 %220, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i32 %221)
  %223 = getelementptr inbounds [16 x i8], [16 x i8]* %1, i64 0, i64 0
  %224 = call i32 (i8*, ...) @memcmp(i8* %223, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.7, i64 0, i64 0), i64 13)
  %225 = icmp ne i32 %224, 0
  %226 = xor i1 %225, true
  %227 = zext i1 %226 to i32
  %228 = call i32 (i32, i8*, ...) @ok(i32 %227, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.8, i64 0, i64 0))
  %229 = getelementptr inbounds [16 x i8], [16 x i8]* %1, i64 0, i64 0
  %230 = call i32 @memset(i8* %229, i8 signext 88, i32 16)
  %231 = getelementptr inbounds [16 x i8], [16 x i8]* %1, i64 0, i64 0
  %232 = getelementptr inbounds [9 x i8], [9 x i8]* %2, i64 0, i64 0
  %233 = call i32 @memcpy(i8* %231, i8* %232, i32 9)
  %234 = getelementptr inbounds [16 x i8], [16 x i8]* %1, i64 0, i64 0
  %235 = getelementptr inbounds [5 x i8], [5 x i8]* %3, i64 0, i64 0
  %236 = call i32 @p_mbsnbcat_s(i8* %234, i32 16, i8* %235, i32 3)
  store i32 %236, i32* %4, align 4
  %237 = load i32, i32* %4, align 4
  %238 = icmp eq i32 %237, 0
  %239 = zext i1 %238 to i32
  %240 = load i32, i32* %4, align 4
  %241 = call i32 (i32, i8*, ...) @ok(i32 %239, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i32 %240)
  %242 = getelementptr inbounds [16 x i8], [16 x i8]* %1, i64 0, i64 0
  %243 = call i32 (i8*, ...) @memcmp(i8* %242, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.9, i64 0, i64 0), i64 12)
  %244 = icmp ne i32 %243, 0
  %245 = xor i1 %244, true
  %246 = zext i1 %245 to i32
  %247 = call i32 (i32, i8*, ...) @ok(i32 %246, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.10, i64 0, i64 0))
  %248 = getelementptr inbounds [16 x i8], [16 x i8]* %1, i64 0, i64 0
  %249 = call i32 @memset(i8* %248, i8 signext 88, i32 16)
  %250 = getelementptr inbounds [16 x i8], [16 x i8]* %1, i64 0, i64 0
  %251 = getelementptr inbounds [9 x i8], [9 x i8]* %2, i64 0, i64 0
  %252 = call i32 @memcpy(i8* %250, i8* %251, i32 9)
  %253 = load i32, i32* @EBADF, align 4
  store i32 %253, i32* @errno, align 4
  %254 = getelementptr inbounds [16 x i8], [16 x i8]* %1, i64 0, i64 0
  %255 = getelementptr inbounds [5 x i8], [5 x i8]* %3, i64 0, i64 0
  %256 = call i32 @p_mbsnbcat_s(i8* %254, i32 8, i8* %255, i32 5)
  store i32 %256, i32* %4, align 4
  %257 = load i32, i32* %4, align 4
  %258 = load i32, i32* @EINVAL, align 4
  %259 = icmp eq i32 %257, %258
  %260 = zext i1 %259 to i32
  %261 = load i32, i32* %4, align 4
  %262 = call i32 (i32, i8*, ...) @ok(i32 %260, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0), i32 %261)
  %263 = load i32, i32* @errno, align 4
  %264 = load i32, i32* @EINVAL, align 4
  %265 = icmp eq i32 %263, %264
  %266 = zext i1 %265 to i32
  %267 = load i32, i32* @errno, align 4
  %268 = call i32 (i32, i8*, ...) @ok(i32 %266, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0), i32 %267)
  %269 = getelementptr inbounds [16 x i8], [16 x i8]* %1, i64 0, i64 0
  %270 = call i32 (i8*, ...) @memcmp(i8* %269, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.11, i64 0, i64 0), i64 8)
  %271 = icmp ne i32 %270, 0
  %272 = xor i1 %271, true
  %273 = zext i1 %272 to i32
  %274 = call i32 (i32, i8*, ...) @ok(i32 %273, i8* getelementptr inbounds ([84 x i8], [84 x i8]* @.str.12, i64 0, i64 0))
  %275 = getelementptr inbounds [16 x i8], [16 x i8]* %1, i64 0, i64 0
  %276 = call i32 @memset(i8* %275, i8 signext 88, i32 16)
  %277 = getelementptr inbounds [16 x i8], [16 x i8]* %1, i64 0, i64 0
  %278 = getelementptr inbounds [9 x i8], [9 x i8]* %2, i64 0, i64 0
  %279 = call i32 @memcpy(i8* %277, i8* %278, i32 9)
  %280 = load i32, i32* @EBADF, align 4
  store i32 %280, i32* @errno, align 4
  %281 = getelementptr inbounds [16 x i8], [16 x i8]* %1, i64 0, i64 0
  %282 = getelementptr inbounds [5 x i8], [5 x i8]* %3, i64 0, i64 0
  %283 = call i32 @p_mbsnbcat_s(i8* %281, i32 9, i8* %282, i32 5)
  store i32 %283, i32* %4, align 4
  %284 = load i32, i32* %4, align 4
  %285 = load i32, i32* @ERANGE, align 4
  %286 = icmp eq i32 %284, %285
  %287 = zext i1 %286 to i32
  %288 = load i32, i32* %4, align 4
  %289 = call i32 (i32, i8*, ...) @ok(i32 %287, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.13, i64 0, i64 0), i32 %288)
  %290 = load i32, i32* @errno, align 4
  %291 = load i32, i32* @ERANGE, align 4
  %292 = icmp eq i32 %290, %291
  %293 = zext i1 %292 to i32
  %294 = load i32, i32* @errno, align 4
  %295 = call i32 (i32, i8*, ...) @ok(i32 %293, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.14, i64 0, i64 0), i32 %294)
  %296 = getelementptr inbounds [16 x i8], [16 x i8]* %1, i64 0, i64 0
  %297 = call i32 (i8*, ...) @memcmp(i8* %296, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.15, i64 0, i64 0), i64 9)
  %298 = icmp ne i32 %297, 0
  %299 = xor i1 %298, true
  %300 = zext i1 %299 to i32
  %301 = call i32 (i32, i8*, ...) @ok(i32 %300, i8* getelementptr inbounds ([85 x i8], [85 x i8]* @.str.16, i64 0, i64 0))
  %302 = getelementptr inbounds [16 x i8], [16 x i8]* %1, i64 0, i64 0
  %303 = call i32 @memset(i8* %302, i8 signext 88, i32 16)
  %304 = getelementptr inbounds [16 x i8], [16 x i8]* %1, i64 0, i64 0
  %305 = getelementptr inbounds [9 x i8], [9 x i8]* %2, i64 0, i64 0
  %306 = call i32 @memcpy(i8* %304, i8* %305, i32 9)
  %307 = load i32, i32* @EBADF, align 4
  store i32 %307, i32* @errno, align 4
  %308 = getelementptr inbounds [16 x i8], [16 x i8]* %1, i64 0, i64 0
  %309 = getelementptr inbounds [5 x i8], [5 x i8]* %3, i64 0, i64 0
  %310 = call i32 @p_mbsnbcat_s(i8* %308, i32 10, i8* %309, i32 5)
  store i32 %310, i32* %4, align 4
  %311 = load i32, i32* %4, align 4
  %312 = load i32, i32* @ERANGE, align 4
  %313 = icmp eq i32 %311, %312
  %314 = zext i1 %313 to i32
  %315 = load i32, i32* %4, align 4
  %316 = call i32 (i32, i8*, ...) @ok(i32 %314, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.13, i64 0, i64 0), i32 %315)
  %317 = load i32, i32* @errno, align 4
  %318 = load i32, i32* @ERANGE, align 4
  %319 = icmp eq i32 %317, %318
  %320 = zext i1 %319 to i32
  %321 = load i32, i32* @errno, align 4
  %322 = call i32 (i32, i8*, ...) @ok(i32 %320, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.14, i64 0, i64 0), i32 %321)
  %323 = getelementptr inbounds [16 x i8], [16 x i8]* %1, i64 0, i64 0
  %324 = call i32 (i8*, ...) @memcmp(i8* %323, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.17, i64 0, i64 0), i64 10)
  %325 = icmp ne i32 %324, 0
  %326 = xor i1 %325, true
  %327 = zext i1 %326 to i32
  %328 = call i32 (i32, i8*, ...) @ok(i32 %327, i8* getelementptr inbounds ([86 x i8], [86 x i8]* @.str.18, i64 0, i64 0))
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @p_mbsnbcat_s(i8*, i32, i8*, i32) #2

declare dso_local i32 @ok(i32, i8*, ...) #2

declare dso_local i32 @memset(i8*, i8 signext, i32) #2

declare dso_local i32 @memcmp(i8*, ...) #2

declare dso_local i32 @memcpy(i8*, i8*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
