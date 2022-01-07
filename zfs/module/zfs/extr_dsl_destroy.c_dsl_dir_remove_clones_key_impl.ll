; ModuleID = '/home/carl/AnghaBench/zfs/module/zfs/extr_dsl_destroy.c_dsl_dir_remove_clones_key_impl.c'
source_filename = "/home/carl/AnghaBench/zfs/module/zfs/extr_dsl_destroy.c_dsl_dir_remove_clones_key_impl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_25__ = type { %struct.TYPE_22__* }
%struct.TYPE_22__ = type { i32* }
%struct.TYPE_24__ = type { i32 }
%struct.TYPE_26__ = type { i32, i32, %struct.TYPE_23__* }
%struct.TYPE_23__ = type { i32 }
%struct.TYPE_21__ = type { i64 }

@KM_SLEEP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_25__*, i32, i32*, i32*, i8*)* @dsl_dir_remove_clones_key_impl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dsl_dir_remove_clones_key_impl(%struct.TYPE_25__* %0, i32 %1, i32* %2, i32* %3, i8* %4) #0 {
  %6 = alloca %struct.TYPE_25__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.TYPE_24__*, align 8
  %13 = alloca %struct.TYPE_24__*, align 8
  %14 = alloca %struct.TYPE_26__*, align 8
  store %struct.TYPE_25__* %0, %struct.TYPE_25__** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  store i8* %4, i8** %10, align 8
  %15 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %16 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %15, i32 0, i32 0
  %17 = load %struct.TYPE_22__*, %struct.TYPE_22__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %17, i32 0, i32 0
  %19 = load i32*, i32** %18, align 8
  store i32* %19, i32** %11, align 8
  %20 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %21 = call %struct.TYPE_21__* @dsl_dir_phys(%struct.TYPE_25__* %20)
  %22 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp eq i64 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %5
  br label %95

26:                                               ; preds = %5
  %27 = load i32, i32* @KM_SLEEP, align 4
  %28 = call %struct.TYPE_24__* @kmem_alloc(i32 4, i32 %27)
  store %struct.TYPE_24__* %28, %struct.TYPE_24__** %12, align 8
  %29 = load i32, i32* @KM_SLEEP, align 4
  %30 = call %struct.TYPE_24__* @kmem_alloc(i32 4, i32 %29)
  store %struct.TYPE_24__* %30, %struct.TYPE_24__** %13, align 8
  %31 = load %struct.TYPE_24__*, %struct.TYPE_24__** %12, align 8
  %32 = load i32*, i32** %11, align 8
  %33 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %34 = call %struct.TYPE_21__* @dsl_dir_phys(%struct.TYPE_25__* %33)
  %35 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = call i32 @zap_cursor_init(%struct.TYPE_24__* %31, i32* %32, i64 %36)
  br label %38

38:                                               ; preds = %85, %26
  %39 = load %struct.TYPE_24__*, %struct.TYPE_24__** %12, align 8
  %40 = load %struct.TYPE_24__*, %struct.TYPE_24__** %13, align 8
  %41 = call i64 @zap_cursor_retrieve(%struct.TYPE_24__* %39, %struct.TYPE_24__* %40)
  %42 = icmp eq i64 %41, 0
  br i1 %42, label %43, label %88

43:                                               ; preds = %38
  %44 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %45 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %44, i32 0, i32 0
  %46 = load %struct.TYPE_22__*, %struct.TYPE_22__** %45, align 8
  %47 = load %struct.TYPE_24__*, %struct.TYPE_24__** %13, align 8
  %48 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load i8*, i8** %10, align 8
  %51 = call i32 @dsl_dataset_hold_obj(%struct.TYPE_22__* %46, i32 %49, i8* %50, %struct.TYPE_26__** %14)
  %52 = call i32 @VERIFY0(i32 %51)
  %53 = load %struct.TYPE_26__*, %struct.TYPE_26__** %14, align 8
  %54 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %53, i32 0, i32 2
  %55 = load %struct.TYPE_23__*, %struct.TYPE_23__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* %7, align 4
  %59 = icmp sgt i32 %57, %58
  br i1 %59, label %60, label %80

