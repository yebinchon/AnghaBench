; ModuleID = '/home/carl/AnghaBench/reactos/drivers/filesystems/ext2/src/ext4/extr_ext4_xattr.c_ext4_xattr_block_fetch.c'
source_filename = "/home/carl/AnghaBench/reactos/drivers/filesystems/ext2/src/ext4/extr_ext4_xattr.c_ext4_xattr_block_fetch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ext4_xattr_ref = type { i32, i32, %struct.TYPE_3__*, %struct.TYPE_4__* }
%struct.TYPE_3__ = type { i64 }
%struct.TYPE_4__ = type { i32 }
%struct.ext4_xattr_entry = type { i32, i64, i32 }
%struct.ext4_xattr_item = type { i64, i32 }

@FALSE = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ext4_xattr_ref*)* @ext4_xattr_block_fetch to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ext4_xattr_block_fetch(%struct.ext4_xattr_ref* %0) #0 {
  %2 = alloca %struct.ext4_xattr_ref*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.ext4_xattr_entry*, align 8
  %7 = alloca %struct.ext4_xattr_item*, align 8
  %8 = alloca i8*, align 8
  store %struct.ext4_xattr_ref* %0, %struct.ext4_xattr_ref** %2, align 8
  store i32 0, i32* %3, align 4
  store %struct.ext4_xattr_entry* null, %struct.ext4_xattr_entry** %6, align 8
  %9 = load %struct.ext4_xattr_ref*, %struct.ext4_xattr_ref** %2, align 8
  %10 = getelementptr inbounds %struct.ext4_xattr_ref, %struct.ext4_xattr_ref* %9, i32 0, i32 3
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @ASSERT(i32 %13)
  %15 = load %struct.ext4_xattr_ref*, %struct.ext4_xattr_ref** %2, align 8
  %16 = getelementptr inbounds %struct.ext4_xattr_ref, %struct.ext4_xattr_ref* %15, i32 0, i32 3
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %16, align 8
  %18 = call %struct.ext4_xattr_entry* @EXT4_XATTR_BFIRST(%struct.TYPE_4__* %17)
  store %struct.ext4_xattr_entry* %18, %struct.ext4_xattr_entry** %6, align 8
  %19 = load %struct.ext4_xattr_ref*, %struct.ext4_xattr_ref** %2, align 8
  %20 = getelementptr inbounds %struct.ext4_xattr_ref, %struct.ext4_xattr_ref* %19, i32 0, i32 2
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  store i64 %23, i64* %4, align 8
  br label %24

24:                                               ; preds = %108, %1
  %25 = load i64, i64* %4, align 8
  %26 = icmp ugt i64 %25, 0
  br i1 %26, label %27, label %32

27:                                               ; preds = %24
  %28 = load %struct.ext4_xattr_entry*, %struct.ext4_xattr_entry** %6, align 8
  %29 = call i32 @EXT4_XATTR_IS_LAST_ENTRY(%struct.ext4_xattr_entry* %28)
  %30 = icmp ne i32 %29, 0
  %31 = xor i1 %30, true
  br label %32

32:                                               ; preds = %27, %24
  %33 = phi i1 [ false, %24 ], [ %31, %27 ]
  br i1 %33, label %34, label %117

34:                                               ; preds = %32
  %35 = load %struct.ext4_xattr_entry*, %struct.ext4_xattr_entry** %6, align 8
  %36 = call i8* @EXT4_XATTR_NAME(%struct.ext4_xattr_entry* %35)
  store i8* %36, i8** %8, align 8
  %37 = load %struct.ext4_xattr_ref*, %struct.ext4_xattr_ref** %2, align 8
  %38 = load %struct.ext4_xattr_entry*, %struct.ext4_xattr_entry** %6, align 8
  %39 = load i32, i32* @FALSE, align 4
  %40 = call i8* @ext4_xattr_entry_data(%struct.ext4_xattr_ref* %37, %struct.ext4_xattr_entry* %38, i32 %39)
  store i8* %40, i8** %5, align 8
  %41 = load i8*, i8** %5, align 8
  %42 = icmp ne i8* %41, null
  br i1 %42, label %46, label %43

43:                                               ; preds = %34
  %44 = load i32, i32* @EIO, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %3, align 4
  br label %118

46:                                               ; preds = %34
  %47 = load %struct.ext4_xattr_entry*, %struct.ext4_xattr_entry** %6, align 8
  %48 = getelementptr inbounds %struct.ext4_xattr_entry, %struct.ext4_xattr_entry* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 8
  %50 = load i8*, i8** %8, align 8
  %51 = load %struct.ext4_xattr_entry*, %struct.ext4_xattr_entry** %6, align 8
  %52 = getelementptr inbounds %struct.ext4_xattr_entry, %struct.ext4_xattr_entry* %51, i32 0, i32 1
  %53 = load i64, i64* %52, align 8
  %54 = call %struct.ext4_xattr_item* @ext4_xattr_item_alloc(i32 %49, i8* %50, i64 %53)
  store %struct.ext4_xattr_item* %54, %struct.ext4_xattr_item** %7, align 8
  %55 = load %struct.ext4_xattr_item*, %struct.ext4_xattr_item** %7, align 8
  %56 = icmp ne %struct.ext4_xattr_item* %55, null
  br i1 %56, label %60, label %57

57:                                               ; preds = %46
  %58 = load i32, i32* @ENOMEM, align 4
  %59 = sub nsw i32 0, %58
  store i32 %59, i32* %3, align 4
  br label %118

