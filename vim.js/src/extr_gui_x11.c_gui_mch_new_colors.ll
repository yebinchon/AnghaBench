; ModuleID = '/home/carl/AnghaBench/vim.js/src/extr_gui_x11.c_gui_mch_new_colors.c'
source_filename = "/home/carl/AnghaBench/vim.js/src/extr_gui_x11.c_gui_mch_new_colors.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32, i32*, i32, i32*, i32* }
%struct.TYPE_4__ = type { i32, i32, i32 }

@GCForeground = common dso_local global i32 0, align 4
@GCBackground = common dso_local global i32 0, align 4
@gui = common dso_local global %struct.TYPE_5__ zeroinitializer, align 8
@GCFunction = common dso_local global i32 0, align 4
@GXxor = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @gui_mch_new_colors() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.TYPE_4__, align 4
  %3 = load i32, i32* @GCForeground, align 4
  %4 = load i32, i32* @GCBackground, align 4
  %5 = or i32 %3, %4
  store i32 %5, i32* %1, align 4
  %6 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @gui, i32 0, i32 0), align 8
  %7 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %2, i32 0, i32 0
  store i32 %6, i32* %7, align 4
  %8 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @gui, i32 0, i32 1), align 4
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %2, i32 0, i32 1
  store i32 %8, i32* %9, align 4
  %10 = load i32*, i32** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @gui, i32 0, i32 5), align 8
  %11 = icmp ne i32* %10, null
  br i1 %11, label %12, label %17

12:                                               ; preds = %0
  %13 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @gui, i32 0, i32 3), align 8
  %14 = load i32*, i32** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @gui, i32 0, i32 5), align 8
  %15 = load i32, i32* %1, align 4
  %16 = call i32 @XChangeGC(i32 %13, i32* %14, i32 %15, %struct.TYPE_4__* %2)
  br label %17

17:                                               ; preds = %12, %0
  %18 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @gui, i32 0, i32 1), align 4
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %2, i32 0, i32 0
  store i32 %18, i32* %19, align 4
  %20 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @gui, i32 0, i32 0), align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %2, i32 0, i32 1
  store i32 %20, i32* %21, align 4
  %22 = load i32*, i32** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @gui, i32 0, i32 4), align 8
  %23 = icmp ne i32* %22, null
  br i1 %23, label %24, label %29

24:                                               ; preds = %17
  %25 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @gui, i32 0, i32 3), align 8
  %26 = load i32*, i32** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @gui, i32 0, i32 4), align 8
  %27 = load i32, i32* %1, align 4
  %28 = call i32 @XChangeGC(i32 %25, i32* %26, i32 %27, %struct.TYPE_4__* %2)
  br label %29

29:                                               ; preds = %24, %17
  %30 = load i32, i32* @GCFunction, align 4
  %31 = load i32, i32* %1, align 4
  %32 = or i32 %31, %30
  store i32 %32, i32* %1, align 4
  %33 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @gui, i32 0, i32 0), align 8
  %34 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @gui, i32 0, i32 1), align 4
  %35 = xor i32 %33, %34
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %2, i32 0, i32 0
  store i32 %35, i32* %36, align 4
  %37 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @gui, i32 0, i32 0), align 8
  %38 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @gui, i32 0, i32 1), align 4
  %39 = xor i32 %37, %38
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %2, i32 0, i32 1
  store i32 %39, i32* %40, align 4
  %41 = load i32, i32* @GXxor, align 4
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %2, i32 0, i32 2
  store i32 %41, i32* %42, align 4
  %43 = load i32*, i32** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @gui, i32 0, i32 2), align 8
  %44 = icmp ne i32* %43, null
  br i1 %44, label %45, label %50

45:                                               ; preds = %29
  %46 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @gui, i32 0, i32 3), align 8
  %47 = load i32*, i32** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @gui, i32 0, i32 2), align 8
  %48 = load i32, i32* %1, align 4
  %49 = call i32 @XChangeGC(i32 %46, i32* %47, i32 %48, %struct.TYPE_4__* %2)
  br label %50

50:                                               ; preds = %45, %29
  %51 = call i32 (...) @gui_x11_set_back_color()
  ret void
}

declare dso_local i32 @XChangeGC(i32, i32*, i32, %struct.TYPE_4__*) #1

declare dso_local i32 @gui_x11_set_back_color(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
