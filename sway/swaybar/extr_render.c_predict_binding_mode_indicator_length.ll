; ModuleID = '/home/carl/AnghaBench/sway/swaybar/extr_render.c_predict_binding_mode_indicator_length.c'
source_filename = "/home/carl/AnghaBench/sway/swaybar/extr_render.c_predict_binding_mode_indicator_length.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.swaybar_output = type { i32, i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i8*, %struct.swaybar_config*, i32 }
%struct.swaybar_config = type { i32, i32, i32 }

@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@WS_VERTICAL_PADDING = common dso_local global i32 0, align 4
@WS_HORIZONTAL_PADDING = common dso_local global i32 0, align 4
@BORDER_WIDTH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32*, %struct.swaybar_output*)* @predict_binding_mode_indicator_length to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @predict_binding_mode_indicator_length(i32* %0, %struct.swaybar_output* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.swaybar_output*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.swaybar_config*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  store i32* %0, i32** %4, align 8
  store %struct.swaybar_output* %1, %struct.swaybar_output** %5, align 8
  %15 = load %struct.swaybar_output*, %struct.swaybar_output** %5, align 8
  %16 = getelementptr inbounds %struct.swaybar_output, %struct.swaybar_output* %15, i32 0, i32 2
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i8*, i8** %18, align 8
  store i8* %19, i8** %6, align 8
  %20 = load i8*, i8** %6, align 8
  %21 = icmp ne i8* %20, null
  br i1 %21, label %23, label %22

22:                                               ; preds = %2
  store i64 0, i64* %3, align 8
  br label %102

23:                                               ; preds = %2
  %24 = load %struct.swaybar_output*, %struct.swaybar_output** %5, align 8
  %25 = getelementptr inbounds %struct.swaybar_output, %struct.swaybar_output* %24, i32 0, i32 2
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 1
  %28 = load %struct.swaybar_config*, %struct.swaybar_config** %27, align 8
  store %struct.swaybar_config* %28, %struct.swaybar_config** %7, align 8
  %29 = load %struct.swaybar_config*, %struct.swaybar_config** %7, align 8
  %30 = getelementptr inbounds %struct.swaybar_config, %struct.swaybar_config* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %34, label %33

33:                                               ; preds = %23
  store i64 0, i64* %3, align 8
  br label %102

34:                                               ; preds = %23
  %35 = load i32*, i32** %4, align 8
  %36 = load %struct.swaybar_config*, %struct.swaybar_config** %7, align 8
  %37 = getelementptr inbounds %struct.swaybar_config, %struct.swaybar_config* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.swaybar_output*, %struct.swaybar_output** %5, align 8
  %40 = getelementptr inbounds %struct.swaybar_output, %struct.swaybar_output* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = load %struct.swaybar_output*, %struct.swaybar_output** %5, align 8
  %43 = getelementptr inbounds %struct.swaybar_output, %struct.swaybar_output* %42, i32 0, i32 2
  %44 = load %struct.TYPE_2__*, %struct.TYPE_2__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 8
  %47 = load i8*, i8** %6, align 8
  %48 = call i32 @get_text_size(i32* %35, i32 %38, i32* %8, i32* %9, i32* null, i32 %41, i32 %46, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* %47)
  %49 = load i32, i32* @WS_VERTICAL_PADDING, align 4
  %50 = load %struct.swaybar_output*, %struct.swaybar_output** %5, align 8
  %51 = getelementptr inbounds %struct.swaybar_output, %struct.swaybar_output* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = mul nsw i32 %49, %52
  store i32 %53, i32* %10, align 4
  %54 = load i32, i32* @WS_HORIZONTAL_PADDING, align 4
  %55 = load %struct.swaybar_output*, %struct.swaybar_output** %5, align 8
  %56 = getelementptr inbounds %struct.swaybar_output, %struct.swaybar_output* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = mul nsw i32 %54, %57
  store i32 %58, i32* %11, align 4
  %59 = load i32, i32* @BORDER_WIDTH, align 4
  %60 = load %struct.swaybar_output*, %struct.swaybar_output** %5, align 8
  %61 = getelementptr inbounds %struct.swaybar_output, %struct.swaybar_output* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = mul nsw i32 %59, %62
  store i32 %63, i32* %12, align 4
  %64 = load i32, i32* %9, align 4
  %65 = load i32, i32* %10, align 4
  %66 = mul nsw i32 %65, 2
  %67 = add nsw i32 %64, %66
  %68 = load i32, i32* %12, align 4
  %69 = mul nsw i32 %68, 2
  %70 = add nsw i32 %67, %69
  %71 = sext i32 %70 to i64
  store i64 %71, i64* %13, align 8
  %72 = load i64, i64* %13, align 8
  %73 = load %struct.swaybar_output*, %struct.swaybar_output** %5, align 8
  %74 = getelementptr inbounds %struct.swaybar_output, %struct.swaybar_output* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = sext i32 %75 to i64
  %77 = sdiv i64 %72, %76
  store i64 %77, i64* %14, align 8
  %78 = load %struct.swaybar_output*, %struct.swaybar_output** %5, align 8
  %79 = getelementptr inbounds %struct.swaybar_output, %struct.swaybar_output* %78, i32 0, i32 2
  %80 = load %struct.TYPE_2__*, %struct.TYPE_2__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %80, i32 0, i32 1
  %82 = load %struct.swaybar_config*, %struct.swaybar_config** %81, align 8
  %83 = getelementptr inbounds %struct.swaybar_config, %struct.swaybar_config* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %93, label %86

86:                                               ; preds = %34
  %87 = load %struct.swaybar_output*, %struct.swaybar_output** %5, align 8
  %88 = getelementptr inbounds %struct.swaybar_output, %struct.swaybar_output* %87, i32 0, i32 1
  %89 = load i64, i64* %88, align 8
  %90 = load i64, i64* %14, align 8
  %91 = icmp slt i64 %89, %90
  br i1 %91, label %92, label %93

92:                                               ; preds = %86
  store i64 0, i64* %3, align 8
  br label %102

93:                                               ; preds = %86, %34
  %94 = load i32, i32* %8, align 4
  %95 = load i32, i32* %11, align 4
  %96 = mul nsw i32 %95, 2
  %97 = add nsw i32 %94, %96
  %98 = load i32, i32* %12, align 4
  %99 = mul nsw i32 %98, 2
  %100 = add nsw i32 %97, %99
  %101 = sext i32 %100 to i64
  store i64 %101, i64* %3, align 8
  br label %102

102:                                              ; preds = %93, %92, %33, %22
  %103 = load i64, i64* %3, align 8
  ret i64 %103
}

declare dso_local i32 @get_text_size(i32*, i32, i32*, i32*, i32*, i32, i32, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
