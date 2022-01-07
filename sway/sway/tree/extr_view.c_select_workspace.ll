; ModuleID = '/home/carl/AnghaBench/sway/sway/tree/extr_view.c_select_workspace.c'
source_filename = "/home/carl/AnghaBench/sway/sway/tree/extr_view.c_select_workspace.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32 }
%struct.sway_workspace = type { i32 }
%struct.sway_view = type { i32 }
%struct.sway_seat = type { i64 }
%struct.TYPE_7__ = type { i32, %struct.criteria** }
%struct.criteria = type { i32, i64 }
%struct.sway_output = type { i32 }
%struct.sway_node = type { i64, %struct.TYPE_6__*, %struct.sway_workspace* }
%struct.TYPE_6__ = type { %struct.sway_workspace* }

@CT_ASSIGN_WORKSPACE = common dso_local global i32 0, align 4
@CT_ASSIGN_WORKSPACE_NUMBER = common dso_local global i32 0, align 4
@CT_ASSIGN_OUTPUT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"back_and_forth\00", align 1
@root = common dso_local global %struct.TYPE_8__* null, align 8
@N_WORKSPACE = common dso_local global i64 0, align 8
@N_CONTAINER = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [29 x i8] c"Expected to find a workspace\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.sway_workspace* (%struct.sway_view*)* @select_workspace to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.sway_workspace* @select_workspace(%struct.sway_view* %0) #0 {
  %2 = alloca %struct.sway_workspace*, align 8
  %3 = alloca %struct.sway_view*, align 8
  %4 = alloca %struct.sway_seat*, align 8
  %5 = alloca %struct.TYPE_7__*, align 8
  %6 = alloca %struct.sway_workspace*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.criteria*, align 8
  %9 = alloca %struct.sway_output*, align 8
  %10 = alloca %struct.sway_node*, align 8
  store %struct.sway_view* %0, %struct.sway_view** %3, align 8
  %11 = call %struct.sway_seat* (...) @input_manager_current_seat()
  store %struct.sway_seat* %11, %struct.sway_seat** %4, align 8
  %12 = load %struct.sway_view*, %struct.sway_view** %3, align 8
  %13 = load i32, i32* @CT_ASSIGN_WORKSPACE, align 4
  %14 = load i32, i32* @CT_ASSIGN_WORKSPACE_NUMBER, align 4
  %15 = or i32 %13, %14
  %16 = load i32, i32* @CT_ASSIGN_OUTPUT, align 4
  %17 = or i32 %15, %16
  %18 = call %struct.TYPE_7__* @criteria_for_view(%struct.sway_view* %12, i32 %17)
  store %struct.TYPE_7__* %18, %struct.TYPE_7__** %5, align 8
  store %struct.sway_workspace* null, %struct.sway_workspace** %6, align 8
  store i32 0, i32* %7, align 4
  br label %19

19:                                               ; preds = %94, %1
  %20 = load i32, i32* %7, align 4
  %21 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %22 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = icmp slt i32 %20, %23
  br i1 %24, label %25, label %97

25:                                               ; preds = %19
  %26 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %27 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %26, i32 0, i32 1
  %28 = load %struct.criteria**, %struct.criteria*** %27, align 8
  %29 = load i32, i32* %7, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds %struct.criteria*, %struct.criteria** %28, i64 %30
  %32 = load %struct.criteria*, %struct.criteria** %31, align 8
  store %struct.criteria* %32, %struct.criteria** %8, align 8
  %33 = load %struct.criteria*, %struct.criteria** %8, align 8
  %34 = getelementptr inbounds %struct.criteria, %struct.criteria* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = load i32, i32* @CT_ASSIGN_OUTPUT, align 4
  %37 = icmp eq i32 %35, %36
  br i1 %37, label %38, label %49

38:                                               ; preds = %25
  %39 = load %struct.criteria*, %struct.criteria** %8, align 8
  %40 = getelementptr inbounds %struct.criteria, %struct.criteria* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = call %struct.sway_output* @output_by_name_or_id(i64 %41)
  store %struct.sway_output* %42, %struct.sway_output** %9, align 8
  %43 = load %struct.sway_output*, %struct.sway_output** %9, align 8
  %44 = icmp ne %struct.sway_output* %43, null
  br i1 %44, label %45, label %48

45:                                               ; preds = %38
  %46 = load %struct.sway_output*, %struct.sway_output** %9, align 8
  %47 = call %struct.sway_workspace* @output_get_active_workspace(%struct.sway_output* %46)
  store %struct.sway_workspace* %47, %struct.sway_workspace** %6, align 8
  br label %97

