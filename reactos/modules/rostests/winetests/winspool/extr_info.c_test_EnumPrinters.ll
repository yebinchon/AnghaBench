; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/winspool/extr_info.c_test_EnumPrinters.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/winspool/extr_info.c_test_EnumPrinters.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PRINTER_ENUM_LOCAL = common dso_local global i32 0, align 4
@ERROR_INSUFFICIENT_BUFFER = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [8 x i8] c"gle %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [53 x i8] c"Expected neededA to show the number of needed bytes\0A\00", align 1
@S_OK = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [29 x i8] c"Expected neededA to be zero\0A\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"num %d\0A\00", align 1
@ERROR_CALL_NOT_IMPLEMENTED = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [34 x i8] c"EnumPrintersW is not implemented\0A\00", align 1
@.str.5 = private unnamed_addr constant [53 x i8] c"Expected neededW to show the number of needed bytes\0A\00", align 1
@.str.6 = private unnamed_addr constant [29 x i8] c"Expected neededW to be zero\0A\00", align 1
@.str.7 = private unnamed_addr constant [23 x i8] c"neededA %d neededW %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_EnumPrinters to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_EnumPrinters() #0 {
  %1 = alloca i64, align 8
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = call i32 @SetLastError(i32 -559038737)
  store i64 -1, i64* %1, align 8
  %6 = load i32, i32* @PRINTER_ENUM_LOCAL, align 4
  %7 = call i64 @EnumPrintersA(i32 %6, i32* null, i32 2, i32* null, i32 0, i64* %1, i64* %3)
  store i64 %7, i64* %4, align 8
  %8 = load i64, i64* %4, align 8
  %9 = call i64 (...) @GetLastError()
  %10 = call i64 @is_spooler_deactivated(i64 %8, i64 %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %0
  br label %93

13:                                               ; preds = %0
  %14 = load i64, i64* %4, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %27, label %16

16:                                               ; preds = %13
  %17 = call i64 (...) @GetLastError()
  %18 = load i64, i64* @ERROR_INSUFFICIENT_BUFFER, align 8
  %19 = icmp eq i64 %17, %18
  %20 = zext i1 %19 to i32
  %21 = call i64 (...) @GetLastError()
  %22 = call i32 (i32, i8*, ...) @ok(i32 %20, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i64 %21)
  %23 = load i64, i64* %1, align 8
  %24 = icmp sgt i64 %23, 0
  %25 = zext i1 %24 to i32
  %26 = call i32 (i32, i8*, ...) @ok(i32 %25, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.1, i64 0, i64 0))
  br label %38

27:                                               ; preds = %13
  %28 = call i64 (...) @GetLastError()
  %29 = load i64, i64* @S_OK, align 8
  %30 = icmp eq i64 %28, %29
  %31 = zext i1 %30 to i32
  %32 = call i64 (...) @GetLastError()
  %33 = call i32 (i32, i8*, ...) @ok(i32 %31, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i64 %32)
  %34 = load i64, i64* %1, align 8
  %35 = icmp eq i64 %34, 0
  %36 = zext i1 %35 to i32
  %37 = call i32 (i32, i8*, ...) @ok(i32 %36, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0))
  br label %38

38:                                               ; preds = %27, %16
  %39 = load i64, i64* %3, align 8
  %40 = icmp eq i64 %39, 0
  %41 = zext i1 %40 to i32
  %42 = load i64, i64* %3, align 8
  %43 = call i32 (i32, i8*, ...) @ok(i32 %41, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i64 %42)
  %44 = call i32 @SetLastError(i32 -559038737)
  store i64 -1, i64* %2, align 8
  %45 = load i32, i32* @PRINTER_ENUM_LOCAL, align 4
  %46 = call i64 @EnumPrintersW(i32 %45, i32* null, i32 2, i32* null, i32 0, i64* %2, i64* %3)
  store i64 %46, i64* %4, align 8
  %47 = load i64, i64* %4, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %55, label %49

49:                                               ; preds = %38
  %50 = call i64 (...) @GetLastError()
  %51 = load i64, i64* @ERROR_CALL_NOT_IMPLEMENTED, align 8
  %52 = icmp eq i64 %50, %51
  br i1 %52, label %53, label %55

53:                                               ; preds = %49
  %54 = call i32 @win_skip(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.4, i64 0, i64 0))
  br label %93

55:                                               ; preds = %49, %38
  %56 = load i64, i64* %4, align 8
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %69, label %58

58:                                               ; preds = %55
  %59 = call i64 (...) @GetLastError()
  %60 = load i64, i64* @ERROR_INSUFFICIENT_BUFFER, align 8
  %61 = icmp eq i64 %59, %60
  %62 = zext i1 %61 to i32
  %63 = call i64 (...) @GetLastError()
  %64 = call i32 (i32, i8*, ...) @ok(i32 %62, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i64 %63)
  %65 = load i64, i64* %2, align 8
  %66 = icmp sgt i64 %65, 0
  %67 = zext i1 %66 to i32
  %68 = call i32 (i32, i8*, ...) @ok(i32 %67, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.5, i64 0, i64 0))
  br label %80

69:                                               ; preds = %55
  %70 = call i64 (...) @GetLastError()
  %71 = load i64, i64* @S_OK, align 8
  %72 = icmp eq i64 %70, %71
  %73 = zext i1 %72 to i32
  %74 = call i64 (...) @GetLastError()
  %75 = call i32 (i32, i8*, ...) @ok(i32 %73, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i64 %74)
  %76 = load i64, i64* %2, align 8
  %77 = icmp eq i64 %76, 0
  %78 = zext i1 %77 to i32
  %79 = call i32 (i32, i8*, ...) @ok(i32 %78, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.6, i64 0, i64 0))
  br label %80

80:                                               ; preds = %69, %58
  %81 = load i64, i64* %3, align 8
  %82 = icmp eq i64 %81, 0
  %83 = zext i1 %82 to i32
  %84 = load i64, i64* %3, align 8
  %85 = call i32 (i32, i8*, ...) @ok(i32 %83, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i64 %84)
  %86 = load i64, i64* %1, align 8
  %87 = load i64, i64* %2, align 8
  %88 = icmp eq i64 %86, %87
  %89 = zext i1 %88 to i32
  %90 = load i64, i64* %1, align 8
  %91 = load i64, i64* %2, align 8
  %92 = call i32 (i32, i8*, ...) @ok(i32 %89, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.7, i64 0, i64 0), i64 %90, i64 %91)
  br label %93

93:                                               ; preds = %80, %53, %12
  ret void
}

declare dso_local i32 @SetLastError(i32) #1

declare dso_local i64 @EnumPrintersA(i32, i32*, i32, i32*, i32, i64*, i64*) #1

declare dso_local i64 @is_spooler_deactivated(i64, i64) #1

declare dso_local i64 @GetLastError(...) #1

declare dso_local i32 @ok(i32, i8*, ...) #1

declare dso_local i64 @EnumPrintersW(i32, i32*, i32, i32*, i32, i64*, i64*) #1

declare dso_local i32 @win_skip(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
