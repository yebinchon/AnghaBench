; ModuleID = '/home/carl/AnghaBench/sway/sway/commands/extr_client.c_handle_command.c'
source_filename = "/home/carl/AnghaBench/sway/sway/commands/extr_client.c_handle_command.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64 }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, %struct.sway_output** }
%struct.sway_output = type { i32 }
%struct.cmd_results = type { i32 }
%struct.border_colors = type { i32, i32, i32, i32, i32 }

@EXPECTED_EQUAL_TO = common dso_local global i32 0, align 4
@CMD_INVALID = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"Unable to parse border color '%s'\00", align 1
@.str.1 = private unnamed_addr constant [38 x i8] c"Unable to parse background color '%s'\00", align 1
@.str.2 = private unnamed_addr constant [32 x i8] c"Unable to parse text color '%s'\00", align 1
@.str.3 = private unnamed_addr constant [37 x i8] c"Unable to parse indicator color '%s'\00", align 1
@.str.4 = private unnamed_addr constant [40 x i8] c"Unable to parse child border color '%s'\00", align 1
@config = common dso_local global %struct.TYPE_6__* null, align 8
@rebuild_textures_iterator = common dso_local global i32 0, align 4
@root = common dso_local global %struct.TYPE_5__* null, align 8
@CMD_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.cmd_results* (i32, i8**, %struct.border_colors*, i8*)* @handle_command to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.cmd_results* @handle_command(i32 %0, i8** %1, %struct.border_colors* %2, i8* %3) #0 {
  %5 = alloca %struct.cmd_results*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8**, align 8
  %8 = alloca %struct.border_colors*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.cmd_results*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.sway_output*, align 8
  store i32 %0, i32* %6, align 4
  store i8** %1, i8*** %7, align 8
  store %struct.border_colors* %2, %struct.border_colors** %8, align 8
  store i8* %3, i8** %9, align 8
  store %struct.cmd_results* null, %struct.cmd_results** %10, align 8
  %13 = load i32, i32* %6, align 4
  %14 = load i8*, i8** %9, align 8
  %15 = load i32, i32* @EXPECTED_EQUAL_TO, align 4
  %16 = call %struct.cmd_results* @checkarg(i32 %13, i8* %14, i32 %15, i32 5)
  store %struct.cmd_results* %16, %struct.cmd_results** %10, align 8
  %17 = icmp ne %struct.cmd_results* %16, null
  br i1 %17, label %18, label %20

18:                                               ; preds = %4
  %19 = load %struct.cmd_results*, %struct.cmd_results** %10, align 8
  store %struct.cmd_results* %19, %struct.cmd_results** %5, align 8
  br label %130

20:                                               ; preds = %4
  %21 = load i8**, i8*** %7, align 8
  %22 = getelementptr inbounds i8*, i8** %21, i64 0
  %23 = load i8*, i8** %22, align 8
  %24 = load %struct.border_colors*, %struct.border_colors** %8, align 8
  %25 = getelementptr inbounds %struct.border_colors, %struct.border_colors* %24, i32 0, i32 4
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @parse_color_float(i8* %23, i32 %26)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %35, label %29

29:                                               ; preds = %20
  %30 = load i32, i32* @CMD_INVALID, align 4
  %31 = load i8**, i8*** %7, align 8
  %32 = getelementptr inbounds i8*, i8** %31, i64 0
  %33 = load i8*, i8** %32, align 8
  %34 = call %struct.cmd_results* (i32, i8*, ...) @cmd_results_new(i32 %30, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i8* %33)
  store %struct.cmd_results* %34, %struct.cmd_results** %5, align 8
  br label %130

35:                                               ; preds = %20
  %36 = load i8**, i8*** %7, align 8
  %37 = getelementptr inbounds i8*, i8** %36, i64 1
  %38 = load i8*, i8** %37, align 8
  %39 = load %struct.border_colors*, %struct.border_colors** %8, align 8
  %40 = getelementptr inbounds %struct.border_colors, %struct.border_colors* %39, i32 0, i32 3
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @parse_color_float(i8* %38, i32 %41)
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %50, label %44

44:                                               ; preds = %35
  %45 = load i32, i32* @CMD_INVALID, align 4
  %46 = load i8**, i8*** %7, align 8
  %47 = getelementptr inbounds i8*, i8** %46, i64 1
  %48 = load i8*, i8** %47, align 8
  %49 = call %struct.cmd_results* (i32, i8*, ...) @cmd_results_new(i32 %45, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0), i8* %48)
  store %struct.cmd_results* %49, %struct.cmd_results** %5, align 8
  br label %130

50:                                               ; preds = %35
  %51 = load i8**, i8*** %7, align 8
  %52 = getelementptr inbounds i8*, i8** %51, i64 2
  %53 = load i8*, i8** %52, align 8
  %54 = load %struct.border_colors*, %struct.border_colors** %8, align 8
  %55 = getelementptr inbounds %struct.border_colors, %struct.border_colors* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @parse_color_float(i8* %53, i32 %56)
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %65, label %59

