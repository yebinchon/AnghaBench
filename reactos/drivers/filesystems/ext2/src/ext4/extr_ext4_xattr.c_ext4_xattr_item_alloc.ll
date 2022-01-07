; ModuleID = '/home/carl/AnghaBench/reactos/drivers/filesystems/ext2/src/ext4/extr_ext4_xattr.c_ext4_xattr_item_alloc.c'
source_filename = "/home/carl/AnghaBench/reactos/drivers/filesystems/ext2/src/ext4/extr_ext4_xattr.c_ext4_xattr_item_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ext4_xattr_item = type { i8*, i64, i32, i32, i64, i32*, i64 }

@GFP_NOFS = common dso_local global i32 0, align 4
@EXT4_XATTR_INDEX_SYSTEM = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [5 x i8] c"data\00", align 1
@TRUE = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.ext4_xattr_item* (i64, i8*, i64)* @ext4_xattr_item_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.ext4_xattr_item* @ext4_xattr_item_alloc(i64 %0, i8* %1, i64 %2) #0 {
  %4 = alloca %struct.ext4_xattr_item*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.ext4_xattr_item*, align 8
  store i64 %0, i64* %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %9 = load i64, i64* %7, align 8
  %10 = add i64 48, %9
  %11 = trunc i64 %10 to i32
  %12 = load i32, i32* @GFP_NOFS, align 4
  %13 = call %struct.ext4_xattr_item* @kzalloc(i32 %11, i32 %12)
  store %struct.ext4_xattr_item* %13, %struct.ext4_xattr_item** %8, align 8
  %14 = load %struct.ext4_xattr_item*, %struct.ext4_xattr_item** %8, align 8
  %15 = icmp ne %struct.ext4_xattr_item* %14, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %3
  store %struct.ext4_xattr_item* null, %struct.ext4_xattr_item** %4, align 8
  br label %62

17:                                               ; preds = %3
  %18 = load i64, i64* %5, align 8
  %19 = load %struct.ext4_xattr_item*, %struct.ext4_xattr_item** %8, align 8
  %20 = getelementptr inbounds %struct.ext4_xattr_item, %struct.ext4_xattr_item* %19, i32 0, i32 6
  store i64 %18, i64* %20, align 8
  %21 = load %struct.ext4_xattr_item*, %struct.ext4_xattr_item** %8, align 8
  %22 = getelementptr inbounds %struct.ext4_xattr_item, %struct.ext4_xattr_item* %21, i64 1
  %23 = bitcast %struct.ext4_xattr_item* %22 to i8*
  %24 = load %struct.ext4_xattr_item*, %struct.ext4_xattr_item** %8, align 8
  %25 = getelementptr inbounds %struct.ext4_xattr_item, %struct.ext4_xattr_item* %24, i32 0, i32 0
  store i8* %23, i8** %25, align 8
  %26 = load i64, i64* %7, align 8
  %27 = load %struct.ext4_xattr_item*, %struct.ext4_xattr_item** %8, align 8
  %28 = getelementptr inbounds %struct.ext4_xattr_item, %struct.ext4_xattr_item* %27, i32 0, i32 1
  store i64 %26, i64* %28, align 8
  %29 = load %struct.ext4_xattr_item*, %struct.ext4_xattr_item** %8, align 8
  %30 = getelementptr inbounds %struct.ext4_xattr_item, %struct.ext4_xattr_item* %29, i32 0, i32 5
  store i32* null, i32** %30, align 8
  %31 = load %struct.ext4_xattr_item*, %struct.ext4_xattr_item** %8, align 8
  %32 = getelementptr inbounds %struct.ext4_xattr_item, %struct.ext4_xattr_item* %31, i32 0, i32 4
  store i64 0, i64* %32, align 8
  %33 = load %struct.ext4_xattr_item*, %struct.ext4_xattr_item** %8, align 8
  %34 = getelementptr inbounds %struct.ext4_xattr_item, %struct.ext4_xattr_item* %33, i32 0, i32 3
  %35 = call i32 @INIT_LIST_HEAD(i32* %34)
  %36 = load %struct.ext4_xattr_item*, %struct.ext4_xattr_item** %8, align 8
  %37 = getelementptr inbounds %struct.ext4_xattr_item, %struct.ext4_xattr_item* %36, i32 0, i32 0
  %38 = load i8*, i8** %37, align 8
  %39 = load i8*, i8** %6, align 8
  %40 = load i64, i64* %7, align 8
  %41 = call i32 @memcpy(i8* %38, i8* %39, i64 %40)
  %42 = load i64, i64* %5, align 8
  %43 = load i64, i64* @EXT4_XATTR_INDEX_SYSTEM, align 8
  %44 = icmp eq i64 %42, %43
  br i1 %44, label %45, label %56

45:                                               ; preds = %17
  %46 = load i64, i64* %7, align 8
  %47 = icmp eq i64 %46, 4
  br i1 %47, label %48, label %56

48:                                               ; preds = %45
  %49 = load i8*, i8** %6, align 8
  %50 = call i32 @memcmp(i8* %49, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 4)
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %56, label %52

52:                                               ; preds = %48
  %53 = load i32, i32* @TRUE, align 4
  %54 = load %struct.ext4_xattr_item*, %struct.ext4_xattr_item** %8, align 8
  %55 = getelementptr inbounds %struct.ext4_xattr_item, %struct.ext4_xattr_item* %54, i32 0, i32 2
  store i32 %53, i32* %55, align 8
  br label %60

56:                                               ; preds = %48, %45, %17
  %57 = load i32, i32* @FALSE, align 4
  %58 = load %struct.ext4_xattr_item*, %struct.ext4_xattr_item** %8, align 8
  %59 = getelementptr inbounds %struct.ext4_xattr_item, %struct.ext4_xattr_item* %58, i32 0, i32 2
  store i32 %57, i32* %59, align 8
  br label %60

60:                                               ; preds = %56, %52
  %61 = load %struct.ext4_xattr_item*, %struct.ext4_xattr_item** %8, align 8
  store %struct.ext4_xattr_item* %61, %struct.ext4_xattr_item** %4, align 8
  br label %62

62:                                               ; preds = %60, %16
  %63 = load %struct.ext4_xattr_item*, %struct.ext4_xattr_item** %4, align 8
  ret %struct.ext4_xattr_item* %63
}

declare dso_local %struct.ext4_xattr_item* @kzalloc(i32, i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @memcpy(i8*, i8*, i64) #1

declare dso_local i32 @memcmp(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
