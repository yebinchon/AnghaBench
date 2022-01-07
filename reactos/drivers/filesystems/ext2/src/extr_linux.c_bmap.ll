; ModuleID = '/home/carl/AnghaBench/reactos/drivers/filesystems/ext2/src/extr_linux.c_bmap.c'
source_filename = "/home/carl/AnghaBench/reactos/drivers/filesystems/ext2/src/extr_linux.c_bmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32, %struct.super_block* }
%struct.super_block = type { i32 }
%struct.TYPE_4__ = type { i32 }

@BLOCK_BITS = common dso_local global i32 0, align 4
@BLOCK_SIZE = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bmap(%struct.inode* %0, i32 %1) #0 {
  %3 = alloca %struct.inode*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.super_block*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_4__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %5, align 4
  %12 = load %struct.inode*, %struct.inode** %3, align 8
  %13 = getelementptr inbounds %struct.inode, %struct.inode* %12, i32 0, i32 1
  %14 = load %struct.super_block*, %struct.super_block** %13, align 8
  store %struct.super_block* %14, %struct.super_block** %6, align 8
  %15 = load %struct.inode*, %struct.inode** %3, align 8
  %16 = getelementptr inbounds %struct.inode, %struct.inode* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  store i32 %17, i32* %7, align 4
  %18 = load %struct.super_block*, %struct.super_block** %6, align 8
  %19 = getelementptr inbounds %struct.super_block, %struct.super_block* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  store i32 %20, i32* %8, align 4
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %9, align 8
  %21 = load i32, i32* %4, align 4
  store i32 %21, i32* %10, align 4
  %22 = load i32, i32* %7, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %2
  %25 = load i32, i32* %8, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %28, label %27

27:                                               ; preds = %24, %2
  br label %54

28:                                               ; preds = %24
  %29 = load i32, i32* @BLOCK_BITS, align 4
  %30 = load i32, i32* %10, align 4
  %31 = shl i32 %30, %29
  store i32 %31, i32* %10, align 4
  %32 = load i32, i32* %8, align 4
  %33 = load i32, i32* %7, align 4
  %34 = load i32, i32* %10, align 4
  %35 = load i32, i32* @BLOCK_SIZE, align 4
  %36 = load i32, i32* @FALSE, align 4
  %37 = call i32 @Ext2BuildExtents(i32* null, i32 %32, i32 %33, i32 %34, i32 %35, i32 %36, %struct.TYPE_4__** %9)
  store i32 %37, i32* %11, align 4
  %38 = load i32, i32* %11, align 4
  %39 = call i32 @NT_SUCCESS(i32 %38)
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %42, label %41

41:                                               ; preds = %28
  br label %54

42:                                               ; preds = %28
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %44 = icmp eq %struct.TYPE_4__* %43, null
  br i1 %44, label %45, label %46

45:                                               ; preds = %42
  br label %54

46:                                               ; preds = %42
  %47 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* @BLOCK_BITS, align 4
  %51 = ashr i32 %49, %50
  %52 = sext i32 %51 to i64
  %53 = trunc i64 %52 to i32
  store i32 %53, i32* %5, align 4
  br label %54

54:                                               ; preds = %46, %45, %41, %27
  %55 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %56 = icmp ne %struct.TYPE_4__* %55, null
  br i1 %56, label %57, label %60

57:                                               ; preds = %54
  %58 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %59 = call i32 @Ext2FreeExtent(%struct.TYPE_4__* %58)
  br label %60

60:                                               ; preds = %57, %54
  %61 = load i32, i32* %5, align 4
  ret i32 %61
}

declare dso_local i32 @Ext2BuildExtents(i32*, i32, i32, i32, i32, i32, %struct.TYPE_4__**) #1

declare dso_local i32 @NT_SUCCESS(i32) #1

declare dso_local i32 @Ext2FreeExtent(%struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
