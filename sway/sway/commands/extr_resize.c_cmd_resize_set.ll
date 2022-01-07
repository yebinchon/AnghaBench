; ModuleID = '/home/carl/AnghaBench/sway/sway/commands/extr_resize.c_cmd_resize_set.c'
source_filename = "/home/carl/AnghaBench/sway/sway/commands/extr_resize.c_cmd_resize_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.sway_container* }
%struct.sway_container = type { i64, i64 }
%struct.cmd_results = type { i32 }
%struct.resize_amount = type { i64, i64, i32 }

@.str = private unnamed_addr constant [7 x i8] c"resize\00", align 1
@EXPECTED_AT_LEAST = common dso_local global i32 0, align 4
@__const.cmd_resize_set.usage = private unnamed_addr constant [156 x i8] c"Expected 'resize set [width] <width> [px|ppt]' or 'resize set height <height> [px|ppt]' or 'resize set [width] <width> [px|ppt] [height] <height> [px|ppt]'\00", align 16
@.str.1 = private unnamed_addr constant [6 x i8] c"width\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"height\00", align 1
@RESIZE_UNIT_INVALID = common dso_local global i64 0, align 8
@CMD_INVALID = common dso_local global i32 0, align 4
@config = common dso_local global %struct.TYPE_4__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.cmd_results* (i32, i8**)* @cmd_resize_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.cmd_results* @cmd_resize_set(i32 %0, i8** %1) #0 {
  %3 = alloca %struct.cmd_results*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca %struct.cmd_results*, align 8
  %7 = alloca [156 x i8], align 16
  %8 = alloca %struct.resize_amount, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.resize_amount, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.sway_container*, align 8
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %13 = load i32, i32* %4, align 4
  %14 = load i32, i32* @EXPECTED_AT_LEAST, align 4
  %15 = call %struct.cmd_results* @checkarg(i32 %13, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 %14, i32 1)
  store %struct.cmd_results* %15, %struct.cmd_results** %6, align 8
  %16 = icmp ne %struct.cmd_results* %15, null
  br i1 %16, label %17, label %19

17:                                               ; preds = %2
  %18 = load %struct.cmd_results*, %struct.cmd_results** %6, align 8
  store %struct.cmd_results* %18, %struct.cmd_results** %3, align 8
  br label %138

19:                                               ; preds = %2
  %20 = bitcast [156 x i8]* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %20, i8* align 16 getelementptr inbounds ([156 x i8], [156 x i8]* @__const.cmd_resize_set.usage, i32 0, i32 0), i64 156, i1 false)
  %21 = bitcast %struct.resize_amount* %8 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %21, i8 0, i64 24, i1 false)
  %22 = load i32, i32* %4, align 4
  %23 = icmp sge i32 %22, 2
  br i1 %23, label %24, label %41

