; ModuleID = '/home/carl/AnghaBench/sway/sway/commands/output/extr_transform.c_output_cmd_transform.c'
source_filename = "/home/carl/AnghaBench/sway/sway/commands/output/extr_transform.c_output_cmd_transform.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__, %struct.output_config* }
%struct.TYPE_4__ = type { i32, i8** }
%struct.output_config = type { i8*, i32 }
%struct.cmd_results = type { i32 }
%struct.sway_output = type { %struct.wlr_output* }
%struct.wlr_output = type { i32 }

@config = common dso_local global %struct.TYPE_6__* null, align 8
@CMD_FAILURE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"Missing output config\00", align 1
@CMD_INVALID = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"Missing transform argument.\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"normal\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"0\00", align 1
@WL_OUTPUT_TRANSFORM_NORMAL = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [3 x i8] c"90\00", align 1
@WL_OUTPUT_TRANSFORM_90 = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [4 x i8] c"180\00", align 1
@WL_OUTPUT_TRANSFORM_180 = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [4 x i8] c"270\00", align 1
@WL_OUTPUT_TRANSFORM_270 = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [8 x i8] c"flipped\00", align 1
@WL_OUTPUT_TRANSFORM_FLIPPED = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [11 x i8] c"flipped-90\00", align 1
@WL_OUTPUT_TRANSFORM_FLIPPED_90 = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [12 x i8] c"flipped-180\00", align 1
@WL_OUTPUT_TRANSFORM_FLIPPED_180 = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [12 x i8] c"flipped-270\00", align 1
@WL_OUTPUT_TRANSFORM_FLIPPED_270 = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [26 x i8] c"Invalid output transform.\00", align 1
@.str.12 = private unnamed_addr constant [10 x i8] c"clockwise\00", align 1
@.str.13 = private unnamed_addr constant [14 x i8] c"anticlockwise\00", align 1
@.str.14 = private unnamed_addr constant [27 x i8] c"Output config name not set\00", align 1
@.str.15 = private unnamed_addr constant [2 x i8] c"*\00", align 1
@.str.16 = private unnamed_addr constant [48 x i8] c"Cannot apply relative transform to all outputs.\00", align 1
@.str.17 = private unnamed_addr constant [53 x i8] c"Cannot apply relative transform to unknown output %s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.cmd_results* @output_cmd_transform(i32 %0, i8** %1) #0 {
  %3 = alloca %struct.cmd_results*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.output_config*, align 8
  %8 = alloca %struct.sway_output*, align 8
  %9 = alloca %struct.wlr_output*, align 8
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %10 = load %struct.TYPE_6__*, %struct.TYPE_6__** @config, align 8
  %11 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 1
  %13 = load %struct.output_config*, %struct.output_config** %12, align 8
  %14 = icmp ne %struct.output_config* %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %2
  %16 = load i32, i32* @CMD_FAILURE, align 4
  %17 = call %struct.cmd_results* (i32, i8*, ...) @cmd_results_new(i32 %16, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  store %struct.cmd_results* %17, %struct.cmd_results** %3, align 8
  br label %191

18:                                               ; preds = %2
  %19 = load i32, i32* %4, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %24, label %21

21:                                               ; preds = %18
  %22 = load i32, i32* @CMD_INVALID, align 4
  %23 = call %struct.cmd_results* (i32, i8*, ...) @cmd_results_new(i32 %22, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  store %struct.cmd_results* %23, %struct.cmd_results** %3, align 8
  br label %191

24:                                               ; preds = %18
  %25 = load i8**, i8*** %5, align 8
  %26 = load i8*, i8** %25, align 8
  %27 = call i64 @strcmp(i8* %26, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  %28 = icmp eq i64 %27, 0
  br i1 %28, label %34, label %29

29:                                               ; preds = %24
  %30 = load i8**, i8*** %5, align 8
  %31 = load i8*, i8** %30, align 8
  %32 = call i64 @strcmp(i8* %31, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  %33 = icmp eq i64 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %29, %24
  %35 = load i32, i32* @WL_OUTPUT_TRANSFORM_NORMAL, align 4
  store i32 %35, i32* %6, align 4
  br label %95

36:                                               ; preds = %29
  %37 = load i8**, i8*** %5, align 8
  %38 = load i8*, i8** %37, align 8
  %39 = call i64 @strcmp(i8* %38, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0))
  %40 = icmp eq i64 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %36
  %42 = load i32, i32* @WL_OUTPUT_TRANSFORM_90, align 4
  store i32 %42, i32* %6, align 4
  br label %94

43:                                               ; preds = %36
  %44 = load i8**, i8*** %5, align 8
  %45 = load i8*, i8** %44, align 8
  %46 = call i64 @strcmp(i8* %45, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0))
  %47 = icmp eq i64 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %43
  %49 = load i32, i32* @WL_OUTPUT_TRANSFORM_180, align 4
  store i32 %49, i32* %6, align 4
  br label %93

50:                                               ; preds = %43
  %51 = load i8**, i8*** %5, align 8
  %52 = load i8*, i8** %51, align 8
  %53 = call i64 @strcmp(i8* %52, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0))
  %54 = icmp eq i64 %53, 0
  br i1 %54, label %55, label %57

55:                                               ; preds = %50
  %56 = load i32, i32* @WL_OUTPUT_TRANSFORM_270, align 4
  store i32 %56, i32* %6, align 4
  br label %92

57:                                               ; preds = %50
  %58 = load i8**, i8*** %5, align 8
  %59 = load i8*, i8** %58, align 8
  %60 = call i64 @strcmp(i8* %59, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i64 0, i64 0))
  %61 = icmp eq i64 %60, 0
  br i1 %61, label %62, label %64

