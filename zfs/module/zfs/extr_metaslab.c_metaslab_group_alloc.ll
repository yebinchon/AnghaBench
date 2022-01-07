; ModuleID = '/home/carl/AnghaBench/zfs/module/zfs/extr_metaslab.c_metaslab_group_alloc.c'
source_filename = "/home/carl/AnghaBench/zfs/module/zfs/extr_metaslab.c_metaslab_group_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32, i32, i32, i32 }

@TRACE_GROUP_FAILURE = common dso_local global i32 0, align 4
@SPA_GANGBLOCKSIZE = common dso_local global i64 0, align 8
@B_TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_5__*, i32*, i64, i64, i32, i32*, i32, i32, i32)* @metaslab_group_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @metaslab_group_alloc(%struct.TYPE_5__* %0, i32* %1, i64 %2, i64 %3, i32 %4, i32* %5, i32 %6, i32 %7, i32 %8) #0 {
  %10 = alloca %struct.TYPE_5__*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i64, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %10, align 8
  store i32* %1, i32** %11, align 8
  store i64 %2, i64* %12, align 8
  store i64 %3, i64* %13, align 8
  store i32 %4, i32* %14, align 4
  store i32* %5, i32** %15, align 8
  store i32 %6, i32* %16, align 4
  store i32 %7, i32* %17, align 4
  store i32 %8, i32* %18, align 4
  %20 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 4
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @ASSERT(i32 %22)
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %25 = load i32*, i32** %11, align 8
  %26 = load i64, i64* %12, align 8
  %27 = load i64, i64* %13, align 8
  %28 = load i32, i32* %14, align 4
  %29 = load i32*, i32** %15, align 8
  %30 = load i32, i32* %16, align 4
  %31 = load i32, i32* %17, align 4
  %32 = load i32, i32* %18, align 4
  %33 = call i64 @metaslab_group_alloc_normal(%struct.TYPE_5__* %24, i32* %25, i64 %26, i64 %27, i32 %28, i32* %29, i32 %30, i32 %31, i32 %32)
  store i64 %33, i64* %19, align 8
  %34 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 0
  %36 = call i32 @mutex_enter(i32* %35)
  %37 = load i64, i64* %19, align 8
  %38 = icmp eq i64 %37, -1
  br i1 %38, label %39, label %59

39:                                               ; preds = %9
  %40 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 3
  %42 = load i32, i32* %41, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %41, align 4
  %44 = load i32*, i32** %11, align 8
  %45 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %46 = load i64, i64* %12, align 8
  %47 = load i32, i32* %16, align 4
  %48 = load i32, i32* @TRACE_GROUP_FAILURE, align 4
  %49 = load i32, i32* %17, align 4
  %50 = call i32 @metaslab_trace_add(i32* %44, %struct.TYPE_5__* %45, i32* null, i64 %46, i32 %47, i32 %48, i32 %49)
  %51 = load i64, i64* %12, align 8
  %52 = load i64, i64* @SPA_GANGBLOCKSIZE, align 8
  %53 = icmp eq i64 %51, %52
  br i1 %53, label %54, label %58

54:                                               ; preds = %39
  %55 = load i32, i32* @B_TRUE, align 4
  %56 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %57 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %56, i32 0, i32 2
  store i32 %55, i32* %57, align 4
  br label %58

58:                                               ; preds = %54, %39
  br label %59

59:                                               ; preds = %58, %9
  %60 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %61 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %61, align 4
  %64 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %65 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %64, i32 0, i32 0
  %66 = call i32 @mutex_exit(i32* %65)
  %67 = load i64, i64* %19, align 8
  ret i64 %67
}

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i64 @metaslab_group_alloc_normal(%struct.TYPE_5__*, i32*, i64, i64, i32, i32*, i32, i32, i32) #1

declare dso_local i32 @mutex_enter(i32*) #1

declare dso_local i32 @metaslab_trace_add(i32*, %struct.TYPE_5__*, i32*, i64, i32, i32, i32) #1

declare dso_local i32 @mutex_exit(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
