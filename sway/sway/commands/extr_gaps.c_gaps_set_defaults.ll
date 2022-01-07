; ModuleID = '/home/carl/AnghaBench/sway/sway/commands/extr_gaps.c_gaps_set_defaults.c'
source_filename = "/home/carl/AnghaBench/sway/sway/commands/extr_gaps.c_gaps_set_defaults.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32, i32, i32 }
%struct.cmd_results = type { i32 }

@.str = private unnamed_addr constant [5 x i8] c"gaps\00", align 1
@EXPECTED_EQUAL_TO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [3 x i8] c"px\00", align 1
@CMD_INVALID = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [12 x i8] c"Expected %s\00", align 1
@expected_defaults = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [6 x i8] c"inner\00", align 1
@config = common dso_local global %struct.TYPE_4__* null, align 8
@.str.4 = private unnamed_addr constant [6 x i8] c"outer\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"vertical\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"top\00", align 1
@.str.7 = private unnamed_addr constant [11 x i8] c"horizontal\00", align 1
@.str.8 = private unnamed_addr constant [6 x i8] c"right\00", align 1
@.str.9 = private unnamed_addr constant [7 x i8] c"bottom\00", align 1
@.str.10 = private unnamed_addr constant [5 x i8] c"left\00", align 1
@CMD_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.cmd_results* (i32, i8**)* @gaps_set_defaults to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.cmd_results* @gaps_set_defaults(i32 %0, i8** %1) #0 {
  %3 = alloca %struct.cmd_results*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca %struct.cmd_results*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %10 = load i32, i32* %4, align 4
  %11 = load i32, i32* @EXPECTED_EQUAL_TO, align 4
  %12 = call %struct.cmd_results* @checkarg(i32 %10, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 %11, i32 2)
  store %struct.cmd_results* %12, %struct.cmd_results** %6, align 8
  %13 = load %struct.cmd_results*, %struct.cmd_results** %6, align 8
  %14 = icmp ne %struct.cmd_results* %13, null
  br i1 %14, label %15, label %17

15:                                               ; preds = %2
  %16 = load %struct.cmd_results*, %struct.cmd_results** %6, align 8
  store %struct.cmd_results* %16, %struct.cmd_results** %3, align 8
  br label %153

17:                                               ; preds = %2
  %18 = load i8**, i8*** %5, align 8
  %19 = getelementptr inbounds i8*, i8** %18, i64 1
  %20 = load i8*, i8** %19, align 8
  %21 = call i32 @strtol(i8* %20, i8** %7, i32 10)
  store i32 %21, i32* %8, align 4
  %22 = load i8*, i8** %7, align 8
  %23 = call i64 @strlen(i8* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %33

25:                                               ; preds = %17
  %26 = load i8*, i8** %7, align 8
  %27 = call i64 @strcasecmp(i8* %26, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %33

29:                                               ; preds = %25
  %30 = load i32, i32* @CMD_INVALID, align 4
  %31 = load i32, i32* @expected_defaults, align 4
  %32 = call %struct.cmd_results* (i32, i8*, ...) @cmd_results_new(i32 %30, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i32 %31)
  store %struct.cmd_results* %32, %struct.cmd_results** %3, align 8
  br label %153

33:                                               ; preds = %25, %17
  store i32 0, i32* %9, align 4
  %34 = load i8**, i8*** %5, align 8
  %35 = getelementptr inbounds i8*, i8** %34, i64 0
  %36 = load i8*, i8** %35, align 8
  %37 = call i64 @strcasecmp(i8* %36, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0))
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %49, label %39

39:                                               ; preds = %33
  store i32 1, i32* %9, align 4
  %40 = load i32, i32* %8, align 4
  %41 = icmp sge i32 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %39
  %43 = load i32, i32* %8, align 4
  br label %45

44:                                               ; preds = %39
  br label %45

45:                                               ; preds = %44, %42
  %46 = phi i32 [ %43, %42 ], [ 0, %44 ]
  %47 = load %struct.TYPE_4__*, %struct.TYPE_4__** @config, align 8
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 0
  store i32 %46, i32* %48, align 4
  br label %142

49:                                               ; preds = %33
  %50 = load i8**, i8*** %5, align 8
  %51 = getelementptr inbounds i8*, i8** %50, i64 0
  %52 = load i8*, i8** %51, align 8
  %53 = call i64 @strcasecmp(i8* %52, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0))
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %67

55:                                               ; preds = %49
  %56 = load i8**, i8*** %5, align 8
  %57 = getelementptr inbounds i8*, i8** %56, i64 0
  %58 = load i8*, i8** %57, align 8
  %59 = call i64 @strcasecmp(i8* %58, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0))
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %67

61:                                               ; preds = %55
  %62 = load i8**, i8*** %5, align 8
  %63 = getelementptr inbounds i8*, i8** %62, i64 0
  %64 = load i8*, i8** %63, align 8
  %65 = call i64 @strcasecmp(i8* %64, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0))
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %72, label %67

67:                                               ; preds = %61, %55, %49
  store i32 1, i32* %9, align 4
  %68 = load i32, i32* %8, align 4
  %69 = load %struct.TYPE_4__*, %struct.TYPE_4__** @config, align 8
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 1
  %71 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %70, i32 0, i32 0
  store i32 %68, i32* %71, align 4
  br label %72

