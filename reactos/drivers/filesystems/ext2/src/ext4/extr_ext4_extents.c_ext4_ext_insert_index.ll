; ModuleID = '/home/carl/AnghaBench/reactos/drivers/filesystems/ext2/src/ext4/extr_ext4_extents.c_ext4_ext_insert_index.c'
source_filename = "/home/carl/AnghaBench/reactos/drivers/filesystems/ext2/src/ext4/extr_ext4_extents.c_ext4_ext_insert_index.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.ext4_ext_path = type { %struct.TYPE_3__*, %struct.ext4_extent_idx* }
%struct.TYPE_3__ = type { i32, i32 }
%struct.ext4_extent_idx = type { i32 }

@.str = private unnamed_addr constant [27 x i8] c"logical %d == ei_block %d!\00", align 1
@EIO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"eh_entries %d >= eh_max %d!\00", align 1
@.str.2 = private unnamed_addr constant [33 x i8] c"insert new index %d after: %llu\0A\00", align 1
@.str.3 = private unnamed_addr constant [34 x i8] c"insert new index %d before: %llu\0A\00", align 1
@.str.4 = private unnamed_addr constant [56 x i8] c"insert new index %d: move %d indices from 0x%p to 0x%p\0A\00", align 1
@.str.5 = private unnamed_addr constant [20 x i8] c"ix > EXT_MAX_INDEX!\00", align 1
@.str.6 = private unnamed_addr constant [21 x i8] c"ix > EXT_LAST_INDEX!\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32*, %struct.inode*, %struct.ext4_ext_path*, i32, i32)* @ext4_ext_insert_index to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ext4_ext_insert_index(i8* %0, i32* %1, %struct.inode* %2, %struct.ext4_ext_path* %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.inode*, align 8
  %11 = alloca %struct.ext4_ext_path*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.ext4_extent_idx*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store i8* %0, i8** %8, align 8
  store i32* %1, i32** %9, align 8
  store %struct.inode* %2, %struct.inode** %10, align 8
  store %struct.ext4_ext_path* %3, %struct.ext4_ext_path** %11, align 8
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  %17 = load i8*, i8** %8, align 8
  %18 = load i32*, i32** %9, align 8
  %19 = load %struct.inode*, %struct.inode** %10, align 8
  %20 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %11, align 8
  %21 = call i32 @ext4_ext_get_access(i8* %17, i32* %18, %struct.inode* %19, %struct.ext4_ext_path* %20)
  store i32 %21, i32* %16, align 4
  %22 = load i32, i32* %16, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %6
  %25 = load i32, i32* %16, align 4
  store i32 %25, i32* %7, align 4
  br label %195

26:                                               ; preds = %6
  %27 = load i32, i32* %12, align 4
  %28 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %11, align 8
  %29 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %28, i32 0, i32 1
  %30 = load %struct.ext4_extent_idx*, %struct.ext4_extent_idx** %29, align 8
  %31 = getelementptr inbounds %struct.ext4_extent_idx, %struct.ext4_extent_idx* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @le32_to_cpu(i32 %32)
  %34 = icmp eq i32 %27, %33
  %35 = zext i1 %34 to i32
  %36 = call i64 @unlikely(i32 %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %50

38:                                               ; preds = %26
  %39 = load %struct.inode*, %struct.inode** %10, align 8
  %40 = load i32, i32* %12, align 4
  %41 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %11, align 8
  %42 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %41, i32 0, i32 1
  %43 = load %struct.ext4_extent_idx*, %struct.ext4_extent_idx** %42, align 8
  %44 = getelementptr inbounds %struct.ext4_extent_idx, %struct.ext4_extent_idx* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @le32_to_cpu(i32 %45)
  %47 = call i32 (%struct.inode*, i8*, ...) @EXT4_ERROR_INODE(%struct.inode* %39, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %40, i32 %46)
  %48 = load i32, i32* @EIO, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %7, align 4
  br label %195

50:                                               ; preds = %26
  %51 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %11, align 8
  %52 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %51, i32 0, i32 0
  %53 = load %struct.TYPE_3__*, %struct.TYPE_3__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @le16_to_cpu(i32 %55)
  %57 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %11, align 8
  %58 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %57, i32 0, i32 0
  %59 = load %struct.TYPE_3__*, %struct.TYPE_3__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @le16_to_cpu(i32 %61)
  %63 = icmp sge i32 %56, %62
  %64 = zext i1 %63 to i32
  %65 = call i64 @unlikely(i32 %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %84

67:                                               ; preds = %50
  %68 = load %struct.inode*, %struct.inode** %10, align 8
  %69 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %11, align 8
  %70 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %69, i32 0, i32 0
  %71 = load %struct.TYPE_3__*, %struct.TYPE_3__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @le16_to_cpu(i32 %73)
  %75 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %11, align 8
  %76 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %75, i32 0, i32 0
  %77 = load %struct.TYPE_3__*, %struct.TYPE_3__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = call i32 @le16_to_cpu(i32 %79)
  %81 = call i32 (%struct.inode*, i8*, ...) @EXT4_ERROR_INODE(%struct.inode* %68, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i32 %74, i32 %80)
  %82 = load i32, i32* @EIO, align 4
  %83 = sub nsw i32 0, %82
  store i32 %83, i32* %7, align 4
  br label %195

84:                                               ; preds = %50
  %85 = load i32, i32* %12, align 4
  %86 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %11, align 8
  %87 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %86, i32 0, i32 1
  %88 = load %struct.ext4_extent_idx*, %struct.ext4_extent_idx** %87, align 8
  %89 = getelementptr inbounds %struct.ext4_extent_idx, %struct.ext4_extent_idx* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = call i32 @le32_to_cpu(i32 %90)
  %92 = icmp sgt i32 %85, %91
  br i1 %92, label %93, label %101

93:                                               ; preds = %84
  %94 = load i32, i32* %12, align 4
  %95 = load i32, i32* %13, align 4
  %96 = call i32 (i8*, i32, i32, ...) @ext_debug(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0), i32 %94, i32 %95)
  %97 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %11, align 8
  %98 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %97, i32 0, i32 1
  %99 = load %struct.ext4_extent_idx*, %struct.ext4_extent_idx** %98, align 8
  %100 = getelementptr inbounds %struct.ext4_extent_idx, %struct.ext4_extent_idx* %99, i64 1
  store %struct.ext4_extent_idx* %100, %struct.ext4_extent_idx** %14, align 8
  br label %108

101:                                              ; preds = %84
  %102 = load i32, i32* %12, align 4
  %103 = load i32, i32* %13, align 4
  %104 = call i32 (i8*, i32, i32, ...) @ext_debug(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i64 0, i64 0), i32 %102, i32 %103)
  %105 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %11, align 8
  %106 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %105, i32 0, i32 1
  %107 = load %struct.ext4_extent_idx*, %struct.ext4_extent_idx** %106, align 8
  store %struct.ext4_extent_idx* %107, %struct.ext4_extent_idx** %14, align 8
  br label %108

