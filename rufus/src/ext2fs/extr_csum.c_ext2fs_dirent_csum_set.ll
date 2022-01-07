; ModuleID = '/home/carl/AnghaBench/rufus/src/ext2fs/extr_csum.c_ext2fs_dirent_csum_set.c'
source_filename = "/home/carl/AnghaBench/rufus/src/ext2fs/extr_csum.c_ext2fs_dirent_csum_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ext2_dir_entry = type { i32 }
%struct.ext2_dir_entry_tail = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32, i32, %struct.ext2_dir_entry*)* @ext2fs_dirent_csum_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ext2fs_dirent_csum_set(i32 %0, i32 %1, %struct.ext2_dir_entry* %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.ext2_dir_entry*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.ext2_dir_entry_tail*, align 8
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store %struct.ext2_dir_entry* %2, %struct.ext2_dir_entry** %7, align 8
  %11 = load i32, i32* %5, align 4
  %12 = load %struct.ext2_dir_entry*, %struct.ext2_dir_entry** %7, align 8
  %13 = call i64 @__get_dirent_tail(i32 %11, %struct.ext2_dir_entry* %12, %struct.ext2_dir_entry_tail** %10, i32 1)
  store i64 %13, i64* %8, align 8
  %14 = load i64, i64* %8, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %3
  %17 = load i64, i64* %8, align 8
  store i64 %17, i64* %4, align 8
  br label %40

18:                                               ; preds = %3
  %19 = load i32, i32* %5, align 4
  %20 = load i32, i32* %6, align 4
  %21 = load %struct.ext2_dir_entry*, %struct.ext2_dir_entry** %7, align 8
  %22 = load %struct.ext2_dir_entry_tail*, %struct.ext2_dir_entry_tail** %10, align 8
  %23 = bitcast %struct.ext2_dir_entry_tail* %22 to i8*
  %24 = load %struct.ext2_dir_entry*, %struct.ext2_dir_entry** %7, align 8
  %25 = bitcast %struct.ext2_dir_entry* %24 to i8*
  %26 = ptrtoint i8* %23 to i64
  %27 = ptrtoint i8* %25 to i64
  %28 = sub i64 %26, %27
  %29 = trunc i64 %28 to i32
  %30 = call i64 @ext2fs_dirent_csum(i32 %19, i32 %20, %struct.ext2_dir_entry* %21, i32* %9, i32 %29)
  store i64 %30, i64* %8, align 8
  %31 = load i64, i64* %8, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %18
  %34 = load i64, i64* %8, align 8
  store i64 %34, i64* %4, align 8
  br label %40

35:                                               ; preds = %18
  %36 = load i32, i32* %9, align 4
  %37 = call i32 @ext2fs_cpu_to_le32(i32 %36)
  %38 = load %struct.ext2_dir_entry_tail*, %struct.ext2_dir_entry_tail** %10, align 8
  %39 = getelementptr inbounds %struct.ext2_dir_entry_tail, %struct.ext2_dir_entry_tail* %38, i32 0, i32 0
  store i32 %37, i32* %39, align 4
  store i64 0, i64* %4, align 8
  br label %40

40:                                               ; preds = %35, %33, %16
  %41 = load i64, i64* %4, align 8
  ret i64 %41
}

declare dso_local i64 @__get_dirent_tail(i32, %struct.ext2_dir_entry*, %struct.ext2_dir_entry_tail**, i32) #1

declare dso_local i64 @ext2fs_dirent_csum(i32, i32, %struct.ext2_dir_entry*, i32*, i32) #1

declare dso_local i32 @ext2fs_cpu_to_le32(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
