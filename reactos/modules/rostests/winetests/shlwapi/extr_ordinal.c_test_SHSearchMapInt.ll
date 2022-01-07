; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/shlwapi/extr_ordinal.c_test_SHSearchMapInt.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/shlwapi/extr_ordinal.c_test_SHSearchMapInt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [28 x i8] c"Len 1, expected %d, got %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [38 x i8] c"Len 1 - bad key, expected -1, got %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [43 x i8] c"Len 1 - passed len 0, expected -1, got %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [42 x i8] c"Len 1 - array len 2, expected -1, got %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [28 x i8] c"Len 2, expected %d, got %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [28 x i8] c"Len 3, expected %d, got %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_SHSearchMapInt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_SHSearchMapInt() #0 {
  %1 = alloca [8 x i32], align 16
  %2 = alloca [8 x i32], align 16
  %3 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  %4 = getelementptr inbounds [8 x i32], [8 x i32]* %1, i64 0, i64 0
  %5 = call i32 @memset(i32* %4, i32 0, i32 32)
  %6 = getelementptr inbounds [8 x i32], [8 x i32]* %2, i64 0, i64 0
  %7 = call i32 @memset(i32* %6, i32 0, i32 32)
  %8 = getelementptr inbounds [8 x i32], [8 x i32]* %1, i64 0, i64 0
  store i32 99, i32* %8, align 16
  %9 = getelementptr inbounds [8 x i32], [8 x i32]* %2, i64 0, i64 0
  store i32 101, i32* %9, align 16
  %10 = getelementptr inbounds [8 x i32], [8 x i32]* %1, i64 0, i64 0
  %11 = getelementptr inbounds [8 x i32], [8 x i32]* %2, i64 0, i64 0
  %12 = getelementptr inbounds [8 x i32], [8 x i32]* %1, i64 0, i64 0
  %13 = load i32, i32* %12, align 16
  %14 = call i32 @pSHSearchMapInt(i32* %10, i32* %11, i32 1, i32 %13)
  store i32 %14, i32* %3, align 4
  %15 = load i32, i32* %3, align 4
  %16 = getelementptr inbounds [8 x i32], [8 x i32]* %2, i64 0, i64 0
  %17 = load i32, i32* %16, align 16
  %18 = icmp eq i32 %15, %17
  %19 = zext i1 %18 to i32
  %20 = getelementptr inbounds [8 x i32], [8 x i32]* %2, i64 0, i64 0
  %21 = load i32, i32* %20, align 16
  %22 = load i32, i32* %3, align 4
  %23 = call i32 (i32, i8*, i32, ...) @ok(i32 %19, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %21, i32 %22)
  %24 = getelementptr inbounds [8 x i32], [8 x i32]* %1, i64 0, i64 0
  %25 = getelementptr inbounds [8 x i32], [8 x i32]* %2, i64 0, i64 0
  %26 = call i32 @pSHSearchMapInt(i32* %24, i32* %25, i32 1, i32 100)
  store i32 %26, i32* %3, align 4
  %27 = load i32, i32* %3, align 4
  %28 = icmp eq i32 %27, -1
  %29 = zext i1 %28 to i32
  %30 = load i32, i32* %3, align 4
  %31 = call i32 (i32, i8*, i32, ...) @ok(i32 %29, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0), i32 %30)
  %32 = getelementptr inbounds [8 x i32], [8 x i32]* %1, i64 0, i64 0
  %33 = getelementptr inbounds [8 x i32], [8 x i32]* %2, i64 0, i64 0
  %34 = getelementptr inbounds [8 x i32], [8 x i32]* %1, i64 0, i64 0
  %35 = load i32, i32* %34, align 16
  %36 = call i32 @pSHSearchMapInt(i32* %32, i32* %33, i32 0, i32 %35)
  store i32 %36, i32* %3, align 4
  %37 = load i32, i32* %3, align 4
  %38 = icmp eq i32 %37, -1
  %39 = zext i1 %38 to i32
  %40 = load i32, i32* %3, align 4
  %41 = call i32 (i32, i8*, i32, ...) @ok(i32 %39, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.2, i64 0, i64 0), i32 %40)
  %42 = getelementptr inbounds [8 x i32], [8 x i32]* %1, i64 0, i64 1
  store i32 98, i32* %42, align 4
  %43 = getelementptr inbounds [8 x i32], [8 x i32]* %2, i64 0, i64 1
  store i32 102, i32* %43, align 4
  %44 = getelementptr inbounds [8 x i32], [8 x i32]* %1, i64 0, i64 0
  %45 = getelementptr inbounds [8 x i32], [8 x i32]* %2, i64 0, i64 0
  %46 = getelementptr inbounds [8 x i32], [8 x i32]* %1, i64 0, i64 1
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @pSHSearchMapInt(i32* %44, i32* %45, i32 1, i32 %47)
  store i32 %48, i32* %3, align 4
  %49 = load i32, i32* %3, align 4
  %50 = icmp eq i32 %49, -1
  %51 = zext i1 %50 to i32
  %52 = load i32, i32* %3, align 4
  %53 = call i32 (i32, i8*, i32, ...) @ok(i32 %51, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.3, i64 0, i64 0), i32 %52)
  %54 = getelementptr inbounds [8 x i32], [8 x i32]* %1, i64 0, i64 0
  %55 = getelementptr inbounds [8 x i32], [8 x i32]* %2, i64 0, i64 0
  %56 = getelementptr inbounds [8 x i32], [8 x i32]* %1, i64 0, i64 1
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @pSHSearchMapInt(i32* %54, i32* %55, i32 2, i32 %57)
  store i32 %58, i32* %3, align 4
  %59 = load i32, i32* %3, align 4
  %60 = getelementptr inbounds [8 x i32], [8 x i32]* %2, i64 0, i64 1
  %61 = load i32, i32* %60, align 4
  %62 = icmp eq i32 %59, %61
  %63 = zext i1 %62 to i32
  %64 = getelementptr inbounds [8 x i32], [8 x i32]* %2, i64 0, i64 1
  %65 = load i32, i32* %64, align 4
  %66 = load i32, i32* %3, align 4
  %67 = call i32 (i32, i8*, i32, ...) @ok(i32 %63, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i64 0, i64 0), i32 %65, i32 %66)
  %68 = getelementptr inbounds [8 x i32], [8 x i32]* %1, i64 0, i64 2
  store i32 99, i32* %68, align 8
  %69 = getelementptr inbounds [8 x i32], [8 x i32]* %2, i64 0, i64 2
  store i32 103, i32* %69, align 8
  %70 = getelementptr inbounds [8 x i32], [8 x i32]* %1, i64 0, i64 0
  %71 = getelementptr inbounds [8 x i32], [8 x i32]* %2, i64 0, i64 0
  %72 = getelementptr inbounds [8 x i32], [8 x i32]* %1, i64 0, i64 0
  %73 = load i32, i32* %72, align 16
  %74 = call i32 @pSHSearchMapInt(i32* %70, i32* %71, i32 3, i32 %73)
  store i32 %74, i32* %3, align 4
  %75 = load i32, i32* %3, align 4
  %76 = getelementptr inbounds [8 x i32], [8 x i32]* %2, i64 0, i64 0
  %77 = load i32, i32* %76, align 16
  %78 = icmp eq i32 %75, %77
  %79 = zext i1 %78 to i32
  %80 = getelementptr inbounds [8 x i32], [8 x i32]* %2, i64 0, i64 0
  %81 = load i32, i32* %80, align 16
  %82 = load i32, i32* %3, align 4
  %83 = call i32 (i32, i8*, i32, ...) @ok(i32 %79, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.5, i64 0, i64 0), i32 %81, i32 %82)
  ret void
}

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @pSHSearchMapInt(i32*, i32*, i32, i32) #1

declare dso_local i32 @ok(i32, i8*, i32, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
