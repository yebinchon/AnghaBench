; ModuleID = '/home/carl/AnghaBench/zfs/module/zfs/extr_arc.c_arc_hdr_free_on_write.c'
source_filename = "/home/carl/AnghaBench/zfs/module/zfs/extr_arc.c_arc_hdr_free_on_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32, i32* }
%struct.TYPE_15__ = type { %struct.TYPE_13__, %struct.TYPE_12__ }
%struct.TYPE_13__ = type { i32, i32, i32, %struct.TYPE_14__* }
%struct.TYPE_12__ = type { i32 }

@arc_anon = common dso_local global %struct.TYPE_14__* null, align 8
@arc_l2c_only = common dso_local global %struct.TYPE_14__* null, align 8
@ARC_BUFC_METADATA = common dso_local global i64 0, align 8
@ARC_SPACE_META = common dso_local global i32 0, align 4
@ARC_BUFC_DATA = common dso_local global i64 0, align 8
@ARC_SPACE_DATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_15__*, i64)* @arc_hdr_free_on_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @arc_hdr_free_on_write(%struct.TYPE_15__* %0, i64 %1) #0 {
  %3 = alloca %struct.TYPE_15__*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.TYPE_14__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %3, align 8
  store i64 %1, i64* %4, align 8
  %8 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %9 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %9, i32 0, i32 3
  %11 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  store %struct.TYPE_14__* %11, %struct.TYPE_14__** %5, align 8
  %12 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %13 = call i64 @arc_buf_type(%struct.TYPE_15__* %12)
  store i64 %13, i64* %6, align 8
  %14 = load i64, i64* %4, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %2
  %17 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %18 = call i32 @HDR_GET_PSIZE(%struct.TYPE_15__* %17)
  br label %22

19:                                               ; preds = %2
  %20 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %21 = call i32 @arc_hdr_size(%struct.TYPE_15__* %20)
  br label %22

22:                                               ; preds = %19, %16
  %23 = phi i32 [ %18, %16 ], [ %21, %19 ]
  store i32 %23, i32* %7, align 4
  %24 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %25 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %25, i32 0, i32 2
  %27 = call i64 @multilist_link_active(i32* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %54

29:                                               ; preds = %22
  %30 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %31 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %31, i32 0, i32 1
  %33 = call i32 @zfs_refcount_is_zero(i32* %32)
  %34 = call i32 @ASSERT(i32 %33)
  %35 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %36 = load %struct.TYPE_14__*, %struct.TYPE_14__** @arc_anon, align 8
  %37 = icmp ne %struct.TYPE_14__* %35, %36
  br i1 %37, label %38, label %42

38:                                               ; preds = %29
  %39 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %40 = load %struct.TYPE_14__*, %struct.TYPE_14__** @arc_l2c_only, align 8
  %41 = icmp ne %struct.TYPE_14__* %39, %40
  br label %42

42:                                               ; preds = %38, %29
  %43 = phi i1 [ false, %29 ], [ %41, %38 ]
  %44 = zext i1 %43 to i32
  %45 = call i32 @ASSERT(i32 %44)
  %46 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %47 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %46, i32 0, i32 1
  %48 = load i32*, i32** %47, align 8
  %49 = load i64, i64* %6, align 8
  %50 = getelementptr inbounds i32, i32* %48, i64 %49
  %51 = load i32, i32* %7, align 4
  %52 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %53 = call i32 @zfs_refcount_remove_many(i32* %50, i32 %51, %struct.TYPE_15__* %52)
  br label %54

54:                                               ; preds = %42, %22
  %55 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %56 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %55, i32 0, i32 0
  %57 = load i32, i32* %7, align 4
  %58 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %59 = call i32 @zfs_refcount_remove_many(i32* %56, i32 %57, %struct.TYPE_15__* %58)
  %60 = load i64, i64* %6, align 8
  %61 = load i64, i64* @ARC_BUFC_METADATA, align 8
  %62 = icmp eq i64 %60, %61
  br i1 %62, label %63, label %67

63:                                               ; preds = %54
  %64 = load i32, i32* %7, align 4
  %65 = load i32, i32* @ARC_SPACE_META, align 4
  %66 = call i32 @arc_space_return(i32 %64, i32 %65)
  br label %76

67:                                               ; preds = %54
  %68 = load i64, i64* %6, align 8
  %69 = load i64, i64* @ARC_BUFC_DATA, align 8
  %70 = icmp eq i64 %68, %69
  %71 = zext i1 %70 to i32
  %72 = call i32 @ASSERT(i32 %71)
  %73 = load i32, i32* %7, align 4
  %74 = load i32, i32* @ARC_SPACE_DATA, align 4
  %75 = call i32 @arc_space_return(i32 %73, i32 %74)
  br label %76

76:                                               ; preds = %67, %63
  %77 = load i64, i64* %4, align 8
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %87

79:                                               ; preds = %76
  %80 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %81 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %80, i32 0, i32 1
  %82 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = load i32, i32* %7, align 4
  %85 = load i64, i64* %6, align 8
  %86 = call i32 @l2arc_free_abd_on_write(i32 %83, i32 %84, i64 %85)
  br label %95

87:                                               ; preds = %76
  %88 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %89 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = load i32, i32* %7, align 4
  %93 = load i64, i64* %6, align 8
  %94 = call i32 @l2arc_free_abd_on_write(i32 %91, i32 %92, i64 %93)
  br label %95

95:                                               ; preds = %87, %79
  ret void
}

declare dso_local i64 @arc_buf_type(%struct.TYPE_15__*) #1

declare dso_local i32 @HDR_GET_PSIZE(%struct.TYPE_15__*) #1

declare dso_local i32 @arc_hdr_size(%struct.TYPE_15__*) #1

declare dso_local i64 @multilist_link_active(i32*) #1

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @zfs_refcount_is_zero(i32*) #1

declare dso_local i32 @zfs_refcount_remove_many(i32*, i32, %struct.TYPE_15__*) #1

declare dso_local i32 @arc_space_return(i32, i32) #1

declare dso_local i32 @l2arc_free_abd_on_write(i32, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
