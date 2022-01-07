; ModuleID = '/home/carl/AnghaBench/reactos/modules/rosapps/applications/sysutils/utils/pice/module/extr_vga.c_SaveGraphicsStateVga.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rosapps/applications/sysutils/utils/pice/module/extr_vga.c_SaveGraphicsStateVga.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@cGraphTable2 = common dso_local global i32 0, align 4
@cGraphTable = common dso_local global i32 0, align 4
@pScreenBufferTempVga = common dso_local global i32 0, align 4
@pScreenBufferHardwareVga = common dso_local global i32 0, align 4
@SCREEN_BUFFER_SIZE = common dso_local global i32 0, align 4
@pScreenBufferVga = common dso_local global i32 0, align 4
@pScreenBufferSaveVga = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @SaveGraphicsStateVga() #0 {
  %1 = alloca i32, align 4
  %2 = call i32 (...) @pice_save_current_registers()
  %3 = call i32 @outb_p(i32 17, i32 980)
  %4 = call i32 @inb_p(i32 981)
  store i32 %4, i32* %1, align 4
  %5 = load i32, i32* %1, align 4
  %6 = and i32 %5, 127
  %7 = call i32 @outb_p(i32 %6, i32 981)
  %8 = load i32, i32* @cGraphTable2, align 4
  %9 = call i32 @save_font(i32 %8)
  %10 = call i32 (...) @pice_set_mode_3_80x25()
  %11 = load i32, i32* @cGraphTable, align 4
  %12 = call i32 @load_font(i32 %11, i32 1)
  %13 = load i32, i32* @pScreenBufferTempVga, align 4
  %14 = load i32, i32* @pScreenBufferHardwareVga, align 4
  %15 = load i32, i32* @SCREEN_BUFFER_SIZE, align 4
  %16 = call i32 @PICE_memcpy(i32 %13, i32 %14, i32 %15)
  %17 = load i32, i32* @pScreenBufferHardwareVga, align 4
  %18 = load i32, i32* @pScreenBufferVga, align 4
  %19 = load i32, i32* @SCREEN_BUFFER_SIZE, align 4
  %20 = call i32 @PICE_memcpy(i32 %17, i32 %18, i32 %19)
  %21 = load i32, i32* @pScreenBufferVga, align 4
  store i32 %21, i32* @pScreenBufferSaveVga, align 4
  %22 = load i32, i32* @pScreenBufferHardwareVga, align 4
  store i32 %22, i32* @pScreenBufferVga, align 4
  ret void
}

declare dso_local i32 @pice_save_current_registers(...) #1

declare dso_local i32 @outb_p(i32, i32) #1

declare dso_local i32 @inb_p(i32) #1

declare dso_local i32 @save_font(i32) #1

declare dso_local i32 @pice_set_mode_3_80x25(...) #1

declare dso_local i32 @load_font(i32, i32) #1

declare dso_local i32 @PICE_memcpy(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
