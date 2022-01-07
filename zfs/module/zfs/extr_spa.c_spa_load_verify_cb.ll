; ModuleID = '/home/carl/AnghaBench/zfs/module/zfs/extr_spa.c_spa_load_verify_cb.c'
source_filename = "/home/carl/AnghaBench/zfs/module/zfs/extr_spa.c_spa_load_verify_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i64, i32, i32 }
%struct.TYPE_10__ = type { i64 }
%struct.TYPE_9__ = type { i32 }

@ZB_DNODE_LEVEL = common dso_local global i64 0, align 8
@spa_load_verify_metadata = common dso_local global i32 0, align 4
@spa_load_verify_data = common dso_local global i32 0, align 4
@spa_load_verify_shift = common dso_local global i64 0, align 8
@B_FALSE = common dso_local global i32 0, align 4
@spa_load_verify_done = common dso_local global i32 0, align 4
@ZIO_PRIORITY_SCRUB = common dso_local global i32 0, align 4
@ZIO_FLAG_SPECULATIVE = common dso_local global i32 0, align 4
@ZIO_FLAG_CANFAIL = common dso_local global i32 0, align 4
@ZIO_FLAG_SCRUB = common dso_local global i32 0, align 4
@ZIO_FLAG_RAW = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_11__*, i32*, i32*, %struct.TYPE_10__*, i32*, i8*)* @spa_load_verify_cb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @spa_load_verify_cb(%struct.TYPE_11__* %0, i32* %1, i32* %2, %struct.TYPE_10__* %3, i32* %4, i8* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_11__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.TYPE_10__*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  %15 = alloca %struct.TYPE_9__*, align 8
  %16 = alloca i64, align 8
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %8, align 8
  store i32* %1, i32** %9, align 8
  store i32* %2, i32** %10, align 8
  store %struct.TYPE_10__* %3, %struct.TYPE_10__** %11, align 8
  store i32* %4, i32** %12, align 8
  store i8* %5, i8** %13, align 8
  %17 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %18 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @ZB_DNODE_LEVEL, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %34, label %22

22:                                               ; preds = %6
  %23 = load i32*, i32** %10, align 8
  %24 = call i64 @BP_IS_HOLE(i32* %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %34, label %26

26:                                               ; preds = %22
  %27 = load i32*, i32** %10, align 8
  %28 = call i64 @BP_IS_EMBEDDED(i32* %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %34, label %30

30:                                               ; preds = %26
  %31 = load i32*, i32** %10, align 8
  %32 = call i64 @BP_IS_REDACTED(i32* %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %30, %26, %22, %6
  store i32 0, i32* %7, align 4
  br label %101

35:                                               ; preds = %30
  %36 = load i32, i32* @spa_load_verify_metadata, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %39, label %38

38:                                               ; preds = %35
  store i32 0, i32* %7, align 4
  br label %101

39:                                               ; preds = %35
  %40 = load i32*, i32** %10, align 8
  %41 = call i32 @BP_IS_METADATA(i32* %40)
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %47, label %43

43:                                               ; preds = %39
  %44 = load i32, i32* @spa_load_verify_data, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %47, label %46

46:                                               ; preds = %43
  store i32 0, i32* %7, align 4
  br label %101

47:                                               ; preds = %43, %39
  %48 = call i64 (...) @arc_target_bytes()
  %49 = load i64, i64* @spa_load_verify_shift, align 8
  %50 = ashr i64 %48, %49
  store i64 %50, i64* %14, align 8
  %51 = load i8*, i8** %13, align 8
  %52 = bitcast i8* %51 to %struct.TYPE_9__*
  store %struct.TYPE_9__* %52, %struct.TYPE_9__** %15, align 8
  %53 = load i32*, i32** %10, align 8
  %54 = call i64 @BP_GET_PSIZE(i32* %53)
  store i64 %54, i64* %16, align 8
  %55 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %56 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %55, i32 0, i32 1
  %57 = call i32 @mutex_enter(i32* %56)
  br label %58

58:                                               ; preds = %64, %47
  %59 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %60 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = load i64, i64* %14, align 8
  %63 = icmp sge i64 %61, %62
  br i1 %63, label %64, label %70

64:                                               ; preds = %58
  %65 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %66 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %65, i32 0, i32 2
  %67 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %68 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %67, i32 0, i32 1
  %69 = call i32 @cv_wait(i32* %66, i32* %68)
  br label %58

70:                                               ; preds = %58
  %71 = load i64, i64* %16, align 8
  %72 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %73 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = add i64 %74, %71
  store i64 %75, i64* %73, align 8
  %76 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %77 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %76, i32 0, i32 1
  %78 = call i32 @mutex_exit(i32* %77)
  %79 = load %struct.TYPE_9__*, %struct.TYPE_9__** %15, align 8
  %80 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %81 = load i32*, i32** %10, align 8
  %82 = load i64, i64* %16, align 8
  %83 = load i32, i32* @B_FALSE, align 4
  %84 = call i32 @abd_alloc_for_io(i64 %82, i32 %83)
  %85 = load i64, i64* %16, align 8
  %86 = load i32, i32* @spa_load_verify_done, align 4
  %87 = load %struct.TYPE_9__*, %struct.TYPE_9__** %15, align 8
  %88 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = load i32, i32* @ZIO_PRIORITY_SCRUB, align 4
  %91 = load i32, i32* @ZIO_FLAG_SPECULATIVE, align 4
  %92 = load i32, i32* @ZIO_FLAG_CANFAIL, align 4
  %93 = or i32 %91, %92
  %94 = load i32, i32* @ZIO_FLAG_SCRUB, align 4
  %95 = or i32 %93, %94
  %96 = load i32, i32* @ZIO_FLAG_RAW, align 4
  %97 = or i32 %95, %96
  %98 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %99 = call i32 @zio_read(%struct.TYPE_9__* %79, %struct.TYPE_11__* %80, i32* %81, i32 %84, i64 %85, i32 %86, i32 %89, i32 %90, i32 %97, %struct.TYPE_10__* %98)
  %100 = call i32 @zio_nowait(i32 %99)
  store i32 0, i32* %7, align 4
  br label %101

101:                                              ; preds = %70, %46, %38, %34
  %102 = load i32, i32* %7, align 4
  ret i32 %102
}

declare dso_local i64 @BP_IS_HOLE(i32*) #1

declare dso_local i64 @BP_IS_EMBEDDED(i32*) #1

declare dso_local i64 @BP_IS_REDACTED(i32*) #1

declare dso_local i32 @BP_IS_METADATA(i32*) #1

declare dso_local i64 @arc_target_bytes(...) #1

declare dso_local i64 @BP_GET_PSIZE(i32*) #1

declare dso_local i32 @mutex_enter(i32*) #1

declare dso_local i32 @cv_wait(i32*, i32*) #1

declare dso_local i32 @mutex_exit(i32*) #1

declare dso_local i32 @zio_nowait(i32) #1

declare dso_local i32 @zio_read(%struct.TYPE_9__*, %struct.TYPE_11__*, i32*, i32, i64, i32, i32, i32, i32, %struct.TYPE_10__*) #1

declare dso_local i32 @abd_alloc_for_io(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
