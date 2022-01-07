; ModuleID = '/home/carl/AnghaBench/reactos/drivers/filesystems/btrfs/extr_fileinfo.c_set_disposition_information.c'
source_filename = "/home/carl/AnghaBench/reactos/drivers/filesystems/btrfs/extr_fileinfo.c_set_disposition_information.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_20__ = type { i64, i32, i32 }
%struct.TYPE_22__ = type { %struct.TYPE_25__ }
%struct.TYPE_25__ = type { %struct.TYPE_24__* }
%struct.TYPE_24__ = type { i32, i64 }
%struct.TYPE_23__ = type { i32, %struct.TYPE_33__*, %struct.TYPE_21__* }
%struct.TYPE_33__ = type { i32, i64, i64, %struct.TYPE_31__, %struct.TYPE_30__*, %struct.TYPE_29__, %struct.TYPE_28__*, i64 }
%struct.TYPE_31__ = type { i32 }
%struct.TYPE_30__ = type { i32 }
%struct.TYPE_29__ = type { i64 }
%struct.TYPE_28__ = type { i64 }
%struct.TYPE_21__ = type { %struct.TYPE_32__* }
%struct.TYPE_32__ = type { i64, i32, i32, %struct.TYPE_27__* }
%struct.TYPE_27__ = type { %struct.TYPE_26__* }
%struct.TYPE_26__ = type { i32 }

@STATUS_INVALID_PARAMETER = common dso_local global i32 0, align 4
@FILE_DISPOSITION_DELETE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"changing delete_on_close to %s for fcb %p\0A\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"true\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"false\00", align 1
@.str.3 = private unnamed_addr constant [23 x i8] c"no fileref for stream\0A\00", align 1
@STATUS_INTERNAL_ERROR = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [11 x i8] c"atts = %x\0A\00", align 1
@FILE_ATTRIBUTE_READONLY = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [42 x i8] c"not allowing readonly file to be deleted\0A\00", align 1
@STATUS_CANNOT_DELETE = common dso_local global i32 0, align 4
@SUBVOL_ROOT_INODE = common dso_local global i64 0, align 8
@BTRFS_ROOT_FSTREE = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [35 x i8] c"not allowing \\$Root to be deleted\0A\00", align 1
@STATUS_ACCESS_DENIED = common dso_local global i32 0, align 4
@BTRFS_TYPE_DIRECTORY = common dso_local global i64 0, align 8
@.str.7 = private unnamed_addr constant [21 x i8] c"directory not empty\0A\00", align 1
@STATUS_DIRECTORY_NOT_EMPTY = common dso_local global i32 0, align 4
@MmFlushForDelete = common dso_local global i32 0, align 4
@FILE_DISPOSITION_FORCE_IMAGE_SECTION_CHECK = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [57 x i8] c"trying to delete file which is being mapped as an image\0A\00", align 1
@FILE_DISPOSITION_POSIX_SEMANTICS = common dso_local global i32 0, align 4
@STATUS_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_20__*, %struct.TYPE_22__*, %struct.TYPE_23__*, i32)* @set_disposition_information to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @set_disposition_information(%struct.TYPE_20__* %0, %struct.TYPE_22__* %1, %struct.TYPE_23__* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_20__*, align 8
  %7 = alloca %struct.TYPE_22__*, align 8
  %8 = alloca %struct.TYPE_23__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_33__*, align 8
  %11 = alloca %struct.TYPE_21__*, align 8
  %12 = alloca %struct.TYPE_32__*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.TYPE_24__*, align 8
  %17 = alloca %struct.TYPE_24__*, align 8
  store %struct.TYPE_20__* %0, %struct.TYPE_20__** %6, align 8
  store %struct.TYPE_22__* %1, %struct.TYPE_22__** %7, align 8
  store %struct.TYPE_23__* %2, %struct.TYPE_23__** %8, align 8
  store i32 %3, i32* %9, align 4
  %18 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %19 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %18, i32 0, i32 1
  %20 = load %struct.TYPE_33__*, %struct.TYPE_33__** %19, align 8
  store %struct.TYPE_33__* %20, %struct.TYPE_33__** %10, align 8
  %21 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %22 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %21, i32 0, i32 2
  %23 = load %struct.TYPE_21__*, %struct.TYPE_21__** %22, align 8
  store %struct.TYPE_21__* %23, %struct.TYPE_21__** %11, align 8
  %24 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %25 = icmp ne %struct.TYPE_21__* %24, null
  br i1 %25, label %26, label %30

26:                                               ; preds = %4
  %27 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %28 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %27, i32 0, i32 0
  %29 = load %struct.TYPE_32__*, %struct.TYPE_32__** %28, align 8
  br label %31

30:                                               ; preds = %4
  br label %31

31:                                               ; preds = %30, %26
  %32 = phi %struct.TYPE_32__* [ %29, %26 ], [ null, %30 ]
  store %struct.TYPE_32__* %32, %struct.TYPE_32__** %12, align 8
  %33 = load %struct.TYPE_32__*, %struct.TYPE_32__** %12, align 8
  %34 = icmp ne %struct.TYPE_32__* %33, null
  br i1 %34, label %37, label %35

35:                                               ; preds = %31
  %36 = load i32, i32* @STATUS_INVALID_PARAMETER, align 4
  store i32 %36, i32* %5, align 4
  br label %235

37:                                               ; preds = %31
  %38 = load i32, i32* %9, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %48

40:                                               ; preds = %37
  %41 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %42 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %42, i32 0, i32 0
  %44 = load %struct.TYPE_24__*, %struct.TYPE_24__** %43, align 8
  store %struct.TYPE_24__* %44, %struct.TYPE_24__** %16, align 8
  %45 = load %struct.TYPE_24__*, %struct.TYPE_24__** %16, align 8
  %46 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  store i32 %47, i32* %14, align 4
  br label %62

48:                                               ; preds = %37
  %49 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %50 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %50, i32 0, i32 0
  %52 = load %struct.TYPE_24__*, %struct.TYPE_24__** %51, align 8
  store %struct.TYPE_24__* %52, %struct.TYPE_24__** %17, align 8
  %53 = load %struct.TYPE_24__*, %struct.TYPE_24__** %17, align 8
  %54 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %53, i32 0, i32 1
  %55 = load i64, i64* %54, align 8
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %59

57:                                               ; preds = %48
  %58 = load i32, i32* @FILE_DISPOSITION_DELETE, align 4
  br label %60

59:                                               ; preds = %48
  br label %60

60:                                               ; preds = %59, %57
  %61 = phi i32 [ %58, %57 ], [ 0, %59 ]
  store i32 %61, i32* %14, align 4
  br label %62

62:                                               ; preds = %60, %40
  %63 = load %struct.TYPE_33__*, %struct.TYPE_33__** %10, align 8
  %64 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %63, i32 0, i32 3
  %65 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = call i32 @ExAcquireResourceExclusiveLite(i32 %66, i32 1)
  %68 = load i32, i32* %14, align 4
  %69 = load i32, i32* @FILE_DISPOSITION_DELETE, align 4
  %70 = and i32 %68, %69
  %71 = icmp ne i32 %70, 0
  %72 = zext i1 %71 to i64
  %73 = select i1 %71, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0)
  %74 = load %struct.TYPE_33__*, %struct.TYPE_33__** %10, align 8
  %75 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i8* %73, %struct.TYPE_33__* %74)
  %76 = load %struct.TYPE_33__*, %struct.TYPE_33__** %10, align 8
  %77 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %76, i32 0, i32 7
  %78 = load i64, i64* %77, align 8
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %97