72:                                               ; preds = %67, %61
  %73 = load i8**, i8*** %5, align 8
  %74 = getelementptr inbounds i8*, i8** %73, i64 0
  %75 = load i8*, i8** %74, align 8
  %76 = call i64 @strcasecmp(i8* %75, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0))
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %90

78:                                               ; preds = %72
  %79 = load i8**, i8*** %5, align 8
  %80 = getelementptr inbounds i8*, i8** %79, i64 0
  %81 = load i8*, i8** %80, align 8
  %82 = call i64 @strcasecmp(i8* %81, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.7, i64 0, i64 0))
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %90

84:                                               ; preds = %78
  %85 = load i8**, i8*** %5, align 8
  %86 = getelementptr inbounds i8*, i8** %85, i64 0
  %87 = load i8*, i8** %86, align 8
  %88 = call i64 @strcasecmp(i8* %87, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i64 0, i64 0))
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %95, label %90

90:                                               ; preds = %84, %78, %72
  store i32 1, i32* %9, align 4
  %91 = load i32, i32* %8, align 4
  %92 = load %struct.TYPE_4__*, %struct.TYPE_4__** @config, align 8
  %93 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %92, i32 0, i32 1
  %94 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %93, i32 0, i32 1
  store i32 %91, i32* %94, align 4
  br label %95

95:                                               ; preds = %90, %84
  %96 = load i8**, i8*** %5, align 8
  %97 = getelementptr inbounds i8*, i8** %96, i64 0
  %98 = load i8*, i8** %97, align 8
  %99 = call i64 @strcasecmp(i8* %98, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0))
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %113

101:                                              ; preds = %95
  %102 = load i8**, i8*** %5, align 8
  %103 = getelementptr inbounds i8*, i8** %102, i64 0
  %104 = load i8*, i8** %103, align 8
  %105 = call i64 @strcasecmp(i8* %104, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0))
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %107, label %113

107:                                              ; preds = %101
  %108 = load i8**, i8*** %5, align 8
  %109 = getelementptr inbounds i8*, i8** %108, i64 0
  %110 = load i8*, i8** %109, align 8
  %111 = call i64 @strcasecmp(i8* %110, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.9, i64 0, i64 0))
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %118, label %113

113:                                              ; preds = %107, %101, %95
  store i32 1, i32* %9, align 4
  %114 = load i32, i32* %8, align 4
  %115 = load %struct.TYPE_4__*, %struct.TYPE_4__** @config, align 8
  %116 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %115, i32 0, i32 1
  %117 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %116, i32 0, i32 2
  store i32 %114, i32* %117, align 4
  br label %118

118:                                              ; preds = %113, %107
  %119 = load i8**, i8*** %5, align 8
  %120 = getelementptr inbounds i8*, i8** %119, i64 0
  %121 = load i8*, i8** %120, align 8
  %122 = call i64 @strcasecmp(i8* %121, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0))
  %123 = icmp ne i64 %122, 0
  br i1 %123, label %124, label %136

124:                                              ; preds = %118
  %125 = load i8**, i8*** %5, align 8
  %126 = getelementptr inbounds i8*, i8** %125, i64 0
  %127 = load i8*, i8** %126, align 8
  %128 = call i64 @strcasecmp(i8* %127, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.7, i64 0, i64 0))
  %129 = icmp ne i64 %128, 0
  br i1 %129, label %130, label %136

130:                                              ; preds = %124
  %131 = load i8**, i8*** %5, align 8
  %132 = getelementptr inbounds i8*, i8** %131, i64 0
  %133 = load i8*, i8** %132, align 8
  %134 = call i64 @strcasecmp(i8* %133, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0))
  %135 = icmp ne i64 %134, 0
  br i1 %135, label %141, label %136

136:                                              ; preds = %130, %124, %118
  store i32 1, i32* %9, align 4
  %137 = load i32, i32* %8, align 4
  %138 = load %struct.TYPE_4__*, %struct.TYPE_4__** @config, align 8
  %139 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %138, i32 0, i32 1
  %140 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %139, i32 0, i32 3
  store i32 %137, i32* %140, align 4
  br label %141

141:                                              ; preds = %136, %130
  br label %142

142:                                              ; preds = %141, %45
  %143 = load i32, i32* %9, align 4
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %149, label %145

145:                                              ; preds = %142
  %146 = load i32, i32* @CMD_INVALID, align 4
  %147 = load i32, i32* @expected_defaults, align 4
  %148 = call %struct.cmd_results* (i32, i8*, ...) @cmd_results_new(i32 %146, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i32 %147)
  store %struct.cmd_results* %148, %struct.cmd_results** %3, align 8
  br label %153

149:                                              ; preds = %142
  %150 = call i32 (...) @prevent_invalid_outer_gaps()
  %151 = load i32, i32* @CMD_SUCCESS, align 4
  %152 = call %struct.cmd_results* (i32, i8*, ...) @cmd_results_new(i32 %151, i8* null)
  store %struct.cmd_results* %152, %struct.cmd_results** %3, align 8
  br label %153

153:                                              ; preds = %149, %145, %29, %15
  %154 = load %struct.cmd_results*, %struct.cmd_results** %3, align 8
  ret %struct.cmd_results* %154
}

declare dso_local %struct.cmd_results* @checkarg(i32, i8*, i32, i32) #1

declare dso_local i32 @strtol(i8*, i8**, i32) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i64 @strcasecmp(i8*, i8*) #1

declare dso_local %struct.cmd_results* @cmd_results_new(i32, i8*, ...) #1

declare dso_local i32 @prevent_invalid_outer_gaps(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
