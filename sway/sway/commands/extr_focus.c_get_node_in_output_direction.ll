; ModuleID = '/home/carl/AnghaBench/sway/sway/commands/extr_focus.c_get_node_in_output_direction.c'
source_filename = "/home/carl/AnghaBench/sway/sway/commands/extr_focus.c_get_node_in_output_direction.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.sway_seat* }
%struct.sway_seat = type { i32 }
%struct.sway_node = type { i32 }
%struct.sway_output = type { i32 }
%struct.sway_workspace = type { %struct.sway_node, %struct.TYPE_7__*, i32, %struct.TYPE_6__* }
%struct.TYPE_7__ = type { i64, %struct.sway_container** }
%struct.sway_container = type { %struct.sway_node }
%struct.TYPE_6__ = type { i32 }

@config = common dso_local global %struct.TYPE_8__* null, align 8
@.str = private unnamed_addr constant [36 x i8] c"Expected output to have a workspace\00", align 1
@L_HORIZ = common dso_local global i32 0, align 4
@L_TABBED = common dso_local global i32 0, align 4
@L_VERT = common dso_local global i32 0, align 4
@L_STACKED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.sway_node* (%struct.sway_output*, i32)* @get_node_in_output_direction to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.sway_node* @get_node_in_output_direction(%struct.sway_output* %0, i32 %1) #0 {
  %3 = alloca %struct.sway_node*, align 8
  %4 = alloca %struct.sway_output*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.sway_seat*, align 8
  %7 = alloca %struct.sway_workspace*, align 8
  %8 = alloca %struct.sway_container*, align 8
  store %struct.sway_output* %0, %struct.sway_output** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.TYPE_8__*, %struct.TYPE_8__** @config, align 8
  %10 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 0
  %12 = load %struct.sway_seat*, %struct.sway_seat** %11, align 8
  store %struct.sway_seat* %12, %struct.sway_seat** %6, align 8
  %13 = load %struct.sway_output*, %struct.sway_output** %4, align 8
  %14 = call %struct.sway_workspace* @output_get_active_workspace(%struct.sway_output* %13)
  store %struct.sway_workspace* %14, %struct.sway_workspace** %7, align 8
  %15 = load %struct.sway_workspace*, %struct.sway_workspace** %7, align 8
  %16 = call i32 @sway_assert(%struct.sway_workspace* %15, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %2
  store %struct.sway_node* null, %struct.sway_node** %3, align 8
  br label %166

19:                                               ; preds = %2
  %20 = load %struct.sway_workspace*, %struct.sway_workspace** %7, align 8
  %21 = getelementptr inbounds %struct.sway_workspace, %struct.sway_workspace* %20, i32 0, i32 3
  %22 = load %struct.TYPE_6__*, %struct.TYPE_6__** %21, align 8
  %23 = icmp ne %struct.TYPE_6__* %22, null
  br i1 %23, label %24, label %31

24:                                               ; preds = %19
  %25 = load %struct.sway_seat*, %struct.sway_seat** %6, align 8
  %26 = load %struct.sway_workspace*, %struct.sway_workspace** %7, align 8
  %27 = getelementptr inbounds %struct.sway_workspace, %struct.sway_workspace* %26, i32 0, i32 3
  %28 = load %struct.TYPE_6__*, %struct.TYPE_6__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 0
  %30 = call %struct.sway_node* @seat_get_focus_inactive(%struct.sway_seat* %25, i32* %29)
  store %struct.sway_node* %30, %struct.sway_node** %3, align 8
  br label %166

31:                                               ; preds = %19
  store %struct.sway_container* null, %struct.sway_container** %8, align 8
  %32 = load %struct.sway_workspace*, %struct.sway_workspace** %7, align 8
  %33 = getelementptr inbounds %struct.sway_workspace, %struct.sway_workspace* %32, i32 0, i32 1
  %34 = load %struct.TYPE_7__*, %struct.TYPE_7__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = icmp sgt i64 %36, 0
  br i1 %37, label %38, label %153

38:                                               ; preds = %31
  %39 = load i32, i32* %5, align 4
  switch i32 %39, label %152 [
    i32 130, label %40
    i32 129, label %71
    i32 128, label %96
    i32 131, label %127
  ]

40:                                               ; preds = %38
  %41 = load %struct.sway_workspace*, %struct.sway_workspace** %7, align 8
  %42 = getelementptr inbounds %struct.sway_workspace, %struct.sway_workspace* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 8
  %44 = load i32, i32* @L_HORIZ, align 4
  %45 = icmp eq i32 %43, %44
  br i1 %45, label %52, label %46

46:                                               ; preds = %40
  %47 = load %struct.sway_workspace*, %struct.sway_workspace** %7, align 8
  %48 = getelementptr inbounds %struct.sway_workspace, %struct.sway_workspace* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 8
  %50 = load i32, i32* @L_TABBED, align 4
  %51 = icmp eq i32 %49, %50
  br i1 %51, label %52, label %66

52:                                               ; preds = %46, %40
  %53 = load %struct.sway_workspace*, %struct.sway_workspace** %7, align 8
  %54 = getelementptr inbounds %struct.sway_workspace, %struct.sway_workspace* %53, i32 0, i32 1
  %55 = load %struct.TYPE_7__*, %struct.TYPE_7__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %55, i32 0, i32 1
  %57 = load %struct.sway_container**, %struct.sway_container*** %56, align 8
  %58 = load %struct.sway_workspace*, %struct.sway_workspace** %7, align 8
  %59 = getelementptr inbounds %struct.sway_workspace, %struct.sway_workspace* %58, i32 0, i32 1
  %60 = load %struct.TYPE_7__*, %struct.TYPE_7__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = sub nsw i64 %62, 1
  %64 = getelementptr inbounds %struct.sway_container*, %struct.sway_container** %57, i64 %63
  %65 = load %struct.sway_container*, %struct.sway_container** %64, align 8
  store %struct.sway_container* %65, %struct.sway_container** %8, align 8
  br label %70

66:                                               ; preds = %46
  %67 = load %struct.sway_seat*, %struct.sway_seat** %6, align 8
  %68 = load %struct.sway_workspace*, %struct.sway_workspace** %7, align 8
  %69 = call %struct.sway_container* @seat_get_focus_inactive_tiling(%struct.sway_seat* %67, %struct.sway_workspace* %68)
  store %struct.sway_container* %69, %struct.sway_container** %8, align 8
  br label %70

70:                                               ; preds = %66, %52
  br label %152

71:                                               ; preds = %38
  %72 = load %struct.sway_workspace*, %struct.sway_workspace** %7, align 8
  %73 = getelementptr inbounds %struct.sway_workspace, %struct.sway_workspace* %72, i32 0, i32 2
  %74 = load i32, i32* %73, align 8
  %75 = load i32, i32* @L_HORIZ, align 4
  %76 = icmp eq i32 %74, %75
  br i1 %76, label %83, label %77

77:                                               ; preds = %71
  %78 = load %struct.sway_workspace*, %struct.sway_workspace** %7, align 8
  %79 = getelementptr inbounds %struct.sway_workspace, %struct.sway_workspace* %78, i32 0, i32 2
  %80 = load i32, i32* %79, align 8
  %81 = load i32, i32* @L_TABBED, align 4
  %82 = icmp eq i32 %80, %81
  br i1 %82, label %83, label %91

83:                                               ; preds = %77, %71
  %84 = load %struct.sway_workspace*, %struct.sway_workspace** %7, align 8
  %85 = getelementptr inbounds %struct.sway_workspace, %struct.sway_workspace* %84, i32 0, i32 1
  %86 = load %struct.TYPE_7__*, %struct.TYPE_7__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %86, i32 0, i32 1
  %88 = load %struct.sway_container**, %struct.sway_container*** %87, align 8
  %89 = getelementptr inbounds %struct.sway_container*, %struct.sway_container** %88, i64 0
  %90 = load %struct.sway_container*, %struct.sway_container** %89, align 8
  store %struct.sway_container* %90, %struct.sway_container** %8, align 8
  br label %95

91:                                               ; preds = %77
  %92 = load %struct.sway_seat*, %struct.sway_seat** %6, align 8
  %93 = load %struct.sway_workspace*, %struct.sway_workspace** %7, align 8
  %94 = call %struct.sway_container* @seat_get_focus_inactive_tiling(%struct.sway_seat* %92, %struct.sway_workspace* %93)
  store %struct.sway_container* %94, %struct.sway_container** %8, align 8
  br label %95

95:                                               ; preds = %91, %83
  br label %152

96:                                               ; preds = %38
  %97 = load %struct.sway_workspace*, %struct.sway_workspace** %7, align 8
  %98 = getelementptr inbounds %struct.sway_workspace, %struct.sway_workspace* %97, i32 0, i32 2
  %99 = load i32, i32* %98, align 8
  %100 = load i32, i32* @L_VERT, align 4
  %101 = icmp eq i32 %99, %100
  br i1 %101, label %108, label %102

102:                                              ; preds = %96
  %103 = load %struct.sway_workspace*, %struct.sway_workspace** %7, align 8
  %104 = getelementptr inbounds %struct.sway_workspace, %struct.sway_workspace* %103, i32 0, i32 2
  %105 = load i32, i32* %104, align 8
  %106 = load i32, i32* @L_STACKED, align 4
  %107 = icmp eq i32 %105, %106
  br i1 %107, label %108, label %122

108:                                              ; preds = %102, %96
  %109 = load %struct.sway_workspace*, %struct.sway_workspace** %7, align 8
  %110 = getelementptr inbounds %struct.sway_workspace, %struct.sway_workspace* %109, i32 0, i32 1
  %111 = load %struct.TYPE_7__*, %struct.TYPE_7__** %110, align 8
  %112 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %111, i32 0, i32 1
  %113 = load %struct.sway_container**, %struct.sway_container*** %112, align 8
  %114 = load %struct.sway_workspace*, %struct.sway_workspace** %7, align 8
  %115 = getelementptr inbounds %struct.sway_workspace, %struct.sway_workspace* %114, i32 0, i32 1
  %116 = load %struct.TYPE_7__*, %struct.TYPE_7__** %115, align 8
  %117 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %116, i32 0, i32 0
  %118 = load i64, i64* %117, align 8
  %119 = sub nsw i64 %118, 1
  %120 = getelementptr inbounds %struct.sway_container*, %struct.sway_container** %113, i64 %119
  %121 = load %struct.sway_container*, %struct.sway_container** %120, align 8
  store %struct.sway_container* %121, %struct.sway_container** %8, align 8
  br label %126

122:                                              ; preds = %102
  %123 = load %struct.sway_seat*, %struct.sway_seat** %6, align 8
  %124 = load %struct.sway_workspace*, %struct.sway_workspace** %7, align 8
  %125 = call %struct.sway_container* @seat_get_focus_inactive_tiling(%struct.sway_seat* %123, %struct.sway_workspace* %124)
  store %struct.sway_container* %125, %struct.sway_container** %8, align 8
  br label %126

126:                                              ; preds = %122, %108
  br label %152

127:                                              ; preds = %38
  %128 = load %struct.sway_workspace*, %struct.sway_workspace** %7, align 8
  %129 = getelementptr inbounds %struct.sway_workspace, %struct.sway_workspace* %128, i32 0, i32 2
  %130 = load i32, i32* %129, align 8
  %131 = load i32, i32* @L_VERT, align 4
  %132 = icmp eq i32 %130, %131
  br i1 %132, label %139, label %133

133:                                              ; preds = %127
  %134 = load %struct.sway_workspace*, %struct.sway_workspace** %7, align 8
  %135 = getelementptr inbounds %struct.sway_workspace, %struct.sway_workspace* %134, i32 0, i32 2
  %136 = load i32, i32* %135, align 8
  %137 = load i32, i32* @L_STACKED, align 4
  %138 = icmp eq i32 %136, %137
  br i1 %138, label %139, label %147

139:                                              ; preds = %133, %127
  %140 = load %struct.sway_workspace*, %struct.sway_workspace** %7, align 8
  %141 = getelementptr inbounds %struct.sway_workspace, %struct.sway_workspace* %140, i32 0, i32 1
  %142 = load %struct.TYPE_7__*, %struct.TYPE_7__** %141, align 8
  %143 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %142, i32 0, i32 1
  %144 = load %struct.sway_container**, %struct.sway_container*** %143, align 8
  %145 = getelementptr inbounds %struct.sway_container*, %struct.sway_container** %144, i64 0
  %146 = load %struct.sway_container*, %struct.sway_container** %145, align 8
  store %struct.sway_container* %146, %struct.sway_container** %8, align 8
  br label %151

147:                                              ; preds = %133
  %148 = load %struct.sway_seat*, %struct.sway_seat** %6, align 8
  %149 = load %struct.sway_workspace*, %struct.sway_workspace** %7, align 8
  %150 = call %struct.sway_container* @seat_get_focus_inactive_tiling(%struct.sway_seat* %148, %struct.sway_workspace* %149)
  store %struct.sway_container* %150, %struct.sway_container** %8, align 8
  br label %151

151:                                              ; preds = %147, %139
  br label %152

152:                                              ; preds = %38, %151, %126, %95, %70
  br label %153

153:                                              ; preds = %152, %31
  %154 = load %struct.sway_container*, %struct.sway_container** %8, align 8
  %155 = icmp ne %struct.sway_container* %154, null
  br i1 %155, label %156, label %163

156:                                              ; preds = %153
  %157 = load %struct.sway_seat*, %struct.sway_seat** %6, align 8
  %158 = load %struct.sway_container*, %struct.sway_container** %8, align 8
  %159 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %158, i32 0, i32 0
  %160 = call %struct.sway_container* @seat_get_focus_inactive_view(%struct.sway_seat* %157, %struct.sway_node* %159)
  store %struct.sway_container* %160, %struct.sway_container** %8, align 8
  %161 = load %struct.sway_container*, %struct.sway_container** %8, align 8
  %162 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %161, i32 0, i32 0
  store %struct.sway_node* %162, %struct.sway_node** %3, align 8
  br label %166

163:                                              ; preds = %153
  %164 = load %struct.sway_workspace*, %struct.sway_workspace** %7, align 8
  %165 = getelementptr inbounds %struct.sway_workspace, %struct.sway_workspace* %164, i32 0, i32 0
  store %struct.sway_node* %165, %struct.sway_node** %3, align 8
  br label %166

166:                                              ; preds = %163, %156, %24, %18
  %167 = load %struct.sway_node*, %struct.sway_node** %3, align 8
  ret %struct.sway_node* %167
}

declare dso_local %struct.sway_workspace* @output_get_active_workspace(%struct.sway_output*) #1

declare dso_local i32 @sway_assert(%struct.sway_workspace*, i8*) #1

declare dso_local %struct.sway_node* @seat_get_focus_inactive(%struct.sway_seat*, i32*) #1

declare dso_local %struct.sway_container* @seat_get_focus_inactive_tiling(%struct.sway_seat*, %struct.sway_workspace*) #1

declare dso_local %struct.sway_container* @seat_get_focus_inactive_view(%struct.sway_seat*, %struct.sway_node*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
