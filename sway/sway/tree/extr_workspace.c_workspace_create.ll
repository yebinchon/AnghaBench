; ModuleID = '/home/carl/AnghaBench/sway/sway/tree/extr_workspace.c_workspace_create.c'
source_filename = "/home/carl/AnghaBench/sway/sway/tree/extr_workspace.c_workspace_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i64, %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i64, i64, i64, i64 }
%struct.TYPE_13__ = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i32 }
%struct.sway_workspace = type { i64, i32, i8*, %struct.TYPE_9__, i8*, i8*, i32, i32, i32* }
%struct.sway_output = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32 }
%struct.workspace_config = type { i64, %struct.TYPE_11__*, %struct.TYPE_10__ }
%struct.TYPE_11__ = type { i32, i8** }
%struct.TYPE_10__ = type { i64, i64, i64, i64 }

@SWAY_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"Adding workspace %s for output %s\00", align 1
@SWAY_ERROR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"Unable to allocate sway_workspace\00", align 1
@N_WORKSPACE = common dso_local global i32 0, align 4
@L_NONE = common dso_local global i32 0, align 4
@config = common dso_local global %struct.TYPE_14__* null, align 8
@INT_MIN = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [2 x i8] c"*\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"init\00", align 1
@root = common dso_local global %struct.TYPE_13__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.sway_workspace* @workspace_create(%struct.sway_output* %0, i8* %1) #0 {
  %3 = alloca %struct.sway_workspace*, align 8
  %4 = alloca %struct.sway_output*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.sway_workspace*, align 8
  %7 = alloca %struct.workspace_config*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  store %struct.sway_output* %0, %struct.sway_output** %4, align 8
  store i8* %1, i8** %5, align 8
  %10 = load %struct.sway_output*, %struct.sway_output** %4, align 8
  %11 = icmp eq %struct.sway_output* %10, null
  br i1 %11, label %12, label %15

12:                                               ; preds = %2
  %13 = load i8*, i8** %5, align 8
  %14 = call %struct.sway_output* @workspace_get_initial_output(i8* %13)
  store %struct.sway_output* %14, %struct.sway_output** %4, align 8
  br label %15

15:                                               ; preds = %12, %2
  %16 = load i32, i32* @SWAY_DEBUG, align 4
  %17 = load i8*, i8** %5, align 8
  %18 = load %struct.sway_output*, %struct.sway_output** %4, align 8
  %19 = getelementptr inbounds %struct.sway_output, %struct.sway_output* %18, i32 0, i32 0
  %20 = load %struct.TYPE_8__*, %struct.TYPE_8__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 (i32, i8*, ...) @sway_log(i32 %16, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i8* %17, i32 %22)
  %24 = call %struct.sway_workspace* @calloc(i32 1, i32 88)
  store %struct.sway_workspace* %24, %struct.sway_workspace** %6, align 8
  %25 = load %struct.sway_workspace*, %struct.sway_workspace** %6, align 8
  %26 = icmp ne %struct.sway_workspace* %25, null
  br i1 %26, label %30, label %27

27:                                               ; preds = %15
  %28 = load i32, i32* @SWAY_ERROR, align 4
  %29 = call i32 (i32, i8*, ...) @sway_log(i32 %28, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0))
  store %struct.sway_workspace* null, %struct.sway_workspace** %3, align 8
  br label %205

30:                                               ; preds = %15
  %31 = load %struct.sway_workspace*, %struct.sway_workspace** %6, align 8
  %32 = getelementptr inbounds %struct.sway_workspace, %struct.sway_workspace* %31, i32 0, i32 1
  %33 = load i32, i32* @N_WORKSPACE, align 4
  %34 = load %struct.sway_workspace*, %struct.sway_workspace** %6, align 8
  %35 = call i32 @node_init(i32* %32, i32 %33, %struct.sway_workspace* %34)
  %36 = load i8*, i8** %5, align 8
  %37 = icmp ne i8* %36, null
  br i1 %37, label %38, label %41

38:                                               ; preds = %30
  %39 = load i8*, i8** %5, align 8
  %40 = call i32* @strdup(i8* %39)
  br label %42

41:                                               ; preds = %30
  br label %42

