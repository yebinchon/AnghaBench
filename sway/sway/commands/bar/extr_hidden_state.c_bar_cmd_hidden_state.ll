; ModuleID = '/home/carl/AnghaBench/sway/sway/commands/bar/extr_hidden_state.c_bar_cmd_hidden_state.c'
source_filename = "/home/carl/AnghaBench/sway/sway/commands/bar/extr_hidden_state.c_bar_cmd_hidden_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__*, %struct.bar_config*, i64 }
%struct.TYPE_3__ = type { i32, %struct.bar_config** }
%struct.bar_config = type { i8* }
%struct.cmd_results = type { i32 }

@.str = private unnamed_addr constant [13 x i8] c"hidden_state\00", align 1
@EXPECTED_AT_LEAST = common dso_local global i32 0, align 4
@EXPECTED_AT_MOST = common dso_local global i32 0, align 4
@config = common dso_local global %struct.TYPE_4__* null, align 8
@CMD_INVALID = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"Unexpected value %s in config mode\00", align 1
@.str.2 = private unnamed_addr constant [31 x i8] c"Conflicting bar ids: %s and %s\00", align 1
@CMD_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.cmd_results* @bar_cmd_hidden_state(i32 %0, i8** %1) #0 {
  %3 = alloca %struct.cmd_results*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca %struct.cmd_results*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.bar_config*, align 8
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store %struct.cmd_results* null, %struct.cmd_results** %6, align 8
  %11 = load i32, i32* %4, align 4
  %12 = load i32, i32* @EXPECTED_AT_LEAST, align 4
  %13 = call %struct.cmd_results* @checkarg(i32 %11, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 %12, i32 1)
  store %struct.cmd_results* %13, %struct.cmd_results** %6, align 8
  %14 = icmp ne %struct.cmd_results* %13, null
  br i1 %14, label %15, label %17

15:                                               ; preds = %2
  %16 = load %struct.cmd_results*, %struct.cmd_results** %6, align 8
  store %struct.cmd_results* %16, %struct.cmd_results** %3, align 8
  br label %146

17:                                               ; preds = %2
  %18 = load i32, i32* %4, align 4
  %19 = load i32, i32* @EXPECTED_AT_MOST, align 4
  %20 = call %struct.cmd_results* @checkarg(i32 %18, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 %19, i32 2)
  store %struct.cmd_results* %20, %struct.cmd_results** %6, align 8
  %21 = icmp ne %struct.cmd_results* %20, null
  br i1 %21, label %22, label %24

22:                                               ; preds = %17
  %23 = load %struct.cmd_results*, %struct.cmd_results** %6, align 8
  store %struct.cmd_results* %23, %struct.cmd_results** %3, align 8
  br label %146

24:                                               ; preds = %17
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** @config, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 2
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %38

29:                                               ; preds = %24
  %30 = load i32, i32* %4, align 4
  %31 = icmp sgt i32 %30, 1
  br i1 %31, label %32, label %38

32:                                               ; preds = %29
  %33 = load i32, i32* @CMD_INVALID, align 4
  %34 = load i8**, i8*** %5, align 8
  %35 = getelementptr inbounds i8*, i8** %34, i64 1
  %36 = load i8*, i8** %35, align 8
  %37 = call %struct.cmd_results* (i32, i8*, ...) @cmd_results_new(i32 %33, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i8* %36)
  store %struct.cmd_results* %37, %struct.cmd_results** %3, align 8
  br label %146

38:                                               ; preds = %29, %24
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** @config, align 8
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 1
  %41 = load %struct.bar_config*, %struct.bar_config** %40, align 8
  %42 = icmp ne %struct.bar_config* %41, null
  br i1 %42, label %43, label %68

43:                                               ; preds = %38
  %44 = load i32, i32* %4, align 4
  %45 = icmp eq i32 %44, 2
  br i1 %45, label %46, label %68

46:                                               ; preds = %43
  %47 = load %struct.TYPE_4__*, %struct.TYPE_4__** @config, align 8
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 1
  %49 = load %struct.bar_config*, %struct.bar_config** %48, align 8
  %50 = getelementptr inbounds %struct.bar_config, %struct.bar_config* %49, i32 0, i32 0
  %51 = load i8*, i8** %50, align 8
  %52 = load i8**, i8*** %5, align 8
  %53 = getelementptr inbounds i8*, i8** %52, i64 1
  %54 = load i8*, i8** %53, align 8
  %55 = call i64 @strcmp(i8* %51, i8* %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %68

57:                                               ; preds = %46
  %58 = load i32, i32* @CMD_INVALID, align 4
  %59 = load %struct.TYPE_4__*, %struct.TYPE_4__** @config, align 8
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 1
  %61 = load %struct.bar_config*, %struct.bar_config** %60, align 8
  %62 = getelementptr inbounds %struct.bar_config, %struct.bar_config* %61, i32 0, i32 0
  %63 = load i8*, i8** %62, align 8
  %64 = load i8**, i8*** %5, align 8
  %65 = getelementptr inbounds i8*, i8** %64, i64 1
  %66 = load i8*, i8** %65, align 8
  %67 = call %struct.cmd_results* (i32, i8*, ...) @cmd_results_new(i32 %58, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0), i8* %63, i8* %66)
  store %struct.cmd_results* %67, %struct.cmd_results** %3, align 8
  br label %146

68:                                               ; preds = %46, %43, %38
  %69 = load i8**, i8*** %5, align 8
  %70 = getelementptr inbounds i8*, i8** %69, i64 0
  %71 = load i8*, i8** %70, align 8
  store i8* %71, i8** %7, align 8
  %72 = load %struct.TYPE_4__*, %struct.TYPE_4__** @config, align 8
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i32 0, i32 2
  %74 = load i64, i64* %73, align 8
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %82

