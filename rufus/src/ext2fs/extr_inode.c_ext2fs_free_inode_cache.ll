; ModuleID = '/home/carl/AnghaBench/rufus/src/ext2fs/extr_inode.c_ext2fs_free_inode_cache.c'
source_filename = "/home/carl/AnghaBench/rufus/src/ext2fs/extr_inode.c_ext2fs_free_inode_cache.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ext2_inode_cache = type { i32, i64, %struct.ext2_inode_cache*, %struct.ext2_inode_cache*, %struct.ext2_inode_cache*, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ext2fs_free_inode_cache(%struct.ext2_inode_cache* %0) #0 {
  %2 = alloca %struct.ext2_inode_cache*, align 8
  %3 = alloca i32, align 4
  store %struct.ext2_inode_cache* %0, %struct.ext2_inode_cache** %2, align 8
  %4 = load %struct.ext2_inode_cache*, %struct.ext2_inode_cache** %2, align 8
  %5 = getelementptr inbounds %struct.ext2_inode_cache, %struct.ext2_inode_cache* %4, i32 0, i32 5
  %6 = load i64, i64* %5, align 8
  %7 = add nsw i64 %6, -1
  store i64 %7, i64* %5, align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %10

9:                                                ; preds = %1
  br label %51

10:                                               ; preds = %1
  %11 = load %struct.ext2_inode_cache*, %struct.ext2_inode_cache** %2, align 8
  %12 = getelementptr inbounds %struct.ext2_inode_cache, %struct.ext2_inode_cache* %11, i32 0, i32 4
  %13 = load %struct.ext2_inode_cache*, %struct.ext2_inode_cache** %12, align 8
  %14 = icmp ne %struct.ext2_inode_cache* %13, null
  br i1 %14, label %15, label %19

15:                                               ; preds = %10
  %16 = load %struct.ext2_inode_cache*, %struct.ext2_inode_cache** %2, align 8
  %17 = getelementptr inbounds %struct.ext2_inode_cache, %struct.ext2_inode_cache* %16, i32 0, i32 4
  %18 = call i32 @ext2fs_free_mem(%struct.ext2_inode_cache** %17)
  br label %19

19:                                               ; preds = %15, %10
  store i32 0, i32* %3, align 4
  br label %20

20:                                               ; preds = %35, %19
  %21 = load i32, i32* %3, align 4
  %22 = load %struct.ext2_inode_cache*, %struct.ext2_inode_cache** %2, align 8
  %23 = getelementptr inbounds %struct.ext2_inode_cache, %struct.ext2_inode_cache* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = icmp ult i32 %21, %24
  br i1 %25, label %26, label %38

26:                                               ; preds = %20
  %27 = load %struct.ext2_inode_cache*, %struct.ext2_inode_cache** %2, align 8
  %28 = getelementptr inbounds %struct.ext2_inode_cache, %struct.ext2_inode_cache* %27, i32 0, i32 2
  %29 = load %struct.ext2_inode_cache*, %struct.ext2_inode_cache** %28, align 8
  %30 = load i32, i32* %3, align 4
  %31 = zext i32 %30 to i64
  %32 = getelementptr inbounds %struct.ext2_inode_cache, %struct.ext2_inode_cache* %29, i64 %31
  %33 = getelementptr inbounds %struct.ext2_inode_cache, %struct.ext2_inode_cache* %32, i32 0, i32 3
  %34 = call i32 @ext2fs_free_mem(%struct.ext2_inode_cache** %33)
  br label %35

35:                                               ; preds = %26
  %36 = load i32, i32* %3, align 4
  %37 = add i32 %36, 1
  store i32 %37, i32* %3, align 4
  br label %20

38:                                               ; preds = %20
  %39 = load %struct.ext2_inode_cache*, %struct.ext2_inode_cache** %2, align 8
  %40 = getelementptr inbounds %struct.ext2_inode_cache, %struct.ext2_inode_cache* %39, i32 0, i32 2
  %41 = load %struct.ext2_inode_cache*, %struct.ext2_inode_cache** %40, align 8
  %42 = icmp ne %struct.ext2_inode_cache* %41, null
  br i1 %42, label %43, label %47

43:                                               ; preds = %38
  %44 = load %struct.ext2_inode_cache*, %struct.ext2_inode_cache** %2, align 8
  %45 = getelementptr inbounds %struct.ext2_inode_cache, %struct.ext2_inode_cache* %44, i32 0, i32 2
  %46 = call i32 @ext2fs_free_mem(%struct.ext2_inode_cache** %45)
  br label %47

47:                                               ; preds = %43, %38
  %48 = load %struct.ext2_inode_cache*, %struct.ext2_inode_cache** %2, align 8
  %49 = getelementptr inbounds %struct.ext2_inode_cache, %struct.ext2_inode_cache* %48, i32 0, i32 1
  store i64 0, i64* %49, align 8
  %50 = call i32 @ext2fs_free_mem(%struct.ext2_inode_cache** %2)
  br label %51

51:                                               ; preds = %47, %9
  ret void
}

declare dso_local i32 @ext2fs_free_mem(%struct.ext2_inode_cache**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
