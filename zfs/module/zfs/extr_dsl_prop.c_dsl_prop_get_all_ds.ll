; ModuleID = '/home/carl/AnghaBench/zfs/module/zfs/extr_dsl_prop.c_dsl_prop_get_all_ds.c'
source_filename = "/home/carl/AnghaBench/zfs/module/zfs/extr_dsl_prop.c_dsl_prop_get_all_ds.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { %struct.TYPE_13__*, i64 }
%struct.TYPE_13__ = type { %struct.TYPE_13__*, %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i32* }
%struct.TYPE_16__ = type { i64 }
%struct.TYPE_15__ = type { i64 }

@ZFS_MAX_DATASET_NAME_LEN = common dso_local global i32 0, align 4
@NV_UNIQUE_NAME = common dso_local global i32 0, align 4
@KM_SLEEP = common dso_local global i32 0, align 4
@DSL_PROP_GET_SNAPSHOT = common dso_local global i32 0, align 4
@DSL_PROP_GET_LOCAL = common dso_local global i32 0, align 4
@DSL_PROP_GET_RECEIVED = common dso_local global i32 0, align 4
@DSL_PROP_GET_INHERITING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_14__*, i32**, i32)* @dsl_prop_get_all_ds to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dsl_prop_get_all_ds(%struct.TYPE_14__* %0, i32** %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_14__*, align 8
  %5 = alloca i32**, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_13__*, align 8
  %8 = alloca %struct.TYPE_12__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %4, align 8
  store i32** %1, i32*** %5, align 8
  store i32 %2, i32* %6, align 4
  %13 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %13, i32 0, i32 0
  %15 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  store %struct.TYPE_13__* %15, %struct.TYPE_13__** %7, align 8
  %16 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %17 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %16, i32 0, i32 1
  %18 = load %struct.TYPE_12__*, %struct.TYPE_12__** %17, align 8
  store %struct.TYPE_12__* %18, %struct.TYPE_12__** %8, align 8
  %19 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %20 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %19, i32 0, i32 0
  %21 = load i32*, i32** %20, align 8
  store i32* %21, i32** %9, align 8
  store i32 0, i32* %10, align 4
  %22 = load i32, i32* @ZFS_MAX_DATASET_NAME_LEN, align 4
  %23 = zext i32 %22 to i64
  %24 = call i8* @llvm.stacksave()
  store i8* %24, i8** %11, align 8
  %25 = alloca i8, i64 %23, align 16
  store i64 %23, i64* %12, align 8
  %26 = load i32**, i32*** %5, align 8
  %27 = load i32, i32* @NV_UNIQUE_NAME, align 4
  %28 = load i32, i32* @KM_SLEEP, align 4
  %29 = call i64 @nvlist_alloc(i32** %26, i32 %27, i32 %28)
  %30 = icmp eq i64 %29, 0
  %31 = zext i1 %30 to i32
  %32 = call i32 @VERIFY(i32 %31)
  %33 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %34 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %41

37:                                               ; preds = %3
  %38 = load i32, i32* @DSL_PROP_GET_SNAPSHOT, align 4
  %39 = load i32, i32* %6, align 4
  %40 = or i32 %39, %38
  store i32 %40, i32* %6, align 4
  br label %41

41:                                               ; preds = %37, %3
  %42 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %43 = call i32 @dsl_pool_config_held(%struct.TYPE_12__* %42)
  %44 = call i32 @ASSERT(i32 %43)
  %45 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %46 = call %struct.TYPE_16__* @dsl_dataset_phys(%struct.TYPE_14__* %45)
  %47 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %70

50:                                               ; preds = %41
  %51 = load i32, i32* %6, align 4
  %52 = load i32, i32* @DSL_PROP_GET_SNAPSHOT, align 4
  %53 = and i32 %51, %52
  %54 = call i32 @ASSERT(i32 %53)
  %55 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %56 = call i32 @dsl_dataset_name(%struct.TYPE_14__* %55, i8* %25)
  %57 = load i32*, i32** %9, align 8
  %58 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %59 = call %struct.TYPE_16__* @dsl_dataset_phys(%struct.TYPE_14__* %58)
  %60 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = load i32, i32* %6, align 4
  %63 = load i32**, i32*** %5, align 8
  %64 = load i32*, i32** %63, align 8
  %65 = call i32 @dsl_prop_get_all_impl(i32* %57, i64 %61, i8* %25, i32 %62, i32* %64)
  store i32 %65, i32* %10, align 4
  %66 = load i32, i32* %10, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %69

68:                                               ; preds = %50
  br label %118

69:                                               ; preds = %50
  br label %70

70:                                               ; preds = %69, %41
  br label %71

71:                                               ; preds = %113, %70
  %72 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %73 = icmp ne %struct.TYPE_13__* %72, null
  br i1 %73, label %74, label %117

74:                                               ; preds = %71
  %75 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %76 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %77 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %76, i32 0, i32 0
  %78 = load %struct.TYPE_13__*, %struct.TYPE_13__** %77, align 8
  %79 = icmp ne %struct.TYPE_13__* %75, %78
  br i1 %79, label %85, label %80

80:                                               ; preds = %74
  %81 = load i32, i32* %6, align 4
  %82 = load i32, i32* @DSL_PROP_GET_SNAPSHOT, align 4
  %83 = and i32 %81, %82
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %97

85:                                               ; preds = %80, %74
  %86 = load i32, i32* %6, align 4
  %87 = load i32, i32* @DSL_PROP_GET_LOCAL, align 4
  %88 = load i32, i32* @DSL_PROP_GET_RECEIVED, align 4
  %89 = or i32 %87, %88
  %90 = and i32 %86, %89
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %93

92:                                               ; preds = %85
  br label %117

93:                                               ; preds = %85
  %94 = load i32, i32* @DSL_PROP_GET_INHERITING, align 4
  %95 = load i32, i32* %6, align 4
  %96 = or i32 %95, %94
  store i32 %96, i32* %6, align 4
  br label %97

97:                                               ; preds = %93, %80
  %98 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %99 = call i32 @dsl_dir_name(%struct.TYPE_13__* %98, i8* %25)
  %100 = load i32*, i32** %9, align 8
  %101 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %102 = call %struct.TYPE_15__* @dsl_dir_phys(%struct.TYPE_13__* %101)
  %103 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %102, i32 0, i32 0
  %104 = load i64, i64* %103, align 8
  %105 = load i32, i32* %6, align 4
  %106 = load i32**, i32*** %5, align 8
  %107 = load i32*, i32** %106, align 8
  %108 = call i32 @dsl_prop_get_all_impl(i32* %100, i64 %104, i8* %25, i32 %105, i32* %107)
  store i32 %108, i32* %10, align 4
  %109 = load i32, i32* %10, align 4
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %112

111:                                              ; preds = %97
  br label %117

112:                                              ; preds = %97
  br label %113

113:                                              ; preds = %112
  %114 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %115 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %114, i32 0, i32 0
  %116 = load %struct.TYPE_13__*, %struct.TYPE_13__** %115, align 8
  store %struct.TYPE_13__* %116, %struct.TYPE_13__** %7, align 8
  br label %71

117:                                              ; preds = %111, %92, %71
  br label %118

118:                                              ; preds = %117, %68
  %119 = load i32, i32* %10, align 4
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %126

121:                                              ; preds = %118
  %122 = load i32**, i32*** %5, align 8
  %123 = load i32*, i32** %122, align 8
  %124 = call i32 @nvlist_free(i32* %123)
  %125 = load i32**, i32*** %5, align 8
  store i32* null, i32** %125, align 8
  br label %126

126:                                              ; preds = %121, %118
  %127 = load i32, i32* %10, align 4
  %128 = load i8*, i8** %11, align 8
  call void @llvm.stackrestore(i8* %128)
  ret i32 %127
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @VERIFY(i32) #2

declare dso_local i64 @nvlist_alloc(i32**, i32, i32) #2

declare dso_local i32 @ASSERT(i32) #2

declare dso_local i32 @dsl_pool_config_held(%struct.TYPE_12__*) #2

declare dso_local %struct.TYPE_16__* @dsl_dataset_phys(%struct.TYPE_14__*) #2

declare dso_local i32 @dsl_dataset_name(%struct.TYPE_14__*, i8*) #2

declare dso_local i32 @dsl_prop_get_all_impl(i32*, i64, i8*, i32, i32*) #2

declare dso_local i32 @dsl_dir_name(%struct.TYPE_13__*, i8*) #2

declare dso_local %struct.TYPE_15__* @dsl_dir_phys(%struct.TYPE_13__*) #2

declare dso_local i32 @nvlist_free(i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
