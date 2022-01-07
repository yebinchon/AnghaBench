; ModuleID = '/home/carl/AnghaBench/zfs/module/zfs/extr_dsl_scan.c_dsl_scan_io_queue_destroy.c'
source_filename = "/home/carl/AnghaBench/zfs/module/zfs/extr_dsl_scan.c_dsl_scan_io_queue_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i32, i32, i32, %struct.TYPE_7__*, %struct.TYPE_8__* }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_8__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dsl_scan_io_queue_destroy(%struct.TYPE_9__* %0) #0 {
  %2 = alloca %struct.TYPE_9__*, align 8
  %3 = alloca %struct.TYPE_8__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %2, align 8
  %7 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %8 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %7, i32 0, i32 5
  %9 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  store %struct.TYPE_8__* %9, %struct.TYPE_8__** %3, align 8
  store i8* null, i8** %5, align 8
  store i32 0, i32* %6, align 4
  %10 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %11 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %10, i32 0, i32 4
  %12 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %12, i32 0, i32 0
  %14 = call i32 @MUTEX_HELD(i32* %13)
  %15 = call i32 @ASSERT(i32 %14)
  br label %16

16:                                               ; preds = %21, %1
  %17 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %18 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %17, i32 0, i32 1
  %19 = call i32* @avl_destroy_nodes(i32* %18, i8** %5)
  store i32* %19, i32** %4, align 8
  %20 = icmp ne i32* %19, null
  br i1 %20, label %21, label %47

21:                                               ; preds = %16
  %22 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %23 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 8
  %25 = load i32*, i32** %4, align 8
  %26 = call i32 @SIO_GET_OFFSET(i32* %25)
  %27 = load i32*, i32** %4, align 8
  %28 = call i64 @SIO_GET_ASIZE(i32* %27)
  %29 = call i32 @range_tree_contains(i32 %24, i32 %26, i64 %28)
  %30 = call i32 @ASSERT(i32 %29)
  %31 = load i32*, i32** %4, align 8
  %32 = call i64 @SIO_GET_ASIZE(i32* %31)
  %33 = load i32, i32* %6, align 4
  %34 = sext i32 %33 to i64
  %35 = add nsw i64 %34, %32
  %36 = trunc i64 %35 to i32
  store i32 %36, i32* %6, align 4
  %37 = load i32*, i32** %4, align 8
  %38 = call i64 @SIO_GET_MUSED(i32* %37)
  %39 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %40 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %39, i32 0, i32 3
  %41 = load i32, i32* %40, align 4
  %42 = sext i32 %41 to i64
  %43 = sub nsw i64 %42, %38
  %44 = trunc i64 %43 to i32
  store i32 %44, i32* %40, align 4
  %45 = load i32*, i32** %4, align 8
  %46 = call i32 @sio_free(i32* %45)
  br label %16

47:                                               ; preds = %16
  %48 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %49 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %48, i32 0, i32 3
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @ASSERT0(i32 %50)
  %52 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %53 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %52, i32 0, i32 0
  %54 = load i32, i32* %6, align 4
  %55 = sub nsw i32 0, %54
  %56 = call i32 @atomic_add_64(i32* %53, i32 %55)
  %57 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %58 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 8
  %60 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %61 = call i32 @range_tree_vacate(i32 %59, i32* null, %struct.TYPE_9__* %60)
  %62 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %63 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %62, i32 0, i32 2
  %64 = load i32, i32* %63, align 8
  %65 = call i32 @range_tree_destroy(i32 %64)
  %66 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %67 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %66, i32 0, i32 1
  %68 = call i32 @avl_destroy(i32* %67)
  %69 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %70 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %69, i32 0, i32 0
  %71 = call i32 @cv_destroy(i32* %70)
  %72 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %73 = call i32 @kmem_free(%struct.TYPE_9__* %72, i32 32)
  ret void
}

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @MUTEX_HELD(i32*) #1

declare dso_local i32* @avl_destroy_nodes(i32*, i8**) #1

declare dso_local i32 @range_tree_contains(i32, i32, i64) #1

declare dso_local i32 @SIO_GET_OFFSET(i32*) #1

declare dso_local i64 @SIO_GET_ASIZE(i32*) #1

declare dso_local i64 @SIO_GET_MUSED(i32*) #1

declare dso_local i32 @sio_free(i32*) #1

declare dso_local i32 @ASSERT0(i32) #1

declare dso_local i32 @atomic_add_64(i32*, i32) #1

declare dso_local i32 @range_tree_vacate(i32, i32*, %struct.TYPE_9__*) #1

declare dso_local i32 @range_tree_destroy(i32) #1

declare dso_local i32 @avl_destroy(i32*) #1

declare dso_local i32 @cv_destroy(i32*) #1

declare dso_local i32 @kmem_free(%struct.TYPE_9__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
