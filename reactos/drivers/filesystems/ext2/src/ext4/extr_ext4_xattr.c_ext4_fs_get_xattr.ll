; ModuleID = '/home/carl/AnghaBench/reactos/drivers/filesystems/ext2/src/ext4/extr_ext4_xattr.c_ext4_fs_get_xattr.c'
source_filename = "/home/carl/AnghaBench/reactos/drivers/filesystems/ext2/src/ext4/extr_ext4_xattr.c_ext4_fs_get_xattr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ext4_xattr_ref = type { i32 }
%struct.ext4_xattr_item = type { i64, i32 }

@ENODATA = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ext4_fs_get_xattr(%struct.ext4_xattr_ref* %0, i32 %1, i8* %2, i64 %3, i8* %4, i64 %5, i64* %6) #0 {
  %8 = alloca %struct.ext4_xattr_ref*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  %17 = alloca %struct.ext4_xattr_item*, align 8
  store %struct.ext4_xattr_ref* %0, %struct.ext4_xattr_ref** %8, align 8
  store i32 %1, i32* %9, align 4
  store i8* %2, i8** %10, align 8
  store i64 %3, i64* %11, align 8
  store i8* %4, i8** %12, align 8
  store i64 %5, i64* %13, align 8
  store i64* %6, i64** %14, align 8
  store i32 0, i32* %15, align 4
  store i64 0, i64* %16, align 8
  %18 = load %struct.ext4_xattr_ref*, %struct.ext4_xattr_ref** %8, align 8
  %19 = load i32, i32* %9, align 4
  %20 = load i8*, i8** %10, align 8
  %21 = load i64, i64* %11, align 8
  %22 = call %struct.ext4_xattr_item* @ext4_xattr_lookup_item(%struct.ext4_xattr_ref* %18, i32 %19, i8* %20, i64 %21)
  store %struct.ext4_xattr_item* %22, %struct.ext4_xattr_item** %17, align 8
  %23 = load %struct.ext4_xattr_item*, %struct.ext4_xattr_item** %17, align 8
  %24 = icmp ne %struct.ext4_xattr_item* %23, null
  br i1 %24, label %28, label %25

25:                                               ; preds = %7
  %26 = load i32, i32* @ENODATA, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %15, align 4
  br label %48

28:                                               ; preds = %7
  %29 = load %struct.ext4_xattr_item*, %struct.ext4_xattr_item** %17, align 8
  %30 = getelementptr inbounds %struct.ext4_xattr_item, %struct.ext4_xattr_item* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  store i64 %31, i64* %16, align 8
  %32 = load i64, i64* %13, align 8
  %33 = load i64, i64* %16, align 8
  %34 = icmp ugt i64 %32, %33
  br i1 %34, label %35, label %37

35:                                               ; preds = %28
  %36 = load i64, i64* %16, align 8
  store i64 %36, i64* %13, align 8
  br label %37

37:                                               ; preds = %35, %28
  %38 = load i8*, i8** %12, align 8
  %39 = icmp ne i8* %38, null
  br i1 %39, label %40, label %47

40:                                               ; preds = %37
  %41 = load i8*, i8** %12, align 8
  %42 = load %struct.ext4_xattr_item*, %struct.ext4_xattr_item** %17, align 8
  %43 = getelementptr inbounds %struct.ext4_xattr_item, %struct.ext4_xattr_item* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 8
  %45 = load i64, i64* %13, align 8
  %46 = call i32 @memcpy(i8* %41, i32 %44, i64 %45)
  br label %47

47:                                               ; preds = %40, %37
  br label %48

48:                                               ; preds = %47, %25
  %49 = load i64*, i64** %14, align 8
  %50 = icmp ne i64* %49, null
  br i1 %50, label %51, label %54

51:                                               ; preds = %48
  %52 = load i64, i64* %16, align 8
  %53 = load i64*, i64** %14, align 8
  store i64 %52, i64* %53, align 8
  br label %54

54:                                               ; preds = %51, %48
  %55 = load i32, i32* %15, align 4
  ret i32 %55
}

declare dso_local %struct.ext4_xattr_item* @ext4_xattr_lookup_item(%struct.ext4_xattr_ref*, i32, i8*, i64) #1

declare dso_local i32 @memcpy(i8*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
