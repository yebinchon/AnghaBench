; ModuleID = '/home/carl/AnghaBench/sway/sway/tree/extr_arrange.c_arrange_root.c'
source_filename = "/home/carl/AnghaBench/sway/sway/tree/extr_arrange.c_arrange_root.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64 }
%struct.TYPE_5__ = type { %struct.TYPE_4__*, i32, i32, i32, i32, %struct.sway_container*, i32 }
%struct.TYPE_4__ = type { i32, %struct.sway_output** }
%struct.sway_output = type { i32 }
%struct.sway_container = type { i32, i32, i32, i32 }
%struct.wlr_box = type { i32, i32, i32, i32 }

@config = common dso_local global %struct.TYPE_6__* null, align 8
@root = common dso_local global %struct.TYPE_5__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @arrange_root() #0 {
  %1 = alloca %struct.wlr_box*, align 8
  %2 = alloca %struct.sway_container*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.sway_output*, align 8
  %5 = load %struct.TYPE_6__*, %struct.TYPE_6__** @config, align 8
  %6 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %10

9:                                                ; preds = %0
  br label %90

10:                                               ; preds = %0
  %11 = load %struct.TYPE_5__*, %struct.TYPE_5__** @root, align 8
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 6
  %13 = load i32, i32* %12, align 8
  %14 = call %struct.wlr_box* @wlr_output_layout_get_box(i32 %13, i32* null)
  store %struct.wlr_box* %14, %struct.wlr_box** %1, align 8
  %15 = load %struct.wlr_box*, %struct.wlr_box** %1, align 8
  %16 = getelementptr inbounds %struct.wlr_box, %struct.wlr_box* %15, i32 0, i32 3
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** @root, align 8
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 4
  store i32 %17, i32* %19, align 4
  %20 = load %struct.wlr_box*, %struct.wlr_box** %1, align 8
  %21 = getelementptr inbounds %struct.wlr_box, %struct.wlr_box* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.TYPE_5__*, %struct.TYPE_5__** @root, align 8
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 3
  store i32 %22, i32* %24, align 8
  %25 = load %struct.wlr_box*, %struct.wlr_box** %1, align 8
  %26 = getelementptr inbounds %struct.wlr_box, %struct.wlr_box* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.TYPE_5__*, %struct.TYPE_5__** @root, align 8
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 2
  store i32 %27, i32* %29, align 4
  %30 = load %struct.wlr_box*, %struct.wlr_box** %1, align 8
  %31 = getelementptr inbounds %struct.wlr_box, %struct.wlr_box* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.TYPE_5__*, %struct.TYPE_5__** @root, align 8
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 1
  store i32 %32, i32* %34, align 8
  %35 = load %struct.TYPE_5__*, %struct.TYPE_5__** @root, align 8
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 5
  %37 = load %struct.sway_container*, %struct.sway_container** %36, align 8
  %38 = icmp ne %struct.sway_container* %37, null
  br i1 %38, label %39, label %65

39:                                               ; preds = %10
  %40 = load %struct.TYPE_5__*, %struct.TYPE_5__** @root, align 8
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 5
  %42 = load %struct.sway_container*, %struct.sway_container** %41, align 8
  store %struct.sway_container* %42, %struct.sway_container** %2, align 8
  %43 = load %struct.TYPE_5__*, %struct.TYPE_5__** @root, align 8
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 4
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.sway_container*, %struct.sway_container** %2, align 8
  %47 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %46, i32 0, i32 3
  store i32 %45, i32* %47, align 4
  %48 = load %struct.TYPE_5__*, %struct.TYPE_5__** @root, align 8
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i32 0, i32 3
  %50 = load i32, i32* %49, align 8
  %51 = load %struct.sway_container*, %struct.sway_container** %2, align 8
  %52 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %51, i32 0, i32 2
  store i32 %50, i32* %52, align 4
  %53 = load %struct.TYPE_5__*, %struct.TYPE_5__** @root, align 8
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.sway_container*, %struct.sway_container** %2, align 8
  %57 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %56, i32 0, i32 1
  store i32 %55, i32* %57, align 4
  %58 = load %struct.TYPE_5__*, %struct.TYPE_5__** @root, align 8
  %59 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 8
  %61 = load %struct.sway_container*, %struct.sway_container** %2, align 8
  %62 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %61, i32 0, i32 0
  store i32 %60, i32* %62, align 4
  %63 = load %struct.sway_container*, %struct.sway_container** %2, align 8
  %64 = call i32 @arrange_container(%struct.sway_container* %63)
  br label %90

65:                                               ; preds = %10
  store i32 0, i32* %3, align 4
  br label %66

66:                                               ; preds = %86, %65
  %67 = load i32, i32* %3, align 4
  %68 = load %struct.TYPE_5__*, %struct.TYPE_5__** @root, align 8
  %69 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %68, i32 0, i32 0
  %70 = load %struct.TYPE_4__*, %struct.TYPE_4__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = icmp slt i32 %67, %72
  br i1 %73, label %74, label %89

74:                                               ; preds = %66
  %75 = load %struct.TYPE_5__*, %struct.TYPE_5__** @root, align 8
  %76 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %75, i32 0, i32 0
  %77 = load %struct.TYPE_4__*, %struct.TYPE_4__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %77, i32 0, i32 1
  %79 = load %struct.sway_output**, %struct.sway_output*** %78, align 8
  %80 = load i32, i32* %3, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds %struct.sway_output*, %struct.sway_output** %79, i64 %81
  %83 = load %struct.sway_output*, %struct.sway_output** %82, align 8
  store %struct.sway_output* %83, %struct.sway_output** %4, align 8
  %84 = load %struct.sway_output*, %struct.sway_output** %4, align 8
  %85 = call i32 @arrange_output(%struct.sway_output* %84)
  br label %86

86:                                               ; preds = %74
  %87 = load i32, i32* %3, align 4
  %88 = add nsw i32 %87, 1
  store i32 %88, i32* %3, align 4
  br label %66

89:                                               ; preds = %66
  br label %90

90:                                               ; preds = %9, %89, %39
  ret void
}

declare dso_local %struct.wlr_box* @wlr_output_layout_get_box(i32, i32*) #1

declare dso_local i32 @arrange_container(%struct.sway_container*) #1

declare dso_local i32 @arrange_output(%struct.sway_output*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