24:                                               ; preds = %19
  %25 = load i8**, i8*** %5, align 8
  %26 = getelementptr inbounds i8*, i8** %25, i64 0
  %27 = load i8*, i8** %26, align 8
  %28 = call i64 @strcmp(i8* %27, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %41, label %30

30:                                               ; preds = %24
  %31 = load i8**, i8*** %5, align 8
  %32 = getelementptr inbounds i8*, i8** %31, i64 1
  %33 = load i8*, i8** %32, align 8
  %34 = call i64 @strcmp(i8* %33, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %41

36:                                               ; preds = %30
  %37 = load i32, i32* %4, align 4
  %38 = add nsw i32 %37, -1
  store i32 %38, i32* %4, align 4
  %39 = load i8**, i8*** %5, align 8
  %40 = getelementptr inbounds i8*, i8** %39, i32 1
  store i8** %40, i8*** %5, align 8
  br label %41

41:                                               ; preds = %36, %30, %24, %19
  %42 = load i8**, i8*** %5, align 8
  %43 = getelementptr inbounds i8*, i8** %42, i64 0
  %44 = load i8*, i8** %43, align 8
  %45 = call i64 @strcmp(i8* %44, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %67

47:                                               ; preds = %41
  %48 = load i32, i32* %4, align 4
  %49 = load i8**, i8*** %5, align 8
  %50 = call i32 @parse_resize_amount(i32 %48, i8** %49, %struct.resize_amount* %8)
  store i32 %50, i32* %9, align 4
  %51 = load i32, i32* %9, align 4
  %52 = load i32, i32* %4, align 4
  %53 = sub nsw i32 %52, %51
  store i32 %53, i32* %4, align 4
  %54 = load i32, i32* %9, align 4
  %55 = load i8**, i8*** %5, align 8
  %56 = sext i32 %54 to i64
  %57 = getelementptr inbounds i8*, i8** %55, i64 %56
  store i8** %57, i8*** %5, align 8
  %58 = getelementptr inbounds %struct.resize_amount, %struct.resize_amount* %8, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = load i64, i64* @RESIZE_UNIT_INVALID, align 8
  %61 = icmp eq i64 %59, %60
  br i1 %61, label %62, label %66

62:                                               ; preds = %47
  %63 = load i32, i32* @CMD_INVALID, align 4
  %64 = getelementptr inbounds [156 x i8], [156 x i8]* %7, i64 0, i64 0
  %65 = call %struct.cmd_results* @cmd_results_new(i32 %63, i8* %64)
  store %struct.cmd_results* %65, %struct.cmd_results** %3, align 8
  br label %138

66:                                               ; preds = %47
  br label %67

67:                                               ; preds = %66, %41
  %68 = bitcast %struct.resize_amount* %10 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %68, i8 0, i64 24, i1 false)
  %69 = load i32, i32* %4, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %106

71:                                               ; preds = %67
  %72 = load i32, i32* %4, align 4
  %73 = icmp sge i32 %72, 2
  br i1 %73, label %74, label %85

74:                                               ; preds = %71
  %75 = load i8**, i8*** %5, align 8
  %76 = getelementptr inbounds i8*, i8** %75, i64 0
  %77 = load i8*, i8** %76, align 8
  %78 = call i64 @strcmp(i8* %77, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %85, label %80

80:                                               ; preds = %74
  %81 = load i32, i32* %4, align 4
  %82 = add nsw i32 %81, -1
  store i32 %82, i32* %4, align 4
  %83 = load i8**, i8*** %5, align 8
  %84 = getelementptr inbounds i8*, i8** %83, i32 1
  store i8** %84, i8*** %5, align 8
  br label %85

85:                                               ; preds = %80, %74, %71
  %86 = load i32, i32* %4, align 4
  %87 = load i8**, i8*** %5, align 8
  %88 = call i32 @parse_resize_amount(i32 %86, i8** %87, %struct.resize_amount* %10)
  store i32 %88, i32* %11, align 4
  %89 = load i32, i32* %4, align 4
  %90 = load i32, i32* %11, align 4
  %91 = icmp sgt i32 %89, %90
  br i1 %91, label %92, label %96

92:                                               ; preds = %85
  %93 = load i32, i32* @CMD_INVALID, align 4
  %94 = getelementptr inbounds [156 x i8], [156 x i8]* %7, i64 0, i64 0
  %95 = call %struct.cmd_results* @cmd_results_new(i32 %93, i8* %94)
  store %struct.cmd_results* %95, %struct.cmd_results** %3, align 8
  br label %138

96:                                               ; preds = %85
  %97 = getelementptr inbounds %struct.resize_amount, %struct.resize_amount* %8, i32 0, i32 0
  %98 = load i64, i64* %97, align 8
  %99 = load i64, i64* @RESIZE_UNIT_INVALID, align 8
  %100 = icmp eq i64 %98, %99
  br i1 %100, label %101, label %105

101:                                              ; preds = %96
  %102 = load i32, i32* @CMD_INVALID, align 4
  %103 = getelementptr inbounds [156 x i8], [156 x i8]* %7, i64 0, i64 0
  %104 = call %struct.cmd_results* @cmd_results_new(i32 %102, i8* %103)
  store %struct.cmd_results* %104, %struct.cmd_results** %3, align 8
  br label %138

105:                                              ; preds = %96
  br label %106

106:                                              ; preds = %105, %67
  %107 = load %struct.TYPE_4__*, %struct.TYPE_4__** @config, align 8
  %108 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %107, i32 0, i32 0
  %109 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %108, i32 0, i32 0
  %110 = load %struct.sway_container*, %struct.sway_container** %109, align 8
  store %struct.sway_container* %110, %struct.sway_container** %12, align 8
  %111 = getelementptr inbounds %struct.resize_amount, %struct.resize_amount* %8, i32 0, i32 1
  %112 = load i64, i64* %111, align 8
  %113 = icmp sle i64 %112, 0
  br i1 %113, label %114, label %119

114:                                              ; preds = %106
  %115 = load %struct.sway_container*, %struct.sway_container** %12, align 8
  %116 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %115, i32 0, i32 0
  %117 = load i64, i64* %116, align 8
  %118 = getelementptr inbounds %struct.resize_amount, %struct.resize_amount* %8, i32 0, i32 1
  store i64 %117, i64* %118, align 8
  br label %119

119:                                              ; preds = %114, %106
  %120 = getelementptr inbounds %struct.resize_amount, %struct.resize_amount* %10, i32 0, i32 1
  %121 = load i64, i64* %120, align 8
  %122 = icmp sle i64 %121, 0
  br i1 %122, label %123, label %128

123:                                              ; preds = %119
  %124 = load %struct.sway_container*, %struct.sway_container** %12, align 8
  %125 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %124, i32 0, i32 1
  %126 = load i64, i64* %125, align 8
  %127 = getelementptr inbounds %struct.resize_amount, %struct.resize_amount* %10, i32 0, i32 1
  store i64 %126, i64* %127, align 8
  br label %128

128:                                              ; preds = %123, %119
  %129 = load %struct.sway_container*, %struct.sway_container** %12, align 8
  %130 = call i64 @container_is_floating(%struct.sway_container* %129)
  %131 = icmp ne i64 %130, 0
  br i1 %131, label %132, label %135

132:                                              ; preds = %128
  %133 = load %struct.sway_container*, %struct.sway_container** %12, align 8
  %134 = call %struct.cmd_results* @resize_set_floating(%struct.sway_container* %133, %struct.resize_amount* %8, %struct.resize_amount* %10)
  store %struct.cmd_results* %134, %struct.cmd_results** %3, align 8
  br label %138

135:                                              ; preds = %128
  %136 = load %struct.sway_container*, %struct.sway_container** %12, align 8
  %137 = call %struct.cmd_results* @resize_set_tiled(%struct.sway_container* %136, %struct.resize_amount* %8, %struct.resize_amount* %10)
  store %struct.cmd_results* %137, %struct.cmd_results** %3, align 8
  br label %138

138:                                              ; preds = %135, %132, %101, %92, %62, %17
  %139 = load %struct.cmd_results*, %struct.cmd_results** %3, align 8
  ret %struct.cmd_results* %139
}

declare dso_local %struct.cmd_results* @checkarg(i32, i8*, i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @parse_resize_amount(i32, i8**, %struct.resize_amount*) #1

declare dso_local %struct.cmd_results* @cmd_results_new(i32, i8*) #1

declare dso_local i64 @container_is_floating(%struct.sway_container*) #1

declare dso_local %struct.cmd_results* @resize_set_floating(%struct.sway_container*, %struct.resize_amount*, %struct.resize_amount*) #1

declare dso_local %struct.cmd_results* @resize_set_tiled(%struct.sway_container*, %struct.resize_amount*, %struct.resize_amount*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