48:                                               ; preds = %38
  br label %93

49:                                               ; preds = %25
  %50 = load %struct.criteria*, %struct.criteria** %8, align 8
  %51 = getelementptr inbounds %struct.criteria, %struct.criteria* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = load i32, i32* @CT_ASSIGN_WORKSPACE_NUMBER, align 4
  %54 = icmp eq i32 %52, %53
  br i1 %54, label %55, label %60

55:                                               ; preds = %49
  %56 = load %struct.criteria*, %struct.criteria** %8, align 8
  %57 = getelementptr inbounds %struct.criteria, %struct.criteria* %56, i32 0, i32 1
  %58 = load i64, i64* %57, align 8
  %59 = call %struct.sway_workspace* @workspace_by_number(i64 %58)
  br label %65

60:                                               ; preds = %49
  %61 = load %struct.criteria*, %struct.criteria** %8, align 8
  %62 = getelementptr inbounds %struct.criteria, %struct.criteria* %61, i32 0, i32 1
  %63 = load i64, i64* %62, align 8
  %64 = call %struct.sway_workspace* @workspace_by_name(i64 %63)
  br label %65

65:                                               ; preds = %60, %55
  %66 = phi %struct.sway_workspace* [ %59, %55 ], [ %64, %60 ]
  store %struct.sway_workspace* %66, %struct.sway_workspace** %6, align 8
  %67 = load %struct.sway_workspace*, %struct.sway_workspace** %6, align 8
  %68 = icmp ne %struct.sway_workspace* %67, null
  br i1 %68, label %92, label %69

