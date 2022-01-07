; ModuleID = '/home/carl/AnghaBench/zfs/lib/libzfs/extr_libzfs_sendrecv.c_dump_snapshot.c'
source_filename = "/home/carl/AnghaBench/zfs/lib/libzfs/extr_libzfs_sendrecv.c_dump_snapshot.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i8*, i32, %struct.TYPE_14__ }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_16__ = type { i8*, i64 (%struct.TYPE_15__*, i32)*, i64, i8*, i64, i32, i32, i32, i32, i32, i64, i64, i32, i32, i32, i64, i64, i64, i64, i8*, i32*, i8*, i32*, i64 }
%struct.TYPE_17__ = type { i64, i64, i32, i32, %struct.TYPE_15__*, i32 }

@B_FALSE = common dso_local global i64 0, align 8
@stdout = common dso_local global i32* null, align 8
@stderr = common dso_local global i32* null, align 8
@B_TRUE = common dso_local global i8* null, align 8
@ZFS_PROP_OBJSETID = common dso_local global i32 0, align 4
@LZC_SEND_FLAG_LARGE_BLOCK = common dso_local global i32 0, align 4
@LZC_SEND_FLAG_EMBED_DATA = common dso_local global i32 0, align 4
@LZC_SEND_FLAG_COMPRESS = common dso_local global i32 0, align 4
@LZC_SEND_FLAG_RAW = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"snapprops\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"is_clone_origin\00", align 1
@ZFS_MAX_DATASET_NAME_LEN = common dso_local global i32 0, align 4
@send_progress_thread = common dso_local global i32 0, align 4
@PTHREAD_CANCELED = common dso_local global i8* null, align 8
@TEXT_DOMAIN = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [31 x i8] c"progress thread exited nonzero\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_15__*, i8*)* @dump_snapshot to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dump_snapshot(%struct.TYPE_15__* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_15__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.TYPE_16__*, align 8
  %7 = alloca %struct.TYPE_17__, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i32*, align 8
  %20 = alloca i64, align 8
  %21 = alloca i8*, align 8
  %22 = alloca i64, align 8
  %23 = alloca i8*, align 8
  %24 = alloca i32, align 4
  %25 = alloca [1024 x i8], align 16
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %4, align 8
  store i8* %1, i8** %5, align 8
  %26 = load i8*, i8** %5, align 8
  %27 = bitcast i8* %26 to %struct.TYPE_16__*
  store %struct.TYPE_16__* %27, %struct.TYPE_16__** %6, align 8
  %28 = bitcast %struct.TYPE_17__* %7 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %28, i8 0, i64 40, i1 false)
  store i32 0, i32* %10, align 4
  %29 = load i64, i64* @B_FALSE, align 8
  %30 = trunc i64 %29 to i32
  store i32 %30, i32* %15, align 4
  %31 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %32 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %31, i32 0, i32 23
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %2
  %36 = load i32*, i32** @stdout, align 8
  br label %39

37:                                               ; preds = %2
  %38 = load i32*, i32** @stderr, align 8
  br label %39

39:                                               ; preds = %37, %35
  %40 = phi i32* [ %36, %35 ], [ %38, %37 ]
  store i32* %40, i32** %16, align 8
  store i32 0, i32* %11, align 4
  %41 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %42 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %41, i32 0, i32 0
  %43 = load i8*, i8** %42, align 8
  %44 = call i8* @strchr(i8* %43, i8 signext 64)
  %45 = getelementptr inbounds i8, i8* %44, i64 1
  store i8* %45, i8** %9, align 8
  %46 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %47 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %46, i32 0, i32 22
  %48 = load i32*, i32** %47, align 8
  %49 = icmp ne i32* %48, null
  br i1 %49, label %50, label %57

50:                                               ; preds = %39
  %51 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %52 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %51, i32 0, i32 22
  %53 = load i32*, i32** %52, align 8
  %54 = load i8*, i8** %9, align 8
  %55 = call i64 @strcmp(i32* %53, i8* %54)
  %56 = icmp eq i64 %55, 0
  br label %57

57:                                               ; preds = %50, %39
  %58 = phi i1 [ false, %39 ], [ %56, %50 ]
  %59 = zext i1 %58 to i32
  store i32 %59, i32* %12, align 4
  %60 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %61 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %60, i32 0, i32 21
  %62 = load i8*, i8** %61, align 8
  %63 = icmp ne i8* %62, null
  br i1 %63, label %86, label %64

