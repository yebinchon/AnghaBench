; ModuleID = '/home/carl/AnghaBench/reactos/modules/rosapps/applications/sysutils/utils/pice/module/extr_output.c_InstallPrintkHook.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rosapps/applications/sysutils/utils/pice/module/extr_output.c_InstallPrintkHook.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@bIsPrintkPatched = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [29 x i8] c"installing PrintString hook\0A\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"_KdpPrintString\00", align 1
@ulPrintk = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [22 x i8] c"_KdpPrintString @ %x\0A\00", align 1
@TRUE = common dso_local global i32 0, align 4
@PrintkCallback = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [45 x i8] c"KdpPrintStringTest breakpoint installed? %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @InstallPrintkHook() #0 {
  %1 = call i32 (...) @ENTER_FUNC()
  %2 = load i64, i64* @bIsPrintkPatched, align 8
  %3 = icmp ne i64 %2, 0
  br i1 %3, label %4, label %5

4:                                                ; preds = %0
  br label %25

5:                                                ; preds = %0
  %6 = call i32 @DPRINT(i32 ptrtoint ([29 x i8]* @.str to i32))
  %7 = call i32 @ScanExports(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i32 ptrtoint (i64* @ulPrintk to i32))
  %8 = load i64, i64* @ulPrintk, align 8
  %9 = trunc i64 %8 to i32
  %10 = call i32 @DPRINT(i32 %9)
  %11 = load i64, i64* @ulPrintk, align 8
  %12 = call i32 @ASSERT(i64 %11)
  %13 = load i64, i64* @ulPrintk, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %23

15:                                               ; preds = %5
  %16 = load i64, i64* @ulPrintk, align 8
  %17 = load i32, i32* @TRUE, align 4
  %18 = load i32, i32* @PrintkCallback, align 4
  %19 = call i64 @InstallSWBreakpoint(i64 %16, i32 %17, i32 %18)
  store i64 %19, i64* @bIsPrintkPatched, align 8
  %20 = load i64, i64* @bIsPrintkPatched, align 8
  %21 = trunc i64 %20 to i32
  %22 = call i32 @DPRINT(i32 %21)
  br label %23

23:                                               ; preds = %15, %5
  %24 = call i32 (...) @LEAVE_FUNC()
  br label %25

25:                                               ; preds = %23, %4
  ret void
}

declare dso_local i32 @ENTER_FUNC(...) #1

declare dso_local i32 @DPRINT(i32) #1

declare dso_local i32 @ScanExports(i8*, i32) #1

declare dso_local i32 @ASSERT(i64) #1

declare dso_local i64 @InstallSWBreakpoint(i64, i32, i32) #1

declare dso_local i32 @LEAVE_FUNC(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
