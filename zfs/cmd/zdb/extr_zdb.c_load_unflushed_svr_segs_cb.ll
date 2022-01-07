; ModuleID = '/home/carl/AnghaBench/zfs/cmd/zdb/extr_zdb.c_load_unflushed_svr_segs_cb.c'
source_filename = "/home/carl/AnghaBench/zfs/cmd/zdb/extr_zdb.c_load_unflushed_svr_segs_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64, i64, i64, i64 }
%struct.TYPE_8__ = type { i64, i32 }
%struct.TYPE_6__ = type { i64, i32*, i32** }

@SM_ALLOC = common dso_local global i64 0, align 8
@SM_FREE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.TYPE_7__*, i64, i8*)* @load_unflushed_svr_segs_cb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @load_unflushed_svr_segs_cb(i32* %0, %struct.TYPE_7__* %1, i64 %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_7__*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.TYPE_8__*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.TYPE_6__*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  store i32* %0, i32** %6, align 8
  store %struct.TYPE_7__* %1, %struct.TYPE_7__** %7, align 8
  store i64 %2, i64* %8, align 8
  store i8* %3, i8** %9, align 8
  %16 = load i8*, i8** %9, align 8
  %17 = bitcast i8* %16 to %struct.TYPE_8__*
  store %struct.TYPE_8__* %17, %struct.TYPE_8__** %10, align 8
  %18 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %19 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  store i64 %20, i64* %11, align 8
  %21 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %22 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  store i64 %23, i64* %12, align 8
  %24 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %25 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %24, i32 0, i32 2
  %26 = load i64, i64* %25, align 8
  %27 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %28 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %26, %29
  br i1 %30, label %31, label %32

31:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %102

32:                                               ; preds = %4
  %33 = load i32*, i32** %6, align 8
  %34 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %35 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %34, i32 0, i32 2
  %36 = load i64, i64* %35, align 8
  %37 = call %struct.TYPE_6__* @vdev_lookup_top(i32* %33, i64 %36)
  store %struct.TYPE_6__* %37, %struct.TYPE_6__** %13, align 8
  %38 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 2
  %40 = load i32**, i32*** %39, align 8
  %41 = load i64, i64* %11, align 8
  %42 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = lshr i64 %41, %44
  %46 = getelementptr inbounds i32*, i32** %40, i64 %45
  %47 = load i32*, i32** %46, align 8
  store i32* %47, i32** %14, align 8
  %48 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %49 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %48, i32 0, i32 3
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* @SM_ALLOC, align 8
  %52 = icmp eq i64 %50, %51
  br i1 %52, label %59, label %53

53:                                               ; preds = %32
  %54 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %55 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %54, i32 0, i32 3
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* @SM_FREE, align 8
  %58 = icmp eq i64 %56, %57
  br label %59

59:                                               ; preds = %53, %32
  %60 = phi i1 [ true, %32 ], [ %58, %53 ]
  %61 = zext i1 %60 to i32
  %62 = call i32 @ASSERT(i32 %61)
  %63 = load i64, i64* %8, align 8
  %64 = load i32*, i32** %14, align 8
  %65 = call i64 @metaslab_unflushed_txg(i32* %64)
  %66 = icmp ult i64 %63, %65
  br i1 %66, label %67, label %68

67:                                               ; preds = %59
  store i32 0, i32* %5, align 4
  br label %102

68:                                               ; preds = %59
  %69 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %70 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %69, i32 0, i32 1
  %71 = load i32*, i32** %70, align 8
  store i32* %71, i32** %15, align 8
  %72 = load i32*, i32** %15, align 8
  %73 = icmp ne i32* %72, null
  %74 = zext i1 %73 to i32
  %75 = call i32 @ASSERT(i32 %74)
  %76 = load i64, i64* %11, align 8
  %77 = load i32*, i32** %15, align 8
  %78 = call i64 @vdev_indirect_mapping_max_offset(i32* %77)
  %79 = icmp uge i64 %76, %78
  br i1 %79, label %80, label %81

80:                                               ; preds = %68
  store i32 0, i32* %5, align 4
  br label %102

81:                                               ; preds = %68
  %82 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %83 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %82, i32 0, i32 3
  %84 = load i64, i64* %83, align 8
  %85 = load i64, i64* @SM_ALLOC, align 8
  %86 = icmp eq i64 %84, %85
  br i1 %86, label %87, label %94

87:                                               ; preds = %81
  %88 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %89 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 8
  %91 = load i64, i64* %11, align 8
  %92 = load i64, i64* %12, align 8
  %93 = call i32 @range_tree_add(i32 %90, i64 %91, i64 %92)
  br label %101

94:                                               ; preds = %81
  %95 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %96 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 8
  %98 = load i64, i64* %11, align 8
  %99 = load i64, i64* %12, align 8
  %100 = call i32 @range_tree_remove(i32 %97, i64 %98, i64 %99)
  br label %101

101:                                              ; preds = %94, %87
  store i32 0, i32* %5, align 4
  br label %102

102:                                              ; preds = %101, %80, %67, %31
  %103 = load i32, i32* %5, align 4
  ret i32 %103
}

declare dso_local %struct.TYPE_6__* @vdev_lookup_top(i32*, i64) #1

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i64 @metaslab_unflushed_txg(i32*) #1

declare dso_local i64 @vdev_indirect_mapping_max_offset(i32*) #1

declare dso_local i32 @range_tree_add(i32, i64, i64) #1

declare dso_local i32 @range_tree_remove(i32, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
