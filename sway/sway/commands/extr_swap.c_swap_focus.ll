; ModuleID = '/home/carl/AnghaBench/sway/sway/commands/extr_swap.c_swap_focus.c'
source_filename = "/home/carl/AnghaBench/sway/sway/commands/extr_swap.c_swap_focus.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.sway_seat = type { i32 }
%struct.sway_container = type { i32, %struct.sway_workspace* }
%struct.sway_workspace = type { i32 }

@L_TABBED = common dso_local global i32 0, align 4
@L_STACKED = common dso_local global i32 0, align 4
@root = common dso_local global %struct.TYPE_4__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sway_container*, %struct.sway_container*, %struct.sway_seat*, %struct.sway_container*)* @swap_focus to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @swap_focus(%struct.sway_container* %0, %struct.sway_container* %1, %struct.sway_seat* %2, %struct.sway_container* %3) #0 {
  %5 = alloca %struct.sway_container*, align 8
  %6 = alloca %struct.sway_container*, align 8
  %7 = alloca %struct.sway_seat*, align 8
  %8 = alloca %struct.sway_container*, align 8
  %9 = alloca %struct.sway_workspace*, align 8
  %10 = alloca %struct.sway_workspace*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.sway_container* %0, %struct.sway_container** %5, align 8
  store %struct.sway_container* %1, %struct.sway_container** %6, align 8
  store %struct.sway_seat* %2, %struct.sway_seat** %7, align 8
  store %struct.sway_container* %3, %struct.sway_container** %8, align 8
  %13 = load %struct.sway_container*, %struct.sway_container** %8, align 8
  %14 = load %struct.sway_container*, %struct.sway_container** %5, align 8
  %15 = icmp eq %struct.sway_container* %13, %14
  br i1 %15, label %20, label %16

16:                                               ; preds = %4
  %17 = load %struct.sway_container*, %struct.sway_container** %8, align 8
  %18 = load %struct.sway_container*, %struct.sway_container** %6, align 8
  %19 = icmp eq %struct.sway_container* %17, %18
  br i1 %19, label %20, label %119

20:                                               ; preds = %16, %4
  %21 = load %struct.sway_container*, %struct.sway_container** %5, align 8
  %22 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %21, i32 0, i32 1
  %23 = load %struct.sway_workspace*, %struct.sway_workspace** %22, align 8
  store %struct.sway_workspace* %23, %struct.sway_workspace** %9, align 8
  %24 = load %struct.sway_container*, %struct.sway_container** %6, align 8
  %25 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %24, i32 0, i32 1
  %26 = load %struct.sway_workspace*, %struct.sway_workspace** %25, align 8
  store %struct.sway_workspace* %26, %struct.sway_workspace** %10, align 8
  %27 = load %struct.sway_container*, %struct.sway_container** %5, align 8
  %28 = call i32 @container_parent_layout(%struct.sway_container* %27)
  store i32 %28, i32* %11, align 4
  %29 = load %struct.sway_container*, %struct.sway_container** %6, align 8
  %30 = call i32 @container_parent_layout(%struct.sway_container* %29)
  store i32 %30, i32* %12, align 4
  %31 = load %struct.sway_container*, %struct.sway_container** %8, align 8
  %32 = load %struct.sway_container*, %struct.sway_container** %5, align 8
  %33 = icmp eq %struct.sway_container* %31, %32
  br i1 %33, label %34, label %63

34:                                               ; preds = %20
  %35 = load i32, i32* %12, align 4
  %36 = load i32, i32* @L_TABBED, align 4
  %37 = icmp eq i32 %35, %36
  br i1 %37, label %42, label %38

38:                                               ; preds = %34
  %39 = load i32, i32* %12, align 4
  %40 = load i32, i32* @L_STACKED, align 4
  %41 = icmp eq i32 %39, %40
  br i1 %41, label %42, label %63

