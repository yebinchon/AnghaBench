; ModuleID = '/home/carl/AnghaBench/rofi/source/widgets/extr_box.c_box_get_desired_width.c'
source_filename = "/home/carl/AnghaBench/rofi/source/widgets/extr_box.c_box_get_desired_width.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i64, i32 }
%struct.TYPE_12__ = type { i64, i32, i32 }
%struct.TYPE_13__ = type { i64 }

@.str = private unnamed_addr constant [6 x i8] c"width\00", align 1
@ROFI_ORIENTATION_HORIZONTAL = common dso_local global i64 0, align 8
@TRUE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_11__*)* @box_get_desired_width to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @box_get_desired_width(%struct.TYPE_11__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_11__*, align 8
  %4 = alloca %struct.TYPE_12__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_13__*, align 8
  %10 = alloca %struct.TYPE_11__*, align 8
  %11 = alloca %struct.TYPE_13__*, align 8
  %12 = alloca %struct.TYPE_11__*, align 8
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %3, align 8
  %13 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %14 = bitcast %struct.TYPE_11__* %13 to %struct.TYPE_12__*
  store %struct.TYPE_12__* %14, %struct.TYPE_12__** %4, align 8
  %15 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = call i32 @distance_get_pixel(i32 %17, i64 %20)
  store i32 %21, i32* %5, align 4
  store i32 0, i32* %6, align 4
  %22 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %23 = call i32 @rofi_theme_get_distance(%struct.TYPE_11__* %22, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 0)
  store i32 %23, i32* %7, align 4
  %24 = load i32, i32* %7, align 4
  %25 = load i64, i64* @ROFI_ORIENTATION_HORIZONTAL, align 8
  %26 = call i32 @distance_get_pixel(i32 %24, i64 %25)
  store i32 %26, i32* %6, align 4
  %27 = load i32, i32* %6, align 4
  %28 = icmp sgt i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %1
  %30 = load i32, i32* %6, align 4
  store i32 %30, i32* %2, align 4
  br label %126

31:                                               ; preds = %1
  %32 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %33 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @ROFI_ORIENTATION_HORIZONTAL, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %37, label %91

37:                                               ; preds = %31
  store i32 0, i32* %8, align 4
  %38 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %39 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 8
  %41 = call %struct.TYPE_13__* @g_list_first(i32 %40)
  store %struct.TYPE_13__* %41, %struct.TYPE_13__** %9, align 8
  br label %42

42:                                               ; preds = %77, %37
  %43 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %44 = icmp ne %struct.TYPE_13__* %43, null
  br i1 %44, label %45, label %80

45:                                               ; preds = %42
  %46 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %47 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = inttoptr i64 %48 to %struct.TYPE_11__*
  store %struct.TYPE_11__* %49, %struct.TYPE_11__** %10, align 8
  %50 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %51 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 8
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %55, label %54

54:                                               ; preds = %45
  br label %77

55:                                               ; preds = %45
  %56 = load i32, i32* %8, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %8, align 4
  %58 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %59 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = load i64, i64* @TRUE, align 8
  %62 = icmp eq i64 %60, %61
  br i1 %62, label %63, label %70

63:                                               ; preds = %55
  %64 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %65 = call i64 @widget_get_desired_width(%struct.TYPE_11__* %64)
  %66 = load i32, i32* %6, align 4
  %67 = sext i32 %66 to i64
  %68 = add nsw i64 %67, %65
  %69 = trunc i64 %68 to i32
  store i32 %69, i32* %6, align 4
  br label %77

70:                                               ; preds = %55
  %71 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %72 = call i64 @widget_get_desired_width(%struct.TYPE_11__* %71)
  %73 = load i32, i32* %6, align 4
  %74 = sext i32 %73 to i64
  %75 = add nsw i64 %74, %72
  %76 = trunc i64 %75 to i32
  store i32 %76, i32* %6, align 4
  br label %77

77:                                               ; preds = %70, %63, %54
  %78 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %79 = call %struct.TYPE_13__* @g_list_next(%struct.TYPE_13__* %78)
  store %struct.TYPE_13__* %79, %struct.TYPE_13__** %9, align 8
  br label %42

80:                                               ; preds = %42
  %81 = load i32, i32* %8, align 4
  %82 = icmp sgt i32 %81, 0
  br i1 %82, label %83, label %90

83:                                               ; preds = %80
  %84 = load i32, i32* %8, align 4
  %85 = sub nsw i32 %84, 1
  %86 = load i32, i32* %5, align 4
  %87 = mul nsw i32 %85, %86
  %88 = load i32, i32* %6, align 4
  %89 = add nsw i32 %88, %87
  store i32 %89, i32* %6, align 4
  br label %90

90:                                               ; preds = %83, %80
  br label %118

91:                                               ; preds = %31
  %92 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %93 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 8
  %95 = call %struct.TYPE_13__* @g_list_first(i32 %94)
  store %struct.TYPE_13__* %95, %struct.TYPE_13__** %11, align 8
  br label %96

96:                                               ; preds = %114, %91
  %97 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %98 = icmp ne %struct.TYPE_13__* %97, null
  br i1 %98, label %99, label %117

99:                                               ; preds = %96
  %100 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %101 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %100, i32 0, i32 0
  %102 = load i64, i64* %101, align 8
  %103 = inttoptr i64 %102 to %struct.TYPE_11__*
  store %struct.TYPE_11__* %103, %struct.TYPE_11__** %12, align 8
  %104 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %105 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 8
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %109, label %108

108:                                              ; preds = %99
  br label %114

109:                                              ; preds = %99
  %110 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %111 = call i64 @widget_get_desired_width(%struct.TYPE_11__* %110)
  %112 = load i32, i32* %6, align 4
  %113 = call i32 @MAX(i64 %111, i32 %112)
  store i32 %113, i32* %6, align 4
  br label %114

114:                                              ; preds = %109, %108
  %115 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %116 = call %struct.TYPE_13__* @g_list_next(%struct.TYPE_13__* %115)
  store %struct.TYPE_13__* %116, %struct.TYPE_13__** %11, align 8
  br label %96

117:                                              ; preds = %96
  br label %118

118:                                              ; preds = %117, %90
  %119 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %120 = call i64 @widget_padding_get_padding_width(%struct.TYPE_11__* %119)
  %121 = load i32, i32* %6, align 4
  %122 = sext i32 %121 to i64
  %123 = add nsw i64 %122, %120
  %124 = trunc i64 %123 to i32
  store i32 %124, i32* %6, align 4
  %125 = load i32, i32* %6, align 4
  store i32 %125, i32* %2, align 4
  br label %126

126:                                              ; preds = %118, %29
  %127 = load i32, i32* %2, align 4
  ret i32 %127
}

declare dso_local i32 @distance_get_pixel(i32, i64) #1

declare dso_local i32 @rofi_theme_get_distance(%struct.TYPE_11__*, i8*, i32) #1

declare dso_local %struct.TYPE_13__* @g_list_first(i32) #1

declare dso_local i64 @widget_get_desired_width(%struct.TYPE_11__*) #1

declare dso_local %struct.TYPE_13__* @g_list_next(%struct.TYPE_13__*) #1

declare dso_local i32 @MAX(i64, i32) #1

declare dso_local i64 @widget_padding_get_padding_width(%struct.TYPE_11__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
