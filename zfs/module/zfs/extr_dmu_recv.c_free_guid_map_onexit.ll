; ModuleID = '/home/carl/AnghaBench/zfs/module/zfs/extr_dmu_recv.c_free_guid_map_onexit.c'
source_filename = "/home/carl/AnghaBench/zfs/module/zfs/extr_dmu_recv.c_free_guid_map_onexit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { %struct.TYPE_12__*, i64 }
%struct.TYPE_12__ = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32 }

@DS_HOLD_FLAG_DECRYPT = common dso_local global i32 0, align 4
@B_FALSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @free_guid_map_onexit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @free_guid_map_onexit(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.TYPE_11__*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.TYPE_11__*, align 8
  %6 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %7 = load i8*, i8** %2, align 8
  %8 = bitcast i8* %7 to %struct.TYPE_11__*
  store %struct.TYPE_11__* %8, %struct.TYPE_11__** %3, align 8
  store i8* null, i8** %4, align 8
  br label %9

9:                                                ; preds = %31, %1
  %10 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %11 = call %struct.TYPE_11__* @avl_destroy_nodes(%struct.TYPE_11__* %10, i8** %4)
  store %struct.TYPE_11__* %11, %struct.TYPE_11__** %5, align 8
  %12 = icmp ne %struct.TYPE_11__* %11, null
  br i1 %12, label %13, label %40

13:                                               ; preds = %9
  %14 = load i32, i32* @DS_HOLD_FLAG_DECRYPT, align 4
  store i32 %14, i32* %6, align 4
  %15 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %16 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %31

19:                                               ; preds = %13
  %20 = load i32, i32* @B_FALSE, align 4
  %21 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %22 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %21, i32 0, i32 0
  %23 = load %struct.TYPE_12__*, %struct.TYPE_12__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %23, i32 0, i32 0
  %25 = load %struct.TYPE_10__*, %struct.TYPE_10__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %25, i32 0, i32 0
  store i32 %20, i32* %26, align 4
  %27 = load i32, i32* @DS_HOLD_FLAG_DECRYPT, align 4
  %28 = xor i32 %27, -1
  %29 = load i32, i32* %6, align 4
  %30 = and i32 %29, %28
  store i32 %30, i32* %6, align 4
  br label %31

31:                                               ; preds = %19, %13
  %32 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %33 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %32, i32 0, i32 0
  %34 = load %struct.TYPE_12__*, %struct.TYPE_12__** %33, align 8
  %35 = load i32, i32* %6, align 4
  %36 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %37 = call i32 @dsl_dataset_disown(%struct.TYPE_12__* %34, i32 %35, %struct.TYPE_11__* %36)
  %38 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %39 = call i32 @kmem_free(%struct.TYPE_11__* %38, i32 16)
  br label %9

40:                                               ; preds = %9
  %41 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %42 = call i32 @avl_destroy(%struct.TYPE_11__* %41)
  %43 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %44 = call i32 @kmem_free(%struct.TYPE_11__* %43, i32 16)
  ret void
}

declare dso_local %struct.TYPE_11__* @avl_destroy_nodes(%struct.TYPE_11__*, i8**) #1

declare dso_local i32 @dsl_dataset_disown(%struct.TYPE_12__*, i32, %struct.TYPE_11__*) #1

declare dso_local i32 @kmem_free(%struct.TYPE_11__*, i32) #1

declare dso_local i32 @avl_destroy(%struct.TYPE_11__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
