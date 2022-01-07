; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/msvcrt/extr_string.c_test_swab.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/msvcrt/extr_string.c_test_swab.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@__const.test_swab.original = private unnamed_addr constant [29 x i8] c"BADCFEHGJILKNMPORQTSVUXWZY@#\00", align 16
@__const.test_swab.expected1 = private unnamed_addr constant [29 x i8] c"ABCDEFGHIJKLMNOPQRSTUVWXYZ@#\00", align 16
@__const.test_swab.expected2 = private unnamed_addr constant [26 x i8] c"ABCDEFGHIJKLMNOPQRSTUVWX$\00", align 16
@__const.test_swab.expected3 = private unnamed_addr constant [2 x i8] c"$\00", align 1
@.str = private unnamed_addr constant [39 x i8] c"Testing even size %d returned '%*.*s'\0A\00", align 1
@.str.1 = private unnamed_addr constant [38 x i8] c"Testing odd size %d returned '%*.*s'\0A\00", align 1
@.str.2 = private unnamed_addr constant [45 x i8] c"Testing overlapped size %d returned '%*.*s'\0A\00", align 1
@.str.3 = private unnamed_addr constant [40 x i8] c"Testing small size %d returned '%*.*s'\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_swab to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_swab() #0 {
  %1 = alloca [29 x i8], align 16
  %2 = alloca [29 x i8], align 16
  %3 = alloca [26 x i8], align 16
  %4 = alloca [2 x i8], align 1
  %5 = alloca [30 x i8], align 16
  %6 = alloca [30 x i8], align 16
  %7 = alloca i32, align 4
  %8 = bitcast [29 x i8]* %1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %8, i8* align 16 getelementptr inbounds ([29 x i8], [29 x i8]* @__const.test_swab.original, i32 0, i32 0), i64 29, i1 false)
  %9 = bitcast [29 x i8]* %2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %9, i8* align 16 getelementptr inbounds ([29 x i8], [29 x i8]* @__const.test_swab.expected1, i32 0, i32 0), i64 29, i1 false)
  %10 = bitcast [26 x i8]* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %10, i8* align 16 getelementptr inbounds ([26 x i8], [26 x i8]* @__const.test_swab.expected2, i32 0, i32 0), i64 26, i1 false)
  %11 = bitcast [2 x i8]* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %11, i8* align 1 getelementptr inbounds ([2 x i8], [2 x i8]* @__const.test_swab.expected3, i32 0, i32 0), i64 2, i1 false)
  %12 = getelementptr inbounds [30 x i8], [30 x i8]* %6, i64 0, i64 0
  %13 = call i32 @memset(i8* %12, i8 signext 36, i32 30)
  %14 = getelementptr inbounds [30 x i8], [30 x i8]* %5, i64 0, i64 0
  %15 = call i32 @memset(i8* %14, i8 signext 64, i32 30)
  store i32 26, i32* %7, align 4
  %16 = getelementptr inbounds [30 x i8], [30 x i8]* %5, i64 0, i64 0
  %17 = getelementptr inbounds [29 x i8], [29 x i8]* %1, i64 0, i64 0
  %18 = load i32, i32* %7, align 4
  %19 = call i32 @memcpy(i8* %16, i8* %17, i32 %18)
  %20 = getelementptr inbounds [30 x i8], [30 x i8]* %5, i64 0, i64 0
  %21 = getelementptr inbounds [30 x i8], [30 x i8]* %6, i64 0, i64 0
  %22 = load i32, i32* %7, align 4
  %23 = call i32 @_swab(i8* %20, i8* %21, i32 %22)
  %24 = getelementptr inbounds [30 x i8], [30 x i8]* %6, i64 0, i64 0
  %25 = getelementptr inbounds [29 x i8], [29 x i8]* %2, i64 0, i64 0
  %26 = load i32, i32* %7, align 4
  %27 = call i64 @memcmp(i8* %24, i8* %25, i32 %26)
  %28 = icmp eq i64 %27, 0
  %29 = zext i1 %28 to i32
  %30 = load i32, i32* %7, align 4
  %31 = load i32, i32* %7, align 4
  %32 = load i32, i32* %7, align 4
  %33 = getelementptr inbounds [30 x i8], [30 x i8]* %6, i64 0, i64 0
  %34 = call i32 @ok(i32 %29, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %30, i32 %31, i32 %32, i8* %33)
  %35 = getelementptr inbounds [30 x i8], [30 x i8]* %6, i64 0, i64 0
  %36 = call i32 @memset(i8* %35, i8 signext 36, i32 30)
  %37 = getelementptr inbounds [30 x i8], [30 x i8]* %5, i64 0, i64 0
  %38 = call i32 @memset(i8* %37, i8 signext 64, i32 30)
  store i32 25, i32* %7, align 4
  %39 = getelementptr inbounds [30 x i8], [30 x i8]* %5, i64 0, i64 0
  %40 = getelementptr inbounds [29 x i8], [29 x i8]* %1, i64 0, i64 0
  %41 = load i32, i32* %7, align 4
  %42 = call i32 @memcpy(i8* %39, i8* %40, i32 %41)
  %43 = getelementptr inbounds [30 x i8], [30 x i8]* %5, i64 0, i64 0
  %44 = getelementptr inbounds [30 x i8], [30 x i8]* %6, i64 0, i64 0
  %45 = load i32, i32* %7, align 4
  %46 = call i32 @_swab(i8* %43, i8* %44, i32 %45)
  %47 = getelementptr inbounds [30 x i8], [30 x i8]* %6, i64 0, i64 0
  %48 = getelementptr inbounds [26 x i8], [26 x i8]* %3, i64 0, i64 0
  %49 = load i32, i32* %7, align 4
  %50 = call i64 @memcmp(i8* %47, i8* %48, i32 %49)
  %51 = icmp eq i64 %50, 0
  %52 = zext i1 %51 to i32
  %53 = load i32, i32* %7, align 4
  %54 = load i32, i32* %7, align 4
  %55 = load i32, i32* %7, align 4
  %56 = getelementptr inbounds [30 x i8], [30 x i8]* %6, i64 0, i64 0
  %57 = call i32 @ok(i32 %52, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0), i32 %53, i32 %54, i32 %55, i8* %56)
  %58 = getelementptr inbounds [30 x i8], [30 x i8]* %6, i64 0, i64 0
  %59 = call i32 @memset(i8* %58, i8 signext 36, i32 30)
  %60 = getelementptr inbounds [30 x i8], [30 x i8]* %5, i64 0, i64 0
  %61 = call i32 @memset(i8* %60, i8 signext 64, i32 30)
  store i32 26, i32* %7, align 4
  %62 = getelementptr inbounds [30 x i8], [30 x i8]* %6, i64 0, i64 0
  %63 = getelementptr inbounds [29 x i8], [29 x i8]* %1, i64 0, i64 0
  %64 = load i32, i32* %7, align 4
  %65 = call i32 @memcpy(i8* %62, i8* %63, i32 %64)
  %66 = getelementptr inbounds [30 x i8], [30 x i8]* %6, i64 0, i64 0
  %67 = getelementptr inbounds [30 x i8], [30 x i8]* %6, i64 0, i64 0
  %68 = load i32, i32* %7, align 4
  %69 = call i32 @_swab(i8* %66, i8* %67, i32 %68)
  %70 = getelementptr inbounds [30 x i8], [30 x i8]* %6, i64 0, i64 0
  %71 = getelementptr inbounds [29 x i8], [29 x i8]* %2, i64 0, i64 0
  %72 = load i32, i32* %7, align 4
  %73 = call i64 @memcmp(i8* %70, i8* %71, i32 %72)
  %74 = icmp eq i64 %73, 0
  %75 = zext i1 %74 to i32
  %76 = load i32, i32* %7, align 4
  %77 = load i32, i32* %7, align 4
  %78 = load i32, i32* %7, align 4
  %79 = getelementptr inbounds [30 x i8], [30 x i8]* %6, i64 0, i64 0
  %80 = call i32 @ok(i32 %75, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.2, i64 0, i64 0), i32 %76, i32 %77, i32 %78, i8* %79)
  %81 = getelementptr inbounds [30 x i8], [30 x i8]* %6, i64 0, i64 0
  %82 = call i32 @memset(i8* %81, i8 signext 36, i32 30)
  %83 = getelementptr inbounds [30 x i8], [30 x i8]* %5, i64 0, i64 0
  %84 = call i32 @memset(i8* %83, i8 signext 64, i32 30)
  store i32 1, i32* %7, align 4
  %85 = getelementptr inbounds [30 x i8], [30 x i8]* %5, i64 0, i64 0
  %86 = getelementptr inbounds [29 x i8], [29 x i8]* %1, i64 0, i64 0
  %87 = load i32, i32* %7, align 4
  %88 = call i32 @memcpy(i8* %85, i8* %86, i32 %87)
  %89 = getelementptr inbounds [30 x i8], [30 x i8]* %5, i64 0, i64 0
  %90 = getelementptr inbounds [30 x i8], [30 x i8]* %6, i64 0, i64 0
  %91 = load i32, i32* %7, align 4
  %92 = call i32 @_swab(i8* %89, i8* %90, i32 %91)
  %93 = getelementptr inbounds [30 x i8], [30 x i8]* %6, i64 0, i64 0
  %94 = getelementptr inbounds [2 x i8], [2 x i8]* %4, i64 0, i64 0
  %95 = load i32, i32* %7, align 4
  %96 = call i64 @memcmp(i8* %93, i8* %94, i32 %95)
  %97 = icmp eq i64 %96, 0
  %98 = zext i1 %97 to i32
  %99 = load i32, i32* %7, align 4
  %100 = load i32, i32* %7, align 4
  %101 = load i32, i32* %7, align 4
  %102 = getelementptr inbounds [30 x i8], [30 x i8]* %6, i64 0, i64 0
  %103 = call i32 @ok(i32 %98, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.3, i64 0, i64 0), i32 %99, i32 %100, i32 %101, i8* %102)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @memset(i8*, i8 signext, i32) #2

declare dso_local i32 @memcpy(i8*, i8*, i32) #2

declare dso_local i32 @_swab(i8*, i8*, i32) #2

declare dso_local i32 @ok(i32, i8*, i32, i32, i32, i8*) #2

declare dso_local i64 @memcmp(i8*, i8*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
