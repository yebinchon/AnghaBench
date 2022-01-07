; ModuleID = '/home/carl/AnghaBench/reactos/drivers/filesystems/ext2/src/ext4/extr_ext4_extents.c_ext4_new_meta_blocks.c'
source_filename = "/home/carl/AnghaBench/reactos/drivers/filesystems/ext2/src/ext4/extr_ext4_extents.c_ext4_new_meta_blocks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32*, %struct.inode*, i32, i32, i64*, i32*)* @ext4_new_meta_blocks to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ext4_new_meta_blocks(i8* %0, i32* %1, %struct.inode* %2, i32 %3, i32 %4, i64* %5, i32* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.inode*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i64*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store i8* %0, i8** %9, align 8
  store i32* %1, i32** %10, align 8
  store %struct.inode* %2, %struct.inode** %11, align 8
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i64* %5, i64** %14, align 8
  store i32* %6, i32** %15, align 8
  %19 = load i64*, i64** %14, align 8
  %20 = icmp ne i64* %19, null
  br i1 %20, label %21, label %24

21:                                               ; preds = %7
  %22 = load i64*, i64** %14, align 8
  %23 = load i64, i64* %22, align 8
  br label %25

24:                                               ; preds = %7
  br label %25

25:                                               ; preds = %24, %21
  %26 = phi i64 [ %23, %21 ], [ 1, %24 ]
  %27 = trunc i64 %26 to i32
  store i32 %27, i32* %17, align 4
  store i32 0, i32* %18, align 4
  %28 = load i8*, i8** %9, align 8
  %29 = ptrtoint i8* %28 to i32
  %30 = load %struct.inode*, %struct.inode** %11, align 8
  %31 = getelementptr inbounds %struct.inode, %struct.inode* %30, i32 0, i32 1
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* %12, align 4
  %36 = call i32 @Ext2NewBlock(i32 %29, i32 %34, i32 0, i32 %35, i32* %18, i32* %17)
  store i32 %36, i32* %16, align 4
  %37 = load i64*, i64** %14, align 8
  %38 = icmp ne i64* %37, null
  br i1 %38, label %39, label %43

39:                                               ; preds = %25
  %40 = load i32, i32* %17, align 4
  %41 = sext i32 %40 to i64
  %42 = load i64*, i64** %14, align 8
  store i64 %41, i64* %42, align 8
  br label %43

43:                                               ; preds = %39, %25
  %44 = load i32, i32* %16, align 4
  %45 = call i32 @NT_SUCCESS(i32 %44)
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %51, label %47

47:                                               ; preds = %43
  %48 = load i32, i32* %16, align 4
  %49 = call i32 @Ext2LinuxError(i32 %48)
  %50 = load i32*, i32** %15, align 8
  store i32 %49, i32* %50, align 4
  store i32 0, i32* %8, align 4
  br label %65

51:                                               ; preds = %43
  %52 = load i32, i32* %17, align 4
  %53 = load %struct.inode*, %struct.inode** %11, align 8
  %54 = getelementptr inbounds %struct.inode, %struct.inode* %53, i32 0, i32 1
  %55 = load %struct.TYPE_2__*, %struct.TYPE_2__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = ashr i32 %57, 9
  %59 = mul nsw i32 %52, %58
  %60 = load %struct.inode*, %struct.inode** %11, align 8
  %61 = getelementptr inbounds %struct.inode, %struct.inode* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = add nsw i32 %62, %59
  store i32 %63, i32* %61, align 8
  %64 = load i32, i32* %18, align 4
  store i32 %64, i32* %8, align 4
  br label %65

65:                                               ; preds = %51, %47
  %66 = load i32, i32* %8, align 4
  ret i32 %66
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
