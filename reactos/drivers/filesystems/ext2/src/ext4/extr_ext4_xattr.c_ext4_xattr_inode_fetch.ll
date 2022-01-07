; ModuleID = '/home/carl/AnghaBench/reactos/drivers/filesystems/ext2/src/ext4/extr_ext4_xattr.c_ext4_xattr_inode_fetch.c'
source_filename = "/home/carl/AnghaBench/reactos/drivers/filesystems/ext2/src/ext4/extr_ext4_xattr.c_ext4_xattr_inode_fetch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ext4_xattr_ref = type { i32, i32, %struct.TYPE_4__*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }
%struct.ext4_xattr_ibody_header = type { i32 }
%struct.ext4_xattr_entry = type { i32, i64, i32 }
%struct.ext4_xattr_item = type { i64, i32, i32 }

@EXT4_GOOD_OLD_INODE_SIZE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ext4_xattr_ref*)* @ext4_xattr_inode_fetch to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ext4_xattr_inode_fetch(%struct.ext4_xattr_ref* %0) #0 {
  %2 = alloca %struct.ext4_xattr_ref*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.ext4_xattr_ibody_header*, align 8
  %7 = alloca %struct.ext4_xattr_entry*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.ext4_xattr_item*, align 8
  %10 = alloca i8*, align 8
  store %struct.ext4_xattr_ref* %0, %struct.ext4_xattr_ref** %2, align 8
  store i32 0, i32* %5, align 4
  store %struct.ext4_xattr_ibody_header* null, %struct.ext4_xattr_ibody_header** %6, align 8
  store %struct.ext4_xattr_entry* null, %struct.ext4_xattr_entry** %7, align 8
  %11 = load %struct.ext4_xattr_ref*, %struct.ext4_xattr_ref** %2, align 8
  %12 = getelementptr inbounds %struct.ext4_xattr_ref, %struct.ext4_xattr_ref* %11, i32 0, i32 3
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  store i32 %15, i32* %8, align 4
  %16 = load %struct.ext4_xattr_ref*, %struct.ext4_xattr_ref** %2, align 8
  %17 = getelementptr inbounds %struct.ext4_xattr_ref, %struct.ext4_xattr_ref* %16, i32 0, i32 2
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %17, align 8
  %19 = call %struct.ext4_xattr_ibody_header* @EXT4_XATTR_IHDR(%struct.TYPE_4__* %18)
  store %struct.ext4_xattr_ibody_header* %19, %struct.ext4_xattr_ibody_header** %6, align 8
  %20 = load %struct.ext4_xattr_ibody_header*, %struct.ext4_xattr_ibody_header** %6, align 8
  %21 = call %struct.ext4_xattr_entry* @EXT4_XATTR_IFIRST(%struct.ext4_xattr_ibody_header* %20)
  store %struct.ext4_xattr_entry* %21, %struct.ext4_xattr_entry** %7, align 8
  %22 = load i32, i32* %8, align 4
  %23 = load i32, i32* @EXT4_GOOD_OLD_INODE_SIZE, align 4
  %24 = sub nsw i32 %22, %23
  %25 = load %struct.ext4_xattr_ref*, %struct.ext4_xattr_ref** %2, align 8
  %26 = getelementptr inbounds %struct.ext4_xattr_ref, %struct.ext4_xattr_ref* %25, i32 0, i32 2
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = sub nsw i32 %24, %29
  %31 = sext i32 %30 to i64
  store i64 %31, i64* %4, align 8
  br label %32

32:                                               ; preds = %119, %1
  %33 = load i64, i64* %4, align 8
  %34 = icmp ugt i64 %33, 0
  br i1 %34, label %35, label %40

35:                                               ; preds = %32
  %36 = load %struct.ext4_xattr_entry*, %struct.ext4_xattr_entry** %7, align 8
  %37 = call i32 @EXT4_XATTR_IS_LAST_ENTRY(%struct.ext4_xattr_entry* %36)
  %38 = icmp ne i32 %37, 0
  %39 = xor i1 %38, true
  br label %40

