; ModuleID = '/home/carl/AnghaBench/zfs/module/zfs/extr_dmu_traverse.c_traverse_prefetcher.c'
source_filename = "/home/carl/AnghaBench/zfs/module/zfs/extr_dmu_traverse.c_traverse_prefetcher.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64 }
%struct.TYPE_7__ = type { i64, i32, i32, i32, i64 }

@ZIO_FLAG_CANFAIL = common dso_local global i32 0, align 4
@ZIO_FLAG_SPECULATIVE = common dso_local global i32 0, align 4
@ARC_FLAG_NOWAIT = common dso_local global i32 0, align 4
@ARC_FLAG_PREFETCH = common dso_local global i32 0, align 4
@ARC_FLAG_PRESCIENT_PREFETCH = common dso_local global i32 0, align 4
@ZB_DNODE_LEVEL = common dso_local global i64 0, align 8
@EINTR = common dso_local global i32 0, align 4
@zfs_pd_bytes_max = common dso_local global i64 0, align 8
@TRAVERSE_NO_DECRYPT = common dso_local global i32 0, align 4
@ZIO_FLAG_RAW = common dso_local global i32 0, align 4
@ZIO_PRIORITY_ASYNC_READ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, i32*, %struct.TYPE_6__*, i32*, i8*)* @traverse_prefetcher to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @traverse_prefetcher(i32* %0, i32* %1, i32* %2, %struct.TYPE_6__* %3, i32* %4, i8* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.TYPE_6__*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca %struct.TYPE_7__*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store i32* %0, i32** %8, align 8
  store i32* %1, i32** %9, align 8
  store i32* %2, i32** %10, align 8
  store %struct.TYPE_6__* %3, %struct.TYPE_6__** %11, align 8
  store i32* %4, i32** %12, align 8
  store i8* %5, i8** %13, align 8
  %17 = load i8*, i8** %13, align 8
  %18 = bitcast i8* %17 to %struct.TYPE_7__*
  store %struct.TYPE_7__* %18, %struct.TYPE_7__** %14, align 8
  %19 = load i32, i32* @ZIO_FLAG_CANFAIL, align 4
  %20 = load i32, i32* @ZIO_FLAG_SPECULATIVE, align 4
  %21 = or i32 %19, %20
  store i32 %21, i32* %15, align 4
  %22 = load i32, i32* @ARC_FLAG_NOWAIT, align 4
  %23 = load i32, i32* @ARC_FLAG_PREFETCH, align 4
  %24 = or i32 %22, %23
  %25 = load i32, i32* @ARC_FLAG_PRESCIENT_PREFETCH, align 4
  %26 = or i32 %24, %25
  store i32 %26, i32* %16, align 4
  %27 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = icmp sge i64 %29, 0
  %31 = zext i1 %30 to i32
  %32 = call i32 @ASSERT(i32 %31)
  %33 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @ZB_DNODE_LEVEL, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %38, label %39

38:                                               ; preds = %6
  store i32 0, i32* %7, align 4
  br label %110

39:                                               ; preds = %6
  %40 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %41 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %40, i32 0, i32 4
  %42 = load i64, i64* %41, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %39
  %45 = load i32, i32* @EINTR, align 4
  %46 = call i32 @SET_ERROR(i32 %45)
  store i32 %46, i32* %7, align 4
  br label %110

47:                                               ; preds = %39
  %48 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %49 = load i32*, i32** %10, align 8
  %50 = call i32 @prefetch_needed(%struct.TYPE_7__* %48, i32* %49)
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %53, label %52

52:                                               ; preds = %47
  store i32 0, i32* %7, align 4
  br label %110

53:                                               ; preds = %47
  %54 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %55 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %54, i32 0, i32 2
  %56 = call i32 @mutex_enter(i32* %55)
  br label %57

57:                                               ; preds = %70, %53
  %58 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %59 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %58, i32 0, i32 4
  %60 = load i64, i64* %59, align 8
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %68, label %62

62:                                               ; preds = %57
  %63 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %64 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = load i64, i64* @zfs_pd_bytes_max, align 8
  %67 = icmp sge i64 %65, %66
  br label %68

68:                                               ; preds = %62, %57
  %69 = phi i1 [ false, %57 ], [ %67, %62 ]
  br i1 %69, label %70, label %76

70:                                               ; preds = %68
  %71 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %72 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %71, i32 0, i32 3
  %73 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %74 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %73, i32 0, i32 2
  %75 = call i32 @cv_wait_sig(i32* %72, i32* %74)
  br label %57

76:                                               ; preds = %68
  %77 = load i32*, i32** %10, align 8
  %78 = call i64 @BP_GET_LSIZE(i32* %77)
  %79 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %80 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = add nsw i64 %81, %78
  store i64 %82, i64* %80, align 8
  %83 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %84 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %83, i32 0, i32 3
  %85 = call i32 @cv_broadcast(i32* %84)
  %86 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %87 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %86, i32 0, i32 2
  %88 = call i32 @mutex_exit(i32* %87)
  %89 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %90 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 8
  %92 = load i32, i32* @TRAVERSE_NO_DECRYPT, align 4
  %93 = and i32 %91, %92
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %103

95:                                               ; preds = %76
  %96 = load i32*, i32** %10, align 8
  %97 = call i64 @BP_IS_PROTECTED(i32* %96)
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %103

99:                                               ; preds = %95
  %100 = load i32, i32* @ZIO_FLAG_RAW, align 4
  %101 = load i32, i32* %15, align 4
  %102 = or i32 %101, %100
  store i32 %102, i32* %15, align 4
  br label %103

103:                                              ; preds = %99, %95, %76
  %104 = load i32*, i32** %8, align 8
  %105 = load i32*, i32** %10, align 8
  %106 = load i32, i32* @ZIO_PRIORITY_ASYNC_READ, align 4
  %107 = load i32, i32* %15, align 4
  %108 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %109 = call i32 @arc_read(i32* null, i32* %104, i32* %105, i32* null, i32* null, i32 %106, i32 %107, i32* %16, %struct.TYPE_6__* %108)
  store i32 0, i32* %7, align 4
  br label %110

110:                                              ; preds = %103, %52, %44, %38
  %111 = load i32, i32* %7, align 4
  ret i32 %111
}

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @SET_ERROR(i32) #1

declare dso_local i32 @prefetch_needed(%struct.TYPE_7__*, i32*) #1

declare dso_local i32 @mutex_enter(i32*) #1

declare dso_local i32 @cv_wait_sig(i32*, i32*) #1

declare dso_local i64 @BP_GET_LSIZE(i32*) #1

declare dso_local i32 @cv_broadcast(i32*) #1

declare dso_local i32 @mutex_exit(i32*) #1

declare dso_local i64 @BP_IS_PROTECTED(i32*) #1

declare dso_local i32 @arc_read(i32*, i32*, i32*, i32*, i32*, i32, i32, i32*, %struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
