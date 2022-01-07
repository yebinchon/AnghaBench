; ModuleID = '/home/carl/AnghaBench/zfs/module/zfs/extr_space_map.c_space_map_open.c'
source_filename = "/home/carl/AnghaBench/zfs/module/zfs/extr_space_map.c_space_map_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32*, i32*, i64, i64, i32*, i32, i64, i64 }

@KM_SLEEP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @space_map_open(%struct.TYPE_6__** %0, i32* %1, i64 %2, i64 %3, i64 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_6__**, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.TYPE_6__*, align 8
  %15 = alloca i32, align 4
  store %struct.TYPE_6__** %0, %struct.TYPE_6__*** %8, align 8
  store i32* %1, i32** %9, align 8
  store i64 %2, i64* %10, align 8
  store i64 %3, i64* %11, align 8
  store i64 %4, i64* %12, align 8
  store i32 %5, i32* %13, align 4
  %16 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %8, align 8
  %17 = load %struct.TYPE_6__*, %struct.TYPE_6__** %16, align 8
  %18 = icmp eq %struct.TYPE_6__* %17, null
  %19 = zext i1 %18 to i32
  %20 = call i32 @ASSERT(i32 %19)
  %21 = load i32*, i32** %9, align 8
  %22 = icmp ne i32* %21, null
  %23 = zext i1 %22 to i32
  %24 = call i32 @ASSERT(i32 %23)
  %25 = load i64, i64* %10, align 8
  %26 = icmp ne i64 %25, 0
  %27 = zext i1 %26 to i32
  %28 = call i32 @ASSERT(i32 %27)
  %29 = load i32, i32* @KM_SLEEP, align 4
  %30 = call %struct.TYPE_6__* @kmem_alloc(i32 64, i32 %29)
  store %struct.TYPE_6__* %30, %struct.TYPE_6__** %14, align 8
  %31 = load i64, i64* %11, align 8
  %32 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 7
  store i64 %31, i64* %33, align 8
  %34 = load i64, i64* %12, align 8
  %35 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 6
  store i64 %34, i64* %36, align 8
  %37 = load i32, i32* %13, align 4
  %38 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 5
  store i32 %37, i32* %39, align 8
  %40 = load i32*, i32** %9, align 8
  %41 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 4
  store i32* %40, i32** %42, align 8
  %43 = load i64, i64* %10, align 8
  %44 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 3
  store i64 %43, i64* %45, align 8
  %46 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 2
  store i64 0, i64* %47, align 8
  %48 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 1
  store i32* null, i32** %49, align 8
  %50 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 0
  store i32* null, i32** %51, align 8
  %52 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %53 = call i32 @space_map_open_impl(%struct.TYPE_6__* %52)
  store i32 %53, i32* %15, align 4
  %54 = load i32, i32* %15, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %60

56:                                               ; preds = %6
  %57 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %58 = call i32 @space_map_close(%struct.TYPE_6__* %57)
  %59 = load i32, i32* %15, align 4
  store i32 %59, i32* %7, align 4
  br label %63

60:                                               ; preds = %6
  %61 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %62 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %8, align 8
  store %struct.TYPE_6__* %61, %struct.TYPE_6__** %62, align 8
  store i32 0, i32* %7, align 4
  br label %63

63:                                               ; preds = %60, %56
  %64 = load i32, i32* %7, align 4
  ret i32 %64
}

declare dso_local i32 @ASSERT(i32) #1

declare dso_local %struct.TYPE_6__* @kmem_alloc(i32, i32) #1

declare dso_local i32 @space_map_open_impl(%struct.TYPE_6__*) #1

declare dso_local i32 @space_map_close(%struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
