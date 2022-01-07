; ModuleID = '/home/carl/AnghaBench/zfs/module/os/linux/zfs/extr_spa_stats.c_spa_mmp_history_add.c'
source_filename = "/home/carl/AnghaBench/zfs/module/os/linux/zfs/extr_spa_stats.c_spa_mmp_history_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { %struct.TYPE_16__ }
%struct.TYPE_16__ = type { i64, %struct.TYPE_17__ }
%struct.TYPE_17__ = type { i32 }
%struct.TYPE_13__ = type { i32, i64 }
%struct.TYPE_15__ = type { i32, i32, i32, i32, i8*, i32, i8*, i8*, i8* }

@zfs_multihost_history = common dso_local global i64 0, align 8
@KM_SLEEP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @spa_mmp_history_add(%struct.TYPE_14__* %0, i8* %1, i8* %2, i8* %3, %struct.TYPE_13__* %4, i32 %5, i8* %6, i32 %7) #0 {
  %9 = alloca %struct.TYPE_14__*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca %struct.TYPE_13__*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca i32, align 4
  %17 = alloca %struct.TYPE_16__*, align 8
  %18 = alloca %struct.TYPE_15__*, align 8
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %9, align 8
  store i8* %1, i8** %10, align 8
  store i8* %2, i8** %11, align 8
  store i8* %3, i8** %12, align 8
  store %struct.TYPE_13__* %4, %struct.TYPE_13__** %13, align 8
  store i32 %5, i32* %14, align 4
  store i8* %6, i8** %15, align 8
  store i32 %7, i32* %16, align 4
  %19 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %20 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %20, i32 0, i32 0
  store %struct.TYPE_16__* %21, %struct.TYPE_16__** %17, align 8
  %22 = load i64, i64* @zfs_multihost_history, align 8
  %23 = icmp eq i64 %22, 0
  br i1 %23, label %24, label %30

24:                                               ; preds = %8
  %25 = load %struct.TYPE_16__*, %struct.TYPE_16__** %17, align 8
  %26 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = icmp eq i64 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %24
  br label %100

30:                                               ; preds = %24, %8
  %31 = load i32, i32* @KM_SLEEP, align 4
  %32 = call %struct.TYPE_15__* @kmem_zalloc(i32 56, i32 %31)
  store %struct.TYPE_15__* %32, %struct.TYPE_15__** %18, align 8
  %33 = load i8*, i8** %10, align 8
  %34 = load %struct.TYPE_15__*, %struct.TYPE_15__** %18, align 8
  %35 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %34, i32 0, i32 8
  store i8* %33, i8** %35, align 8
  %36 = load i8*, i8** %11, align 8
  %37 = load %struct.TYPE_15__*, %struct.TYPE_15__** %18, align 8
  %38 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %37, i32 0, i32 7
  store i8* %36, i8** %38, align 8
  %39 = load i8*, i8** %12, align 8
  %40 = load %struct.TYPE_15__*, %struct.TYPE_15__** %18, align 8
  %41 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %40, i32 0, i32 6
  store i8* %39, i8** %41, align 8
  %42 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %43 = icmp ne %struct.TYPE_13__* %42, null
  br i1 %43, label %44, label %62

44:                                               ; preds = %30
  %45 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %46 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = load %struct.TYPE_15__*, %struct.TYPE_15__** %18, align 8
  %49 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %48, i32 0, i32 0
  store i32 %47, i32* %49, align 8
  %50 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %51 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %61

54:                                               ; preds = %44
  %55 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %56 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %55, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
  %58 = call i32 @kmem_strdup(i64 %57)
  %59 = load %struct.TYPE_15__*, %struct.TYPE_15__** %18, align 8
  %60 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %59, i32 0, i32 5
  store i32 %58, i32* %60, align 8
  br label %61

61:                                               ; preds = %54, %44
  br label %62

62:                                               ; preds = %61, %30
  %63 = load i32, i32* %14, align 4
  %64 = load %struct.TYPE_15__*, %struct.TYPE_15__** %18, align 8
  %65 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %64, i32 0, i32 1
  store i32 %63, i32* %65, align 4
  %66 = load i8*, i8** %15, align 8
  %67 = load %struct.TYPE_15__*, %struct.TYPE_15__** %18, align 8
  %68 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %67, i32 0, i32 4
  store i8* %66, i8** %68, align 8
  %69 = load i32, i32* %16, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %80

71:                                               ; preds = %62
  %72 = load i32, i32* %16, align 4
  %73 = load %struct.TYPE_15__*, %struct.TYPE_15__** %18, align 8
  %74 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %73, i32 0, i32 2
  store i32 %72, i32* %74, align 8
  %75 = call i32 (...) @gethrtime()
  %76 = load %struct.TYPE_15__*, %struct.TYPE_15__** %18, align 8
  %77 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %76, i32 0, i32 3
  store i32 %75, i32* %77, align 4
  %78 = load %struct.TYPE_15__*, %struct.TYPE_15__** %18, align 8
  %79 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %78, i32 0, i32 0
  store i32 1, i32* %79, align 8
  br label %80

80:                                               ; preds = %71, %62
  %81 = load %struct.TYPE_16__*, %struct.TYPE_16__** %17, align 8
  %82 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %81, i32 0, i32 1
  %83 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %82, i32 0, i32 0
  %84 = call i32 @mutex_enter(i32* %83)
  %85 = load %struct.TYPE_16__*, %struct.TYPE_16__** %17, align 8
  %86 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %85, i32 0, i32 1
  %87 = load %struct.TYPE_15__*, %struct.TYPE_15__** %18, align 8
  %88 = call i32 @procfs_list_add(%struct.TYPE_17__* %86, %struct.TYPE_15__* %87)
  %89 = load %struct.TYPE_16__*, %struct.TYPE_16__** %17, align 8
  %90 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = add nsw i64 %91, 1
  store i64 %92, i64* %90, align 8
  %93 = load %struct.TYPE_16__*, %struct.TYPE_16__** %17, align 8
  %94 = load i64, i64* @zfs_multihost_history, align 8
  %95 = call i32 @spa_mmp_history_truncate(%struct.TYPE_16__* %93, i64 %94)
  %96 = load %struct.TYPE_16__*, %struct.TYPE_16__** %17, align 8
  %97 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %96, i32 0, i32 1
  %98 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %97, i32 0, i32 0
  %99 = call i32 @mutex_exit(i32* %98)
  br label %100

100:                                              ; preds = %80, %29
  ret void
}

declare dso_local %struct.TYPE_15__* @kmem_zalloc(i32, i32) #1

declare dso_local i32 @kmem_strdup(i64) #1

declare dso_local i32 @gethrtime(...) #1

declare dso_local i32 @mutex_enter(i32*) #1

declare dso_local i32 @procfs_list_add(%struct.TYPE_17__*, %struct.TYPE_15__*) #1

declare dso_local i32 @spa_mmp_history_truncate(%struct.TYPE_16__*, i64) #1

declare dso_local i32 @mutex_exit(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
