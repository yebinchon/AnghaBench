; ModuleID = '/home/carl/AnghaBench/zfs/module/zfs/extr_dmu_recv.c_redact_check.c'
source_filename = "/home/carl/AnghaBench/zfs/module/zfs/extr_dmu_recv.c_redact_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, %struct.drr_begin* }
%struct.drr_begin = type { i64, i32, i32 }

@B_TRUE = common dso_local global i32 0, align 4
@SPA_FEATURE_REDACTED_DATASETS = common dso_local global i32 0, align 4
@BEGINNV_REDACT_FROM_SNAPS = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@DMU_BACKUP_FEATURE_REDACTED = common dso_local global i32 0, align 4
@BEGINNV_REDACT_SNAPS = common dso_local global i32 0, align 4
@B_FALSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_5__*, i32*)* @redact_check to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @redact_check(%struct.TYPE_5__* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_4__*, align 8
  %9 = alloca %struct.drr_begin*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %4, align 8
  store i32* %1, i32** %5, align 8
  %15 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 0
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %16, align 8
  store %struct.TYPE_4__* %17, %struct.TYPE_4__** %8, align 8
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 1
  %20 = load %struct.drr_begin*, %struct.drr_begin** %19, align 8
  store %struct.drr_begin* %20, %struct.drr_begin** %9, align 8
  %21 = load %struct.drr_begin*, %struct.drr_begin** %9, align 8
  %22 = getelementptr inbounds %struct.drr_begin, %struct.drr_begin* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @DMU_GET_FEATUREFLAGS(i32 %23)
  store i32 %24, i32* %10, align 4
  store i32 0, i32* %11, align 4
  %25 = load i32, i32* @B_TRUE, align 4
  store i32 %25, i32* %12, align 4
  %26 = load %struct.drr_begin*, %struct.drr_begin** %9, align 8
  %27 = getelementptr inbounds %struct.drr_begin, %struct.drr_begin* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = icmp eq i64 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %2
  %31 = load i32, i32* %12, align 4
  store i32 %31, i32* %3, align 4
  br label %95

32:                                               ; preds = %2
  %33 = load i32*, i32** %5, align 8
  %34 = load i32, i32* @SPA_FEATURE_REDACTED_DATASETS, align 4
  %35 = call i32 @dsl_dataset_get_uint64_array_feature(i32* %33, i32 %34, i32* %7, i32** %6)
  %36 = call i32 @VERIFY(i32 %35)
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = load i32, i32* @BEGINNV_REDACT_FROM_SNAPS, align 4
  %41 = call i32 @nvlist_lookup_uint64_array(i32 %39, i32 %40, i32** %13, i32* %14)
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %53

43:                                               ; preds = %32
  %44 = load i32*, i32** %6, align 8
  %45 = load i32, i32* %7, align 4
  %46 = load i32*, i32** %13, align 8
  %47 = load i32, i32* %14, align 4
  %48 = call i32 @compatible_redact_snaps(i32* %44, i32 %45, i32* %46, i32 %47)
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %52, label %50

50:                                               ; preds = %43
  %51 = load i32, i32* @EINVAL, align 4
  store i32 %51, i32* %11, align 4
  br label %52

52:                                               ; preds = %50, %43
  br label %88

53:                                               ; preds = %32
  %54 = load i32, i32* %10, align 4
  %55 = load i32, i32* @DMU_BACKUP_FEATURE_REDACTED, align 4
  %56 = and i32 %54, %55
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %76

58:                                               ; preds = %53
  %59 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = load i32, i32* @BEGINNV_REDACT_SNAPS, align 4
  %63 = call i32 @nvlist_lookup_uint64_array(i32 %61, i32 %62, i32** %13, i32* %14)
  store i32 %63, i32* %11, align 4
  %64 = load i32, i32* %11, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %73, label %66

66:                                               ; preds = %58
  %67 = load i32*, i32** %6, align 8
  %68 = load i32, i32* %7, align 4
  %69 = load i32*, i32** %13, align 8
  %70 = load i32, i32* %14, align 4
  %71 = call i32 @compatible_redact_snaps(i32* %67, i32 %68, i32* %69, i32 %70)
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %75, label %73

73:                                               ; preds = %66, %58
  %74 = load i32, i32* @EINVAL, align 4
  store i32 %74, i32* %11, align 4
  br label %75

75:                                               ; preds = %73, %66
  br label %87

76:                                               ; preds = %53
  %77 = load i32*, i32** %6, align 8
  %78 = load i32, i32* %7, align 4
  %79 = load %struct.drr_begin*, %struct.drr_begin** %9, align 8
  %80 = getelementptr inbounds %struct.drr_begin, %struct.drr_begin* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 8
  %82 = call i32 @redact_snaps_contains(i32* %77, i32 %78, i32 %81)
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %86, label %84

84:                                               ; preds = %76
  %85 = load i32, i32* @EINVAL, align 4
  store i32 %85, i32* %11, align 4
  br label %86

86:                                               ; preds = %84, %76
  br label %87

87:                                               ; preds = %86, %75
  br label %88

88:                                               ; preds = %87, %52
  %89 = load i32, i32* %11, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %93

91:                                               ; preds = %88
  %92 = load i32, i32* @B_FALSE, align 4
  store i32 %92, i32* %12, align 4
  br label %93

93:                                               ; preds = %91, %88
  %94 = load i32, i32* %12, align 4
  store i32 %94, i32* %3, align 4
  br label %95

95:                                               ; preds = %93, %30
  %96 = load i32, i32* %3, align 4
  ret i32 %96
}

declare dso_local i32 @DMU_GET_FEATUREFLAGS(i32) #1

declare dso_local i32 @VERIFY(i32) #1

declare dso_local i32 @dsl_dataset_get_uint64_array_feature(i32*, i32, i32*, i32**) #1

declare dso_local i32 @nvlist_lookup_uint64_array(i32, i32, i32**, i32*) #1

declare dso_local i32 @compatible_redact_snaps(i32*, i32, i32*, i32) #1

declare dso_local i32 @redact_snaps_contains(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
