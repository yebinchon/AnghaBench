; ModuleID = '/home/carl/AnghaBench/zfs/module/zfs/extr_range_tree.c_range_tree_remove_xor_add.c'
source_filename = "/home/carl/AnghaBench/zfs/module/zfs/extr_range_tree.c_range_tree_remove_xor_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @range_tree_remove_xor_add(%struct.TYPE_9__* %0, %struct.TYPE_9__* %1, %struct.TYPE_9__* %2) #0 {
  %4 = alloca %struct.TYPE_9__*, align 8
  %5 = alloca %struct.TYPE_9__*, align 8
  %6 = alloca %struct.TYPE_9__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %4, align 8
  store %struct.TYPE_9__* %1, %struct.TYPE_9__** %5, align 8
  store %struct.TYPE_9__* %2, %struct.TYPE_9__** %6, align 8
  %9 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %10 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %9, i32 0, i32 0
  %11 = call i32* @zfs_btree_first(i32* %10, i32* %7)
  store i32* %11, i32** %8, align 8
  br label %12

12:                                               ; preds = %25, %3
  %13 = load i32*, i32** %8, align 8
  %14 = icmp ne i32* %13, null
  br i1 %14, label %15, label %29

15:                                               ; preds = %12
  %16 = load i32*, i32** %8, align 8
  %17 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %18 = call i32 @rs_get_start(i32* %16, %struct.TYPE_9__* %17)
  %19 = load i32*, i32** %8, align 8
  %20 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %21 = call i32 @rs_get_end(i32* %19, %struct.TYPE_9__* %20)
  %22 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %23 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %24 = call i32 @range_tree_remove_xor_add_segment(i32 %18, i32 %21, %struct.TYPE_9__* %22, %struct.TYPE_9__* %23)
  br label %25

25:                                               ; preds = %15
  %26 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %27 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %26, i32 0, i32 0
  %28 = call i32* @zfs_btree_next(i32* %27, i32* %7, i32* %7)
  store i32* %28, i32** %8, align 8
  br label %12

29:                                               ; preds = %12
  ret void
}

declare dso_local i32* @zfs_btree_first(i32*, i32*) #1

declare dso_local i32 @range_tree_remove_xor_add_segment(i32, i32, %struct.TYPE_9__*, %struct.TYPE_9__*) #1

declare dso_local i32 @rs_get_start(i32*, %struct.TYPE_9__*) #1

declare dso_local i32 @rs_get_end(i32*, %struct.TYPE_9__*) #1

declare dso_local i32* @zfs_btree_next(i32*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