42:                                               ; preds = %41, %38
  %43 = phi i32* [ %40, %38 ], [ null, %41 ]
  %44 = load %struct.sway_workspace*, %struct.sway_workspace** %6, align 8
  %45 = getelementptr inbounds %struct.sway_workspace, %struct.sway_workspace* %44, i32 0, i32 8
  store i32* %43, i32** %45, align 8
  %46 = load i32, i32* @L_NONE, align 4
  %47 = load %struct.sway_workspace*, %struct.sway_workspace** %6, align 8
  %48 = getelementptr inbounds %struct.sway_workspace, %struct.sway_workspace* %47, i32 0, i32 7
  store i32 %46, i32* %48, align 4
  %49 = load %struct.sway_output*, %struct.sway_output** %4, align 8
  %50 = call i32 @output_get_default_layout(%struct.sway_output* %49)
  %51 = load %struct.sway_workspace*, %struct.sway_workspace** %6, align 8
  %52 = getelementptr inbounds %struct.sway_workspace, %struct.sway_workspace* %51, i32 0, i32 6
  store i32 %50, i32* %52, align 8
  %53 = call i8* (...) @create_list()
  %54 = load %struct.sway_workspace*, %struct.sway_workspace** %6, align 8
  %55 = getelementptr inbounds %struct.sway_workspace, %struct.sway_workspace* %54, i32 0, i32 5
  store i8* %53, i8** %55, align 8
  %56 = call i8* (...) @create_list()
  %57 = load %struct.sway_workspace*, %struct.sway_workspace** %6, align 8
  %58 = getelementptr inbounds %struct.sway_workspace, %struct.sway_workspace* %57, i32 0, i32 4
  store i8* %56, i8** %58, align 8
  %59 = call i8* (...) @create_list()
  %60 = load %struct.sway_workspace*, %struct.sway_workspace** %6, align 8
  %61 = getelementptr inbounds %struct.sway_workspace, %struct.sway_workspace* %60, i32 0, i32 2
  store i8* %59, i8** %61, align 8
  %62 = load %struct.sway_workspace*, %struct.sway_workspace** %6, align 8
  %63 = getelementptr inbounds %struct.sway_workspace, %struct.sway_workspace* %62, i32 0, i32 3
  %64 = load %struct.TYPE_14__*, %struct.TYPE_14__** @config, align 8
  %65 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %64, i32 0, i32 1
  %66 = bitcast %struct.TYPE_9__* %63 to i8*
  %67 = bitcast %struct.TYPE_9__* %65 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %66, i8* align 8 %67, i64 32, i1 false)
  %68 = load %struct.TYPE_14__*, %struct.TYPE_14__** @config, align 8
  %69 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = load %struct.sway_workspace*, %struct.sway_workspace** %6, align 8
  %72 = getelementptr inbounds %struct.sway_workspace, %struct.sway_workspace* %71, i32 0, i32 0
  store i64 %70, i64* %72, align 8
  %73 = load i8*, i8** %5, align 8
  %74 = icmp ne i8* %73, null
  br i1 %74, label %75, label %187

75:                                               ; preds = %42
  %76 = load i8*, i8** %5, align 8
  %77 = call %struct.workspace_config* @workspace_find_config(i8* %76)
  store %struct.workspace_config* %77, %struct.workspace_config** %7, align 8
  %78 = load %struct.workspace_config*, %struct.workspace_config** %7, align 8
  %79 = icmp ne %struct.workspace_config* %78, null
  br i1 %79, label %80, label %186

80:                                               ; preds = %75
  %81 = load %struct.workspace_config*, %struct.workspace_config** %7, align 8
  %82 = getelementptr inbounds %struct.workspace_config, %struct.workspace_config* %81, i32 0, i32 2
  %83 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = load i64, i64* @INT_MIN, align 8
  %86 = icmp ne i64 %84, %85
  br i1 %86, label %87, label %95

87:                                               ; preds = %80
  %88 = load %struct.workspace_config*, %struct.workspace_config** %7, align 8
  %89 = getelementptr inbounds %struct.workspace_config, %struct.workspace_config* %88, i32 0, i32 2
  %90 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = load %struct.sway_workspace*, %struct.sway_workspace** %6, align 8
  %93 = getelementptr inbounds %struct.sway_workspace, %struct.sway_workspace* %92, i32 0, i32 3
  %94 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %93, i32 0, i32 0
  store i64 %91, i64* %94, align 8
  br label %95

95:                                               ; preds = %87, %80
  %96 = load %struct.workspace_config*, %struct.workspace_config** %7, align 8
  %97 = getelementptr inbounds %struct.workspace_config, %struct.workspace_config* %96, i32 0, i32 2
  %98 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %97, i32 0, i32 1
  %99 = load i64, i64* %98, align 8
  %100 = load i64, i64* @INT_MIN, align 8
  %101 = icmp ne i64 %99, %100
  br i1 %101, label %102, label %110

