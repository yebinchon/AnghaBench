; ModuleID = '/home/carl/AnghaBench/reactos/modules/rosapps/applications/sysutils/utils/pice/module/extr_utils.c_ShowStoppedMsg.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rosapps/applications/sysutils/utils/pice/module/extr_utils.c_ShowStoppedMsg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i64 }

@COLOR_TEXT = common dso_local global i32 0, align 4
@COLOR_CAPTION = common dso_local global i32 0, align 4
@wWindow = common dso_local global %struct.TYPE_2__* null, align 8
@OUTPUT_WINDOW = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [36 x i8] c" Stopped... (Type 'x' to continue) \00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ShowStoppedMsg() #0 {
  %1 = call i32 (...) @ENTER_FUNC()
  %2 = load i32, i32* @COLOR_TEXT, align 4
  %3 = call i32 @SetForegroundColor(i32 %2)
  %4 = load i32, i32* @COLOR_CAPTION, align 4
  %5 = call i32 @SetBackgroundColor(i32 %4)
  %6 = load %struct.TYPE_2__*, %struct.TYPE_2__** @wWindow, align 8
  %7 = load i64, i64* @OUTPUT_WINDOW, align 8
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i64 %7
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 1
  %10 = load i64, i64* %9, align 8
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** @wWindow, align 8
  %12 = load i64, i64* @OUTPUT_WINDOW, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i64 %12
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = add nsw i64 %10, %15
  %17 = call i32 @ClrLine(i64 %16)
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** @wWindow, align 8
  %19 = load i64, i64* @OUTPUT_WINDOW, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i64 %19
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** @wWindow, align 8
  %24 = load i64, i64* @OUTPUT_WINDOW, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i64 %24
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = add nsw i64 %22, %27
  %29 = call i32 @PutChar(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 1, i64 %28)
  %30 = call i32 (...) @ResetColor()
  %31 = call i32 (...) @LEAVE_FUNC()
  ret void
}

declare dso_local i32 @ENTER_FUNC(...) #1

declare dso_local i32 @SetForegroundColor(i32) #1

declare dso_local i32 @SetBackgroundColor(i32) #1

declare dso_local i32 @ClrLine(i64) #1

declare dso_local i32 @PutChar(i8*, i32, i64) #1

declare dso_local i32 @ResetColor(...) #1

declare dso_local i32 @LEAVE_FUNC(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
