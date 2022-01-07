; ModuleID = '/home/carl/AnghaBench/zfs/cmd/ztest/extr_ztest.c_ztest_dmu_object_alloc_free.c'
source_filename = "/home/carl/AnghaBench/zfs/cmd/ztest/extr_ztest.c_ztest_dmu_object_alloc_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }

@OD_ARRAY_SIZE = common dso_local global i32 0, align 4
@UMEM_NOFAIL = common dso_local global i32 0, align 4
@FTAG = common dso_local global i32 0, align 4
@DMU_OT_UINT64_OTHER = common dso_local global i32 0, align 4
@B_TRUE = common dso_local global i32 0, align 4
@ZTEST_RANGE_LOCKS = common dso_local global i32 0, align 4
@SPA_MAXBLOCKSHIFT = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ztest_dmu_object_alloc_free(i32* %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_6__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load i32, i32* @OD_ARRAY_SIZE, align 4
  %10 = sext i32 %9 to i64
  %11 = mul i64 4, %10
  %12 = trunc i64 %11 to i32
  store i32 %12, i32* %7, align 4
  %13 = load i32, i32* %7, align 4
  %14 = load i32, i32* @UMEM_NOFAIL, align 4
  %15 = call %struct.TYPE_6__* @umem_alloc(i32 %13, i32 %14)
  store %struct.TYPE_6__* %15, %struct.TYPE_6__** %5, align 8
  %16 = load i32, i32* @OD_ARRAY_SIZE, align 4
  store i32 %16, i32* %6, align 4
  store i32 0, i32* %8, align 4
  br label %17

17:                                               ; preds = %31, %2
  %18 = load i32, i32* %8, align 4
  %19 = load i32, i32* %6, align 4
  %20 = icmp slt i32 %18, %19
  br i1 %20, label %21, label %34

21:                                               ; preds = %17
  %22 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %23 = load i32, i32* %8, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i64 %24
  %26 = load i32, i32* %4, align 4
  %27 = load i32, i32* @FTAG, align 4
  %28 = load i32, i32* %8, align 4
  %29 = load i32, i32* @DMU_OT_UINT64_OTHER, align 4
  %30 = call i32 @ztest_od_init(%struct.TYPE_6__* %25, i32 %26, i32 %27, i32 %28, i32 %29, i32 0, i32 0, i32 0)
  br label %31

31:                                               ; preds = %21
  %32 = load i32, i32* %8, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %8, align 4
  br label %17

34:                                               ; preds = %17
  %35 = load i32*, i32** %3, align 8
  %36 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %37 = load i32, i32* %7, align 4
  %38 = load i32, i32* @B_TRUE, align 4
  %39 = call i64 @ztest_object_init(i32* %35, %struct.TYPE_6__* %36, i32 %37, i32 %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %34
  br label %65

42:                                               ; preds = %34
  br label %43

43:                                               ; preds = %48, %42
  %44 = load i32, i32* %6, align 4
  %45 = mul nsw i32 4, %44
  %46 = call i64 @ztest_random(i32 %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %61

48:                                               ; preds = %43
  %49 = load i32*, i32** %3, align 8
  %50 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %51 = load i32, i32* %6, align 4
  %52 = call i64 @ztest_random(i32 %51)
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i64 %52
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* @ZTEST_RANGE_LOCKS, align 4
  %57 = call i64 @ztest_random(i32 %56)
  %58 = load i64, i64* @SPA_MAXBLOCKSHIFT, align 8
  %59 = shl i64 %57, %58
  %60 = call i32 @ztest_io(i32* %49, i32 %55, i64 %59)
  br label %43

61:                                               ; preds = %43
  %62 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %63 = load i32, i32* %7, align 4
  %64 = call i32 @umem_free(%struct.TYPE_6__* %62, i32 %63)
  br label %65

65:                                               ; preds = %61, %41
  ret void
}

declare dso_local %struct.TYPE_6__* @umem_alloc(i32, i32) #1

declare dso_local i32 @ztest_od_init(%struct.TYPE_6__*, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i64 @ztest_object_init(i32*, %struct.TYPE_6__*, i32, i32) #1

declare dso_local i64 @ztest_random(i32) #1

declare dso_local i32 @ztest_io(i32*, i32, i64) #1

declare dso_local i32 @umem_free(%struct.TYPE_6__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
