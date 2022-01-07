; ModuleID = '/home/carl/AnghaBench/rufus/src/ext2fs/extr_ext_attr.c_xattrs_free_keys.c'
source_filename = "/home/carl/AnghaBench/rufus/src/ext2fs/extr_ext_attr.c_xattrs_free_keys.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ext2_xattr_handle = type { i32, i64, i64, %struct.ext2_xattr* }
%struct.ext2_xattr = type { i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ext2_xattr_handle*)* @xattrs_free_keys to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xattrs_free_keys(%struct.ext2_xattr_handle* %0) #0 {
  %2 = alloca %struct.ext2_xattr_handle*, align 8
  %3 = alloca %struct.ext2_xattr*, align 8
  %4 = alloca i32, align 4
  store %struct.ext2_xattr_handle* %0, %struct.ext2_xattr_handle** %2, align 8
  %5 = load %struct.ext2_xattr_handle*, %struct.ext2_xattr_handle** %2, align 8
  %6 = getelementptr inbounds %struct.ext2_xattr_handle, %struct.ext2_xattr_handle* %5, i32 0, i32 3
  %7 = load %struct.ext2_xattr*, %struct.ext2_xattr** %6, align 8
  store %struct.ext2_xattr* %7, %struct.ext2_xattr** %3, align 8
  store i32 0, i32* %4, align 4
  br label %8

8:                                                ; preds = %45, %1
  %9 = load i32, i32* %4, align 4
  %10 = load %struct.ext2_xattr_handle*, %struct.ext2_xattr_handle** %2, align 8
  %11 = getelementptr inbounds %struct.ext2_xattr_handle, %struct.ext2_xattr_handle* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = icmp slt i32 %9, %12
  br i1 %13, label %14, label %48

14:                                               ; preds = %8
  %15 = load %struct.ext2_xattr*, %struct.ext2_xattr** %3, align 8
  %16 = load i32, i32* %4, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds %struct.ext2_xattr, %struct.ext2_xattr* %15, i64 %17
  %19 = getelementptr inbounds %struct.ext2_xattr, %struct.ext2_xattr* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %29

22:                                               ; preds = %14
  %23 = load %struct.ext2_xattr*, %struct.ext2_xattr** %3, align 8
  %24 = load i32, i32* %4, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds %struct.ext2_xattr, %struct.ext2_xattr* %23, i64 %25
  %27 = getelementptr inbounds %struct.ext2_xattr, %struct.ext2_xattr* %26, i32 0, i32 1
  %28 = call i32 @ext2fs_free_mem(i64* %27)
  br label %29

29:                                               ; preds = %22, %14
  %30 = load %struct.ext2_xattr*, %struct.ext2_xattr** %3, align 8
  %31 = load i32, i32* %4, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds %struct.ext2_xattr, %struct.ext2_xattr* %30, i64 %32
  %34 = getelementptr inbounds %struct.ext2_xattr, %struct.ext2_xattr* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %44

37:                                               ; preds = %29
  %38 = load %struct.ext2_xattr*, %struct.ext2_xattr** %3, align 8
  %39 = load i32, i32* %4, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds %struct.ext2_xattr, %struct.ext2_xattr* %38, i64 %40
  %42 = getelementptr inbounds %struct.ext2_xattr, %struct.ext2_xattr* %41, i32 0, i32 0
  %43 = call i32 @ext2fs_free_mem(i64* %42)
  br label %44

44:                                               ; preds = %37, %29
  br label %45

45:                                               ; preds = %44
  %46 = load i32, i32* %4, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %4, align 4
  br label %8

48:                                               ; preds = %8
  %49 = load %struct.ext2_xattr_handle*, %struct.ext2_xattr_handle** %2, align 8
  %50 = getelementptr inbounds %struct.ext2_xattr_handle, %struct.ext2_xattr_handle* %49, i32 0, i32 2
  store i64 0, i64* %50, align 8
  %51 = load %struct.ext2_xattr_handle*, %struct.ext2_xattr_handle** %2, align 8
  %52 = getelementptr inbounds %struct.ext2_xattr_handle, %struct.ext2_xattr_handle* %51, i32 0, i32 1
  store i64 0, i64* %52, align 8
  ret void
}

declare dso_local i32 @ext2fs_free_mem(i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
