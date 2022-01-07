; ModuleID = '/home/carl/AnghaBench/sway/sway/commands/extr_focus.c_focus_output.c'
source_filename = "/home/carl/AnghaBench/sway/sway/commands/extr_focus.c_focus_output.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }
%struct.cmd_results = type { i32 }
%struct.sway_seat = type { i32 }
%struct.sway_output = type { i32 }
%struct.sway_workspace = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, i32, i32, i32, i32 }
%struct.wlr_output = type { i32 }

@CMD_INVALID = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"Expected 'focus output <direction|name>'\00", align 1
@.str.1 = private unnamed_addr constant [34 x i8] c"There is no output with that name\00", align 1
@CMD_FAILURE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [47 x i8] c"No focused workspace to base directions off of\00", align 1
@root = common dso_local global %struct.TYPE_3__* null, align 8
@CMD_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.cmd_results* (%struct.sway_seat*, i32, i8**)* @focus_output to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.cmd_results* @focus_output(%struct.sway_seat* %0, i32 %1, i8** %2) #0 {
  %4 = alloca %struct.cmd_results*, align 8
  %5 = alloca %struct.sway_seat*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8**, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.sway_output*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.sway_workspace*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.wlr_output*, align 8
  store %struct.sway_seat* %0, %struct.sway_seat** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8** %2, i8*** %7, align 8
  %15 = load i32, i32* %6, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %20, label %17

17:                                               ; preds = %3
  %18 = load i32, i32* @CMD_INVALID, align 4
  %19 = call %struct.cmd_results* @cmd_results_new(i32 %18, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0))
  store %struct.cmd_results* %19, %struct.cmd_results** %4, align 8
  br label %117

20:                                               ; preds = %3
  %21 = load i8**, i8*** %7, align 8
  %22 = load i32, i32* %6, align 4
  %23 = call i8* @join_args(i8** %21, i32 %22)
  store i8* %23, i8** %8, align 8
  %24 = load i8*, i8** %8, align 8
  %25 = call %struct.sway_output* @output_by_name_or_id(i8* %24)
  store %struct.sway_output* %25, %struct.sway_output** %9, align 8
  %26 = load %struct.sway_output*, %struct.sway_output** %9, align 8
  %27 = icmp ne %struct.sway_output* %26, null
  br i1 %27, label %100, label %28

28:                                               ; preds = %20
  %29 = load i8*, i8** %8, align 8
  %30 = call i32 @parse_direction(i8* %29, i32* %10)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %37, label %32

32:                                               ; preds = %28
  %33 = load i8*, i8** %8, align 8
  %34 = call i32 @free(i8* %33)
  %35 = load i32, i32* @CMD_INVALID, align 4
  %36 = call %struct.cmd_results* @cmd_results_new(i32 %35, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0))
  store %struct.cmd_results* %36, %struct.cmd_results** %4, align 8
  br label %117

37:                                               ; preds = %28
  %38 = load %struct.sway_seat*, %struct.sway_seat** %5, align 8
  %39 = call %struct.sway_workspace* @seat_get_focused_workspace(%struct.sway_seat* %38)
  store %struct.sway_workspace* %39, %struct.sway_workspace** %11, align 8
  %40 = load %struct.sway_workspace*, %struct.sway_workspace** %11, align 8
  %41 = icmp ne %struct.sway_workspace* %40, null
  br i1 %41, label %47, label %42

42:                                               ; preds = %37
  %43 = load i8*, i8** %8, align 8
  %44 = call i32 @free(i8* %43)
  %45 = load i32, i32* @CMD_FAILURE, align 4
  %46 = call %struct.cmd_results* @cmd_results_new(i32 %45, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.2, i64 0, i64 0))
  store %struct.cmd_results* %46, %struct.cmd_results** %4, align 8
  br label %117

47:                                               ; preds = %37
  %48 = load %struct.sway_workspace*, %struct.sway_workspace** %11, align 8
  %49 = getelementptr inbounds %struct.sway_workspace, %struct.sway_workspace* %48, i32 0, i32 0
  %50 = load %struct.TYPE_4__*, %struct.TYPE_4__** %49, align 8
  %51 = load i32, i32* %10, align 4
  %52 = call %struct.sway_output* @output_get_in_direction(%struct.TYPE_4__* %50, i32 %51)
  store %struct.sway_output* %52, %struct.sway_output** %9, align 8
  %53 = load %struct.sway_output*, %struct.sway_output** %9, align 8
  %54 = icmp ne %struct.sway_output* %53, null
  br i1 %54, label %99, label %55

