; ModuleID = '/home/carl/AnghaBench/sway/sway/input/extr_seatop_default.c_find_edge.c'
source_filename = "/home/carl/AnghaBench/sway/sway/input/extr_seatop_default.c_find_edge.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sway_container = type { i64, i64, i64, i64, i64, i64, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.wlr_surface* }
%struct.wlr_surface = type { i32 }
%struct.sway_cursor = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64, i64 }

@WLR_EDGE_NONE = common dso_local global i32 0, align 4
@B_NONE = common dso_local global i64 0, align 8
@B_CSD = common dso_local global i64 0, align 8
@WLR_EDGE_LEFT = common dso_local global i32 0, align 4
@WLR_EDGE_TOP = common dso_local global i32 0, align 4
@WLR_EDGE_RIGHT = common dso_local global i32 0, align 4
@WLR_EDGE_BOTTOM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sway_container*, %struct.wlr_surface*, %struct.sway_cursor*)* @find_edge to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @find_edge(%struct.sway_container* %0, %struct.wlr_surface* %1, %struct.sway_cursor* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.sway_container*, align 8
  %6 = alloca %struct.wlr_surface*, align 8
  %7 = alloca %struct.sway_cursor*, align 8
  %8 = alloca i32, align 4
  store %struct.sway_container* %0, %struct.sway_container** %5, align 8
  store %struct.wlr_surface* %1, %struct.wlr_surface** %6, align 8
  store %struct.sway_cursor* %2, %struct.sway_cursor** %7, align 8
  %9 = load %struct.sway_container*, %struct.sway_container** %5, align 8
  %10 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %9, i32 0, i32 6
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %12 = icmp ne %struct.TYPE_3__* %11, null
  br i1 %12, label %13, label %24

13:                                               ; preds = %3
  %14 = load %struct.wlr_surface*, %struct.wlr_surface** %6, align 8
  %15 = icmp ne %struct.wlr_surface* %14, null
  br i1 %15, label %16, label %26

16:                                               ; preds = %13
  %17 = load %struct.sway_container*, %struct.sway_container** %5, align 8
  %18 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %17, i32 0, i32 6
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  %21 = load %struct.wlr_surface*, %struct.wlr_surface** %20, align 8
  %22 = load %struct.wlr_surface*, %struct.wlr_surface** %6, align 8
  %23 = icmp ne %struct.wlr_surface* %21, %22
  br i1 %23, label %24, label %26

24:                                               ; preds = %16, %3
  %25 = load i32, i32* @WLR_EDGE_NONE, align 4
  store i32 %25, i32* %4, align 4
  br label %127

26:                                               ; preds = %16, %13
  %27 = load %struct.sway_container*, %struct.sway_container** %5, align 8
  %28 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @B_NONE, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %43, label %32

32:                                               ; preds = %26
  %33 = load %struct.sway_container*, %struct.sway_container** %5, align 8
  %34 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %43

37:                                               ; preds = %32
  %38 = load %struct.sway_container*, %struct.sway_container** %5, align 8
  %39 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @B_CSD, align 8
  %42 = icmp eq i64 %40, %41
  br i1 %42, label %43, label %45

43:                                               ; preds = %37, %32, %26
  %44 = load i32, i32* @WLR_EDGE_NONE, align 4
  store i32 %44, i32* %4, align 4
  br label %127

45:                                               ; preds = %37
  store i32 0, i32* %8, align 4
  %46 = load %struct.sway_cursor*, %struct.sway_cursor** %7, align 8
  %47 = getelementptr inbounds %struct.sway_cursor, %struct.sway_cursor* %46, i32 0, i32 0
  %48 = load %struct.TYPE_4__*, %struct.TYPE_4__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load %struct.sway_container*, %struct.sway_container** %5, align 8
  %52 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %51, i32 0, i32 2
  %53 = load i64, i64* %52, align 8
  %54 = load %struct.sway_container*, %struct.sway_container** %5, align 8
  %55 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %54, i32 0, i32 1
  %56 = load i64, i64* %55, align 8
  %57 = add nsw i64 %53, %56
  %58 = icmp slt i64 %50, %57
  br i1 %58, label %59, label %63

59:                                               ; preds = %45
  %60 = load i32, i32* @WLR_EDGE_LEFT, align 4
  %61 = load i32, i32* %8, align 4
  %62 = or i32 %61, %60
  store i32 %62, i32* %8, align 4
  br label %63

63:                                               ; preds = %59, %45
  %64 = load %struct.sway_cursor*, %struct.sway_cursor** %7, align 8
  %65 = getelementptr inbounds %struct.sway_cursor, %struct.sway_cursor* %64, i32 0, i32 0
  %66 = load %struct.TYPE_4__*, %struct.TYPE_4__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 1
  %68 = load i64, i64* %67, align 8
  %69 = load %struct.sway_container*, %struct.sway_container** %5, align 8
  %70 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %69, i32 0, i32 3
  %71 = load i64, i64* %70, align 8
  %72 = load %struct.sway_container*, %struct.sway_container** %5, align 8
  %73 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %72, i32 0, i32 1
  %74 = load i64, i64* %73, align 8
  %75 = add nsw i64 %71, %74
  %76 = icmp slt i64 %68, %75
  br i1 %76, label %77, label %81

77:                                               ; preds = %63
  %78 = load i32, i32* @WLR_EDGE_TOP, align 4
  %79 = load i32, i32* %8, align 4
  %80 = or i32 %79, %78
  store i32 %80, i32* %8, align 4
  br label %81

81:                                               ; preds = %77, %63
  %82 = load %struct.sway_cursor*, %struct.sway_cursor** %7, align 8
  %83 = getelementptr inbounds %struct.sway_cursor, %struct.sway_cursor* %82, i32 0, i32 0
  %84 = load %struct.TYPE_4__*, %struct.TYPE_4__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = load %struct.sway_container*, %struct.sway_container** %5, align 8
  %88 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %87, i32 0, i32 2
  %89 = load i64, i64* %88, align 8
  %90 = load %struct.sway_container*, %struct.sway_container** %5, align 8
  %91 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %90, i32 0, i32 4
  %92 = load i64, i64* %91, align 8
  %93 = add nsw i64 %89, %92
  %94 = load %struct.sway_container*, %struct.sway_container** %5, align 8
  %95 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %94, i32 0, i32 1
  %96 = load i64, i64* %95, align 8
  %97 = sub nsw i64 %93, %96
  %98 = icmp sge i64 %86, %97
  br i1 %98, label %99, label %103

99:                                               ; preds = %81
  %100 = load i32, i32* @WLR_EDGE_RIGHT, align 4
  %101 = load i32, i32* %8, align 4
  %102 = or i32 %101, %100
  store i32 %102, i32* %8, align 4
  br label %103

103:                                              ; preds = %99, %81
  %104 = load %struct.sway_cursor*, %struct.sway_cursor** %7, align 8
  %105 = getelementptr inbounds %struct.sway_cursor, %struct.sway_cursor* %104, i32 0, i32 0
  %106 = load %struct.TYPE_4__*, %struct.TYPE_4__** %105, align 8
  %107 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %106, i32 0, i32 1
  %108 = load i64, i64* %107, align 8
  %109 = load %struct.sway_container*, %struct.sway_container** %5, align 8
  %110 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %109, i32 0, i32 3
  %111 = load i64, i64* %110, align 8
  %112 = load %struct.sway_container*, %struct.sway_container** %5, align 8
  %113 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %112, i32 0, i32 5
  %114 = load i64, i64* %113, align 8
  %115 = add nsw i64 %111, %114
  %116 = load %struct.sway_container*, %struct.sway_container** %5, align 8
  %117 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %116, i32 0, i32 1
  %118 = load i64, i64* %117, align 8
  %119 = sub nsw i64 %115, %118
  %120 = icmp sge i64 %108, %119
  br i1 %120, label %121, label %125

121:                                              ; preds = %103
  %122 = load i32, i32* @WLR_EDGE_BOTTOM, align 4
  %123 = load i32, i32* %8, align 4
  %124 = or i32 %123, %122
  store i32 %124, i32* %8, align 4
  br label %125

125:                                              ; preds = %121, %103
  %126 = load i32, i32* %8, align 4
  store i32 %126, i32* %4, align 4
  br label %127

127:                                              ; preds = %125, %43, %24
  %128 = load i32, i32* %4, align 4
  ret i32 %128
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