62:                                               ; preds = %57
  %63 = load i32, i32* @WL_OUTPUT_TRANSFORM_FLIPPED, align 4
  store i32 %63, i32* %6, align 4
  br label %91

64:                                               ; preds = %57
  %65 = load i8**, i8*** %5, align 8
  %66 = load i8*, i8** %65, align 8
  %67 = call i64 @strcmp(i8* %66, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.8, i64 0, i64 0))
  %68 = icmp eq i64 %67, 0
  br i1 %68, label %69, label %71

69:                                               ; preds = %64
  %70 = load i32, i32* @WL_OUTPUT_TRANSFORM_FLIPPED_90, align 4
  store i32 %70, i32* %6, align 4
  br label %90

71:                                               ; preds = %64
  %72 = load i8**, i8*** %5, align 8
  %73 = load i8*, i8** %72, align 8
  %74 = call i64 @strcmp(i8* %73, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.9, i64 0, i64 0))
  %75 = icmp eq i64 %74, 0
  br i1 %75, label %76, label %78

76:                                               ; preds = %71
  %77 = load i32, i32* @WL_OUTPUT_TRANSFORM_FLIPPED_180, align 4
  store i32 %77, i32* %6, align 4
  br label %89

78:                                               ; preds = %71
  %79 = load i8**, i8*** %5, align 8
  %80 = load i8*, i8** %79, align 8
  %81 = call i64 @strcmp(i8* %80, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.10, i64 0, i64 0))
  %82 = icmp eq i64 %81, 0
  br i1 %82, label %83, label %85

83:                                               ; preds = %78
  %84 = load i32, i32* @WL_OUTPUT_TRANSFORM_FLIPPED_270, align 4
  store i32 %84, i32* %6, align 4
  br label %88

85:                                               ; preds = %78
  %86 = load i32, i32* @CMD_INVALID, align 4
  %87 = call %struct.cmd_results* (i32, i8*, ...) @cmd_results_new(i32 %86, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.11, i64 0, i64 0))
  store %struct.cmd_results* %87, %struct.cmd_results** %3, align 8
  br label %191

88:                                               ; preds = %83
  br label %89

89:                                               ; preds = %88, %76
  br label %90

90:                                               ; preds = %89, %69
  br label %91

