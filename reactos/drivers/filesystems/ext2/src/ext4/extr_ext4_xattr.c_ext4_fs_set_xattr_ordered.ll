; ModuleID = '/home/carl/AnghaBench/reactos/drivers/filesystems/ext2/src/ext4/extr_ext4_xattr.c_ext4_fs_set_xattr_ordered.c'
source_filename = "/home/carl/AnghaBench/reactos/drivers/filesystems/ext2/src/ext4/extr_ext4_xattr.c_ext4_fs_set_xattr_ordered.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ext4_xattr_ref = type { i32 }
%struct.ext4_xattr_item = type { i32 }

@EEXIST = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ext4_fs_set_xattr_ordered(%struct.ext4_xattr_ref* %0, i32 %1, i8* %2, i64 %3, i8* %4, i64 %5) #0 {
  %7 = alloca %struct.ext4_xattr_ref*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.ext4_xattr_item*, align 8
  store %struct.ext4_xattr_ref* %0, %struct.ext4_xattr_ref** %7, align 8
  store i32 %1, i32* %8, align 4
  store i8* %2, i8** %9, align 8
  store i64 %3, i64* %10, align 8
  store i8* %4, i8** %11, align 8
  store i64 %5, i64* %12, align 8
  store i32 0, i32* %13, align 4
  %15 = load %struct.ext4_xattr_ref*, %struct.ext4_xattr_ref** %7, align 8
  %16 = load i32, i32* %8, align 4
  %17 = load i8*, i8** %9, align 8
  %18 = load i64, i64* %10, align 8
  %19 = call %struct.ext4_xattr_item* @ext4_xattr_lookup_item(%struct.ext4_xattr_ref* %15, i32 %16, i8* %17, i64 %18)
  store %struct.ext4_xattr_item* %19, %struct.ext4_xattr_item** %14, align 8
  %20 = load %struct.ext4_xattr_item*, %struct.ext4_xattr_item** %14, align 8
  %21 = icmp ne %struct.ext4_xattr_item* %20, null
  br i1 %21, label %22, label %25

22:                                               ; preds = %6
  %23 = load i32, i32* @EEXIST, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %13, align 4
  br label %33

25:                                               ; preds = %6
  %26 = load %struct.ext4_xattr_ref*, %struct.ext4_xattr_ref** %7, align 8
  %27 = load i32, i32* %8, align 4
  %28 = load i8*, i8** %9, align 8
  %29 = load i64, i64* %10, align 8
  %30 = load i8*, i8** %11, align 8
  %31 = load i64, i64* %12, align 8
  %32 = call %struct.ext4_xattr_item* @ext4_xattr_insert_item_ordered(%struct.ext4_xattr_ref* %26, i32 %27, i8* %28, i64 %29, i8* %30, i64 %31, i32* %13)
  store %struct.ext4_xattr_item* %32, %struct.ext4_xattr_item** %14, align 8
  br label %33

33:                                               ; preds = %25, %22
  %34 = load i32, i32* %13, align 4
  ret i32 %34
}

declare dso_local %struct.ext4_xattr_item* @ext4_xattr_lookup_item(%struct.ext4_xattr_ref*, i32, i8*, i64) #1

declare dso_local %struct.ext4_xattr_item* @ext4_xattr_insert_item_ordered(%struct.ext4_xattr_ref*, i32, i8*, i64, i8*, i64, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
