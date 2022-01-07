; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/setupapi/extr_parser.c_test_close_inf_file.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/setupapi/extr_parser.c_test_close_inf_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ERROR_INVALID_PARAMETER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"Expected 0xdeadbeef, got %u\0A\00", align 1
@INVALID_HANDLE_VALUE = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_close_inf_file to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_close_inf_file() #0 {
  %1 = call i32 @SetLastError(i32 -559038737)
  %2 = call i32 @SetupCloseInfFile(i32* null)
  %3 = call i32 (...) @GetLastError()
  %4 = icmp eq i32 %3, -559038737
  br i1 %4, label %9, label %5

5:                                                ; preds = %0
  %6 = call i32 (...) @GetLastError()
  %7 = load i32, i32* @ERROR_INVALID_PARAMETER, align 4
  %8 = icmp eq i32 %6, %7
  br label %9

9:                                                ; preds = %5, %0
  %10 = phi i1 [ true, %0 ], [ %8, %5 ]
  %11 = zext i1 %10 to i32
  %12 = call i32 (...) @GetLastError()
  %13 = call i32 @ok(i32 %11, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %12)
  %14 = call i32 @SetLastError(i32 -559038737)
  %15 = load i32*, i32** @INVALID_HANDLE_VALUE, align 8
  %16 = call i32 @SetupCloseInfFile(i32* %15)
  %17 = call i32 (...) @GetLastError()
  %18 = icmp eq i32 %17, -559038737
  br i1 %18, label %23, label %19

19:                                               ; preds = %9
  %20 = call i32 (...) @GetLastError()
  %21 = load i32, i32* @ERROR_INVALID_PARAMETER, align 4
  %22 = icmp eq i32 %20, %21
  br label %23

23:                                               ; preds = %19, %9
  %24 = phi i1 [ true, %9 ], [ %22, %19 ]
  %25 = zext i1 %24 to i32
  %26 = call i32 (...) @GetLastError()
  %27 = call i32 @ok(i32 %25, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %26)
  ret void
}

declare dso_local i32 @SetLastError(i32) #1

declare dso_local i32 @SetupCloseInfFile(i32*) #1

declare dso_local i32 @ok(i32, i8*, i32) #1

declare dso_local i32 @GetLastError(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
