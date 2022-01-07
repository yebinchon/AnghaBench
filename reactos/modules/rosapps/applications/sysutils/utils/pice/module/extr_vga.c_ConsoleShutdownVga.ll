; ModuleID = '/home/carl/AnghaBench/reactos/modules/rosapps/applications/sysutils/utils/pice/module/extr_vga.c_ConsoleShutdownVga.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rosapps/applications/sysutils/utils/pice/module/extr_vga.c_ConsoleShutdownVga.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@pScreenBufferVga = common dso_local global i64 0, align 8
@pScreenBufferTempVga = common dso_local global i64 0, align 8
@pScreenBufferHardwareVga = common dso_local global i32 0, align 4
@SCREEN_BUFFER_SIZE = common dso_local global i32 0, align 4
@pFontBufferVga = common dso_local global i32 0, align 4
@FONTBUFFERSIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ConsoleShutdownVga() #0 {
  %1 = call i32 (...) @ENTER_FUNC()
  %2 = load i64, i64* @pScreenBufferVga, align 8
  %3 = icmp ne i64 %2, 0
  br i1 %3, label %4, label %15

4:                                                ; preds = %0
  %5 = load i64, i64* @pScreenBufferVga, align 8
  %6 = call i32 @PICE_free(i64 %5)
  %7 = load i64, i64* @pScreenBufferTempVga, align 8
  %8 = call i32 @PICE_free(i64 %7)
  %9 = load i32, i32* @pScreenBufferHardwareVga, align 4
  %10 = load i32, i32* @SCREEN_BUFFER_SIZE, align 4
  %11 = call i32 @MmUnmapIoSpace(i32 %9, i32 %10)
  %12 = load i32, i32* @pFontBufferVga, align 4
  %13 = load i32, i32* @FONTBUFFERSIZE, align 4
  %14 = call i32 @MmUnmapIoSpace(i32 %12, i32 %13)
  br label %15

15:                                               ; preds = %4, %0
  %16 = call i32 (...) @LEAVE_FUNC()
  ret void
}

declare dso_local i32 @ENTER_FUNC(...) #1

declare dso_local i32 @PICE_free(i64) #1

declare dso_local i32 @MmUnmapIoSpace(i32, i32) #1

declare dso_local i32 @LEAVE_FUNC(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
