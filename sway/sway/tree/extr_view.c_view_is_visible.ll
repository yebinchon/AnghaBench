; ModuleID = '/home/carl/AnghaBench/sway/sway/tree/extr_view.c_view_is_visible.c'
source_filename = "/home/carl/AnghaBench/sway/sway/tree/extr_view.c_view_is_visible.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { %struct.sway_container* }
%struct.sway_container = type { i64, %struct.sway_container*, %struct.sway_node, %struct.sway_workspace*, i32 }
%struct.sway_node = type { i64 }
%struct.sway_workspace = type { %struct.sway_container*, %struct.sway_node }
%struct.sway_view = type { %struct.sway_container* }
%struct.sway_seat = type { i32 }

@FULLSCREEN_GLOBAL = common dso_local global i64 0, align 8
@L_TABBED = common dso_local global i32 0, align 4
@L_STACKED = common dso_local global i32 0, align 4
@root = common dso_local global %struct.TYPE_2__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @view_is_visible(%struct.sway_view* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.sway_view*, align 8
  %4 = alloca %struct.sway_workspace*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.sway_container*, align 8
  %7 = alloca %struct.sway_container*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.sway_seat*, align 8
  %10 = alloca %struct.sway_container*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.sway_node*, align 8
  %13 = alloca %struct.sway_container*, align 8
  store %struct.sway_view* %0, %struct.sway_view** %3, align 8
  %14 = load %struct.sway_view*, %struct.sway_view** %3, align 8
  %15 = getelementptr inbounds %struct.sway_view, %struct.sway_view* %14, i32 0, i32 0
  %16 = load %struct.sway_container*, %struct.sway_container** %15, align 8
  %17 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %16, i32 0, i32 2
  %18 = getelementptr inbounds %struct.sway_node, %struct.sway_node* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %181

22:                                               ; preds = %1
  %23 = load %struct.sway_view*, %struct.sway_view** %3, align 8
  %24 = getelementptr inbounds %struct.sway_view, %struct.sway_view* %23, i32 0, i32 0
  %25 = load %struct.sway_container*, %struct.sway_container** %24, align 8
  %26 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %25, i32 0, i32 3
  %27 = load %struct.sway_workspace*, %struct.sway_workspace** %26, align 8
  store %struct.sway_workspace* %27, %struct.sway_workspace** %4, align 8
  %28 = load %struct.sway_workspace*, %struct.sway_workspace** %4, align 8
  %29 = icmp ne %struct.sway_workspace* %28, null
  br i1 %29, label %63, label %30

30:                                               ; preds = %22
  %31 = load %struct.sway_view*, %struct.sway_view** %3, align 8
  %32 = getelementptr inbounds %struct.sway_view, %struct.sway_view* %31, i32 0, i32 0
  %33 = load %struct.sway_container*, %struct.sway_container** %32, align 8
  %34 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @FULLSCREEN_GLOBAL, align 8
  %37 = icmp ne i64 %35, %36
  br i1 %37, label %38, label %63

38:                                               ; preds = %30
  store i32 0, i32* %5, align 4
  %39 = load %struct.sway_view*, %struct.sway_view** %3, align 8
  %40 = getelementptr inbounds %struct.sway_view, %struct.sway_view* %39, i32 0, i32 0
  %41 = load %struct.sway_container*, %struct.sway_container** %40, align 8
  %42 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %41, i32 0, i32 1
  %43 = load %struct.sway_container*, %struct.sway_container** %42, align 8
  store %struct.sway_container* %43, %struct.sway_container** %6, align 8
  br label %44

44:                                               ; preds = %54, %38
  %45 = load %struct.sway_container*, %struct.sway_container** %6, align 8
  %46 = icmp ne %struct.sway_container* %45, null
  br i1 %46, label %47, label %58

47:                                               ; preds = %44
  %48 = load %struct.sway_container*, %struct.sway_container** %6, align 8
  %49 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* @FULLSCREEN_GLOBAL, align 8
  %52 = icmp eq i64 %50, %51
  br i1 %52, label %53, label %54

53:                                               ; preds = %47
  store i32 1, i32* %5, align 4
  br label %54

54:                                               ; preds = %53, %47
  %55 = load %struct.sway_container*, %struct.sway_container** %6, align 8
  %56 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %55, i32 0, i32 1
  %57 = load %struct.sway_container*, %struct.sway_container** %56, align 8
  store %struct.sway_container* %57, %struct.sway_container** %6, align 8
  br label %44

58:                                               ; preds = %44
  %59 = load i32, i32* %5, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %62, label %61

61:                                               ; preds = %58
  store i32 0, i32* %2, align 4
  br label %181

62:                                               ; preds = %58
  br label %63

63:                                               ; preds = %62, %30, %22
  %64 = load %struct.sway_view*, %struct.sway_view** %3, align 8
  %65 = getelementptr inbounds %struct.sway_view, %struct.sway_view* %64, i32 0, i32 0
  %66 = load %struct.sway_container*, %struct.sway_container** %65, align 8
  store %struct.sway_container* %66, %struct.sway_container** %7, align 8
  br label %67

67:                                               ; preds = %72, %63
  %68 = load %struct.sway_container*, %struct.sway_container** %7, align 8
  %69 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %68, i32 0, i32 1
  %70 = load %struct.sway_container*, %struct.sway_container** %69, align 8
  %71 = icmp ne %struct.sway_container* %70, null
  br i1 %71, label %72, label %76

72:                                               ; preds = %67
  %73 = load %struct.sway_container*, %struct.sway_container** %7, align 8
  %74 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %73, i32 0, i32 1
  %75 = load %struct.sway_container*, %struct.sway_container** %74, align 8
  store %struct.sway_container* %75, %struct.sway_container** %7, align 8
  br label %67

76:                                               ; preds = %67
  %77 = load %struct.sway_container*, %struct.sway_container** %7, align 8
  %78 = call i64 @container_is_floating(%struct.sway_container* %77)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %85

80:                                               ; preds = %76
  %81 = load %struct.sway_container*, %struct.sway_container** %7, align 8
  %82 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %81, i32 0, i32 4
  %83 = load i32, i32* %82, align 8
  %84 = icmp ne i32 %83, 0
  br label %85

85:                                               ; preds = %80, %76
  %86 = phi i1 [ false, %76 ], [ %84, %80 ]
  %87 = zext i1 %86 to i32
  store i32 %87, i32* %8, align 4
  %88 = load i32, i32* %8, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %98, label %90

90:                                               ; preds = %85
  %91 = load %struct.sway_workspace*, %struct.sway_workspace** %4, align 8
  %92 = icmp ne %struct.sway_workspace* %91, null
  br i1 %92, label %93, label %98

93:                                               ; preds = %90
  %94 = load %struct.sway_workspace*, %struct.sway_workspace** %4, align 8
  %95 = call i32 @workspace_is_visible(%struct.sway_workspace* %94)
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %98, label %97

97:                                               ; preds = %93
  store i32 0, i32* %2, align 4
  br label %181

98:                                               ; preds = %93, %90, %85
  %99 = call %struct.sway_seat* (...) @input_manager_current_seat()
  store %struct.sway_seat* %99, %struct.sway_seat** %9, align 8
  %100 = load %struct.sway_view*, %struct.sway_view** %3, align 8
  %101 = getelementptr inbounds %struct.sway_view, %struct.sway_view* %100, i32 0, i32 0
  %102 = load %struct.sway_container*, %struct.sway_container** %101, align 8
  store %struct.sway_container* %102, %struct.sway_container** %10, align 8
  br label %103

103:                                              ; preds = %145, %98
  %104 = load %struct.sway_container*, %struct.sway_container** %10, align 8
  %105 = icmp ne %struct.sway_container* %104, null
  br i1 %105, label %106, label %149

106:                                              ; preds = %103
  %107 = load %struct.sway_container*, %struct.sway_container** %10, align 8
  %108 = call i32 @container_parent_layout(%struct.sway_container* %107)
  store i32 %108, i32* %11, align 4
  %109 = load i32, i32* %11, align 4
  %110 = load i32, i32* @L_TABBED, align 4
  %111 = icmp eq i32 %109, %110
  br i1 %111, label %116, label %112

112:                                              ; preds = %106
  %113 = load i32, i32* %11, align 4
  %114 = load i32, i32* @L_STACKED, align 4
  %115 = icmp eq i32 %113, %114
  br i1 %115, label %116, label %145

116:                                              ; preds = %112, %106
  %117 = load %struct.sway_container*, %struct.sway_container** %10, align 8
  %118 = call i64 @container_is_floating(%struct.sway_container* %117)
  %119 = icmp ne i64 %118, 0
  br i1 %119, label %145, label %120

120:                                              ; preds = %116
  %121 = load %struct.sway_container*, %struct.sway_container** %10, align 8
  %122 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %121, i32 0, i32 1
  %123 = load %struct.sway_container*, %struct.sway_container** %122, align 8
  %124 = icmp ne %struct.sway_container* %123, null
  br i1 %124, label %125, label %130

125:                                              ; preds = %120
  %126 = load %struct.sway_container*, %struct.sway_container** %10, align 8
  %127 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %126, i32 0, i32 1
  %128 = load %struct.sway_container*, %struct.sway_container** %127, align 8
  %129 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %128, i32 0, i32 2
  br label %135

130:                                              ; preds = %120
  %131 = load %struct.sway_container*, %struct.sway_container** %10, align 8
  %132 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %131, i32 0, i32 3
  %133 = load %struct.sway_workspace*, %struct.sway_workspace** %132, align 8
  %134 = getelementptr inbounds %struct.sway_workspace, %struct.sway_workspace* %133, i32 0, i32 1
  br label %135

135:                                              ; preds = %130, %125
  %136 = phi %struct.sway_node* [ %129, %125 ], [ %134, %130 ]
  store %struct.sway_node* %136, %struct.sway_node** %12, align 8
  %137 = load %struct.sway_seat*, %struct.sway_seat** %9, align 8
  %138 = load %struct.sway_node*, %struct.sway_node** %12, align 8
  %139 = call %struct.sway_node* @seat_get_active_tiling_child(%struct.sway_seat* %137, %struct.sway_node* %138)
  %140 = load %struct.sway_container*, %struct.sway_container** %10, align 8
  %141 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %140, i32 0, i32 2
  %142 = icmp ne %struct.sway_node* %139, %141
  br i1 %142, label %143, label %144

143:                                              ; preds = %135
  store i32 0, i32* %2, align 4
  br label %181

144:                                              ; preds = %135
  br label %145

145:                                              ; preds = %144, %116, %112
  %146 = load %struct.sway_container*, %struct.sway_container** %10, align 8
  %147 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %146, i32 0, i32 1
  %148 = load %struct.sway_container*, %struct.sway_container** %147, align 8
  store %struct.sway_container* %148, %struct.sway_container** %10, align 8
  br label %103

149:                                              ; preds = %103
  %150 = load %struct.TYPE_2__*, %struct.TYPE_2__** @root, align 8
  %151 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %150, i32 0, i32 0
  %152 = load %struct.sway_container*, %struct.sway_container** %151, align 8
  %153 = icmp ne %struct.sway_container* %152, null
  br i1 %153, label %154, label %158

154:                                              ; preds = %149
  %155 = load %struct.TYPE_2__*, %struct.TYPE_2__** @root, align 8
  %156 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %155, i32 0, i32 0
  %157 = load %struct.sway_container*, %struct.sway_container** %156, align 8
  br label %162

158:                                              ; preds = %149
  %159 = load %struct.sway_workspace*, %struct.sway_workspace** %4, align 8
  %160 = getelementptr inbounds %struct.sway_workspace, %struct.sway_workspace* %159, i32 0, i32 0
  %161 = load %struct.sway_container*, %struct.sway_container** %160, align 8
  br label %162

162:                                              ; preds = %158, %154
  %163 = phi %struct.sway_container* [ %157, %154 ], [ %161, %158 ]
  store %struct.sway_container* %163, %struct.sway_container** %13, align 8
  %164 = load %struct.sway_container*, %struct.sway_container** %13, align 8
  %165 = icmp ne %struct.sway_container* %164, null
  br i1 %165, label %166, label %180

166:                                              ; preds = %162
  %167 = load %struct.sway_view*, %struct.sway_view** %3, align 8
  %168 = getelementptr inbounds %struct.sway_view, %struct.sway_view* %167, i32 0, i32 0
  %169 = load %struct.sway_container*, %struct.sway_container** %168, align 8
  %170 = call i32 @container_is_fullscreen_or_child(%struct.sway_container* %169)
  %171 = icmp ne i32 %170, 0
  br i1 %171, label %180, label %172

172:                                              ; preds = %166
  %173 = load %struct.sway_view*, %struct.sway_view** %3, align 8
  %174 = getelementptr inbounds %struct.sway_view, %struct.sway_view* %173, i32 0, i32 0
  %175 = load %struct.sway_container*, %struct.sway_container** %174, align 8
  %176 = load %struct.sway_container*, %struct.sway_container** %13, align 8
  %177 = call i32 @container_is_transient_for(%struct.sway_container* %175, %struct.sway_container* %176)
  %178 = icmp ne i32 %177, 0
  br i1 %178, label %180, label %179

179:                                              ; preds = %172
  store i32 0, i32* %2, align 4
  br label %181

180:                                              ; preds = %172, %166, %162
  store i32 1, i32* %2, align 4
  br label %181

181:                                              ; preds = %180, %179, %143, %97, %61, %21
  %182 = load i32, i32* %2, align 4
  ret i32 %182
}

declare dso_local i64 @container_is_floating(%struct.sway_container*) #1

declare dso_local i32 @workspace_is_visible(%struct.sway_workspace*) #1

declare dso_local %struct.sway_seat* @input_manager_current_seat(...) #1

declare dso_local i32 @container_parent_layout(%struct.sway_container*) #1

declare dso_local %struct.sway_node* @seat_get_active_tiling_child(%struct.sway_seat*, %struct.sway_node*) #1

declare dso_local i32 @container_is_fullscreen_or_child(%struct.sway_container*) #1

declare dso_local i32 @container_is_transient_for(%struct.sway_container*, %struct.sway_container*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
