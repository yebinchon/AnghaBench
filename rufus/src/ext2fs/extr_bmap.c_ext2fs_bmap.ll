; ModuleID = '/home/carl/AnghaBench/rufus/src/ext2fs/extr_bmap.c_ext2fs_bmap.c'
source_filename = "/home/carl/AnghaBench/rufus/src/ext2fs/extr_bmap.c_ext2fs_bmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ext2_inode = type { i32 }

@EOVERFLOW = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @ext2fs_bmap(i32 %0, i32 %1, %struct.ext2_inode* %2, i8* %3, i32 %4, i64 %5, i64* %6) #0 {
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.ext2_inode*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i64*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  store i32 %0, i32* %9, align 4
  store i32 %1, i32* %10, align 4
  store %struct.ext2_inode* %2, %struct.ext2_inode** %11, align 8
  store i8* %3, i8** %12, align 8
  store i32 %4, i32* %13, align 4
  store i64 %5, i64* %14, align 8
  store i64* %6, i64** %15, align 8
  %18 = load i64*, i64** %15, align 8
  %19 = load i64, i64* %18, align 8
  store i64 %19, i64* %17, align 8
  %20 = load i32, i32* %9, align 4
  %21 = load i32, i32* %10, align 4
  %22 = load %struct.ext2_inode*, %struct.ext2_inode** %11, align 8
  %23 = load i8*, i8** %12, align 8
  %24 = load i32, i32* %13, align 4
  %25 = load i64, i64* %14, align 8
  %26 = call i64 @ext2fs_bmap2(i32 %20, i32 %21, %struct.ext2_inode* %22, i8* %23, i32 %24, i64 %25, i32 0, i64* %17)
  store i64 %26, i64* %16, align 8
  %27 = load i64, i64* %16, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %7
  %30 = load i64, i64* %16, align 8
  store i64 %30, i64* %8, align 8
  br label %39

31:                                               ; preds = %7
  %32 = load i64, i64* %17, align 8
  %33 = icmp sge i64 %32, 4294967296
  br i1 %33, label %34, label %36

34:                                               ; preds = %31
  %35 = load i64, i64* @EOVERFLOW, align 8
  store i64 %35, i64* %8, align 8
  br label %39

36:                                               ; preds = %31
  %37 = load i64, i64* %17, align 8
  %38 = load i64*, i64** %15, align 8
  store i64 %37, i64* %38, align 8
  store i64 0, i64* %8, align 8
  br label %39

39:                                               ; preds = %36, %34, %29
  %40 = load i64, i64* %8, align 8
  ret i64 %40
}

declare dso_local i64 @ext2fs_bmap2(i32, i32, %struct.ext2_inode*, i8*, i32, i64, i32, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