108:                                              ; preds = %101, %93
  %109 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %11, align 8
  %110 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %109, i32 0, i32 0
  %111 = load %struct.TYPE_3__*, %struct.TYPE_3__** %110, align 8
  %112 = call %struct.ext4_extent_idx* @EXT_LAST_INDEX(%struct.TYPE_3__* %111)
  %113 = load %struct.ext4_extent_idx*, %struct.ext4_extent_idx** %14, align 8
  %114 = ptrtoint %struct.ext4_extent_idx* %112 to i64
  %115 = ptrtoint %struct.ext4_extent_idx* %113 to i64
  %116 = sub i64 %114, %115
  %117 = sdiv exact i64 %116, 4
  %118 = add nsw i64 %117, 1
  %119 = trunc i64 %118 to i32
  store i32 %119, i32* %15, align 4
  %120 = load i32, i32* %15, align 4
  %121 = icmp slt i32 %120, 0
  %122 = zext i1 %121 to i32
  %123 = call i32 @BUG_ON(i32 %122)
  %124 = load i32, i32* %15, align 4
  %125 = icmp sgt i32 %124, 0
  br i1 %125, label %126, label %141

126:                                              ; preds = %108
  %127 = load i32, i32* %12, align 4
  %128 = load i32, i32* %15, align 4
  %129 = load %struct.ext4_extent_idx*, %struct.ext4_extent_idx** %14, align 8
  %130 = load %struct.ext4_extent_idx*, %struct.ext4_extent_idx** %14, align 8
  %131 = getelementptr inbounds %struct.ext4_extent_idx, %struct.ext4_extent_idx* %130, i64 1
  %132 = call i32 (i8*, i32, i32, ...) @ext_debug(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.4, i64 0, i64 0), i32 %127, i32 %128, %struct.ext4_extent_idx* %129, %struct.ext4_extent_idx* %131)
  %133 = load %struct.ext4_extent_idx*, %struct.ext4_extent_idx** %14, align 8
  %134 = getelementptr inbounds %struct.ext4_extent_idx, %struct.ext4_extent_idx* %133, i64 1
  %135 = load %struct.ext4_extent_idx*, %struct.ext4_extent_idx** %14, align 8
  %136 = load i32, i32* %15, align 4
  %137 = sext i32 %136 to i64
  %138 = mul i64 %137, 4
  %139 = trunc i64 %138 to i32
  %140 = call i32 @memmove(%struct.ext4_extent_idx* %134, %struct.ext4_extent_idx* %135, i32 %139)
  br label %141

