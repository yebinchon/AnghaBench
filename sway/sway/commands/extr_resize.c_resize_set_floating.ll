; ModuleID = '/home/carl/AnghaBench/sway/sway/commands/extr_resize.c_resize_set_floating.c'
source_filename = "/home/carl/AnghaBench/sway/sway/commands/extr_resize.c_resize_set_floating.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cmd_results = type { i32 }
%struct.sway_container = type { i32, i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 }
%struct.resize_amount = type { i32, i32 }

@CMD_FAILURE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [51 x i8] c"Cannot resize a hidden scratchpad container by ppt\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"invalid width unit\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"invalid height unit\00", align 1
@CMD_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.cmd_results* (%struct.sway_container*, %struct.resize_amount*, %struct.resize_amount*)* @resize_set_floating to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.cmd_results* @resize_set_floating(%struct.sway_container* %0, %struct.resize_amount* %1, %struct.resize_amount* %2) #0 {
  %4 = alloca %struct.cmd_results*, align 8
  %5 = alloca %struct.sway_container*, align 8
  %6 = alloca %struct.resize_amount*, align 8
  %7 = alloca %struct.resize_amount*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.sway_container* %0, %struct.sway_container** %5, align 8
  store %struct.resize_amount* %1, %struct.resize_amount** %6, align 8
  store %struct.resize_amount* %2, %struct.resize_amount** %7, align 8
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  %14 = call i32 @floating_calculate_constraints(i32* %8, i32* %9, i32* %10, i32* %11)
  %15 = load %struct.resize_amount*, %struct.resize_amount** %6, align 8
  %16 = getelementptr inbounds %struct.resize_amount, %struct.resize_amount* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %77

19:                                               ; preds = %3
  %20 = load %struct.resize_amount*, %struct.resize_amount** %6, align 8
  %21 = getelementptr inbounds %struct.resize_amount, %struct.resize_amount* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  switch i32 %22, label %76 [
    i32 129, label %23
    i32 128, label %45
    i32 131, label %45
    i32 130, label %74
  ]

23:                                               ; preds = %19
  %24 = load %struct.sway_container*, %struct.sway_container** %5, align 8
  %25 = call i32 @container_is_scratchpad_hidden(%struct.sway_container* %24)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %23
  %28 = load i32, i32* @CMD_FAILURE, align 4
  %29 = call %struct.cmd_results* @cmd_results_new(i32 %28, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0))
  store %struct.cmd_results* %29, %struct.cmd_results** %4, align 8
  br label %167

30:                                               ; preds = %23
  %31 = load %struct.sway_container*, %struct.sway_container** %5, align 8
  %32 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %31, i32 0, i32 8
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.resize_amount*, %struct.resize_amount** %6, align 8
  %37 = getelementptr inbounds %struct.resize_amount, %struct.resize_amount* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = mul nsw i32 %35, %38
  %40 = sdiv i32 %39, 100
  %41 = load %struct.resize_amount*, %struct.resize_amount** %6, align 8
  %42 = getelementptr inbounds %struct.resize_amount, %struct.resize_amount* %41, i32 0, i32 0
  store i32 %40, i32* %42, align 4
  %43 = load %struct.resize_amount*, %struct.resize_amount** %6, align 8
  %44 = getelementptr inbounds %struct.resize_amount, %struct.resize_amount* %43, i32 0, i32 1
  store i32 128, i32* %44, align 4
  br label %45