102:                                              ; preds = %95
  %103 = load %struct.workspace_config*, %struct.workspace_config** %7, align 8
  %104 = getelementptr inbounds %struct.workspace_config, %struct.workspace_config* %103, i32 0, i32 2
  %105 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %104, i32 0, i32 1
  %106 = load i64, i64* %105, align 8
  %107 = load %struct.sway_workspace*, %struct.sway_workspace** %6, align 8
  %108 = getelementptr inbounds %struct.sway_workspace, %struct.sway_workspace* %107, i32 0, i32 3
  %109 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %108, i32 0, i32 1
  store i64 %106, i64* %109, align 8
  br label %110

110:                                              ; preds = %102, %95
  %111 = load %struct.workspace_config*, %struct.workspace_config** %7, align 8
  %112 = getelementptr inbounds %struct.workspace_config, %struct.workspace_config* %111, i32 0, i32 2
  %113 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %112, i32 0, i32 2
  %114 = load i64, i64* %113, align 8
  %115 = load i64, i64* @INT_MIN, align 8
  %116 = icmp ne i64 %114, %115
  br i1 %116, label %117, label %125

117:                                              ; preds = %110
  %118 = load %struct.workspace_config*, %struct.workspace_config** %7, align 8
  %119 = getelementptr inbounds %struct.workspace_config, %struct.workspace_config* %118, i32 0, i32 2
  %120 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %119, i32 0, i32 2
  %121 = load i64, i64* %120, align 8
  %122 = load %struct.sway_workspace*, %struct.sway_workspace** %6, align 8
  %123 = getelementptr inbounds %struct.sway_workspace, %struct.sway_workspace* %122, i32 0, i32 3
  %124 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %123, i32 0, i32 2
  store i64 %121, i64* %124, align 8
  br label %125

125:                                              ; preds = %117, %110
  %126 = load %struct.workspace_config*, %struct.workspace_config** %7, align 8
  %127 = getelementptr inbounds %struct.workspace_config, %struct.workspace_config* %126, i32 0, i32 2
  %128 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %127, i32 0, i32 3
  %129 = load i64, i64* %128, align 8
  %130 = load i64, i64* @INT_MIN, align 8
  %131 = icmp ne i64 %129, %130
  br i1 %131, label %132, label %140

132:                                              ; preds = %125
  %133 = load %struct.workspace_config*, %struct.workspace_config** %7, align 8
  %134 = getelementptr inbounds %struct.workspace_config, %struct.workspace_config* %133, i32 0, i32 2
  %135 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %134, i32 0, i32 3
  %136 = load i64, i64* %135, align 8
  %137 = load %struct.sway_workspace*, %struct.sway_workspace** %6, align 8
  %138 = getelementptr inbounds %struct.sway_workspace, %struct.sway_workspace* %137, i32 0, i32 3
  %139 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %138, i32 0, i32 3
  store i64 %136, i64* %139, align 8
  br label %140

140:                                              ; preds = %132, %125
  %141 = load %struct.workspace_config*, %struct.workspace_config** %7, align 8
  %142 = getelementptr inbounds %struct.workspace_config, %struct.workspace_config* %141, i32 0, i32 0
  %143 = load i64, i64* %142, align 8
  %144 = load i64, i64* @INT_MIN, align 8
  %145 = icmp ne i64 %143, %144
  br i1 %145, label %146, label %152

146:                                              ; preds = %140
  %147 = load %struct.workspace_config*, %struct.workspace_config** %7, align 8
  %148 = getelementptr inbounds %struct.workspace_config, %struct.workspace_config* %147, i32 0, i32 0
  %149 = load i64, i64* %148, align 8
  %150 = load %struct.sway_workspace*, %struct.sway_workspace** %6, align 8
  %151 = getelementptr inbounds %struct.sway_workspace, %struct.sway_workspace* %150, i32 0, i32 0
  store i64 %149, i64* %151, align 8
  br label %152

152:                                              ; preds = %146, %140
  store i32 0, i32* %8, align 4
  br label %153

153:                                              ; preds = %182, %152
  %154 = load i32, i32* %8, align 4
  %155 = load %struct.workspace_config*, %struct.workspace_config** %7, align 8
  %156 = getelementptr inbounds %struct.workspace_config, %struct.workspace_config* %155, i32 0, i32 1
  %157 = load %struct.TYPE_11__*, %struct.TYPE_11__** %156, align 8
  %158 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %157, i32 0, i32 0
  %159 = load i32, i32* %158, align 8
  %160 = icmp slt i32 %154, %159
  br i1 %160, label %161, label %185

