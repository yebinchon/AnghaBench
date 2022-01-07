; ModuleID = '/home/carl/AnghaBench/sway/sway/tree/extr_workspace.c_workspace_next_name.c'
source_filename = "/home/carl/AnghaBench/sway/sway/tree/extr_workspace.c_workspace_next_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { %struct.TYPE_10__*, %struct.sway_mode* }
%struct.TYPE_10__ = type { i32, %struct.workspace_config** }
%struct.workspace_config = type { i8*, %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i32, i32* }
%struct.sway_mode = type { %struct.TYPE_9__*, %struct.TYPE_8__* }
%struct.TYPE_9__ = type { i32, i32* }
%struct.TYPE_8__ = type { i32, i32* }
%struct.sway_output = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i8* }

@SWAY_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [55 x i8] c"Workspace: Generating new workspace name for output %s\00", align 1
@config = common dso_local global %struct.TYPE_12__* null, align 8
@INT_MAX = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [2 x i8] c"*\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"%u\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @workspace_next_name(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca %struct.sway_mode*, align 8
  %5 = alloca [128 x i8], align 16
  %6 = alloca %struct.sway_output*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.workspace_config*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca [12 x i8], align 1
  %16 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  %17 = load i32, i32* @SWAY_DEBUG, align 4
  %18 = load i8*, i8** %3, align 8
  %19 = call i32 @sway_log(i32 %17, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str, i64 0, i64 0), i8* %18)
  %20 = load %struct.TYPE_12__*, %struct.TYPE_12__** @config, align 8
  %21 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %20, i32 0, i32 1
  %22 = load %struct.sway_mode*, %struct.sway_mode** %21, align 8
  store %struct.sway_mode* %22, %struct.sway_mode** %4, align 8
  %23 = load i8*, i8** %3, align 8
  %24 = call %struct.sway_output* @output_by_name_or_id(i8* %23)
  store %struct.sway_output* %24, %struct.sway_output** %6, align 8
  %25 = load %struct.sway_output*, %struct.sway_output** %6, align 8
  %26 = icmp ne %struct.sway_output* %25, null
  br i1 %26, label %28, label %27

27:                                               ; preds = %1
  store i8* null, i8** %2, align 8
  br label %195

28:                                               ; preds = %1
  %29 = load %struct.sway_output*, %struct.sway_output** %6, align 8
  %30 = getelementptr inbounds %struct.sway_output, %struct.sway_output* %29, i32 0, i32 0
  %31 = load %struct.TYPE_7__*, %struct.TYPE_7__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %31, i32 0, i32 0
  %33 = load i8*, i8** %32, align 8
  store i8* %33, i8** %3, align 8
  %34 = getelementptr inbounds [128 x i8], [128 x i8]* %5, i64 0, i64 0
  %35 = load %struct.sway_output*, %struct.sway_output** %6, align 8
  %36 = call i32 @output_get_identifier(i8* %34, i32 128, %struct.sway_output* %35)
  %37 = load i32, i32* @INT_MAX, align 4
  store i32 %37, i32* %7, align 4
  store i8* null, i8** %8, align 8
  store i32 0, i32* %9, align 4
  br label %38

38:                                               ; preds = %58, %28
  %39 = load i32, i32* %9, align 4
  %40 = load %struct.sway_mode*, %struct.sway_mode** %4, align 8
  %41 = getelementptr inbounds %struct.sway_mode, %struct.sway_mode* %40, i32 0, i32 1
  %42 = load %struct.TYPE_8__*, %struct.TYPE_8__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = icmp slt i32 %39, %44
  br i1 %45, label %46, label %61

46:                                               ; preds = %38
  %47 = load %struct.sway_mode*, %struct.sway_mode** %4, align 8
  %48 = getelementptr inbounds %struct.sway_mode, %struct.sway_mode* %47, i32 0, i32 1
  %49 = load %struct.TYPE_8__*, %struct.TYPE_8__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %49, i32 0, i32 1
  %51 = load i32*, i32** %50, align 8
  %52 = load i32, i32* %9, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i32, i32* %51, i64 %53
  %55 = load i32, i32* %54, align 4
  %56 = load i8*, i8** %3, align 8
  %57 = call i32 @workspace_name_from_binding(i32 %55, i8* %56, i32* %7, i8** %8)
  br label %58

58:                                               ; preds = %46
  %59 = load i32, i32* %9, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %9, align 4
  br label %38

61:                                               ; preds = %38
  store i32 0, i32* %10, align 4
  br label %62

