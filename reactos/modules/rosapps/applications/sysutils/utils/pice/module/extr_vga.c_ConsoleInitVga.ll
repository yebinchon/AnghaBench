; ModuleID = '/home/carl/AnghaBench/reactos/modules/rosapps/applications/sysutils/utils/pice/module/extr_vga.c_ConsoleInitVga.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rosapps/applications/sysutils/utils/pice/module/extr_vga.c_ConsoleInitVga.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_12__ = type { i32, i32 }
%struct.TYPE_13__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32 }

@FALSE = common dso_local global i32 0, align 4
@CopyLineToVga = common dso_local global i32 0, align 4
@ohandlers = common dso_local global %struct.TYPE_11__ zeroinitializer, align 4
@PrintGrafVga = common dso_local global i32 0, align 4
@ClrLineVga = common dso_local global i32 0, align 4
@InvertLineVga = common dso_local global i32 0, align 4
@HatchLineVga = common dso_local global i32 0, align 4
@PrintLogoVga = common dso_local global i32 0, align 4
@PrintCursorVga = common dso_local global i32 0, align 4
@SaveGraphicsStateVga = common dso_local global i32 0, align 4
@RestoreGraphicsStateVga = common dso_local global i32 0, align 4
@ShowCursorVga = common dso_local global i32 0, align 4
@HideCursorVga = common dso_local global i32 0, align 4
@SetForegroundColorVga = common dso_local global i32 0, align 4
@SetBackgroundColorVga = common dso_local global i32 0, align 4
@KeyboardGetKeyPolled = common dso_local global i32 0, align 4
@ihandlers = common dso_local global %struct.TYPE_12__ zeroinitializer, align 4
@KeyboardFlushKeyboardQueue = common dso_local global i32 0, align 4
@wWindowVga = common dso_local global i32 0, align 4
@GLOBAL_SCREEN_WIDTH = common dso_local global i32 0, align 4
@GLOBAL_SCREEN_HEIGHT = common dso_local global i32 0, align 4
@attr = common dso_local global %struct.TYPE_13__ zeroinitializer, align 4
@SCREEN_BUFFER_SIZE = common dso_local global i32 0, align 4
@MmNonCached = common dso_local global i32 0, align 4
@pScreenBufferHardwareVga = common dso_local global i8* null, align 8
@FONTBUFFERSIZE = common dso_local global i32 0, align 4
@pFontBufferVga = common dso_local global i8* null, align 8
@NONPAGEDPOOL = common dso_local global i32 0, align 4
@pScreenBufferVga = common dso_local global i8* null, align 8
@pScreenBufferTempVga = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [50 x i8] c"VGA memory phys. 0x000b0000 mapped to virt. 0x%x\0A\00", align 1
@TRUE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"VGA memory cleared!\0A\00", align 1
@.str.2 = private unnamed_addr constant [27 x i8] c"ConsoleInitVga() SUCCESS!\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ConsoleInitVga() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i64, align 8
  %3 = alloca %struct.TYPE_10__, align 4
  %4 = alloca %struct.TYPE_10__, align 4
  %5 = load i32, i32* @FALSE, align 4
  store i32 %5, i32* %1, align 4
  %6 = call i32 (...) @ENTER_FUNC()
  %7 = load i32, i32* @CopyLineToVga, align 4
  store i32 %7, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @ohandlers, i32 0, i32 12), align 4
  %8 = load i32, i32* @PrintGrafVga, align 4
  store i32 %8, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @ohandlers, i32 0, i32 11), align 4
  %9 = load i32, i32* @ClrLineVga, align 4
  store i32 %9, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @ohandlers, i32 0, i32 10), align 4
  %10 = load i32, i32* @InvertLineVga, align 4
  store i32 %10, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @ohandlers, i32 0, i32 9), align 4
  %11 = load i32, i32* @HatchLineVga, align 4
  store i32 %11, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @ohandlers, i32 0, i32 8), align 4
  %12 = load i32, i32* @PrintLogoVga, align 4
  store i32 %12, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @ohandlers, i32 0, i32 7), align 4
  %13 = load i32, i32* @PrintCursorVga, align 4
  store i32 %13, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @ohandlers, i32 0, i32 6), align 4
  %14 = load i32, i32* @SaveGraphicsStateVga, align 4
  store i32 %14, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @ohandlers, i32 0, i32 5), align 4
  %15 = load i32, i32* @RestoreGraphicsStateVga, align 4
  store i32 %15, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @ohandlers, i32 0, i32 4), align 4
  %16 = load i32, i32* @ShowCursorVga, align 4
  store i32 %16, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @ohandlers, i32 0, i32 3), align 4
  %17 = load i32, i32* @HideCursorVga, align 4
  store i32 %17, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @ohandlers, i32 0, i32 2), align 4
  %18 = load i32, i32* @SetForegroundColorVga, align 4
  store i32 %18, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @ohandlers, i32 0, i32 1), align 4
  %19 = load i32, i32* @SetBackgroundColorVga, align 4
  store i32 %19, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @ohandlers, i32 0, i32 0), align 4
  %20 = load i32, i32* @KeyboardGetKeyPolled, align 4
  store i32 %20, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @ihandlers, i32 0, i32 1), align 4
  %21 = load i32, i32* @KeyboardFlushKeyboardQueue, align 4
  store i32 %21, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @ihandlers, i32 0, i32 0), align 4
  %22 = load i32, i32* @wWindowVga, align 4
  %23 = call i32 @SetWindowGeometry(i32 %22)
  store i32 80, i32* @GLOBAL_SCREEN_WIDTH, align 4
  store i32 25, i32* @GLOBAL_SCREEN_HEIGHT, align 4
  store i32 7, i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @attr, i32 0, i32 0, i32 0), align 4
  %24 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %3, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %24, i32 0, i32 0
  store i32 753664, i32* %25, align 4
  %26 = load i32, i32* @SCREEN_BUFFER_SIZE, align 4
  %27 = load i32, i32* @MmNonCached, align 4
  %28 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %3, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i8* @MmMapIoSpace(i32 %30, i32 %26, i32 %27)
  store i8* %31, i8** @pScreenBufferHardwareVga, align 8
  %32 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %4, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %32, i32 0, i32 0
  store i32 655360, i32* %33, align 4
  %34 = load i32, i32* @FONTBUFFERSIZE, align 4
  %35 = load i32, i32* @MmNonCached, align 4
  %36 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %4, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i8* @MmMapIoSpace(i32 %38, i32 %34, i32 %35)
  store i8* %39, i8** @pFontBufferVga, align 8
  %40 = load i32, i32* @SCREEN_BUFFER_SIZE, align 4
  %41 = load i32, i32* @NONPAGEDPOOL, align 4
  %42 = call i8* @PICE_malloc(i32 %40, i32 %41)
  store i8* %42, i8** @pScreenBufferVga, align 8
  %43 = load i32, i32* @SCREEN_BUFFER_SIZE, align 4
  %44 = load i32, i32* @NONPAGEDPOOL, align 4
  %45 = call i8* @PICE_malloc(i32 %43, i32 %44)
  store i8* %45, i8** @pScreenBufferTempVga, align 8
  %46 = load i8*, i8** @pScreenBufferVga, align 8
  %47 = icmp ne i8* %46, null
  br i1 %47, label %48, label %61

