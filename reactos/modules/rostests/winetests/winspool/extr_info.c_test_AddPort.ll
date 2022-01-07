; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/winspool/extr_info.c_test_AddPort.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/winspool/extr_info.c_test_AddPort.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@RPC_X_NULL_REF_POINTER = common dso_local global i64 0, align 8
@ERROR_INVALID_PARAMETER = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [88 x i8] c"returned %d with %d (expected '0' with ERROR_NOT_SUPPORTED or ERROR_INVALID_PARAMETER)\0A\00", align 1
@empty = common dso_local global i32* null, align 8
@ERROR_NOT_SUPPORTED = common dso_local global i64 0, align 8
@does_not_exist = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_AddPort to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_AddPort() #0 {
  %1 = alloca i64, align 8
  %2 = call i32 @SetLastError(i32 -559038737)
  %3 = call i64 @AddPortA(i32* null, i32 0, i32* null)
  store i64 %3, i64* %1, align 8
  %4 = load i64, i64* %1, align 8
  %5 = call i64 (...) @GetLastError()
  %6 = call i64 @is_spooler_deactivated(i64 %4, i64 %5)
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %9

8:                                                ; preds = %0
  br label %76

9:                                                ; preds = %0
  %10 = load i64, i64* %1, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %22, label %12

12:                                               ; preds = %9
  %13 = call i64 (...) @GetLastError()
  %14 = load i64, i64* @RPC_X_NULL_REF_POINTER, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %20, label %16

16:                                               ; preds = %12
  %17 = call i64 (...) @GetLastError()
  %18 = load i64, i64* @ERROR_INVALID_PARAMETER, align 8
  %19 = icmp eq i64 %17, %18
  br label %20

20:                                               ; preds = %16, %12
  %21 = phi i1 [ true, %12 ], [ %19, %16 ]
  br label %22

22:                                               ; preds = %20, %9
  %23 = phi i1 [ false, %9 ], [ %21, %20 ]
  %24 = zext i1 %23 to i32
  %25 = load i64, i64* %1, align 8
  %26 = call i64 (...) @GetLastError()
  %27 = call i32 @ok(i32 %24, i8* getelementptr inbounds ([88 x i8], [88 x i8]* @.str, i64 0, i64 0), i64 %25, i64 %26)
  %28 = call i32 @SetLastError(i32 -559038737)
  %29 = load i32*, i32** @empty, align 8
  %30 = call i64 @AddPortA(i32* null, i32 0, i32* %29)
  store i64 %30, i64* %1, align 8
  %31 = load i64, i64* %1, align 8
  %32 = call i64 (...) @GetLastError()
  %33 = call i64 @is_access_denied(i64 %31, i64 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %22
  br label %76

36:                                               ; preds = %22
  %37 = load i64, i64* %1, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %49, label %39

39:                                               ; preds = %36
  %40 = call i64 (...) @GetLastError()
  %41 = load i64, i64* @ERROR_NOT_SUPPORTED, align 8
  %42 = icmp eq i64 %40, %41
  br i1 %42, label %47, label %43

43:                                               ; preds = %39
  %44 = call i64 (...) @GetLastError()
  %45 = load i64, i64* @ERROR_INVALID_PARAMETER, align 8
  %46 = icmp eq i64 %44, %45
  br label %47

47:                                               ; preds = %43, %39
  %48 = phi i1 [ true, %39 ], [ %46, %43 ]
  br label %49

49:                                               ; preds = %47, %36
  %50 = phi i1 [ false, %36 ], [ %48, %47 ]
  %51 = zext i1 %50 to i32
  %52 = load i64, i64* %1, align 8
  %53 = call i64 (...) @GetLastError()
  %54 = call i32 @ok(i32 %51, i8* getelementptr inbounds ([88 x i8], [88 x i8]* @.str, i64 0, i64 0), i64 %52, i64 %53)
  %55 = call i32 @SetLastError(i32 -559038737)
  %56 = load i32*, i32** @does_not_exist, align 8
  %57 = call i64 @AddPortA(i32* null, i32 0, i32* %56)
  store i64 %57, i64* %1, align 8
  %58 = load i64, i64* %1, align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %70, label %60

60:                                               ; preds = %49
  %61 = call i64 (...) @GetLastError()
  %62 = load i64, i64* @ERROR_NOT_SUPPORTED, align 8
  %63 = icmp eq i64 %61, %62
  br i1 %63, label %68, label %64

64:                                               ; preds = %60
  %65 = call i64 (...) @GetLastError()
  %66 = load i64, i64* @ERROR_INVALID_PARAMETER, align 8
  %67 = icmp eq i64 %65, %66
  br label %68

68:                                               ; preds = %64, %60
  %69 = phi i1 [ true, %60 ], [ %67, %64 ]
  br label %70

70:                                               ; preds = %68, %49
  %71 = phi i1 [ false, %49 ], [ %69, %68 ]
  %72 = zext i1 %71 to i32
  %73 = load i64, i64* %1, align 8
  %74 = call i64 (...) @GetLastError()
  %75 = call i32 @ok(i32 %72, i8* getelementptr inbounds ([88 x i8], [88 x i8]* @.str, i64 0, i64 0), i64 %73, i64 %74)
  br label %76

76:                                               ; preds = %70, %35, %8
  ret void
}

declare dso_local i32 @SetLastError(i32) #1

declare dso_local i64 @AddPortA(i32*, i32, i32*) #1

declare dso_local i64 @is_spooler_deactivated(i64, i64) #1

declare dso_local i64 @GetLastError(...) #1

declare dso_local i32 @ok(i32, i8*, i64, i64) #1

declare dso_local i64 @is_access_denied(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
