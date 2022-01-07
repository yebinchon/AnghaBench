; ModuleID = '/home/carl/AnghaBench/sway/sway/commands/extr_workspace.c_cmd_workspace_gaps.c'
source_filename = "/home/carl/AnghaBench/sway/sway/commands/extr_workspace.c_cmd_workspace_gaps.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cmd_results = type { i32 }
%struct.workspace_config = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32, i32 }

@__const.cmd_workspace_gaps.expected = private unnamed_addr constant [92 x i8] c"Expected 'workspace <name> gaps inner|outer|horizontal|vertical|top|right|bottom|left <px>'\00", align 16
@.str = private unnamed_addr constant [10 x i8] c"workspace\00", align 1
@EXPECTED_EQUAL_TO = common dso_local global i32 0, align 4
@CMD_FAILURE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [36 x i8] c"Unable to allocate workspace output\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"inner\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"outer\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"vertical\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"top\00", align 1
@.str.6 = private unnamed_addr constant [11 x i8] c"horizontal\00", align 1
@.str.7 = private unnamed_addr constant [6 x i8] c"right\00", align 1
@.str.8 = private unnamed_addr constant [7 x i8] c"bottom\00", align 1
@.str.9 = private unnamed_addr constant [5 x i8] c"left\00", align 1
@CMD_INVALID = common dso_local global i32 0, align 4
@INT_MIN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.cmd_results* (i32, i8**, i32)* @cmd_workspace_gaps to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.cmd_results* @cmd_workspace_gaps(i32 %0, i8** %1, i32 %2) #0 {
  %4 = alloca %struct.cmd_results*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8**, align 8
  %7 = alloca i32, align 4
  %8 = alloca [92 x i8], align 16
  %9 = alloca %struct.cmd_results*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca %struct.workspace_config*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  store i32 %0, i32* %5, align 4
  store i8** %1, i8*** %6, align 8
  store i32 %2, i32* %7, align 4
  %16 = bitcast [92 x i8]* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %16, i8* align 16 getelementptr inbounds ([92 x i8], [92 x i8]* @__const.cmd_workspace_gaps.expected, i32 0, i32 0), i64 92, i1 false)
  store %struct.cmd_results* null, %struct.cmd_results** %9, align 8
  %17 = load i32, i32* %5, align 4
  %18 = load i32, i32* @EXPECTED_EQUAL_TO, align 4
  %19 = load i32, i32* %7, align 4
  %20 = add nsw i32 %19, 3
  %21 = call %struct.cmd_results* @checkarg(i32 %17, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %18, i32 %20)
  store %struct.cmd_results* %21, %struct.cmd_results** %9, align 8
  %22 = icmp ne %struct.cmd_results* %21, null
  br i1 %22, label %23, label %25

23:                                               ; preds = %3
  %24 = load %struct.cmd_results*, %struct.cmd_results** %9, align 8
  store %struct.cmd_results* %24, %struct.cmd_results** %4, align 8
  br label %168

25:                                               ; preds = %3
  %26 = load i8**, i8*** %6, align 8
  %27 = load i32, i32* %5, align 4
  %28 = sub nsw i32 %27, 3
  %29 = call i8* @join_args(i8** %26, i32 %28)
  store i8* %29, i8** %10, align 8
  %30 = load i8*, i8** %10, align 8
  %31 = call %struct.workspace_config* @workspace_config_find_or_create(i8* %30)
  store %struct.workspace_config* %31, %struct.workspace_config** %11, align 8
  %32 = load i8*, i8** %10, align 8
  %33 = call i32 @free(i8* %32)
  %34 = load %struct.workspace_config*, %struct.workspace_config** %11, align 8
  %35 = icmp ne %struct.workspace_config* %34, null
  br i1 %35, label %39, label %36

36:                                               ; preds = %25
  %37 = load i32, i32* @CMD_FAILURE, align 4
  %38 = call %struct.cmd_results* @cmd_results_new(i32 %37, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0))
  store %struct.cmd_results* %38, %struct.cmd_results** %4, align 8
  br label %168

