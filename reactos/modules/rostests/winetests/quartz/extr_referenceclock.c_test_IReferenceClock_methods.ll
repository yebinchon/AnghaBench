; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/quartz/extr_referenceclock.c_test_IReferenceClock_methods.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/quartz/extr_referenceclock.c_test_IReferenceClock_methods.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@E_POINTER = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [46 x i8] c"%s - Expected E_POINTER (0x%08x), got 0x%08x\0A\00", align 1
@S_FALSE = common dso_local global i64 0, align 8
@S_OK = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [43 x i8] c"%s - Expected S_OK or S_FALSE, got 0x%08x\0A\00", align 1
@.str.2 = private unnamed_addr constant [39 x i8] c"%s - value was NOT changed on return!\0A\00", align 1
@.str.3 = private unnamed_addr constant [46 x i8] c"%s - returned S_FALSE, but values not equal!\0A\00", align 1
@.str.4 = private unnamed_addr constant [32 x i8] c"%s - Expected S_OK, got 0x%08x\0A\00", align 1
@.str.5 = private unnamed_addr constant [50 x i8] c"%s - Expected difference around 10000000, got %u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32*)* @test_IReferenceClock_methods to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_IReferenceClock_methods(i8* %0, i32* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i32* %1, i32** %4, align 8
  %9 = load i32*, i32** %4, align 8
  %10 = call i64 @IReferenceClock_GetTime(i32* %9, i32* null)
  store i64 %10, i64* %5, align 8
  %11 = load i64, i64* %5, align 8
  %12 = load i64, i64* @E_POINTER, align 8
  %13 = icmp eq i64 %11, %12
  %14 = zext i1 %13 to i32
  %15 = load i8*, i8** %3, align 8
  %16 = load i64, i64* @E_POINTER, align 8
  %17 = load i64, i64* %5, align 8
  %18 = call i32 (i32, i8*, i8*, ...) @ok(i32 %14, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i8* %15, i64 %16, i64 %17)
  store i32 -559038737, i32* %6, align 4
  %19 = load i32*, i32** %4, align 8
  %20 = call i64 @IReferenceClock_GetTime(i32* %19, i32* %6)
  store i64 %20, i64* %5, align 8
  %21 = load i64, i64* %5, align 8
  %22 = load i64, i64* @S_FALSE, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %28, label %24

24:                                               ; preds = %2
  %25 = load i64, i64* %5, align 8
  %26 = load i64, i64* @S_OK, align 8
  %27 = icmp eq i64 %25, %26
  br label %28

28:                                               ; preds = %24, %2
  %29 = phi i1 [ true, %2 ], [ %27, %24 ]
  %30 = zext i1 %29 to i32
  %31 = load i8*, i8** %3, align 8
  %32 = load i64, i64* %5, align 8
  %33 = call i32 (i32, i8*, i8*, ...) @ok(i32 %30, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0), i8* %31, i64 %32)
  %34 = load i32, i32* %6, align 4
  %35 = icmp ne i32 %34, -559038737
  %36 = zext i1 %35 to i32
  %37 = load i8*, i8** %3, align 8
  %38 = call i32 (i32, i8*, i8*, ...) @ok(i32 %36, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0), i8* %37)
  store i32 -559038737, i32* %7, align 4
  %39 = load i32*, i32** %4, align 8
  %40 = call i64 @IReferenceClock_GetTime(i32* %39, i32* %7)
  store i64 %40, i64* %5, align 8
  %41 = load i64, i64* %5, align 8
  %42 = load i64, i64* @S_FALSE, align 8
  %43 = icmp eq i64 %41, %42
  br i1 %43, label %48, label %44

44:                                               ; preds = %28
  %45 = load i64, i64* %5, align 8
  %46 = load i64, i64* @S_OK, align 8
  %47 = icmp eq i64 %45, %46
  br label %48

48:                                               ; preds = %44, %28
  %49 = phi i1 [ true, %28 ], [ %47, %44 ]
  %50 = zext i1 %49 to i32
  %51 = load i8*, i8** %3, align 8
  %52 = load i64, i64* %5, align 8
  %53 = call i32 (i32, i8*, i8*, ...) @ok(i32 %50, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0), i8* %51, i64 %52)
  %54 = load i32, i32* %7, align 4
  %55 = icmp ne i32 %54, -559038737
  %56 = zext i1 %55 to i32
  %57 = load i8*, i8** %3, align 8
  %58 = call i32 (i32, i8*, i8*, ...) @ok(i32 %56, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0), i8* %57)
  %59 = load i64, i64* %5, align 8
  %60 = load i64, i64* @S_FALSE, align 8
  %61 = icmp ne i64 %59, %60
  br i1 %61, label %66, label %62

62:                                               ; preds = %48
  %63 = load i32, i32* %6, align 4
  %64 = load i32, i32* %7, align 4
  %65 = icmp eq i32 %63, %64
  br label %66

66:                                               ; preds = %62, %48
  %67 = phi i1 [ true, %48 ], [ %65, %62 ]
  %68 = zext i1 %67 to i32
  %69 = load i8*, i8** %3, align 8
  %70 = call i32 (i32, i8*, i8*, ...) @ok(i32 %68, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.3, i64 0, i64 0), i8* %69)
  %71 = load i32, i32* %7, align 4
  store i32 %71, i32* %6, align 4
  %72 = call i32 @Sleep(i32 1000)
  %73 = load i32*, i32** %4, align 8
  %74 = call i64 @IReferenceClock_GetTime(i32* %73, i32* %7)
  store i64 %74, i64* %5, align 8
  %75 = load i64, i64* %5, align 8
  %76 = load i64, i64* @S_OK, align 8
  %77 = icmp eq i64 %75, %76
  %78 = zext i1 %77 to i32
  %79 = load i8*, i8** %3, align 8
  %80 = load i64, i64* %5, align 8
  %81 = call i32 (i32, i8*, i8*, ...) @ok(i32 %78, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.4, i64 0, i64 0), i8* %79, i64 %80)
  %82 = load i32, i32* %7, align 4
  %83 = load i32, i32* %6, align 4
  %84 = sub nsw i32 %82, %83
  store i32 %84, i32* %8, align 4
  %85 = load i32, i32* %8, align 4
  %86 = icmp sle i32 9940000, %85
  br i1 %86, label %87, label %90

87:                                               ; preds = %66
  %88 = load i32, i32* %8, align 4
  %89 = icmp sle i32 %88, 10240000
  br label %90

90:                                               ; preds = %87, %66
  %91 = phi i1 [ false, %66 ], [ %89, %87 ]
  %92 = zext i1 %91 to i32
  %93 = load i8*, i8** %3, align 8
  %94 = load i32, i32* %8, align 4
  %95 = call i32 (i32, i8*, i8*, ...) @ok(i32 %92, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.5, i64 0, i64 0), i8* %93, i32 %94)
  ret void
}

declare dso_local i64 @IReferenceClock_GetTime(i32*, i32*) #1

declare dso_local i32 @ok(i32, i8*, i8*, ...) #1

declare dso_local i32 @Sleep(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