76:                                               ; preds = %68
  %77 = load %struct.TYPE_4__*, %struct.TYPE_4__** @config, align 8
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %77, i32 0, i32 1
  %79 = load %struct.bar_config*, %struct.bar_config** %78, align 8
  %80 = load i8*, i8** %7, align 8
  %81 = call %struct.cmd_results* @bar_set_hidden_state(%struct.bar_config* %79, i8* %80)
  store %struct.cmd_results* %81, %struct.cmd_results** %6, align 8
  br label %136

82:                                               ; preds = %68
  %83 = load i32, i32* %4, align 4
  %84 = icmp eq i32 %83, 2
  br i1 %84, label %85, label %89

85:                                               ; preds = %82
  %86 = load i8**, i8*** %5, align 8
  %87 = getelementptr inbounds i8*, i8** %86, i64 1
  %88 = load i8*, i8** %87, align 8
  br label %90

89:                                               ; preds = %82
  br label %90

90:                                               ; preds = %89, %85
  %91 = phi i8* [ %88, %85 ], [ null, %89 ]
  store i8* %91, i8** %8, align 8
  store i32 0, i32* %9, align 4
  br label %92

92:                                               ; preds = %132, %90
  %93 = load i32, i32* %9, align 4
  %94 = load %struct.TYPE_4__*, %struct.TYPE_4__** @config, align 8
  %95 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %94, i32 0, i32 0
  %96 = load %struct.TYPE_3__*, %struct.TYPE_3__** %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  %99 = icmp slt i32 %93, %98
  br i1 %99, label %100, label %135

100:                                              ; preds = %92
  %101 = load %struct.TYPE_4__*, %struct.TYPE_4__** @config, align 8
  %102 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %101, i32 0, i32 0
  %103 = load %struct.TYPE_3__*, %struct.TYPE_3__** %102, align 8
  %104 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %103, i32 0, i32 1
  %105 = load %struct.bar_config**, %struct.bar_config*** %104, align 8
  %106 = load i32, i32* %9, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds %struct.bar_config*, %struct.bar_config** %105, i64 %107
  %109 = load %struct.bar_config*, %struct.bar_config** %108, align 8
  store %struct.bar_config* %109, %struct.bar_config** %10, align 8
  %110 = load i8*, i8** %8, align 8
  %111 = icmp ne i8* %110, null
  br i1 %111, label %112, label %124

112:                                              ; preds = %100
  %113 = load i8*, i8** %8, align 8
  %114 = load %struct.bar_config*, %struct.bar_config** %10, align 8
  %115 = getelementptr inbounds %struct.bar_config, %struct.bar_config* %114, i32 0, i32 0
  %116 = load i8*, i8** %115, align 8
  %117 = call i64 @strcmp(i8* %113, i8* %116)
  %118 = icmp eq i64 %117, 0
  br i1 %118, label %119, label %123

119:                                              ; preds = %112
  %120 = load %struct.bar_config*, %struct.bar_config** %10, align 8
  %121 = load i8*, i8** %7, align 8
  %122 = call %struct.cmd_results* @bar_set_hidden_state(%struct.bar_config* %120, i8* %121)
  store %struct.cmd_results* %122, %struct.cmd_results** %6, align 8
  br label %135

123:                                              ; preds = %112
  br label %131

124:                                              ; preds = %100
  %125 = load %struct.bar_config*, %struct.bar_config** %10, align 8
  %126 = load i8*, i8** %7, align 8
  %127 = call %struct.cmd_results* @bar_set_hidden_state(%struct.bar_config* %125, i8* %126)
  store %struct.cmd_results* %127, %struct.cmd_results** %6, align 8
  %128 = icmp ne %struct.cmd_results* %127, null
  br i1 %128, label %129, label %130

129:                                              ; preds = %124
  br label %135

130:                                              ; preds = %124
  br label %131

131:                                              ; preds = %130, %123
  br label %132

132:                                              ; preds = %131
  %133 = load i32, i32* %9, align 4
  %134 = add nsw i32 %133, 1
  store i32 %134, i32* %9, align 4
  br label %92

135:                                              ; preds = %129, %119, %92
  br label %136

136:                                              ; preds = %135, %76
  %137 = load %struct.cmd_results*, %struct.cmd_results** %6, align 8
  %138 = icmp ne %struct.cmd_results* %137, null
  br i1 %138, label %139, label %141

139:                                              ; preds = %136
  %140 = load %struct.cmd_results*, %struct.cmd_results** %6, align 8
  br label %144

141:                                              ; preds = %136
  %142 = load i32, i32* @CMD_SUCCESS, align 4
  %143 = call %struct.cmd_results* (i32, i8*, ...) @cmd_results_new(i32 %142, i8* null)
  br label %144

144:                                              ; preds = %141, %139
  %145 = phi %struct.cmd_results* [ %140, %139 ], [ %143, %141 ]
  store %struct.cmd_results* %145, %struct.cmd_results** %3, align 8
  br label %146

146:                                              ; preds = %144, %57, %32, %22, %15
  %147 = load %struct.cmd_results*, %struct.cmd_results** %3, align 8
  ret %struct.cmd_results* %147
}

declare dso_local %struct.cmd_results* @checkarg(i32, i8*, i32, i32) #1

declare dso_local %struct.cmd_results* @cmd_results_new(i32, i8*, ...) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local %struct.cmd_results* @bar_set_hidden_state(%struct.bar_config*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
