; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/msvcrt/extr_string.c_test__mbscpy_s.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/msvcrt/extr_string.c_test__mbscpy_s.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@__const.test__mbscpy_s.src = private unnamed_addr constant [14 x i8] c"source string\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"got %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [50 x i8] c"dest buffer was not modified on invalid argument\0A\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"dest = %s\0A\00", align 1
@.str.3 = private unnamed_addr constant [36 x i8] c"unused part of buffer was modified\0A\00", align 1
@ERANGE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [28 x i8] c"incorrect dest buffer (%d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test__mbscpy_s to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test__mbscpy_s() #0 {
  %1 = alloca [14 x i8], align 1
  %2 = alloca [16 x i8], align 16
  %3 = alloca i32, align 4
  %4 = bitcast [14 x i8]* %1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %4, i8* align 1 getelementptr inbounds ([14 x i8], [14 x i8]* @__const.test__mbscpy_s.src, i32 0, i32 0), i64 14, i1 false)
  %5 = getelementptr inbounds [14 x i8], [14 x i8]* %1, i64 0, i64 0
  %6 = call i32 @p__mbscpy_s(i8* null, i32 0, i8* %5)
  store i32 %6, i32* %3, align 4
  %7 = load i32, i32* %3, align 4
  %8 = load i32, i32* @EINVAL, align 4
  %9 = icmp eq i32 %7, %8
  %10 = zext i1 %9 to i32
  %11 = load i32, i32* %3, align 4
  %12 = call i32 (i32, i8*, ...) @ok(i32 %10, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 %11)
  %13 = getelementptr inbounds [14 x i8], [14 x i8]* %1, i64 0, i64 0
  %14 = call i32 @p__mbscpy_s(i8* null, i32 16, i8* %13)
  store i32 %14, i32* %3, align 4
  %15 = load i32, i32* %3, align 4
  %16 = load i32, i32* @EINVAL, align 4
  %17 = icmp eq i32 %15, %16
  %18 = zext i1 %17 to i32
  %19 = load i32, i32* %3, align 4
  %20 = call i32 (i32, i8*, ...) @ok(i32 %18, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 %19)
  %21 = getelementptr inbounds [16 x i8], [16 x i8]* %2, i64 0, i64 0
  %22 = getelementptr inbounds [14 x i8], [14 x i8]* %1, i64 0, i64 0
  %23 = call i32 @p__mbscpy_s(i8* %21, i32 0, i8* %22)
  store i32 %23, i32* %3, align 4
  %24 = load i32, i32* %3, align 4
  %25 = load i32, i32* @EINVAL, align 4
  %26 = icmp eq i32 %24, %25
  %27 = zext i1 %26 to i32
  %28 = load i32, i32* %3, align 4
  %29 = call i32 (i32, i8*, ...) @ok(i32 %27, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 %28)
  %30 = getelementptr inbounds [16 x i8], [16 x i8]* %2, i64 0, i64 0
  store i8 120, i8* %30, align 16
  %31 = getelementptr inbounds [16 x i8], [16 x i8]* %2, i64 0, i64 0
  %32 = call i32 @p__mbscpy_s(i8* %31, i32 16, i8* null)
  store i32 %32, i32* %3, align 4
  %33 = load i32, i32* %3, align 4
  %34 = load i32, i32* @EINVAL, align 4
  %35 = icmp eq i32 %33, %34
  %36 = zext i1 %35 to i32
  %37 = load i32, i32* %3, align 4
  %38 = call i32 (i32, i8*, ...) @ok(i32 %36, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 %37)
  %39 = getelementptr inbounds [16 x i8], [16 x i8]* %2, i64 0, i64 0
  %40 = load i8, i8* %39, align 16
  %41 = icmp ne i8 %40, 0
  %42 = xor i1 %41, true
  %43 = zext i1 %42 to i32
  %44 = call i32 (i32, i8*, ...) @ok(i32 %43, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.1, i64 0, i64 0))
  %45 = getelementptr inbounds [16 x i8], [16 x i8]* %2, i64 0, i64 0
  %46 = call i32 @memset(i8* %45, i8 signext 88, i32 16)
  %47 = getelementptr inbounds [16 x i8], [16 x i8]* %2, i64 0, i64 0
  %48 = getelementptr inbounds [14 x i8], [14 x i8]* %1, i64 0, i64 0
  %49 = call i32 @p__mbscpy_s(i8* %47, i32 16, i8* %48)
  store i32 %49, i32* %3, align 4
  %50 = load i32, i32* %3, align 4
  %51 = icmp ne i32 %50, 0
  %52 = xor i1 %51, true
  %53 = zext i1 %52 to i32
  %54 = load i32, i32* %3, align 4
  %55 = call i32 (i32, i8*, ...) @ok(i32 %53, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 %54)
  %56 = getelementptr inbounds [16 x i8], [16 x i8]* %2, i64 0, i64 0
  %57 = getelementptr inbounds [14 x i8], [14 x i8]* %1, i64 0, i64 0
  %58 = call i32 @memcmp(i8* %56, i8* %57, i32 14)
  %59 = icmp ne i32 %58, 0
  %60 = xor i1 %59, true
  %61 = zext i1 %60 to i32
  %62 = getelementptr inbounds [16 x i8], [16 x i8]* %2, i64 0, i64 0
  %63 = call i32 (i32, i8*, ...) @ok(i32 %61, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i8* %62)
  %64 = getelementptr inbounds [16 x i8], [16 x i8]* %2, i64 0, i64 14
  %65 = load i8, i8* %64, align 2
  %66 = zext i8 %65 to i32
  %67 = icmp eq i32 %66, 88
  %68 = zext i1 %67 to i32
  %69 = call i32 (i32, i8*, ...) @ok(i32 %68, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i64 0, i64 0))
  %70 = getelementptr inbounds [16 x i8], [16 x i8]* %2, i64 0, i64 0
  %71 = call i32 @memset(i8* %70, i8 signext 88, i32 16)
  %72 = getelementptr inbounds [16 x i8], [16 x i8]* %2, i64 0, i64 0
  %73 = getelementptr inbounds [14 x i8], [14 x i8]* %1, i64 0, i64 0
  %74 = call i32 @p__mbscpy_s(i8* %72, i32 4, i8* %73)
  store i32 %74, i32* %3, align 4
  %75 = load i32, i32* %3, align 4
  %76 = load i32, i32* @ERANGE, align 4
  %77 = icmp eq i32 %75, %76
  %78 = zext i1 %77 to i32
  %79 = load i32, i32* %3, align 4
  %80 = call i32 (i32, i8*, ...) @ok(i32 %78, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 %79)
  %81 = getelementptr inbounds [16 x i8], [16 x i8]* %2, i64 0, i64 0
  %82 = load i8, i8* %81, align 16
  %83 = icmp ne i8 %82, 0
  %84 = xor i1 %83, true
  %85 = zext i1 %84 to i32
  %86 = getelementptr inbounds [16 x i8], [16 x i8]* %2, i64 0, i64 0
  %87 = load i8, i8* %86, align 16
  %88 = zext i8 %87 to i32
  %89 = call i32 (i32, i8*, ...) @ok(i32 %85, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i64 0, i64 0), i32 %88)
  %90 = getelementptr inbounds [16 x i8], [16 x i8]* %2, i64 0, i64 1
  %91 = load i8, i8* %90, align 1
  %92 = zext i8 %91 to i32
  %93 = getelementptr inbounds [14 x i8], [14 x i8]* %1, i64 0, i64 1
  %94 = load i8, i8* %93, align 1
  %95 = zext i8 %94 to i32
  %96 = icmp eq i32 %92, %95
  %97 = zext i1 %96 to i32
  %98 = getelementptr inbounds [16 x i8], [16 x i8]* %2, i64 0, i64 1
  %99 = load i8, i8* %98, align 1
  %100 = zext i8 %99 to i32
  %101 = call i32 (i32, i8*, ...) @ok(i32 %97, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i64 0, i64 0), i32 %100)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @p__mbscpy_s(i8*, i32, i8*) #2

declare dso_local i32 @ok(i32, i8*, ...) #2

declare dso_local i32 @memset(i8*, i8 signext, i32) #2

declare dso_local i32 @memcmp(i8*, i8*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
