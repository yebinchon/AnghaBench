; ModuleID = '/home/carl/AnghaBench/zfs/module/zfs/extr_dsl_bookmark.c_dsl_redaction_list_hold_obj.c'
source_filename = "/home/carl/AnghaBench/zfs/module/zfs/extr_dsl_bookmark.c_dsl_redaction_list_hold_obj.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i32* }
%struct.TYPE_15__ = type { i32, %struct.TYPE_17__*, i32, i32*, i32, i32 }
%struct.TYPE_17__ = type { i32 }

@KM_SLEEP = common dso_local global i32 0, align 4
@redaction_list_evict_sync = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dsl_redaction_list_hold_obj(%struct.TYPE_16__* %0, i32 %1, i8* %2, %struct.TYPE_15__** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_16__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca %struct.TYPE_15__**, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.TYPE_17__*, align 8
  %12 = alloca %struct.TYPE_15__*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.TYPE_15__*, align 8
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store %struct.TYPE_15__** %3, %struct.TYPE_15__*** %9, align 8
  %15 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %16 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %15, i32 0, i32 0
  %17 = load i32*, i32** %16, align 8
  store i32* %17, i32** %10, align 8
  %18 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %19 = call i32 @dsl_pool_config_held(%struct.TYPE_16__* %18)
  %20 = call i32 @ASSERT(i32 %19)
  %21 = load i32*, i32** %10, align 8
  %22 = load i32, i32* %7, align 4
  %23 = load i8*, i8** %8, align 8
  %24 = call i32 @dmu_bonus_hold(i32* %21, i32 %22, i8* %23, %struct.TYPE_17__** %11)
  store i32 %24, i32* %13, align 4
  %25 = load i32, i32* %13, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %4
  %28 = load i32, i32* %13, align 4
  store i32 %28, i32* %5, align 4
  br label %75

29:                                               ; preds = %4
  %30 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %31 = call %struct.TYPE_15__* @dmu_buf_get_user(%struct.TYPE_17__* %30)
  store %struct.TYPE_15__* %31, %struct.TYPE_15__** %12, align 8
  %32 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %33 = icmp eq %struct.TYPE_15__* %32, null
  br i1 %33, label %34, label %72

34:                                               ; preds = %29
  store %struct.TYPE_15__* null, %struct.TYPE_15__** %14, align 8
  %35 = load i32, i32* @KM_SLEEP, align 4
  %36 = call %struct.TYPE_15__* @kmem_zalloc(i32 40, i32 %35)
  store %struct.TYPE_15__* %36, %struct.TYPE_15__** %12, align 8
  %37 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %38 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %39 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %38, i32 0, i32 1
  store %struct.TYPE_17__* %37, %struct.TYPE_17__** %39, align 8
  %40 = load i32, i32* %7, align 4
  %41 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %42 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %41, i32 0, i32 5
  store i32 %40, i32* %42, align 4
  %43 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %44 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %47 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %46, i32 0, i32 4
  store i32 %45, i32* %47, align 8
  %48 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %49 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %48, i32 0, i32 0
  %50 = load i32*, i32** %49, align 8
  %51 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %52 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %51, i32 0, i32 3
  store i32* %50, i32** %52, align 8
  %53 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %54 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %53, i32 0, i32 2
  %55 = call i32 @zfs_refcount_create(i32* %54)
  %56 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %57 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %56, i32 0, i32 0
  %58 = load i32, i32* @redaction_list_evict_sync, align 4
  %59 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %60 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %59, i32 0, i32 1
  %61 = call i32 @dmu_buf_init_user(i32* %57, i32 %58, i32* null, %struct.TYPE_17__** %60)
  %62 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %63 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %64 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %63, i32 0, i32 0
  %65 = call %struct.TYPE_15__* @dmu_buf_set_user_ie(%struct.TYPE_17__* %62, i32* %64)
  store %struct.TYPE_15__* %65, %struct.TYPE_15__** %14, align 8
  %66 = icmp ne %struct.TYPE_15__* %65, null
  br i1 %66, label %67, label %71

67:                                               ; preds = %34
  %68 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %69 = call i32 @kmem_free(%struct.TYPE_15__* %68, i32 40)
  %70 = load %struct.TYPE_15__*, %struct.TYPE_15__** %14, align 8
  store %struct.TYPE_15__* %70, %struct.TYPE_15__** %12, align 8
  br label %71

71:                                               ; preds = %67, %34
  br label %72

72:                                               ; preds = %71, %29
  %73 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %74 = load %struct.TYPE_15__**, %struct.TYPE_15__*** %9, align 8
  store %struct.TYPE_15__* %73, %struct.TYPE_15__** %74, align 8
  store i32 0, i32* %5, align 4
  br label %75

75:                                               ; preds = %72, %27
  %76 = load i32, i32* %5, align 4
  ret i32 %76
}

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @dsl_pool_config_held(%struct.TYPE_16__*) #1

declare dso_local i32 @dmu_bonus_hold(i32*, i32, i8*, %struct.TYPE_17__**) #1

declare dso_local %struct.TYPE_15__* @dmu_buf_get_user(%struct.TYPE_17__*) #1

declare dso_local %struct.TYPE_15__* @kmem_zalloc(i32, i32) #1

declare dso_local i32 @zfs_refcount_create(i32*) #1

declare dso_local i32 @dmu_buf_init_user(i32*, i32, i32*, %struct.TYPE_17__**) #1

declare dso_local %struct.TYPE_15__* @dmu_buf_set_user_ie(%struct.TYPE_17__*, i32*) #1

declare dso_local i32 @kmem_free(%struct.TYPE_15__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