161:                                              ; preds = %153
  %162 = load %struct.workspace_config*, %struct.workspace_config** %7, align 8
  %163 = getelementptr inbounds %struct.workspace_config, %struct.workspace_config* %162, i32 0, i32 1
  %164 = load %struct.TYPE_11__*, %struct.TYPE_11__** %163, align 8
  %165 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %164, i32 0, i32 1
  %166 = load i8**, i8*** %165, align 8
  %167 = load i32, i32* %8, align 4
  %168 = sext i32 %167 to i64
  %169 = getelementptr inbounds i8*, i8** %166, i64 %168
  %170 = load i8*, i8** %169, align 8
  store i8* %170, i8** %9, align 8
  %171 = load i8*, i8** %9, align 8
  %172 = call i64 @strcmp(i8* %171, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  %173 = icmp ne i64 %172, 0
  br i1 %173, label %174, label %181

174:                                              ; preds = %161
  %175 = load %struct.sway_workspace*, %struct.sway_workspace** %6, align 8
  %176 = getelementptr inbounds %struct.sway_workspace, %struct.sway_workspace* %175, i32 0, i32 2
  %177 = load i8*, i8** %176, align 8
  %178 = load i8*, i8** %9, align 8
  %179 = call i32* @strdup(i8* %178)
  %180 = call i32 @list_add(i8* %177, i32* %179)
  br label %181

181:                                              ; preds = %174, %161
  br label %182

182:                                              ; preds = %181
  %183 = load i32, i32* %8, align 4
  %184 = add nsw i32 %183, 1
  store i32 %184, i32* %8, align 4
  br label %153

185:                                              ; preds = %153
  br label %186

186:                                              ; preds = %185, %75
  br label %187

187:                                              ; preds = %186, %42
  %188 = load %struct.sway_workspace*, %struct.sway_workspace** %6, align 8
  %189 = load %struct.sway_output*, %struct.sway_output** %4, align 8
  %190 = call i32 @workspace_output_add_priority(%struct.sway_workspace* %188, %struct.sway_output* %189)
  %191 = load %struct.sway_output*, %struct.sway_output** %4, align 8
  %192 = load %struct.sway_workspace*, %struct.sway_workspace** %6, align 8
  %193 = call i32 @output_add_workspace(%struct.sway_output* %191, %struct.sway_workspace* %192)
  %194 = load %struct.sway_output*, %struct.sway_output** %4, align 8
  %195 = call i32 @output_sort_workspaces(%struct.sway_output* %194)
  %196 = load %struct.sway_workspace*, %struct.sway_workspace** %6, align 8
  %197 = call i32 @ipc_event_workspace(i32* null, %struct.sway_workspace* %196, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0))
  %198 = load %struct.TYPE_13__*, %struct.TYPE_13__** @root, align 8
  %199 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %198, i32 0, i32 0
  %200 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %199, i32 0, i32 0
  %201 = load %struct.sway_workspace*, %struct.sway_workspace** %6, align 8
  %202 = getelementptr inbounds %struct.sway_workspace, %struct.sway_workspace* %201, i32 0, i32 1
  %203 = call i32 @wl_signal_emit(i32* %200, i32* %202)
  %204 = load %struct.sway_workspace*, %struct.sway_workspace** %6, align 8
  store %struct.sway_workspace* %204, %struct.sway_workspace** %3, align 8
  br label %205

205:                                              ; preds = %187, %27
  %206 = load %struct.sway_workspace*, %struct.sway_workspace** %3, align 8
  ret %struct.sway_workspace* %206
}

declare dso_local %struct.sway_output* @workspace_get_initial_output(i8*) #1

declare dso_local i32 @sway_log(i32, i8*, ...) #1

declare dso_local %struct.sway_workspace* @calloc(i32, i32) #1

declare dso_local i32 @node_init(i32*, i32, %struct.sway_workspace*) #1

declare dso_local i32* @strdup(i8*) #1

declare dso_local i32 @output_get_default_layout(%struct.sway_output*) #1

declare dso_local i8* @create_list(...) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local %struct.workspace_config* @workspace_find_config(i8*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @list_add(i8*, i32*) #1

declare dso_local i32 @workspace_output_add_priority(%struct.sway_workspace*, %struct.sway_output*) #1

declare dso_local i32 @output_add_workspace(%struct.sway_output*, %struct.sway_workspace*) #1

declare dso_local i32 @output_sort_workspaces(%struct.sway_output*) #1

declare dso_local i32 @ipc_event_workspace(i32*, %struct.sway_workspace*, i8*) #1

declare dso_local i32 @wl_signal_emit(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
