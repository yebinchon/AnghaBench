; ModuleID = '/home/carl/AnghaBench/zfs/module/os/linux/zfs/extr_zfs_vnops.c_zfs_rename_lock.c'
source_filename = "/home/carl/AnghaBench/zfs/module/os/linux/zfs/extr_zfs_vnops.c_zfs_rename_lock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i64, i32, i32 }
%struct.TYPE_15__ = type { %struct.TYPE_14__*, %struct.TYPE_15__*, i32* }
%struct.TYPE_16__ = type { i64 }

@RW_WRITER = common dso_local global i64 0, align 8
@RW_READER = common dso_local global i64 0, align 8
@KM_SLEEP = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_14__*, %struct.TYPE_14__*, %struct.TYPE_14__*, %struct.TYPE_15__**)* @zfs_rename_lock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @zfs_rename_lock(%struct.TYPE_14__* %0, %struct.TYPE_14__* %1, %struct.TYPE_14__* %2, %struct.TYPE_15__** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_14__*, align 8
  %7 = alloca %struct.TYPE_14__*, align 8
  %8 = alloca %struct.TYPE_14__*, align 8
  %9 = alloca %struct.TYPE_15__**, align 8
  %10 = alloca %struct.TYPE_15__*, align 8
  %11 = alloca %struct.TYPE_14__*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %6, align 8
  store %struct.TYPE_14__* %1, %struct.TYPE_14__** %7, align 8
  store %struct.TYPE_14__* %2, %struct.TYPE_14__** %8, align 8
  store %struct.TYPE_15__** %3, %struct.TYPE_15__*** %9, align 8
  %17 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  store %struct.TYPE_14__* %17, %struct.TYPE_14__** %11, align 8
  %18 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %19 = call %struct.TYPE_16__* @ZTOZSB(%struct.TYPE_14__* %18)
  %20 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  store i64 %21, i64* %12, align 8
  %22 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %23 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  store i64 %24, i64* %13, align 8
  %25 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %26 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %25, i32 0, i32 1
  store i32* %26, i32** %14, align 8
  %27 = load i64, i64* @RW_WRITER, align 8
  store i64 %27, i64* %15, align 8
  br label %28

28:                                               ; preds = %115, %4
  %29 = load i32*, i32** %14, align 8
  %30 = load i64, i64* %15, align 8
  %31 = call i32 @rw_tryenter(i32* %29, i64 %30)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %60, label %33

33:                                               ; preds = %28
  %34 = load i64, i64* %15, align 8
  %35 = load i64, i64* @RW_READER, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %37, label %55

37:                                               ; preds = %33
  %38 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %39 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %42 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = icmp sgt i64 %40, %43
  br i1 %44, label %45, label %55

45:                                               ; preds = %37
  %46 = call i32 @zfs_rename_unlock(%struct.TYPE_15__** %10)
  %47 = load %struct.TYPE_15__**, %struct.TYPE_15__*** %9, align 8
  store %struct.TYPE_15__* null, %struct.TYPE_15__** %47, align 8
  %48 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  store %struct.TYPE_14__* %48, %struct.TYPE_14__** %11, align 8
  %49 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %50 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  store i64 %51, i64* %13, align 8
  %52 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %53 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %52, i32 0, i32 1
  store i32* %53, i32** %14, align 8
  %54 = load i64, i64* @RW_WRITER, align 8
  store i64 %54, i64* %15, align 8
  br label %115

55:                                               ; preds = %37, %33
  %56 = load i32*, i32** %14, align 8
  %57 = load i64, i64* %15, align 8
  %58 = call i32 @rw_enter(i32* %56, i64 %57)
  br label %59

59:                                               ; preds = %55
  br label %60

60:                                               ; preds = %59, %28
  %61 = load i32, i32* @KM_SLEEP, align 4
  %62 = call %struct.TYPE_15__* @kmem_alloc(i32 24, i32 %61)
  store %struct.TYPE_15__* %62, %struct.TYPE_15__** %10, align 8
  %63 = load i32*, i32** %14, align 8
  %64 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %65 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %64, i32 0, i32 2
  store i32* %63, i32** %65, align 8
  %66 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %67 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %66, i32 0, i32 0
  store %struct.TYPE_14__* null, %struct.TYPE_14__** %67, align 8
  %68 = load %struct.TYPE_15__**, %struct.TYPE_15__*** %9, align 8
  %69 = load %struct.TYPE_15__*, %struct.TYPE_15__** %68, align 8
  %70 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %71 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %70, i32 0, i32 1
  store %struct.TYPE_15__* %69, %struct.TYPE_15__** %71, align 8
  %72 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %73 = load %struct.TYPE_15__**, %struct.TYPE_15__*** %9, align 8
  store %struct.TYPE_15__* %72, %struct.TYPE_15__** %73, align 8
  %74 = load i64, i64* %13, align 8
  %75 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %76 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = icmp eq i64 %74, %77
  br i1 %78, label %79, label %82

79:                                               ; preds = %60
  %80 = load i32, i32* @EINVAL, align 4
  %81 = call i32 @SET_ERROR(i32 %80)
  store i32 %81, i32* %5, align 4
  br label %124

82:                                               ; preds = %60
  %83 = load i64, i64* %13, align 8
  %84 = load i64, i64* %12, align 8
  %85 = icmp eq i64 %83, %84
  br i1 %85, label %86, label %87

86:                                               ; preds = %82
  store i32 0, i32* %5, align 4
  br label %124

87:                                               ; preds = %82
  %88 = load i64, i64* %15, align 8
  %89 = load i64, i64* @RW_READER, align 8
  %90 = icmp eq i64 %88, %89
  br i1 %90, label %91, label %104

91:                                               ; preds = %87
  %92 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %93 = call %struct.TYPE_16__* @ZTOZSB(%struct.TYPE_14__* %92)
  %94 = load i64, i64* %13, align 8
  %95 = call i32 @zfs_zget(%struct.TYPE_16__* %93, i64 %94, %struct.TYPE_14__** %11)
  store i32 %95, i32* %16, align 4
  %96 = load i32, i32* %16, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %100

98:                                               ; preds = %91
  %99 = load i32, i32* %16, align 4
  store i32 %99, i32* %5, align 4
  br label %124

100:                                              ; preds = %91
  %101 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %102 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %103 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %102, i32 0, i32 0
  store %struct.TYPE_14__* %101, %struct.TYPE_14__** %103, align 8
  br label %104

104:                                              ; preds = %100, %87
  %105 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %106 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %105, i32 0, i32 2
  %107 = load i32, i32* %106, align 4
  %108 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %109 = call %struct.TYPE_16__* @ZTOZSB(%struct.TYPE_14__* %108)
  %110 = call i32 @SA_ZPL_PARENT(%struct.TYPE_16__* %109)
  %111 = call i32 @sa_lookup(i32 %107, i32 %110, i64* %13, i32 8)
  %112 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %113 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %112, i32 0, i32 1
  store i32* %113, i32** %14, align 8
  %114 = load i64, i64* @RW_READER, align 8
  store i64 %114, i64* %15, align 8
  br label %115

115:                                              ; preds = %104, %45
  %116 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %117 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %116, i32 0, i32 0
  %118 = load i64, i64* %117, align 8
  %119 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %120 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %119, i32 0, i32 0
  %121 = load i64, i64* %120, align 8
  %122 = icmp ne i64 %118, %121
  br i1 %122, label %28, label %123

123:                                              ; preds = %115
  store i32 0, i32* %5, align 4
  br label %124

124:                                              ; preds = %123, %98, %86, %79
  %125 = load i32, i32* %5, align 4
  ret i32 %125
}

declare dso_local %struct.TYPE_16__* @ZTOZSB(%struct.TYPE_14__*) #1

declare dso_local i32 @rw_tryenter(i32*, i64) #1

declare dso_local i32 @zfs_rename_unlock(%struct.TYPE_15__**) #1

declare dso_local i32 @rw_enter(i32*, i64) #1

declare dso_local %struct.TYPE_15__* @kmem_alloc(i32, i32) #1

declare dso_local i32 @SET_ERROR(i32) #1

declare dso_local i32 @zfs_zget(%struct.TYPE_16__*, i64, %struct.TYPE_14__**) #1

declare dso_local i32 @sa_lookup(i32, i32, i64*, i32) #1

declare dso_local i32 @SA_ZPL_PARENT(%struct.TYPE_16__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
