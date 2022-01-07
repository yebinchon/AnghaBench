; ModuleID = '/home/carl/AnghaBench/reactos/drivers/filesystems/ext2/src/ext4/extr_ext4_extents.c___read_extent_tree_block.c'
source_filename = "/home/carl/AnghaBench/reactos/drivers/filesystems/ext2/src/ext4/extr_ext4_extents.c___read_extent_tree_block.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.buffer_head = type { i32 }
%struct.inode = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.buffer_head* (i8*, i32, %struct.inode*, i32, i32, i32)* @__read_extent_tree_block to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.buffer_head* @__read_extent_tree_block(i8* %0, i32 %1, %struct.inode* %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca %struct.buffer_head*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.inode*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.buffer_head*, align 8
  %15 = alloca i32, align 4
  store i8* %0, i8** %8, align 8
  store i32 %1, i32* %9, align 4
  store %struct.inode* %2, %struct.inode** %10, align 8
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  %16 = load %struct.inode*, %struct.inode** %10, align 8
  %17 = getelementptr inbounds %struct.inode, %struct.inode* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* %11, align 4
  %20 = call %struct.buffer_head* @extents_bread(i32 %18, i32 %19)
  store %struct.buffer_head* %20, %struct.buffer_head** %14, align 8
  %21 = load %struct.buffer_head*, %struct.buffer_head** %14, align 8
  %22 = icmp ne %struct.buffer_head* %21, null
  br i1 %22, label %27, label %23

23:                                               ; preds = %6
  %24 = load i32, i32* @ENOMEM, align 4
  %25 = sub nsw i32 0, %24
  %26 = call %struct.buffer_head* @ERR_PTR(i32 %25)
  store %struct.buffer_head* %26, %struct.buffer_head** %7, align 8
  br label %61

27:                                               ; preds = %6
  %28 = load %struct.buffer_head*, %struct.buffer_head** %14, align 8
  %29 = call i32 @buffer_uptodate(%struct.buffer_head* %28)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %34, label %31

31:                                               ; preds = %27
  %32 = load i32, i32* @EIO, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %15, align 4
  br label %56

34:                                               ; preds = %27
  %35 = load %struct.buffer_head*, %struct.buffer_head** %14, align 8
  %36 = call i64 @buffer_verified(%struct.buffer_head* %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %34
  %39 = load %struct.buffer_head*, %struct.buffer_head** %14, align 8
  store %struct.buffer_head* %39, %struct.buffer_head** %7, align 8
  br label %61

40:                                               ; preds = %34
  %41 = load i8*, i8** %8, align 8
  %42 = load i32, i32* %9, align 4
  %43 = load %struct.inode*, %struct.inode** %10, align 8
  %44 = load %struct.buffer_head*, %struct.buffer_head** %14, align 8
  %45 = call i32 @ext_block_hdr(%struct.buffer_head* %44)
  %46 = load i32, i32* %12, align 4
  %47 = load i32, i32* %11, align 4
  %48 = call i32 @__ext4_ext_check(i8* %41, i32 %42, %struct.inode* %43, i32 %45, i32 %46, i32 %47)
  store i32 %48, i32* %15, align 4
  %49 = load i32, i32* %15, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %40
  br label %56

52:                                               ; preds = %40
  %53 = load %struct.buffer_head*, %struct.buffer_head** %14, align 8
  %54 = call i32 @set_buffer_verified(%struct.buffer_head* %53)
  %55 = load %struct.buffer_head*, %struct.buffer_head** %14, align 8
  store %struct.buffer_head* %55, %struct.buffer_head** %7, align 8
  br label %61

56:                                               ; preds = %51, %31
  %57 = load %struct.buffer_head*, %struct.buffer_head** %14, align 8
  %58 = call i32 @extents_brelse(%struct.buffer_head* %57)
  %59 = load i32, i32* %15, align 4
  %60 = call %struct.buffer_head* @ERR_PTR(i32 %59)
  store %struct.buffer_head* %60, %struct.buffer_head** %7, align 8
  br label %61

61:                                               ; preds = %56, %52, %38, %23
  %62 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  ret %struct.buffer_head* %62
}

declare dso_local %struct.buffer_head* @extents_bread(i32, i32) #1

declare dso_local %struct.buffer_head* @ERR_PTR(i32) #1

declare dso_local i32 @buffer_uptodate(%struct.buffer_head*) #1

declare dso_local i64 @buffer_verified(%struct.buffer_head*) #1

declare dso_local i32 @__ext4_ext_check(i8*, i32, %struct.inode*, i32, i32, i32) #1

declare dso_local i32 @ext_block_hdr(%struct.buffer_head*) #1

declare dso_local i32 @set_buffer_verified(%struct.buffer_head*) #1

declare dso_local i32 @extents_brelse(%struct.buffer_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