80:                                               ; preds = %62
  %81 = load %struct.TYPE_32__*, %struct.TYPE_32__** %12, align 8
  %82 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %81, i32 0, i32 3
  %83 = load %struct.TYPE_27__*, %struct.TYPE_27__** %82, align 8
  %84 = icmp ne %struct.TYPE_27__* %83, null
  br i1 %84, label %85, label %93

85:                                               ; preds = %80
  %86 = load %struct.TYPE_32__*, %struct.TYPE_32__** %12, align 8
  %87 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %86, i32 0, i32 3
  %88 = load %struct.TYPE_27__*, %struct.TYPE_27__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %88, i32 0, i32 0
  %90 = load %struct.TYPE_26__*, %struct.TYPE_26__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  store i32 %92, i32* %13, align 4
  br label %96

93:                                               ; preds = %80
  %94 = call i32 @ERR(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0))
  %95 = load i32, i32* @STATUS_INTERNAL_ERROR, align 4
  store i32 %95, i32* %15, align 4
  br label %203

96:                                               ; preds = %85
  br label %101

97:                                               ; preds = %62
  %98 = load %struct.TYPE_33__*, %struct.TYPE_33__** %10, align 8
  %99 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 8
  store i32 %100, i32* %13, align 4
  br label %101

101:                                              ; preds = %97, %96
  %102 = load i32, i32* %13, align 4
  %103 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0), i32 %102)
  %104 = load i32, i32* %13, align 4
  %105 = load i32, i32* @FILE_ATTRIBUTE_READONLY, align 4
  %106 = and i32 %104, %105
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %111

