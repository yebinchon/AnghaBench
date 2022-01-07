; ModuleID = '/home/carl/AnghaBench/reactos/drivers/filesystems/btrfs/extr_reparse.c_set_reparse_point2.c'
source_filename = "/home/carl/AnghaBench/reactos/drivers/filesystems/btrfs/extr_reparse.c_set_reparse_point2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_33__ = type { i64, i32, i32, i32, %struct.TYPE_32__*, %struct.TYPE_27__*, i32, %struct.TYPE_29__, %struct.TYPE_26__ }
%struct.TYPE_32__ = type { %struct.TYPE_31__ }
%struct.TYPE_31__ = type { i8*, i32 }
%struct.TYPE_27__ = type { %struct.TYPE_30__ }
%struct.TYPE_30__ = type { i32 }
%struct.TYPE_29__ = type { i8*, i8*, i32, i32 }
%struct.TYPE_26__ = type { i32*, i64, i64 }
%struct.TYPE_35__ = type { %struct.TYPE_28__ }
%struct.TYPE_28__ = type { i32 }
%struct.TYPE_34__ = type { i32, i32 }
%struct.TYPE_36__ = type { i64 }

@BTRFS_TYPE_SYMLINK = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [53 x i8] c"tried to set a reparse point on an existing symlink\0A\00", align 1
@STATUS_INVALID_PARAMETER = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [40 x i8] c"buffer was not long enough to hold tag\0A\00", align 1
@STATUS_INVALID_BUFFER_SIZE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [47 x i8] c"FsRtlValidateReparsePointBuffer returned %08x\0A\00", align 1
@BTRFS_TYPE_FILE = common dso_local global i64 0, align 8
@IO_REPARSE_TAG_SYMLINK = common dso_local global i32 0, align 4
@SYMLINK_FLAG_RELATIVE = common dso_local global i32 0, align 4
@IO_REPARSE_TAG_LXSS_SYMLINK = common dso_local global i32 0, align 4
@FILE_ATTRIBUTE_REPARSE_POINT = common dso_local global i32 0, align 4
@BTRFS_TYPE_DIRECTORY = common dso_local global i64 0, align 8
@BTRFS_TYPE_CHARDEV = common dso_local global i64 0, align 8
@BTRFS_TYPE_BLOCKDEV = common dso_local global i64 0, align 8
@PagedPool = common dso_local global i32 0, align 4
@ALLOC_TAG = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [15 x i8] c"out of memory\0A\00", align 1
@STATUS_INSUFFICIENT_RESOURCES = common dso_local global i32 0, align 4
@STATUS_SUCCESS = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [29 x i8] c"truncate_file returned %08x\0A\00", align 1
@.str.5 = private unnamed_addr constant [27 x i8] c"write_file2 returned %08x\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @set_reparse_point2(%struct.TYPE_33__* %0, %struct.TYPE_35__* %1, i32 %2, %struct.TYPE_34__* %3, i32* %4, i32 %5, i32* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_33__*, align 8
  %10 = alloca %struct.TYPE_35__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_34__*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca %struct.TYPE_36__, align 8
  %19 = alloca %struct.TYPE_36__, align 8
  %20 = alloca i8*, align 8
  %21 = alloca %struct.TYPE_26__, align 8
  store %struct.TYPE_33__* %0, %struct.TYPE_33__** %9, align 8
  store %struct.TYPE_35__* %1, %struct.TYPE_35__** %10, align 8
  store i32 %2, i32* %11, align 4
  store %struct.TYPE_34__* %3, %struct.TYPE_34__** %12, align 8
  store i32* %4, i32** %13, align 8
  store i32 %5, i32* %14, align 4
  store i32* %6, i32** %15, align 8
  %22 = load %struct.TYPE_33__*, %struct.TYPE_33__** %9, align 8
  %23 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @BTRFS_TYPE_SYMLINK, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %30

27:                                               ; preds = %7
  %28 = call i32 @WARN(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str, i64 0, i64 0))
  %29 = load i32, i32* @STATUS_INVALID_PARAMETER, align 4
  store i32 %29, i32* %8, align 4
  br label %255

