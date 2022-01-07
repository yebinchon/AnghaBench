; ModuleID = '/home/carl/AnghaBench/sway/sway/commands/extr_fullscreen.c_cmd_fullscreen.c'
source_filename = "/home/carl/AnghaBench/sway/sway/commands/extr_fullscreen.c_cmd_fullscreen.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_10__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32, %struct.sway_workspace*, %struct.sway_container*, %struct.sway_node* }
%struct.sway_workspace = type { i32, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i64 }
%struct.sway_container = type { i64, %struct.sway_container*, i32 }
%struct.sway_node = type { i64 }
%struct.cmd_results = type { i32 }

@.str = private unnamed_addr constant [11 x i8] c"fullscreen\00", align 1
@EXPECTED_AT_MOST = common dso_local global i32 0, align 4
@root = common dso_local global %struct.TYPE_9__* null, align 8
@CMD_FAILURE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [59 x i8] c"Can't run this command while there's no outputs connected.\00", align 1
@config = common dso_local global %struct.TYPE_10__* null, align 8
@N_WORKSPACE = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [36 x i8] c"Can't fullscreen an empty workspace\00", align 1
@FULLSCREEN_NONE = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [7 x i8] c"global\00", align 1
@L_HORIZ = common dso_local global i32 0, align 4
@FULLSCREEN_GLOBAL = common dso_local global i32 0, align 4
@FULLSCREEN_WORKSPACE = common dso_local global i32 0, align 4
@CMD_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.cmd_results* @cmd_fullscreen(i32 %0, i8** %1) #0 {
  %3 = alloca %struct.cmd_results*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca %struct.cmd_results*, align 8
  %7 = alloca %struct.sway_node*, align 8
  %8 = alloca %struct.sway_container*, align 8
  %9 = alloca %struct.sway_workspace*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.sway_container*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store %struct.cmd_results* null, %struct.cmd_results** %6, align 8
  %15 = load i32, i32* %4, align 4
  %16 = load i32, i32* @EXPECTED_AT_MOST, align 4
  %17 = call %struct.cmd_results* @checkarg(i32 %15, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 %16, i32 2)
  store %struct.cmd_results* %17, %struct.cmd_results** %6, align 8
  %18 = icmp ne %struct.cmd_results* %17, null
  br i1 %18, label %19, label %21

19:                                               ; preds = %2
  %20 = load %struct.cmd_results*, %struct.cmd_results** %6, align 8
  store %struct.cmd_results* %20, %struct.cmd_results** %3, align 8
  br label %169

21:                                               ; preds = %2
  %22 = load %struct.TYPE_9__*, %struct.TYPE_9__** @root, align 8
  %23 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %22, i32 0, i32 0
  %24 = load %struct.TYPE_6__*, %struct.TYPE_6__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %31, label %28

28:                                               ; preds = %21
  %29 = load i32, i32* @CMD_FAILURE, align 4
  %30 = call %struct.cmd_results* @cmd_results_new(i32 %29, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.1, i64 0, i64 0))
  store %struct.cmd_results* %30, %struct.cmd_results** %3, align 8
  br label %169

31:                                               ; preds = %21
  %32 = load %struct.TYPE_10__*, %struct.TYPE_10__** @config, align 8
  %33 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %33, i32 0, i32 3
  %35 = load %struct.sway_node*, %struct.sway_node** %34, align 8
  store %struct.sway_node* %35, %struct.sway_node** %7, align 8
  %36 = load %struct.TYPE_10__*, %struct.TYPE_10__** @config, align 8
  %37 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %37, i32 0, i32 2
  %39 = load %struct.sway_container*, %struct.sway_container** %38, align 8
  store %struct.sway_container* %39, %struct.sway_container** %8, align 8
  %40 = load %struct.TYPE_10__*, %struct.TYPE_10__** @config, align 8
  %41 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %41, i32 0, i32 1
  %43 = load %struct.sway_workspace*, %struct.sway_workspace** %42, align 8
  store %struct.sway_workspace* %43, %struct.sway_workspace** %9, align 8
  %44 = load %struct.sway_node*, %struct.sway_node** %7, align 8
  %45 = getelementptr inbounds %struct.sway_node, %struct.sway_node* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* @N_WORKSPACE, align 8
  %48 = icmp eq i64 %46, %47
  br i1 %48, label %49, label %59