45:                                               ; preds = %19, %19, %30
  %46 = load i32, i32* %8, align 4
  %47 = load %struct.resize_amount*, %struct.resize_amount** %6, align 8
  %48 = getelementptr inbounds %struct.resize_amount, %struct.resize_amount* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* %9, align 4
  %51 = call i32 @fmin(i32 %49, i32 %50)
  %52 = call i8* @fmax(i32 %46, i32 %51)
  %53 = ptrtoint i8* %52 to i32
  %54 = load %struct.resize_amount*, %struct.resize_amount** %6, align 8
  %55 = getelementptr inbounds %struct.resize_amount, %struct.resize_amount* %54, i32 0, i32 0
  store i32 %53, i32* %55, align 4
  %56 = load %struct.resize_amount*, %struct.resize_amount** %6, align 8
  %57 = getelementptr inbounds %struct.resize_amount, %struct.resize_amount* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.sway_container*, %struct.sway_container** %5, align 8
  %60 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = sub nsw i32 %58, %61
  store i32 %62, i32* %12, align 4
  %63 = load i32, i32* %12, align 4
  %64 = sdiv i32 %63, 2
  %65 = load %struct.sway_container*, %struct.sway_container** %5, align 8
  %66 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = sub nsw i32 %67, %64
  store i32 %68, i32* %66, align 4
  %69 = load %struct.resize_amount*, %struct.resize_amount** %6, align 8
  %70 = getelementptr inbounds %struct.resize_amount, %struct.resize_amount* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.sway_container*, %struct.sway_container** %5, align 8
  %73 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %72, i32 0, i32 0
  store i32 %71, i32* %73, align 8
  br label %76

74:                                               ; preds = %19
  %75 = call i32 @sway_assert(i32 0, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0))
  br label %76

76:                                               ; preds = %19, %74, %45
  br label %77

77:                                               ; preds = %76, %3
  %78 = load %struct.resize_amount*, %struct.resize_amount** %7, align 8
  %79 = getelementptr inbounds %struct.resize_amount, %struct.resize_amount* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %140

82:                                               ; preds = %77
  %83 = load %struct.resize_amount*, %struct.resize_amount** %7, align 8
  %84 = getelementptr inbounds %struct.resize_amount, %struct.resize_amount* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  switch i32 %85, label %139 [
    i32 129, label %86
    i32 128, label %108
    i32 131, label %108
    i32 130, label %137
  ]

86:                                               ; preds = %82
  %87 = load %struct.sway_container*, %struct.sway_container** %5, align 8
  %88 = call i32 @container_is_scratchpad_hidden(%struct.sway_container* %87)
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %93

90:                                               ; preds = %86
  %91 = load i32, i32* @CMD_FAILURE, align 4
  %92 = call %struct.cmd_results* @cmd_results_new(i32 %91, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0))
  store %struct.cmd_results* %92, %struct.cmd_results** %4, align 8
  br label %167

93:                                               ; preds = %86
  %94 = load %struct.sway_container*, %struct.sway_container** %5, align 8
  %95 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %94, i32 0, i32 8
  %96 = load %struct.TYPE_2__*, %struct.TYPE_2__** %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 4
  %99 = load %struct.resize_amount*, %struct.resize_amount** %7, align 8
  %100 = getelementptr inbounds %struct.resize_amount, %struct.resize_amount* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = mul nsw i32 %98, %101
  %103 = sdiv i32 %102, 100
  %104 = load %struct.resize_amount*, %struct.resize_amount** %7, align 8
  %105 = getelementptr inbounds %struct.resize_amount, %struct.resize_amount* %104, i32 0, i32 0
  store i32 %103, i32* %105, align 4
  %106 = load %struct.resize_amount*, %struct.resize_amount** %7, align 8
  %107 = getelementptr inbounds %struct.resize_amount, %struct.resize_amount* %106, i32 0, i32 1
  store i32 128, i32* %107, align 4
  br label %108

