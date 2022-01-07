; ModuleID = '/home/carl/AnghaBench/vim.js/src/extr_gui_photon.c_gui_mch_set_shellsize.c'
source_filename = "/home/carl/AnghaBench/vim.js/src/extr_gui_photon.c_gui_mch_set_shellsize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32, i32, i32, i32 }

@gui = common dso_local global %struct.TYPE_5__ zeroinitializer, align 4
@Pt_ARG_MINIMUM_DIM = common dso_local global i32 0, align 4
@Pt_ARG_DIM = common dso_local global i32 0, align 4
@pg_margin_bottom = common dso_local global i64 0, align 8
@pg_margin_left = common dso_local global i64 0, align 8
@pg_margin_right = common dso_local global i64 0, align 8
@pg_margin_top = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @gui_mch_set_shellsize(i32 %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.TYPE_4__, align 4
  %16 = alloca %struct.TYPE_4__, align 4
  store i32 %0, i32* %8, align 4
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  store i32 %6, i32* %14, align 4
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %18 = load i32, i32* %8, align 4
  store i32 %18, i32* %17, align 4
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 1
  %20 = load i32, i32* %9, align 4
  store i32 %20, i32* %19, align 4
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 2
  store i32 0, i32* %21, align 4
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 3
  store i32 0, i32* %22, align 4
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %24 = load i32, i32* %10, align 4
  store i32 %24, i32* %23, align 4
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 1
  %26 = load i32, i32* %11, align 4
  store i32 %26, i32* %25, align 4
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 2
  store i32 0, i32* %27, align 4
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 3
  store i32 0, i32* %28, align 4
  %29 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @gui, i32 0, i32 0), align 4
  %30 = load i32, i32* @Pt_ARG_MINIMUM_DIM, align 4
  %31 = call i32 @PtSetResource(i32 %29, i32 %30, %struct.TYPE_4__* %16, i32 0)
  %32 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @gui, i32 0, i32 0), align 4
  %33 = load i32, i32* @Pt_ARG_DIM, align 4
  %34 = call i32 @PtSetResource(i32 %32, i32 %33, %struct.TYPE_4__* %15, i32 0)
  %35 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @gui, i32 0, i32 0), align 4
  %36 = call i32 @PtWidgetIsRealized(i32 %35)
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %40, label %38

38:                                               ; preds = %7
  %39 = call i32 (...) @gui_ph_resize_container()
  br label %40

40:                                               ; preds = %38, %7
  ret void
}

declare dso_local i32 @PtSetResource(i32, i32, %struct.TYPE_4__*, i32) #1

declare dso_local i32 @PtWidgetIsRealized(i32) #1

declare dso_local i32 @gui_ph_resize_container(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