42:                                               ; preds = %38, %34
  %43 = load %struct.sway_workspace*, %struct.sway_workspace** %10, align 8
  %44 = call i64 @workspace_is_visible(%struct.sway_workspace* %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %51

46:                                               ; preds = %42
  %47 = load %struct.sway_seat*, %struct.sway_seat** %7, align 8
  %48 = load %struct.sway_container*, %struct.sway_container** %6, align 8
  %49 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %48, i32 0, i32 0
  %50 = call i32 @seat_set_focus(%struct.sway_seat* %47, i32* %49)
  br label %51

51:                                               ; preds = %46, %42
  %52 = load %struct.sway_seat*, %struct.sway_seat** %7, align 8
  %53 = load %struct.sway_workspace*, %struct.sway_workspace** %9, align 8
  %54 = load %struct.sway_workspace*, %struct.sway_workspace** %10, align 8
  %55 = icmp ne %struct.sway_workspace* %53, %54
  br i1 %55, label %56, label %58

56:                                               ; preds = %51
  %57 = load %struct.sway_container*, %struct.sway_container** %6, align 8
  br label %60

58:                                               ; preds = %51
  %59 = load %struct.sway_container*, %struct.sway_container** %5, align 8
  br label %60

60:                                               ; preds = %58, %56
  %61 = phi %struct.sway_container* [ %57, %56 ], [ %59, %58 ]
  %62 = call i32 @seat_set_focus_container(%struct.sway_seat* %52, %struct.sway_container* %61)
  br label %118

63:                                               ; preds = %38, %20
  %64 = load %struct.sway_container*, %struct.sway_container** %8, align 8
  %65 = load %struct.sway_container*, %struct.sway_container** %6, align 8
  %66 = icmp eq %struct.sway_container* %64, %65
  br i1 %66, label %67, label %96

67:                                               ; preds = %63
  %68 = load i32, i32* %11, align 4
  %69 = load i32, i32* @L_TABBED, align 4
  %70 = icmp eq i32 %68, %69
  br i1 %70, label %75, label %71

71:                                               ; preds = %67
  %72 = load i32, i32* %11, align 4
  %73 = load i32, i32* @L_STACKED, align 4
  %74 = icmp eq i32 %72, %73
  br i1 %74, label %75, label %96

75:                                               ; preds = %71, %67
  %76 = load %struct.sway_workspace*, %struct.sway_workspace** %9, align 8
  %77 = call i64 @workspace_is_visible(%struct.sway_workspace* %76)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %84

79:                                               ; preds = %75
  %80 = load %struct.sway_seat*, %struct.sway_seat** %7, align 8
  %81 = load %struct.sway_container*, %struct.sway_container** %5, align 8
  %82 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %81, i32 0, i32 0
  %83 = call i32 @seat_set_focus(%struct.sway_seat* %80, i32* %82)
  br label %84

84:                                               ; preds = %79, %75
  %85 = load %struct.sway_seat*, %struct.sway_seat** %7, align 8
  %86 = load %struct.sway_workspace*, %struct.sway_workspace** %9, align 8
  %87 = load %struct.sway_workspace*, %struct.sway_workspace** %10, align 8
  %88 = icmp ne %struct.sway_workspace* %86, %87
  br i1 %88, label %89, label %91

89:                                               ; preds = %84
  %90 = load %struct.sway_container*, %struct.sway_container** %5, align 8
  br label %93

91:                                               ; preds = %84
  %92 = load %struct.sway_container*, %struct.sway_container** %6, align 8
  br label %93

93:                                               ; preds = %91, %89
  %94 = phi %struct.sway_container* [ %90, %89 ], [ %92, %91 ]
  %95 = call i32 @seat_set_focus_container(%struct.sway_seat* %85, %struct.sway_container* %94)
  br label %117

96:                                               ; preds = %71, %63
  %97 = load %struct.sway_workspace*, %struct.sway_workspace** %9, align 8
  %98 = load %struct.sway_workspace*, %struct.sway_workspace** %10, align 8
  %99 = icmp ne %struct.sway_workspace* %97, %98
  br i1 %99, label %100, label %112

100:                                              ; preds = %96
  %101 = load %struct.sway_seat*, %struct.sway_seat** %7, align 8
  %102 = load %struct.sway_container*, %struct.sway_container** %8, align 8
  %103 = load %struct.sway_container*, %struct.sway_container** %5, align 8
  %104 = icmp eq %struct.sway_container* %102, %103
  br i1 %104, label %105, label %107

105:                                              ; preds = %100
  %106 = load %struct.sway_container*, %struct.sway_container** %6, align 8
  br label %109

107:                                              ; preds = %100
  %108 = load %struct.sway_container*, %struct.sway_container** %5, align 8
  br label %109

109:                                              ; preds = %107, %105
  %110 = phi %struct.sway_container* [ %106, %105 ], [ %108, %107 ]
  %111 = call i32 @seat_set_focus_container(%struct.sway_seat* %101, %struct.sway_container* %110)
  br label %116

112:                                              ; preds = %96
  %113 = load %struct.sway_seat*, %struct.sway_seat** %7, align 8
  %114 = load %struct.sway_container*, %struct.sway_container** %8, align 8
  %115 = call i32 @seat_set_focus_container(%struct.sway_seat* %113, %struct.sway_container* %114)
  br label %116

116:                                              ; preds = %112, %109
  br label %117

117:                                              ; preds = %116, %93
  br label %118

118:                                              ; preds = %117, %60
  br label %123

119:                                              ; preds = %16
  %120 = load %struct.sway_seat*, %struct.sway_seat** %7, align 8
  %121 = load %struct.sway_container*, %struct.sway_container** %8, align 8
  %122 = call i32 @seat_set_focus_container(%struct.sway_seat* %120, %struct.sway_container* %121)
  br label %123

123:                                              ; preds = %119, %118
  %124 = load %struct.TYPE_4__*, %struct.TYPE_4__** @root, align 8
  %125 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %124, i32 0, i32 0
  %126 = load %struct.TYPE_3__*, %struct.TYPE_3__** %125, align 8
  %127 = icmp ne %struct.TYPE_3__* %126, null
  br i1 %127, label %128, label %137

128:                                              ; preds = %123
  %129 = load %struct.sway_seat*, %struct.sway_seat** %7, align 8
  %130 = load %struct.sway_seat*, %struct.sway_seat** %7, align 8
  %131 = load %struct.TYPE_4__*, %struct.TYPE_4__** @root, align 8
  %132 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %131, i32 0, i32 0
  %133 = load %struct.TYPE_3__*, %struct.TYPE_3__** %132, align 8
  %134 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %133, i32 0, i32 0
  %135 = call i32* @seat_get_focus_inactive(%struct.sway_seat* %130, i32* %134)
  %136 = call i32 @seat_set_focus(%struct.sway_seat* %129, i32* %135)
  br label %137

137:                                              ; preds = %128, %123
  ret void
}

declare dso_local i32 @container_parent_layout(%struct.sway_container*) #1

declare dso_local i64 @workspace_is_visible(%struct.sway_workspace*) #1

declare dso_local i32 @seat_set_focus(%struct.sway_seat*, i32*) #1

declare dso_local i32 @seat_set_focus_container(%struct.sway_seat*, %struct.sway_container*) #1

declare dso_local i32* @seat_get_focus_inactive(%struct.sway_seat*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