108:                                              ; preds = %82, %82, %93
  %109 = load i32, i32* %10, align 4
  %110 = load %struct.resize_amount*, %struct.resize_amount** %7, align 8
  %111 = getelementptr inbounds %struct.resize_amount, %struct.resize_amount* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 4
  %113 = load i32, i32* %11, align 4
  %114 = call i32 @fmin(i32 %112, i32 %113)
  %115 = call i8* @fmax(i32 %109, i32 %114)
  %116 = ptrtoint i8* %115 to i32
  %117 = load %struct.resize_amount*, %struct.resize_amount** %7, align 8
  %118 = getelementptr inbounds %struct.resize_amount, %struct.resize_amount* %117, i32 0, i32 0
  store i32 %116, i32* %118, align 4
  %119 = load %struct.resize_amount*, %struct.resize_amount** %7, align 8
  %120 = getelementptr inbounds %struct.resize_amount, %struct.resize_amount* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 4
  %122 = load %struct.sway_container*, %struct.sway_container** %5, align 8
  %123 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %122, i32 0, i32 2
  %124 = load i32, i32* %123, align 8
  %125 = sub nsw i32 %121, %124
  store i32 %125, i32* %13, align 4
  %126 = load i32, i32* %13, align 4
  %127 = sdiv i32 %126, 2
  %128 = load %struct.sway_container*, %struct.sway_container** %5, align 8
  %129 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %128, i32 0, i32 3
  %130 = load i32, i32* %129, align 4
  %131 = sub nsw i32 %130, %127
  store i32 %131, i32* %129, align 4
  %132 = load %struct.resize_amount*, %struct.resize_amount** %7, align 8
  %133 = getelementptr inbounds %struct.resize_amount, %struct.resize_amount* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 4
  %135 = load %struct.sway_container*, %struct.sway_container** %5, align 8
  %136 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %135, i32 0, i32 2
  store i32 %134, i32* %136, align 8
  br label %139

137:                                              ; preds = %82
  %138 = call i32 @sway_assert(i32 0, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0))
  br label %139

139:                                              ; preds = %82, %137, %108
  br label %140

140:                                              ; preds = %139, %77
  %141 = load i32, i32* %12, align 4
  %142 = sdiv i32 %141, 2
  %143 = load %struct.sway_container*, %struct.sway_container** %5, align 8
  %144 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %143, i32 0, i32 4
  %145 = load i32, i32* %144, align 8
  %146 = sub nsw i32 %145, %142
  store i32 %146, i32* %144, align 8
  %147 = load i32, i32* %13, align 4
  %148 = sdiv i32 %147, 2
  %149 = load %struct.sway_container*, %struct.sway_container** %5, align 8
  %150 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %149, i32 0, i32 5
  %151 = load i32, i32* %150, align 4
  %152 = sub nsw i32 %151, %148
  store i32 %152, i32* %150, align 4
  %153 = load i32, i32* %12, align 4
  %154 = load %struct.sway_container*, %struct.sway_container** %5, align 8
  %155 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %154, i32 0, i32 6
  %156 = load i32, i32* %155, align 8
  %157 = add nsw i32 %156, %153
  store i32 %157, i32* %155, align 8
  %158 = load i32, i32* %13, align 4
  %159 = load %struct.sway_container*, %struct.sway_container** %5, align 8
  %160 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %159, i32 0, i32 7
  %161 = load i32, i32* %160, align 4
  %162 = add nsw i32 %161, %158
  store i32 %162, i32* %160, align 4
  %163 = load %struct.sway_container*, %struct.sway_container** %5, align 8
  %164 = call i32 @arrange_container(%struct.sway_container* %163)
  %165 = load i32, i32* @CMD_SUCCESS, align 4
  %166 = call %struct.cmd_results* @cmd_results_new(i32 %165, i8* null)
  store %struct.cmd_results* %166, %struct.cmd_results** %4, align 8
  br label %167

167:                                              ; preds = %140, %90, %27
  %168 = load %struct.cmd_results*, %struct.cmd_results** %4, align 8
  ret %struct.cmd_results* %168
}

declare dso_local i32 @floating_calculate_constraints(i32*, i32*, i32*, i32*) #1

declare dso_local i32 @container_is_scratchpad_hidden(%struct.sway_container*) #1

declare dso_local %struct.cmd_results* @cmd_results_new(i32, i8*) #1

declare dso_local i8* @fmax(i32, i32) #1

declare dso_local i32 @fmin(i32, i32) #1

declare dso_local i32 @sway_assert(i32, i8*) #1

declare dso_local i32 @arrange_container(%struct.sway_container*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