48:                                               ; preds = %0
  %49 = load i8*, i8** @pScreenBufferVga, align 8
  %50 = ptrtoint i8* %49 to i32
  %51 = call i32 @DPRINT(i32 %50)
  %52 = load i32, i32* @TRUE, align 4
  store i32 %52, i32* %1, align 4
  %53 = load i8*, i8** @pScreenBufferVga, align 8
  %54 = ptrtoint i8* %53 to i64
  store i64 %54, i64* %2, align 8
  %55 = load i8*, i8** @pScreenBufferVga, align 8
  %56 = load i32, i32* @SCREEN_BUFFER_SIZE, align 4
  %57 = call i32 @PICE_memset(i8* %55, i32 0, i32 %56)
  %58 = call i32 @DPRINT(i32 ptrtoint ([21 x i8]* @.str.1 to i32))
  %59 = call i32 (...) @EmptyRingBuffer()
  %60 = call i32 @DPRINT(i32 ptrtoint ([27 x i8]* @.str.2 to i32))
  br label %61

61:                                               ; preds = %48, %0
  %62 = call i32 (...) @LEAVE_FUNC()
  %63 = load i32, i32* %1, align 4
  ret i32 %63
}

declare dso_local i32 @ENTER_FUNC(...) #1

declare dso_local i32 @SetWindowGeometry(i32) #1

declare dso_local i8* @MmMapIoSpace(i32, i32, i32) #1

declare dso_local i8* @PICE_malloc(i32, i32) #1

declare dso_local i32 @DPRINT(i32) #1

declare dso_local i32 @PICE_memset(i8*, i32, i32) #1

declare dso_local i32 @EmptyRingBuffer(...) #1

declare dso_local i32 @LEAVE_FUNC(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
