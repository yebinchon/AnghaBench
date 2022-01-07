; ModuleID = '/home/carl/AnghaBench/reactos/drivers/filesystems/ext2/src/ext4/extr_ext4_xattr.c_ext4_xattr_fetch.c'
source_filename = "/home/carl/AnghaBench/reactos/drivers/filesystems/ext2/src/ext4/extr_ext4_xattr.c_ext4_xattr_fetch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ext4_xattr_ref = type { i32, i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@EXT4_GOOD_OLD_INODE_SIZE = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ext4_xattr_ref*)* @ext4_xattr_fetch to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ext4_xattr_fetch(%struct.ext4_xattr_ref* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ext4_xattr_ref*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.ext4_xattr_ref* %0, %struct.ext4_xattr_ref** %3, align 8
  store i32 0, i32* %4, align 4
  %6 = load %struct.ext4_xattr_ref*, %struct.ext4_xattr_ref** %3, align 8
  %7 = getelementptr inbounds %struct.ext4_xattr_ref, %struct.ext4_xattr_ref* %6, i32 0, i32 2
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  store i32 %10, i32* %5, align 4
  %11 = load i32, i32* %5, align 4
  %12 = load i32, i32* @EXT4_GOOD_OLD_INODE_SIZE, align 4
  %13 = icmp sgt i32 %11, %12
  br i1 %13, label %14, label %22

14:                                               ; preds = %1
  %15 = load %struct.ext4_xattr_ref*, %struct.ext4_xattr_ref** %3, align 8
  %16 = call i32 @ext4_xattr_inode_fetch(%struct.ext4_xattr_ref* %15)
  store i32 %16, i32* %4, align 4
  %17 = load i32, i32* %4, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %14
  %20 = load i32, i32* %4, align 4
  store i32 %20, i32* %2, align 4
  br label %35

21:                                               ; preds = %14
  br label %22

22:                                               ; preds = %21, %1
  %23 = load %struct.ext4_xattr_ref*, %struct.ext4_xattr_ref** %3, align 8
  %24 = getelementptr inbounds %struct.ext4_xattr_ref, %struct.ext4_xattr_ref* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %22
  %28 = load %struct.ext4_xattr_ref*, %struct.ext4_xattr_ref** %3, align 8
  %29 = call i32 @ext4_xattr_block_fetch(%struct.ext4_xattr_ref* %28)
  store i32 %29, i32* %4, align 4
  br label %30

30:                                               ; preds = %27, %22
  %31 = load i32, i32* @FALSE, align 4
  %32 = load %struct.ext4_xattr_ref*, %struct.ext4_xattr_ref** %3, align 8
  %33 = getelementptr inbounds %struct.ext4_xattr_ref, %struct.ext4_xattr_ref* %32, i32 0, i32 0
  store i32 %31, i32* %33, align 8
  %34 = load i32, i32* %4, align 4
  store i32 %34, i32* %2, align 4
  br label %35

35:                                               ; preds = %30, %19
  %36 = load i32, i32* %2, align 4
  ret i32 %36
}

declare dso_local i32 @ext4_xattr_inode_fetch(%struct.ext4_xattr_ref*) #1

declare dso_local i32 @ext4_xattr_block_fetch(%struct.ext4_xattr_ref*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
