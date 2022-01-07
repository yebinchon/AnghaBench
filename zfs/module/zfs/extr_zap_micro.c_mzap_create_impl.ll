; ModuleID = '/home/carl/AnghaBench/zfs/module/zfs/extr_zap_micro.c_mzap_create_impl.c'
source_filename = "/home/carl/AnghaBench/zfs/module/zfs/extr_zap_micro.c_mzap_create_impl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32 }
%struct.TYPE_12__ = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i64, i32, i32 }

@FTAG = common dso_local global i32 0, align 4
@DMU_READ_NO_PREFETCH = common dso_local global i32 0, align 4
@ZBT_MICRO = common dso_local global i32 0, align 4
@RW_WRITER = common dso_local global i32 0, align 4
@B_FALSE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mzap_create_impl(%struct.TYPE_11__* %0, i32 %1, i64 %2, i32* %3) #0 {
  %5 = alloca %struct.TYPE_11__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_12__*, align 8
  %10 = alloca %struct.TYPE_10__*, align 8
  %11 = alloca i32*, align 8
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i64 %2, i64* %7, align 8
  store i32* %3, i32** %8, align 8
  %12 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %13 = load i32, i32* @FTAG, align 4
  %14 = load i32, i32* @DMU_READ_NO_PREFETCH, align 4
  %15 = call i32 @dmu_buf_hold_by_dnode(%struct.TYPE_11__* %12, i32 0, i32 %13, %struct.TYPE_12__** %9, i32 %14)
  %16 = call i32 @VERIFY0(i32 %15)
  %17 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %18 = load i32*, i32** %8, align 8
  %19 = call i32 @dmu_buf_will_dirty(%struct.TYPE_12__* %17, i32* %18)
  %20 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %21 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %20, i32 0, i32 0
  %22 = load %struct.TYPE_10__*, %struct.TYPE_10__** %21, align 8
  store %struct.TYPE_10__* %22, %struct.TYPE_10__** %10, align 8
  %23 = load i32, i32* @ZBT_MICRO, align 4
  %24 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %25 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %24, i32 0, i32 2
  store i32 %23, i32* %25, align 4
  %26 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %27 = ptrtoint %struct.TYPE_12__* %26 to i64
  %28 = load i32*, i32** %8, align 8
  %29 = ptrtoint i32* %28 to i64
  %30 = xor i64 %27, %29
  %31 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %32 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = shl i32 %33, 1
  %35 = sext i32 %34 to i64
  %36 = xor i64 %30, %35
  %37 = or i64 %36, 1
  %38 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %39 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %38, i32 0, i32 0
  store i64 %37, i64* %39, align 8
  %40 = load i32, i32* %6, align 4
  %41 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %42 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %41, i32 0, i32 1
  store i32 %40, i32* %42, align 8
  %43 = load i64, i64* %7, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %62

45:                                               ; preds = %4
  %46 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %47 = load i32, i32* @FTAG, align 4
  %48 = load i32*, i32** %8, align 8
  %49 = load i32, i32* @RW_WRITER, align 4
  %50 = load i32, i32* @B_FALSE, align 4
  %51 = load i32, i32* @B_FALSE, align 4
  %52 = call i32 @zap_lockdir_impl(%struct.TYPE_12__* %46, i32 %47, i32* %48, i32 %49, i32 %50, i32 %51, i32** %11)
  %53 = call i32 @VERIFY0(i32 %52)
  %54 = load i32, i32* @FTAG, align 4
  %55 = load i32*, i32** %8, align 8
  %56 = load i64, i64* %7, align 8
  %57 = call i32 @mzap_upgrade(i32** %11, i32 %54, i32* %55, i64 %56)
  %58 = call i32 @VERIFY0(i32 %57)
  %59 = load i32*, i32** %11, align 8
  %60 = load i32, i32* @FTAG, align 4
  %61 = call i32 @zap_unlockdir(i32* %59, i32 %60)
  br label %66

62:                                               ; preds = %4
  %63 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %64 = load i32, i32* @FTAG, align 4
  %65 = call i32 @dmu_buf_rele(%struct.TYPE_12__* %63, i32 %64)
  br label %66

66:                                               ; preds = %62, %45
  ret void
}

declare dso_local i32 @VERIFY0(i32) #1

declare dso_local i32 @dmu_buf_hold_by_dnode(%struct.TYPE_11__*, i32, i32, %struct.TYPE_12__**, i32) #1

declare dso_local i32 @dmu_buf_will_dirty(%struct.TYPE_12__*, i32*) #1

declare dso_local i32 @zap_lockdir_impl(%struct.TYPE_12__*, i32, i32*, i32, i32, i32, i32**) #1

declare dso_local i32 @mzap_upgrade(i32**, i32, i32*, i64) #1

declare dso_local i32 @zap_unlockdir(i32*, i32) #1

declare dso_local i32 @dmu_buf_rele(%struct.TYPE_12__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