91:                                               ; preds = %90, %62
  br label %92

92:                                               ; preds = %91, %55
  br label %93

93:                                               ; preds = %92, %48
  br label %94

94:                                               ; preds = %93, %41
  br label %95

95:                                               ; preds = %94, %34
  %96 = load %struct.TYPE_6__*, %struct.TYPE_6__** @config, align 8
  %97 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %96, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %97, i32 0, i32 1
  %99 = load %struct.output_config*, %struct.output_config** %98, align 8
  store %struct.output_config* %99, %struct.output_config** %7, align 8
  %100 = load i32, i32* %4, align 4
  %101 = sub nsw i32 %100, 1
  %102 = load %struct.TYPE_6__*, %struct.TYPE_6__** @config, align 8
  %103 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %102, i32 0, i32 0
  %104 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %103, i32 0, i32 0
  %105 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %104, i32 0, i32 0
  store i32 %101, i32* %105, align 8
  %106 = load i8**, i8*** %5, align 8
  %107 = getelementptr inbounds i8*, i8** %106, i64 1
  %108 = load %struct.TYPE_6__*, %struct.TYPE_6__** @config, align 8
  %109 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %108, i32 0, i32 0
  %110 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %109, i32 0, i32 0
  %111 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %110, i32 0, i32 1
  store i8** %107, i8*** %111, align 8
  %112 = load i32, i32* %4, align 4
  %113 = icmp sgt i32 %112, 1
  br i1 %113, label %114, label %187

114:                                              ; preds = %95
  %115 = load i8**, i8*** %5, align 8
  %116 = getelementptr inbounds i8*, i8** %115, i64 1
  %117 = load i8*, i8** %116, align 8
  %118 = call i64 @strcmp(i8* %117, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.12, i64 0, i64 0))
  %119 = icmp eq i64 %118, 0
  br i1 %119, label %126, label %120

120:                                              ; preds = %114
  %121 = load i8**, i8*** %5, align 8
  %122 = getelementptr inbounds i8*, i8** %121, i64 1
  %123 = load i8*, i8** %122, align 8
  %124 = call i64 @strcmp(i8* %123, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.13, i64 0, i64 0))
  %125 = icmp eq i64 %124, 0
  br i1 %125, label %126, label %187

126:                                              ; preds = %120, %114
  %127 = load %struct.output_config*, %struct.output_config** %7, align 8
  %128 = getelementptr inbounds %struct.output_config, %struct.output_config* %127, i32 0, i32 0
  %129 = load i8*, i8** %128, align 8
  %130 = icmp ne i8* %129, null
  %131 = zext i1 %130 to i32
  %132 = call i32 @sway_assert(i32 %131, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.14, i64 0, i64 0))
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %135, label %134

134:                                              ; preds = %126
  store %struct.cmd_results* null, %struct.cmd_results** %3, align 8
  br label %191

135:                                              ; preds = %126
  %136 = load %struct.output_config*, %struct.output_config** %7, align 8
  %137 = getelementptr inbounds %struct.output_config, %struct.output_config* %136, i32 0, i32 0
  %138 = load i8*, i8** %137, align 8
  %139 = call i64 @strcmp(i8* %138, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.15, i64 0, i64 0))
  %140 = icmp eq i64 %139, 0
  br i1 %140, label %141, label %144

141:                                              ; preds = %135
  %142 = load i32, i32* @CMD_INVALID, align 4
  %143 = call %struct.cmd_results* (i32, i8*, ...) @cmd_results_new(i32 %142, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.16, i64 0, i64 0))
  store %struct.cmd_results* %143, %struct.cmd_results** %3, align 8
  br label %191

144:                                              ; preds = %135
  %145 = load %struct.output_config*, %struct.output_config** %7, align 8
  %146 = getelementptr inbounds %struct.output_config, %struct.output_config* %145, i32 0, i32 0
  %147 = load i8*, i8** %146, align 8
  %148 = call %struct.sway_output* @output_by_name_or_id(i8* %147)
  store %struct.sway_output* %148, %struct.sway_output** %8, align 8
  %149 = load %struct.sway_output*, %struct.sway_output** %8, align 8
  %150 = icmp eq %struct.sway_output* %149, null
  br i1 %150, label %151, label %157

