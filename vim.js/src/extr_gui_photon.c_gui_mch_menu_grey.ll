; ModuleID = '/home/carl/AnghaBench/vim.js/src/extr_gui_photon.c_gui_mch_menu_grey.c'
source_filename = "/home/carl/AnghaBench/vim.js/src/extr_gui_photon.c_gui_mch_menu_grey.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32* }

@PtMenuButton = common dso_local global i32 0, align 4
@PtMenu = common dso_local global i32 0, align 4
@Pt_FALSE = common dso_local global i64 0, align 8
@Pt_SELECTABLE = common dso_local global i64 0, align 8
@Pt_HIGHLIGHTED = common dso_local global i64 0, align 8
@Pt_TRUE = common dso_local global i64 0, align 8
@Pt_BLOCKED = common dso_local global i64 0, align 8
@Pt_GHOST = common dso_local global i64 0, align 8
@Pt_ARG_FLAGS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @gui_mch_menu_grey(%struct.TYPE_3__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 0
  %10 = load i32*, i32** %9, align 8
  %11 = icmp eq i32* %10, null
  br i1 %11, label %12, label %13

12:                                               ; preds = %2
  br label %56

13:                                               ; preds = %2
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %16 = load i32*, i32** %15, align 8
  %17 = call i64 @PtWidgetFlags(i32* %16)
  store i64 %17, i64* %5, align 8
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = load i32*, i32** %19, align 8
  %21 = load i32, i32* @PtMenuButton, align 4
  %22 = call i64 @PtWidgetIsClass(i32* %20, i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %37

24:                                               ; preds = %13
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 0
  %27 = load i32*, i32** %26, align 8
  %28 = call i32* @PtWidgetParent(i32* %27)
  %29 = load i32, i32* @PtMenu, align 4
  %30 = call i64 @PtWidgetIsClass(i32* %28, i32 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %37

32:                                               ; preds = %24
  %33 = load i64, i64* @Pt_FALSE, align 8
  store i64 %33, i64* %7, align 8
  %34 = load i64, i64* @Pt_SELECTABLE, align 8
  %35 = load i64, i64* @Pt_HIGHLIGHTED, align 8
  %36 = or i64 %34, %35
  store i64 %36, i64* %6, align 8
  br label %42

37:                                               ; preds = %24, %13
  %38 = load i64, i64* @Pt_TRUE, align 8
  store i64 %38, i64* %7, align 8
  %39 = load i64, i64* @Pt_BLOCKED, align 8
  %40 = load i64, i64* @Pt_GHOST, align 8
  %41 = or i64 %39, %40
  store i64 %41, i64* %6, align 8
  br label %42

42:                                               ; preds = %37, %32
  %43 = load i32, i32* %4, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %48, label %45

45:                                               ; preds = %42
  %46 = load i64, i64* %7, align 8
  %47 = xor i64 %46, -1
  store i64 %47, i64* %7, align 8
  br label %48

48:                                               ; preds = %45, %42
  %49 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 0
  %51 = load i32*, i32** %50, align 8
  %52 = load i32, i32* @Pt_ARG_FLAGS, align 4
  %53 = load i64, i64* %7, align 8
  %54 = load i64, i64* %6, align 8
  %55 = call i32 @PtSetResource(i32* %51, i32 %52, i64 %53, i64 %54)
  br label %56

56:                                               ; preds = %48, %12
  ret void
}

declare dso_local i64 @PtWidgetFlags(i32*) #1

declare dso_local i64 @PtWidgetIsClass(i32*, i32) #1

declare dso_local i32* @PtWidgetParent(i32*) #1

declare dso_local i32 @PtSetResource(i32*, i32, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
