; ModuleID = '/home/carl/AnghaBench/reactos/modules/rosapps/applications/sysutils/utils/pice/module/extr_vga.c_RestoreGraphicsStateVga.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rosapps/applications/sysutils/utils/pice/module/extr_vga.c_RestoreGraphicsStateVga.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@cGraphTable2 = common dso_local global i32 0, align 4
@pScreenBufferSaveVga = common dso_local global i32 0, align 4
@pScreenBufferVga = common dso_local global i32 0, align 4
@pScreenBufferHardwareVga = common dso_local global i32 0, align 4
@SCREEN_BUFFER_SIZE = common dso_local global i32 0, align 4
@pScreenBufferTempVga = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @RestoreGraphicsStateVga() #0 {
  %1 = alloca i32, align 4
  %2 = call i32 @outb_p(i32 17, i32 980)
  %3 = call i32 @inb_p(i32 981)
  store i32 %3, i32* %1, align 4
  %4 = load i32, i32* %1, align 4
  %5 = and i32 %4, 127
  %6 = call i32 @outb_p(i32 %5, i32 981)
  %7 = call i32 (...) @pice_restore_current_registers()
  %8 = load i32, i32* @cGraphTable2, align 4
  %9 = call i32 @load_font(i32 %8, i32 0)
  %10 = load i32, i32* @pScreenBufferSaveVga, align 4
  store i32 %10, i32* @pScreenBufferVga, align 4
  %11 = load i32, i32* @pScreenBufferVga, align 4
  %12 = load i32, i32* @pScreenBufferHardwareVga, align 4
  %13 = load i32, i32* @SCREEN_BUFFER_SIZE, align 4
  %14 = call i32 @PICE_memcpy(i32 %11, i32 %12, i32 %13)
  %15 = load i32, i32* @pScreenBufferHardwareVga, align 4
  %16 = load i32, i32* @pScreenBufferTempVga, align 4
  %17 = load i32, i32* @SCREEN_BUFFER_SIZE, align 4
  %18 = call i32 @PICE_memcpy(i32 %15, i32 %16, i32 %17)
  ret void
}

declare dso_local i32 @outb_p(i32, i32) #1

declare dso_local i32 @inb_p(i32) #1

declare dso_local i32 @pice_restore_current_registers(...) #1

declare dso_local i32 @load_font(i32, i32) #1

declare dso_local i32 @PICE_memcpy(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
