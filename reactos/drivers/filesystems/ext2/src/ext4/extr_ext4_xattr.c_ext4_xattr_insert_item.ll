; ModuleID = '/home/carl/AnghaBench/reactos/drivers/filesystems/ext2/src/ext4/extr_ext4_xattr.c_ext4_xattr_insert_item.c'
source_filename = "/home/carl/AnghaBench/reactos/drivers/filesystems/ext2/src/ext4/extr_ext4_xattr.c_ext4_xattr_insert_item.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ext4_xattr_item = type { i64, i32, i8* }
%struct.ext4_xattr_ref = type { i64, i64, i8*, i32 }

@ENOMEM = common dso_local global i32 0, align 4
@TRUE = common dso_local global i8* null, align 8
@ENOSPC = common dso_local global i32 0, align 4
@FALSE = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.ext4_xattr_item* (%struct.ext4_xattr_ref*, i32, i8*, i64, i8*, i64, i32*)* @ext4_xattr_insert_item to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.ext4_xattr_item* @ext4_xattr_insert_item(%struct.ext4_xattr_ref* %0, i32 %1, i8* %2, i64 %3, i8* %4, i64 %5, i32* %6) #0 {
  %8 = alloca %struct.ext4_xattr_item*, align 8
  %9 = alloca %struct.ext4_xattr_ref*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32*, align 8
  %16 = alloca %struct.ext4_xattr_item*, align 8
  store %struct.ext4_xattr_ref* %0, %struct.ext4_xattr_ref** %9, align 8
  store i32 %1, i32* %10, align 4
  store i8* %2, i8** %11, align 8
  store i64 %3, i64* %12, align 8
  store i8* %4, i8** %13, align 8
  store i64 %5, i64* %14, align 8
  store i32* %6, i32** %15, align 8
  %17 = load i32, i32* %10, align 4
  %18 = load i8*, i8** %11, align 8
  %19 = load i64, i64* %12, align 8
  %20 = call %struct.ext4_xattr_item* @ext4_xattr_item_alloc(i32 %17, i8* %18, i64 %19)
  store %struct.ext4_xattr_item* %20, %struct.ext4_xattr_item** %16, align 8
  %21 = load %struct.ext4_xattr_item*, %struct.ext4_xattr_item** %16, align 8
  %22 = icmp ne %struct.ext4_xattr_item* %21, null
  br i1 %22, label %31, label %23

23:                                               ; preds = %7
  %24 = load i32*, i32** %15, align 8
  %25 = icmp ne i32* %24, null
  br i1 %25, label %26, label %30

26:                                               ; preds = %23
  %27 = load i32, i32* @ENOMEM, align 4
  %28 = sub nsw i32 0, %27
  %29 = load i32*, i32** %15, align 8
  store i32 %28, i32* %29, align 4
  br label %30

30:                                               ; preds = %26, %23
  store %struct.ext4_xattr_item* null, %struct.ext4_xattr_item** %8, align 8
  br label %147

31:                                               ; preds = %7
  %32 = load i8*, i8** @TRUE, align 8
  %33 = load %struct.ext4_xattr_item*, %struct.ext4_xattr_item** %16, align 8
  %34 = getelementptr inbounds %struct.ext4_xattr_item, %struct.ext4_xattr_item* %33, i32 0, i32 2
  store i8* %32, i8** %34, align 8
  %35 = load %struct.ext4_xattr_ref*, %struct.ext4_xattr_ref** %9, align 8
  %36 = getelementptr inbounds %struct.ext4_xattr_ref, %struct.ext4_xattr_ref* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* %14, align 8
  %39 = call i64 @EXT4_XATTR_SIZE(i64 %38)
  %40 = load %struct.ext4_xattr_item*, %struct.ext4_xattr_item** %16, align 8
  %41 = getelementptr inbounds %struct.ext4_xattr_item, %struct.ext4_xattr_item* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 8
  %43 = call i64 @EXT4_XATTR_LEN(i32 %42)
  %44 = add nsw i64 %39, %43
  %45 = icmp slt i64 %37, %44
  br i1 %45, label %46, label %70

