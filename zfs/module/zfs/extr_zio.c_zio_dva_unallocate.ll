; ModuleID = '/home/carl/AnghaBench/zfs/module/zfs/extr_zio.c_zio_dva_unallocate.c'
source_filename = "/home/carl/AnghaBench/zfs/module/zfs/extr_zio.c_zio_dva_unallocate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i64, i32, i32* }
%struct.TYPE_12__ = type { %struct.TYPE_10__*, %struct.TYPE_12__** }
%struct.TYPE_10__ = type { %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i64 }

@B_TRUE = common dso_local global i32 0, align 4
@SPA_GBH_NBLKPTRS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_11__*, %struct.TYPE_12__*, %struct.TYPE_13__*)* @zio_dva_unallocate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @zio_dva_unallocate(%struct.TYPE_11__* %0, %struct.TYPE_12__* %1, %struct.TYPE_13__* %2) #0 {
  %4 = alloca %struct.TYPE_11__*, align 8
  %5 = alloca %struct.TYPE_12__*, align 8
  %6 = alloca %struct.TYPE_13__*, align 8
  %7 = alloca i32, align 4
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %4, align 8
  store %struct.TYPE_12__* %1, %struct.TYPE_12__** %5, align 8
  store %struct.TYPE_13__* %2, %struct.TYPE_13__** %6, align 8
  %8 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %9 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %12 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = icmp eq i64 %10, %13
  br i1 %14, label %19, label %15

15:                                               ; preds = %3
  %16 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %17 = call i64 @BP_IS_HOLE(%struct.TYPE_13__* %16)
  %18 = icmp ne i64 %17, 0
  br label %19

19:                                               ; preds = %15, %3
  %20 = phi i1 [ true, %3 ], [ %18, %15 ]
  %21 = zext i1 %20 to i32
  %22 = call i32 @ASSERT(i32 %21)
  %23 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %24 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %23, i32 0, i32 2
  %25 = load i32*, i32** %24, align 8
  %26 = icmp eq i32* %25, null
  %27 = zext i1 %26 to i32
  %28 = call i32 @ASSERT(i32 %27)
  %29 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %30 = call i64 @BP_IS_HOLE(%struct.TYPE_13__* %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %42, label %32

32:                                               ; preds = %19
  %33 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %34 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 8
  %36 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %37 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %38 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load i32, i32* @B_TRUE, align 4
  %41 = call i32 @metaslab_free(i32 %35, %struct.TYPE_13__* %36, i64 %39, i32 %40)
  br label %42

42:                                               ; preds = %32, %19
  %43 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %44 = icmp ne %struct.TYPE_12__* %43, null
  br i1 %44, label %45, label %71

45:                                               ; preds = %42
  store i32 0, i32* %7, align 4
  br label %46

46:                                               ; preds = %67, %45
  %47 = load i32, i32* %7, align 4
  %48 = load i32, i32* @SPA_GBH_NBLKPTRS, align 4
  %49 = icmp slt i32 %47, %48
  br i1 %49, label %50, label %70

50:                                               ; preds = %46
  %51 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %52 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %53 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %52, i32 0, i32 1
  %54 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %53, align 8
  %55 = load i32, i32* %7, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds %struct.TYPE_12__*, %struct.TYPE_12__** %54, i64 %56
  %58 = load %struct.TYPE_12__*, %struct.TYPE_12__** %57, align 8
  %59 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %60 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %59, i32 0, i32 0
  %61 = load %struct.TYPE_10__*, %struct.TYPE_10__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %61, i32 0, i32 0
  %63 = load %struct.TYPE_13__*, %struct.TYPE_13__** %62, align 8
  %64 = load i32, i32* %7, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %63, i64 %65
  call void @zio_dva_unallocate(%struct.TYPE_11__* %51, %struct.TYPE_12__* %58, %struct.TYPE_13__* %66)
  br label %67

67:                                               ; preds = %50
  %68 = load i32, i32* %7, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %7, align 4
  br label %46

70:                                               ; preds = %46
  br label %71

71:                                               ; preds = %70, %42
  ret void
}

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i64 @BP_IS_HOLE(%struct.TYPE_13__*) #1

declare dso_local i32 @metaslab_free(i32, %struct.TYPE_13__*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