30:                                               ; preds = %7
  %31 = load i32, i32* %11, align 4
  %32 = sext i32 %31 to i64
  %33 = icmp ult i64 %32, 4
  br i1 %33, label %34, label %37

34:                                               ; preds = %30
  %35 = call i32 @WARN(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0))
  %36 = load i32, i32* @STATUS_INVALID_BUFFER_SIZE, align 4
  store i32 %36, i32* %8, align 4
  br label %255

37:                                               ; preds = %30
  %38 = load i32, i32* %11, align 4
  %39 = load %struct.TYPE_35__*, %struct.TYPE_35__** %10, align 8
  %40 = call i32 @fFsRtlValidateReparsePointBuffer(i32 %38, %struct.TYPE_35__* %39)
  store i32 %40, i32* %16, align 4
  %41 = load i32, i32* %16, align 4
  %42 = call i32 @NT_SUCCESS(i32 %41)
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %48, label %44

44:                                               ; preds = %37
  %45 = load i32, i32* %16, align 4
  %46 = call i32 (i8*, ...) @ERR(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.2, i64 0, i64 0), i32 %45)
  %47 = load i32, i32* %16, align 4
  store i32 %47, i32* %8, align 4
  br label %255

48:                                               ; preds = %37
  %49 = load %struct.TYPE_35__*, %struct.TYPE_35__** %10, align 8
  %50 = call i32 @RtlCopyMemory(i32* %17, %struct.TYPE_35__* %49, i32 4)
  %51 = load %struct.TYPE_33__*, %struct.TYPE_33__** %9, align 8
  %52 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* @BTRFS_TYPE_FILE, align 8
  %55 = icmp eq i64 %53, %54
  br i1 %55, label %56, label %90

56:                                               ; preds = %48
  %57 = load i32, i32* %17, align 4
  %58 = load i32, i32* @IO_REPARSE_TAG_SYMLINK, align 4
  %59 = icmp eq i32 %57, %58
  br i1 %59, label %60, label %68

60:                                               ; preds = %56
  %61 = load %struct.TYPE_35__*, %struct.TYPE_35__** %10, align 8
  %62 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = load i32, i32* @SYMLINK_FLAG_RELATIVE, align 4
  %66 = and i32 %64, %65
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %72, label %68

68:                                               ; preds = %60, %56
  %69 = load i32, i32* %17, align 4
  %70 = load i32, i32* @IO_REPARSE_TAG_LXSS_SYMLINK, align 4
  %71 = icmp eq i32 %69, %70
  br i1 %71, label %72, label %90

72:                                               ; preds = %68, %60
  %73 = load i32, i32* %14, align 4
  %74 = load i32*, i32** %13, align 8
  %75 = load %struct.TYPE_33__*, %struct.TYPE_33__** %9, align 8
  %76 = load %struct.TYPE_34__*, %struct.TYPE_34__** %12, align 8
  %77 = load %struct.TYPE_35__*, %struct.TYPE_35__** %10, align 8
  %78 = load i32, i32* %11, align 4
  %79 = load i32, i32* %17, align 4
  %80 = load i32, i32* @IO_REPARSE_TAG_SYMLINK, align 4
  %81 = icmp eq i32 %79, %80
  %82 = zext i1 %81 to i32
  %83 = load i32*, i32** %15, align 8
  %84 = call i32 @set_symlink(i32 %73, i32* %74, %struct.TYPE_33__* %75, %struct.TYPE_34__* %76, %struct.TYPE_35__* %77, i32 %78, i32 %82, i32* %83)
  store i32 %84, i32* %16, align 4
  %85 = load i32, i32* @FILE_ATTRIBUTE_REPARSE_POINT, align 4
  %86 = load %struct.TYPE_33__*, %struct.TYPE_33__** %9, align 8
  %87 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %86, i32 0, i32 6
  %88 = load i32, i32* %87, align 8
  %89 = or i32 %88, %85
  store i32 %89, i32* %87, align 8
  br label %253

90:                                               ; preds = %68, %48
  %91 = load %struct.TYPE_33__*, %struct.TYPE_33__** %9, align 8
  %92 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %91, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = load i64, i64* @BTRFS_TYPE_DIRECTORY, align 8
  %95 = icmp eq i64 %93, %94
  br i1 %95, label %108, label %96