49:                                               ; preds = %31
  %50 = load %struct.sway_workspace*, %struct.sway_workspace** %9, align 8
  %51 = getelementptr inbounds %struct.sway_workspace, %struct.sway_workspace* %50, i32 0, i32 1
  %52 = load %struct.TYPE_7__*, %struct.TYPE_7__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = icmp eq i64 %54, 0
  br i1 %55, label %56, label %59

56:                                               ; preds = %49
  %57 = load i32, i32* @CMD_FAILURE, align 4
  %58 = call %struct.cmd_results* @cmd_results_new(i32 %57, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0))
  store %struct.cmd_results* %58, %struct.cmd_results** %3, align 8
  br label %169

59:                                               ; preds = %49, %31
  %60 = load %struct.sway_container*, %struct.sway_container** %8, align 8
  %61 = icmp ne %struct.sway_container* %60, null
  br i1 %61, label %62, label %78

62:                                               ; preds = %59
  %63 = load %struct.sway_container*, %struct.sway_container** %8, align 8
  %64 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 8
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %78, label %67

67:                                               ; preds = %62
  br label %68

68:                                               ; preds = %73, %67
  %69 = load %struct.sway_container*, %struct.sway_container** %8, align 8
  %70 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %69, i32 0, i32 1
  %71 = load %struct.sway_container*, %struct.sway_container** %70, align 8
  %72 = icmp ne %struct.sway_container* %71, null
  br i1 %72, label %73, label %77

73:                                               ; preds = %68
  %74 = load %struct.sway_container*, %struct.sway_container** %8, align 8
  %75 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %74, i32 0, i32 1
  %76 = load %struct.sway_container*, %struct.sway_container** %75, align 8
  store %struct.sway_container* %76, %struct.sway_container** %8, align 8
  br label %68

77:                                               ; preds = %68
  br label %78

78:                                               ; preds = %77, %62, %59
  store i32 0, i32* %10, align 4
  %79 = load %struct.sway_container*, %struct.sway_container** %8, align 8
  store %struct.sway_container* %79, %struct.sway_container** %11, align 8
  br label %80

80:                                               ; preds = %92, %78
  %81 = load %struct.sway_container*, %struct.sway_container** %11, align 8
  %82 = icmp ne %struct.sway_container* %81, null
  br i1 %82, label %83, label %96

83:                                               ; preds = %80
  %84 = load %struct.sway_container*, %struct.sway_container** %11, align 8
  %85 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = load i64, i64* @FULLSCREEN_NONE, align 8
  %88 = icmp ne i64 %86, %87
  br i1 %88, label %89, label %91

89:                                               ; preds = %83
  %90 = load %struct.sway_container*, %struct.sway_container** %11, align 8
  store %struct.sway_container* %90, %struct.sway_container** %8, align 8
  store i32 1, i32* %10, align 4
  br label %96

91:                                               ; preds = %83
  br label %92

92:                                               ; preds = %91
  %93 = load %struct.sway_container*, %struct.sway_container** %11, align 8
  %94 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %93, i32 0, i32 1
  %95 = load %struct.sway_container*, %struct.sway_container** %94, align 8
  store %struct.sway_container* %95, %struct.sway_container** %11, align 8
  br label %80

96:                                               ; preds = %89, %80
  store i32 0, i32* %12, align 4
  %97 = load i32, i32* %10, align 4
  %98 = icmp ne i32 %97, 0
  %99 = xor i1 %98, true
  %100 = zext i1 %99 to i32
  store i32 %100, i32* %13, align 4
  %101 = load i32, i32* %4, align 4
  %102 = icmp sge i32 %101, 1
  br i1 %102, label %103, label %117

103:                                              ; preds = %96
  %104 = load i8**, i8*** %5, align 8
  %105 = getelementptr inbounds i8*, i8** %104, i64 0
  %106 = load i8*, i8** %105, align 8
  %107 = call i64 @strcasecmp(i8* %106, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0))
  %108 = icmp eq i64 %107, 0
  br i1 %108, label %109, label %110

109:                                              ; preds = %103
  store i32 1, i32* %12, align 4
  br label %116

110:                                              ; preds = %103
  %111 = load i8**, i8*** %5, align 8
  %112 = getelementptr inbounds i8*, i8** %111, i64 0
  %113 = load i8*, i8** %112, align 8
  %114 = load i32, i32* %10, align 4
  %115 = call i32 @parse_boolean(i8* %113, i32 %114)
  store i32 %115, i32* %13, align 4
  br label %116

