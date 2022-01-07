; ModuleID = '/home/carl/AnghaBench/zfs/module/zfs/extr_zap_micro.c_mze_insert.c'
source_filename = "/home/carl/AnghaBench/zfs/module/zfs/extr_zap_micro.c_mze_insert.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32, %struct.TYPE_10__, i32 }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_12__ = type { i32, i32, i32 }
%struct.TYPE_13__ = type { i64*, i32 }

@KM_SLEEP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_11__*, i32, i32)* @mze_insert to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mze_insert(%struct.TYPE_11__* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_11__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_12__*, align 8
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %9 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call i32 @ASSERT(i32 %10)
  %12 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %13 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %12, i32 0, i32 2
  %14 = call i32 @RW_WRITE_HELD(i32* %13)
  %15 = call i32 @ASSERT(i32 %14)
  %16 = load i32, i32* @KM_SLEEP, align 4
  %17 = call %struct.TYPE_12__* @kmem_alloc(i32 12, i32 %16)
  store %struct.TYPE_12__* %17, %struct.TYPE_12__** %7, align 8
  %18 = load i32, i32* %5, align 4
  %19 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %20 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %19, i32 0, i32 0
  store i32 %18, i32* %20, align 4
  %21 = load i32, i32* %6, align 4
  %22 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %23 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %22, i32 0, i32 2
  store i32 %21, i32* %23, align 4
  %24 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %25 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %26 = call %struct.TYPE_13__* @MZE_PHYS(%struct.TYPE_11__* %24, %struct.TYPE_12__* %25)
  %27 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 8
  %29 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %30 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %29, i32 0, i32 1
  store i32 %28, i32* %30, align 4
  %31 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %32 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %33 = call %struct.TYPE_13__* @MZE_PHYS(%struct.TYPE_11__* %31, %struct.TYPE_12__* %32)
  %34 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %33, i32 0, i32 0
  %35 = load i64*, i64** %34, align 8
  %36 = getelementptr inbounds i64, i64* %35, i64 0
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  %39 = zext i1 %38 to i32
  %40 = call i32 @ASSERT(i32 %39)
  %41 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %42 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %41, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %42, i32 0, i32 0
  %44 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %45 = call i32 @avl_add(i32* %43, %struct.TYPE_12__* %44)
  ret void
}

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @RW_WRITE_HELD(i32*) #1

declare dso_local %struct.TYPE_12__* @kmem_alloc(i32, i32) #1

declare dso_local %struct.TYPE_13__* @MZE_PHYS(%struct.TYPE_11__*, %struct.TYPE_12__*) #1

declare dso_local i32 @avl_add(i32*, %struct.TYPE_12__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