96:                                               ; preds = %90
  %97 = load %struct.TYPE_33__*, %struct.TYPE_33__** %9, align 8
  %98 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %97, i32 0, i32 0
  %99 = load i64, i64* %98, align 8
  %100 = load i64, i64* @BTRFS_TYPE_CHARDEV, align 8
  %101 = icmp eq i64 %99, %100
  br i1 %101, label %108, label %102

102:                                              ; preds = %96
  %103 = load %struct.TYPE_33__*, %struct.TYPE_33__** %9, align 8
  %104 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %103, i32 0, i32 0
  %105 = load i64, i64* %104, align 8
  %106 = load i64, i64* @BTRFS_TYPE_BLOCKDEV, align 8
  %107 = icmp eq i64 %105, %106
  br i1 %107, label %108, label %149

108:                                              ; preds = %102, %96, %90
  %109 = load i32, i32* @PagedPool, align 4
  %110 = load i32, i32* %11, align 4
  %111 = load i32, i32* @ALLOC_TAG, align 4
  %112 = call i32* @ExAllocatePoolWithTag(i32 %109, i32 %110, i32 %111)
  %113 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %21, i32 0, i32 0
  store i32* %112, i32** %113, align 8
  %114 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %21, i32 0, i32 0
  %115 = load i32*, i32** %114, align 8
  %116 = icmp ne i32* %115, null
  br i1 %116, label %120, label %117

117:                                              ; preds = %108
  %118 = call i32 (i8*, ...) @ERR(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0))
  %119 = load i32, i32* @STATUS_INSUFFICIENT_RESOURCES, align 4
  store i32 %119, i32* %8, align 4
  br label %255

120:                                              ; preds = %108
  %121 = load i32, i32* %11, align 4
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %21, i32 0, i32 1
  store i64 %122, i64* %123, align 8
  %124 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %21, i32 0, i32 2
  store i64 %122, i64* %124, align 8
  %125 = load %struct.TYPE_33__*, %struct.TYPE_33__** %9, align 8
  %126 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %125, i32 0, i32 8
  %127 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %126, i32 0, i32 0
  %128 = load i32*, i32** %127, align 8
  %129 = icmp ne i32* %128, null
  br i1 %129, label %130, label %136

130:                                              ; preds = %120
  %131 = load %struct.TYPE_33__*, %struct.TYPE_33__** %9, align 8
  %132 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %131, i32 0, i32 8
  %133 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %132, i32 0, i32 0
  %134 = load i32*, i32** %133, align 8
  %135 = call i32 @ExFreePool(i32* %134)
  br label %136

136:                                              ; preds = %130, %120
  %137 = load %struct.TYPE_33__*, %struct.TYPE_33__** %9, align 8
  %138 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %137, i32 0, i32 8
  %139 = bitcast %struct.TYPE_26__* %138 to i8*
  %140 = bitcast %struct.TYPE_26__* %21 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %139, i8* align 8 %140, i64 24, i1 false)
  %141 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %21, i32 0, i32 0
  %142 = load i32*, i32** %141, align 8
  %143 = load %struct.TYPE_35__*, %struct.TYPE_35__** %10, align 8
  %144 = load i32, i32* %11, align 4
  %145 = call i32 @RtlCopyMemory(i32* %142, %struct.TYPE_35__* %143, i32 %144)
  %146 = load %struct.TYPE_33__*, %struct.TYPE_33__** %9, align 8
  %147 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %146, i32 0, i32 1
  store i32 1, i32* %147, align 8
  %148 = load i32, i32* @STATUS_SUCCESS, align 4
  store i32 %148, i32* %16, align 4
  br label %180

149:                                              ; preds = %102
  %150 = load %struct.TYPE_33__*, %struct.TYPE_33__** %9, align 8
  %151 = load i32, i32* %14, align 4
  %152 = load i32*, i32** %15, align 8
  %153 = call i32 @truncate_file(%struct.TYPE_33__* %150, i32 0, i32 %151, i32* %152)
  store i32 %153, i32* %16, align 4
  %154 = load i32, i32* %16, align 4
  %155 = call i32 @NT_SUCCESS(i32 %154)
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %161, label %157

