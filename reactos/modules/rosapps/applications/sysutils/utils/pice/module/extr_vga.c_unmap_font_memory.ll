; ModuleID = '/home/carl/AnghaBench/reactos/modules/rosapps/applications/sysutils/utils/pice/module/extr_vga.c_unmap_font_memory.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rosapps/applications/sysutils/utils/pice/module/extr_vga.c_unmap_font_memory.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@GRAPHICS = common dso_local global i32 0, align 4
@GRREGENABLESETRESET = common dso_local global i32 0, align 4
@oldgraphicssetresetenable = common dso_local global i32 0, align 4
@GRREGWRMODE = common dso_local global i32 0, align 4
@oldgraphicsmode = common dso_local global i32 0, align 4
@GRREGREADMAPSEL = common dso_local global i32 0, align 4
@oldgraphicsreadmapsel = common dso_local global i32 0, align 4
@GRREGMISC = common dso_local global i32 0, align 4
@oldgraphicsmisc = common dso_local global i32 0, align 4
@SEQUENCER = common dso_local global i32 0, align 4
@SQREGMAPMASK = common dso_local global i32 0, align 4
@oldsqregmapmask = common dso_local global i32 0, align 4
@SQREGMEMORY = common dso_local global i32 0, align 4
@oldsqregmemory = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @unmap_font_memory() #0 {
  %1 = load i32, i32* @GRAPHICS, align 4
  %2 = load i32, i32* @GRREGENABLESETRESET, align 4
  %3 = load i32, i32* @oldgraphicssetresetenable, align 4
  %4 = call i32 @write_vga_reg(i32 %1, i32 %2, i32 %3)
  %5 = load i32, i32* @GRAPHICS, align 4
  %6 = load i32, i32* @GRREGWRMODE, align 4
  %7 = load i32, i32* @oldgraphicsmode, align 4
  %8 = call i32 @write_vga_reg(i32 %5, i32 %6, i32 %7)
  %9 = load i32, i32* @GRAPHICS, align 4
  %10 = load i32, i32* @GRREGREADMAPSEL, align 4
  %11 = load i32, i32* @oldgraphicsreadmapsel, align 4
  %12 = call i32 @write_vga_reg(i32 %9, i32 %10, i32 %11)
  %13 = load i32, i32* @GRAPHICS, align 4
  %14 = load i32, i32* @GRREGMISC, align 4
  %15 = load i32, i32* @oldgraphicsmisc, align 4
  %16 = call i32 @write_vga_reg(i32 %13, i32 %14, i32 %15)
  %17 = load i32, i32* @SEQUENCER, align 4
  %18 = load i32, i32* @SQREGMAPMASK, align 4
  %19 = load i32, i32* @oldsqregmapmask, align 4
  %20 = call i32 @write_vga_reg(i32 %17, i32 %18, i32 %19)
  %21 = load i32, i32* @SEQUENCER, align 4
  %22 = load i32, i32* @SQREGMEMORY, align 4
  %23 = load i32, i32* @oldsqregmemory, align 4
  %24 = call i32 @write_vga_reg(i32 %21, i32 %22, i32 %23)
  ret void
}

declare dso_local i32 @write_vga_reg(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
