; ModuleID = '/home/carl/AnghaBench/rufus/src/ext2fs/extr_extent.c_ext2fs_extent_open2.c'
source_filename = "/home/carl/AnghaBench/rufus/src/ext2fs/extr_extent.c_ext2fs_extent_open2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i64 }
%struct.ext2_inode = type { i32, i64* }
%struct.ext2_extent_handle = type { i32, i32, i32, i64, %struct.TYPE_8__*, %struct.ext2_inode*, i8*, %struct.ext2_inode, %struct.TYPE_7__*, i64 }
%struct.TYPE_8__ = type { i8*, i32, i32, i64, i8*, i8*, i8* }
%struct.ext3_extent_header = type { i8*, i8*, i8*, i8* }

@EXT2_ET_MAGIC_EXT2FS_FILSYS = common dso_local global i32 0, align 4
@EXT2_ET_BAD_INODE_NUM = common dso_local global i64 0, align 8
@EXT2_N_BLOCKS = common dso_local global i32 0, align 4
@EXT3_EXT_MAGIC = common dso_local global i32 0, align 4
@EXT4_EXTENTS_FL = common dso_local global i32 0, align 4
@EXT2_ET_INODE_NOT_EXTENT = common dso_local global i64 0, align 8
@EXT2_ET_MAGIC_EXTENT_HANDLE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @ext2fs_extent_open2(%struct.TYPE_7__* %0, i64 %1, %struct.ext2_inode* %2, %struct.ext2_extent_handle** %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_7__*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.ext2_inode*, align 8
  %9 = alloca %struct.ext2_extent_handle**, align 8
  %10 = alloca %struct.ext2_extent_handle*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.ext3_extent_header*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %6, align 8
  store i64 %1, i64* %7, align 8
  store %struct.ext2_inode* %2, %struct.ext2_inode** %8, align 8
  store %struct.ext2_extent_handle** %3, %struct.ext2_extent_handle*** %9, align 8
  %14 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %15 = load i32, i32* @EXT2_ET_MAGIC_EXT2FS_FILSYS, align 4
  %16 = call i32 @EXT2_CHECK_MAGIC(%struct.TYPE_7__* %14, i32 %15)
  %17 = load %struct.ext2_inode*, %struct.ext2_inode** %8, align 8
  %18 = icmp ne %struct.ext2_inode* %17, null
  br i1 %18, label %33, label %19

19:                                               ; preds = %4
  %20 = load i64, i64* %7, align 8
  %21 = icmp eq i64 %20, 0
  br i1 %21, label %30, label %22

22:                                               ; preds = %19
  %23 = load i64, i64* %7, align 8
  %24 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %25 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %24, i32 0, i32 1
  %26 = load %struct.TYPE_9__*, %struct.TYPE_9__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = icmp sgt i64 %23, %28
  br i1 %29, label %30, label %32

30:                                               ; preds = %22, %19
  %31 = load i64, i64* @EXT2_ET_BAD_INODE_NUM, align 8
  store i64 %31, i64* %5, align 8
  br label %241

32:                                               ; preds = %22
  br label %33

33:                                               ; preds = %32, %4
  %34 = call i64 @ext2fs_get_mem(i32 80, %struct.ext2_extent_handle** %10)
  store i64 %34, i64* %11, align 8
  %35 = load i64, i64* %11, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %33
  %38 = load i64, i64* %11, align 8
  store i64 %38, i64* %5, align 8
  br label %241

39:                                               ; preds = %33
  %40 = load %struct.ext2_extent_handle*, %struct.ext2_extent_handle** %10, align 8
  %41 = call i32 @memset(%struct.ext2_extent_handle* %40, i32 0, i32 80)
  %42 = load i64, i64* %7, align 8
  %43 = load %struct.ext2_extent_handle*, %struct.ext2_extent_handle** %10, align 8
  %44 = getelementptr inbounds %struct.ext2_extent_handle, %struct.ext2_extent_handle* %43, i32 0, i32 9
  store i64 %42, i64* %44, align 8
  %45 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %46 = load %struct.ext2_extent_handle*, %struct.ext2_extent_handle** %10, align 8
  %47 = getelementptr inbounds %struct.ext2_extent_handle, %struct.ext2_extent_handle* %46, i32 0, i32 8
  store %struct.TYPE_7__* %45, %struct.TYPE_7__** %47, align 8
  %48 = load %struct.ext2_inode*, %struct.ext2_inode** %8, align 8
  %49 = icmp ne %struct.ext2_inode* %48, null
  br i1 %49, label %50, label %54

50:                                               ; preds = %39
  %51 = load %struct.ext2_inode*, %struct.ext2_inode** %8, align 8
  %52 = load %struct.ext2_extent_handle*, %struct.ext2_extent_handle** %10, align 8
  %53 = getelementptr inbounds %struct.ext2_extent_handle, %struct.ext2_extent_handle* %52, i32 0, i32 5
  store %struct.ext2_inode* %51, %struct.ext2_inode** %53, align 8
  br label %69

54:                                               ; preds = %39
  %55 = load %struct.ext2_extent_handle*, %struct.ext2_extent_handle** %10, align 8
  %56 = getelementptr inbounds %struct.ext2_extent_handle, %struct.ext2_extent_handle* %55, i32 0, i32 7
  %57 = load %struct.ext2_extent_handle*, %struct.ext2_extent_handle** %10, align 8
  %58 = getelementptr inbounds %struct.ext2_extent_handle, %struct.ext2_extent_handle* %57, i32 0, i32 5
  store %struct.ext2_inode* %56, %struct.ext2_inode** %58, align 8
  %59 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %60 = load i64, i64* %7, align 8
  %61 = load %struct.ext2_extent_handle*, %struct.ext2_extent_handle** %10, align 8
  %62 = getelementptr inbounds %struct.ext2_extent_handle, %struct.ext2_extent_handle* %61, i32 0, i32 5
  %63 = load %struct.ext2_inode*, %struct.ext2_inode** %62, align 8
  %64 = call i64 @ext2fs_read_inode(%struct.TYPE_7__* %59, i64 %60, %struct.ext2_inode* %63)
  store i64 %64, i64* %11, align 8
  %65 = load i64, i64* %11, align 8
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %68

67:                                               ; preds = %54
  br label %237

68:                                               ; preds = %54
  br label %69

69:                                               ; preds = %68, %50
  %70 = load %struct.ext2_extent_handle*, %struct.ext2_extent_handle** %10, align 8
  %71 = getelementptr inbounds %struct.ext2_extent_handle, %struct.ext2_extent_handle* %70, i32 0, i32 5
  %72 = load %struct.ext2_inode*, %struct.ext2_inode** %71, align 8
  %73 = getelementptr inbounds %struct.ext2_inode, %struct.ext2_inode* %72, i32 0, i32 1
  %74 = load i64*, i64** %73, align 8
  %75 = getelementptr inbounds i64, i64* %74, i64 0
  %76 = bitcast i64* %75 to %struct.ext3_extent_header*
  store %struct.ext3_extent_header* %76, %struct.ext3_extent_header** %13, align 8
  store i32 0, i32* %12, align 4
  br label %77

77:                                               ; preds = %94, %69
  %78 = load i32, i32* %12, align 4
  %79 = load i32, i32* @EXT2_N_BLOCKS, align 4
  %80 = icmp slt i32 %78, %79
  br i1 %80, label %81, label %97

81:                                               ; preds = %77
  %82 = load %struct.ext2_extent_handle*, %struct.ext2_extent_handle** %10, align 8
  %83 = getelementptr inbounds %struct.ext2_extent_handle, %struct.ext2_extent_handle* %82, i32 0, i32 5
  %84 = load %struct.ext2_inode*, %struct.ext2_inode** %83, align 8
  %85 = getelementptr inbounds %struct.ext2_inode, %struct.ext2_inode* %84, i32 0, i32 1
  %86 = load i64*, i64** %85, align 8
  %87 = load i32, i32* %12, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds i64, i64* %86, i64 %88
  %90 = load i64, i64* %89, align 8
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %93

92:                                               ; preds = %81
  br label %97

93:                                               ; preds = %81
  br label %94

94:                                               ; preds = %93
  %95 = load i32, i32* %12, align 4
  %96 = add nsw i32 %95, 1
  store i32 %96, i32* %12, align 4
  br label %77

97:                                               ; preds = %92, %77
  %98 = load i32, i32* %12, align 4
  %99 = load i32, i32* @EXT2_N_BLOCKS, align 4
  %100 = icmp sge i32 %98, %99
  br i1 %100, label %101, label %121

101:                                              ; preds = %97
  %102 = load i32, i32* @EXT3_EXT_MAGIC, align 4
  %103 = call i8* @ext2fs_cpu_to_le16(i32 %102)
  %104 = load %struct.ext3_extent_header*, %struct.ext3_extent_header** %13, align 8
  %105 = getelementptr inbounds %struct.ext3_extent_header, %struct.ext3_extent_header* %104, i32 0, i32 2
  store i8* %103, i8** %105, align 8
  %106 = load %struct.ext3_extent_header*, %struct.ext3_extent_header** %13, align 8
  %107 = getelementptr inbounds %struct.ext3_extent_header, %struct.ext3_extent_header* %106, i32 0, i32 3
  store i8* null, i8** %107, align 8
  %108 = load %struct.ext3_extent_header*, %struct.ext3_extent_header** %13, align 8
  %109 = getelementptr inbounds %struct.ext3_extent_header, %struct.ext3_extent_header* %108, i32 0, i32 1
  store i8* null, i8** %109, align 8
  store i32 -6, i32* %12, align 4
  %110 = load i32, i32* %12, align 4
  %111 = call i8* @ext2fs_cpu_to_le16(i32 %110)
  %112 = load %struct.ext3_extent_header*, %struct.ext3_extent_header** %13, align 8
  %113 = getelementptr inbounds %struct.ext3_extent_header, %struct.ext3_extent_header* %112, i32 0, i32 0
  store i8* %111, i8** %113, align 8
  %114 = load i32, i32* @EXT4_EXTENTS_FL, align 4
  %115 = load %struct.ext2_extent_handle*, %struct.ext2_extent_handle** %10, align 8
  %116 = getelementptr inbounds %struct.ext2_extent_handle, %struct.ext2_extent_handle* %115, i32 0, i32 5
  %117 = load %struct.ext2_inode*, %struct.ext2_inode** %116, align 8
  %118 = getelementptr inbounds %struct.ext2_inode, %struct.ext2_inode* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 8
  %120 = or i32 %119, %114
  store i32 %120, i32* %118, align 8
  br label %121

121:                                              ; preds = %101, %97
  %122 = load %struct.ext2_extent_handle*, %struct.ext2_extent_handle** %10, align 8
  %123 = getelementptr inbounds %struct.ext2_extent_handle, %struct.ext2_extent_handle* %122, i32 0, i32 5
  %124 = load %struct.ext2_inode*, %struct.ext2_inode** %123, align 8
  %125 = getelementptr inbounds %struct.ext2_inode, %struct.ext2_inode* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 8
  %127 = load i32, i32* @EXT4_EXTENTS_FL, align 4
  %128 = and i32 %126, %127
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %132, label %130

130:                                              ; preds = %121
  %131 = load i64, i64* @EXT2_ET_INODE_NOT_EXTENT, align 8
  store i64 %131, i64* %11, align 8
  br label %237

132:                                              ; preds = %121
  %133 = load %struct.ext3_extent_header*, %struct.ext3_extent_header** %13, align 8
  %134 = call i64 @ext2fs_extent_header_verify(%struct.ext3_extent_header* %133, i32 8)
  store i64 %134, i64* %11, align 8
  %135 = load i64, i64* %11, align 8
  %136 = icmp ne i64 %135, 0
  br i1 %136, label %137, label %138

137:                                              ; preds = %132
  br label %237

138:                                              ; preds = %132
  %139 = load %struct.ext3_extent_header*, %struct.ext3_extent_header** %13, align 8
  %140 = getelementptr inbounds %struct.ext3_extent_header, %struct.ext3_extent_header* %139, i32 0, i32 3
  %141 = load i8*, i8** %140, align 8
  %142 = call i8* @ext2fs_le16_to_cpu(i8* %141)
  %143 = ptrtoint i8* %142 to i32
  %144 = load %struct.ext2_extent_handle*, %struct.ext2_extent_handle** %10, align 8
  %145 = getelementptr inbounds %struct.ext2_extent_handle, %struct.ext2_extent_handle* %144, i32 0, i32 0
  store i32 %143, i32* %145, align 8
  %146 = load %struct.ext3_extent_header*, %struct.ext3_extent_header** %13, align 8
  %147 = getelementptr inbounds %struct.ext3_extent_header, %struct.ext3_extent_header* %146, i32 0, i32 2
  %148 = load i8*, i8** %147, align 8
  %149 = call i8* @ext2fs_le16_to_cpu(i8* %148)
  %150 = load %struct.ext2_extent_handle*, %struct.ext2_extent_handle** %10, align 8
  %151 = getelementptr inbounds %struct.ext2_extent_handle, %struct.ext2_extent_handle* %150, i32 0, i32 6
  store i8* %149, i8** %151, align 8
  %152 = load %struct.ext2_extent_handle*, %struct.ext2_extent_handle** %10, align 8
  %153 = getelementptr inbounds %struct.ext2_extent_handle, %struct.ext2_extent_handle* %152, i32 0, i32 0
  %154 = load i32, i32* %153, align 8
  %155 = add nsw i32 %154, 1
  %156 = load %struct.ext2_extent_handle*, %struct.ext2_extent_handle** %10, align 8
  %157 = getelementptr inbounds %struct.ext2_extent_handle, %struct.ext2_extent_handle* %156, i32 0, i32 1
  store i32 %155, i32* %157, align 4
  %158 = load %struct.ext2_extent_handle*, %struct.ext2_extent_handle** %10, align 8
  %159 = getelementptr inbounds %struct.ext2_extent_handle, %struct.ext2_extent_handle* %158, i32 0, i32 1
  %160 = load i32, i32* %159, align 4
  %161 = sext i32 %160 to i64
  %162 = mul i64 %161, 4
  %163 = trunc i64 %162 to i32
  %164 = load %struct.ext2_extent_handle*, %struct.ext2_extent_handle** %10, align 8
  %165 = getelementptr inbounds %struct.ext2_extent_handle, %struct.ext2_extent_handle* %164, i32 0, i32 4
  %166 = call i64 @ext2fs_get_memzero(i32 %163, %struct.TYPE_8__** %165)
  store i64 %166, i64* %11, align 8
  %167 = load %struct.ext2_extent_handle*, %struct.ext2_extent_handle** %10, align 8
  %168 = getelementptr inbounds %struct.ext2_extent_handle, %struct.ext2_extent_handle* %167, i32 0, i32 5
  %169 = load %struct.ext2_inode*, %struct.ext2_inode** %168, align 8
  %170 = getelementptr inbounds %struct.ext2_inode, %struct.ext2_inode* %169, i32 0, i32 1
  %171 = load i64*, i64** %170, align 8
  %172 = bitcast i64* %171 to i8*
  %173 = load %struct.ext2_extent_handle*, %struct.ext2_extent_handle** %10, align 8
  %174 = getelementptr inbounds %struct.ext2_extent_handle, %struct.ext2_extent_handle* %173, i32 0, i32 4
  %175 = load %struct.TYPE_8__*, %struct.TYPE_8__** %174, align 8
  %176 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %175, i64 0
  %177 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %176, i32 0, i32 0
  store i8* %172, i8** %177, align 8
  %178 = load %struct.ext3_extent_header*, %struct.ext3_extent_header** %13, align 8
  %179 = getelementptr inbounds %struct.ext3_extent_header, %struct.ext3_extent_header* %178, i32 0, i32 1
  %180 = load i8*, i8** %179, align 8
  %181 = call i8* @ext2fs_le16_to_cpu(i8* %180)
  %182 = load %struct.ext2_extent_handle*, %struct.ext2_extent_handle** %10, align 8
  %183 = getelementptr inbounds %struct.ext2_extent_handle, %struct.ext2_extent_handle* %182, i32 0, i32 4
  %184 = load %struct.TYPE_8__*, %struct.TYPE_8__** %183, align 8
  %185 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %184, i64 0
  %186 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %185, i32 0, i32 5
  store i8* %181, i8** %186, align 8
  %187 = load %struct.ext2_extent_handle*, %struct.ext2_extent_handle** %10, align 8
  %188 = getelementptr inbounds %struct.ext2_extent_handle, %struct.ext2_extent_handle* %187, i32 0, i32 4
  %189 = load %struct.TYPE_8__*, %struct.TYPE_8__** %188, align 8
  %190 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %189, i64 0
  %191 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %190, i32 0, i32 6
  store i8* %181, i8** %191, align 8
  %192 = load %struct.ext3_extent_header*, %struct.ext3_extent_header** %13, align 8
  %193 = getelementptr inbounds %struct.ext3_extent_header, %struct.ext3_extent_header* %192, i32 0, i32 0
  %194 = load i8*, i8** %193, align 8
  %195 = call i8* @ext2fs_le16_to_cpu(i8* %194)
  %196 = load %struct.ext2_extent_handle*, %struct.ext2_extent_handle** %10, align 8
  %197 = getelementptr inbounds %struct.ext2_extent_handle, %struct.ext2_extent_handle* %196, i32 0, i32 4
  %198 = load %struct.TYPE_8__*, %struct.TYPE_8__** %197, align 8
  %199 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %198, i64 0
  %200 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %199, i32 0, i32 4
  store i8* %195, i8** %200, align 8
  %201 = load %struct.ext2_extent_handle*, %struct.ext2_extent_handle** %10, align 8
  %202 = getelementptr inbounds %struct.ext2_extent_handle, %struct.ext2_extent_handle* %201, i32 0, i32 4
  %203 = load %struct.TYPE_8__*, %struct.TYPE_8__** %202, align 8
  %204 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %203, i64 0
  %205 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %204, i32 0, i32 3
  store i64 0, i64* %205, align 8
  %206 = load %struct.ext2_extent_handle*, %struct.ext2_extent_handle** %10, align 8
  %207 = getelementptr inbounds %struct.ext2_extent_handle, %struct.ext2_extent_handle* %206, i32 0, i32 5
  %208 = load %struct.ext2_inode*, %struct.ext2_inode** %207, align 8
  %209 = call i32 @EXT2_I_SIZE(%struct.ext2_inode* %208)
  %210 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %211 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %210, i32 0, i32 0
  %212 = load i32, i32* %211, align 8
  %213 = add nsw i32 %209, %212
  %214 = sub nsw i32 %213, 1
  %215 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %216 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %215, i32 0, i32 1
  %217 = load %struct.TYPE_9__*, %struct.TYPE_9__** %216, align 8
  %218 = call i32 @EXT2_BLOCK_SIZE_BITS(%struct.TYPE_9__* %217)
  %219 = ashr i32 %214, %218
  %220 = load %struct.ext2_extent_handle*, %struct.ext2_extent_handle** %10, align 8
  %221 = getelementptr inbounds %struct.ext2_extent_handle, %struct.ext2_extent_handle* %220, i32 0, i32 4
  %222 = load %struct.TYPE_8__*, %struct.TYPE_8__** %221, align 8
  %223 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %222, i64 0
  %224 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %223, i32 0, i32 1
  store i32 %219, i32* %224, align 8
  %225 = load %struct.ext2_extent_handle*, %struct.ext2_extent_handle** %10, align 8
  %226 = getelementptr inbounds %struct.ext2_extent_handle, %struct.ext2_extent_handle* %225, i32 0, i32 4
  %227 = load %struct.TYPE_8__*, %struct.TYPE_8__** %226, align 8
  %228 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %227, i64 0
  %229 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %228, i32 0, i32 2
  store i32 1, i32* %229, align 4
  %230 = load %struct.ext2_extent_handle*, %struct.ext2_extent_handle** %10, align 8
  %231 = getelementptr inbounds %struct.ext2_extent_handle, %struct.ext2_extent_handle* %230, i32 0, i32 3
  store i64 0, i64* %231, align 8
  %232 = load i32, i32* @EXT2_ET_MAGIC_EXTENT_HANDLE, align 4
  %233 = load %struct.ext2_extent_handle*, %struct.ext2_extent_handle** %10, align 8
  %234 = getelementptr inbounds %struct.ext2_extent_handle, %struct.ext2_extent_handle* %233, i32 0, i32 2
  store i32 %232, i32* %234, align 8
  %235 = load %struct.ext2_extent_handle*, %struct.ext2_extent_handle** %10, align 8
  %236 = load %struct.ext2_extent_handle**, %struct.ext2_extent_handle*** %9, align 8
  store %struct.ext2_extent_handle* %235, %struct.ext2_extent_handle** %236, align 8
  store i64 0, i64* %5, align 8
  br label %241

237:                                              ; preds = %137, %130, %67
  %238 = load %struct.ext2_extent_handle*, %struct.ext2_extent_handle** %10, align 8
  %239 = call i32 @ext2fs_extent_free(%struct.ext2_extent_handle* %238)
  %240 = load i64, i64* %11, align 8
  store i64 %240, i64* %5, align 8
  br label %241

241:                                              ; preds = %237, %138, %37, %30
  %242 = load i64, i64* %5, align 8
  ret i64 %242
}

declare dso_local i32 @EXT2_CHECK_MAGIC(%struct.TYPE_7__*, i32) #1

declare dso_local i64 @ext2fs_get_mem(i32, %struct.ext2_extent_handle**) #1

declare dso_local i32 @memset(%struct.ext2_extent_handle*, i32, i32) #1

declare dso_local i64 @ext2fs_read_inode(%struct.TYPE_7__*, i64, %struct.ext2_inode*) #1

declare dso_local i8* @ext2fs_cpu_to_le16(i32) #1

declare dso_local i64 @ext2fs_extent_header_verify(%struct.ext3_extent_header*, i32) #1

declare dso_local i8* @ext2fs_le16_to_cpu(i8*) #1

declare dso_local i64 @ext2fs_get_memzero(i32, %struct.TYPE_8__**) #1

declare dso_local i32 @EXT2_I_SIZE(%struct.ext2_inode*) #1

declare dso_local i32 @EXT2_BLOCK_SIZE_BITS(%struct.TYPE_9__*) #1

declare dso_local i32 @ext2fs_extent_free(%struct.ext2_extent_handle*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
