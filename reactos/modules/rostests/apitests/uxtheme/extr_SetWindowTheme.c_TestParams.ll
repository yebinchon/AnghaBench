; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/apitests/uxtheme/extr_SetWindowTheme.c_TestParams.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/apitests/uxtheme/extr_SetWindowTheme.c_TestParams.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@E_HANDLE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [35 x i8] c"Expected E_HANDLE got 0x%lx error\0A\00", align 1
@S_OK = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [31 x i8] c"Expected S_OK got 0x%lx error\0A\00", align 1
@.str.2 = private unnamed_addr constant [5 x i32] [i32 110, i32 111, i32 110, i32 101, i32 0], align 4
@.str.3 = private unnamed_addr constant [1 x i32] zeroinitializer, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @TestParams(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  store i32 %0, i32* %2, align 4
  %4 = call i64 @SetWindowTheme(i32 0, i8* null, i8* null)
  store i64 %4, i64* %3, align 8
  %5 = load i64, i64* %3, align 8
  %6 = load i64, i64* @E_HANDLE, align 8
  %7 = icmp eq i64 %5, %6
  %8 = zext i1 %7 to i32
  %9 = load i64, i64* %3, align 8
  %10 = call i32 @ok(i32 %8, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i64 %9)
  %11 = call i64 @SetWindowTheme(i32 -559030611, i8* null, i8* null)
  store i64 %11, i64* %3, align 8
  %12 = load i64, i64* %3, align 8
  %13 = load i64, i64* @E_HANDLE, align 8
  %14 = icmp eq i64 %12, %13
  %15 = zext i1 %14 to i32
  %16 = load i64, i64* %3, align 8
  %17 = call i32 @ok(i32 %15, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i64 %16)
  %18 = load i32, i32* %2, align 4
  %19 = call i64 @SetWindowTheme(i32 %18, i8* null, i8* null)
  store i64 %19, i64* %3, align 8
  %20 = load i64, i64* %3, align 8
  %21 = load i64, i64* @S_OK, align 8
  %22 = icmp eq i64 %20, %21
  %23 = zext i1 %22 to i32
  %24 = load i64, i64* %3, align 8
  %25 = call i32 @ok(i32 %23, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i64 %24)
  %26 = load i32, i32* %2, align 4
  %27 = call i64 @SetWindowTheme(i32 %26, i8* bitcast ([5 x i32]* @.str.2 to i8*), i8* bitcast ([5 x i32]* @.str.2 to i8*))
  store i64 %27, i64* %3, align 8
  %28 = load i64, i64* %3, align 8
  %29 = load i64, i64* @S_OK, align 8
  %30 = icmp eq i64 %28, %29
  %31 = zext i1 %30 to i32
  %32 = load i64, i64* %3, align 8
  %33 = call i32 @ok(i32 %31, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i64 %32)
  %34 = load i32, i32* %2, align 4
  %35 = call i64 @SetWindowTheme(i32 %34, i8* null, i8* bitcast ([5 x i32]* @.str.2 to i8*))
  store i64 %35, i64* %3, align 8
  %36 = load i64, i64* %3, align 8
  %37 = load i64, i64* @S_OK, align 8
  %38 = icmp eq i64 %36, %37
  %39 = zext i1 %38 to i32
  %40 = load i64, i64* %3, align 8
  %41 = call i32 @ok(i32 %39, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i64 %40)
  %42 = load i32, i32* %2, align 4
  %43 = call i64 @SetWindowTheme(i32 %42, i8* bitcast ([5 x i32]* @.str.2 to i8*), i8* null)
  store i64 %43, i64* %3, align 8
  %44 = load i64, i64* %3, align 8
  %45 = load i64, i64* @S_OK, align 8
  %46 = icmp eq i64 %44, %45
  %47 = zext i1 %46 to i32
  %48 = load i64, i64* %3, align 8
  %49 = call i32 @ok(i32 %47, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i64 %48)
  %50 = load i32, i32* %2, align 4
  %51 = call i64 @SetWindowTheme(i32 %50, i8* bitcast ([1 x i32]* @.str.3 to i8*), i8* bitcast ([1 x i32]* @.str.3 to i8*))
  store i64 %51, i64* %3, align 8
  %52 = load i64, i64* %3, align 8
  %53 = load i64, i64* @S_OK, align 8
  %54 = icmp eq i64 %52, %53
  %55 = zext i1 %54 to i32
  %56 = load i64, i64* %3, align 8
  %57 = call i32 @ok(i32 %55, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i64 %56)
  ret void
}

declare dso_local i64 @SetWindowTheme(i32, i8*, i8*) #1

declare dso_local i32 @ok(i32, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