55:                                               ; preds = %47
  %56 = load %struct.sway_workspace*, %struct.sway_workspace** %11, align 8
  %57 = getelementptr inbounds %struct.sway_workspace, %struct.sway_workspace* %56, i32 0, i32 0
  %58 = load %struct.TYPE_4__*, %struct.TYPE_4__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.sway_workspace*, %struct.sway_workspace** %11, align 8
  %62 = getelementptr inbounds %struct.sway_workspace, %struct.sway_workspace* %61, i32 0, i32 0
  %63 = load %struct.TYPE_4__*, %struct.TYPE_4__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = sdiv i32 %65, 2
  %67 = add nsw i32 %60, %66
  store i32 %67, i32* %12, align 4
  %68 = load %struct.sway_workspace*, %struct.sway_workspace** %11, align 8
  %69 = getelementptr inbounds %struct.sway_workspace, %struct.sway_workspace* %68, i32 0, i32 0
  %70 = load %struct.TYPE_4__*, %struct.TYPE_4__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 2
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.sway_workspace*, %struct.sway_workspace** %11, align 8
  %74 = getelementptr inbounds %struct.sway_workspace, %struct.sway_workspace* %73, i32 0, i32 0
  %75 = load %struct.TYPE_4__*, %struct.TYPE_4__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i32 0, i32 3
  %77 = load i32, i32* %76, align 4
  %78 = sdiv i32 %77, 2
  %79 = add nsw i32 %72, %78
  store i32 %79, i32* %13, align 4
  %80 = load %struct.TYPE_3__*, %struct.TYPE_3__** @root, align 8
  %81 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = load i32, i32* %10, align 4
  %84 = call i32 @opposite_direction(i32 %83)
  %85 = load %struct.sway_workspace*, %struct.sway_workspace** %11, align 8
  %86 = getelementptr inbounds %struct.sway_workspace, %struct.sway_workspace* %85, i32 0, i32 0
  %87 = load %struct.TYPE_4__*, %struct.TYPE_4__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %87, i32 0, i32 4
  %89 = load i32, i32* %88, align 4
  %90 = load i32, i32* %12, align 4
  %91 = load i32, i32* %13, align 4
  %92 = call %struct.wlr_output* @wlr_output_layout_farthest_output(i32 %82, i32 %84, i32 %89, i32 %90, i32 %91)
  store %struct.wlr_output* %92, %struct.wlr_output** %14, align 8
  %93 = load %struct.wlr_output*, %struct.wlr_output** %14, align 8
  %94 = icmp ne %struct.wlr_output* %93, null
  br i1 %94, label %95, label %98

95:                                               ; preds = %55
  %96 = load %struct.wlr_output*, %struct.wlr_output** %14, align 8
  %97 = call %struct.sway_output* @output_from_wlr_output(%struct.wlr_output* %96)
  store %struct.sway_output* %97, %struct.sway_output** %9, align 8
  br label %98

98:                                               ; preds = %95, %55
  br label %99

99:                                               ; preds = %98, %47
  br label %100

100:                                              ; preds = %99, %20
  %101 = load i8*, i8** %8, align 8
  %102 = call i32 @free(i8* %101)
  %103 = load %struct.sway_output*, %struct.sway_output** %9, align 8
  %104 = icmp ne %struct.sway_output* %103, null
  br i1 %104, label %105, label %114

105:                                              ; preds = %100
  %106 = load %struct.sway_seat*, %struct.sway_seat** %5, align 8
  %107 = load %struct.sway_seat*, %struct.sway_seat** %5, align 8
  %108 = load %struct.sway_output*, %struct.sway_output** %9, align 8
  %109 = getelementptr inbounds %struct.sway_output, %struct.sway_output* %108, i32 0, i32 0
  %110 = call i32 @seat_get_focus_inactive(%struct.sway_seat* %107, i32* %109)
  %111 = call i32 @seat_set_focus(%struct.sway_seat* %106, i32 %110)
  %112 = load %struct.sway_seat*, %struct.sway_seat** %5, align 8
  %113 = call i32 @seat_consider_warp_to_focus(%struct.sway_seat* %112)
  br label %114

114:                                              ; preds = %105, %100
  %115 = load i32, i32* @CMD_SUCCESS, align 4
  %116 = call %struct.cmd_results* @cmd_results_new(i32 %115, i8* null)
  store %struct.cmd_results* %116, %struct.cmd_results** %4, align 8
  br label %117

117:                                              ; preds = %114, %42, %32, %17
  %118 = load %struct.cmd_results*, %struct.cmd_results** %4, align 8
  ret %struct.cmd_results* %118
}

declare dso_local %struct.cmd_results* @cmd_results_new(i32, i8*) #1

declare dso_local i8* @join_args(i8**, i32) #1

declare dso_local %struct.sway_output* @output_by_name_or_id(i8*) #1

declare dso_local i32 @parse_direction(i8*, i32*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local %struct.sway_workspace* @seat_get_focused_workspace(%struct.sway_seat*) #1

declare dso_local %struct.sway_output* @output_get_in_direction(%struct.TYPE_4__*, i32) #1

declare dso_local %struct.wlr_output* @wlr_output_layout_farthest_output(i32, i32, i32, i32, i32) #1

declare dso_local i32 @opposite_direction(i32) #1

declare dso_local %struct.sway_output* @output_from_wlr_output(%struct.wlr_output*) #1

declare dso_local i32 @seat_set_focus(%struct.sway_seat*, i32) #1

declare dso_local i32 @seat_get_focus_inactive(%struct.sway_seat*, i32*) #1

declare dso_local i32 @seat_consider_warp_to_focus(%struct.sway_seat*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