60:                                               ; preds = %46
  %61 = load %struct.ext4_xattr_item*, %struct.ext4_xattr_item** %7, align 8
  %62 = load i8*, i8** %5, align 8
  %63 = load %struct.ext4_xattr_entry*, %struct.ext4_xattr_entry** %6, align 8
  %64 = getelementptr inbounds %struct.ext4_xattr_entry, %struct.ext4_xattr_entry* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = call i32 @le32_to_cpu(i32 %65)
  %67 = call i64 @ext4_xattr_item_alloc_data(%struct.ext4_xattr_item* %61, i8* %62, i32 %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %74

69:                                               ; preds = %60
  %70 = load %struct.ext4_xattr_item*, %struct.ext4_xattr_item** %7, align 8
  %71 = call i32 @ext4_xattr_item_free(%struct.ext4_xattr_item* %70)
  %72 = load i32, i32* @ENOMEM, align 4
  %73 = sub nsw i32 0, %72
  store i32 %73, i32* %3, align 4
  br label %118

74:                                               ; preds = %60
  %75 = load %struct.ext4_xattr_ref*, %struct.ext4_xattr_ref** %2, align 8
  %76 = load %struct.ext4_xattr_item*, %struct.ext4_xattr_item** %7, align 8
  %77 = call i32 @ext4_xattr_item_insert(%struct.ext4_xattr_ref* %75, %struct.ext4_xattr_item* %76)
  %78 = load %struct.ext4_xattr_item*, %struct.ext4_xattr_item** %7, align 8
  %79 = getelementptr inbounds %struct.ext4_xattr_item, %struct.ext4_xattr_item* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 8
  %81 = call i64 @EXT4_XATTR_SIZE(i32 %80)
  %82 = load %struct.ext4_xattr_item*, %struct.ext4_xattr_item** %7, align 8
  %83 = getelementptr inbounds %struct.ext4_xattr_item, %struct.ext4_xattr_item* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = call i64 @EXT4_XATTR_LEN(i64 %84)
  %86 = add nsw i64 %81, %85
  %87 = load %struct.ext4_xattr_ref*, %struct.ext4_xattr_ref** %2, align 8
  %88 = getelementptr inbounds %struct.ext4_xattr_ref, %struct.ext4_xattr_ref* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = sext i32 %89 to i64
  %91 = sub nsw i64 %90, %86
  %92 = trunc i64 %91 to i32
  store i32 %92, i32* %88, align 4
  %93 = load %struct.ext4_xattr_item*, %struct.ext4_xattr_item** %7, align 8
  %94 = getelementptr inbounds %struct.ext4_xattr_item, %struct.ext4_xattr_item* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 8
  %96 = call i64 @EXT4_XATTR_SIZE(i32 %95)
  %97 = load %struct.ext4_xattr_item*, %struct.ext4_xattr_item** %7, align 8
  %98 = getelementptr inbounds %struct.ext4_xattr_item, %struct.ext4_xattr_item* %97, i32 0, i32 0
  %99 = load i64, i64* %98, align 8
  %100 = call i64 @EXT4_XATTR_LEN(i64 %99)
  %101 = add nsw i64 %96, %100
  %102 = load %struct.ext4_xattr_ref*, %struct.ext4_xattr_ref** %2, align 8
  %103 = getelementptr inbounds %struct.ext4_xattr_ref, %struct.ext4_xattr_ref* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 8
  %105 = sext i32 %104 to i64
  %106 = add nsw i64 %105, %101
  %107 = trunc i64 %106 to i32
  store i32 %107, i32* %103, align 8
  br label %108

108:                                              ; preds = %74
  %109 = load %struct.ext4_xattr_entry*, %struct.ext4_xattr_entry** %6, align 8
  %110 = call %struct.ext4_xattr_entry* @EXT4_XATTR_NEXT(%struct.ext4_xattr_entry* %109)
  store %struct.ext4_xattr_entry* %110, %struct.ext4_xattr_entry** %6, align 8
  %111 = load %struct.ext4_xattr_entry*, %struct.ext4_xattr_entry** %6, align 8
  %112 = getelementptr inbounds %struct.ext4_xattr_entry, %struct.ext4_xattr_entry* %111, i32 0, i32 1
  %113 = load i64, i64* %112, align 8
  %114 = call i64 @EXT4_XATTR_LEN(i64 %113)
  %115 = load i64, i64* %4, align 8
  %116 = sub i64 %115, %114
  store i64 %116, i64* %4, align 8
  br label %24

117:                                              ; preds = %32
  br label %118

118:                                              ; preds = %117, %69, %57, %43
  %119 = load i32, i32* %3, align 4
  ret i32 %119
}

declare dso_local i32 @ASSERT(i32) #1

declare dso_local %struct.ext4_xattr_entry* @EXT4_XATTR_BFIRST(%struct.TYPE_4__*) #1

declare dso_local i32 @EXT4_XATTR_IS_LAST_ENTRY(%struct.ext4_xattr_entry*) #1

declare dso_local i8* @EXT4_XATTR_NAME(%struct.ext4_xattr_entry*) #1

declare dso_local i8* @ext4_xattr_entry_data(%struct.ext4_xattr_ref*, %struct.ext4_xattr_entry*, i32) #1

declare dso_local %struct.ext4_xattr_item* @ext4_xattr_item_alloc(i32, i8*, i64) #1

declare dso_local i64 @ext4_xattr_item_alloc_data(%struct.ext4_xattr_item*, i8*, i32) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @ext4_xattr_item_free(%struct.ext4_xattr_item*) #1

declare dso_local i32 @ext4_xattr_item_insert(%struct.ext4_xattr_ref*, %struct.ext4_xattr_item*) #1

declare dso_local i64 @EXT4_XATTR_SIZE(i32) #1

declare dso_local i64 @EXT4_XATTR_LEN(i64) #1

declare dso_local %struct.ext4_xattr_entry* @EXT4_XATTR_NEXT(%struct.ext4_xattr_entry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
