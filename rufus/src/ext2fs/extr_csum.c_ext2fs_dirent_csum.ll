; ModuleID = '/home/carl/AnghaBench/rufus/src/ext2fs/extr_csum.c_ext2fs_dirent_csum.c'
source_filename = "/home/carl/AnghaBench/rufus/src/ext2fs/extr_csum.c_ext2fs_dirent_csum.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i8* }
%struct.ext2_dir_entry = type { i32 }
%struct.ext2_inode = type { i8* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_4__*, i8*, %struct.ext2_dir_entry*, i8**, i32)* @ext2fs_dirent_csum to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ext2fs_dirent_csum(%struct.TYPE_4__* %0, i8* %1, %struct.ext2_dir_entry* %2, i8** %3, i32 %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca %struct.TYPE_4__*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.ext2_dir_entry*, align 8
  %10 = alloca i8**, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca %struct.ext2_inode, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %7, align 8
  store i8* %1, i8** %8, align 8
  store %struct.ext2_dir_entry* %2, %struct.ext2_dir_entry** %9, align 8
  store i8** %3, i8*** %10, align 8
  store i32 %4, i32* %11, align 4
  %16 = load %struct.ext2_dir_entry*, %struct.ext2_dir_entry** %9, align 8
  %17 = bitcast %struct.ext2_dir_entry* %16 to i8*
  store i8* %17, i8** %13, align 8
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %19 = load i8*, i8** %8, align 8
  %20 = call i64 @ext2fs_read_inode(%struct.TYPE_4__* %18, i8* %19, %struct.ext2_inode* %15)
  store i64 %20, i64* %12, align 8
  %21 = load i64, i64* %12, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %5
  %24 = load i64, i64* %12, align 8
  store i64 %24, i64* %6, align 8
  br label %48

25:                                               ; preds = %5
  %26 = load i8*, i8** %8, align 8
  %27 = call i8* @ext2fs_cpu_to_le32(i8* %26)
  store i8* %27, i8** %8, align 8
  %28 = getelementptr inbounds %struct.ext2_inode, %struct.ext2_inode* %15, i32 0, i32 0
  %29 = load i8*, i8** %28, align 8
  %30 = call i8* @ext2fs_cpu_to_le32(i8* %29)
  store i8* %30, i8** %14, align 8
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  %33 = load i8*, i8** %32, align 8
  %34 = bitcast i8** %8 to i8*
  %35 = call i8* @ext2fs_crc32c_le(i8* %33, i8* %34, i32 8)
  %36 = load i8**, i8*** %10, align 8
  store i8* %35, i8** %36, align 8
  %37 = load i8**, i8*** %10, align 8
  %38 = load i8*, i8** %37, align 8
  %39 = bitcast i8** %14 to i8*
  %40 = call i8* @ext2fs_crc32c_le(i8* %38, i8* %39, i32 8)
  %41 = load i8**, i8*** %10, align 8
  store i8* %40, i8** %41, align 8
  %42 = load i8**, i8*** %10, align 8
  %43 = load i8*, i8** %42, align 8
  %44 = load i8*, i8** %13, align 8
  %45 = load i32, i32* %11, align 4
  %46 = call i8* @ext2fs_crc32c_le(i8* %43, i8* %44, i32 %45)
  %47 = load i8**, i8*** %10, align 8
  store i8* %46, i8** %47, align 8
  store i64 0, i64* %6, align 8
  br label %48

48:                                               ; preds = %25, %23
  %49 = load i64, i64* %6, align 8
  ret i64 %49
}

declare dso_local i64 @ext2fs_read_inode(%struct.TYPE_4__*, i8*, %struct.ext2_inode*) #1

declare dso_local i8* @ext2fs_cpu_to_le32(i8*) #1

declare dso_local i8* @ext2fs_crc32c_le(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
