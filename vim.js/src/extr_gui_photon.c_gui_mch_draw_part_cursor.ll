; ModuleID = '/home/carl/AnghaBench/vim.js/src/extr_gui_photon.c_gui_mch_draw_part_cursor.c'
source_filename = "/home/carl/AnghaBench/vim.js/src/extr_gui_photon.c_gui_mch_draw_part_cursor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i64, i32, i32 }
%struct.TYPE_8__ = type { %struct.TYPE_7__, %struct.TYPE_6__ }
%struct.TYPE_7__ = type { i64, i64 }
%struct.TYPE_6__ = type { i64, i64 }

@gui = common dso_local global %struct.TYPE_9__ zeroinitializer, align 8
@DRAW_START = common dso_local global i32 0, align 4
@Pg_DRAW_FILL = common dso_local global i32 0, align 4
@DRAW_END = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @gui_mch_draw_part_cursor(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_8__, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @gui, i32 0, i32 2), align 4
  %9 = call i64 @FILL_X(i32 %8)
  %10 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %7, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %10, i32 0, i32 1
  store i64 %9, i64* %11, align 8
  %12 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @gui, i32 0, i32 1), align 8
  %13 = call i64 @FILL_Y(i32 %12)
  %14 = load i64, i64* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @gui, i32 0, i32 0), align 8
  %15 = add nsw i64 %13, %14
  %16 = load i32, i32* %5, align 4
  %17 = sext i32 %16 to i64
  %18 = sub nsw i64 %15, %17
  %19 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %7, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %19, i32 0, i32 0
  store i64 %18, i64* %20, align 8
  %21 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %7, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = load i32, i32* %4, align 4
  %25 = sext i32 %24 to i64
  %26 = add nsw i64 %23, %25
  %27 = sub nsw i64 %26, 1
  %28 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %7, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 1
  store i64 %27, i64* %29, align 8
  %30 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %7, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i32, i32* %5, align 4
  %34 = sext i32 %33 to i64
  %35 = add nsw i64 %32, %34
  %36 = sub nsw i64 %35, 1
  %37 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %7, i32 0, i32 1
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 0
  store i64 %36, i64* %38, align 8
  %39 = load i32, i32* @DRAW_START, align 4
  %40 = load i32, i32* %6, align 4
  %41 = call i32 @gui_mch_set_bg_color(i32 %40)
  %42 = load i32, i32* @Pg_DRAW_FILL, align 4
  %43 = call i32 @PgDrawRect(%struct.TYPE_8__* %7, i32 %42)
  %44 = load i32, i32* @DRAW_END, align 4
  ret void
}

declare dso_local i64 @FILL_X(i32) #1

declare dso_local i64 @FILL_Y(i32) #1

declare dso_local i32 @gui_mch_set_bg_color(i32) #1

declare dso_local i32 @PgDrawRect(%struct.TYPE_8__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
