; ModuleID = '/home/carl/AnghaBench/rufus/src/ext2fs/extr_lookup.c_ext2fs_lookup.c'
source_filename = "/home/carl/AnghaBench/rufus/src/ext2fs/extr_lookup.c_ext2fs_lookup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lookup_struct = type { i8*, i32, i64, i32* }

@EXT2_ET_MAGIC_EXT2FS_FILSYS = common dso_local global i32 0, align 4
@lookup_proc = common dso_local global i32 0, align 4
@EXT2_ET_FILE_NOT_FOUND = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @ext2fs_lookup(i32 %0, i32 %1, i8* %2, i32 %3, i8* %4, i32* %5) #0 {
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i64, align 8
  %15 = alloca %struct.lookup_struct, align 8
  store i32 %0, i32* %8, align 4
  store i32 %1, i32* %9, align 4
  store i8* %2, i8** %10, align 8
  store i32 %3, i32* %11, align 4
  store i8* %4, i8** %12, align 8
  store i32* %5, i32** %13, align 8
  %16 = load i32, i32* %8, align 4
  %17 = load i32, i32* @EXT2_ET_MAGIC_EXT2FS_FILSYS, align 4
  %18 = call i32 @EXT2_CHECK_MAGIC(i32 %16, i32 %17)
  %19 = load i8*, i8** %10, align 8
  %20 = getelementptr inbounds %struct.lookup_struct, %struct.lookup_struct* %15, i32 0, i32 0
  store i8* %19, i8** %20, align 8
  %21 = load i32, i32* %11, align 4
  %22 = getelementptr inbounds %struct.lookup_struct, %struct.lookup_struct* %15, i32 0, i32 1
  store i32 %21, i32* %22, align 8
  %23 = load i32*, i32** %13, align 8
  %24 = getelementptr inbounds %struct.lookup_struct, %struct.lookup_struct* %15, i32 0, i32 3
  store i32* %23, i32** %24, align 8
  %25 = getelementptr inbounds %struct.lookup_struct, %struct.lookup_struct* %15, i32 0, i32 2
  store i64 0, i64* %25, align 8
  %26 = load i32, i32* %8, align 4
  %27 = load i32, i32* %9, align 4
  %28 = load i8*, i8** %12, align 8
  %29 = load i32, i32* @lookup_proc, align 4
  %30 = call i64 @ext2fs_dir_iterate(i32 %26, i32 %27, i32 0, i8* %28, i32 %29, %struct.lookup_struct* %15)
  store i64 %30, i64* %14, align 8
  %31 = load i64, i64* %14, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %6
  %34 = load i64, i64* %14, align 8
  store i64 %34, i64* %7, align 8
  br label %44

35:                                               ; preds = %6
  %36 = getelementptr inbounds %struct.lookup_struct, %struct.lookup_struct* %15, i32 0, i32 2
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %35
  br label %42

40:                                               ; preds = %35
  %41 = load i64, i64* @EXT2_ET_FILE_NOT_FOUND, align 8
  br label %42

42:                                               ; preds = %40, %39
  %43 = phi i64 [ 0, %39 ], [ %41, %40 ]
  store i64 %43, i64* %7, align 8
  br label %44

44:                                               ; preds = %42, %33
  %45 = load i64, i64* %7, align 8
  ret i64 %45
}

declare dso_local i32 @EXT2_CHECK_MAGIC(i32, i32) #1

declare dso_local i64 @ext2fs_dir_iterate(i32, i32, i32, i8*, i32, %struct.lookup_struct*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
