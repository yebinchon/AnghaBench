; ModuleID = '/home/carl/AnghaBench/sway/sway/commands/extr_resize.c_resize_set_tiled.c'
source_filename = "/home/carl/AnghaBench/sway/sway/commands/extr_resize.c_resize_set_tiled.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cmd_results = type { i32 }
%struct.sway_container = type { i64, i32, i32, %struct.TYPE_2__*, %struct.sway_container* }
%struct.TYPE_2__ = type { i32, i32 }
%struct.resize_amount = type { i32, i64 }

@RESIZE_UNIT_PPT = common dso_local global i64 0, align 8
@RESIZE_UNIT_DEFAULT = common dso_local global i64 0, align 8
@L_HORIZ = common dso_local global i64 0, align 8
@RESIZE_UNIT_PX = common dso_local global i64 0, align 8
@AXIS_HORIZONTAL = common dso_local global i32 0, align 4
@L_VERT = common dso_local global i64 0, align 8
@AXIS_VERTICAL = common dso_local global i32 0, align 4
@CMD_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.cmd_results* (%struct.sway_container*, %struct.resize_amount*, %struct.resize_amount*)* @resize_set_tiled to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.cmd_results* @resize_set_tiled(%struct.sway_container* %0, %struct.resize_amount* %1, %struct.resize_amount* %2) #0 {
  %4 = alloca %struct.sway_container*, align 8
  %5 = alloca %struct.resize_amount*, align 8
  %6 = alloca %struct.resize_amount*, align 8
  %7 = alloca %struct.sway_container*, align 8
  %8 = alloca %struct.sway_container*, align 8
  store %struct.sway_container* %0, %struct.sway_container** %4, align 8
  store %struct.resize_amount* %1, %struct.resize_amount** %5, align 8
  store %struct.resize_amount* %2, %struct.resize_amount** %6, align 8
  %9 = load %struct.resize_amount*, %struct.resize_amount** %5, align 8
  %10 = getelementptr inbounds %struct.resize_amount, %struct.resize_amount* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %93

13:                                               ; preds = %3
  %14 = load %struct.resize_amount*, %struct.resize_amount** %5, align 8
  %15 = getelementptr inbounds %struct.resize_amount, %struct.resize_amount* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @RESIZE_UNIT_PPT, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %25, label %19

19:                                               ; preds = %13
  %20 = load %struct.resize_amount*, %struct.resize_amount** %5, align 8
  %21 = getelementptr inbounds %struct.resize_amount, %struct.resize_amount* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @RESIZE_UNIT_DEFAULT, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %75

25:                                               ; preds = %19, %13
  %26 = load %struct.sway_container*, %struct.sway_container** %4, align 8
  %27 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %26, i32 0, i32 4
  %28 = load %struct.sway_container*, %struct.sway_container** %27, align 8
  store %struct.sway_container* %28, %struct.sway_container** %7, align 8
  br label %29

29:                                               ; preds = %40, %25
  %30 = load %struct.sway_container*, %struct.sway_container** %7, align 8
  %31 = icmp ne %struct.sway_container* %30, null
  br i1 %31, label %32, label %38

32:                                               ; preds = %29
  %33 = load %struct.sway_container*, %struct.sway_container** %7, align 8
  %34 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @L_HORIZ, align 8
  %37 = icmp ne i64 %35, %36
  br label %38

38:                                               ; preds = %32, %29
  %39 = phi i1 [ false, %29 ], [ %37, %32 ]
  br i1 %39, label %40, label %44

40:                                               ; preds = %38
  %41 = load %struct.sway_container*, %struct.sway_container** %7, align 8
  %42 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %41, i32 0, i32 4
  %43 = load %struct.sway_container*, %struct.sway_container** %42, align 8
  store %struct.sway_container* %43, %struct.sway_container** %7, align 8
  br label %29

44:                                               ; preds = %38
  %45 = load %struct.sway_container*, %struct.sway_container** %7, align 8
  %46 = icmp ne %struct.sway_container* %45, null
  br i1 %46, label %47, label %58

47:                                               ; preds = %44
  %48 = load %struct.sway_container*, %struct.sway_container** %7, align 8
  %49 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 8
  %51 = load %struct.resize_amount*, %struct.resize_amount** %5, align 8
  %52 = getelementptr inbounds %struct.resize_amount, %struct.resize_amount* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = mul nsw i32 %50, %53
  %55 = sdiv i32 %54, 100
  %56 = load %struct.resize_amount*, %struct.resize_amount** %5, align 8
  %57 = getelementptr inbounds %struct.resize_amount, %struct.resize_amount* %56, i32 0, i32 0
  store i32 %55, i32* %57, align 8
  br label %71

