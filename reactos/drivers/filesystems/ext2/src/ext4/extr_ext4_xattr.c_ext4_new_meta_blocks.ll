; ModuleID = '/home/carl/AnghaBench/reactos/drivers/filesystems/ext2/src/ext4/extr_ext4_xattr.c_ext4_new_meta_blocks.c'
source_filename = "/home/carl/AnghaBench/reactos/drivers/filesystems/ext2/src/ext4/extr_ext4_xattr.c_ext4_new_meta_blocks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.inode*, i32, i32, i64*, i32*)* @ext4_new_meta_blocks to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ext4_new_meta_blocks(i8* %0, %struct.inode* %1, i32 %2, i32 %3, i64* %4, i32* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca %struct.inode*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store i8* %0, i8** %8, align 8
  store %struct.inode* %1, %struct.inode** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i64* %4, i64** %12, align 8
  store i32* %5, i32** %13, align 8
  %17 = load i64*, i64** %12, align 8
  %18 = icmp ne i64* %17, null
  br i1 %18, label %19, label %22

19:                                               ; preds = %6
  %20 = load i64*, i64** %12, align 8
  %21 = load i64, i64* %20, align 8
  br label %23

22:                                               ; preds = %6
  br label %23

23:                                               ; preds = %22, %19
  %24 = phi i64 [ %21, %19 ], [ 1, %22 ]
  %25 = trunc i64 %24 to i32
  store i32 %25, i32* %15, align 4
  store i32 0, i32* %16, align 4
  %26 = load i8*, i8** %8, align 8
  %27 = ptrtoint i8* %26 to i32
  %28 = load %struct.inode*, %struct.inode** %9, align 8
  %29 = getelementptr inbounds %struct.inode, %struct.inode* %28, i32 0, i32 1
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* %10, align 4
  %34 = call i32 @Ext2NewBlock(i32 %27, i32 %32, i32 0, i32 %33, i32* %16, i32* %15)
  store i32 %34, i32* %14, align 4
  %35 = load i64*, i64** %12, align 8
  %36 = icmp ne i64* %35, null
  br i1 %36, label %37, label %41

37:                                               ; preds = %23
  %38 = load i32, i32* %15, align 4
  %39 = sext i32 %38 to i64
  %40 = load i64*, i64** %12, align 8
  store i64 %39, i64* %40, align 8
  br label %41

41:                                               ; preds = %37, %23
  %42 = load i32, i32* %14, align 4
  %43 = call i32 @NT_SUCCESS(i32 %42)
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %49, label %45

45:                                               ; preds = %41
  %46 = load i32, i32* %14, align 4
  %47 = call i32 @Ext2LinuxError(i32 %46)
  %48 = load i32*, i32** %13, align 8
  store i32 %47, i32* %48, align 4
  store i32 0, i32* %7, align 4
  br label %63

49:                                               ; preds = %41
  %50 = load i32, i32* %15, align 4
  %51 = load %struct.inode*, %struct.inode** %9, align 8
  %52 = getelementptr inbounds %struct.inode, %struct.inode* %51, i32 0, i32 1
  %53 = load %struct.TYPE_2__*, %struct.TYPE_2__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = ashr i32 %55, 9
  %57 = mul nsw i32 %50, %56
  %58 = load %struct.inode*, %struct.inode** %9, align 8
  %59 = getelementptr inbounds %struct.inode, %struct.inode* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = add nsw i32 %60, %57
  store i32 %61, i32* %59, align 8
  %62 = load i32, i32* %16, align 4
  store i32 %62, i32* %7, align 4
  br label %63

63:                                               ; preds = %49, %45
  %64 = load i32, i32* %7, align 4
  ret i32 %64
}

declare dso_local i32 @Ext2NewBlock(i32, i32, i32, i32, i32*, i32*) #1

declare dso_local i32 @NT_SUCCESS(i32) #1

declare dso_local i32 @Ext2LinuxError(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