64:                                               ; preds = %57
  %65 = load i32, i32* %12, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %86

67:                                               ; preds = %64
  %68 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %69 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %70 = call i32 @gather_holds(%struct.TYPE_15__* %68, %struct.TYPE_16__* %69)
  %71 = load i8*, i8** @B_TRUE, align 8
  %72 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %73 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %72, i32 0, i32 21
  store i8* %71, i8** %73, align 8
  %74 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %75 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %74, i32 0, i32 0
  %76 = load i8*, i8** %75, align 8
  %77 = load i8*, i8** %9, align 8
  %78 = call i32 @strlcpy(i8* %76, i8* %77, i32 8)
  %79 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %80 = load i32, i32* @ZFS_PROP_OBJSETID, align 4
  %81 = call i8* @zfs_prop_get_int(%struct.TYPE_15__* %79, i32 %80)
  %82 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %83 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %82, i32 0, i32 3
  store i8* %81, i8** %83, align 8
  %84 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %85 = call i32 @zfs_close(%struct.TYPE_15__* %84)
  store i32 0, i32* %3, align 4
  br label %421

86:                                               ; preds = %64, %57
  %87 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %88 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %87, i32 0, i32 19
  %89 = load i8*, i8** %88, align 8
  %90 = icmp ne i8* %89, null
  br i1 %90, label %96, label %91

91:                                               ; preds = %86
  %92 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %93 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %92, i32 0, i32 21
  %94 = load i8*, i8** %93, align 8
  %95 = icmp ne i8* %94, null
  br i1 %95, label %99, label %96

96:                                               ; preds = %91, %86
  %97 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %98 = call i32 @zfs_close(%struct.TYPE_15__* %97)
  store i32 0, i32* %3, align 4
  br label %421

99:                                               ; preds = %91
  %100 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %101 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %100, i32 0, i32 20
  %102 = load i32*, i32** %101, align 8
  %103 = load i8*, i8** %9, align 8
  %104 = call i64 @strcmp(i32* %102, i8* %103)
  %105 = icmp eq i64 %104, 0
  %106 = zext i1 %105 to i32
  store i32 %106, i32* %13, align 4
  %107 = load i32, i32* %13, align 4
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %113

109:                                              ; preds = %99
  %110 = load i8*, i8** @B_TRUE, align 8
  %111 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %112 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %111, i32 0, i32 19
  store i8* %110, i8** %112, align 8
  br label %113

113:                                              ; preds = %109, %99
  %114 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %115 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %114, i32 0, i32 18
  %116 = load i64, i64* %115, align 8
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %118, label %122

118:                                              ; preds = %113
  %119 = load i32, i32* @LZC_SEND_FLAG_LARGE_BLOCK, align 4
  %120 = load i32, i32* %10, align 4
  %121 = or i32 %120, %119
  store i32 %121, i32* %10, align 4
  br label %122

122:                                              ; preds = %118, %113
  %123 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %124 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %123, i32 0, i32 17
  %125 = load i64, i64* %124, align 8
  %126 = icmp ne i64 %125, 0
  br i1 %126, label %127, label %131

127:                                              ; preds = %122
  %128 = load i32, i32* @LZC_SEND_FLAG_EMBED_DATA, align 4
  %129 = load i32, i32* %10, align 4
  %130 = or i32 %129, %128
  store i32 %130, i32* %10, align 4
  br label %131

131:                                              ; preds = %127, %122
  %132 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %133 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %132, i32 0, i32 16
  %134 = load i64, i64* %133, align 8
  %135 = icmp ne i64 %134, 0
  br i1 %135, label %136, label %140

136:                                              ; preds = %131
  %137 = load i32, i32* @LZC_SEND_FLAG_COMPRESS, align 4
  %138 = load i32, i32* %10, align 4
  %139 = or i32 %138, %137
  store i32 %139, i32* %10, align 4
  br label %140

140:                                              ; preds = %136, %131
  %141 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %142 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %141, i32 0, i32 15
  %143 = load i64, i64* %142, align 8
  %144 = icmp ne i64 %143, 0
  br i1 %144, label %145, label %149