39:                                               ; preds = %25
  %40 = load i8**, i8*** %6, align 8
  %41 = load i32, i32* %7, align 4
  %42 = add nsw i32 %41, 2
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i8*, i8** %40, i64 %43
  %45 = load i8*, i8** %44, align 8
  %46 = call i32 @strtol(i8* %45, i8** %12, i32 10)
  store i32 %46, i32* %13, align 4
  %47 = load i8*, i8** %12, align 8
  %48 = call i64 @strlen(i8* %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %54

50:                                               ; preds = %39
  %51 = load i32, i32* @CMD_FAILURE, align 4
  %52 = getelementptr inbounds [92 x i8], [92 x i8]* %8, i64 0, i64 0
  %53 = call %struct.cmd_results* @cmd_results_new(i32 %51, i8* %52)
  store %struct.cmd_results* %53, %struct.cmd_results** %4, align 8
  br label %168

54:                                               ; preds = %39
  store i32 0, i32* %14, align 4
  %55 = load i8**, i8*** %6, align 8
  %56 = load i32, i32* %7, align 4
  %57 = add nsw i32 %56, 1
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i8*, i8** %55, i64 %58
  %60 = load i8*, i8** %59, align 8
  store i8* %60, i8** %15, align 8
  %61 = load i8*, i8** %15, align 8
  %62 = call i32 @strcasecmp(i8* %61, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0))
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %74, label %64

64:                                               ; preds = %54
  store i32 1, i32* %14, align 4
  %65 = load i32, i32* %13, align 4
  %66 = icmp sge i32 %65, 0
  br i1 %66, label %67, label %69

67:                                               ; preds = %64
  %68 = load i32, i32* %13, align 4
  br label %70

69:                                               ; preds = %64
  br label %70

70:                                               ; preds = %69, %67
  %71 = phi i32 [ %68, %67 ], [ 0, %69 ]
  %72 = load %struct.workspace_config*, %struct.workspace_config** %11, align 8
  %73 = getelementptr inbounds %struct.workspace_config, %struct.workspace_config* %72, i32 0, i32 0
  store i32 %71, i32* %73, align 4
  br label %143

74:                                               ; preds = %54
  %75 = load i8*, i8** %15, align 8
  %76 = call i32 @strcasecmp(i8* %75, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0))
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %86

78:                                               ; preds = %74
  %79 = load i8*, i8** %15, align 8
  %80 = call i32 @strcasecmp(i8* %79, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0))
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %86

82:                                               ; preds = %78
  %83 = load i8*, i8** %15, align 8
  %84 = call i32 @strcasecmp(i8* %83, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0))
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %91, label %86

86:                                               ; preds = %82, %78, %74
  store i32 1, i32* %14, align 4
  %87 = load i32, i32* %13, align 4
  %88 = load %struct.workspace_config*, %struct.workspace_config** %11, align 8
  %89 = getelementptr inbounds %struct.workspace_config, %struct.workspace_config* %88, i32 0, i32 1
  %90 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %89, i32 0, i32 0
  store i32 %87, i32* %90, align 4
  br label %91

91:                                               ; preds = %86, %82
  %92 = load i8*, i8** %15, align 8
  %93 = call i32 @strcasecmp(i8* %92, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0))
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %103

95:                                               ; preds = %91
  %96 = load i8*, i8** %15, align 8
  %97 = call i32 @strcasecmp(i8* %96, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.6, i64 0, i64 0))
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %103

99:                                               ; preds = %95
  %100 = load i8*, i8** %15, align 8
  %101 = call i32 @strcasecmp(i8* %100, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0))
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %108, label %103

103:                                              ; preds = %99, %95, %91
  store i32 1, i32* %14, align 4
  %104 = load i32, i32* %13, align 4
  %105 = load %struct.workspace_config*, %struct.workspace_config** %11, align 8
  %106 = getelementptr inbounds %struct.workspace_config, %struct.workspace_config* %105, i32 0, i32 1
  %107 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %106, i32 0, i32 1
  store i32 %104, i32* %107, align 4
  br label %108

108:                                              ; preds = %103, %99
  %109 = load i8*, i8** %15, align 8
  %110 = call i32 @strcasecmp(i8* %109, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0))
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %120

112:                                              ; preds = %108
  %113 = load i8*, i8** %15, align 8
  %114 = call i32 @strcasecmp(i8* %113, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0))
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %120

116:                                              ; preds = %112
  %117 = load i8*, i8** %15, align 8
  %118 = call i32 @strcasecmp(i8* %117, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i64 0, i64 0))
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %125, label %120

