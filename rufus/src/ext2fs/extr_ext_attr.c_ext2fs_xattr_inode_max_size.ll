; ModuleID = '/home/carl/AnghaBench/rufus/src/ext2fs/extr_ext_attr.c_ext2fs_xattr_inode_max_size.c'
source_filename = "/home/carl/AnghaBench/rufus/src/ext2fs/extr_ext_attr.c_ext2fs_xattr_inode_max_size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }
%struct.ext2_ext_attr_entry = type { i32, i64, i32 }
%struct.ext2_inode_large = type { i32 }
%struct.ext2_inode = type { i32 }

@EXT2_GOOD_OLD_INODE_SIZE = common dso_local global i32 0, align 4
@EXT2_ET_INLINE_DATA_NO_SPACE = common dso_local global i64 0, align 8
@EXT2_EXT_ATTR_MAGIC = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [5 x i8] c"data\00", align 1
@EXT2_EXT_ATTR_ROUND = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @ext2fs_xattr_inode_max_size(%struct.TYPE_4__* %0, i32 %1, i64* %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.TYPE_4__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64*, align 8
  %8 = alloca %struct.ext2_ext_attr_entry*, align 8
  %9 = alloca %struct.ext2_inode_large*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i64* %2, i64** %7, align 8
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @EXT2_INODE_SIZE(i32 %18)
  %20 = sext i32 %19 to i64
  store i64 %20, i64* %13, align 8
  %21 = load i64, i64* %13, align 8
  %22 = icmp ult i64 %21, 4
  br i1 %22, label %23, label %24

23:                                               ; preds = %3
  store i64 4, i64* %13, align 8
  br label %24

24:                                               ; preds = %23, %3
  %25 = load i64, i64* %13, align 8
  %26 = call i64 @ext2fs_get_memzero(i64 %25, %struct.ext2_inode_large** %9)
  store i64 %26, i64* %14, align 8
  %27 = load i64, i64* %14, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %24
  %30 = load i64, i64* %14, align 8
  store i64 %30, i64* %4, align 8
  br label %153

31:                                               ; preds = %24
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %33 = load i32, i32* %6, align 4
  %34 = load %struct.ext2_inode_large*, %struct.ext2_inode_large** %9, align 8
  %35 = bitcast %struct.ext2_inode_large* %34 to %struct.ext2_inode*
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @EXT2_INODE_SIZE(i32 %38)
  %40 = call i64 @ext2fs_read_inode_full(%struct.TYPE_4__* %32, i32 %33, %struct.ext2_inode* %35, i32 %39)
  store i64 %40, i64* %14, align 8
  %41 = load i64, i64* %14, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %31
  br label %150

44:                                               ; preds = %31
  %45 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @EXT2_INODE_SIZE(i32 %47)
  %49 = sext i32 %48 to i64
  %50 = load i32, i32* @EXT2_GOOD_OLD_INODE_SIZE, align 4
  %51 = load %struct.ext2_inode_large*, %struct.ext2_inode_large** %9, align 8
  %52 = getelementptr inbounds %struct.ext2_inode_large, %struct.ext2_inode_large* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = add nsw i32 %50, %53
  %55 = sext i32 %54 to i64
  %56 = add i64 %55, 8
  %57 = icmp ule i64 %49, %56
  br i1 %57, label %58, label %60

58:                                               ; preds = %44
  %59 = load i64, i64* @EXT2_ET_INLINE_DATA_NO_SPACE, align 8
  store i64 %59, i64* %14, align 8
  br label %150

60:                                               ; preds = %44
  %61 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @EXT2_INODE_SIZE(i32 %63)
  %65 = sext i32 %64 to i64
  %66 = sub i64 %65, 4
  %67 = sub i64 %66, 8
  %68 = trunc i64 %67 to i32
  store i32 %68, i32* %11, align 4
  %69 = load %struct.ext2_inode_large*, %struct.ext2_inode_large** %9, align 8
  %70 = bitcast %struct.ext2_inode_large* %69 to i8*
  %71 = load i32, i32* @EXT2_GOOD_OLD_INODE_SIZE, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i8, i8* %70, i64 %72
  %74 = load %struct.ext2_inode_large*, %struct.ext2_inode_large** %9, align 8
  %75 = getelementptr inbounds %struct.ext2_inode_large, %struct.ext2_inode_large* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds i8, i8* %73, i64 %77
  %79 = call i32 @memcpy(i64* %10, i8* %78, i32 8)
  %80 = load i64, i64* %10, align 8
  %81 = load i64, i64* @EXT2_EXT_ATTR_MAGIC, align 8
  %82 = icmp eq i64 %80, %81
  br i1 %82, label %83, label %137

83:                                               ; preds = %60
  %84 = load %struct.ext2_inode_large*, %struct.ext2_inode_large** %9, align 8
  %85 = bitcast %struct.ext2_inode_large* %84 to i8*
  %86 = load i32, i32* @EXT2_GOOD_OLD_INODE_SIZE, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds i8, i8* %85, i64 %87
  %89 = load %struct.ext2_inode_large*, %struct.ext2_inode_large** %9, align 8
  %90 = getelementptr inbounds %struct.ext2_inode_large, %struct.ext2_inode_large* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds i8, i8* %88, i64 %92
  %94 = getelementptr inbounds i8, i8* %93, i64 8
  store i8* %94, i8** %12, align 8
  %95 = load i8*, i8** %12, align 8
  %96 = bitcast i8* %95 to %struct.ext2_ext_attr_entry*
  store %struct.ext2_ext_attr_entry* %96, %struct.ext2_ext_attr_entry** %8, align 8
  br label %97

97:                                               ; preds = %122, %83
  %98 = load %struct.ext2_ext_attr_entry*, %struct.ext2_ext_attr_entry** %8, align 8
  %99 = call i32 @EXT2_EXT_IS_LAST_ENTRY(%struct.ext2_ext_attr_entry* %98)
  %100 = icmp ne i32 %99, 0
  %101 = xor i1 %100, true
  br i1 %101, label %102, label %125

102:                                              ; preds = %97
  %103 = load %struct.ext2_ext_attr_entry*, %struct.ext2_ext_attr_entry** %8, align 8
  %104 = getelementptr inbounds %struct.ext2_ext_attr_entry, %struct.ext2_ext_attr_entry* %103, i32 0, i32 2
  %105 = load i32, i32* %104, align 8
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %122, label %107

107:                                              ; preds = %102
  %108 = load %struct.ext2_ext_attr_entry*, %struct.ext2_ext_attr_entry** %8, align 8
  %109 = getelementptr inbounds %struct.ext2_ext_attr_entry, %struct.ext2_ext_attr_entry* %108, i32 0, i32 1
  %110 = load i64, i64* %109, align 8
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %112, label %122

112:                                              ; preds = %107
  %113 = load %struct.ext2_ext_attr_entry*, %struct.ext2_ext_attr_entry** %8, align 8
  %114 = getelementptr inbounds %struct.ext2_ext_attr_entry, %struct.ext2_ext_attr_entry* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 8
  store i32 %115, i32* %15, align 4
  %116 = load i32, i32* %15, align 4
  %117 = load i32, i32* %11, align 4
  %118 = icmp ult i32 %116, %117
  br i1 %118, label %119, label %121

119:                                              ; preds = %112
  %120 = load i32, i32* %15, align 4
  store i32 %120, i32* %11, align 4
  br label %121

121:                                              ; preds = %119, %112
  br label %122

122:                                              ; preds = %121, %107, %102
  %123 = load %struct.ext2_ext_attr_entry*, %struct.ext2_ext_attr_entry** %8, align 8
  %124 = call %struct.ext2_ext_attr_entry* @EXT2_EXT_ATTR_NEXT(%struct.ext2_ext_attr_entry* %123)
  store %struct.ext2_ext_attr_entry* %124, %struct.ext2_ext_attr_entry** %8, align 8
  br label %97

125:                                              ; preds = %97
  %126 = load i32, i32* %11, align 4
  %127 = zext i32 %126 to i64
  %128 = load %struct.ext2_ext_attr_entry*, %struct.ext2_ext_attr_entry** %8, align 8
  %129 = bitcast %struct.ext2_ext_attr_entry* %128 to i8*
  %130 = load i8*, i8** %12, align 8
  %131 = ptrtoint i8* %129 to i64
  %132 = ptrtoint i8* %130 to i64
  %133 = sub i64 %131, %132
  %134 = sub nsw i64 %127, %133
  %135 = sub i64 %134, 8
  %136 = load i64*, i64** %7, align 8
  store i64 %135, i64* %136, align 8
  br label %149

137:                                              ; preds = %60
  %138 = load i32, i32* %11, align 4
  %139 = call i32 @strlen(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %140 = call i32 @EXT2_EXT_ATTR_LEN(i32 %139)
  %141 = sub i32 %138, %140
  %142 = load i32, i32* @EXT2_EXT_ATTR_ROUND, align 4
  %143 = sub i32 %141, %142
  %144 = zext i32 %143 to i64
  %145 = sub i64 %144, 8
  %146 = trunc i64 %145 to i32
  %147 = call i64 @EXT2_EXT_ATTR_SIZE(i32 %146)
  %148 = load i64*, i64** %7, align 8
  store i64 %147, i64* %148, align 8
  br label %149

149:                                              ; preds = %137, %125
  br label %150

150:                                              ; preds = %149, %58, %43
  %151 = call i32 @ext2fs_free_mem(%struct.ext2_inode_large** %9)
  %152 = load i64, i64* %14, align 8
  store i64 %152, i64* %4, align 8
  br label %153

153:                                              ; preds = %150, %29
  %154 = load i64, i64* %4, align 8
  ret i64 %154
}

declare dso_local i32 @EXT2_INODE_SIZE(i32) #1

declare dso_local i64 @ext2fs_get_memzero(i64, %struct.ext2_inode_large**) #1

declare dso_local i64 @ext2fs_read_inode_full(%struct.TYPE_4__*, i32, %struct.ext2_inode*, i32) #1

declare dso_local i32 @memcpy(i64*, i8*, i32) #1

declare dso_local i32 @EXT2_EXT_IS_LAST_ENTRY(%struct.ext2_ext_attr_entry*) #1

declare dso_local %struct.ext2_ext_attr_entry* @EXT2_EXT_ATTR_NEXT(%struct.ext2_ext_attr_entry*) #1

declare dso_local i64 @EXT2_EXT_ATTR_SIZE(i32) #1

declare dso_local i32 @EXT2_EXT_ATTR_LEN(i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @ext2fs_free_mem(%struct.ext2_inode_large**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