157:                                              ; preds = %149
  %158 = load i32, i32* %16, align 4
  %159 = call i32 (i8*, ...) @ERR(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i64 0, i64 0), i32 %158)
  %160 = load i32, i32* %16, align 4
  store i32 %160, i32* %8, align 4
  br label %255

161:                                              ; preds = %149
  %162 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %18, i32 0, i32 0
  store i64 0, i64* %162, align 8
  %163 = load %struct.TYPE_33__*, %struct.TYPE_33__** %9, align 8
  %164 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %163, i32 0, i32 5
  %165 = load %struct.TYPE_27__*, %struct.TYPE_27__** %164, align 8
  %166 = load i32, i32* %14, align 4
  %167 = load %struct.TYPE_35__*, %struct.TYPE_35__** %10, align 8
  %168 = load i32*, i32** %15, align 8
  %169 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %18, i32 0, i32 0
  %170 = load i64, i64* %169, align 8
  %171 = call i32 @write_file2(%struct.TYPE_27__* %165, i32 %166, i64 %170, %struct.TYPE_35__* %167, i32* %11, i32 0, i32 1, i32 1, i32 0, i32 0, i32* %168)
  store i32 %171, i32* %16, align 4
  %172 = load i32, i32* %16, align 4
  %173 = call i32 @NT_SUCCESS(i32 %172)
  %174 = icmp ne i32 %173, 0
  br i1 %174, label %179, label %175

175:                                              ; preds = %161
  %176 = load i32, i32* %16, align 4
  %177 = call i32 (i8*, ...) @ERR(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.5, i64 0, i64 0), i32 %176)
  %178 = load i32, i32* %16, align 4
  store i32 %178, i32* %8, align 4
  br label %255

179:                                              ; preds = %161
  br label %180

180:                                              ; preds = %179, %136
  %181 = call i32 @KeQuerySystemTime(%struct.TYPE_36__* %19)
  %182 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %19, i32 0, i32 0
  %183 = load i64, i64* %182, align 8
  %184 = call i32 @win_time_to_unix(i64 %183, i8** %20)
  %185 = load %struct.TYPE_33__*, %struct.TYPE_33__** %9, align 8
  %186 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %185, i32 0, i32 5
  %187 = load %struct.TYPE_27__*, %struct.TYPE_27__** %186, align 8
  %188 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %187, i32 0, i32 0
  %189 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %188, i32 0, i32 0
  %190 = load i32, i32* %189, align 4
  %191 = load %struct.TYPE_33__*, %struct.TYPE_33__** %9, align 8
  %192 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %191, i32 0, i32 7
  %193 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %192, i32 0, i32 3
  store i32 %190, i32* %193, align 4
  %194 = load %struct.TYPE_33__*, %struct.TYPE_33__** %9, align 8
  %195 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %194, i32 0, i32 7
  %196 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %195, i32 0, i32 2
  %197 = load i32, i32* %196, align 8
  %198 = add nsw i32 %197, 1
  store i32 %198, i32* %196, align 8
  %199 = load %struct.TYPE_34__*, %struct.TYPE_34__** %12, align 8
  %200 = icmp ne %struct.TYPE_34__* %199, null
  br i1 %200, label %201, label %206

201:                                              ; preds = %180
  %202 = load %struct.TYPE_34__*, %struct.TYPE_34__** %12, align 8
  %203 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %202, i32 0, i32 1
  %204 = load i32, i32* %203, align 4
  %205 = icmp ne i32 %204, 0
  br i1 %205, label %211, label %206

206:                                              ; preds = %201, %180
  %207 = load i8*, i8** %20, align 8
  %208 = load %struct.TYPE_33__*, %struct.TYPE_33__** %9, align 8
  %209 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %208, i32 0, i32 7
  %210 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %209, i32 0, i32 1
  store i8* %207, i8** %210, align 8
  br label %211

211:                                              ; preds = %206, %201
  %212 = load %struct.TYPE_34__*, %struct.TYPE_34__** %12, align 8
  %213 = icmp ne %struct.TYPE_34__* %212, null
  br i1 %213, label %214, label %219

214:                                              ; preds = %211
  %215 = load %struct.TYPE_34__*, %struct.TYPE_34__** %12, align 8
  %216 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %215, i32 0, i32 0
  %217 = load i32, i32* %216, align 4
  %218 = icmp ne i32 %217, 0
  br i1 %218, label %224, label %219