40:                                               ; preds = %35, %32
  %41 = phi i1 [ false, %32 ], [ %39, %35 ]
  br i1 %41, label %42, label %128

42:                                               ; preds = %40
  %43 = load %struct.ext4_xattr_entry*, %struct.ext4_xattr_entry** %7, align 8
  %44 = call i8* @EXT4_XATTR_NAME(%struct.ext4_xattr_entry* %43)
  store i8* %44, i8** %10, align 8
  %45 = load %struct.ext4_xattr_ref*, %struct.ext4_xattr_ref** %2, align 8
  %46 = load %struct.ext4_xattr_entry*, %struct.ext4_xattr_entry** %7, align 8
  %47 = load i32, i32* @TRUE, align 4
  %48 = call i8* @ext4_xattr_entry_data(%struct.ext4_xattr_ref* %45, %struct.ext4_xattr_entry* %46, i32 %47)
  store i8* %48, i8** %3, align 8
  %49 = load i8*, i8** %3, align 8
  %50 = icmp ne i8* %49, null
  br i1 %50, label %54, label %51

51:                                               ; preds = %42
  %52 = load i32, i32* @EIO, align 4
  %53 = sub nsw i32 0, %52
  store i32 %53, i32* %5, align 4
  br label %129

54:                                               ; preds = %42
  %55 = load %struct.ext4_xattr_entry*, %struct.ext4_xattr_entry** %7, align 8
  %56 = getelementptr inbounds %struct.ext4_xattr_entry, %struct.ext4_xattr_entry* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 8
  %58 = load i8*, i8** %10, align 8
  %59 = load %struct.ext4_xattr_entry*, %struct.ext4_xattr_entry** %7, align 8
  %60 = getelementptr inbounds %struct.ext4_xattr_entry, %struct.ext4_xattr_entry* %59, i32 0, i32 1
  %61 = load i64, i64* %60, align 8
  %62 = call %struct.ext4_xattr_item* @ext4_xattr_item_alloc(i32 %57, i8* %58, i64 %61)
  store %struct.ext4_xattr_item* %62, %struct.ext4_xattr_item** %9, align 8
  %63 = load %struct.ext4_xattr_item*, %struct.ext4_xattr_item** %9, align 8
  %64 = icmp ne %struct.ext4_xattr_item* %63, null
  br i1 %64, label %68, label %65

65:                                               ; preds = %54
  %66 = load i32, i32* @ENOMEM, align 4
  %67 = sub nsw i32 0, %66
  store i32 %67, i32* %5, align 4
  br label %129

68:                                               ; preds = %54
  %69 = load %struct.ext4_xattr_item*, %struct.ext4_xattr_item** %9, align 8
  %70 = load i8*, i8** %3, align 8
  %71 = load %struct.ext4_xattr_entry*, %struct.ext4_xattr_entry** %7, align 8
  %72 = getelementptr inbounds %struct.ext4_xattr_entry, %struct.ext4_xattr_entry* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = call i32 @le32_to_cpu(i32 %73)
  %75 = call i64 @ext4_xattr_item_alloc_data(%struct.ext4_xattr_item* %69, i8* %70, i32 %74)
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %82

77:                                               ; preds = %68
  %78 = load %struct.ext4_xattr_item*, %struct.ext4_xattr_item** %9, align 8
  %79 = call i32 @ext4_xattr_item_free(%struct.ext4_xattr_item* %78)
  %80 = load i32, i32* @ENOMEM, align 4
  %81 = sub nsw i32 0, %80
  store i32 %81, i32* %5, align 4
  br label %129