46:                                               ; preds = %31
  %47 = load %struct.ext4_xattr_ref*, %struct.ext4_xattr_ref** %9, align 8
  %48 = getelementptr inbounds %struct.ext4_xattr_ref, %struct.ext4_xattr_ref* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* %14, align 8
  %51 = call i64 @EXT4_XATTR_SIZE(i64 %50)
  %52 = load %struct.ext4_xattr_item*, %struct.ext4_xattr_item** %16, align 8
  %53 = getelementptr inbounds %struct.ext4_xattr_item, %struct.ext4_xattr_item* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 8
  %55 = call i64 @EXT4_XATTR_LEN(i32 %54)
  %56 = add nsw i64 %51, %55
  %57 = icmp slt i64 %49, %56
  br i1 %57, label %58, label %66

58:                                               ; preds = %46
  %59 = load i32*, i32** %15, align 8
  %60 = icmp ne i32* %59, null
  br i1 %60, label %61, label %65

61:                                               ; preds = %58
  %62 = load i32, i32* @ENOSPC, align 4
  %63 = sub nsw i32 0, %62
  %64 = load i32*, i32** %15, align 8
  store i32 %63, i32* %64, align 4
  br label %65

65:                                               ; preds = %61, %58
  store %struct.ext4_xattr_item* null, %struct.ext4_xattr_item** %8, align 8
  br label %147

66:                                               ; preds = %46
  %67 = load i8*, i8** @FALSE, align 8
  %68 = load %struct.ext4_xattr_item*, %struct.ext4_xattr_item** %16, align 8
  %69 = getelementptr inbounds %struct.ext4_xattr_item, %struct.ext4_xattr_item* %68, i32 0, i32 2
  store i8* %67, i8** %69, align 8
  br label %70

70:                                               ; preds = %66, %31
  %71 = load %struct.ext4_xattr_item*, %struct.ext4_xattr_item** %16, align 8
  %72 = load i8*, i8** %13, align 8
  %73 = load i64, i64* %14, align 8
  %74 = call i64 @ext4_xattr_item_alloc_data(%struct.ext4_xattr_item* %71, i8* %72, i64 %73)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %86

76:                                               ; preds = %70
  %77 = load %struct.ext4_xattr_item*, %struct.ext4_xattr_item** %16, align 8
  %78 = call i32 @ext4_xattr_item_free(%struct.ext4_xattr_item* %77)
  %79 = load i32*, i32** %15, align 8
  %80 = icmp ne i32* %79, null
  br i1 %80, label %81, label %85

81:                                               ; preds = %76
  %82 = load i32, i32* @ENOMEM, align 4
  %83 = sub nsw i32 0, %82
  %84 = load i32*, i32** %15, align 8
  store i32 %83, i32* %84, align 4
  br label %85

85:                                               ; preds = %81, %76
  store %struct.ext4_xattr_item* null, %struct.ext4_xattr_item** %8, align 8
  br label %147

86:                                               ; preds = %70
  %87 = load %struct.ext4_xattr_ref*, %struct.ext4_xattr_ref** %9, align 8
  %88 = load %struct.ext4_xattr_item*, %struct.ext4_xattr_item** %16, align 8
  %89 = call i32 @ext4_xattr_item_insert(%struct.ext4_xattr_ref* %87, %struct.ext4_xattr_item* %88)
  %90 = load %struct.ext4_xattr_item*, %struct.ext4_xattr_item** %16, align 8
  %91 = getelementptr inbounds %struct.ext4_xattr_item, %struct.ext4_xattr_item* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = call i64 @EXT4_XATTR_SIZE(i64 %92)
  %94 = load %struct.ext4_xattr_item*, %struct.ext4_xattr_item** %16, align 8
  %95 = getelementptr inbounds %struct.ext4_xattr_item, %struct.ext4_xattr_item* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 8
  %97 = call i64 @EXT4_XATTR_LEN(i32 %96)
  %98 = add nsw i64 %93, %97
  %99 = load %struct.ext4_xattr_ref*, %struct.ext4_xattr_ref** %9, align 8
  %100 = getelementptr inbounds %struct.ext4_xattr_ref, %struct.ext4_xattr_ref* %99, i32 0, i32 3
  %101 = load i32, i32* %100, align 8
  %102 = sext i32 %101 to i64
  %103 = add nsw i64 %102, %98
  %104 = trunc i64 %103 to i32
  store i32 %104, i32* %100, align 8
  %105 = load %struct.ext4_xattr_item*, %struct.ext4_xattr_item** %16, align 8
  %106 = getelementptr inbounds %struct.ext4_xattr_item, %struct.ext4_xattr_item* %105, i32 0, i32 2
  %107 = load i8*, i8** %106, align 8
  %108 = icmp ne i8* %107, null
  br i1 %108, label %109, label %123