62:                                               ; preds = %82, %61
  %63 = load i32, i32* %10, align 4
  %64 = load %struct.sway_mode*, %struct.sway_mode** %4, align 8
  %65 = getelementptr inbounds %struct.sway_mode, %struct.sway_mode* %64, i32 0, i32 0
  %66 = load %struct.TYPE_9__*, %struct.TYPE_9__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = icmp slt i32 %63, %68
  br i1 %69, label %70, label %85

70:                                               ; preds = %62
  %71 = load %struct.sway_mode*, %struct.sway_mode** %4, align 8
  %72 = getelementptr inbounds %struct.sway_mode, %struct.sway_mode* %71, i32 0, i32 0
  %73 = load %struct.TYPE_9__*, %struct.TYPE_9__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %73, i32 0, i32 1
  %75 = load i32*, i32** %74, align 8
  %76 = load i32, i32* %10, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds i32, i32* %75, i64 %77
  %79 = load i32, i32* %78, align 4
  %80 = load i8*, i8** %3, align 8
  %81 = call i32 @workspace_name_from_binding(i32 %79, i8* %80, i32* %7, i8** %8)
  br label %82

82:                                               ; preds = %70
  %83 = load i32, i32* %10, align 4
  %84 = add nsw i32 %83, 1
  store i32 %84, i32* %10, align 4
  br label %62

85:                                               ; preds = %62
  store i32 0, i32* %11, align 4
  br label %86

86:                                               ; preds = %173, %85
  %87 = load i32, i32* %11, align 4
  %88 = load %struct.TYPE_12__*, %struct.TYPE_12__** @config, align 8
  %89 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %88, i32 0, i32 0
  %90 = load %struct.TYPE_10__*, %struct.TYPE_10__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = icmp slt i32 %87, %92
  br i1 %93, label %94, label %176

94:                                               ; preds = %86
  %95 = load %struct.TYPE_12__*, %struct.TYPE_12__** @config, align 8
  %96 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %95, i32 0, i32 0
  %97 = load %struct.TYPE_10__*, %struct.TYPE_10__** %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %97, i32 0, i32 1
  %99 = load %struct.workspace_config**, %struct.workspace_config*** %98, align 8
  %100 = load i32, i32* %11, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds %struct.workspace_config*, %struct.workspace_config** %99, i64 %101
  %103 = load %struct.workspace_config*, %struct.workspace_config** %102, align 8
  store %struct.workspace_config* %103, %struct.workspace_config** %12, align 8
  %104 = load %struct.workspace_config*, %struct.workspace_config** %12, align 8
  %105 = getelementptr inbounds %struct.workspace_config, %struct.workspace_config* %104, i32 0, i32 0
  %106 = load i8*, i8** %105, align 8
  %107 = call i64 @workspace_by_name(i8* %106)
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %109, label %110

109:                                              ; preds = %94
  br label %173

110:                                              ; preds = %94
  store i32 0, i32* %13, align 4
  store i32 0, i32* %14, align 4
  br label %111

111:                                              ; preds = %165, %110
  %112 = load i32, i32* %14, align 4
  %113 = load %struct.workspace_config*, %struct.workspace_config** %12, align 8
  %114 = getelementptr inbounds %struct.workspace_config, %struct.workspace_config* %113, i32 0, i32 1
  %115 = load %struct.TYPE_11__*, %struct.TYPE_11__** %114, align 8
  %116 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 8
  %118 = icmp slt i32 %112, %117
  br i1 %118, label %119, label %168

