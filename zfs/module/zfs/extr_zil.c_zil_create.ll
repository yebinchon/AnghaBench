; ModuleID = '/home/carl/AnghaBench/zfs/module/zfs/extr_zil.c_zil_create.c'
source_filename = "/home/carl/AnghaBench/zfs/module/zfs/extr_zil.c_zil_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32, i32, i32, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i64, i64, i32 }

@FALSE = common dso_local global i32 0, align 4
@TXG_WAIT = common dso_local global i32 0, align 4
@ZIL_MIN_BLKSZ = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.TYPE_6__*)* @zil_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @zil_create(%struct.TYPE_6__* %0) #0 {
  %2 = alloca %struct.TYPE_6__*, align 8
  %3 = alloca %struct.TYPE_7__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %2, align 8
  %11 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 4
  %13 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  store %struct.TYPE_7__* %13, %struct.TYPE_7__** %3, align 8
  store i32* null, i32** %4, align 8
  store i32 0, i32* %5, align 4
  store i32* null, i32** %6, align 8
  store i32 0, i32* %8, align 4
  %14 = load i32, i32* @FALSE, align 4
  store i32 %14, i32* %9, align 4
  %15 = load i32, i32* @FALSE, align 4
  store i32 %15, i32* %10, align 4
  %16 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 3
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @txg_wait_synced(i32 %18, i32 %21)
  %23 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %24 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = icmp eq i64 %25, 0
  %27 = zext i1 %26 to i32
  %28 = call i32 @ASSERT(i32 %27)
  %29 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %30 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = icmp eq i64 %31, 0
  %33 = zext i1 %32 to i32
  %34 = call i32 @ASSERT(i32 %33)
  %35 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %36 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 8
  store i32 %37, i32* %7, align 4
  %38 = call i64 @BP_IS_HOLE(i32* %7)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %43, label %40

40:                                               ; preds = %1
  %41 = call i64 @BP_SHOULD_BYTESWAP(i32* %7)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %86

43:                                               ; preds = %40, %1
  %44 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = call i32* @dmu_tx_create(i32 %46)
  store i32* %47, i32** %6, align 8
  %48 = load i32*, i32** %6, align 8
  %49 = load i32, i32* @TXG_WAIT, align 4
  %50 = call i32 @dmu_tx_assign(i32* %48, i32 %49)
  %51 = call i32 @VERIFY0(i32 %50)
  %52 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @dmu_objset_ds(i32 %54)
  %56 = load i32*, i32** %6, align 8
  %57 = call i32 @dsl_dataset_dirty(i32 %55, i32* %56)
  %58 = load i32*, i32** %6, align 8
  %59 = call i32 @dmu_tx_get_txg(i32* %58)
  store i32 %59, i32* %5, align 4
  %60 = call i64 @BP_IS_HOLE(i32* %7)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %69, label %62

62:                                               ; preds = %43
  %63 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 8
  %66 = load i32, i32* %5, align 4
  %67 = call i32 @zio_free(i32 %65, i32 %66, i32* %7)
  %68 = call i32 @BP_ZERO(i32* %7)
  br label %69

69:                                               ; preds = %62, %43
  %70 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %71 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %70, i32 0, i32 2
  %72 = load i32, i32* %71, align 8
  %73 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %74 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = load i32, i32* %5, align 4
  %77 = load i32, i32* @ZIL_MIN_BLKSZ, align 4
  %78 = call i32 @zio_alloc_zil(i32 %72, i32 %75, i32 %76, i32* %7, i32 %77, i32* %10)
  store i32 %78, i32* %8, align 4
  %79 = load i32, i32* @TRUE, align 4
  store i32 %79, i32* %9, align 4
  %80 = load i32, i32* %8, align 4
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %82, label %85

82:                                               ; preds = %69
  %83 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %84 = call i32 @zil_init_log_chain(%struct.TYPE_6__* %83, i32* %7)
  br label %85

85:                                               ; preds = %82, %69
  br label %86

86:                                               ; preds = %85, %40
  %87 = load i32, i32* %8, align 4
  %88 = icmp eq i32 %87, 0
  br i1 %88, label %89, label %95

89:                                               ; preds = %86
  %90 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %91 = load i32, i32* %10, align 4
  %92 = load i32, i32* %5, align 4
  %93 = load i32, i32* %9, align 4
  %94 = call i32* @zil_alloc_lwb(%struct.TYPE_6__* %90, i32* %7, i32 %91, i32 %92, i32 %93)
  store i32* %94, i32** %4, align 8
  br label %95

95:                                               ; preds = %89, %86
  %96 = load i32*, i32** %6, align 8
  %97 = icmp ne i32* %96, null
  br i1 %97, label %98, label %106

98:                                               ; preds = %95
  %99 = load i32*, i32** %6, align 8
  %100 = call i32 @dmu_tx_commit(i32* %99)
  %101 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %102 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 8
  %104 = load i32, i32* %5, align 4
  %105 = call i32 @txg_wait_synced(i32 %103, i32 %104)
  br label %106

106:                                              ; preds = %98, %95
  %107 = load i32, i32* %8, align 4
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %114, label %109

109:                                              ; preds = %106
  %110 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %111 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %110, i32 0, i32 2
  %112 = call i64 @bcmp(i32* %7, i32* %111, i32 4)
  %113 = icmp eq i64 %112, 0
  br label %114

114:                                              ; preds = %109, %106
  %115 = phi i1 [ true, %106 ], [ %113, %109 ]
  %116 = zext i1 %115 to i32
  %117 = call i32 @ASSERT(i32 %116)
  %118 = load i32, i32* %8, align 4
  %119 = icmp eq i32 %118, 0
  %120 = zext i1 %119 to i32
  %121 = load i32*, i32** %4, align 8
  %122 = icmp ne i32* %121, null
  %123 = zext i1 %122 to i32
  %124 = call i32 @IMPLY(i32 %120, i32 %123)
  %125 = load i32*, i32** %4, align 8
  ret i32* %125
}

declare dso_local i32 @txg_wait_synced(i32, i32) #1

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i64 @BP_IS_HOLE(i32*) #1

declare dso_local i64 @BP_SHOULD_BYTESWAP(i32*) #1

declare dso_local i32* @dmu_tx_create(i32) #1

declare dso_local i32 @VERIFY0(i32) #1

declare dso_local i32 @dmu_tx_assign(i32*, i32) #1

declare dso_local i32 @dsl_dataset_dirty(i32, i32*) #1

declare dso_local i32 @dmu_objset_ds(i32) #1

declare dso_local i32 @dmu_tx_get_txg(i32*) #1

declare dso_local i32 @zio_free(i32, i32, i32*) #1

declare dso_local i32 @BP_ZERO(i32*) #1

declare dso_local i32 @zio_alloc_zil(i32, i32, i32, i32*, i32, i32*) #1

declare dso_local i32 @zil_init_log_chain(%struct.TYPE_6__*, i32*) #1

declare dso_local i32* @zil_alloc_lwb(%struct.TYPE_6__*, i32*, i32, i32, i32) #1

declare dso_local i32 @dmu_tx_commit(i32*) #1

declare dso_local i64 @bcmp(i32*, i32*, i32) #1

declare dso_local i32 @IMPLY(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