120:                                              ; preds = %116, %112, %108
  store i32 1, i32* %14, align 4
  %121 = load i32, i32* %13, align 4
  %122 = load %struct.workspace_config*, %struct.workspace_config** %11, align 8
  %123 = getelementptr inbounds %struct.workspace_config, %struct.workspace_config* %122, i32 0, i32 1
  %124 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %123, i32 0, i32 2
  store i32 %121, i32* %124, align 4
  br label %125

125:                                              ; preds = %120, %116
  %126 = load i8*, i8** %15, align 8
  %127 = call i32 @strcasecmp(i8* %126, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0))
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %137

129:                                              ; preds = %125
  %130 = load i8*, i8** %15, align 8
  %131 = call i32 @strcasecmp(i8* %130, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.6, i64 0, i64 0))
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %137

133:                                              ; preds = %129
  %134 = load i8*, i8** %15, align 8
  %135 = call i32 @strcasecmp(i8* %134, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i64 0, i64 0))
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %142, label %137

137:                                              ; preds = %133, %129, %125
  store i32 1, i32* %14, align 4
  %138 = load i32, i32* %13, align 4
  %139 = load %struct.workspace_config*, %struct.workspace_config** %11, align 8
  %140 = getelementptr inbounds %struct.workspace_config, %struct.workspace_config* %139, i32 0, i32 1
  %141 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %140, i32 0, i32 3
  store i32 %138, i32* %141, align 4
  br label %142

142:                                              ; preds = %137, %133
  br label %143

143:                                              ; preds = %142, %70
  %144 = load i32, i32* %14, align 4
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %150, label %146

146:                                              ; preds = %143
  %147 = load i32, i32* @CMD_INVALID, align 4
  %148 = getelementptr inbounds [92 x i8], [92 x i8]* %8, i64 0, i64 0
  %149 = call %struct.cmd_results* @cmd_results_new(i32 %147, i8* %148)
  store %struct.cmd_results* %149, %struct.cmd_results** %4, align 8
  br label %168

150:                                              ; preds = %143
  %151 = load %struct.workspace_config*, %struct.workspace_config** %11, align 8
  %152 = getelementptr inbounds %struct.workspace_config, %struct.workspace_config* %151, i32 0, i32 0
  %153 = load i32, i32* %152, align 4
  %154 = load i32, i32* @INT_MIN, align 4
  %155 = icmp ne i32 %153, %154
  br i1 %155, label %156, label %164

156:                                              ; preds = %150
  %157 = load %struct.workspace_config*, %struct.workspace_config** %11, align 8
  %158 = getelementptr inbounds %struct.workspace_config, %struct.workspace_config* %157, i32 0, i32 0
  %159 = load i32, i32* %158, align 4
  %160 = icmp slt i32 %159, 0
  br i1 %160, label %161, label %164

161:                                              ; preds = %156
  %162 = load %struct.workspace_config*, %struct.workspace_config** %11, align 8
  %163 = getelementptr inbounds %struct.workspace_config, %struct.workspace_config* %162, i32 0, i32 0
  store i32 0, i32* %163, align 4
  br label %164

164:                                              ; preds = %161, %156, %150
  %165 = load %struct.workspace_config*, %struct.workspace_config** %11, align 8
  %166 = call i32 @prevent_invalid_outer_gaps(%struct.workspace_config* %165)
  %167 = load %struct.cmd_results*, %struct.cmd_results** %9, align 8
  store %struct.cmd_results* %167, %struct.cmd_results** %4, align 8
  br label %168

168:                                              ; preds = %164, %146, %50, %36, %23
  %169 = load %struct.cmd_results*, %struct.cmd_results** %4, align 8
  ret %struct.cmd_results* %169
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local %struct.cmd_results* @checkarg(i32, i8*, i32, i32) #2

declare dso_local i8* @join_args(i8**, i32) #2

declare dso_local %struct.workspace_config* @workspace_config_find_or_create(i8*) #2

declare dso_local i32 @free(i8*) #2

declare dso_local %struct.cmd_results* @cmd_results_new(i32, i8*) #2

declare dso_local i32 @strtol(i8*, i8**, i32) #2

declare dso_local i64 @strlen(i8*) #2

declare dso_local i32 @strcasecmp(i8*, i8*) #2

declare dso_local i32 @prevent_invalid_outer_gaps(%struct.workspace_config*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
