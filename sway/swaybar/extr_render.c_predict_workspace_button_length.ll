; ModuleID = '/home/carl/AnghaBench/sway/swaybar/extr_render.c_predict_workspace_button_length.c'
source_filename = "/home/carl/AnghaBench/sway/swaybar/extr_render.c_predict_workspace_button_length.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.swaybar_output = type { i32, i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.swaybar_config* }
%struct.swaybar_config = type { i32, i32, i32 }
%struct.swaybar_workspace = type { i32 }

@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@WS_VERTICAL_PADDING = common dso_local global i32 0, align 4
@WS_HORIZONTAL_PADDING = common dso_local global i32 0, align 4
@BORDER_WIDTH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32*, %struct.swaybar_output*, %struct.swaybar_workspace*)* @predict_workspace_button_length to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @predict_workspace_button_length(i32* %0, %struct.swaybar_output* %1, %struct.swaybar_workspace* %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.swaybar_output*, align 8
  %7 = alloca %struct.swaybar_workspace*, align 8
  %8 = alloca %struct.swaybar_config*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  store i32* %0, i32** %5, align 8
  store %struct.swaybar_output* %1, %struct.swaybar_output** %6, align 8
  store %struct.swaybar_workspace* %2, %struct.swaybar_workspace** %7, align 8
  %16 = load %struct.swaybar_output*, %struct.swaybar_output** %6, align 8
  %17 = getelementptr inbounds %struct.swaybar_output, %struct.swaybar_output* %16, i32 0, i32 2
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load %struct.swaybar_config*, %struct.swaybar_config** %19, align 8
  store %struct.swaybar_config* %20, %struct.swaybar_config** %8, align 8
  %21 = load i32*, i32** %5, align 8
  %22 = load %struct.swaybar_config*, %struct.swaybar_config** %8, align 8
  %23 = getelementptr inbounds %struct.swaybar_config, %struct.swaybar_config* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.swaybar_output*, %struct.swaybar_output** %6, align 8
  %26 = getelementptr inbounds %struct.swaybar_output, %struct.swaybar_output* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = load %struct.swaybar_config*, %struct.swaybar_config** %8, align 8
  %29 = getelementptr inbounds %struct.swaybar_config, %struct.swaybar_config* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.swaybar_workspace*, %struct.swaybar_workspace** %7, align 8
  %32 = getelementptr inbounds %struct.swaybar_workspace, %struct.swaybar_workspace* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @get_text_size(i32* %21, i32 %24, i32* %9, i32* %10, i32* null, i32 %27, i32 %30, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %33)
  %35 = load i32, i32* @WS_VERTICAL_PADDING, align 4
  %36 = load %struct.swaybar_output*, %struct.swaybar_output** %6, align 8
  %37 = getelementptr inbounds %struct.swaybar_output, %struct.swaybar_output* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = mul nsw i32 %35, %38
  store i32 %39, i32* %11, align 4
  %40 = load i32, i32* @WS_HORIZONTAL_PADDING, align 4
  %41 = load %struct.swaybar_output*, %struct.swaybar_output** %6, align 8
  %42 = getelementptr inbounds %struct.swaybar_output, %struct.swaybar_output* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = mul nsw i32 %40, %43
  store i32 %44, i32* %12, align 4
  %45 = load i32, i32* @BORDER_WIDTH, align 4
  %46 = load %struct.swaybar_output*, %struct.swaybar_output** %6, align 8
  %47 = getelementptr inbounds %struct.swaybar_output, %struct.swaybar_output* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = mul nsw i32 %45, %48
  store i32 %49, i32* %13, align 4
  %50 = load i32, i32* %11, align 4
  %51 = mul nsw i32 %50, 2
  %52 = load i32, i32* %10, align 4
  %53 = add nsw i32 %51, %52
  %54 = load i32, i32* %13, align 4
  %55 = mul nsw i32 %54, 2
  %56 = add nsw i32 %53, %55
  %57 = sext i32 %56 to i64
  store i64 %57, i64* %14, align 8
  %58 = load i64, i64* %14, align 8
  %59 = load %struct.swaybar_output*, %struct.swaybar_output** %6, align 8
  %60 = getelementptr inbounds %struct.swaybar_output, %struct.swaybar_output* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = sext i32 %61 to i64
  %63 = sdiv i64 %58, %62
  store i64 %63, i64* %15, align 8
  %64 = load %struct.swaybar_output*, %struct.swaybar_output** %6, align 8
  %65 = getelementptr inbounds %struct.swaybar_output, %struct.swaybar_output* %64, i32 0, i32 2
  %66 = load %struct.TYPE_2__*, %struct.TYPE_2__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 0
  %68 = load %struct.swaybar_config*, %struct.swaybar_config** %67, align 8
  %69 = getelementptr inbounds %struct.swaybar_config, %struct.swaybar_config* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %79, label %72

72:                                               ; preds = %3
  %73 = load %struct.swaybar_output*, %struct.swaybar_output** %6, align 8
  %74 = getelementptr inbounds %struct.swaybar_output, %struct.swaybar_output* %73, i32 0, i32 1
  %75 = load i64, i64* %74, align 8
  %76 = load i64, i64* %15, align 8
  %77 = icmp slt i64 %75, %76
  br i1 %77, label %78, label %79

78:                                               ; preds = %72
  store i64 0, i64* %4, align 8
  br label %88

79:                                               ; preds = %72, %3
  %80 = load i32, i32* %12, align 4
  %81 = mul nsw i32 %80, 2
  %82 = load i32, i32* %9, align 4
  %83 = add nsw i32 %81, %82
  %84 = load i32, i32* %13, align 4
  %85 = mul nsw i32 %84, 2
  %86 = add nsw i32 %83, %85
  %87 = sext i32 %86 to i64
  store i64 %87, i64* %4, align 8
  br label %88

88:                                               ; preds = %79, %78
  %89 = load i64, i64* %4, align 8
  ret i64 %89
}

declare dso_local i32 @get_text_size(i32*, i32, i32*, i32*, i32*, i32, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
