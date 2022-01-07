; ModuleID = '/home/carl/AnghaBench/zfs/module/os/linux/spl/extr_spl-vnode.c_vn_getf.c'
source_filename = "/home/carl/AnghaBench/zfs/module/os/linux/spl/extr_spl-vnode.c_vn_getf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32, i32, i32, %struct.file*, %struct.TYPE_10__*, i32, i64, i32 }
%struct.file = type { i32, %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_10__ = type { i32, %struct.file*, i32 }
%struct.kstat = type { i32 }

@vn_file_lock = common dso_local global i32 0, align 4
@current = common dso_local global i32 0, align 4
@vn_file_cache = common dso_local global i32 0, align 4
@KM_SLEEP = common dso_local global i32 0, align 4
@vn_file_list = common dso_local global i32 0, align 4
@AT_STATX_SYNC_AS_STAT = common dso_local global i32 0, align 4
@STATX_TYPE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_11__* @vn_getf(i32 %0) #0 {
  %2 = alloca %struct.TYPE_11__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.kstat, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca %struct.TYPE_11__*, align 8
  %7 = alloca %struct.TYPE_10__*, align 8
  %8 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 0, i32* %8, align 4
  %9 = load i32, i32* %3, align 4
  %10 = icmp slt i32 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %1
  store %struct.TYPE_11__* null, %struct.TYPE_11__** %2, align 8
  br label %140

12:                                               ; preds = %1
  %13 = call i32 @spin_lock(i32* @vn_file_lock)
  %14 = load i32, i32* %3, align 4
  %15 = load i32, i32* @current, align 4
  %16 = call %struct.TYPE_11__* @file_find(i32 %14, i32 %15)
  store %struct.TYPE_11__* %16, %struct.TYPE_11__** %6, align 8
  %17 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %18 = icmp ne %struct.TYPE_11__* %17, null
  br i1 %18, label %19, label %46

19:                                               ; preds = %12
  %20 = load i32, i32* %3, align 4
  %21 = call %struct.file* @fget(i32 %20)
  store %struct.file* %21, %struct.file** %5, align 8
  %22 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %23 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %22, i32 0, i32 3
  %24 = load %struct.file*, %struct.file** %23, align 8
  %25 = call i32 @fput(%struct.file* %24)
  %26 = load %struct.file*, %struct.file** %5, align 8
  %27 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %28 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %27, i32 0, i32 3
  %29 = load %struct.file*, %struct.file** %28, align 8
  %30 = icmp ne %struct.file* %26, %29
  br i1 %30, label %31, label %40

31:                                               ; preds = %19
  %32 = load %struct.file*, %struct.file** %5, align 8
  %33 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %34 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %33, i32 0, i32 3
  store %struct.file* %32, %struct.file** %34, align 8
  %35 = load %struct.file*, %struct.file** %5, align 8
  %36 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %37 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %36, i32 0, i32 4
  %38 = load %struct.TYPE_10__*, %struct.TYPE_10__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %38, i32 0, i32 1
  store %struct.file* %35, %struct.file** %39, align 8
  br label %40

40:                                               ; preds = %31, %19
  %41 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %42 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %41, i32 0, i32 5
  %43 = call i32 @atomic_inc(i32* %42)
  %44 = call i32 @spin_unlock(i32* @vn_file_lock)
  %45 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  store %struct.TYPE_11__* %45, %struct.TYPE_11__** %2, align 8
  br label %140

46:                                               ; preds = %12
  %47 = call i32 @spin_unlock(i32* @vn_file_lock)
  %48 = load i32, i32* @vn_file_cache, align 4
  %49 = load i32, i32* @KM_SLEEP, align 4
  %50 = call %struct.TYPE_11__* @kmem_cache_alloc(i32 %48, i32 %49)
  store %struct.TYPE_11__* %50, %struct.TYPE_11__** %6, align 8
  %51 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %52 = icmp eq %struct.TYPE_11__* %51, null
  br i1 %52, label %53, label %54

53:                                               ; preds = %46
  br label %139

54:                                               ; preds = %46
  %55 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %56 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %55, i32 0, i32 1
  %57 = call i32 @mutex_enter(i32* %56)
  %58 = load i32, i32* %3, align 4
  %59 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %60 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %59, i32 0, i32 0
  store i32 %58, i32* %60, align 8
  %61 = load i32, i32* @current, align 4
  %62 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %63 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %62, i32 0, i32 7
  store i32 %61, i32* %63, align 8
  %64 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %65 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %64, i32 0, i32 6
  store i64 0, i64* %65, align 8
  %66 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %67 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %66, i32 0, i32 5
  %68 = call i32 @atomic_inc(i32* %67)
  %69 = load i32, i32* %3, align 4
  %70 = call %struct.file* @fget(i32 %69)
  store %struct.file* %70, %struct.file** %5, align 8
  %71 = load %struct.file*, %struct.file** %5, align 8
  %72 = icmp eq %struct.file* %71, null
  br i1 %72, label %73, label %74

73:                                               ; preds = %54
  br label %132

74:                                               ; preds = %54
  %75 = load i32, i32* @KM_SLEEP, align 4
  %76 = call %struct.TYPE_10__* @vn_alloc(i32 %75)
  store %struct.TYPE_10__* %76, %struct.TYPE_10__** %7, align 8
  %77 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %78 = icmp eq %struct.TYPE_10__* %77, null
  br i1 %78, label %79, label %80

79:                                               ; preds = %74
  br label %129

80:                                               ; preds = %74
  %81 = load %struct.file*, %struct.file** %5, align 8
  %82 = getelementptr inbounds %struct.file, %struct.file* %81, i32 0, i32 1
  %83 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = sext i32 %84 to i64
  %86 = inttoptr i64 %85 to %struct.TYPE_12__*
  %87 = load %struct.file*, %struct.file** %5, align 8
  %88 = getelementptr inbounds %struct.file, %struct.file* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = sext i32 %89 to i64
  %91 = inttoptr i64 %90 to %struct.kstat*
  %92 = call i32 (%struct.TYPE_12__*, %struct.kstat*, ...) @vfs_getattr(%struct.TYPE_12__* %86, %struct.kstat* %91, %struct.kstat* %4)
  store i32 %92, i32* %8, align 4
  %93 = load i32, i32* %8, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %96

95:                                               ; preds = %80
  br label %126

96:                                               ; preds = %80
  %97 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %98 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %97, i32 0, i32 0
  %99 = call i32 @mutex_enter(i32* %98)
  %100 = getelementptr inbounds %struct.kstat, %struct.kstat* %4, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = call i32 @vn_mode_to_vtype(i32 %101)
  %103 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %104 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %103, i32 0, i32 2
  store i32 %102, i32* %104, align 8
  %105 = load %struct.file*, %struct.file** %5, align 8
  %106 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %107 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %106, i32 0, i32 1
  store %struct.file* %105, %struct.file** %107, align 8
  %108 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %109 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %108, i32 0, i32 0
  %110 = call i32 @mutex_exit(i32* %109)
  %111 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %112 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %113 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %112, i32 0, i32 4
  store %struct.TYPE_10__* %111, %struct.TYPE_10__** %113, align 8
  %114 = load %struct.file*, %struct.file** %5, align 8
  %115 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %116 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %115, i32 0, i32 3
  store %struct.file* %114, %struct.file** %116, align 8
  %117 = call i32 @spin_lock(i32* @vn_file_lock)
  %118 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %119 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %118, i32 0, i32 2
  %120 = call i32 @list_add(i32* %119, i32* @vn_file_list)
  %121 = call i32 @spin_unlock(i32* @vn_file_lock)
  %122 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %123 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %122, i32 0, i32 1
  %124 = call i32 @mutex_exit(i32* %123)
  %125 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  store %struct.TYPE_11__* %125, %struct.TYPE_11__** %2, align 8
  br label %140

126:                                              ; preds = %95
  %127 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %128 = call i32 @vn_free(%struct.TYPE_10__* %127)
  br label %129

129:                                              ; preds = %126, %79
  %130 = load %struct.file*, %struct.file** %5, align 8
  %131 = call i32 @fput(%struct.file* %130)
  br label %132

132:                                              ; preds = %129, %73
  %133 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %134 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %133, i32 0, i32 1
  %135 = call i32 @mutex_exit(i32* %134)
  %136 = load i32, i32* @vn_file_cache, align 4
  %137 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %138 = call i32 @kmem_cache_free(i32 %136, %struct.TYPE_11__* %137)
  br label %139

139:                                              ; preds = %132, %53
  store %struct.TYPE_11__* null, %struct.TYPE_11__** %2, align 8
  br label %140

140:                                              ; preds = %139, %96, %40, %11
  %141 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  ret %struct.TYPE_11__* %141
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local %struct.TYPE_11__* @file_find(i32, i32) #1

declare dso_local %struct.file* @fget(i32) #1

declare dso_local i32 @fput(%struct.file*) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local %struct.TYPE_11__* @kmem_cache_alloc(i32, i32) #1

declare dso_local i32 @mutex_enter(i32*) #1

declare dso_local %struct.TYPE_10__* @vn_alloc(i32) #1

declare dso_local i32 @vfs_getattr(%struct.TYPE_12__*, %struct.kstat*, ...) #1

declare dso_local i32 @vn_mode_to_vtype(i32) #1

declare dso_local i32 @mutex_exit(i32*) #1

declare dso_local i32 @list_add(i32*, i32*) #1

declare dso_local i32 @vn_free(%struct.TYPE_10__*) #1

declare dso_local i32 @kmem_cache_free(i32, %struct.TYPE_11__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
