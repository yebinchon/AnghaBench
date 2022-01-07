; ModuleID = '/home/carl/AnghaBench/vim.js/src/extr_gui_photon.c_gui_mch_clear_block.c'
source_filename = "/home/carl/AnghaBench/vim.js/src/extr_gui_photon.c_gui_mch_clear_block.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32 }
%struct.TYPE_8__ = type { %struct.TYPE_7__, %struct.TYPE_6__ }
%struct.TYPE_7__ = type { i32, i32 }
%struct.TYPE_6__ = type { i32, i32 }

@DRAW_START = common dso_local global i32 0, align 4
@gui = common dso_local global %struct.TYPE_9__ zeroinitializer, align 4
@Pg_DRAW_FILL = common dso_local global i32 0, align 4
@DRAW_END = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @gui_mch_clear_block(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_8__, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %10 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %10, i32 0, i32 0
  %12 = load i32, i32* %6, align 4
  %13 = call i32 @FILL_X(i32 %12)
  store i32 %13, i32* %11, align 4
  %14 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %10, i32 0, i32 1
  %15 = load i32, i32* %5, align 4
  %16 = call i32 @FILL_Y(i32 %15)
  store i32 %16, i32* %14, align 4
  %17 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %9, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 0
  %19 = load i32, i32* %8, align 4
  %20 = add nsw i32 %19, 1
  %21 = call i32 @FILL_X(i32 %20)
  %22 = sub nsw i32 %21, 1
  store i32 %22, i32* %18, align 4
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 1
  %24 = load i32, i32* %7, align 4
  %25 = add nsw i32 %24, 1
  %26 = call i32 @FILL_Y(i32 %25)
  %27 = sub nsw i32 %26, 1
  store i32 %27, i32* %23, align 4
  %28 = load i32, i32* @DRAW_START, align 4
  %29 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @gui, i32 0, i32 0), align 4
  %30 = call i32 @gui_mch_set_bg_color(i32 %29)
  %31 = load i32, i32* @Pg_DRAW_FILL, align 4
  %32 = call i32 @PgDrawRect(%struct.TYPE_8__* %9, i32 %31)
  %33 = load i32, i32* @DRAW_END, align 4
  ret void
}

declare dso_local i32 @FILL_X(i32) #1

declare dso_local i32 @FILL_Y(i32) #1

declare dso_local i32 @gui_mch_set_bg_color(i32) #1

declare dso_local i32 @PgDrawRect(%struct.TYPE_8__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
