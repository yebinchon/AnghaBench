; ModuleID = '/home/carl/AnghaBench/zfs/cmd/ztest/extr_ztest.c_ztest_dmu_write_parallel.c'
source_filename = "/home/carl/AnghaBench/zfs/cmd/ztest/extr_ztest.c_ztest_dmu_write_parallel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }

@UMEM_NOFAIL = common dso_local global i32 0, align 4
@ZTEST_RANGE_LOCKS = common dso_local global i32 0, align 4
@SPA_MAXBLOCKSHIFT = common dso_local global i64 0, align 8
@ID_PARALLEL = common dso_local global i32 0, align 4
@FTAG = common dso_local global i32 0, align 4
@DMU_OT_UINT64_OTHER = common dso_local global i32 0, align 4
@B_FALSE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ztest_dmu_write_parallel(i32* %0, i64 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.TYPE_6__*, align 8
  %6 = alloca i64, align 8
  store i32* %0, i32** %3, align 8
  store i64 %1, i64* %4, align 8
  %7 = load i32, i32* @UMEM_NOFAIL, align 4
  %8 = call %struct.TYPE_6__* @umem_alloc(i32 4, i32 %7)
  store %struct.TYPE_6__* %8, %struct.TYPE_6__** %5, align 8
  %9 = call i64 @ztest_random(i32 20)
  %10 = add i64 %9, 43
  %11 = shl i64 1, %10
  %12 = load i32, i32* @ZTEST_RANGE_LOCKS, align 4
  %13 = call i64 @ztest_random(i32 %12)
  %14 = load i64, i64* @SPA_MAXBLOCKSHIFT, align 8
  %15 = shl i64 %13, %14
  %16 = add i64 %11, %15
  store i64 %16, i64* %6, align 8
  %17 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %18 = load i32, i32* @ID_PARALLEL, align 4
  %19 = load i32, i32* @FTAG, align 4
  %20 = load i32, i32* @DMU_OT_UINT64_OTHER, align 4
  %21 = call i32 @ztest_od_init(%struct.TYPE_6__* %17, i32 %18, i32 %19, i32 0, i32 %20, i32 0, i32 0, i32 0)
  %22 = load i32*, i32** %3, align 8
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %24 = load i32, i32* @B_FALSE, align 4
  %25 = call i64 @ztest_object_init(i32* %22, %struct.TYPE_6__* %23, i32 4, i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %2
  br label %42

28:                                               ; preds = %2
  br label %29

29:                                               ; preds = %32, %28
  %30 = call i64 @ztest_random(i32 10)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %39

32:                                               ; preds = %29
  %33 = load i32*, i32** %3, align 8
  %34 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load i64, i64* %6, align 8
  %38 = call i32 @ztest_io(i32* %33, i32 %36, i64 %37)
  br label %29

39:                                               ; preds = %29
  %40 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %41 = call i32 @umem_free(%struct.TYPE_6__* %40, i32 4)
  br label %42

42:                                               ; preds = %39, %27
  ret void
}

declare dso_local %struct.TYPE_6__* @umem_alloc(i32, i32) #1

declare dso_local i64 @ztest_random(i32) #1

declare dso_local i32 @ztest_od_init(%struct.TYPE_6__*, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i64 @ztest_object_init(i32*, %struct.TYPE_6__*, i32, i32) #1

declare dso_local i32 @ztest_io(i32*, i32, i64) #1

declare dso_local i32 @umem_free(%struct.TYPE_6__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
