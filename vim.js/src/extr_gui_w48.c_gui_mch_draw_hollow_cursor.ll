; ModuleID = '/home/carl/AnghaBench/vim.js/src/extr_gui_w48.c_gui_mch_draw_hollow_cursor.c'
source_filename = "/home/carl/AnghaBench/vim.js/src/extr_gui_w48.c_gui_mch_draw_hollow_cursor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64, i64, i32, i32 }
%struct.TYPE_4__ = type { i64, i64, i64, i64 }

@gui = common dso_local global %struct.TYPE_5__ zeroinitializer, align 8
@s_hdc = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @gui_mch_draw_hollow_cursor(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_4__, align 8
  store i32 %0, i32* %2, align 4
  %5 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @gui, i32 0, i32 2), align 8
  %6 = call i64 @FILL_X(i32 %5)
  %7 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %4, i32 0, i32 3
  store i64 %6, i64* %7, align 8
  %8 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @gui, i32 0, i32 3), align 4
  %9 = call i64 @FILL_Y(i32 %8)
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %4, i32 0, i32 0
  store i64 %9, i64* %10, align 8
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %4, i32 0, i32 3
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @gui, i32 0, i32 1), align 8
  %14 = add nsw i64 %12, %13
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %4, i32 0, i32 2
  store i64 %14, i64* %15, align 8
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %4, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @gui, i32 0, i32 0), align 8
  %19 = add nsw i64 %17, %18
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %4, i32 0, i32 1
  store i64 %19, i64* %20, align 8
  %21 = load i32, i32* %2, align 4
  %22 = call i32 @CreateSolidBrush(i32 %21)
  store i32 %22, i32* %3, align 4
  %23 = load i32, i32* @s_hdc, align 4
  %24 = load i32, i32* %3, align 4
  %25 = call i32 @FrameRect(i32 %23, %struct.TYPE_4__* %4, i32 %24)
  %26 = load i32, i32* %3, align 4
  %27 = call i32 @DeleteBrush(i32 %26)
  ret void
}

declare dso_local i64 @FILL_X(i32) #1

declare dso_local i64 @FILL_Y(i32) #1

declare dso_local i32 @CreateSolidBrush(i32) #1

declare dso_local i32 @FrameRect(i32, %struct.TYPE_4__*, i32) #1

declare dso_local i32 @DeleteBrush(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
