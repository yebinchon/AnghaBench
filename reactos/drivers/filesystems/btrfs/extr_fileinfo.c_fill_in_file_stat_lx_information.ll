; ModuleID = '/home/carl/AnghaBench/reactos/drivers/filesystems/btrfs/extr_fileinfo.c_fill_in_file_stat_lx_information.c'
source_filename = "/home/carl/AnghaBench/reactos/drivers/filesystems/btrfs/extr_fileinfo.c_fill_in_file_stat_lx_information.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_25__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, %struct.TYPE_31__, %struct.TYPE_30__, %struct.TYPE_23__, %struct.TYPE_23__, %struct.TYPE_23__, %struct.TYPE_23__, %struct.TYPE_26__ }
%struct.TYPE_31__ = type { i32 }
%struct.TYPE_30__ = type { i32 }
%struct.TYPE_23__ = type { i8* }
%struct.TYPE_26__ = type { i8*, i8* }
%struct.TYPE_21__ = type { i64, i64, i64, %struct.TYPE_24__, i64, %struct.TYPE_29__, %struct.TYPE_28__*, %struct.TYPE_27__*, i64 }
%struct.TYPE_24__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_29__ = type { i32 }
%struct.TYPE_28__ = type { %struct.TYPE_21__* }
%struct.TYPE_27__ = type { i64 }
%struct.TYPE_22__ = type { i32, %struct.TYPE_34__* }
%struct.TYPE_34__ = type { %struct.TYPE_33__* }
%struct.TYPE_33__ = type { %struct.TYPE_32__* }
%struct.TYPE_32__ = type { i64, %struct.TYPE_24__ }

@FILE_ATTRIBUTE_NORMAL = common dso_local global i8* null, align 8
@BTRFS_TYPE_SOCKET = common dso_local global i64 0, align 8
@IO_REPARSE_TAG_LXSS_SOCKET = common dso_local global i64 0, align 8
@BTRFS_TYPE_FIFO = common dso_local global i64 0, align 8
@IO_REPARSE_TAG_LXSS_FIFO = common dso_local global i64 0, align 8
@BTRFS_TYPE_CHARDEV = common dso_local global i64 0, align 8
@IO_REPARSE_TAG_LXSS_CHARDEV = common dso_local global i64 0, align 8
@BTRFS_TYPE_BLOCKDEV = common dso_local global i64 0, align 8
@IO_REPARSE_TAG_LXSS_BLOCKDEV = common dso_local global i64 0, align 8
@FILE_ATTRIBUTE_REPARSE_POINT = common dso_local global i32 0, align 4
@LX_FILE_METADATA_HAS_UID = common dso_local global i32 0, align 4
@LX_FILE_METADATA_HAS_GID = common dso_local global i32 0, align 4
@LX_FILE_METADATA_HAS_MODE = common dso_local global i32 0, align 4
@LX_FILE_METADATA_HAS_DEVICE_ID = common dso_local global i32 0, align 4
@LX_FILE_CASE_SENSITIVE_DIR = common dso_local global i32 0, align 4
@__S_IFBLK = common dso_local global i32 0, align 4
@__S_IFCHR = common dso_local global i32 0, align 4
@STATUS_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_25__*, %struct.TYPE_21__*, %struct.TYPE_22__*, i32*)* @fill_in_file_stat_lx_information to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fill_in_file_stat_lx_information(%struct.TYPE_25__* %0, %struct.TYPE_21__* %1, %struct.TYPE_22__* %2, i32* %3) #0 {
  %5 = alloca %struct.TYPE_25__*, align 8
  %6 = alloca %struct.TYPE_21__*, align 8
  %7 = alloca %struct.TYPE_22__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_24__*, align 8
  %10 = alloca %struct.TYPE_23__, align 8
  store %struct.TYPE_25__* %0, %struct.TYPE_25__** %5, align 8
  store %struct.TYPE_21__* %1, %struct.TYPE_21__** %6, align 8
  store %struct.TYPE_22__* %2, %struct.TYPE_22__** %7, align 8
  store i32* %3, i32** %8, align 8
  %11 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %12 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %11, i32 0, i32 8
  %13 = load i64, i64* %12, align 8
  %14 = inttoptr i64 %13 to i8*
  %15 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %16 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %15, i32 0, i32 16
  %17 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %16, i32 0, i32 1
  store i8* %14, i8** %17, align 8
  %18 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %19 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %18, i32 0, i32 7
  %20 = load %struct.TYPE_27__*, %struct.TYPE_27__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = inttoptr i64 %22 to i8*
  %24 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %25 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %24, i32 0, i32 16
  %26 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %25, i32 0, i32 0
  store i8* %23, i8** %26, align 8
  %27 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %28 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %27, i32 0, i32 4
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %40

