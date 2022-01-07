; ModuleID = '/home/carl/AnghaBench/rufus/src/ext2fs/extr_ext_attr.c_ext2fs_xattrs_close.c'
source_filename = "/home/carl/AnghaBench/rufus/src/ext2fs/extr_ext_attr.c_ext2fs_xattrs_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ext2_xattr_handle = type { %struct.ext2_xattr_handle* }

@EXT2_ET_MAGIC_EA_HANDLE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ext2fs_xattrs_close(%struct.ext2_xattr_handle** %0) #0 {
  %2 = alloca %struct.ext2_xattr_handle**, align 8
  %3 = alloca %struct.ext2_xattr_handle*, align 8
  store %struct.ext2_xattr_handle** %0, %struct.ext2_xattr_handle*** %2, align 8
  %4 = load %struct.ext2_xattr_handle**, %struct.ext2_xattr_handle*** %2, align 8
  %5 = load %struct.ext2_xattr_handle*, %struct.ext2_xattr_handle** %4, align 8
  store %struct.ext2_xattr_handle* %5, %struct.ext2_xattr_handle** %3, align 8
  %6 = load %struct.ext2_xattr_handle*, %struct.ext2_xattr_handle** %3, align 8
  %7 = load i32, i32* @EXT2_ET_MAGIC_EA_HANDLE, align 4
  %8 = call i32 @EXT2_CHECK_MAGIC(%struct.ext2_xattr_handle* %6, i32 %7)
  %9 = load %struct.ext2_xattr_handle*, %struct.ext2_xattr_handle** %3, align 8
  %10 = call i32 @xattrs_free_keys(%struct.ext2_xattr_handle* %9)
  %11 = load %struct.ext2_xattr_handle*, %struct.ext2_xattr_handle** %3, align 8
  %12 = getelementptr inbounds %struct.ext2_xattr_handle, %struct.ext2_xattr_handle* %11, i32 0, i32 0
  %13 = call i32 @ext2fs_free_mem(%struct.ext2_xattr_handle** %12)
  %14 = load %struct.ext2_xattr_handle**, %struct.ext2_xattr_handle*** %2, align 8
  %15 = call i32 @ext2fs_free_mem(%struct.ext2_xattr_handle** %14)
  ret i32 0
}

declare dso_local i32 @EXT2_CHECK_MAGIC(%struct.ext2_xattr_handle*, i32) #1

declare dso_local i32 @xattrs_free_keys(%struct.ext2_xattr_handle*) #1

declare dso_local i32 @ext2fs_free_mem(%struct.ext2_xattr_handle**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