59:                                               ; preds = %50
  %60 = load i32, i32* @CMD_INVALID, align 4
  %61 = load i8**, i8*** %7, align 8
  %62 = getelementptr inbounds i8*, i8** %61, i64 2
  %63 = load i8*, i8** %62, align 8
  %64 = call %struct.cmd_results* (i32, i8*, ...) @cmd_results_new(i32 %60, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0), i8* %63)
  store %struct.cmd_results* %64, %struct.cmd_results** %5, align 8
  br label %130

65:                                               ; preds = %50
  %66 = load i8**, i8*** %7, align 8
  %67 = getelementptr inbounds i8*, i8** %66, i64 3
  %68 = load i8*, i8** %67, align 8
  %69 = load %struct.border_colors*, %struct.border_colors** %8, align 8
  %70 = getelementptr inbounds %struct.border_colors, %struct.border_colors* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @parse_color_float(i8* %68, i32 %71)
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %80, label %74

74:                                               ; preds = %65
  %75 = load i32, i32* @CMD_INVALID, align 4
  %76 = load i8**, i8*** %7, align 8
  %77 = getelementptr inbounds i8*, i8** %76, i64 3
  %78 = load i8*, i8** %77, align 8
  %79 = call %struct.cmd_results* (i32, i8*, ...) @cmd_results_new(i32 %75, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.3, i64 0, i64 0), i8* %78)
  store %struct.cmd_results* %79, %struct.cmd_results** %5, align 8
  br label %130

80:                                               ; preds = %65
  %81 = load i8**, i8*** %7, align 8
  %82 = getelementptr inbounds i8*, i8** %81, i64 4
  %83 = load i8*, i8** %82, align 8
  %84 = load %struct.border_colors*, %struct.border_colors** %8, align 8
  %85 = getelementptr inbounds %struct.border_colors, %struct.border_colors* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = call i32 @parse_color_float(i8* %83, i32 %86)
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %95, label %89

89:                                               ; preds = %80
  %90 = load i32, i32* @CMD_INVALID, align 4
  %91 = load i8**, i8*** %7, align 8
  %92 = getelementptr inbounds i8*, i8** %91, i64 4
  %93 = load i8*, i8** %92, align 8
  %94 = call %struct.cmd_results* (i32, i8*, ...) @cmd_results_new(i32 %90, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.4, i64 0, i64 0), i8* %93)
  store %struct.cmd_results* %94, %struct.cmd_results** %5, align 8
  br label %130

95:                                               ; preds = %80
  %96 = load %struct.TYPE_6__*, %struct.TYPE_6__** @config, align 8
  %97 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %96, i32 0, i32 0
  %98 = load i64, i64* %97, align 8
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %127

100:                                              ; preds = %95
  %101 = load i32, i32* @rebuild_textures_iterator, align 4
  %102 = call i32 @root_for_each_container(i32 %101, i32* null)
  store i32 0, i32* %11, align 4
  br label %103

103:                                              ; preds = %123, %100
  %104 = load i32, i32* %11, align 4
  %105 = load %struct.TYPE_5__*, %struct.TYPE_5__** @root, align 8
  %106 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %105, i32 0, i32 0
  %107 = load %struct.TYPE_4__*, %struct.TYPE_4__** %106, align 8
  %108 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 8
  %110 = icmp slt i32 %104, %109
  br i1 %110, label %111, label %126

111:                                              ; preds = %103
  %112 = load %struct.TYPE_5__*, %struct.TYPE_5__** @root, align 8
  %113 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %112, i32 0, i32 0
  %114 = load %struct.TYPE_4__*, %struct.TYPE_4__** %113, align 8
  %115 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %114, i32 0, i32 1
  %116 = load %struct.sway_output**, %struct.sway_output*** %115, align 8
  %117 = load i32, i32* %11, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds %struct.sway_output*, %struct.sway_output** %116, i64 %118
  %120 = load %struct.sway_output*, %struct.sway_output** %119, align 8
  store %struct.sway_output* %120, %struct.sway_output** %12, align 8
  %121 = load %struct.sway_output*, %struct.sway_output** %12, align 8
  %122 = call i32 @output_damage_whole(%struct.sway_output* %121)
  br label %123

123:                                              ; preds = %111
  %124 = load i32, i32* %11, align 4
  %125 = add nsw i32 %124, 1
  store i32 %125, i32* %11, align 4
  br label %103

126:                                              ; preds = %103
  br label %127

127:                                              ; preds = %126, %95
  %128 = load i32, i32* @CMD_SUCCESS, align 4
  %129 = call %struct.cmd_results* (i32, i8*, ...) @cmd_results_new(i32 %128, i8* null)
  store %struct.cmd_results* %129, %struct.cmd_results** %5, align 8
  br label %130

130:                                              ; preds = %127, %89, %74, %59, %44, %29, %18
  %131 = load %struct.cmd_results*, %struct.cmd_results** %5, align 8
  ret %struct.cmd_results* %131
}

declare dso_local %struct.cmd_results* @checkarg(i32, i8*, i32, i32) #1

declare dso_local i32 @parse_color_float(i8*, i32) #1

declare dso_local %struct.cmd_results* @cmd_results_new(i32, i8*, ...) #1

declare dso_local i32 @root_for_each_container(i32, i32*) #1

declare dso_local i32 @output_damage_whole(%struct.sway_output*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
