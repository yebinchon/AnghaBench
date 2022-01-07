; ModuleID = '/home/carl/AnghaBench/rufus/src/ext2fs/extr_hashmap.c_ext2fs_hashmap_iter_in_order.c'
source_filename = "/home/carl/AnghaBench/rufus/src/ext2fs/extr_hashmap.c_ext2fs_hashmap_iter_in_order.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ext2fs_hashmap = type { %struct.ext2fs_hashmap_entry* }
%struct.ext2fs_hashmap_entry = type { i8*, %struct.ext2fs_hashmap_entry* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @ext2fs_hashmap_iter_in_order(%struct.ext2fs_hashmap* %0, %struct.ext2fs_hashmap_entry** %1) #0 {
  %3 = alloca %struct.ext2fs_hashmap*, align 8
  %4 = alloca %struct.ext2fs_hashmap_entry**, align 8
  store %struct.ext2fs_hashmap* %0, %struct.ext2fs_hashmap** %3, align 8
  store %struct.ext2fs_hashmap_entry** %1, %struct.ext2fs_hashmap_entry*** %4, align 8
  %5 = load %struct.ext2fs_hashmap_entry**, %struct.ext2fs_hashmap_entry*** %4, align 8
  %6 = load %struct.ext2fs_hashmap_entry*, %struct.ext2fs_hashmap_entry** %5, align 8
  %7 = icmp ne %struct.ext2fs_hashmap_entry* %6, null
  br i1 %7, label %8, label %13

8:                                                ; preds = %2
  %9 = load %struct.ext2fs_hashmap_entry**, %struct.ext2fs_hashmap_entry*** %4, align 8
  %10 = load %struct.ext2fs_hashmap_entry*, %struct.ext2fs_hashmap_entry** %9, align 8
  %11 = getelementptr inbounds %struct.ext2fs_hashmap_entry, %struct.ext2fs_hashmap_entry* %10, i32 0, i32 1
  %12 = load %struct.ext2fs_hashmap_entry*, %struct.ext2fs_hashmap_entry** %11, align 8
  br label %17

13:                                               ; preds = %2
  %14 = load %struct.ext2fs_hashmap*, %struct.ext2fs_hashmap** %3, align 8
  %15 = getelementptr inbounds %struct.ext2fs_hashmap, %struct.ext2fs_hashmap* %14, i32 0, i32 0
  %16 = load %struct.ext2fs_hashmap_entry*, %struct.ext2fs_hashmap_entry** %15, align 8
  br label %17

17:                                               ; preds = %13, %8
  %18 = phi %struct.ext2fs_hashmap_entry* [ %12, %8 ], [ %16, %13 ]
  %19 = load %struct.ext2fs_hashmap_entry**, %struct.ext2fs_hashmap_entry*** %4, align 8
  store %struct.ext2fs_hashmap_entry* %18, %struct.ext2fs_hashmap_entry** %19, align 8
  %20 = load %struct.ext2fs_hashmap_entry**, %struct.ext2fs_hashmap_entry*** %4, align 8
  %21 = load %struct.ext2fs_hashmap_entry*, %struct.ext2fs_hashmap_entry** %20, align 8
  %22 = icmp ne %struct.ext2fs_hashmap_entry* %21, null
  br i1 %22, label %23, label %28

23:                                               ; preds = %17
  %24 = load %struct.ext2fs_hashmap_entry**, %struct.ext2fs_hashmap_entry*** %4, align 8
  %25 = load %struct.ext2fs_hashmap_entry*, %struct.ext2fs_hashmap_entry** %24, align 8
  %26 = getelementptr inbounds %struct.ext2fs_hashmap_entry, %struct.ext2fs_hashmap_entry* %25, i32 0, i32 0
  %27 = load i8*, i8** %26, align 8
  br label %29

28:                                               ; preds = %17
  br label %29

29:                                               ; preds = %28, %23
  %30 = phi i8* [ %27, %23 ], [ null, %28 ]
  ret i8* %30
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