31:                                               ; preds = %4
  %32 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %33 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %32, i32 0, i32 1
  %34 = load %struct.TYPE_34__*, %struct.TYPE_34__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %34, i32 0, i32 0
  %36 = load %struct.TYPE_33__*, %struct.TYPE_33__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %36, i32 0, i32 0
  %38 = load %struct.TYPE_32__*, %struct.TYPE_32__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %38, i32 0, i32 1
  store %struct.TYPE_24__* %39, %struct.TYPE_24__** %9, align 8
  br label %43

40:                                               ; preds = %4
  %41 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %42 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %41, i32 0, i32 3
  store %struct.TYPE_24__* %42, %struct.TYPE_24__** %9, align 8
  br label %43

43:                                               ; preds = %40, %31
  %44 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %45 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %46 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %45, i32 0, i32 6
  %47 = load %struct.TYPE_28__*, %struct.TYPE_28__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %47, i32 0, i32 0
  %49 = load %struct.TYPE_21__*, %struct.TYPE_21__** %48, align 8
  %50 = icmp eq %struct.TYPE_21__* %44, %49
  br i1 %50, label %51, label %69

51:                                               ; preds = %43
  %52 = call i32 @KeQuerySystemTime(%struct.TYPE_23__* %10)
  %53 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %54 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %53, i32 0, i32 15
  %55 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %56 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %55, i32 0, i32 14
  %57 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %58 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %57, i32 0, i32 13
  %59 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %60 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %59, i32 0, i32 12
  %61 = bitcast %struct.TYPE_23__* %60 to i8*
  %62 = bitcast %struct.TYPE_23__* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %61, i8* align 8 %62, i64 8, i1 false)
  %63 = bitcast %struct.TYPE_23__* %58 to i8*
  %64 = bitcast %struct.TYPE_23__* %60 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %63, i8* align 8 %64, i64 8, i1 false)
  %65 = bitcast %struct.TYPE_23__* %56 to i8*
  %66 = bitcast %struct.TYPE_23__* %58 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %65, i8* align 8 %66, i64 8, i1 false)
  %67 = bitcast %struct.TYPE_23__* %54 to i8*
  %68 = bitcast %struct.TYPE_23__* %56 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %67, i8* align 8 %68, i64 8, i1 false)
  br label %94

69:                                               ; preds = %43
  %70 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %71 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %70, i32 0, i32 9
  %72 = call i8* @unix_time_to_win(i32* %71)
  %73 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %74 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %73, i32 0, i32 15
  %75 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %74, i32 0, i32 0
  store i8* %72, i8** %75, align 8
  %76 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %77 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %76, i32 0, i32 8
  %78 = call i8* @unix_time_to_win(i32* %77)
  %79 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %80 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %79, i32 0, i32 14
  %81 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %80, i32 0, i32 0
  store i8* %78, i8** %81, align 8
  %82 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %83 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %82, i32 0, i32 7
  %84 = call i8* @unix_time_to_win(i32* %83)
  %85 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %86 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %85, i32 0, i32 13
  %87 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %86, i32 0, i32 0
  store i8* %84, i8** %87, align 8
  %88 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %89 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %88, i32 0, i32 6
  %90 = call i8* @unix_time_to_win(i32* %89)
  %91 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %92 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %91, i32 0, i32 12
  %93 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %92, i32 0, i32 0
  store i8* %90, i8** %93, align 8
  br label %94

94:                                               ; preds = %69, %51
  %95 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %96 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %95, i32 0, i32 4
  %97 = load i64, i64* %96, align 8
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %138

99:                                               ; preds = %94
  %100 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %101 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %100, i32 0, i32 5
  %102 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 8
  %104 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %105 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %104, i32 0, i32 10
  %106 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %105, i32 0, i32 0
  store i32 %103, i32* %106, align 8
  %107 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %108 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %107, i32 0, i32 11
  %109 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %108, i32 0, i32 0
  store i32 %103, i32* %109, align 4
  %110 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %111 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %110, i32 0, i32 1
  %112 = load %struct.TYPE_34__*, %struct.TYPE_34__** %111, align 8
  %113 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %112, i32 0, i32 0
  %114 = load %struct.TYPE_33__*, %struct.TYPE_33__** %113, align 8
  %115 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %114, i32 0, i32 0
  %116 = load %struct.TYPE_32__*, %struct.TYPE_32__** %115, align 8
  %117 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %116, i32 0, i32 0
  %118 = load i64, i64* %117, align 8
  %119 = icmp eq i64 %118, 0
  br i1 %119, label %120, label %122

