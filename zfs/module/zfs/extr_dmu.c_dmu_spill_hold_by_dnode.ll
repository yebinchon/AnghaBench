; ModuleID = '/home/carl/AnghaBench/zfs/module/zfs/extr_dmu.c_dmu_spill_hold_by_dnode.c'
source_filename = "/home/carl/AnghaBench/zfs/module/zfs/extr_dmu.c_dmu_spill_hold_by_dnode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32 }
%struct.TYPE_9__ = type { i32 }

@DB_RF_HAVESTRUCT = common dso_local global i32 0, align 4
@RW_READER = common dso_local global i32 0, align 4
@DMU_SPILL_BLKID = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dmu_spill_hold_by_dnode(%struct.TYPE_8__* %0, i32 %1, i8* %2, i32** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_8__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32**, align 8
  %10 = alloca %struct.TYPE_9__*, align 8
  %11 = alloca i32, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store i32** %3, i32*** %9, align 8
  store %struct.TYPE_9__* null, %struct.TYPE_9__** %10, align 8
  %12 = load i32, i32* %7, align 4
  %13 = load i32, i32* @DB_RF_HAVESTRUCT, align 4
  %14 = and i32 %12, %13
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %21

16:                                               ; preds = %4
  %17 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %18 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %17, i32 0, i32 0
  %19 = load i32, i32* @RW_READER, align 4
  %20 = call i32 @rw_enter(i32* %18, i32 %19)
  br label %21

21:                                               ; preds = %16, %4
  %22 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %23 = load i32, i32* @DMU_SPILL_BLKID, align 4
  %24 = load i8*, i8** %8, align 8
  %25 = call %struct.TYPE_9__* @dbuf_hold(%struct.TYPE_8__* %22, i32 %23, i8* %24)
  store %struct.TYPE_9__* %25, %struct.TYPE_9__** %10, align 8
  %26 = load i32, i32* %7, align 4
  %27 = load i32, i32* @DB_RF_HAVESTRUCT, align 4
  %28 = and i32 %26, %27
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %34

30:                                               ; preds = %21
  %31 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %32 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %31, i32 0, i32 0
  %33 = call i32 @rw_exit(i32* %32)
  br label %34

34:                                               ; preds = %30, %21
  %35 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %36 = icmp eq %struct.TYPE_9__* %35, null
  br i1 %36, label %37, label %41

37:                                               ; preds = %34
  %38 = load i32**, i32*** %9, align 8
  store i32* null, i32** %38, align 8
  %39 = load i32, i32* @EIO, align 4
  %40 = call i32 @SET_ERROR(i32 %39)
  store i32 %40, i32* %5, align 4
  br label %58

41:                                               ; preds = %34
  %42 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %43 = load i32, i32* %7, align 4
  %44 = call i32 @dbuf_read(%struct.TYPE_9__* %42, i32* null, i32 %43)
  store i32 %44, i32* %11, align 4
  %45 = load i32, i32* %11, align 4
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %51

47:                                               ; preds = %41
  %48 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %49 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %48, i32 0, i32 0
  %50 = load i32**, i32*** %9, align 8
  store i32* %49, i32** %50, align 8
  br label %56

51:                                               ; preds = %41
  %52 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %53 = load i8*, i8** %8, align 8
  %54 = call i32 @dbuf_rele(%struct.TYPE_9__* %52, i8* %53)
  %55 = load i32**, i32*** %9, align 8
  store i32* null, i32** %55, align 8
  br label %56

56:                                               ; preds = %51, %47
  %57 = load i32, i32* %11, align 4
  store i32 %57, i32* %5, align 4
  br label %58

58:                                               ; preds = %56, %37
  %59 = load i32, i32* %5, align 4
  ret i32 %59
}

declare dso_local i32 @rw_enter(i32*, i32) #1

declare dso_local %struct.TYPE_9__* @dbuf_hold(%struct.TYPE_8__*, i32, i8*) #1

declare dso_local i32 @rw_exit(i32*) #1

declare dso_local i32 @SET_ERROR(i32) #1

declare dso_local i32 @dbuf_read(%struct.TYPE_9__*, i32*, i32) #1

declare dso_local i32 @dbuf_rele(%struct.TYPE_9__*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