145:                                              ; preds = %140
  %146 = load i32, i32* @LZC_SEND_FLAG_RAW, align 4
  %147 = load i32, i32* %10, align 4
  %148 = or i32 %147, %146
  store i32 %148, i32* %10, align 4
  br label %149

149:                                              ; preds = %145, %140
  %150 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %151 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %150, i32 0, i32 14
  %152 = load i32, i32* %151, align 8
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %194, label %154

154:                                              ; preds = %149
  %155 = load i32, i32* %12, align 4
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %194, label %157

157:                                              ; preds = %154
  %158 = load i32, i32* %13, align 4
  %159 = icmp ne i32 %158, 0
  br i1 %159, label %194, label %160

160:                                              ; preds = %157
  %161 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %162 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %161, i32 0, i32 10
  %163 = load i64, i64* %162, align 8
  %164 = icmp ne i64 %163, 0
  br i1 %164, label %165, label %190

165:                                              ; preds = %160
  %166 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %167 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %166, i32 0, i32 13
  %168 = load i32, i32* %167, align 4
  %169 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %170 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %169, i32 0, i32 2
  %171 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %170, i32 0, i32 0
  %172 = load i32, i32* %171, align 4
  %173 = call i32* @fsavl_find(i32 %168, i32 %172, i8** %17)
  store i32* %173, i32** %19, align 8
  %174 = load i32*, i32** %19, align 8
  %175 = call i64 @nvlist_lookup_nvlist(i32* %174, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32** %18)
  %176 = icmp eq i64 0, %175
  %177 = zext i1 %176 to i32
  %178 = call i32 @VERIFY(i32 %177)
  %179 = load i32*, i32** %18, align 8
  %180 = load i8*, i8** %9, align 8
  %181 = call i64 @nvlist_lookup_nvlist(i32* %179, i8* %180, i32** %18)
  %182 = icmp eq i64 0, %181
  %183 = zext i1 %182 to i32
  %184 = call i32 @VERIFY(i32 %183)
  %185 = load i32*, i32** %18, align 8
  %186 = call i32 @nvlist_exists(i32* %185, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
  %187 = icmp ne i32 %186, 0
  %188 = xor i1 %187, true
  %189 = zext i1 %188 to i32
  store i32 %189, i32* %15, align 4
  br label %193

190:                                              ; preds = %160
  %191 = load i8*, i8** @B_TRUE, align 8
  %192 = ptrtoint i8* %191 to i32
  store i32 %192, i32* %15, align 4
  br label %193

193:                                              ; preds = %190, %165
  br label %194

194:                                              ; preds = %193, %157, %154, %149
  %195 = load i32, i32* %15, align 4
  %196 = icmp ne i32 %195, 0
  br i1 %196, label %213, label %197

197:                                              ; preds = %194
  %198 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %199 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %198, i32 0, i32 1
  %200 = load i64 (%struct.TYPE_15__*, i32)*, i64 (%struct.TYPE_15__*, i32)** %199, align 8
  %201 = icmp ne i64 (%struct.TYPE_15__*, i32)* %200, null
  br i1 %201, label %202, label %216

202:                                              ; preds = %197
  %203 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %204 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %203, i32 0, i32 1
  %205 = load i64 (%struct.TYPE_15__*, i32)*, i64 (%struct.TYPE_15__*, i32)** %204, align 8
  %206 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %207 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %208 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %207, i32 0, i32 12
  %209 = load i32, i32* %208, align 8
  %210 = call i64 %205(%struct.TYPE_15__* %206, i32 %209)
  %211 = load i64, i64* @B_FALSE, align 8
  %212 = icmp eq i64 %210, %211
  br i1 %212, label %213, label %216

213:                                              ; preds = %202, %194
  %214 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %215 = call i32 @zfs_close(%struct.TYPE_15__* %214)
  store i32 0, i32* %3, align 4
  br label %421

216:                                              ; preds = %202, %197
  %217 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %218 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %219 = call i32 @gather_holds(%struct.TYPE_15__* %217, %struct.TYPE_16__* %218)
  %220 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %221 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %220, i32 0, i32 0
  %222 = load i8*, i8** %221, align 8
  %223 = getelementptr inbounds i8, i8* %222, i64 0
  %224 = load i8, i8* %223, align 1
  %225 = sext i8 %224 to i32
  %226 = icmp eq i32 %225, 0
  br i1 %226, label %227, label %239

227:                                              ; preds = %216
  %228 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %229 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %228, i32 0, i32 11
  %230 = load i64, i64* %229, align 8
  %231 = icmp ne i64 %230, 0
  br i1 %231, label %237, label %232

232:                                              ; preds = %227
  %233 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %234 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %233, i32 0, i32 10
  %235 = load i64, i64* %234, align 8
  %236 = icmp ne i64 %235, 0
  br label %237

237:                                              ; preds = %232, %227
  %238 = phi i1 [ true, %227 ], [ %236, %232 ]
  br label %239

239:                                              ; preds = %237, %216
  %240 = phi i1 [ false, %216 ], [ %238, %237 ]
  %241 = zext i1 %240 to i32
  store i32 %241, i32* %14, align 4
  %242 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %243 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %242, i32 0, i32 2
  %244 = load i64, i64* %243, align 8
  %245 = icmp ne i64 %244, 0
  br i1 %245, label %246, label %324

246:                                              ; preds = %239
  store i64 0, i64* %20, align 8
  %247 = load i32, i32* @ZFS_MAX_DATASET_NAME_LEN, align 4
  %248 = zext i32 %247 to i64
  %249 = call i8* @llvm.stacksave()
  store i8* %249, i8** %21, align 8
  %250 = alloca i8, i64 %248, align 16
  store i64 %248, i64* %22, align 8
  %251 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %252 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %251, i32 0, i32 0
  %253 = load i8*, i8** %252, align 8
  %254 = getelementptr inbounds i8, i8* %253, i64 0
  %255 = load i8, i8* %254, align 1
  %256 = sext i8 %255 to i32
  %257 = icmp ne i32 %256, 0
  br i1 %257, label %258, label %271

258:                                              ; preds = %246
  %259 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %260 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %259, i32 0, i32 0
  %261 = load i8*, i8** %260, align 8
  %262 = trunc i64 %248 to i32
  %263 = call i32 @strlcpy(i8* %250, i8* %261, i32 %262)
  %264 = call i8* @strchr(i8* %250, i8 signext 64)
  %265 = getelementptr inbounds i8, i8* %264, i64 1
  store i8 0, i8* %265, align 1
  %266 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %267 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %266, i32 0, i32 0
  %268 = load i8*, i8** %267, align 8
  %269 = trunc i64 %248 to i32
  %270 = call i32 @strlcat(i8* %250, i8* %268, i32 %269)
  br label %271

271:                                              ; preds = %258, %246
  %272 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %273 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %274 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %273, i32 0, i32 0
  %275 = load i8*, i8** %274, align 8
  %276 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %277 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %276, i32 0, i32 0
  %278 = load i8*, i8** %277, align 8
  %279 = getelementptr inbounds i8, i8* %278, i64 0
  %280 = load i8, i8* %279, align 1
  %281 = sext i8 %280 to i32
  %282 = icmp ne i32 %281, 0
  br i1 %282, label %283, label %284

283:                                              ; preds = %271
  br label %285

284:                                              ; preds = %271
  br label %285

285:                                              ; preds = %284, %283
  %286 = phi i8* [ %250, %283 ], [ null, %284 ]
  %287 = load i32, i32* %10, align 4
  %288 = call i64 @zfs_send_space(%struct.TYPE_15__* %272, i8* %275, i8* %286, i32 %287, i64* %20)
  %289 = icmp ne i64 %288, 0
  br i1 %289, label %290, label %291

290:                                              ; preds = %285
  store i64 0, i64* %20, align 8
  br label %315

291:                                              ; preds = %285
  %292 = load i32*, i32** %16, align 8
  %293 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %294 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %293, i32 0, i32 0
  %295 = load i8*, i8** %294, align 8
  %296 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %297 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %296, i32 0, i32 0
  %298 = load i8*, i8** %297, align 8
  %299 = getelementptr inbounds i8, i8* %298, i64 0
  %300 = load i8, i8* %299, align 1
  %301 = sext i8 %300 to i32
  %302 = icmp ne i32 %301, 0
  br i1 %302, label %303, label %307

303:                                              ; preds = %291
  %304 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %305 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %304, i32 0, i32 0
  %306 = load i8*, i8** %305, align 8
  br label %308

307:                                              ; preds = %291
  br label %308

308:                                              ; preds = %307, %303
  %309 = phi i8* [ %306, %303 ], [ null, %307 ]
  %310 = load i64, i64* %20, align 8
  %311 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %312 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %311, i32 0, i32 7
  %313 = load i32, i32* %312, align 8
  %314 = call i32 @send_print_verbose(i32* %292, i8* %295, i8* %309, i64 %310, i32 %313)
  br label %315

315:                                              ; preds = %308, %290
  %316 = load i64, i64* %20, align 8
  %317 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %318 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %317, i32 0, i32 9
  %319 = load i32, i32* %318, align 8
  %320 = sext i32 %319 to i64
  %321 = add nsw i64 %320, %316
  %322 = trunc i64 %321 to i32
  store i32 %322, i32* %318, align 8
  %323 = load i8*, i8** %21, align 8
  call void @llvm.stackrestore(i8* %323)
  br label %324

324:                                              ; preds = %315, %239
  %325 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %326 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %325, i32 0, i32 8
  %327 = load i32, i32* %326, align 4
  %328 = icmp ne i32 %327, 0
  br i1 %328, label %407, label %329

329:                                              ; preds = %324
  %330 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %331 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %330, i32 0, i32 4
  %332 = load i64, i64* %331, align 8
  %333 = icmp ne i64 %332, 0
  br i1 %333, label %334, label %359

334:                                              ; preds = %329
  %335 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %336 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %7, i32 0, i32 4
  store %struct.TYPE_15__* %335, %struct.TYPE_15__** %336, align 8
  %337 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %338 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %337, i32 0, i32 6
  %339 = load i32, i32* %338, align 4
  %340 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %7, i32 0, i32 3
  store i32 %339, i32* %340, align 4
  %341 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %342 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %341, i32 0, i32 7
  %343 = load i32, i32* %342, align 8
  %344 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %7, i32 0, i32 2
  store i32 %343, i32* %344, align 8
  %345 = load i64, i64* @B_FALSE, align 8
  %346 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %7, i32 0, i32 1
  store i64 %345, i64* %346, align 8
  %347 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %348 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %347, i32 0, i32 2
  %349 = load i64, i64* %348, align 8
  %350 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %7, i32 0, i32 0
  store i64 %349, i64* %350, align 8
  %351 = load i32, i32* @send_progress_thread, align 4
  %352 = call i32 @pthread_create(i32* %8, i32* null, i32 %351, %struct.TYPE_17__* %7)
  store i32 %352, i32* %11, align 4
  %353 = icmp ne i32 %352, 0
  br i1 %353, label %354, label %358

354:                                              ; preds = %334
  %355 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %356 = call i32 @zfs_close(%struct.TYPE_15__* %355)
  %357 = load i32, i32* %11, align 4
  store i32 %357, i32* %3, align 4
  br label %421

358:                                              ; preds = %334
  br label %359

359:                                              ; preds = %358, %329
  %360 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %361 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %362 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %361, i32 0, i32 0
  %363 = load i8*, i8** %362, align 8
  %364 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %365 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %364, i32 0, i32 3
  %366 = load i8*, i8** %365, align 8
  %367 = load i32, i32* %14, align 4
  %368 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %369 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %368, i32 0, i32 6
  %370 = load i32, i32* %369, align 4
  %371 = load i32, i32* %10, align 4
  %372 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %373 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %372, i32 0, i32 5
  %374 = load i32, i32* %373, align 8
  %375 = call i32 @dump_ioctl(%struct.TYPE_15__* %360, i8* %363, i8* %366, i32 %367, i32 %370, i32 %371, i32 %374)
  store i32 %375, i32* %11, align 4
  %376 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %377 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %376, i32 0, i32 4
  %378 = load i64, i64* %377, align 8
  %379 = icmp ne i64 %378, 0
  br i1 %379, label %380, label %406

380:                                              ; preds = %359
  store i8* null, i8** %23, align 8
  %381 = load i32, i32* %8, align 4
  %382 = call i32 @pthread_cancel(i32 %381)
  %383 = load i32, i32* %8, align 4
  %384 = call i32 @pthread_join(i32 %383, i8** %23)
  %385 = load i8*, i8** %23, align 8
  %386 = ptrtoint i8* %385 to i64
  %387 = trunc i64 %386 to i32
  store i32 %387, i32* %24, align 4
  %388 = load i32, i32* %24, align 4
  %389 = icmp ne i32 %388, 0
  br i1 %389, label %390, label %405

390:                                              ; preds = %380
  %391 = load i8*, i8** %23, align 8
  %392 = load i8*, i8** @PTHREAD_CANCELED, align 8
  %393 = icmp ne i8* %391, %392
  br i1 %393, label %394, label %405

394:                                              ; preds = %390
  %395 = getelementptr inbounds [1024 x i8], [1024 x i8]* %25, i64 0, i64 0
  %396 = load i32, i32* @TEXT_DOMAIN, align 4
  %397 = call i8* @dgettext(i32 %396, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0))
  %398 = call i32 @snprintf(i8* %395, i32 1024, i8* %397)
  %399 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %400 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %399, i32 0, i32 1
  %401 = load i32, i32* %400, align 8
  %402 = load i32, i32* %24, align 4
  %403 = getelementptr inbounds [1024 x i8], [1024 x i8]* %25, i64 0, i64 0
  %404 = call i32 @zfs_standard_error(i32 %401, i32 %402, i8* %403)
  store i32 %404, i32* %3, align 4
  br label %421

