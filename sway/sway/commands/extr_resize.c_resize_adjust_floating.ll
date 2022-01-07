; ModuleID = '/home/carl/AnghaBench/sway/sway/commands/extr_resize.c_resize_adjust_floating.c'
source_filename = "/home/carl/AnghaBench/sway/sway/commands/extr_resize.c_resize_adjust_floating.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.sway_container* }
%struct.sway_container = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.cmd_results = type { i32 }
%struct.resize_amount = type { i32 }

@config = common dso_local global %struct.TYPE_4__* null, align 8
@AXIS_HORIZONTAL = common dso_local global i64 0, align 8
@AXIS_VERTICAL = common dso_local global i64 0, align 8
@WLR_EDGE_TOP = common dso_local global i64 0, align 8
@WLR_EDGE_LEFT = common dso_local global i64 0, align 8
@CMD_INVALID = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"Cannot resize any further\00", align 1
@CMD_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.cmd_results* (i64, %struct.resize_amount*)* @resize_adjust_floating to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.cmd_results* @resize_adjust_floating(i64 %0, %struct.resize_amount* %1) #0 {
  %3 = alloca %struct.cmd_results*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.resize_amount*, align 8
  %6 = alloca %struct.sway_container*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i64 %0, i64* %4, align 8
  store %struct.resize_amount* %1, %struct.resize_amount** %5, align 8
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** @config, align 8
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  %18 = load %struct.sway_container*, %struct.sway_container** %17, align 8
  store %struct.sway_container* %18, %struct.sway_container** %6, align 8
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %19 = load i64, i64* %4, align 8
  %20 = call i64 @is_horizontal(i64 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %26

22:                                               ; preds = %2
  %23 = load %struct.resize_amount*, %struct.resize_amount** %5, align 8
  %24 = getelementptr inbounds %struct.resize_amount, %struct.resize_amount* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  store i32 %25, i32* %7, align 4
  br label %30

26:                                               ; preds = %2
  %27 = load %struct.resize_amount*, %struct.resize_amount** %5, align 8
  %28 = getelementptr inbounds %struct.resize_amount, %struct.resize_amount* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  store i32 %29, i32* %8, align 4
  br label %30

30:                                               ; preds = %26, %22
  %31 = call i32 @floating_calculate_constraints(i32* %9, i32* %10, i32* %11, i32* %12)
  %32 = load %struct.sway_container*, %struct.sway_container** %6, align 8
  %33 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* %7, align 4
  %36 = add nsw i32 %34, %35
  %37 = load i32, i32* %9, align 4
  %38 = icmp slt i32 %36, %37
  br i1 %38, label %39, label %45

39:                                               ; preds = %30
  %40 = load i32, i32* %9, align 4
  %41 = load %struct.sway_container*, %struct.sway_container** %6, align 8
  %42 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = sub nsw i32 %40, %43
  store i32 %44, i32* %7, align 4
  br label %60

45:                                               ; preds = %30
  %46 = load %struct.sway_container*, %struct.sway_container** %6, align 8
  %47 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* %7, align 4
  %50 = add nsw i32 %48, %49
  %51 = load i32, i32* %10, align 4
  %52 = icmp sgt i32 %50, %51
  br i1 %52, label %53, label %59

53:                                               ; preds = %45
  %54 = load i32, i32* %10, align 4
  %55 = load %struct.sway_container*, %struct.sway_container** %6, align 8
  %56 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = sub nsw i32 %54, %57
  store i32 %58, i32* %7, align 4
  br label %59

59:                                               ; preds = %53, %45
  br label %60

60:                                               ; preds = %59, %39
  %61 = load %struct.sway_container*, %struct.sway_container** %6, align 8
  %62 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* %8, align 4
  %65 = add nsw i32 %63, %64
  %66 = load i32, i32* %11, align 4
  %67 = icmp slt i32 %65, %66
  br i1 %67, label %68, label %74

68:                                               ; preds = %60
  %69 = load i32, i32* %11, align 4
  %70 = load %struct.sway_container*, %struct.sway_container** %6, align 8
  %71 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = sub nsw i32 %69, %72
  store i32 %73, i32* %8, align 4
  br label %89

74:                                               ; preds = %60
  %75 = load %struct.sway_container*, %struct.sway_container** %6, align 8
  %76 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = load i32, i32* %8, align 4
  %79 = add nsw i32 %77, %78
  %80 = load i32, i32* %12, align 4
  %81 = icmp sgt i32 %79, %80
  br i1 %81, label %82, label %88

82:                                               ; preds = %74
  %83 = load i32, i32* %12, align 4
  %84 = load %struct.sway_container*, %struct.sway_container** %6, align 8
  %85 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = sub nsw i32 %83, %86
  store i32 %87, i32* %8, align 4
  br label %88

88:                                               ; preds = %82, %74
  br label %89

89:                                               ; preds = %88, %68
  store i32 0, i32* %13, align 4
  store i32 0, i32* %14, align 4
  %90 = load i64, i64* %4, align 8
  %91 = load i64, i64* @AXIS_HORIZONTAL, align 8
  %92 = icmp eq i64 %90, %91
  br i1 %92, label %93, label %97

93:                                               ; preds = %89
  %94 = load i32, i32* %7, align 4
  %95 = sub nsw i32 0, %94
  %96 = sdiv i32 %95, 2
  store i32 %96, i32* %13, align 4
  br label %122

97:                                               ; preds = %89
  %98 = load i64, i64* %4, align 8
  %99 = load i64, i64* @AXIS_VERTICAL, align 8
  %100 = icmp eq i64 %98, %99
  br i1 %100, label %101, label %105

101:                                              ; preds = %97
  %102 = load i32, i32* %8, align 4
  %103 = sub nsw i32 0, %102
  %104 = sdiv i32 %103, 2
  store i32 %104, i32* %14, align 4
  br label %121

105:                                              ; preds = %97
  %106 = load i64, i64* %4, align 8
  %107 = load i64, i64* @WLR_EDGE_TOP, align 8
  %108 = icmp eq i64 %106, %107
  br i1 %108, label %109, label %112

109:                                              ; preds = %105
  %110 = load i32, i32* %8, align 4
  %111 = sub nsw i32 0, %110
  store i32 %111, i32* %14, align 4
  br label %120

112:                                              ; preds = %105
  %113 = load i64, i64* %4, align 8
  %114 = load i64, i64* @WLR_EDGE_LEFT, align 8
  %115 = icmp eq i64 %113, %114
  br i1 %115, label %116, label %119

116:                                              ; preds = %112
  %117 = load i32, i32* %7, align 4
  %118 = sub nsw i32 0, %117
  store i32 %118, i32* %13, align 4
  br label %119

119:                                              ; preds = %116, %112
  br label %120

120:                                              ; preds = %119, %109
  br label %121

121:                                              ; preds = %120, %101
  br label %122

122:                                              ; preds = %121, %93
  %123 = load i32, i32* %13, align 4
  %124 = icmp eq i32 %123, 0
  br i1 %124, label %125, label %131

125:                                              ; preds = %122
  %126 = load i32, i32* %14, align 4
  %127 = icmp eq i32 %126, 0
  br i1 %127, label %128, label %131

128:                                              ; preds = %125
  %129 = load i32, i32* @CMD_INVALID, align 4
  %130 = call %struct.cmd_results* @cmd_results_new(i32 %129, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  store %struct.cmd_results* %130, %struct.cmd_results** %3, align 8
  br label %176

131:                                              ; preds = %125, %122
  %132 = load i32, i32* %13, align 4
  %133 = load %struct.sway_container*, %struct.sway_container** %6, align 8
  %134 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %133, i32 0, i32 2
  %135 = load i32, i32* %134, align 4
  %136 = add nsw i32 %135, %132
  store i32 %136, i32* %134, align 4
  %137 = load i32, i32* %14, align 4
  %138 = load %struct.sway_container*, %struct.sway_container** %6, align 8
  %139 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %138, i32 0, i32 3
  %140 = load i32, i32* %139, align 4
  %141 = add nsw i32 %140, %137
  store i32 %141, i32* %139, align 4
  %142 = load i32, i32* %7, align 4
  %143 = load %struct.sway_container*, %struct.sway_container** %6, align 8
  %144 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 4
  %146 = add nsw i32 %145, %142
  store i32 %146, i32* %144, align 4
  %147 = load i32, i32* %8, align 4
  %148 = load %struct.sway_container*, %struct.sway_container** %6, align 8
  %149 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %148, i32 0, i32 1
  %150 = load i32, i32* %149, align 4
  %151 = add nsw i32 %150, %147
  store i32 %151, i32* %149, align 4
  %152 = load i32, i32* %13, align 4
  %153 = load %struct.sway_container*, %struct.sway_container** %6, align 8
  %154 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %153, i32 0, i32 4
  %155 = load i32, i32* %154, align 4
  %156 = add nsw i32 %155, %152
  store i32 %156, i32* %154, align 4
  %157 = load i32, i32* %14, align 4
  %158 = load %struct.sway_container*, %struct.sway_container** %6, align 8
  %159 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %158, i32 0, i32 5
  %160 = load i32, i32* %159, align 4
  %161 = add nsw i32 %160, %157
  store i32 %161, i32* %159, align 4
  %162 = load i32, i32* %7, align 4
  %163 = load %struct.sway_container*, %struct.sway_container** %6, align 8
  %164 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %163, i32 0, i32 6
  %165 = load i32, i32* %164, align 4
  %166 = add nsw i32 %165, %162
  store i32 %166, i32* %164, align 4
  %167 = load i32, i32* %8, align 4
  %168 = load %struct.sway_container*, %struct.sway_container** %6, align 8
  %169 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %168, i32 0, i32 7
  %170 = load i32, i32* %169, align 4
  %171 = add nsw i32 %170, %167
  store i32 %171, i32* %169, align 4
  %172 = load %struct.sway_container*, %struct.sway_container** %6, align 8
  %173 = call i32 @arrange_container(%struct.sway_container* %172)
  %174 = load i32, i32* @CMD_SUCCESS, align 4
  %175 = call %struct.cmd_results* @cmd_results_new(i32 %174, i8* null)
  store %struct.cmd_results* %175, %struct.cmd_results** %3, align 8
  br label %176

176:                                              ; preds = %131, %128
  %177 = load %struct.cmd_results*, %struct.cmd_results** %3, align 8
  ret %struct.cmd_results* %177
}

declare dso_local i64 @is_horizontal(i64) #1

declare dso_local i32 @floating_calculate_constraints(i32*, i32*, i32*, i32*) #1

declare dso_local %struct.cmd_results* @cmd_results_new(i32, i8*) #1

declare dso_local i32 @arrange_container(%struct.sway_container*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