58:                                               ; preds = %44
  %59 = load %struct.sway_container*, %struct.sway_container** %4, align 8
  %60 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %59, i32 0, i32 3
  %61 = load %struct.TYPE_2__*, %struct.TYPE_2__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.resize_amount*, %struct.resize_amount** %5, align 8
  %65 = getelementptr inbounds %struct.resize_amount, %struct.resize_amount* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = mul nsw i32 %63, %66
  %68 = sdiv i32 %67, 100
  %69 = load %struct.resize_amount*, %struct.resize_amount** %5, align 8
  %70 = getelementptr inbounds %struct.resize_amount, %struct.resize_amount* %69, i32 0, i32 0
  store i32 %68, i32* %70, align 8
  br label %71

71:                                               ; preds = %58, %47
  %72 = load i64, i64* @RESIZE_UNIT_PX, align 8
  %73 = load %struct.resize_amount*, %struct.resize_amount** %5, align 8
  %74 = getelementptr inbounds %struct.resize_amount, %struct.resize_amount* %73, i32 0, i32 1
  store i64 %72, i64* %74, align 8
  br label %75

75:                                               ; preds = %71, %19
  %76 = load %struct.resize_amount*, %struct.resize_amount** %5, align 8
  %77 = getelementptr inbounds %struct.resize_amount, %struct.resize_amount* %76, i32 0, i32 1
  %78 = load i64, i64* %77, align 8
  %79 = load i64, i64* @RESIZE_UNIT_PX, align 8
  %80 = icmp eq i64 %78, %79
  br i1 %80, label %81, label %92

81:                                               ; preds = %75
  %82 = load %struct.sway_container*, %struct.sway_container** %4, align 8
  %83 = load i32, i32* @AXIS_HORIZONTAL, align 4
  %84 = load %struct.resize_amount*, %struct.resize_amount** %5, align 8
  %85 = getelementptr inbounds %struct.resize_amount, %struct.resize_amount* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = load %struct.sway_container*, %struct.sway_container** %4, align 8
  %88 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 8
  %90 = sub nsw i32 %86, %89
  %91 = call i32 @container_resize_tiled(%struct.sway_container* %82, i32 %83, i32 %90)
  br label %92

92:                                               ; preds = %81, %75
  br label %93

93:                                               ; preds = %92, %3
  %94 = load %struct.resize_amount*, %struct.resize_amount** %6, align 8
  %95 = getelementptr inbounds %struct.resize_amount, %struct.resize_amount* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %178

98:                                               ; preds = %93
  %99 = load %struct.resize_amount*, %struct.resize_amount** %6, align 8
  %100 = getelementptr inbounds %struct.resize_amount, %struct.resize_amount* %99, i32 0, i32 1
  %101 = load i64, i64* %100, align 8
  %102 = load i64, i64* @RESIZE_UNIT_PPT, align 8
  %103 = icmp eq i64 %101, %102
  br i1 %103, label %110, label %104

104:                                              ; preds = %98
  %105 = load %struct.resize_amount*, %struct.resize_amount** %6, align 8
  %106 = getelementptr inbounds %struct.resize_amount, %struct.resize_amount* %105, i32 0, i32 1
  %107 = load i64, i64* %106, align 8
  %108 = load i64, i64* @RESIZE_UNIT_DEFAULT, align 8
  %109 = icmp eq i64 %107, %108
  br i1 %109, label %110, label %160

110:                                              ; preds = %104, %98
  %111 = load %struct.sway_container*, %struct.sway_container** %4, align 8
  %112 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %111, i32 0, i32 4
  %113 = load %struct.sway_container*, %struct.sway_container** %112, align 8
  store %struct.sway_container* %113, %struct.sway_container** %8, align 8
  br label %114

114:                                              ; preds = %125, %110
  %115 = load %struct.sway_container*, %struct.sway_container** %8, align 8
  %116 = icmp ne %struct.sway_container* %115, null
  br i1 %116, label %117, label %123

117:                                              ; preds = %114
  %118 = load %struct.sway_container*, %struct.sway_container** %8, align 8
  %119 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %118, i32 0, i32 0
  %120 = load i64, i64* %119, align 8
  %121 = load i64, i64* @L_VERT, align 8
  %122 = icmp ne i64 %120, %121
  br label %123

