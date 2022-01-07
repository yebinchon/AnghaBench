; ModuleID = '/home/carl/AnghaBench/rufus/src/ext2fs/extr_csum.c_ext2fs_inode_csum.c'
source_filename = "/home/carl/AnghaBench/rufus/src/ext2fs/extr_csum.c_ext2fs_inode_csum.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32 }
%struct.ext2_inode_large = type { i8*, i8*, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_3__*, i32, %struct.ext2_inode_large*, i32*, i32)* @ext2fs_inode_csum to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ext2fs_inode_csum(%struct.TYPE_3__* %0, i32 %1, %struct.ext2_inode_large* %2, i32* %3, i32 %4) #0 {
  %6 = alloca %struct.TYPE_3__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.ext2_inode_large*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.ext2_inode_large*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %6, align 8
  store i32 %1, i32* %7, align 4
  store %struct.ext2_inode_large* %2, %struct.ext2_inode_large** %8, align 8
  store i32* %3, i32** %9, align 8
  store i32 %4, i32* %10, align 4
  %16 = load %struct.ext2_inode_large*, %struct.ext2_inode_large** %8, align 8
  store %struct.ext2_inode_large* %16, %struct.ext2_inode_large** %12, align 8
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = call i64 @EXT2_INODE_SIZE(i32 %19)
  store i64 %20, i64* %13, align 8
  store i8* null, i8** %15, align 8
  %21 = load %struct.ext2_inode_large*, %struct.ext2_inode_large** %8, align 8
  %22 = getelementptr inbounds %struct.ext2_inode_large, %struct.ext2_inode_large* %21, i32 0, i32 1
  %23 = load i8*, i8** %22, align 8
  store i8* %23, i8** %14, align 8
  %24 = load %struct.ext2_inode_large*, %struct.ext2_inode_large** %8, align 8
  %25 = getelementptr inbounds %struct.ext2_inode_large, %struct.ext2_inode_large* %24, i32 0, i32 1
  store i8* null, i8** %25, align 8
  %26 = load i32, i32* %10, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %34

28:                                               ; preds = %5
  %29 = load %struct.ext2_inode_large*, %struct.ext2_inode_large** %8, align 8
  %30 = getelementptr inbounds %struct.ext2_inode_large, %struct.ext2_inode_large* %29, i32 0, i32 0
  %31 = load i8*, i8** %30, align 8
  store i8* %31, i8** %15, align 8
  %32 = load %struct.ext2_inode_large*, %struct.ext2_inode_large** %8, align 8
  %33 = getelementptr inbounds %struct.ext2_inode_large, %struct.ext2_inode_large* %32, i32 0, i32 0
  store i8* null, i8** %33, align 8
  br label %34

34:                                               ; preds = %28, %5
  %35 = load i32, i32* %7, align 4
  %36 = call i32 @ext2fs_cpu_to_le32(i32 %35)
  store i32 %36, i32* %7, align 4
  %37 = load %struct.ext2_inode_large*, %struct.ext2_inode_large** %8, align 8
  %38 = getelementptr inbounds %struct.ext2_inode_large, %struct.ext2_inode_large* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 8
  store i32 %39, i32* %11, align 4
  %40 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = bitcast i32* %7 to i8*
  %44 = call i32 @ext2fs_crc32c_le(i32 %42, i8* %43, i64 4)
  %45 = load i32*, i32** %9, align 8
  store i32 %44, i32* %45, align 4
  %46 = load i32*, i32** %9, align 8
  %47 = load i32, i32* %46, align 4
  %48 = bitcast i32* %11 to i8*
  %49 = call i32 @ext2fs_crc32c_le(i32 %47, i8* %48, i64 4)
  %50 = load i32*, i32** %9, align 8
  store i32 %49, i32* %50, align 4
  %51 = load i32*, i32** %9, align 8
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.ext2_inode_large*, %struct.ext2_inode_large** %12, align 8
  %54 = bitcast %struct.ext2_inode_large* %53 to i8*
  %55 = load i64, i64* %13, align 8
  %56 = call i32 @ext2fs_crc32c_le(i32 %52, i8* %54, i64 %55)
  %57 = load i32*, i32** %9, align 8
  store i32 %56, i32* %57, align 4
  %58 = load i8*, i8** %14, align 8
  %59 = load %struct.ext2_inode_large*, %struct.ext2_inode_large** %8, align 8
  %60 = getelementptr inbounds %struct.ext2_inode_large, %struct.ext2_inode_large* %59, i32 0, i32 1
  store i8* %58, i8** %60, align 8
  %61 = load i32, i32* %10, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %67

63:                                               ; preds = %34
  %64 = load i8*, i8** %15, align 8
  %65 = load %struct.ext2_inode_large*, %struct.ext2_inode_large** %8, align 8
  %66 = getelementptr inbounds %struct.ext2_inode_large, %struct.ext2_inode_large* %65, i32 0, i32 0
  store i8* %64, i8** %66, align 8
  br label %67

67:                                               ; preds = %63, %34
  ret i32 0
}

declare dso_local i64 @EXT2_INODE_SIZE(i32) #1

declare dso_local i32 @ext2fs_cpu_to_le32(i32) #1

declare dso_local i32 @ext2fs_crc32c_le(i32, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
