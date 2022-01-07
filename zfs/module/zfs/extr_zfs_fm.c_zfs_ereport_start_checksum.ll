; ModuleID = '/home/carl/AnghaBench/zfs/module/zfs/extr_zfs_fm.c_zfs_ereport_start_checksum.c'
source_filename = "/home/carl/AnghaBench/zfs/module/zfs/extr_zfs_fm.c_zfs_ereport_start_checksum.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_20__ = type { i32 }
%struct.TYPE_19__ = type { %struct.TYPE_16__* }
%struct.TYPE_16__ = type { i64 }
%struct.zio = type { %struct.TYPE_17__*, %struct.TYPE_15__*, i32* }
%struct.TYPE_17__ = type { %struct.TYPE_18__* }
%struct.TYPE_18__ = type { i64, %struct.TYPE_18__*, i32*, i32, i32, i8* }
%struct.TYPE_15__ = type { i32 (%struct.zio*, %struct.TYPE_18__*, i8*)* }

@KM_SLEEP = common dso_local global i32 0, align 4
@FM_EREPORT_ZFS_CHECKSUM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @zfs_ereport_start_checksum(%struct.TYPE_20__* %0, %struct.TYPE_19__* %1, i32* %2, %struct.zio* %3, i32 %4, i32 %5, i8* %6, i32* %7) #0 {
  %9 = alloca %struct.TYPE_20__*, align 8
  %10 = alloca %struct.TYPE_19__*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.zio*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca %struct.TYPE_18__*, align 8
  store %struct.TYPE_20__* %0, %struct.TYPE_20__** %9, align 8
  store %struct.TYPE_19__* %1, %struct.TYPE_19__** %10, align 8
  store i32* %2, i32** %11, align 8
  store %struct.zio* %3, %struct.zio** %12, align 8
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store i8* %6, i8** %15, align 8
  store i32* %7, i32** %16, align 8
  %18 = load i32, i32* @KM_SLEEP, align 4
  %19 = call i8* @kmem_zalloc(i32 40, i32 %18)
  %20 = bitcast i8* %19 to %struct.TYPE_18__*
  store %struct.TYPE_18__* %20, %struct.TYPE_18__** %17, align 8
  %21 = load %struct.zio*, %struct.zio** %12, align 8
  %22 = getelementptr inbounds %struct.zio, %struct.zio* %21, i32 0, i32 2
  %23 = load i32*, i32** %22, align 8
  %24 = icmp ne i32* %23, null
  br i1 %24, label %25, label %35

25:                                               ; preds = %8
  %26 = load %struct.zio*, %struct.zio** %12, align 8
  %27 = getelementptr inbounds %struct.zio, %struct.zio* %26, i32 0, i32 1
  %28 = load %struct.TYPE_15__*, %struct.TYPE_15__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %28, i32 0, i32 0
  %30 = load i32 (%struct.zio*, %struct.TYPE_18__*, i8*)*, i32 (%struct.zio*, %struct.TYPE_18__*, i8*)** %29, align 8
  %31 = load %struct.zio*, %struct.zio** %12, align 8
  %32 = load %struct.TYPE_18__*, %struct.TYPE_18__** %17, align 8
  %33 = load i8*, i8** %15, align 8
  %34 = call i32 %30(%struct.zio* %31, %struct.TYPE_18__* %32, i8* %33)
  br label %40

35:                                               ; preds = %8
  %36 = load %struct.zio*, %struct.zio** %12, align 8
  %37 = load %struct.TYPE_18__*, %struct.TYPE_18__** %17, align 8
  %38 = load i8*, i8** %15, align 8
  %39 = call i32 @zio_vsd_default_cksum_report(%struct.zio* %36, %struct.TYPE_18__* %37, i8* %38)
  br label %40

40:                                               ; preds = %35, %25
  %41 = load i32*, i32** %16, align 8
  %42 = icmp ne i32* %41, null
  br i1 %42, label %43, label %53

43:                                               ; preds = %40
  %44 = load i32, i32* @KM_SLEEP, align 4
  %45 = call i8* @kmem_zalloc(i32 4, i32 %44)
  %46 = load %struct.TYPE_18__*, %struct.TYPE_18__** %17, align 8
  %47 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %46, i32 0, i32 5
  store i8* %45, i8** %47, align 8
  %48 = load i32*, i32** %16, align 8
  %49 = load %struct.TYPE_18__*, %struct.TYPE_18__** %17, align 8
  %50 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %49, i32 0, i32 5
  %51 = load i8*, i8** %50, align 8
  %52 = call i32 @bcopy(i32* %48, i8* %51, i32 4)
  br label %53

53:                                               ; preds = %43, %40
  %54 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %55 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %54, i32 0, i32 0
  %56 = load %struct.TYPE_16__*, %struct.TYPE_16__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = shl i64 1, %58
  %60 = load %struct.TYPE_18__*, %struct.TYPE_18__** %17, align 8
  %61 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %60, i32 0, i32 0
  store i64 %59, i64* %61, align 8
  %62 = load i32, i32* %14, align 4
  %63 = load %struct.TYPE_18__*, %struct.TYPE_18__** %17, align 8
  %64 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %63, i32 0, i32 4
  store i32 %62, i32* %64, align 4
  %65 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %66 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %65, i32 0, i32 0
  %67 = call i32 @mutex_enter(i32* %66)
  %68 = load %struct.zio*, %struct.zio** %12, align 8
  %69 = getelementptr inbounds %struct.zio, %struct.zio* %68, i32 0, i32 0
  %70 = load %struct.TYPE_17__*, %struct.TYPE_17__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %70, i32 0, i32 0
  %72 = load %struct.TYPE_18__*, %struct.TYPE_18__** %71, align 8
  %73 = load %struct.TYPE_18__*, %struct.TYPE_18__** %17, align 8
  %74 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %73, i32 0, i32 1
  store %struct.TYPE_18__* %72, %struct.TYPE_18__** %74, align 8
  %75 = load %struct.TYPE_18__*, %struct.TYPE_18__** %17, align 8
  %76 = load %struct.zio*, %struct.zio** %12, align 8
  %77 = getelementptr inbounds %struct.zio, %struct.zio* %76, i32 0, i32 0
  %78 = load %struct.TYPE_17__*, %struct.TYPE_17__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %78, i32 0, i32 0
  store %struct.TYPE_18__* %75, %struct.TYPE_18__** %79, align 8
  %80 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %81 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %80, i32 0, i32 0
  %82 = call i32 @mutex_exit(i32* %81)
  ret void
}

declare dso_local i8* @kmem_zalloc(i32, i32) #1

declare dso_local i32 @zio_vsd_default_cksum_report(%struct.zio*, %struct.TYPE_18__*, i8*) #1

declare dso_local i32 @bcopy(i32*, i8*, i32) #1

declare dso_local i32 @mutex_enter(i32*) #1

declare dso_local i32 @mutex_exit(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