60:                                               ; preds = %43
  %61 = load %struct.TYPE_26__*, %struct.TYPE_26__** %14, align 8
  %62 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %61, i32 0, i32 1
  %63 = load i32, i32* %7, align 4
  %64 = load i32*, i32** %8, align 8
  %65 = call i32 @dsl_deadlist_remove_key(i32* %62, i32 %63, i32* %64)
  %66 = load %struct.TYPE_26__*, %struct.TYPE_26__** %14, align 8
  %67 = call i64 @dsl_dataset_remap_deadlist_exists(%struct.TYPE_26__* %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %75

69:                                               ; preds = %60
  %70 = load %struct.TYPE_26__*, %struct.TYPE_26__** %14, align 8
  %71 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %70, i32 0, i32 0
  %72 = load i32, i32* %7, align 4
  %73 = load i32*, i32** %8, align 8
  %74 = call i32 @dsl_deadlist_remove_key(i32* %71, i32 %72, i32* %73)
  br label %75

75:                                               ; preds = %69, %60
  %76 = load i32*, i32** %9, align 8
  %77 = load %struct.TYPE_26__*, %struct.TYPE_26__** %14, align 8
  %78 = call i32 @rck_alloc(%struct.TYPE_26__* %77)
  %79 = call i32 @list_insert_head(i32* %76, i32 %78)
  br label %84

80:                                               ; preds = %43
  %81 = load %struct.TYPE_26__*, %struct.TYPE_26__** %14, align 8
  %82 = load i8*, i8** %10, align 8
  %83 = call i32 @dsl_dataset_rele(%struct.TYPE_26__* %81, i8* %82)
  br label %84

84:                                               ; preds = %80, %75
  br label %85

85:                                               ; preds = %84
  %86 = load %struct.TYPE_24__*, %struct.TYPE_24__** %12, align 8
  %87 = call i32 @zap_cursor_advance(%struct.TYPE_24__* %86)
  br label %38

88:                                               ; preds = %38
  %89 = load %struct.TYPE_24__*, %struct.TYPE_24__** %12, align 8
  %90 = call i32 @zap_cursor_fini(%struct.TYPE_24__* %89)
  %91 = load %struct.TYPE_24__*, %struct.TYPE_24__** %13, align 8
  %92 = call i32 @kmem_free(%struct.TYPE_24__* %91, i32 4)
  %93 = load %struct.TYPE_24__*, %struct.TYPE_24__** %12, align 8
  %94 = call i32 @kmem_free(%struct.TYPE_24__* %93, i32 4)
  br label %95

95:                                               ; preds = %88, %25
  ret void
}

declare dso_local %struct.TYPE_21__* @dsl_dir_phys(%struct.TYPE_25__*) #1

declare dso_local %struct.TYPE_24__* @kmem_alloc(i32, i32) #1

declare dso_local i32 @zap_cursor_init(%struct.TYPE_24__*, i32*, i64) #1

declare dso_local i64 @zap_cursor_retrieve(%struct.TYPE_24__*, %struct.TYPE_24__*) #1

declare dso_local i32 @VERIFY0(i32) #1

declare dso_local i32 @dsl_dataset_hold_obj(%struct.TYPE_22__*, i32, i8*, %struct.TYPE_26__**) #1

declare dso_local i32 @dsl_deadlist_remove_key(i32*, i32, i32*) #1

declare dso_local i64 @dsl_dataset_remap_deadlist_exists(%struct.TYPE_26__*) #1

declare dso_local i32 @list_insert_head(i32*, i32) #1

declare dso_local i32 @rck_alloc(%struct.TYPE_26__*) #1

declare dso_local i32 @dsl_dataset_rele(%struct.TYPE_26__*, i8*) #1

declare dso_local i32 @zap_cursor_advance(%struct.TYPE_24__*) #1

declare dso_local i32 @zap_cursor_fini(%struct.TYPE_24__*) #1

declare dso_local i32 @kmem_free(%struct.TYPE_24__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