69:                                               ; preds = %65
  %70 = load %struct.criteria*, %struct.criteria** %8, align 8
  %71 = getelementptr inbounds %struct.criteria, %struct.criteria* %70, i32 0, i32 1
  %72 = load i64, i64* %71, align 8
  %73 = call i64 @strcasecmp(i64 %72, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  %74 = icmp eq i64 %73, 0
  br i1 %74, label %75, label %86

75:                                               ; preds = %69
  %76 = load %struct.sway_seat*, %struct.sway_seat** %4, align 8
  %77 = getelementptr inbounds %struct.sway_seat, %struct.sway_seat* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %85

80:                                               ; preds = %75
  %81 = load %struct.sway_seat*, %struct.sway_seat** %4, align 8
  %82 = getelementptr inbounds %struct.sway_seat, %struct.sway_seat* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = call %struct.sway_workspace* @workspace_create(i32* null, i64 %83)
  store %struct.sway_workspace* %84, %struct.sway_workspace** %6, align 8
  br label %85

85:                                               ; preds = %80, %75
  br label %91

86:                                               ; preds = %69
  %87 = load %struct.criteria*, %struct.criteria** %8, align 8
  %88 = getelementptr inbounds %struct.criteria, %struct.criteria* %87, i32 0, i32 1
  %89 = load i64, i64* %88, align 8
  %90 = call %struct.sway_workspace* @workspace_create(i32* null, i64 %89)
  store %struct.sway_workspace* %90, %struct.sway_workspace** %6, align 8
  br label %91

91:                                               ; preds = %86, %85
  br label %92

92:                                               ; preds = %91, %65
  br label %97

93:                                               ; preds = %48
  br label %94

94:                                               ; preds = %93
  %95 = load i32, i32* %7, align 4
  %96 = add nsw i32 %95, 1
  store i32 %96, i32* %7, align 4
  br label %19

97:                                               ; preds = %92, %45, %19
  %98 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %99 = call i32 @list_free(%struct.TYPE_7__* %98)
  %100 = load %struct.sway_workspace*, %struct.sway_workspace** %6, align 8
  %101 = icmp ne %struct.sway_workspace* %100, null
  br i1 %101, label %102, label %104

102:                                              ; preds = %97
  %103 = load %struct.sway_workspace*, %struct.sway_workspace** %6, align 8
  store %struct.sway_workspace* %103, %struct.sway_workspace** %2, align 8
  br label %148

104:                                              ; preds = %97
  %105 = load %struct.sway_view*, %struct.sway_view** %3, align 8
  %106 = getelementptr inbounds %struct.sway_view, %struct.sway_view* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  %108 = call %struct.sway_workspace* @root_workspace_for_pid(i32 %107)
  store %struct.sway_workspace* %108, %struct.sway_workspace** %6, align 8
  %109 = load %struct.sway_workspace*, %struct.sway_workspace** %6, align 8
  %110 = icmp ne %struct.sway_workspace* %109, null
  br i1 %110, label %111, label %113

111:                                              ; preds = %104
  %112 = load %struct.sway_workspace*, %struct.sway_workspace** %6, align 8
  store %struct.sway_workspace* %112, %struct.sway_workspace** %2, align 8
  br label %148

113:                                              ; preds = %104
  %114 = load %struct.sway_seat*, %struct.sway_seat** %4, align 8
  %115 = load %struct.TYPE_8__*, %struct.TYPE_8__** @root, align 8
  %116 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %115, i32 0, i32 0
  %117 = call %struct.sway_node* @seat_get_focus_inactive(%struct.sway_seat* %114, i32* %116)
  store %struct.sway_node* %117, %struct.sway_node** %10, align 8
  %118 = load %struct.sway_node*, %struct.sway_node** %10, align 8
  %119 = icmp ne %struct.sway_node* %118, null
  br i1 %119, label %120, label %130

120:                                              ; preds = %113
  %121 = load %struct.sway_node*, %struct.sway_node** %10, align 8
  %122 = getelementptr inbounds %struct.sway_node, %struct.sway_node* %121, i32 0, i32 0
  %123 = load i64, i64* %122, align 8
  %124 = load i64, i64* @N_WORKSPACE, align 8
  %125 = icmp eq i64 %123, %124
  br i1 %125, label %126, label %130

126:                                              ; preds = %120
  %127 = load %struct.sway_node*, %struct.sway_node** %10, align 8
  %128 = getelementptr inbounds %struct.sway_node, %struct.sway_node* %127, i32 0, i32 2
  %129 = load %struct.sway_workspace*, %struct.sway_workspace** %128, align 8
  store %struct.sway_workspace* %129, %struct.sway_workspace** %2, align 8
  br label %148

130:                                              ; preds = %120, %113
  %131 = load %struct.sway_node*, %struct.sway_node** %10, align 8
  %132 = icmp ne %struct.sway_node* %131, null
  br i1 %132, label %133, label %145

133:                                              ; preds = %130
  %134 = load %struct.sway_node*, %struct.sway_node** %10, align 8
  %135 = getelementptr inbounds %struct.sway_node, %struct.sway_node* %134, i32 0, i32 0
  %136 = load i64, i64* %135, align 8
  %137 = load i64, i64* @N_CONTAINER, align 8
  %138 = icmp eq i64 %136, %137
  br i1 %138, label %139, label %145

139:                                              ; preds = %133
  %140 = load %struct.sway_node*, %struct.sway_node** %10, align 8
  %141 = getelementptr inbounds %struct.sway_node, %struct.sway_node* %140, i32 0, i32 1
  %142 = load %struct.TYPE_6__*, %struct.TYPE_6__** %141, align 8
  %143 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %142, i32 0, i32 0
  %144 = load %struct.sway_workspace*, %struct.sway_workspace** %143, align 8
  store %struct.sway_workspace* %144, %struct.sway_workspace** %2, align 8
  br label %148

145:                                              ; preds = %133, %130
  br label %146

146:                                              ; preds = %145
  %147 = call i32 @sway_assert(i32 0, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  store %struct.sway_workspace* null, %struct.sway_workspace** %2, align 8
  br label %148

148:                                              ; preds = %146, %139, %126, %111, %102
  %149 = load %struct.sway_workspace*, %struct.sway_workspace** %2, align 8
  ret %struct.sway_workspace* %149
}

declare dso_local %struct.sway_seat* @input_manager_current_seat(...) #1

declare dso_local %struct.TYPE_7__* @criteria_for_view(%struct.sway_view*, i32) #1

declare dso_local %struct.sway_output* @output_by_name_or_id(i64) #1

declare dso_local %struct.sway_workspace* @output_get_active_workspace(%struct.sway_output*) #1

declare dso_local %struct.sway_workspace* @workspace_by_number(i64) #1

declare dso_local %struct.sway_workspace* @workspace_by_name(i64) #1

declare dso_local i64 @strcasecmp(i64, i8*) #1

declare dso_local %struct.sway_workspace* @workspace_create(i32*, i64) #1

declare dso_local i32 @list_free(%struct.TYPE_7__*) #1

declare dso_local %struct.sway_workspace* @root_workspace_for_pid(i32) #1

declare dso_local %struct.sway_node* @seat_get_focus_inactive(%struct.sway_seat*, i32*) #1

declare dso_local i32 @sway_assert(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