405:                                              ; preds = %390, %380
  br label %406

406:                                              ; preds = %405, %359
  br label %407

407:                                              ; preds = %406, %324
  %408 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %409 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %408, i32 0, i32 0
  %410 = load i8*, i8** %409, align 8
  %411 = load i8*, i8** %9, align 8
  %412 = call i32 @strcpy(i8* %410, i8* %411)
  %413 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %414 = load i32, i32* @ZFS_PROP_OBJSETID, align 4
  %415 = call i8* @zfs_prop_get_int(%struct.TYPE_15__* %413, i32 %414)
  %416 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %417 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %416, i32 0, i32 3
  store i8* %415, i8** %417, align 8
  %418 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %419 = call i32 @zfs_close(%struct.TYPE_15__* %418)
  %420 = load i32, i32* %11, align 4
  store i32 %420, i32* %3, align 4
  br label %421

421:                                              ; preds = %407, %394, %354, %213, %96, %67
  %422 = load i32, i32* %3, align 4
  ret i32 %422
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i8* @strchr(i8*, i8 signext) #2

declare dso_local i64 @strcmp(i32*, i8*) #2

declare dso_local i32 @gather_holds(%struct.TYPE_15__*, %struct.TYPE_16__*) #2

declare dso_local i32 @strlcpy(i8*, i8*, i32) #2

