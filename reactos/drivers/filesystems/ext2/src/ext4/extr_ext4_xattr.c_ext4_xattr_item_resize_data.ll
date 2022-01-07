; ModuleID = '/home/carl/AnghaBench/reactos/drivers/filesystems/ext2/src/ext4/extr_ext4_xattr.c_ext4_xattr_item_resize_data.c'
source_filename = "/home/carl/AnghaBench/reactos/drivers/filesystems/ext2/src/ext4/extr_ext4_xattr.c_ext4_xattr_item_resize_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ext4_xattr_item = type { i64, i8* }

@GFP_NOFS = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ext4_xattr_item*, i64)* @ext4_xattr_item_resize_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ext4_xattr_item_resize_data(%struct.ext4_xattr_item* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ext4_xattr_item*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  store %struct.ext4_xattr_item* %0, %struct.ext4_xattr_item** %4, align 8
  store i64 %1, i64* %5, align 8
  %7 = load i64, i64* %5, align 8
  %8 = load %struct.ext4_xattr_item*, %struct.ext4_xattr_item** %4, align 8
  %9 = getelementptr inbounds %struct.ext4_xattr_item, %struct.ext4_xattr_item* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = icmp ne i64 %7, %10
  br i1 %11, label %12, label %40

12:                                               ; preds = %2
  %13 = load i64, i64* %5, align 8
  %14 = load i32, i32* @GFP_NOFS, align 4
  %15 = call i8* @kmalloc(i64 %13, i32 %14)
  store i8* %15, i8** %6, align 8
  %16 = load i8*, i8** %6, align 8
  %17 = icmp ne i8* %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %12
  %19 = load i32, i32* @ENOMEM, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %3, align 4
  br label %41

21:                                               ; preds = %12
  %22 = load i8*, i8** %6, align 8
  %23 = load %struct.ext4_xattr_item*, %struct.ext4_xattr_item** %4, align 8
  %24 = getelementptr inbounds %struct.ext4_xattr_item, %struct.ext4_xattr_item* %23, i32 0, i32 1
  %25 = load i8*, i8** %24, align 8
  %26 = load %struct.ext4_xattr_item*, %struct.ext4_xattr_item** %4, align 8
  %27 = getelementptr inbounds %struct.ext4_xattr_item, %struct.ext4_xattr_item* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = call i32 @memcpy(i8* %22, i8* %25, i64 %28)
  %30 = load %struct.ext4_xattr_item*, %struct.ext4_xattr_item** %4, align 8
  %31 = getelementptr inbounds %struct.ext4_xattr_item, %struct.ext4_xattr_item* %30, i32 0, i32 1
  %32 = load i8*, i8** %31, align 8
  %33 = call i32 @kfree(i8* %32)
  %34 = load i8*, i8** %6, align 8
  %35 = load %struct.ext4_xattr_item*, %struct.ext4_xattr_item** %4, align 8
  %36 = getelementptr inbounds %struct.ext4_xattr_item, %struct.ext4_xattr_item* %35, i32 0, i32 1
  store i8* %34, i8** %36, align 8
  %37 = load i64, i64* %5, align 8
  %38 = load %struct.ext4_xattr_item*, %struct.ext4_xattr_item** %4, align 8
  %39 = getelementptr inbounds %struct.ext4_xattr_item, %struct.ext4_xattr_item* %38, i32 0, i32 0
  store i64 %37, i64* %39, align 8
  br label %40

40:                                               ; preds = %21, %2
  store i32 0, i32* %3, align 4
  br label %41

41:                                               ; preds = %40, %18
  %42 = load i32, i32* %3, align 4
  ret i32 %42
}

declare dso_local i8* @kmalloc(i64, i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i64) #1

declare dso_local i32 @kfree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