141:                                              ; preds = %126, %108
  %142 = load %struct.ext4_extent_idx*, %struct.ext4_extent_idx** %14, align 8
  %143 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %11, align 8
  %144 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %143, i32 0, i32 0
  %145 = load %struct.TYPE_3__*, %struct.TYPE_3__** %144, align 8
  %146 = call %struct.ext4_extent_idx* @EXT_MAX_INDEX(%struct.TYPE_3__* %145)
  %147 = icmp ugt %struct.ext4_extent_idx* %142, %146
  %148 = zext i1 %147 to i32
  %149 = call i64 @unlikely(i32 %148)
  %150 = icmp ne i64 %149, 0
  br i1 %150, label %151, label %156

151:                                              ; preds = %141
  %152 = load %struct.inode*, %struct.inode** %10, align 8
  %153 = call i32 (%struct.inode*, i8*, ...) @EXT4_ERROR_INODE(%struct.inode* %152, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.5, i64 0, i64 0))
  %154 = load i32, i32* @EIO, align 4
  %155 = sub nsw i32 0, %154
  store i32 %155, i32* %7, align 4
  br label %195

156:                                              ; preds = %141
  %157 = load i32, i32* %12, align 4
  %158 = call i32 @cpu_to_le32(i32 %157)
  %159 = load %struct.ext4_extent_idx*, %struct.ext4_extent_idx** %14, align 8
  %160 = getelementptr inbounds %struct.ext4_extent_idx, %struct.ext4_extent_idx* %159, i32 0, i32 0
  store i32 %158, i32* %160, align 4
  %161 = load %struct.ext4_extent_idx*, %struct.ext4_extent_idx** %14, align 8
  %162 = load i32, i32* %13, align 4
  %163 = call i32 @ext4_idx_store_pblock(%struct.ext4_extent_idx* %161, i32 %162)
  %164 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %11, align 8
  %165 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %164, i32 0, i32 0
  %166 = load %struct.TYPE_3__*, %struct.TYPE_3__** %165, align 8
  %167 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %166, i32 0, i32 0
  %168 = call i32 @le16_add_cpu(i32* %167, i32 1)
  %169 = load %struct.ext4_extent_idx*, %struct.ext4_extent_idx** %14, align 8
  %170 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %11, align 8
  %171 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %170, i32 0, i32 0
  %172 = load %struct.TYPE_3__*, %struct.TYPE_3__** %171, align 8
  %173 = call %struct.ext4_extent_idx* @EXT_LAST_INDEX(%struct.TYPE_3__* %172)
  %174 = icmp ugt %struct.ext4_extent_idx* %169, %173
  %175 = zext i1 %174 to i32
  %176 = call i64 @unlikely(i32 %175)
  %177 = icmp ne i64 %176, 0
  br i1 %177, label %178, label %183

178:                                              ; preds = %156
  %179 = load %struct.inode*, %struct.inode** %10, align 8
  %180 = call i32 (%struct.inode*, i8*, ...) @EXT4_ERROR_INODE(%struct.inode* %179, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.6, i64 0, i64 0))
  %181 = load i32, i32* @EIO, align 4
  %182 = sub nsw i32 0, %181
  store i32 %182, i32* %7, align 4
  br label %195

183:                                              ; preds = %156
  %184 = load i8*, i8** %8, align 8
  %185 = load i32*, i32** %9, align 8
  %186 = load %struct.inode*, %struct.inode** %10, align 8
  %187 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %11, align 8
  %188 = call i32 @ext4_ext_dirty(i8* %184, i32* %185, %struct.inode* %186, %struct.ext4_ext_path* %187)
  store i32 %188, i32* %16, align 4
  %189 = load %struct.inode*, %struct.inode** %10, align 8
  %190 = getelementptr inbounds %struct.inode, %struct.inode* %189, i32 0, i32 0
  %191 = load i32, i32* %190, align 4
  %192 = load i32, i32* %16, align 4
  %193 = call i32 @ext4_std_error(i32 %191, i32 %192)
  %194 = load i32, i32* %16, align 4
  store i32 %194, i32* %7, align 4
  br label %195

195:                                              ; preds = %183, %178, %151, %67, %38, %24
  %196 = load i32, i32* %7, align 4
  ret i32 %196
}

declare dso_local i32 @ext4_ext_get_access(i8*, i32*, %struct.inode*, %struct.ext4_ext_path*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @EXT4_ERROR_INODE(%struct.inode*, i8*, ...) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @ext_debug(i8*, i32, i32, ...) #1

declare dso_local %struct.ext4_extent_idx* @EXT_LAST_INDEX(%struct.TYPE_3__*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @memmove(%struct.ext4_extent_idx*, %struct.ext4_extent_idx*, i32) #1

declare dso_local %struct.ext4_extent_idx* @EXT_MAX_INDEX(%struct.TYPE_3__*) #1

declare dso_local i32 @cpu_to_le32(i32) #1

declare dso_local i32 @ext4_idx_store_pblock(%struct.ext4_extent_idx*, i32) #1

declare dso_local i32 @le16_add_cpu(i32*, i32) #1

declare dso_local i32 @ext4_ext_dirty(i8*, i32*, %struct.inode*, %struct.ext4_ext_path*) #1

declare dso_local i32 @ext4_std_error(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
