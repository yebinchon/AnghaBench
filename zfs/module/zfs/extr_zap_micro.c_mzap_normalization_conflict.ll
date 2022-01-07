; ModuleID = '/home/carl/AnghaBench/zfs/module/zfs/extr_zap_micro.c_mzap_normalization_conflict.c'
source_filename = "/home/carl/AnghaBench/zfs/module/zfs/extr_zap_micro.c_mzap_normalization_conflict.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i64, %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_14__ = type { i64 }
%struct.TYPE_15__ = type { i32 }

@AVL_BEFORE = common dso_local global i32 0, align 4
@B_FALSE = common dso_local global i64 0, align 8
@MT_NORMALIZE = common dso_local global i32 0, align 4
@B_TRUE = common dso_local global i64 0, align 8
@AVL_AFTER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_13__*, i32*, %struct.TYPE_14__*)* @mzap_normalization_conflict to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @mzap_normalization_conflict(%struct.TYPE_13__* %0, i32* %1, %struct.TYPE_14__* %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.TYPE_13__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_14__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca %struct.TYPE_14__*, align 8
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %5, align 8
  store i32* %1, i32** %6, align 8
  store %struct.TYPE_14__* %2, %struct.TYPE_14__** %7, align 8
  %11 = load i32, i32* @AVL_BEFORE, align 4
  store i32 %11, i32* %8, align 4
  %12 = load i64, i64* @B_FALSE, align 8
  store i64 %12, i64* %9, align 8
  %13 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %14 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp eq i64 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %3
  %18 = load i64, i64* @B_FALSE, align 8
  store i64 %18, i64* %4, align 8
  br label %92

19:                                               ; preds = %3
  br label %20

20:                                               ; preds = %82, %19
  %21 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %22 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %22, i32 0, i32 0
  %24 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %25 = load i32, i32* %8, align 4
  %26 = call %struct.TYPE_14__* @avl_walk(i32* %23, %struct.TYPE_14__* %24, i32 %25)
  store %struct.TYPE_14__* %26, %struct.TYPE_14__** %10, align 8
  br label %27

27:                                               ; preds = %71, %20
  %28 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %29 = icmp ne %struct.TYPE_14__* %28, null
  br i1 %29, label %30, label %38

30:                                               ; preds = %27
  %31 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %32 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %35 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = icmp eq i64 %33, %36
  br label %38

38:                                               ; preds = %30, %27
  %39 = phi i1 [ false, %27 ], [ %37, %30 ]
  br i1 %39, label %40, label %78

40:                                               ; preds = %38
  %41 = load i32*, i32** %6, align 8
  %42 = icmp eq i32* %41, null
  br i1 %42, label %43, label %53

43:                                               ; preds = %40
  %44 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %45 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %46 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %47 = call %struct.TYPE_15__* @MZE_PHYS(%struct.TYPE_13__* %45, %struct.TYPE_14__* %46)
  %48 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* @MT_NORMALIZE, align 4
  %51 = call i32* @zap_name_alloc(%struct.TYPE_13__* %44, i32 %49, i32 %50)
  store i32* %51, i32** %6, align 8
  %52 = load i64, i64* @B_TRUE, align 8
  store i64 %52, i64* %9, align 8
  br label %53

53:                                               ; preds = %43, %40
  %54 = load i32*, i32** %6, align 8
  %55 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %56 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %57 = call %struct.TYPE_15__* @MZE_PHYS(%struct.TYPE_13__* %55, %struct.TYPE_14__* %56)
  %58 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = call i64 @zap_match(i32* %54, i32 %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %70

62:                                               ; preds = %53
  %63 = load i64, i64* %9, align 8
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %68

65:                                               ; preds = %62
  %66 = load i32*, i32** %6, align 8
  %67 = call i32 @zap_name_free(i32* %66)
  br label %68

68:                                               ; preds = %65, %62
  %69 = load i64, i64* @B_TRUE, align 8
  store i64 %69, i64* %4, align 8
  br label %92

70:                                               ; preds = %53
  br label %71

71:                                               ; preds = %70
  %72 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %73 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %72, i32 0, i32 1
  %74 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %73, i32 0, i32 0
  %75 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %76 = load i32, i32* %8, align 4
  %77 = call %struct.TYPE_14__* @avl_walk(i32* %74, %struct.TYPE_14__* %75, i32 %76)
  store %struct.TYPE_14__* %77, %struct.TYPE_14__** %10, align 8
  br label %27

78:                                               ; preds = %38
  %79 = load i32, i32* %8, align 4
  %80 = load i32, i32* @AVL_BEFORE, align 4
  %81 = icmp eq i32 %79, %80
  br i1 %81, label %82, label %84

82:                                               ; preds = %78
  %83 = load i32, i32* @AVL_AFTER, align 4
  store i32 %83, i32* %8, align 4
  br label %20

84:                                               ; preds = %78
  %85 = load i64, i64* %9, align 8
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %90

87:                                               ; preds = %84
  %88 = load i32*, i32** %6, align 8
  %89 = call i32 @zap_name_free(i32* %88)
  br label %90

90:                                               ; preds = %87, %84
  %91 = load i64, i64* @B_FALSE, align 8
  store i64 %91, i64* %4, align 8
  br label %92

92:                                               ; preds = %90, %68, %17
  %93 = load i64, i64* %4, align 8
  ret i64 %93
}

declare dso_local %struct.TYPE_14__* @avl_walk(i32*, %struct.TYPE_14__*, i32) #1

declare dso_local i32* @zap_name_alloc(%struct.TYPE_13__*, i32, i32) #1

declare dso_local %struct.TYPE_15__* @MZE_PHYS(%struct.TYPE_13__*, %struct.TYPE_14__*) #1

declare dso_local i64 @zap_match(i32*, i32) #1

declare dso_local i32 @zap_name_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
