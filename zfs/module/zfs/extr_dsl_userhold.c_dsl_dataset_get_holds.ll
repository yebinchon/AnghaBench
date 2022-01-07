; ModuleID = '/home/carl/AnghaBench/zfs/module/zfs/extr_dsl_userhold.c_dsl_dataset_get_holds.c'
source_filename = "/home/carl/AnghaBench/zfs/module/zfs/extr_dsl_userhold.c_dsl_dataset_get_holds.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { %struct.TYPE_13__* }
%struct.TYPE_13__ = type { %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_14__ = type { i32, i32 }
%struct.TYPE_16__ = type { i64 }

@FTAG = common dso_local global i32 0, align 4
@KM_SLEEP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dsl_dataset_get_holds(i8* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_15__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_14__*, align 8
  %10 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i32* %1, i32** %5, align 8
  %11 = load i8*, i8** %4, align 8
  %12 = load i32, i32* @FTAG, align 4
  %13 = call i32 @dsl_pool_hold(i8* %11, i32 %12, i32** %6)
  store i32 %13, i32* %8, align 4
  %14 = load i32, i32* %8, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %2
  %17 = load i32, i32* %8, align 4
  store i32 %17, i32* %3, align 4
  br label %77

18:                                               ; preds = %2
  %19 = load i32*, i32** %6, align 8
  %20 = load i8*, i8** %4, align 8
  %21 = load i32, i32* @FTAG, align 4
  %22 = call i32 @dsl_dataset_hold(i32* %19, i8* %20, i32 %21, %struct.TYPE_15__** %7)
  store i32 %22, i32* %8, align 4
  %23 = load i32, i32* %8, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %30

25:                                               ; preds = %18
  %26 = load i32*, i32** %6, align 8
  %27 = load i32, i32* @FTAG, align 4
  %28 = call i32 @dsl_pool_rele(i32* %26, i32 %27)
  %29 = load i32, i32* %8, align 4
  store i32 %29, i32* %3, align 4
  br label %77

30:                                               ; preds = %18
  %31 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %32 = call %struct.TYPE_16__* @dsl_dataset_phys(%struct.TYPE_15__* %31)
  %33 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %70

36:                                               ; preds = %30
  %37 = load i32, i32* @KM_SLEEP, align 4
  %38 = call %struct.TYPE_14__* @kmem_alloc(i32 8, i32 %37)
  store %struct.TYPE_14__* %38, %struct.TYPE_14__** %9, align 8
  %39 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %40 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %39, i32 0, i32 0
  %41 = load %struct.TYPE_13__*, %struct.TYPE_13__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %41, i32 0, i32 0
  %43 = load %struct.TYPE_12__*, %struct.TYPE_12__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %47 = call %struct.TYPE_16__* @dsl_dataset_phys(%struct.TYPE_15__* %46)
  %48 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = call i32 @zap_cursor_init(i32* %10, i32 %45, i64 %49)
  br label %51

51:                                               ; preds = %64, %36
  %52 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %53 = call i64 @zap_cursor_retrieve(i32* %10, %struct.TYPE_14__* %52)
  %54 = icmp eq i64 %53, 0
  br i1 %54, label %55, label %66

55:                                               ; preds = %51
  %56 = load i32*, i32** %5, align 8
  %57 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %58 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %61 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @fnvlist_add_uint64(i32* %56, i32 %59, i32 %62)
  br label %64

64:                                               ; preds = %55
  %65 = call i32 @zap_cursor_advance(i32* %10)
  br label %51

66:                                               ; preds = %51
  %67 = call i32 @zap_cursor_fini(i32* %10)
  %68 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %69 = call i32 @kmem_free(%struct.TYPE_14__* %68, i32 8)
  br label %70

70:                                               ; preds = %66, %30
  %71 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %72 = load i32, i32* @FTAG, align 4
  %73 = call i32 @dsl_dataset_rele(%struct.TYPE_15__* %71, i32 %72)
  %74 = load i32*, i32** %6, align 8
  %75 = load i32, i32* @FTAG, align 4
  %76 = call i32 @dsl_pool_rele(i32* %74, i32 %75)
  store i32 0, i32* %3, align 4
  br label %77

77:                                               ; preds = %70, %25, %16
  %78 = load i32, i32* %3, align 4
  ret i32 %78
}

declare dso_local i32 @dsl_pool_hold(i8*, i32, i32**) #1

declare dso_local i32 @dsl_dataset_hold(i32*, i8*, i32, %struct.TYPE_15__**) #1

declare dso_local i32 @dsl_pool_rele(i32*, i32) #1

declare dso_local %struct.TYPE_16__* @dsl_dataset_phys(%struct.TYPE_15__*) #1

declare dso_local %struct.TYPE_14__* @kmem_alloc(i32, i32) #1

declare dso_local i32 @zap_cursor_init(i32*, i32, i64) #1

declare dso_local i64 @zap_cursor_retrieve(i32*, %struct.TYPE_14__*) #1

declare dso_local i32 @fnvlist_add_uint64(i32*, i32, i32) #1

declare dso_local i32 @zap_cursor_advance(i32*) #1

declare dso_local i32 @zap_cursor_fini(i32*) #1

declare dso_local i32 @kmem_free(%struct.TYPE_14__*, i32) #1

declare dso_local i32 @dsl_dataset_rele(%struct.TYPE_15__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