declare dso_local i8* @zfs_prop_get_int(%struct.TYPE_15__*, i32) #2

declare dso_local i32 @zfs_close(%struct.TYPE_15__*) #2

declare dso_local i32* @fsavl_find(i32, i32, i8**) #2

declare dso_local i32 @VERIFY(i32) #2

declare dso_local i64 @nvlist_lookup_nvlist(i32*, i8*, i32**) #2

declare dso_local i32 @nvlist_exists(i32*, i8*) #2

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #3

declare dso_local i32 @strlcat(i8*, i8*, i32) #2

declare dso_local i64 @zfs_send_space(%struct.TYPE_15__*, i8*, i8*, i32, i64*) #2

declare dso_local i32 @send_print_verbose(i32*, i8*, i8*, i64, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #3

declare !callback !2 dso_local i32 @pthread_create(i32*, i32*, i32, %struct.TYPE_17__*) #2

declare dso_local i32 @dump_ioctl(%struct.TYPE_15__*, i8*, i8*, i32, i32, i32, i32) #2

declare dso_local i32 @pthread_cancel(i32) #2

declare dso_local i32 @pthread_join(i32, i8**) #2

declare dso_local i32 @snprintf(i8*, i32, i8*) #2

declare dso_local i8* @dgettext(i32, i8*) #2

declare dso_local i32 @zfs_standard_error(i32, i32, i8*) #2

declare dso_local i32 @strcpy(i8*, i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
!2 = !{!3}
!3 = !{i64 2, i64 3, i1 false}
