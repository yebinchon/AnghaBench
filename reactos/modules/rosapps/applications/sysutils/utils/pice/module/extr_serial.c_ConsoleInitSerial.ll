; ModuleID = '/home/carl/AnghaBench/reactos/modules/rosapps/applications/sysutils/utils/pice/module/extr_serial.c_ConsoleInitSerial.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rosapps/applications/sysutils/utils/pice/module/extr_serial.c_ConsoleInitSerial.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_4__ = type { i32, i32 (...)* }

@FALSE = common dso_local global i64 0, align 8
@CopyLineToSerial = common dso_local global i32 0, align 4
@ohandlers = common dso_local global %struct.TYPE_3__ zeroinitializer, align 4
@PrintGrafSerial = common dso_local global i32 0, align 4
@FlushSerial = common dso_local global i32 0, align 4
@ClrLineSerial = common dso_local global i32 0, align 4
@InvertLineSerial = common dso_local global i32 0, align 4
@HatchLineSerial = common dso_local global i32 0, align 4
@PrintLogoSerial = common dso_local global i32 0, align 4
@PrintCursorSerial = common dso_local global i32 0, align 4
@SaveGraphicsStateSerial = common dso_local global i32 0, align 4
@RestoreGraphicsStateSerial = common dso_local global i32 0, align 4
@ShowCursorSerial = common dso_local global i32 0, align 4
@HideCursorSerial = common dso_local global i32 0, align 4
@SetForegroundColorSerial = common dso_local global i32 0, align 4
@SetBackgroundColorSerial = common dso_local global i32 0, align 4
@ihandlers = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@FlushKeyboardQueueSerial = common dso_local global i32 0, align 4
@wWindowSerial = common dso_local global i32 0, align 4
@GLOBAL_SCREEN_WIDTH = common dso_local global i32 0, align 4
@GLOBAL_SCREEN_HEIGHT = common dso_local global i32 0, align 4
@FRAMEBUFFER_SIZE = common dso_local global i32 0, align 4
@NONPAGEDPOOL = common dso_local global i32 0, align 4
@pScreenBufferSerial = common dso_local global i64 0, align 8
@TRUE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @ConsoleInitSerial() #0 {
  %1 = alloca i64, align 8
  %2 = load i64, i64* @FALSE, align 8
  store i64 %2, i64* %1, align 8
  %3 = call i32 (...) @ENTER_FUNC()
  %4 = load i32, i32* @CopyLineToSerial, align 4
  store i32 %4, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @ohandlers, i32 0, i32 13), align 4
  %5 = load i32, i32* @PrintGrafSerial, align 4
  store i32 %5, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @ohandlers, i32 0, i32 12), align 4
  %6 = load i32, i32* @FlushSerial, align 4
  store i32 %6, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @ohandlers, i32 0, i32 11), align 4
  %7 = load i32, i32* @ClrLineSerial, align 4
  store i32 %7, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @ohandlers, i32 0, i32 10), align 4
  %8 = load i32, i32* @InvertLineSerial, align 4
  store i32 %8, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @ohandlers, i32 0, i32 9), align 4
  %9 = load i32, i32* @HatchLineSerial, align 4
  store i32 %9, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @ohandlers, i32 0, i32 8), align 4
  %10 = load i32, i32* @PrintLogoSerial, align 4
  store i32 %10, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @ohandlers, i32 0, i32 7), align 4
  %11 = load i32, i32* @PrintCursorSerial, align 4
  store i32 %11, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @ohandlers, i32 0, i32 6), align 4
  %12 = load i32, i32* @SaveGraphicsStateSerial, align 4
  store i32 %12, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @ohandlers, i32 0, i32 5), align 4
  %13 = load i32, i32* @RestoreGraphicsStateSerial, align 4
  store i32 %13, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @ohandlers, i32 0, i32 4), align 4
  %14 = load i32, i32* @ShowCursorSerial, align 4
  store i32 %14, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @ohandlers, i32 0, i32 3), align 4
  %15 = load i32, i32* @HideCursorSerial, align 4
  store i32 %15, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @ohandlers, i32 0, i32 2), align 4
  %16 = load i32, i32* @SetForegroundColorSerial, align 4
  store i32 %16, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @ohandlers, i32 0, i32 1), align 4
  %17 = load i32, i32* @SetBackgroundColorSerial, align 4
  store i32 %17, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @ohandlers, i32 0, i32 0), align 4
  store i32 (...)* @GetKeyPolledSerial, i32 (...)** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @ihandlers, i32 0, i32 1), align 8
  %18 = load i32, i32* @FlushKeyboardQueueSerial, align 4
  store i32 %18, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @ihandlers, i32 0, i32 0), align 8
  %19 = load i32, i32* @wWindowSerial, align 4
  %20 = call i32 @SetWindowGeometry(i32 %19)
  store i32 80, i32* @GLOBAL_SCREEN_WIDTH, align 4
  store i32 60, i32* @GLOBAL_SCREEN_HEIGHT, align 4
  %21 = load i32, i32* @FRAMEBUFFER_SIZE, align 4
  %22 = load i32, i32* @NONPAGEDPOOL, align 4
  %23 = call i64 @PICE_malloc(i32 %21, i32 %22)
  store i64 %23, i64* @pScreenBufferSerial, align 8
  %24 = load i64, i64* @pScreenBufferSerial, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %38

26:                                               ; preds = %0
  %27 = load i64, i64* @TRUE, align 8
  store i64 %27, i64* %1, align 8
  %28 = call i32 (...) @EmptyRingBuffer()
  %29 = call i32 @SetupSerial(i32 1, i32 115200)
  %30 = load i32, i32* @GLOBAL_SCREEN_WIDTH, align 4
  %31 = load i32, i32* @GLOBAL_SCREEN_HEIGHT, align 4
  %32 = call i64 @Connect(i32 %30, i32 %31)
  store i64 %32, i64* %1, align 8
  %33 = load i64, i64* %1, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %26
  %36 = call i32 (...) @GetKeyPolledSerial()
  br label %37

37:                                               ; preds = %35, %26
  br label %38

38:                                               ; preds = %37, %0
  %39 = call i32 (...) @LEAVE_FUNC()
  %40 = load i64, i64* %1, align 8
  ret i64 %40
}

declare dso_local i32 @ENTER_FUNC(...) #1

declare dso_local i32 @GetKeyPolledSerial(...) #1

declare dso_local i32 @SetWindowGeometry(i32) #1

declare dso_local i64 @PICE_malloc(i32, i32) #1

declare dso_local i32 @EmptyRingBuffer(...) #1

declare dso_local i32 @SetupSerial(i32, i32) #1

declare dso_local i64 @Connect(i32, i32) #1

declare dso_local i32 @LEAVE_FUNC(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