119:                                              ; preds = %111
  %120 = load %struct.workspace_config*, %struct.workspace_config** %12, align 8
  %121 = getelementptr inbounds %struct.workspace_config, %struct.workspace_config* %120, i32 0, i32 1
  %122 = load %struct.TYPE_11__*, %struct.TYPE_11__** %121, align 8
  %123 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %122, i32 0, i32 1
  %124 = load i32*, i32** %123, align 8
  %125 = load i32, i32* %14, align 4
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds i32, i32* %124, i64 %126
  %128 = load i32, i32* %127, align 4
  %129 = call i64 @strcmp(i32 %128, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %130 = icmp eq i64 %129, 0
  br i1 %130, label %157, label %131

131:                                              ; preds = %119
  %132 = load %struct.workspace_config*, %struct.workspace_config** %12, align 8
  %133 = getelementptr inbounds %struct.workspace_config, %struct.workspace_config* %132, i32 0, i32 1
  %134 = load %struct.TYPE_11__*, %struct.TYPE_11__** %133, align 8
  %135 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %134, i32 0, i32 1
  %136 = load i32*, i32** %135, align 8
  %137 = load i32, i32* %14, align 4
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds i32, i32* %136, i64 %138
  %140 = load i32, i32* %139, align 4
  %141 = load i8*, i8** %3, align 8
  %142 = call i64 @strcmp(i32 %140, i8* %141)
  %143 = icmp eq i64 %142, 0
  br i1 %143, label %157, label %144

144:                                              ; preds = %131
  %145 = load %struct.workspace_config*, %struct.workspace_config** %12, align 8
  %146 = getelementptr inbounds %struct.workspace_config, %struct.workspace_config* %145, i32 0, i32 1
  %147 = load %struct.TYPE_11__*, %struct.TYPE_11__** %146, align 8
  %148 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %147, i32 0, i32 1
  %149 = load i32*, i32** %148, align 8
  %150 = load i32, i32* %14, align 4
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds i32, i32* %149, i64 %151
  %153 = load i32, i32* %152, align 4
  %154 = getelementptr inbounds [128 x i8], [128 x i8]* %5, i64 0, i64 0
  %155 = call i64 @strcmp(i32 %153, i8* %154)
  %156 = icmp eq i64 %155, 0
  br i1 %156, label %157, label %164

157:                                              ; preds = %144, %131, %119
  store i32 1, i32* %13, align 4
  %158 = load i8*, i8** %8, align 8
  %159 = call i32 @free(i8* %158)
  %160 = load %struct.workspace_config*, %struct.workspace_config** %12, align 8
  %161 = getelementptr inbounds %struct.workspace_config, %struct.workspace_config* %160, i32 0, i32 0
  %162 = load i8*, i8** %161, align 8
  %163 = call i8* @strdup(i8* %162)
  store i8* %163, i8** %8, align 8
  br label %168

164:                                              ; preds = %144
  br label %165

165:                                              ; preds = %164
  %166 = load i32, i32* %14, align 4
  %167 = add nsw i32 %166, 1
  store i32 %167, i32* %14, align 4
  br label %111

168:                                              ; preds = %157, %111
  %169 = load i32, i32* %13, align 4
  %170 = icmp ne i32 %169, 0
  br i1 %170, label %171, label %172

171:                                              ; preds = %168
  br label %176

172:                                              ; preds = %168
  br label %173

173:                                              ; preds = %172, %109
  %174 = load i32, i32* %11, align 4
  %175 = add nsw i32 %174, 1
  store i32 %175, i32* %11, align 4
  br label %86

176:                                              ; preds = %171, %86
  %177 = load i8*, i8** %8, align 8
  %178 = icmp ne i8* %177, null
  br i1 %178, label %179, label %181

179:                                              ; preds = %176
  %180 = load i8*, i8** %8, align 8
  store i8* %180, i8** %2, align 8
  br label %195

181:                                              ; preds = %176
  %182 = bitcast [12 x i8]* %15 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 1 %182, i8 0, i64 12, i1 false)
  store i32 1, i32* %16, align 4
  br label %183

183:                                              ; preds = %188, %181
  %184 = getelementptr inbounds [12 x i8], [12 x i8]* %15, i64 0, i64 0
  %185 = load i32, i32* %16, align 4
  %186 = add i32 %185, 1
  store i32 %186, i32* %16, align 4
  %187 = call i32 @snprintf(i8* %184, i32 12, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i32 %185)
  br label %188

188:                                              ; preds = %183
  %189 = getelementptr inbounds [12 x i8], [12 x i8]* %15, i64 0, i64 0
  %190 = call i64 @workspace_by_number(i8* %189)
  %191 = icmp ne i64 %190, 0
  br i1 %191, label %183, label %192

192:                                              ; preds = %188
  %193 = getelementptr inbounds [12 x i8], [12 x i8]* %15, i64 0, i64 0
  %194 = call i8* @strdup(i8* %193)
  store i8* %194, i8** %2, align 8
  br label %195

195:                                              ; preds = %192, %179, %27
  %196 = load i8*, i8** %2, align 8
  ret i8* %196
}

declare dso_local i32 @sway_log(i32, i8*, i8*) #1

declare dso_local %struct.sway_output* @output_by_name_or_id(i8*) #1

declare dso_local i32 @output_get_identifier(i8*, i32, %struct.sway_output*) #1

declare dso_local i32 @workspace_name_from_binding(i32, i8*, i32*, i8**) #1

declare dso_local i64 @workspace_by_name(i8*) #1

declare dso_local i64 @strcmp(i32, i8*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i8* @strdup(i8*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #1

declare dso_local i64 @workspace_by_number(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
