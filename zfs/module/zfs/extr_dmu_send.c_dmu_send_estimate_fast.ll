; ModuleID = '/home/carl/AnghaBench/zfs/module/zfs/extr_dmu_send.c_dmu_send_estimate_fast.c'
source_filename = "/home/carl/AnghaBench/zfs/module/zfs/extr_dmu_send.c_dmu_send_estimate_fast.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32, %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_15__ = type { i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@EXDEV = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dmu_send_estimate_fast(%struct.TYPE_14__* %0, %struct.TYPE_14__* %1, i32* %2, i32 %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_14__*, align 8
  %8 = alloca %struct.TYPE_14__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %7, align 8
  store %struct.TYPE_14__* %1, %struct.TYPE_14__** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32* %4, i32** %11, align 8
  %17 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %18 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %17, i32 0, i32 1
  %19 = load %struct.TYPE_13__*, %struct.TYPE_13__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @dsl_pool_config_held(i32 %21)
  %23 = call i32 @ASSERT(i32 %22)
  %24 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %25 = icmp eq %struct.TYPE_14__* %24, null
  br i1 %25, label %29, label %26

26:                                               ; preds = %5
  %27 = load i32*, i32** %9, align 8
  %28 = icmp eq i32* %27, null
  br label %29

29:                                               ; preds = %26, %5
  %30 = phi i1 [ true, %5 ], [ %28, %26 ]
  %31 = zext i1 %30 to i32
  %32 = call i32 @ASSERT(i32 %31)
  %33 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %34 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %40, label %37

37:                                               ; preds = %29
  %38 = load i32, i32* @EINVAL, align 4
  %39 = call i32 @SET_ERROR(i32 %38)
  store i32 %39, i32* %6, align 4
  br label %103

40:                                               ; preds = %29
  %41 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %42 = icmp ne %struct.TYPE_14__* %41, null
  br i1 %42, label %43, label %68

43:                                               ; preds = %40
  %44 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %45 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %51, label %48

48:                                               ; preds = %43
  %49 = load i32, i32* @EINVAL, align 4
  %50 = call i32 @SET_ERROR(i32 %49)
  store i32 %50, i32* %6, align 4
  br label %103

51:                                               ; preds = %43
  %52 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %53 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %54 = call i32 @dsl_dataset_is_before(%struct.TYPE_14__* %52, %struct.TYPE_14__* %53, i32 0)
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %59, label %56

56:                                               ; preds = %51
  %57 = load i32, i32* @EXDEV, align 4
  %58 = call i32 @SET_ERROR(i32 %57)
  store i32 %58, i32* %6, align 4
  br label %103

59:                                               ; preds = %51
  %60 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %61 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %62 = call i32 @dsl_dataset_space_written(%struct.TYPE_14__* %60, %struct.TYPE_14__* %61, i32* %15, i32* %14, i32* %13)
  store i32 %62, i32* %12, align 4
  %63 = load i32, i32* %12, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %67

65:                                               ; preds = %59
  %66 = load i32, i32* %12, align 4
  store i32 %66, i32* %6, align 4
  br label %103

67:                                               ; preds = %59
  br label %90

68:                                               ; preds = %40
  %69 = load i32*, i32** %9, align 8
  %70 = icmp ne i32* %69, null
  br i1 %70, label %71, label %80

71:                                               ; preds = %68
  %72 = load i32*, i32** %9, align 8
  %73 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %74 = call i32 @dsl_dataset_space_written_bookmark(i32* %72, %struct.TYPE_14__* %73, i32* %16, i32* %14, i32* %13)
  store i32 %74, i32* %12, align 4
  %75 = load i32, i32* %12, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %79

77:                                               ; preds = %71
  %78 = load i32, i32* %12, align 4
  store i32 %78, i32* %6, align 4
  br label %103

79:                                               ; preds = %71
  br label %89

80:                                               ; preds = %68
  %81 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %82 = call %struct.TYPE_15__* @dsl_dataset_phys(%struct.TYPE_14__* %81)
  %83 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  store i32 %84, i32* %13, align 4
  %85 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %86 = call %struct.TYPE_15__* @dsl_dataset_phys(%struct.TYPE_14__* %85)
  %87 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  store i32 %88, i32* %14, align 4
  br label %89

89:                                               ; preds = %80, %79
  br label %90

90:                                               ; preds = %89, %67
  %91 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %92 = load i32, i32* %13, align 4
  %93 = load i32, i32* %14, align 4
  %94 = load i32, i32* %10, align 4
  %95 = load i32*, i32** %11, align 8
  %96 = call i32 @dmu_adjust_send_estimate_for_indirects(%struct.TYPE_14__* %91, i32 %92, i32 %93, i32 %94, i32* %95)
  store i32 %96, i32* %12, align 4
  %97 = load i32*, i32** %11, align 8
  %98 = load i32, i32* %97, align 4
  %99 = sext i32 %98 to i64
  %100 = add i64 %99, 8
  %101 = trunc i64 %100 to i32
  store i32 %101, i32* %97, align 4
  %102 = load i32, i32* %12, align 4
  store i32 %102, i32* %6, align 4
  br label %103

103:                                              ; preds = %90, %77, %65, %56, %48, %37
  %104 = load i32, i32* %6, align 4
  ret i32 %104
}

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @dsl_pool_config_held(i32) #1

declare dso_local i32 @SET_ERROR(i32) #1

declare dso_local i32 @dsl_dataset_is_before(%struct.TYPE_14__*, %struct.TYPE_14__*, i32) #1

declare dso_local i32 @dsl_dataset_space_written(%struct.TYPE_14__*, %struct.TYPE_14__*, i32*, i32*, i32*) #1

declare dso_local i32 @dsl_dataset_space_written_bookmark(i32*, %struct.TYPE_14__*, i32*, i32*, i32*) #1

declare dso_local %struct.TYPE_15__* @dsl_dataset_phys(%struct.TYPE_14__*) #1

declare dso_local i32 @dmu_adjust_send_estimate_for_indirects(%struct.TYPE_14__*, i32, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