219:                                              ; preds = %214, %211
  %220 = load i8*, i8** %20, align 8
  %221 = load %struct.TYPE_33__*, %struct.TYPE_33__** %9, align 8
  %222 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %221, i32 0, i32 7
  %223 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %222, i32 0, i32 0
  store i8* %220, i8** %223, align 8
  br label %224

224:                                              ; preds = %219, %214
  %225 = load i32, i32* @FILE_ATTRIBUTE_REPARSE_POINT, align 4
  %226 = load %struct.TYPE_33__*, %struct.TYPE_33__** %9, align 8
  %227 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %226, i32 0, i32 6
  %228 = load i32, i32* %227, align 8
  %229 = or i32 %228, %225
  store i32 %229, i32* %227, align 8
  %230 = load %struct.TYPE_33__*, %struct.TYPE_33__** %9, align 8
  %231 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %230, i32 0, i32 2
  store i32 1, i32* %231, align 4
  %232 = load %struct.TYPE_33__*, %struct.TYPE_33__** %9, align 8
  %233 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %232, i32 0, i32 5
  %234 = load %struct.TYPE_27__*, %struct.TYPE_27__** %233, align 8
  %235 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %234, i32 0, i32 0
  %236 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %235, i32 0, i32 0
  %237 = load i32, i32* %236, align 4
  %238 = load %struct.TYPE_33__*, %struct.TYPE_33__** %9, align 8
  %239 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %238, i32 0, i32 4
  %240 = load %struct.TYPE_32__*, %struct.TYPE_32__** %239, align 8
  %241 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %240, i32 0, i32 0
  %242 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %241, i32 0, i32 1
  store i32 %237, i32* %242, align 8
  %243 = load i8*, i8** %20, align 8
  %244 = load %struct.TYPE_33__*, %struct.TYPE_33__** %9, align 8
  %245 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %244, i32 0, i32 4
  %246 = load %struct.TYPE_32__*, %struct.TYPE_32__** %245, align 8
  %247 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %246, i32 0, i32 0
  %248 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %247, i32 0, i32 0
  store i8* %243, i8** %248, align 8
  %249 = load %struct.TYPE_33__*, %struct.TYPE_33__** %9, align 8
  %250 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %249, i32 0, i32 3
  store i32 1, i32* %250, align 8
  %251 = load %struct.TYPE_33__*, %struct.TYPE_33__** %9, align 8
  %252 = call i32 @mark_fcb_dirty(%struct.TYPE_33__* %251)
  br label %253

253:                                              ; preds = %224, %72
  %254 = load i32, i32* @STATUS_SUCCESS, align 4
  store i32 %254, i32* %8, align 4
  br label %255

255:                                              ; preds = %253, %175, %157, %117, %44, %34, %27
  %256 = load i32, i32* %8, align 4
  ret i32 %256
}

declare dso_local i32 @WARN(i8*) #1

declare dso_local i32 @fFsRtlValidateReparsePointBuffer(i32, %struct.TYPE_35__*) #1

declare dso_local i32 @NT_SUCCESS(i32) #1

declare dso_local i32 @ERR(i8*, ...) #1

declare dso_local i32 @RtlCopyMemory(i32*, %struct.TYPE_35__*, i32) #1

declare dso_local i32 @set_symlink(i32, i32*, %struct.TYPE_33__*, %struct.TYPE_34__*, %struct.TYPE_35__*, i32, i32, i32*) #1

declare dso_local i32* @ExAllocatePoolWithTag(i32, i32, i32) #1

declare dso_local i32 @ExFreePool(i32*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @truncate_file(%struct.TYPE_33__*, i32, i32, i32*) #1

declare dso_local i32 @write_file2(%struct.TYPE_27__*, i32, i64, %struct.TYPE_35__*, i32*, i32, i32, i32, i32, i32, i32*) #1

declare dso_local i32 @KeQuerySystemTime(%struct.TYPE_36__*) #1

declare dso_local i32 @win_time_to_unix(i64, i8**) #1

declare dso_local i32 @mark_fcb_dirty(%struct.TYPE_33__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
