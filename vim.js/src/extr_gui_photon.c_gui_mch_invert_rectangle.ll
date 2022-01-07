; ModuleID = '/home/carl/AnghaBench/vim.js/src/extr_gui_photon.c_gui_mch_invert_rectangle.c'
source_filename = "/home/carl/AnghaBench/vim.js/src/extr_gui_photon.c_gui_mch_invert_rectangle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i32 }
%struct.TYPE_8__ = type { %struct.TYPE_6__, %struct.TYPE_7__ }
%struct.TYPE_6__ = type { i64, i64 }
%struct.TYPE_7__ = type { i64, i64 }

@gui = common dso_local global %struct.TYPE_9__ zeroinitializer, align 4
@DRAW_START = common dso_local global i32 0, align 4
@Pg_DrawModeDSTINVERT = common dso_local global i32 0, align 4
@Pg_DRAW_FILL = common dso_local global i32 0, align 4
@Pg_DrawModeSRCCOPY = common dso_local global i32 0, align 4
@DRAW_END = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @gui_mch_invert_rectangle(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_8__, align 8
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %10 = load i32, i32* %6, align 4
  %11 = call i64 @FILL_X(i32 %10)
  %12 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %9, i32 0, i32 1
  %13 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %12, i32 0, i32 1
  store i64 %11, i64* %13, align 8
  %14 = load i32, i32* %5, align 4
  %15 = call i64 @FILL_Y(i32 %14)
  %16 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %9, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 0
  store i64 %15, i64* %17, align 8
  %18 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %9, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = load i32, i32* %8, align 4
  %22 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @gui, i32 0, i32 0), align 4
  %23 = mul nsw i32 %21, %22
  %24 = sext i32 %23 to i64
  %25 = add nsw i64 %20, %24
  %26 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %9, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 1
  store i64 %25, i64* %27, align 8
  %28 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %9, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i32, i32* %7, align 4
  %32 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @gui, i32 0, i32 1), align 4
  %33 = mul nsw i32 %31, %32
  %34 = sext i32 %33 to i64
  %35 = add nsw i64 %30, %34
  %36 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %9, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 0
  store i64 %35, i64* %37, align 8
  %38 = load i32, i32* %8, align 4
  %39 = icmp sgt i32 %38, 0
  br i1 %39, label %40, label %45

40:                                               ; preds = %4
  %41 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %9, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = sub nsw i64 %43, 1
  store i64 %44, i64* %42, align 8
  br label %45

45:                                               ; preds = %40, %4
  %46 = load i32, i32* %7, align 4
  %47 = icmp sgt i32 %46, 0
  br i1 %47, label %48, label %53

48:                                               ; preds = %45
  %49 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %9, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = sub nsw i64 %51, 1
  store i64 %52, i64* %50, align 8
  br label %53

53:                                               ; preds = %48, %45
  %54 = load i32, i32* @DRAW_START, align 4
  %55 = load i32, i32* @Pg_DrawModeDSTINVERT, align 4
  %56 = call i32 @PgSetDrawMode(i32 %55)
  %57 = load i32, i32* @Pg_DRAW_FILL, align 4
  %58 = call i32 @PgDrawRect(%struct.TYPE_8__* %9, i32 %57)
  %59 = load i32, i32* @Pg_DrawModeSRCCOPY, align 4
  %60 = call i32 @PgSetDrawMode(i32 %59)
  %61 = load i32, i32* @DRAW_END, align 4
  ret void
}

declare dso_local i64 @FILL_X(i32) #1

declare dso_local i64 @FILL_Y(i32) #1

declare dso_local i32 @PgSetDrawMode(i32) #1

declare dso_local i32 @PgDrawRect(%struct.TYPE_8__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
