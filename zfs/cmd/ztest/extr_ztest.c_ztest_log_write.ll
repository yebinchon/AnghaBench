; ModuleID = '/home/carl/AnghaBench/zfs/cmd/ztest/extr_ztest.c_ztest_log_write.c'
source_filename = "/home/carl/AnghaBench/zfs/cmd/ztest/extr_ztest.c_ztest_log_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, i32 }
%struct.TYPE_11__ = type { i64, i32, i32, i32 }
%struct.TYPE_12__ = type { i32, i32, i64, %struct.TYPE_10__* }

@WR_NUM_STATES = common dso_local global i32 0, align 4
@WR_INDIRECT = common dso_local global i64 0, align 8
@TX_WRITE = common dso_local global i32 0, align 4
@WR_COPIED = common dso_local global i64 0, align 8
@DMU_READ_NO_PREFETCH = common dso_local global i32 0, align 4
@WR_NEED_COPY = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_10__*, i32*, %struct.TYPE_11__*)* @ztest_log_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ztest_log_write(%struct.TYPE_10__* %0, i32* %1, %struct.TYPE_11__* %2) #0 {
  %4 = alloca %struct.TYPE_10__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_11__*, align 8
  %7 = alloca %struct.TYPE_12__*, align 8
  %8 = alloca i64, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %4, align 8
  store i32* %1, i32** %5, align 8
  store %struct.TYPE_11__* %2, %struct.TYPE_11__** %6, align 8
  %9 = load i32, i32* @WR_NUM_STATES, align 4
  %10 = call i64 @ztest_random(i32 %9)
  store i64 %10, i64* %8, align 8
  %11 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %12 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load i32*, i32** %5, align 8
  %15 = call i64 @zil_replaying(i32 %13, i32* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %3
  br label %99

18:                                               ; preds = %3
  %19 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %20 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %23 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i64 @zil_max_log_data(i32 %24)
  %26 = icmp sgt i64 %21, %25
  br i1 %26, label %27, label %29

27:                                               ; preds = %18
  %28 = load i64, i64* @WR_INDIRECT, align 8
  store i64 %28, i64* %8, align 8
  br label %29

29:                                               ; preds = %27, %18
  %30 = load i32, i32* @TX_WRITE, align 4
  %31 = load i64, i64* %8, align 8
  %32 = load i64, i64* @WR_COPIED, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %34, label %38

34:                                               ; preds = %29
  %35 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %36 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  br label %39

38:                                               ; preds = %29
  br label %39

39:                                               ; preds = %38, %34
  %40 = phi i64 [ %37, %34 ], [ 0, %38 ]
  %41 = add i64 24, %40
  %42 = trunc i64 %41 to i32
  %43 = call %struct.TYPE_12__* @zil_itx_create(i32 %30, i32 %42)
  store %struct.TYPE_12__* %43, %struct.TYPE_12__** %7, align 8
  %44 = load i64, i64* %8, align 8
  %45 = load i64, i64* @WR_COPIED, align 8
  %46 = icmp eq i64 %44, %45
  br i1 %46, label %47, label %74

47:                                               ; preds = %39
  %48 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %49 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %52 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %51, i32 0, i32 3
  %53 = load i32, i32* %52, align 8
  %54 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %55 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %58 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = trunc i64 %59 to i32
  %61 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %62 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %61, i32 0, i32 1
  %63 = bitcast i32* %62 to %struct.TYPE_11__*
  %64 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %63, i64 1
  %65 = load i32, i32* @DMU_READ_NO_PREFETCH, align 4
  %66 = call i64 @dmu_read(i32 %50, i32 %53, i32 %56, i32 %60, %struct.TYPE_11__* %64, i32 %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %74

68:                                               ; preds = %47
  %69 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %70 = call i32 @zil_itx_destroy(%struct.TYPE_12__* %69)
  %71 = load i32, i32* @TX_WRITE, align 4
  %72 = call %struct.TYPE_12__* @zil_itx_create(i32 %71, i32 24)
  store %struct.TYPE_12__* %72, %struct.TYPE_12__** %7, align 8
  %73 = load i64, i64* @WR_NEED_COPY, align 8
  store i64 %73, i64* %8, align 8
  br label %74

74:                                               ; preds = %68, %47, %39
  %75 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %76 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %77 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %76, i32 0, i32 3
  store %struct.TYPE_10__* %75, %struct.TYPE_10__** %77, align 8
  %78 = load i64, i64* %8, align 8
  %79 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %80 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %79, i32 0, i32 2
  store i64 %78, i64* %80, align 8
  %81 = call i64 @ztest_random(i32 8)
  %82 = icmp eq i64 %81, 0
  %83 = zext i1 %82 to i32
  %84 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %85 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %84, i32 0, i32 0
  store i32 %83, i32* %85, align 8
  %86 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %87 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %86, i32 0, i32 1
  %88 = getelementptr inbounds i32, i32* %87, i64 1
  %89 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %90 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %89, i32 0, i32 1
  %91 = getelementptr inbounds i32, i32* %90, i64 1
  %92 = call i32 @bcopy(i32* %88, i32* %91, i32 20)
  %93 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %94 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %97 = load i32*, i32** %5, align 8
  %98 = call i32 @zil_itx_assign(i32 %95, %struct.TYPE_12__* %96, i32* %97)
  br label %99

99:                                               ; preds = %74, %17
  ret void
}

declare dso_local i64 @ztest_random(i32) #1

declare dso_local i64 @zil_replaying(i32, i32*) #1

declare dso_local i64 @zil_max_log_data(i32) #1

declare dso_local %struct.TYPE_12__* @zil_itx_create(i32, i32) #1

declare dso_local i64 @dmu_read(i32, i32, i32, i32, %struct.TYPE_11__*, i32) #1

declare dso_local i32 @zil_itx_destroy(%struct.TYPE_12__*) #1

declare dso_local i32 @bcopy(i32*, i32*, i32) #1

declare dso_local i32 @zil_itx_assign(i32, %struct.TYPE_12__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