120:                                              ; preds = %99
  %121 = load i8*, i8** @FILE_ATTRIBUTE_NORMAL, align 8
  br label %133

122:                                              ; preds = %99
  %123 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %124 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %123, i32 0, i32 1
  %125 = load %struct.TYPE_34__*, %struct.TYPE_34__** %124, align 8
  %126 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %125, i32 0, i32 0
  %127 = load %struct.TYPE_33__*, %struct.TYPE_33__** %126, align 8
  %128 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %127, i32 0, i32 0
  %129 = load %struct.TYPE_32__*, %struct.TYPE_32__** %128, align 8
  %130 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %129, i32 0, i32 0
  %131 = load i64, i64* %130, align 8
  %132 = inttoptr i64 %131 to i8*
  br label %133

133:                                              ; preds = %122, %120
  %134 = phi i8* [ %121, %120 ], [ %132, %122 ]
  %135 = ptrtoint i8* %134 to i32
  %136 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %137 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %136, i32 0, i32 0
  store i32 %135, i32* %137, align 8
  br label %177

138:                                              ; preds = %94
  %139 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %140 = call i32 @fcb_alloc_size(%struct.TYPE_21__* %139)
  %141 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %142 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %141, i32 0, i32 11
  %143 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %142, i32 0, i32 0
  store i32 %140, i32* %143, align 4
  %144 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %145 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %144, i32 0, i32 3
  %146 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %145, i32 0, i32 0
  %147 = load i32, i32* %146, align 8
  %148 = call i64 @S_ISDIR(i32 %147)
  %149 = icmp ne i64 %148, 0
  br i1 %149, label %150, label %151

150:                                              ; preds = %138
  br label %156

151:                                              ; preds = %138
  %152 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %153 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %152, i32 0, i32 3
  %154 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %153, i32 0, i32 5
  %155 = load i32, i32* %154, align 4
  br label %156

156:                                              ; preds = %151, %150
  %157 = phi i32 [ 0, %150 ], [ %155, %151 ]
  %158 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %159 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %158, i32 0, i32 10
  %160 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %159, i32 0, i32 0
  store i32 %157, i32* %160, align 8
  %161 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %162 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %161, i32 0, i32 0
  %163 = load i64, i64* %162, align 8
  %164 = icmp eq i64 %163, 0
  br i1 %164, label %165, label %167

165:                                              ; preds = %156
  %166 = load i8*, i8** @FILE_ATTRIBUTE_NORMAL, align 8
  br label %172

167:                                              ; preds = %156
  %168 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %169 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %168, i32 0, i32 0
  %170 = load i64, i64* %169, align 8
  %171 = inttoptr i64 %170 to i8*
  br label %172

172:                                              ; preds = %167, %165
  %173 = phi i8* [ %166, %165 ], [ %171, %167 ]
  %174 = ptrtoint i8* %173 to i32
  %175 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %176 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %175, i32 0, i32 0
  store i32 %174, i32* %176, align 8
  br label %177

177:                                              ; preds = %172, %133
  %178 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %179 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %178, i32 0, i32 1
  %180 = load i64, i64* %179, align 8
  %181 = load i64, i64* @BTRFS_TYPE_SOCKET, align 8
  %182 = icmp eq i64 %180, %181
  br i1 %182, label %183, label %187

183:                                              ; preds = %177
  %184 = load i64, i64* @IO_REPARSE_TAG_LXSS_SOCKET, align 8
  %185 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %186 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %185, i32 0, i32 9
  store i64 %184, i64* %186, align 8
  br label %236

187:                                              ; preds = %177
  %188 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %189 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %188, i32 0, i32 1
  %190 = load i64, i64* %189, align 8
  %191 = load i64, i64* @BTRFS_TYPE_FIFO, align 8
  %192 = icmp eq i64 %190, %191
  br i1 %192, label %193, label %197

193:                                              ; preds = %187
  %194 = load i64, i64* @IO_REPARSE_TAG_LXSS_FIFO, align 8
  %195 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %196 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %195, i32 0, i32 9
  store i64 %194, i64* %196, align 8
  br label %235

197:                                              ; preds = %187
  %198 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %199 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %198, i32 0, i32 1
  %200 = load i64, i64* %199, align 8
  %201 = load i64, i64* @BTRFS_TYPE_CHARDEV, align 8
  %202 = icmp eq i64 %200, %201
  br i1 %202, label %203, label %207