151:                                              ; preds = %144
  %152 = load i32, i32* @CMD_INVALID, align 4
  %153 = load %struct.output_config*, %struct.output_config** %7, align 8
  %154 = getelementptr inbounds %struct.output_config, %struct.output_config* %153, i32 0, i32 0
  %155 = load i8*, i8** %154, align 8
  %156 = call %struct.cmd_results* (i32, i8*, ...) @cmd_results_new(i32 %152, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.17, i64 0, i64 0), i8* %155)
  store %struct.cmd_results* %156, %struct.cmd_results** %3, align 8
  br label %191

157:                                              ; preds = %144
  %158 = load i8**, i8*** %5, align 8
  %159 = getelementptr inbounds i8*, i8** %158, i64 1
  %160 = load i8*, i8** %159, align 8
  %161 = call i64 @strcmp(i8* %160, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.13, i64 0, i64 0))
  %162 = icmp eq i64 %161, 0
  br i1 %162, label %163, label %166

163:                                              ; preds = %157
  %164 = load i32, i32* %6, align 4
  %165 = call i32 @wlr_output_transform_invert(i32 %164)
  store i32 %165, i32* %6, align 4
  br label %166

166:                                              ; preds = %163, %157
  %167 = load %struct.sway_output*, %struct.sway_output** %8, align 8
  %168 = getelementptr inbounds %struct.sway_output, %struct.sway_output* %167, i32 0, i32 0
  %169 = load %struct.wlr_output*, %struct.wlr_output** %168, align 8
  store %struct.wlr_output* %169, %struct.wlr_output** %9, align 8
  %170 = load %struct.wlr_output*, %struct.wlr_output** %9, align 8
  %171 = getelementptr inbounds %struct.wlr_output, %struct.wlr_output* %170, i32 0, i32 0
  %172 = load i32, i32* %171, align 4
  %173 = load i32, i32* %6, align 4
  %174 = call i32 @wlr_output_transform_compose(i32 %172, i32 %173)
  store i32 %174, i32* %6, align 4
  %175 = load %struct.TYPE_6__*, %struct.TYPE_6__** @config, align 8
  %176 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %175, i32 0, i32 0
  %177 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %176, i32 0, i32 0
  %178 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %177, i32 0, i32 1
  %179 = load i8**, i8*** %178, align 8
  %180 = getelementptr inbounds i8*, i8** %179, i64 1
  store i8** %180, i8*** %178, align 8
  %181 = load %struct.TYPE_6__*, %struct.TYPE_6__** @config, align 8
  %182 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %181, i32 0, i32 0
  %183 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %182, i32 0, i32 0
  %184 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %183, i32 0, i32 0
  %185 = load i32, i32* %184, align 8
  %186 = sub nsw i32 %185, 1
  store i32 %186, i32* %184, align 8
  br label %187

187:                                              ; preds = %166, %120, %95
  %188 = load i32, i32* %6, align 4
  %189 = load %struct.output_config*, %struct.output_config** %7, align 8
  %190 = getelementptr inbounds %struct.output_config, %struct.output_config* %189, i32 0, i32 1
  store i32 %188, i32* %190, align 8
  store %struct.cmd_results* null, %struct.cmd_results** %3, align 8
  br label %191

191:                                              ; preds = %187, %151, %141, %134, %85, %21, %15
  %192 = load %struct.cmd_results*, %struct.cmd_results** %3, align 8
  ret %struct.cmd_results* %192
}

declare dso_local %struct.cmd_results* @cmd_results_new(i32, i8*, ...) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @sway_assert(i32, i8*) #1

declare dso_local %struct.sway_output* @output_by_name_or_id(i8*) #1

declare dso_local i32 @wlr_output_transform_invert(i32) #1

declare dso_local i32 @wlr_output_transform_compose(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