108:                                              ; preds = %101
  %109 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.5, i64 0, i64 0))
  %110 = load i32, i32* @STATUS_CANNOT_DELETE, align 4
  store i32 %110, i32* %15, align 4
  br label %203

111:                                              ; preds = %101
  %112 = load %struct.TYPE_33__*, %struct.TYPE_33__** %10, align 8
  %113 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %112, i32 0, i32 1
  %114 = load i64, i64* %113, align 8
  %115 = load i64, i64* @SUBVOL_ROOT_INODE, align 8
  %116 = icmp eq i64 %114, %115
  br i1 %116, label %117, label %128

117:                                              ; preds = %111
  %118 = load %struct.TYPE_33__*, %struct.TYPE_33__** %10, align 8
  %119 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %118, i32 0, i32 6
  %120 = load %struct.TYPE_28__*, %struct.TYPE_28__** %119, align 8
  %121 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %120, i32 0, i32 0
  %122 = load i64, i64* %121, align 8
  %123 = load i64, i64* @BTRFS_ROOT_FSTREE, align 8
  %124 = icmp eq i64 %122, %123
  br i1 %124, label %125, label %128

125:                                              ; preds = %117
  %126 = call i32 @WARN(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.6, i64 0, i64 0))
  %127 = load i32, i32* @STATUS_ACCESS_DENIED, align 4
  store i32 %127, i32* %15, align 4
  br label %203

128:                                              ; preds = %117, %111
  %129 = load %struct.TYPE_33__*, %struct.TYPE_33__** %10, align 8
  %130 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %129, i32 0, i32 2
  %131 = load i64, i64* %130, align 8
  %132 = load i64, i64* @BTRFS_TYPE_DIRECTORY, align 8
  %133 = icmp eq i64 %131, %132
  br i1 %133, label %134, label %154

134:                                              ; preds = %128
  %135 = load %struct.TYPE_33__*, %struct.TYPE_33__** %10, align 8
  %136 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %135, i32 0, i32 5
  %137 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %136, i32 0, i32 0
  %138 = load i64, i64* %137, align 8
  %139 = icmp sgt i64 %138, 0
  br i1 %139, label %140, label %154

140:                                              ; preds = %134
  %141 = load %struct.TYPE_32__*, %struct.TYPE_32__** %12, align 8
  %142 = icmp ne %struct.TYPE_32__* %141, null
  br i1 %142, label %143, label %151

143:                                              ; preds = %140
  %144 = load %struct.TYPE_32__*, %struct.TYPE_32__** %12, align 8
  %145 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %144, i32 0, i32 0
  %146 = load i64, i64* %145, align 8
  %147 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %148 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %147, i32 0, i32 0
  %149 = load i64, i64* %148, align 8
  %150 = icmp ne i64 %146, %149
  br i1 %150, label %151, label %154

151:                                              ; preds = %143, %140
  %152 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7, i64 0, i64 0))
  %153 = load i32, i32* @STATUS_DIRECTORY_NOT_EMPTY, align 4
  store i32 %153, i32* %15, align 4
  br label %203

154:                                              ; preds = %143, %134, %128
  %155 = load %struct.TYPE_33__*, %struct.TYPE_33__** %10, align 8
  %156 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %155, i32 0, i32 4
  %157 = load %struct.TYPE_30__*, %struct.TYPE_30__** %156, align 8
  %158 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %157, i32 0, i32 0
  %159 = load i32, i32* @MmFlushForDelete, align 4
  %160 = call i32 @MmFlushImageSection(i32* %158, i32 %159)
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %174, label %162

162:                                              ; preds = %154
  %163 = load i32, i32* %9, align 4
  %164 = icmp ne i32 %163, 0
  br i1 %164, label %165, label %170

165:                                              ; preds = %162
  %166 = load i32, i32* %14, align 4
  %167 = load i32, i32* @FILE_DISPOSITION_FORCE_IMAGE_SECTION_CHECK, align 4
  %168 = and i32 %166, %167
  %169 = icmp ne i32 %168, 0
  br i1 %169, label %170, label %173

170:                                              ; preds = %165, %162
  %171 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.8, i64 0, i64 0))
  %172 = load i32, i32* @STATUS_CANNOT_DELETE, align 4
  store i32 %172, i32* %15, align 4
  br label %203

173:                                              ; preds = %165
  br label %174

