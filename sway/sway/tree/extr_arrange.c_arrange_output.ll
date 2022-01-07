; ModuleID = '/home/carl/AnghaBench/sway/sway/tree/extr_arrange.c_arrange_output.c'
source_filename = "/home/carl/AnghaBench/sway/sway/tree/extr_arrange.c_arrange_output.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64 }
%struct.TYPE_5__ = type { i32 }
%struct.sway_output = type { %struct.TYPE_4__*, i32, i32, i32, i32, i32 }
%struct.TYPE_4__ = type { i32, %struct.sway_workspace** }
%struct.sway_workspace = type { i32 }
%struct.wlr_box = type { i32, i32, i32, i32 }

@config = common dso_local global %struct.TYPE_6__* null, align 8
@root = common dso_local global %struct.TYPE_5__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @arrange_output(%struct.sway_output* %0) #0 {
  %2 = alloca %struct.sway_output*, align 8
  %3 = alloca %struct.wlr_box*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.sway_workspace*, align 8
  store %struct.sway_output* %0, %struct.sway_output** %2, align 8
  %6 = load %struct.TYPE_6__*, %struct.TYPE_6__** @config, align 8
  %7 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %1
  br label %62

11:                                               ; preds = %1
  %12 = load %struct.TYPE_5__*, %struct.TYPE_5__** @root, align 8
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.sway_output*, %struct.sway_output** %2, align 8
  %16 = getelementptr inbounds %struct.sway_output, %struct.sway_output* %15, i32 0, i32 5
  %17 = load i32, i32* %16, align 8
  %18 = call %struct.wlr_box* @wlr_output_layout_get_box(i32 %14, i32 %17)
  store %struct.wlr_box* %18, %struct.wlr_box** %3, align 8
  %19 = load %struct.wlr_box*, %struct.wlr_box** %3, align 8
  %20 = getelementptr inbounds %struct.wlr_box, %struct.wlr_box* %19, i32 0, i32 3
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.sway_output*, %struct.sway_output** %2, align 8
  %23 = getelementptr inbounds %struct.sway_output, %struct.sway_output* %22, i32 0, i32 4
  store i32 %21, i32* %23, align 4
  %24 = load %struct.wlr_box*, %struct.wlr_box** %3, align 8
  %25 = getelementptr inbounds %struct.wlr_box, %struct.wlr_box* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.sway_output*, %struct.sway_output** %2, align 8
  %28 = getelementptr inbounds %struct.sway_output, %struct.sway_output* %27, i32 0, i32 3
  store i32 %26, i32* %28, align 8
  %29 = load %struct.wlr_box*, %struct.wlr_box** %3, align 8
  %30 = getelementptr inbounds %struct.wlr_box, %struct.wlr_box* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.sway_output*, %struct.sway_output** %2, align 8
  %33 = getelementptr inbounds %struct.sway_output, %struct.sway_output* %32, i32 0, i32 2
  store i32 %31, i32* %33, align 4
  %34 = load %struct.wlr_box*, %struct.wlr_box** %3, align 8
  %35 = getelementptr inbounds %struct.wlr_box, %struct.wlr_box* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.sway_output*, %struct.sway_output** %2, align 8
  %38 = getelementptr inbounds %struct.sway_output, %struct.sway_output* %37, i32 0, i32 1
  store i32 %36, i32* %38, align 8
  store i32 0, i32* %4, align 4
  br label %39

39:                                               ; preds = %59, %11
  %40 = load i32, i32* %4, align 4
  %41 = load %struct.sway_output*, %struct.sway_output** %2, align 8
  %42 = getelementptr inbounds %struct.sway_output, %struct.sway_output* %41, i32 0, i32 0
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = icmp slt i32 %40, %45
  br i1 %46, label %47, label %62

47:                                               ; preds = %39
  %48 = load %struct.sway_output*, %struct.sway_output** %2, align 8
  %49 = getelementptr inbounds %struct.sway_output, %struct.sway_output* %48, i32 0, i32 0
  %50 = load %struct.TYPE_4__*, %struct.TYPE_4__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 1
  %52 = load %struct.sway_workspace**, %struct.sway_workspace*** %51, align 8
  %53 = load i32, i32* %4, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds %struct.sway_workspace*, %struct.sway_workspace** %52, i64 %54
  %56 = load %struct.sway_workspace*, %struct.sway_workspace** %55, align 8
  store %struct.sway_workspace* %56, %struct.sway_workspace** %5, align 8
  %57 = load %struct.sway_workspace*, %struct.sway_workspace** %5, align 8
  %58 = call i32 @arrange_workspace(%struct.sway_workspace* %57)
  br label %59

59:                                               ; preds = %47
  %60 = load i32, i32* %4, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %4, align 4
  br label %39

62:                                               ; preds = %10, %39
  ret void
}

declare dso_local %struct.wlr_box* @wlr_output_layout_get_box(i32, i32) #1

declare dso_local i32 @arrange_workspace(%struct.sway_workspace*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
