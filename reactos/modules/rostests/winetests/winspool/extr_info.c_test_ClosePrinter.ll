; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/winspool/extr_info.c_test_ClosePrinter.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/winspool/extr_info.c_test_ClosePrinter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ERROR_INVALID_HANDLE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [59 x i8] c"got %d with %d (expected FALSE with ERROR_INVALID_HANDLE)\0A\00", align 1
@default_printer = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"got %d with %d (expected TRUE)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_ClosePrinter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_ClosePrinter() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca i32, align 4
  store i8* null, i8** %1, align 8
  %3 = call i32 @SetLastError(i32 -559038737)
  %4 = call i32 @ClosePrinter(i8* null)
  store i32 %4, i32* %2, align 4
  %5 = load i32, i32* %2, align 4
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %11, label %7

7:                                                ; preds = %0
  %8 = call i64 (...) @GetLastError()
  %9 = load i64, i64* @ERROR_INVALID_HANDLE, align 8
  %10 = icmp eq i64 %8, %9
  br label %11

11:                                               ; preds = %7, %0
  %12 = phi i1 [ false, %0 ], [ %10, %7 ]
  %13 = zext i1 %12 to i32
  %14 = load i32, i32* %2, align 4
  %15 = call i64 (...) @GetLastError()
  %16 = call i32 @ok(i32 %13, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str, i64 0, i64 0), i32 %14, i64 %15)
  %17 = call i32 @SetLastError(i32 -559038737)
  %18 = call i32 @ClosePrinter(i8* inttoptr (i64 -1 to i8*))
  store i32 %18, i32* %2, align 4
  %19 = load i32, i32* %2, align 4
  %20 = call i64 (...) @GetLastError()
  %21 = call i64 @is_spooler_deactivated(i32 %19, i64 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %11
  br label %71

24:                                               ; preds = %11
  %25 = load i32, i32* %2, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %31, label %27

27:                                               ; preds = %24
  %28 = call i64 (...) @GetLastError()
  %29 = load i64, i64* @ERROR_INVALID_HANDLE, align 8
  %30 = icmp eq i64 %28, %29
  br label %31

31:                                               ; preds = %27, %24
  %32 = phi i1 [ false, %24 ], [ %30, %27 ]
  %33 = zext i1 %32 to i32
  %34 = load i32, i32* %2, align 4
  %35 = call i64 (...) @GetLastError()
  %36 = call i32 @ok(i32 %33, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str, i64 0, i64 0), i32 %34, i64 %35)
  %37 = call i32 @SetLastError(i32 -559038737)
  %38 = load i32, i32* @default_printer, align 4
  %39 = call i32 @OpenPrinterA(i32 %38, i8** %1, i32* null)
  store i32 %39, i32* %2, align 4
  %40 = load i32, i32* %2, align 4
  %41 = call i64 (...) @GetLastError()
  %42 = call i64 @is_spooler_deactivated(i32 %40, i64 %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %31
  br label %71

45:                                               ; preds = %31
  %46 = load i32, i32* %2, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %71

48:                                               ; preds = %45
  %49 = call i32 @SetLastError(i32 -559038737)
  %50 = load i8*, i8** %1, align 8
  %51 = call i32 @ClosePrinter(i8* %50)
  store i32 %51, i32* %2, align 4
  %52 = load i32, i32* %2, align 4
  %53 = load i32, i32* %2, align 4
  %54 = call i64 (...) @GetLastError()
  %55 = call i32 @ok(i32 %52, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i32 %53, i64 %54)
  %56 = call i32 @SetLastError(i32 -559038737)
  %57 = load i8*, i8** %1, align 8
  %58 = call i32 @ClosePrinter(i8* %57)
  store i32 %58, i32* %2, align 4
  %59 = load i32, i32* %2, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %65, label %61

61:                                               ; preds = %48
  %62 = call i64 (...) @GetLastError()
  %63 = load i64, i64* @ERROR_INVALID_HANDLE, align 8
  %64 = icmp eq i64 %62, %63
  br label %65

65:                                               ; preds = %61, %48
  %66 = phi i1 [ false, %48 ], [ %64, %61 ]
  %67 = zext i1 %66 to i32
  %68 = load i32, i32* %2, align 4
  %69 = call i64 (...) @GetLastError()
  %70 = call i32 @ok(i32 %67, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str, i64 0, i64 0), i32 %68, i64 %69)
  br label %71

71:                                               ; preds = %23, %44, %65, %45
  ret void
}

declare dso_local i32 @SetLastError(i32) #1

declare dso_local i32 @ClosePrinter(i8*) #1

declare dso_local i32 @ok(i32, i8*, i32, i64) #1

declare dso_local i64 @GetLastError(...) #1

declare dso_local i64 @is_spooler_deactivated(i32, i64) #1

declare dso_local i32 @OpenPrinterA(i32, i8**, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