123:                                              ; preds = %117, %114
  %124 = phi i1 [ false, %114 ], [ %122, %117 ]
  br i1 %124, label %125, label %129

125:                                              ; preds = %123
  %126 = load %struct.sway_container*, %struct.sway_container** %8, align 8
  %127 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %126, i32 0, i32 4
  %128 = load %struct.sway_container*, %struct.sway_container** %127, align 8
  store %struct.sway_container* %128, %struct.sway_container** %8, align 8
  br label %114

129:                                              ; preds = %123
  %130 = load %struct.sway_container*, %struct.sway_container** %8, align 8
  %131 = icmp ne %struct.sway_container* %130, null
  br i1 %131, label %132, label %143

132:                                              ; preds = %129
  %133 = load %struct.sway_container*, %struct.sway_container** %8, align 8
  %134 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %133, i32 0, i32 2
  %135 = load i32, i32* %134, align 4
  %136 = load %struct.resize_amount*, %struct.resize_amount** %6, align 8
  %137 = getelementptr inbounds %struct.resize_amount, %struct.resize_amount* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 8
  %139 = mul nsw i32 %135, %138
  %140 = sdiv i32 %139, 100
  %141 = load %struct.resize_amount*, %struct.resize_amount** %6, align 8
  %142 = getelementptr inbounds %struct.resize_amount, %struct.resize_amount* %141, i32 0, i32 0
  store i32 %140, i32* %142, align 8
  br label %156

143:                                              ; preds = %129
  %144 = load %struct.sway_container*, %struct.sway_container** %4, align 8
  %145 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %144, i32 0, i32 3
  %146 = load %struct.TYPE_2__*, %struct.TYPE_2__** %145, align 8
  %147 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %146, i32 0, i32 1
  %148 = load i32, i32* %147, align 4
  %149 = load %struct.resize_amount*, %struct.resize_amount** %6, align 8
  %150 = getelementptr inbounds %struct.resize_amount, %struct.resize_amount* %149, i32 0, i32 0
  %151 = load i32, i32* %150, align 8
  %152 = mul nsw i32 %148, %151
  %153 = sdiv i32 %152, 100
  %154 = load %struct.resize_amount*, %struct.resize_amount** %6, align 8
  %155 = getelementptr inbounds %struct.resize_amount, %struct.resize_amount* %154, i32 0, i32 0
  store i32 %153, i32* %155, align 8
  br label %156

156:                                              ; preds = %143, %132
  %157 = load i64, i64* @RESIZE_UNIT_PX, align 8
  %158 = load %struct.resize_amount*, %struct.resize_amount** %6, align 8
  %159 = getelementptr inbounds %struct.resize_amount, %struct.resize_amount* %158, i32 0, i32 1
  store i64 %157, i64* %159, align 8
  br label %160

160:                                              ; preds = %156, %104
  %161 = load %struct.resize_amount*, %struct.resize_amount** %6, align 8
  %162 = getelementptr inbounds %struct.resize_amount, %struct.resize_amount* %161, i32 0, i32 1
  %163 = load i64, i64* %162, align 8
  %164 = load i64, i64* @RESIZE_UNIT_PX, align 8
  %165 = icmp eq i64 %163, %164
  br i1 %165, label %166, label %177

166:                                              ; preds = %160
  %167 = load %struct.sway_container*, %struct.sway_container** %4, align 8
  %168 = load i32, i32* @AXIS_VERTICAL, align 4
  %169 = load %struct.resize_amount*, %struct.resize_amount** %6, align 8
  %170 = getelementptr inbounds %struct.resize_amount, %struct.resize_amount* %169, i32 0, i32 0
  %171 = load i32, i32* %170, align 8
  %172 = load %struct.sway_container*, %struct.sway_container** %4, align 8
  %173 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %172, i32 0, i32 2
  %174 = load i32, i32* %173, align 4
  %175 = sub nsw i32 %171, %174
  %176 = call i32 @container_resize_tiled(%struct.sway_container* %167, i32 %168, i32 %175)
  br label %177

177:                                              ; preds = %166, %160
  br label %178

178:                                              ; preds = %177, %93
  %179 = load i32, i32* @CMD_SUCCESS, align 4
  %180 = call %struct.cmd_results* @cmd_results_new(i32 %179, i32* null)
  ret %struct.cmd_results* %180
}

declare dso_local i32 @container_resize_tiled(%struct.sway_container*, i32, i32) #1

declare dso_local %struct.cmd_results* @cmd_results_new(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
