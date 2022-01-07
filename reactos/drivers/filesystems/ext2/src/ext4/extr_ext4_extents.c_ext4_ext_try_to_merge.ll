; ModuleID = '/home/carl/AnghaBench/reactos/drivers/filesystems/ext2/src/ext4/extr_ext4_extents.c_ext4_ext_try_to_merge.c'
source_filename = "/home/carl/AnghaBench/reactos/drivers/filesystems/ext2/src/ext4/extr_ext4_extents.c_ext4_ext_try_to_merge.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.ext4_ext_path = type { %struct.ext4_extent_header* }
%struct.ext4_extent_header = type { i32 }
%struct.ext4_extent = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32*, %struct.inode*, %struct.ext4_ext_path*, %struct.ext4_extent*)* @ext4_ext_try_to_merge to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ext4_ext_try_to_merge(i8* %0, i32* %1, %struct.inode* %2, %struct.ext4_ext_path* %3, %struct.ext4_extent* %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.inode*, align 8
  %9 = alloca %struct.ext4_ext_path*, align 8
  %10 = alloca %struct.ext4_extent*, align 8
  %11 = alloca %struct.ext4_extent_header*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store i32* %1, i32** %7, align 8
  store %struct.inode* %2, %struct.inode** %8, align 8
  store %struct.ext4_ext_path* %3, %struct.ext4_ext_path** %9, align 8
  store %struct.ext4_extent* %4, %struct.ext4_extent** %10, align 8
  store i32 0, i32* %13, align 4
  %14 = load %struct.inode*, %struct.inode** %8, align 8
  %15 = call i32 @ext_depth(%struct.inode* %14)
  store i32 %15, i32* %12, align 4
  %16 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %9, align 8
  %17 = load i32, i32* %12, align 4
  %18 = zext i32 %17 to i64
  %19 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %16, i64 %18
  %20 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %19, i32 0, i32 0
  %21 = load %struct.ext4_extent_header*, %struct.ext4_extent_header** %20, align 8
  %22 = icmp eq %struct.ext4_extent_header* %21, null
  %23 = zext i1 %22 to i32
  %24 = call i32 @BUG_ON(i32 %23)
  %25 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %9, align 8
  %26 = load i32, i32* %12, align 4
  %27 = zext i32 %26 to i64
  %28 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %25, i64 %27
  %29 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %28, i32 0, i32 0
  %30 = load %struct.ext4_extent_header*, %struct.ext4_extent_header** %29, align 8
  store %struct.ext4_extent_header* %30, %struct.ext4_extent_header** %11, align 8
  %31 = load %struct.ext4_extent*, %struct.ext4_extent** %10, align 8
  %32 = load %struct.ext4_extent_header*, %struct.ext4_extent_header** %11, align 8
  %33 = call %struct.ext4_extent* @EXT_FIRST_EXTENT(%struct.ext4_extent_header* %32)
  %34 = icmp ugt %struct.ext4_extent* %31, %33
  br i1 %34, label %35, label %41

35:                                               ; preds = %5
  %36 = load %struct.inode*, %struct.inode** %8, align 8
  %37 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %9, align 8
  %38 = load %struct.ext4_extent*, %struct.ext4_extent** %10, align 8
  %39 = getelementptr inbounds %struct.ext4_extent, %struct.ext4_extent* %38, i64 -1
  %40 = call i32 @ext4_ext_try_to_merge_right(%struct.inode* %36, %struct.ext4_ext_path* %37, %struct.ext4_extent* %39)
  store i32 %40, i32* %13, align 4
  br label %41

41:                                               ; preds = %35, %5
  %42 = load i32, i32* %13, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %49, label %44

44:                                               ; preds = %41
  %45 = load %struct.inode*, %struct.inode** %8, align 8
  %46 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %9, align 8
  %47 = load %struct.ext4_extent*, %struct.ext4_extent** %10, align 8
  %48 = call i32 @ext4_ext_try_to_merge_right(%struct.inode* %45, %struct.ext4_ext_path* %46, %struct.ext4_extent* %47)
  br label %49

49:                                               ; preds = %44, %41
  %50 = load i8*, i8** %6, align 8
  %51 = load i32*, i32** %7, align 8
  %52 = load %struct.inode*, %struct.inode** %8, align 8
  %53 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %9, align 8
  %54 = call i32 @ext4_ext_try_to_merge_up(i8* %50, i32* %51, %struct.inode* %52, %struct.ext4_ext_path* %53)
  ret void
}

declare dso_local i32 @ext_depth(%struct.inode*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local %struct.ext4_extent* @EXT_FIRST_EXTENT(%struct.ext4_extent_header*) #1

declare dso_local i32 @ext4_ext_try_to_merge_right(%struct.inode*, %struct.ext4_ext_path*, %struct.ext4_extent*) #1

declare dso_local i32 @ext4_ext_try_to_merge_up(i8*, i32*, %struct.inode*, %struct.ext4_ext_path*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