203:                                              ; preds = %197
  %204 = load i64, i64* @IO_REPARSE_TAG_LXSS_CHARDEV, align 8
  %205 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %206 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %205, i32 0, i32 9
  store i64 %204, i64* %206, align 8
  br label %234

207:                                              ; preds = %197
  %208 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %209 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %208, i32 0, i32 1
  %210 = load i64, i64* %209, align 8
  %211 = load i64, i64* @BTRFS_TYPE_BLOCKDEV, align 8
  %212 = icmp eq i64 %210, %211
  br i1 %212, label %213, label %217

213:                                              ; preds = %207
  %214 = load i64, i64* @IO_REPARSE_TAG_LXSS_BLOCKDEV, align 8
  %215 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %216 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %215, i32 0, i32 9
  store i64 %214, i64* %216, align 8
  br label %233

217:                                              ; preds = %207
  %218 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %219 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %218, i32 0, i32 0
  %220 = load i32, i32* %219, align 8
  %221 = load i32, i32* @FILE_ATTRIBUTE_REPARSE_POINT, align 4
  %222 = and i32 %220, %221
  %223 = icmp ne i32 %222, 0
  br i1 %223, label %227, label %224

224:                                              ; preds = %217
  %225 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %226 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %225, i32 0, i32 9
  store i64 0, i64* %226, align 8
  br label %232

227:                                              ; preds = %217
  %228 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %229 = call i64 @get_reparse_tag_fcb(%struct.TYPE_21__* %228)
  %230 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %231 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %230, i32 0, i32 9
  store i64 %229, i64* %231, align 8
  br label %232

232:                                              ; preds = %227, %224
  br label %233

233:                                              ; preds = %232, %213
  br label %234

234:                                              ; preds = %233, %203
  br label %235

235:                                              ; preds = %234, %193
  br label %236

236:                                              ; preds = %235, %183
  %237 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %238 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %237, i32 0, i32 1
  %239 = load i64, i64* %238, align 8
  %240 = load i64, i64* @BTRFS_TYPE_SOCKET, align 8
  %241 = icmp eq i64 %239, %240
  br i1 %241, label %260, label %242

242:                                              ; preds = %236
  %243 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %244 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %243, i32 0, i32 1
  %245 = load i64, i64* %244, align 8
  %246 = load i64, i64* @BTRFS_TYPE_FIFO, align 8
  %247 = icmp eq i64 %245, %246
  br i1 %247, label %260, label %248

248:                                              ; preds = %242
  %249 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %250 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %249, i32 0, i32 1
  %251 = load i64, i64* %250, align 8
  %252 = load i64, i64* @BTRFS_TYPE_CHARDEV, align 8
  %253 = icmp eq i64 %251, %252
  br i1 %253, label %260, label %254

254:                                              ; preds = %248
  %255 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %256 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %255, i32 0, i32 1
  %257 = load i64, i64* %256, align 8
  %258 = load i64, i64* @BTRFS_TYPE_BLOCKDEV, align 8
  %259 = icmp eq i64 %257, %258
  br i1 %259, label %260, label %266

260:                                              ; preds = %254, %248, %242, %236
  %261 = load i32, i32* @FILE_ATTRIBUTE_REPARSE_POINT, align 4
  %262 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %263 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %262, i32 0, i32 0
  %264 = load i32, i32* %263, align 8
  %265 = or i32 %264, %261
  store i32 %265, i32* %263, align 8
  br label %266

266:                                              ; preds = %260, %254
  %267 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %268 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %267, i32 0, i32 4
  %269 = load i64, i64* %268, align 8
  %270 = icmp ne i64 %269, 0
  br i1 %270, label %271, label %284

271:                                              ; preds = %266
  %272 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %273 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %272, i32 0, i32 1
  %274 = load %struct.TYPE_34__*, %struct.TYPE_34__** %273, align 8
  %275 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %274, i32 0, i32 0
  %276 = load %struct.TYPE_33__*, %struct.TYPE_33__** %275, align 8
  %277 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %276, i32 0, i32 0
  %278 = load %struct.TYPE_32__*, %struct.TYPE_32__** %277, align 8
  %279 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %278, i32 0, i32 1
  %280 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %279, i32 0, i32 4
  %281 = load i32, i32* %280, align 8
  %282 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %283 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %282, i32 0, i32 8
  store i32 %281, i32* %283, align 8
  br label %291