174:                                              ; preds = %173, %154
  %175 = load i32, i32* %14, align 4
  %176 = load i32, i32* @FILE_DISPOSITION_DELETE, align 4
  %177 = and i32 %175, %176
  %178 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %179 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %178, i32 0, i32 0
  %180 = load %struct.TYPE_32__*, %struct.TYPE_32__** %179, align 8
  %181 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %180, i32 0, i32 1
  store i32 %177, i32* %181, align 8
  %182 = load i32, i32* %14, align 4
  %183 = load i32, i32* @FILE_DISPOSITION_DELETE, align 4
  %184 = and i32 %182, %183
  %185 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %186 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %185, i32 0, i32 0
  store i32 %184, i32* %186, align 8
  %187 = load i32, i32* %14, align 4
  %188 = load i32, i32* @FILE_DISPOSITION_DELETE, align 4
  %189 = and i32 %187, %188
  %190 = icmp ne i32 %189, 0
  br i1 %190, label %191, label %201

191:                                              ; preds = %174
  %192 = load i32, i32* %14, align 4
  %193 = load i32, i32* @FILE_DISPOSITION_POSIX_SEMANTICS, align 4
  %194 = and i32 %192, %193
  %195 = icmp ne i32 %194, 0
  br i1 %195, label %196, label %201

196:                                              ; preds = %191
  %197 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %198 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %197, i32 0, i32 0
  %199 = load %struct.TYPE_32__*, %struct.TYPE_32__** %198, align 8
  %200 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %199, i32 0, i32 2
  store i32 1, i32* %200, align 4
  br label %201

201:                                              ; preds = %196, %191, %174
  %202 = load i32, i32* @STATUS_SUCCESS, align 4
  store i32 %202, i32* %15, align 4
  br label %203

203:                                              ; preds = %201, %170, %151, %125, %108, %93
  %204 = load %struct.TYPE_33__*, %struct.TYPE_33__** %10, align 8
  %205 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %204, i32 0, i32 3
  %206 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %205, i32 0, i32 0
  %207 = load i32, i32* %206, align 8
  %208 = call i32 @ExReleaseResourceLite(i32 %207)
  %209 = load i32, i32* %15, align 4
  %210 = call i64 @NT_SUCCESS(i32 %209)
  %211 = icmp ne i64 %210, 0
  br i1 %211, label %212, label %233

212:                                              ; preds = %203
  %213 = load i32, i32* %14, align 4
  %214 = load i32, i32* @FILE_DISPOSITION_DELETE, align 4
  %215 = and i32 %213, %214
  %216 = icmp ne i32 %215, 0
  br i1 %216, label %217, label %233

217:                                              ; preds = %212
  %218 = load %struct.TYPE_33__*, %struct.TYPE_33__** %10, align 8
  %219 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %218, i32 0, i32 2
  %220 = load i64, i64* %219, align 8
  %221 = load i64, i64* @BTRFS_TYPE_DIRECTORY, align 8
  %222 = icmp eq i64 %220, %221
  br i1 %222, label %223, label %233

223:                                              ; preds = %217
  %224 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %225 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %224, i32 0, i32 2
  %226 = load i32, i32* %225, align 4
  %227 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %228 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %227, i32 0, i32 1
  %229 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %230 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %229, i32 0, i32 1
  %231 = load %struct.TYPE_33__*, %struct.TYPE_33__** %230, align 8
  %232 = call i32 @FsRtlNotifyFullChangeDirectory(i32 %226, i32* %228, %struct.TYPE_33__* %231, i32* null, i32 0, i32 0, i32 0, i32* null, i32* null, i32* null)
  br label %233

233:                                              ; preds = %223, %217, %212, %203
  %234 = load i32, i32* %15, align 4
  store i32 %234, i32* %5, align 4
  br label %235

235:                                              ; preds = %233, %35
  %236 = load i32, i32* %5, align 4
  ret i32 %236
}

declare dso_local i32 @ExAcquireResourceExclusiveLite(i32, i32) #1

declare dso_local i32 @TRACE(i8*, ...) #1

declare dso_local i32 @ERR(i8*) #1

declare dso_local i32 @WARN(i8*) #1

declare dso_local i32 @MmFlushImageSection(i32*, i32) #1

declare dso_local i32 @ExReleaseResourceLite(i32) #1

declare dso_local i64 @NT_SUCCESS(i32) #1

declare dso_local i32 @FsRtlNotifyFullChangeDirectory(i32, i32*, %struct.TYPE_33__*, i32*, i32, i32, i32, i32*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
