; ModuleID = '/home/carl/AnghaBench/rufus/src/ext2fs/extr_csum.c_ext2fs_dirent_csum_verify.c'
source_filename = "/home/carl/AnghaBench/rufus/src/ext2fs/extr_csum.c_ext2fs_dirent_csum_verify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ext2_dir_entry = type { i32 }
%struct.ext2_dir_entry_tail = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ext2fs_dirent_csum_verify(i32 %0, i32 %1, %struct.ext2_dir_entry* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.ext2_dir_entry*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
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
  br i1 %15, label %16, label %17

16:                                               ; preds = %3
  store i32 1, i32* %4, align 4
  br label %41

17:                                               ; preds = %3
  %18 = load i32, i32* %5, align 4
  %19 = load i32, i32* %6, align 4
  %20 = load %struct.ext2_dir_entry*, %struct.ext2_dir_entry** %7, align 8
  %21 = load %struct.ext2_dir_entry_tail*, %struct.ext2_dir_entry_tail** %10, align 8
  %22 = bitcast %struct.ext2_dir_entry_tail* %21 to i8*
  %23 = load %struct.ext2_dir_entry*, %struct.ext2_dir_entry** %7, align 8
  %24 = bitcast %struct.ext2_dir_entry* %23 to i8*
  %25 = ptrtoint i8* %22 to i64
  %26 = ptrtoint i8* %24 to i64
  %27 = sub i64 %25, %26
  %28 = trunc i64 %27 to i32
  %29 = call i64 @ext2fs_dirent_csum(i32 %18, i32 %19, %struct.ext2_dir_entry* %20, i64* %9, i32 %28)
  store i64 %29, i64* %8, align 8
  %30 = load i64, i64* %8, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %17
  store i32 0, i32* %4, align 4
  br label %41

33:                                               ; preds = %17
  %34 = load %struct.ext2_dir_entry_tail*, %struct.ext2_dir_entry_tail** %10, align 8
  %35 = getelementptr inbounds %struct.ext2_dir_entry_tail, %struct.ext2_dir_entry_tail* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i64 @ext2fs_le32_to_cpu(i32 %36)
  %38 = load i64, i64* %9, align 8
  %39 = icmp eq i64 %37, %38
  %40 = zext i1 %39 to i32
  store i32 %40, i32* %4, align 4
  br label %41

41:                                               ; preds = %33, %32, %16
  %42 = load i32, i32* %4, align 4
  ret i32 %42
}

declare dso_local i64 @__get_dirent_tail(i32, %struct.ext2_dir_entry*, %struct.ext2_dir_entry_tail**, i32) #1

declare dso_local i64 @ext2fs_dirent_csum(i32, i32, %struct.ext2_dir_entry*, i64*, i32) #1

declare dso_local i64 @ext2fs_le32_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