109:                                              ; preds = %86
  %110 = load %struct.ext4_xattr_item*, %struct.ext4_xattr_item** %16, align 8
  %111 = getelementptr inbounds %struct.ext4_xattr_item, %struct.ext4_xattr_item* %110, i32 0, i32 0
  %112 = load i64, i64* %111, align 8
  %113 = call i64 @EXT4_XATTR_SIZE(i64 %112)
  %114 = load %struct.ext4_xattr_item*, %struct.ext4_xattr_item** %16, align 8
  %115 = getelementptr inbounds %struct.ext4_xattr_item, %struct.ext4_xattr_item* %114, i32 0, i32 1
  %116 = load i32, i32* %115, align 8
  %117 = call i64 @EXT4_XATTR_LEN(i32 %116)
  %118 = add nsw i64 %113, %117
  %119 = load %struct.ext4_xattr_ref*, %struct.ext4_xattr_ref** %9, align 8
  %120 = getelementptr inbounds %struct.ext4_xattr_ref, %struct.ext4_xattr_ref* %119, i32 0, i32 0
  %121 = load i64, i64* %120, align 8
  %122 = sub nsw i64 %121, %118
  store i64 %122, i64* %120, align 8
  br label %137

123:                                              ; preds = %86
  %124 = load %struct.ext4_xattr_item*, %struct.ext4_xattr_item** %16, align 8
  %125 = getelementptr inbounds %struct.ext4_xattr_item, %struct.ext4_xattr_item* %124, i32 0, i32 0
  %126 = load i64, i64* %125, align 8
  %127 = call i64 @EXT4_XATTR_SIZE(i64 %126)
  %128 = load %struct.ext4_xattr_item*, %struct.ext4_xattr_item** %16, align 8
  %129 = getelementptr inbounds %struct.ext4_xattr_item, %struct.ext4_xattr_item* %128, i32 0, i32 1
  %130 = load i32, i32* %129, align 8
  %131 = call i64 @EXT4_XATTR_LEN(i32 %130)
  %132 = add nsw i64 %127, %131
  %133 = load %struct.ext4_xattr_ref*, %struct.ext4_xattr_ref** %9, align 8
  %134 = getelementptr inbounds %struct.ext4_xattr_ref, %struct.ext4_xattr_ref* %133, i32 0, i32 1
  %135 = load i64, i64* %134, align 8
  %136 = sub nsw i64 %135, %132
  store i64 %136, i64* %134, align 8
  br label %137

137:                                              ; preds = %123, %109
  %138 = load i8*, i8** @TRUE, align 8
  %139 = load %struct.ext4_xattr_ref*, %struct.ext4_xattr_ref** %9, align 8
  %140 = getelementptr inbounds %struct.ext4_xattr_ref, %struct.ext4_xattr_ref* %139, i32 0, i32 2
  store i8* %138, i8** %140, align 8
  %141 = load i32*, i32** %15, align 8
  %142 = icmp ne i32* %141, null
  br i1 %142, label %143, label %145

143:                                              ; preds = %137
  %144 = load i32*, i32** %15, align 8
  store i32 0, i32* %144, align 4
  br label %145

145:                                              ; preds = %143, %137
  %146 = load %struct.ext4_xattr_item*, %struct.ext4_xattr_item** %16, align 8
  store %struct.ext4_xattr_item* %146, %struct.ext4_xattr_item** %8, align 8
  br label %147

147:                                              ; preds = %145, %85, %65, %30
  %148 = load %struct.ext4_xattr_item*, %struct.ext4_xattr_item** %8, align 8
  ret %struct.ext4_xattr_item* %148
}

declare dso_local %struct.ext4_xattr_item* @ext4_xattr_item_alloc(i32, i8*, i64) #1

declare dso_local i64 @EXT4_XATTR_SIZE(i64) #1

declare dso_local i64 @EXT4_XATTR_LEN(i32) #1

declare dso_local i64 @ext4_xattr_item_alloc_data(%struct.ext4_xattr_item*, i8*, i64) #1

declare dso_local i32 @ext4_xattr_item_free(%struct.ext4_xattr_item*) #1

declare dso_local i32 @ext4_xattr_item_insert(%struct.ext4_xattr_ref*, %struct.ext4_xattr_item*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