116:                                              ; preds = %110, %109
  br label %117

117:                                              ; preds = %116, %96
  %118 = load i32, i32* %4, align 4
  %119 = icmp sge i32 %118, 2
  br i1 %119, label %120, label %127

120:                                              ; preds = %117
  %121 = load i8**, i8*** %5, align 8
  %122 = getelementptr inbounds i8*, i8** %121, i64 1
  %123 = load i8*, i8** %122, align 8
  %124 = call i64 @strcasecmp(i8* %123, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0))
  %125 = icmp eq i64 %124, 0
  %126 = zext i1 %125 to i32
  store i32 %126, i32* %12, align 4
  br label %127

127:                                              ; preds = %120, %117
  %128 = load i32, i32* %13, align 4
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %130, label %148

130:                                              ; preds = %127
  %131 = load %struct.sway_node*, %struct.sway_node** %7, align 8
  %132 = getelementptr inbounds %struct.sway_node, %struct.sway_node* %131, i32 0, i32 0
  %133 = load i64, i64* %132, align 8
  %134 = load i64, i64* @N_WORKSPACE, align 8
  %135 = icmp eq i64 %133, %134
  br i1 %135, label %136, label %148

136:                                              ; preds = %130
  %137 = load %struct.sway_workspace*, %struct.sway_workspace** %9, align 8
  %138 = call %struct.sway_container* @workspace_wrap_children(%struct.sway_workspace* %137)
  store %struct.sway_container* %138, %struct.sway_container** %8, align 8
  %139 = load i32, i32* @L_HORIZ, align 4
  %140 = load %struct.sway_workspace*, %struct.sway_workspace** %9, align 8
  %141 = getelementptr inbounds %struct.sway_workspace, %struct.sway_workspace* %140, i32 0, i32 0
  store i32 %139, i32* %141, align 8
  %142 = load %struct.TYPE_10__*, %struct.TYPE_10__** @config, align 8
  %143 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %142, i32 0, i32 0
  %144 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 8
  %146 = load %struct.sway_container*, %struct.sway_container** %8, align 8
  %147 = call i32 @seat_set_focus_container(i32 %145, %struct.sway_container* %146)
  br label %148

148:                                              ; preds = %136, %130, %127
  %149 = load i64, i64* @FULLSCREEN_NONE, align 8
  %150 = trunc i64 %149 to i32
  store i32 %150, i32* %14, align 4
  %151 = load i32, i32* %13, align 4
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %153, label %162

153:                                              ; preds = %148
  %154 = load i32, i32* %12, align 4
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %156, label %158

156:                                              ; preds = %153
  %157 = load i32, i32* @FULLSCREEN_GLOBAL, align 4
  br label %160

158:                                              ; preds = %153
  %159 = load i32, i32* @FULLSCREEN_WORKSPACE, align 4
  br label %160

160:                                              ; preds = %158, %156
  %161 = phi i32 [ %157, %156 ], [ %159, %158 ]
  store i32 %161, i32* %14, align 4
  br label %162

162:                                              ; preds = %160, %148
  %163 = load %struct.sway_container*, %struct.sway_container** %8, align 8
  %164 = load i32, i32* %14, align 4
  %165 = call i32 @container_set_fullscreen(%struct.sway_container* %163, i32 %164)
  %166 = call i32 (...) @arrange_root()
  %167 = load i32, i32* @CMD_SUCCESS, align 4
  %168 = call %struct.cmd_results* @cmd_results_new(i32 %167, i8* null)
  store %struct.cmd_results* %168, %struct.cmd_results** %3, align 8
  br label %169

169:                                              ; preds = %162, %56, %28, %19
  %170 = load %struct.cmd_results*, %struct.cmd_results** %3, align 8
  ret %struct.cmd_results* %170
}

declare dso_local %struct.cmd_results* @checkarg(i32, i8*, i32, i32) #1

declare dso_local %struct.cmd_results* @cmd_results_new(i32, i8*) #1

declare dso_local i64 @strcasecmp(i8*, i8*) #1

declare dso_local i32 @parse_boolean(i8*, i32) #1

declare dso_local %struct.sway_container* @workspace_wrap_children(%struct.sway_workspace*) #1

declare dso_local i32 @seat_set_focus_container(i32, %struct.sway_container*) #1

declare dso_local i32 @container_set_fullscreen(%struct.sway_container*, i32) #1

declare dso_local i32 @arrange_root(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
