; ModuleID = '/home/carl/AnghaBench/zfs/module/zfs/extr_dsl_crypt.c_spa_keystore_create_mapping.c'
source_filename = "/home/carl/AnghaBench/zfs/module/zfs/extr_dsl_crypt.c_spa_keystore_create_mapping.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { %struct.TYPE_17__ }
%struct.TYPE_17__ = type { i32, i32 }
%struct.TYPE_20__ = type { i32, i32 }
%struct.TYPE_19__ = type { i32, i32, i32 }

@B_FALSE = common dso_local global i64 0, align 8
@KM_SLEEP = common dso_local global i32 0, align 4
@RW_WRITER = common dso_local global i32 0, align 4
@B_TRUE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @spa_keystore_create_mapping(%struct.TYPE_18__* %0, %struct.TYPE_20__* %1, i8* %2, %struct.TYPE_19__** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_18__*, align 8
  %7 = alloca %struct.TYPE_20__*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.TYPE_19__**, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_19__*, align 8
  %13 = alloca %struct.TYPE_19__*, align 8
  %14 = alloca i64, align 8
  store %struct.TYPE_18__* %0, %struct.TYPE_18__** %6, align 8
  store %struct.TYPE_20__* %1, %struct.TYPE_20__** %7, align 8
  store i8* %2, i8** %8, align 8
  store %struct.TYPE_19__** %3, %struct.TYPE_19__*** %9, align 8
  %15 = load i64, i64* @B_FALSE, align 8
  store i64 %15, i64* %14, align 8
  %16 = load i32, i32* @KM_SLEEP, align 4
  %17 = call %struct.TYPE_19__* @kmem_zalloc(i32 12, i32 %16)
  store %struct.TYPE_19__* %17, %struct.TYPE_19__** %12, align 8
  %18 = load %struct.TYPE_19__*, %struct.TYPE_19__** %12, align 8
  %19 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %18, i32 0, i32 0
  %20 = call i32 @zfs_refcount_create(i32* %19)
  %21 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %22 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %23 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.TYPE_19__*, %struct.TYPE_19__** %12, align 8
  %26 = load %struct.TYPE_19__*, %struct.TYPE_19__** %12, align 8
  %27 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %26, i32 0, i32 1
  %28 = call i32 @spa_keystore_dsl_key_hold_dd(%struct.TYPE_18__* %21, i32 %24, %struct.TYPE_19__* %25, i32* %27)
  store i32 %28, i32* %10, align 4
  %29 = load i32, i32* %10, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %43

31:                                               ; preds = %4
  %32 = load %struct.TYPE_19__*, %struct.TYPE_19__** %12, align 8
  %33 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %32, i32 0, i32 0
  %34 = call i32 @zfs_refcount_destroy(i32* %33)
  %35 = load %struct.TYPE_19__*, %struct.TYPE_19__** %12, align 8
  %36 = call i32 @kmem_free(%struct.TYPE_19__* %35, i32 12)
  %37 = load %struct.TYPE_19__**, %struct.TYPE_19__*** %9, align 8
  %38 = icmp ne %struct.TYPE_19__** %37, null
  br i1 %38, label %39, label %41

39:                                               ; preds = %31
  %40 = load %struct.TYPE_19__**, %struct.TYPE_19__*** %9, align 8
  store %struct.TYPE_19__* null, %struct.TYPE_19__** %40, align 8
  br label %41

41:                                               ; preds = %39, %31
  %42 = load i32, i32* %10, align 4
  store i32 %42, i32* %5, align 4
  br label %110

43:                                               ; preds = %4
  %44 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %45 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.TYPE_19__*, %struct.TYPE_19__** %12, align 8
  %48 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %47, i32 0, i32 2
  store i32 %46, i32* %48, align 4
  %49 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %50 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %50, i32 0, i32 0
  %52 = load i32, i32* @RW_WRITER, align 4
  %53 = call i32 @rw_enter(i32* %51, i32 %52)
  %54 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %55 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %55, i32 0, i32 1
  %57 = load %struct.TYPE_19__*, %struct.TYPE_19__** %12, align 8
  %58 = call %struct.TYPE_19__* @avl_find(i32* %56, %struct.TYPE_19__* %57, i32* %11)
  store %struct.TYPE_19__* %58, %struct.TYPE_19__** %13, align 8
  %59 = load %struct.TYPE_19__*, %struct.TYPE_19__** %13, align 8
  %60 = icmp ne %struct.TYPE_19__* %59, null
  br i1 %60, label %61, label %73

61:                                               ; preds = %43
  %62 = load i64, i64* @B_TRUE, align 8
  store i64 %62, i64* %14, align 8
  %63 = load %struct.TYPE_19__*, %struct.TYPE_19__** %13, align 8
  %64 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %63, i32 0, i32 0
  %65 = load i8*, i8** %8, align 8
  %66 = call i32 @zfs_refcount_add(i32* %64, i8* %65)
  %67 = load %struct.TYPE_19__**, %struct.TYPE_19__*** %9, align 8
  %68 = icmp ne %struct.TYPE_19__** %67, null
  br i1 %68, label %69, label %72

69:                                               ; preds = %61
  %70 = load %struct.TYPE_19__*, %struct.TYPE_19__** %13, align 8
  %71 = load %struct.TYPE_19__**, %struct.TYPE_19__*** %9, align 8
  store %struct.TYPE_19__* %70, %struct.TYPE_19__** %71, align 8
  br label %72

72:                                               ; preds = %69, %61
  br label %90

73:                                               ; preds = %43
  %74 = load %struct.TYPE_19__*, %struct.TYPE_19__** %12, align 8
  %75 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %74, i32 0, i32 0
  %76 = load i8*, i8** %8, align 8
  %77 = call i32 @zfs_refcount_add(i32* %75, i8* %76)
  %78 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %79 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %79, i32 0, i32 1
  %81 = load %struct.TYPE_19__*, %struct.TYPE_19__** %12, align 8
  %82 = load i32, i32* %11, align 4
  %83 = call i32 @avl_insert(i32* %80, %struct.TYPE_19__* %81, i32 %82)
  %84 = load %struct.TYPE_19__**, %struct.TYPE_19__*** %9, align 8
  %85 = icmp ne %struct.TYPE_19__** %84, null
  br i1 %85, label %86, label %89

86:                                               ; preds = %73
  %87 = load %struct.TYPE_19__*, %struct.TYPE_19__** %12, align 8
  %88 = load %struct.TYPE_19__**, %struct.TYPE_19__*** %9, align 8
  store %struct.TYPE_19__* %87, %struct.TYPE_19__** %88, align 8
  br label %89

89:                                               ; preds = %86, %73
  br label %90

90:                                               ; preds = %89, %72
  %91 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %92 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %92, i32 0, i32 0
  %94 = call i32 @rw_exit(i32* %93)
  %95 = load i64, i64* %14, align 8
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %109

97:                                               ; preds = %90
  %98 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %99 = load %struct.TYPE_19__*, %struct.TYPE_19__** %12, align 8
  %100 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 4
  %102 = load %struct.TYPE_19__*, %struct.TYPE_19__** %12, align 8
  %103 = call i32 @spa_keystore_dsl_key_rele(%struct.TYPE_18__* %98, i32 %101, %struct.TYPE_19__* %102)
  %104 = load %struct.TYPE_19__*, %struct.TYPE_19__** %12, align 8
  %105 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %104, i32 0, i32 0
  %106 = call i32 @zfs_refcount_destroy(i32* %105)
  %107 = load %struct.TYPE_19__*, %struct.TYPE_19__** %12, align 8
  %108 = call i32 @kmem_free(%struct.TYPE_19__* %107, i32 12)
  br label %109

109:                                              ; preds = %97, %90
  store i32 0, i32* %5, align 4
  br label %110

110:                                              ; preds = %109, %41
  %111 = load i32, i32* %5, align 4
  ret i32 %111
}

declare dso_local %struct.TYPE_19__* @kmem_zalloc(i32, i32) #1

declare dso_local i32 @zfs_refcount_create(i32*) #1

declare dso_local i32 @spa_keystore_dsl_key_hold_dd(%struct.TYPE_18__*, i32, %struct.TYPE_19__*, i32*) #1

declare dso_local i32 @zfs_refcount_destroy(i32*) #1

declare dso_local i32 @kmem_free(%struct.TYPE_19__*, i32) #1

declare dso_local i32 @rw_enter(i32*, i32) #1

declare dso_local %struct.TYPE_19__* @avl_find(i32*, %struct.TYPE_19__*, i32*) #1

declare dso_local i32 @zfs_refcount_add(i32*, i8*) #1

declare dso_local i32 @avl_insert(i32*, %struct.TYPE_19__*, i32) #1

declare dso_local i32 @rw_exit(i32*) #1

declare dso_local i32 @spa_keystore_dsl_key_rele(%struct.TYPE_18__*, i32, %struct.TYPE_19__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
