; ModuleID = '/home/carl/AnghaBench/reactos/drivers/filesystems/ext2/src/ext4/extr_ext4_extents.c_ext4_ext_rm_idx.c'
source_filename = "/home/carl/AnghaBench/reactos/drivers/filesystems/ext2/src/ext4/extr_ext4_extents.c_ext4_ext_rm_idx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.ext4_ext_path = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ext4_ext_rm_idx(i8* %0, i32* %1, %struct.inode* %2, %struct.ext4_ext_path* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.inode*, align 8
  %9 = alloca %struct.ext4_ext_path*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store i32* %1, i32** %7, align 8
  store %struct.inode* %2, %struct.inode** %8, align 8
  store %struct.ext4_ext_path* %3, %struct.ext4_ext_path** %9, align 8
  %12 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %9, align 8
  %13 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %12, i32 -1
  store %struct.ext4_ext_path* %13, %struct.ext4_ext_path** %9, align 8
  %14 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %9, align 8
  %15 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 8
  %17 = call i32 @ext4_idx_pblock(i32 %16)
  store i32 %17, i32* %11, align 4
  %18 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %9, align 8
  %19 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %18, i32 0, i32 0
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp eq i64 %22, 0
  %24 = zext i1 %23 to i32
  %25 = call i32 @BUG_ON(i32 %24)
  %26 = load i8*, i8** %6, align 8
  %27 = load i32*, i32** %7, align 8
  %28 = load %struct.inode*, %struct.inode** %8, align 8
  %29 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %9, align 8
  %30 = call i32 @ext4_ext_get_access(i8* %26, i32* %27, %struct.inode* %28, %struct.ext4_ext_path* %29)
  store i32 %30, i32* %10, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %4
  %33 = load i32, i32* %10, align 4
  store i32 %33, i32* %5, align 4
  br label %62

34:                                               ; preds = %4
  %35 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %9, align 8
  %36 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %35, i32 0, i32 0
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = call i64 @le16_to_cpu(i64 %39)
  %41 = sub nsw i64 %40, 1
  %42 = call i64 @cpu_to_le16(i64 %41)
  %43 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %9, align 8
  %44 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %43, i32 0, i32 0
  %45 = load %struct.TYPE_2__*, %struct.TYPE_2__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 0
  store i64 %42, i64* %46, align 8
  %47 = load i8*, i8** %6, align 8
  %48 = load i32*, i32** %7, align 8
  %49 = load %struct.inode*, %struct.inode** %8, align 8
  %50 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %9, align 8
  %51 = call i32 @ext4_ext_dirty(i8* %47, i32* %48, %struct.inode* %49, %struct.ext4_ext_path* %50)
  store i32 %51, i32* %10, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %55

53:                                               ; preds = %34
  %54 = load i32, i32* %10, align 4
  store i32 %54, i32* %5, align 4
  br label %62

55:                                               ; preds = %34
  %56 = load i8*, i8** %6, align 8
  %57 = load i32*, i32** %7, align 8
  %58 = load %struct.inode*, %struct.inode** %8, align 8
  %59 = load i32, i32* %11, align 4
  %60 = call i32 @ext4_free_blocks(i8* %56, i32* %57, %struct.inode* %58, i32* null, i32 %59, i32 1, i32 0)
  %61 = load i32, i32* %10, align 4
  store i32 %61, i32* %5, align 4
  br label %62

62:                                               ; preds = %55, %53, %32
  %63 = load i32, i32* %5, align 4
  ret i32 %63
}

declare dso_local i32 @ext4_idx_pblock(i32) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @ext4_ext_get_access(i8*, i32*, %struct.inode*, %struct.ext4_ext_path*) #1

declare dso_local i64 @cpu_to_le16(i64) #1

declare dso_local i64 @le16_to_cpu(i64) #1

declare dso_local i32 @ext4_ext_dirty(i8*, i32*, %struct.inode*, %struct.ext4_ext_path*) #1

declare dso_local i32 @ext4_free_blocks(i8*, i32*, %struct.inode*, i32*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