284:                                              ; preds = %266
  %285 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %286 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %285, i32 0, i32 3
  %287 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %286, i32 0, i32 4
  %288 = load i32, i32* %287, align 8
  %289 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %290 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %289, i32 0, i32 8
  store i32 %288, i32* %290, align 8
  br label %291

291:                                              ; preds = %284, %271
  %292 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %293 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %292, i32 0, i32 0
  %294 = load i32, i32* %293, align 8
  %295 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %296 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %295, i32 0, i32 7
  store i32 %294, i32* %296, align 4
  %297 = load i32, i32* @LX_FILE_METADATA_HAS_UID, align 4
  %298 = load i32, i32* @LX_FILE_METADATA_HAS_GID, align 4
  %299 = or i32 %297, %298
  %300 = load i32, i32* @LX_FILE_METADATA_HAS_MODE, align 4
  %301 = or i32 %299, %300
  %302 = load i32, i32* @LX_FILE_METADATA_HAS_DEVICE_ID, align 4
  %303 = or i32 %301, %302
  %304 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %305 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %304, i32 0, i32 1
  store i32 %303, i32* %305, align 4
  %306 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %307 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %306, i32 0, i32 2
  %308 = load i64, i64* %307, align 8
  %309 = icmp ne i64 %308, 0
  br i1 %309, label %310, label %316

310:                                              ; preds = %291
  %311 = load i32, i32* @LX_FILE_CASE_SENSITIVE_DIR, align 4
  %312 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %313 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %312, i32 0, i32 1
  %314 = load i32, i32* %313, align 4
  %315 = or i32 %314, %311
  store i32 %315, i32* %313, align 4
  br label %316

316:                                              ; preds = %310, %291
  %317 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %318 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %317, i32 0, i32 3
  %319 = load i32, i32* %318, align 4
  %320 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %321 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %320, i32 0, i32 6
  store i32 %319, i32* %321, align 8
  %322 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %323 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %322, i32 0, i32 2
  %324 = load i32, i32* %323, align 4
  %325 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %326 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %325, i32 0, i32 5
  store i32 %324, i32* %326, align 4
  %327 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %328 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %327, i32 0, i32 0
  %329 = load i32, i32* %328, align 4
  %330 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %331 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %330, i32 0, i32 2
  store i32 %329, i32* %331, align 8
  %332 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %333 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %332, i32 0, i32 0
  %334 = load i32, i32* %333, align 4
  %335 = load i32, i32* @__S_IFBLK, align 4
  %336 = and i32 %334, %335
  %337 = icmp ne i32 %336, 0
  br i1 %337, label %345, label %338

338:                                              ; preds = %316
  %339 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %340 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %339, i32 0, i32 0
  %341 = load i32, i32* %340, align 4
  %342 = load i32, i32* @__S_IFCHR, align 4
  %343 = and i32 %341, %342
  %344 = icmp ne i32 %343, 0
  br i1 %344, label %345, label %361

345:                                              ; preds = %338, %316
  %346 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %347 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %346, i32 0, i32 1
  %348 = load i32, i32* %347, align 4
  %349 = sext i32 %348 to i64
  %350 = and i64 %349, -1048576
  %351 = lshr i64 %350, 20
  %352 = trunc i64 %351 to i32
  %353 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %354 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %353, i32 0, i32 3
  store i32 %352, i32* %354, align 4
  %355 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %356 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %355, i32 0, i32 1
  %357 = load i32, i32* %356, align 4
  %358 = and i32 %357, 1048575
  %359 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %360 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %359, i32 0, i32 4
  store i32 %358, i32* %360, align 8
  br label %366

361:                                              ; preds = %338
  %362 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %363 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %362, i32 0, i32 3
  store i32 0, i32* %363, align 4
  %364 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %365 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %364, i32 0, i32 4
  store i32 0, i32* %365, align 8
  br label %366

366:                                              ; preds = %361, %345
  %367 = load i32*, i32** %8, align 8
  %368 = load i32, i32* %367, align 4
  %369 = sext i32 %368 to i64
  %370 = sub i64 %369, 104
  %371 = trunc i64 %370 to i32
  store i32 %371, i32* %367, align 4
  %372 = load i32, i32* @STATUS_SUCCESS, align 4
  ret i32 %372
}

declare dso_local i32 @KeQuerySystemTime(%struct.TYPE_23__*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i8* @unix_time_to_win(i32*) #1

declare dso_local i32 @fcb_alloc_size(%struct.TYPE_21__*) #1

declare dso_local i64 @S_ISDIR(i32) #1

declare dso_local i64 @get_reparse_tag_fcb(%struct.TYPE_21__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