82:                                               ; preds = %68
  %83 = load i32, i32* @TRUE, align 4
  %84 = load %struct.ext4_xattr_item*, %struct.ext4_xattr_item** %9, align 8
  %85 = getelementptr inbounds %struct.ext4_xattr_item, %struct.ext4_xattr_item* %84, i32 0, i32 2
  store i32 %83, i32* %85, align 4
  %86 = load %struct.ext4_xattr_ref*, %struct.ext4_xattr_ref** %2, align 8
  %87 = load %struct.ext4_xattr_item*, %struct.ext4_xattr_item** %9, align 8
  %88 = call i32 @ext4_xattr_item_insert(%struct.ext4_xattr_ref* %86, %struct.ext4_xattr_item* %87)
  %89 = load %struct.ext4_xattr_item*, %struct.ext4_xattr_item** %9, align 8
  %90 = getelementptr inbounds %struct.ext4_xattr_item, %struct.ext4_xattr_item* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 8
  %92 = call i64 @EXT4_XATTR_SIZE(i32 %91)
  %93 = load %struct.ext4_xattr_item*, %struct.ext4_xattr_item** %9, align 8
  %94 = getelementptr inbounds %struct.ext4_xattr_item, %struct.ext4_xattr_item* %93, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = call i64 @EXT4_XATTR_LEN(i64 %95)
  %97 = add nsw i64 %92, %96
  %98 = load %struct.ext4_xattr_ref*, %struct.ext4_xattr_ref** %2, align 8
  %99 = getelementptr inbounds %struct.ext4_xattr_ref, %struct.ext4_xattr_ref* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 4
  %101 = sext i32 %100 to i64
  %102 = sub nsw i64 %101, %97
  %103 = trunc i64 %102 to i32
  store i32 %103, i32* %99, align 4
  %104 = load %struct.ext4_xattr_item*, %struct.ext4_xattr_item** %9, align 8
  %105 = getelementptr inbounds %struct.ext4_xattr_item, %struct.ext4_xattr_item* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 8
  %107 = call i64 @EXT4_XATTR_SIZE(i32 %106)
  %108 = load %struct.ext4_xattr_item*, %struct.ext4_xattr_item** %9, align 8
  %109 = getelementptr inbounds %struct.ext4_xattr_item, %struct.ext4_xattr_item* %108, i32 0, i32 0
  %110 = load i64, i64* %109, align 8
  %111 = call i64 @EXT4_XATTR_LEN(i64 %110)
  %112 = add nsw i64 %107, %111
  %113 = load %struct.ext4_xattr_ref*, %struct.ext4_xattr_ref** %2, align 8
  %114 = getelementptr inbounds %struct.ext4_xattr_ref, %struct.ext4_xattr_ref* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 8
  %116 = sext i32 %115 to i64
  %117 = add nsw i64 %116, %112
  %118 = trunc i64 %117 to i32
  store i32 %118, i32* %114, align 8
  br label %119

119:                                              ; preds = %82
  %120 = load %struct.ext4_xattr_entry*, %struct.ext4_xattr_entry** %7, align 8
  %121 = call %struct.ext4_xattr_entry* @EXT4_XATTR_NEXT(%struct.ext4_xattr_entry* %120)
  store %struct.ext4_xattr_entry* %121, %struct.ext4_xattr_entry** %7, align 8
  %122 = load %struct.ext4_xattr_entry*, %struct.ext4_xattr_entry** %7, align 8
  %123 = getelementptr inbounds %struct.ext4_xattr_entry, %struct.ext4_xattr_entry* %122, i32 0, i32 1
  %124 = load i64, i64* %123, align 8
  %125 = call i64 @EXT4_XATTR_LEN(i64 %124)
  %126 = load i64, i64* %4, align 8
  %127 = sub i64 %126, %125
  store i64 %127, i64* %4, align 8
  br label %32

128:                                              ; preds = %40
  br label %129

129:                                              ; preds = %128, %77, %65, %51
  %130 = load i32, i32* %5, align 4
  ret i32 %130
}

declare dso_local %struct.ext4_xattr_ibody_header* @EXT4_XATTR_IHDR(%struct.TYPE_4__*) #1

declare dso_local %struct.ext4_xattr_entry* @EXT4_XATTR_IFIRST(%struct.ext4_xattr_ibody_header*) #1

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
