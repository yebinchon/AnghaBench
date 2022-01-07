; ModuleID = '/home/carl/AnghaBench/rofi/source/widgets/extr_box.c_box_get_desired_height.c'
source_filename = "/home/carl/AnghaBench/rofi/source/widgets/extr_box.c_box_get_desired_height.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32 }
%struct.TYPE_11__ = type { i64, i32, i32 }
%struct.TYPE_12__ = type { i64 }

@ROFI_ORIENTATION_VERTICAL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_10__*)* @box_get_desired_height to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @box_get_desired_height(%struct.TYPE_10__* %0) #0 {
  %2 = alloca %struct.TYPE_10__*, align 8
  %3 = alloca %struct.TYPE_11__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_12__*, align 8
  %8 = alloca %struct.TYPE_10__*, align 8
  %9 = alloca %struct.TYPE_12__*, align 8
  %10 = alloca %struct.TYPE_10__*, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %2, align 8
  %11 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %12 = bitcast %struct.TYPE_10__* %11 to %struct.TYPE_11__*
  store %struct.TYPE_11__* %12, %struct.TYPE_11__** %3, align 8
  %13 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %17 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = call i32 @distance_get_pixel(i32 %15, i64 %18)
  store i32 %19, i32* %4, align 4
  store i32 0, i32* %5, align 4
  %20 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %21 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @ROFI_ORIENTATION_VERTICAL, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %66

25:                                               ; preds = %1
  store i32 0, i32* %6, align 4
  %26 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %27 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 8
  %29 = call %struct.TYPE_12__* @g_list_first(i32 %28)
  store %struct.TYPE_12__* %29, %struct.TYPE_12__** %7, align 8
  br label %30

30:                                               ; preds = %52, %25
  %31 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %32 = icmp ne %struct.TYPE_12__* %31, null
  br i1 %32, label %33, label %55

33:                                               ; preds = %30
  %34 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %35 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = inttoptr i64 %36 to %struct.TYPE_10__*
  store %struct.TYPE_10__* %37, %struct.TYPE_10__** %8, align 8
  %38 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %39 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %43, label %42

42:                                               ; preds = %33
  br label %52

43:                                               ; preds = %33
  %44 = load i32, i32* %6, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %6, align 4
  %46 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %47 = call i64 @widget_get_desired_height(%struct.TYPE_10__* %46)
  %48 = load i32, i32* %5, align 4
  %49 = sext i32 %48 to i64
  %50 = add nsw i64 %49, %47
  %51 = trunc i64 %50 to i32
  store i32 %51, i32* %5, align 4
  br label %52

52:                                               ; preds = %43, %42
  %53 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %54 = call %struct.TYPE_12__* @g_list_next(%struct.TYPE_12__* %53)
  store %struct.TYPE_12__* %54, %struct.TYPE_12__** %7, align 8
  br label %30

55:                                               ; preds = %30
  %56 = load i32, i32* %6, align 4
  %57 = icmp sgt i32 %56, 0
  br i1 %57, label %58, label %65

58:                                               ; preds = %55
  %59 = load i32, i32* %6, align 4
  %60 = sub nsw i32 %59, 1
  %61 = load i32, i32* %4, align 4
  %62 = mul nsw i32 %60, %61
  %63 = load i32, i32* %5, align 4
  %64 = add nsw i32 %63, %62
  store i32 %64, i32* %5, align 4
  br label %65

65:                                               ; preds = %58, %55
  br label %93

66:                                               ; preds = %1
  %67 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %68 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 8
  %70 = call %struct.TYPE_12__* @g_list_first(i32 %69)
  store %struct.TYPE_12__* %70, %struct.TYPE_12__** %9, align 8
  br label %71

71:                                               ; preds = %89, %66
  %72 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %73 = icmp ne %struct.TYPE_12__* %72, null
  br i1 %73, label %74, label %92

74:                                               ; preds = %71
  %75 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %76 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = inttoptr i64 %77 to %struct.TYPE_10__*
  store %struct.TYPE_10__* %78, %struct.TYPE_10__** %10, align 8
  %79 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %80 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %84, label %83

83:                                               ; preds = %74
  br label %89

84:                                               ; preds = %74
  %85 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %86 = call i64 @widget_get_desired_height(%struct.TYPE_10__* %85)
  %87 = load i32, i32* %5, align 4
  %88 = call i32 @MAX(i64 %86, i32 %87)
  store i32 %88, i32* %5, align 4
  br label %89

89:                                               ; preds = %84, %83
  %90 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %91 = call %struct.TYPE_12__* @g_list_next(%struct.TYPE_12__* %90)
  store %struct.TYPE_12__* %91, %struct.TYPE_12__** %9, align 8
  br label %71

92:                                               ; preds = %71
  br label %93

93:                                               ; preds = %92, %65
  %94 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %95 = call i64 @widget_padding_get_padding_height(%struct.TYPE_10__* %94)
  %96 = load i32, i32* %5, align 4
  %97 = sext i32 %96 to i64
  %98 = add nsw i64 %97, %95
  %99 = trunc i64 %98 to i32
  store i32 %99, i32* %5, align 4
  %100 = load i32, i32* %5, align 4
  ret i32 %100
}

declare dso_local i32 @distance_get_pixel(i32, i64) #1

declare dso_local %struct.TYPE_12__* @g_list_first(i32) #1

declare dso_local i64 @widget_get_desired_height(%struct.TYPE_10__*) #1

declare dso_local %struct.TYPE_12__* @g_list_next(%struct.TYPE_12__*) #1

declare dso_local i32 @MAX(i64, i32) #1

declare dso_local i64 @widget_padding_get_padding_height(%struct.TYPE_10__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
