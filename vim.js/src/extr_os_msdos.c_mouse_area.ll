; ModuleID = '/home/carl/AnghaBench/vim.js/src/extr_os_msdos.c_mouse_area.c'
source_filename = "/home/carl/AnghaBench/vim.js/src/extr_os_msdos.c_mouse_area.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.REGS = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i64 }

@mouse_avail = common dso_local global i64 0, align 8
@Columns = common dso_local global i32 0, align 4
@mouse_x_div = common dso_local global i32 0, align 4
@Rows = common dso_local global i32 0, align 4
@mouse_y_div = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @mouse_area to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mouse_area() #0 {
  %1 = alloca %union.REGS, align 8
  %2 = load i64, i64* @mouse_avail, align 8
  %3 = icmp ne i64 %2, 0
  br i1 %3, label %4, label %27

4:                                                ; preds = %0
  %5 = bitcast %union.REGS* %1 to %struct.TYPE_2__*
  %6 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %5, i32 0, i32 2
  store i64 0, i64* %6, align 8
  %7 = load i32, i32* @Columns, align 4
  %8 = load i32, i32* @mouse_x_div, align 4
  %9 = mul nsw i32 %7, %8
  %10 = sub nsw i32 %9, 1
  %11 = bitcast %union.REGS* %1 to %struct.TYPE_2__*
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  store i32 %10, i32* %12, align 8
  %13 = bitcast %union.REGS* %1 to %struct.TYPE_2__*
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 1
  store i32 7, i32* %14, align 4
  %15 = call i32 @int86(i32 51, %union.REGS* %1, %union.REGS* %1)
  %16 = bitcast %union.REGS* %1 to %struct.TYPE_2__*
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 2
  store i64 0, i64* %17, align 8
  %18 = load i32, i32* @Rows, align 4
  %19 = load i32, i32* @mouse_y_div, align 4
  %20 = mul nsw i32 %18, %19
  %21 = sub nsw i32 %20, 1
  %22 = bitcast %union.REGS* %1 to %struct.TYPE_2__*
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  store i32 %21, i32* %23, align 8
  %24 = bitcast %union.REGS* %1 to %struct.TYPE_2__*
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 1
  store i32 8, i32* %25, align 4
  %26 = call i32 @int86(i32 51, %union.REGS* %1, %union.REGS* %1)
  br label %27

27:                                               ; preds = %4, %0
  ret void
}

declare dso_local i32 @int86(i32, %union.REGS*, %union.REGS*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
