; ModuleID = '/home/carl/AnghaBench/reactos/drivers/filesystems/btrfs/zstd/extr_zstd_decompress.c_ZSTD_decompressContinue.c'
source_filename = "/home/carl/AnghaBench/reactos/drivers/filesystems/btrfs/zstd/extr_zstd_decompress.c_ZSTD_decompressContinue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i64, i32, i64, i64, i64, i8*, i32, %struct.TYPE_9__, i32, i32, i32 }
%struct.TYPE_9__ = type { i64, i32 }
%struct.TYPE_10__ = type { i32, i32, i32 }

@.str = private unnamed_addr constant [37 x i8] c"ZSTD_decompressContinue (srcSize:%u)\00", align 1
@srcSize_wrong = common dso_local global i32 0, align 4
@ZSTD_f_zstd1 = common dso_local global i32 0, align 4
@ZSTD_FRAMEIDSIZE = common dso_local global i64 0, align 8
@ZSTD_MAGIC_SKIPPABLE_START = common dso_local global i32 0, align 4
@ZSTD_skippableHeaderSize = common dso_local global i64 0, align 8
@ZSTD_blockHeaderSize = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [53 x i8] c"ZSTD_decompressContinue: case ZSTDds_decompressBlock\00", align 1
@.str.2 = private unnamed_addr constant [44 x i8] c"ZSTD_decompressContinue: case bt_compressed\00", align 1
@corruption_detected = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [54 x i8] c"ZSTD_decompressContinue: decoded size from block : %u\00", align 1
@.str.4 = private unnamed_addr constant [54 x i8] c"ZSTD_decompressContinue: decoded size from frame : %u\00", align 1
@ZSTD_CONTENTSIZE_UNKNOWN = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [65 x i8] c"ZSTD_decompressContinue: checksum : calculated %08X :: %08X read\00", align 1
@checksum_wrong = common dso_local global i32 0, align 4
@GENERIC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @ZSTD_decompressContinue(%struct.TYPE_11__* %0, i8* %1, i64 %2, i8* %3, i64 %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca %struct.TYPE_11__*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.TYPE_10__, align 4
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %7, align 8
  store i8* %1, i8** %8, align 8
  store i64 %2, i64* %9, align 8
  store i8* %3, i8** %10, align 8
  store i64 %4, i64* %11, align 8
  %17 = load i64, i64* %11, align 8
  %18 = trunc i64 %17 to i32
  %19 = call i32 (i32, i8*, ...) @DEBUGLOG(i32 5, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %18)
  %20 = load i64, i64* %11, align 8
  %21 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %22 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %20, %23
  br i1 %24, label %25, label %28

25:                                               ; preds = %5
  %26 = load i32, i32* @srcSize_wrong, align 4
  %27 = call i64 @ERROR(i32 %26)
  store i64 %27, i64* %6, align 8
  br label %386

28:                                               ; preds = %5
  %29 = load i64, i64* %9, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %35

31:                                               ; preds = %28
  %32 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %33 = load i8*, i8** %8, align 8
  %34 = call i32 @ZSTD_checkContinuity(%struct.TYPE_11__* %32, i8* %33)
  br label %35

35:                                               ; preds = %31, %28
  %36 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %37 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 8
  switch i32 %38, label %383 [
    i32 133, label %39
    i32 137, label %110
    i32 138, label %142
    i32 134, label %202
    i32 135, label %202
    i32 139, label %321
    i32 136, label %347
    i32 132, label %378
  ]

39:                                               ; preds = %35
  %40 = load i8*, i8** %10, align 8
  %41 = icmp ne i8* %40, null
  %42 = zext i1 %41 to i32
  %43 = call i32 @assert(i32 %42)
  %44 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %45 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %44, i32 0, i32 10
  %46 = load i32, i32* %45, align 8
  %47 = load i32, i32* @ZSTD_f_zstd1, align 4
  %48 = icmp eq i32 %46, %47
  br i1 %48, label %49, label %76

49:                                               ; preds = %39
  %50 = load i64, i64* %11, align 8
  %51 = load i64, i64* @ZSTD_FRAMEIDSIZE, align 8
  %52 = icmp uge i64 %50, %51
  %53 = zext i1 %52 to i32
  %54 = call i32 @assert(i32 %53)
  %55 = load i8*, i8** %10, align 8
  %56 = ptrtoint i8* %55 to i64
  %57 = call i32 @MEM_readLE32(i64 %56)
  %58 = and i32 %57, -16
  %59 = load i32, i32* @ZSTD_MAGIC_SKIPPABLE_START, align 4
  %60 = icmp eq i32 %58, %59
  br i1 %60, label %61, label %75

61:                                               ; preds = %49
  %62 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %63 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %62, i32 0, i32 2
  %64 = load i64, i64* %63, align 8
  %65 = load i8*, i8** %10, align 8
  %66 = load i64, i64* %11, align 8
  %67 = call i32 @memcpy(i64 %64, i8* %65, i64 %66)
  %68 = load i64, i64* @ZSTD_skippableHeaderSize, align 8
  %69 = load i64, i64* %11, align 8
  %70 = sub i64 %68, %69
  %71 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %72 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %71, i32 0, i32 0
  store i64 %70, i64* %72, align 8
  %73 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %74 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %73, i32 0, i32 1
  store i32 136, i32* %74, align 8
  store i64 0, i64* %6, align 8
  br label %386

75:                                               ; preds = %49
  br label %76

76:                                               ; preds = %75, %39
  %77 = load i8*, i8** %10, align 8
  %78 = load i64, i64* %11, align 8
  %79 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %80 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %79, i32 0, i32 10
  %81 = load i32, i32* %80, align 8
  %82 = call i64 @ZSTD_frameHeaderSize_internal(i8* %77, i64 %78, i32 %81)
  %83 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %84 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %83, i32 0, i32 3
  store i64 %82, i64* %84, align 8
  %85 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %86 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %85, i32 0, i32 3
  %87 = load i64, i64* %86, align 8
  %88 = call i32 @ZSTD_isError(i64 %87)
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %94

90:                                               ; preds = %76
  %91 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %92 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %91, i32 0, i32 3
  %93 = load i64, i64* %92, align 8
  store i64 %93, i64* %6, align 8
  br label %386

94:                                               ; preds = %76
  %95 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %96 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %95, i32 0, i32 2
  %97 = load i64, i64* %96, align 8
  %98 = load i8*, i8** %10, align 8
  %99 = load i64, i64* %11, align 8
  %100 = call i32 @memcpy(i64 %97, i8* %98, i64 %99)
  %101 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %102 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %101, i32 0, i32 3
  %103 = load i64, i64* %102, align 8
  %104 = load i64, i64* %11, align 8
  %105 = sub i64 %103, %104
  %106 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %107 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %106, i32 0, i32 0
  store i64 %105, i64* %107, align 8
  %108 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %109 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %108, i32 0, i32 1
  store i32 137, i32* %109, align 8
  store i64 0, i64* %6, align 8
  br label %386

110:                                              ; preds = %35
  %111 = load i8*, i8** %10, align 8
  %112 = icmp ne i8* %111, null
  %113 = zext i1 %112 to i32
  %114 = call i32 @assert(i32 %113)
  %115 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %116 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %115, i32 0, i32 2
  %117 = load i64, i64* %116, align 8
  %118 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %119 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %118, i32 0, i32 3
  %120 = load i64, i64* %119, align 8
  %121 = load i64, i64* %11, align 8
  %122 = sub i64 %120, %121
  %123 = add i64 %117, %122
  %124 = load i8*, i8** %10, align 8
  %125 = load i64, i64* %11, align 8
  %126 = call i32 @memcpy(i64 %123, i8* %124, i64 %125)
  %127 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %128 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %129 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %128, i32 0, i32 2
  %130 = load i64, i64* %129, align 8
  %131 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %132 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %131, i32 0, i32 3
  %133 = load i64, i64* %132, align 8
  %134 = call i32 @ZSTD_decodeFrameHeader(%struct.TYPE_11__* %127, i64 %130, i64 %133)
  %135 = call i32 @CHECK_F(i32 %134)
  %136 = load i8*, i8** @ZSTD_blockHeaderSize, align 8
  %137 = ptrtoint i8* %136 to i64
  %138 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %139 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %138, i32 0, i32 0
  store i64 %137, i64* %139, align 8
  %140 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %141 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %140, i32 0, i32 1
  store i32 138, i32* %141, align 8
  store i64 0, i64* %6, align 8
  br label %386

142:                                              ; preds = %35
  %143 = load i8*, i8** %10, align 8
  %144 = load i8*, i8** @ZSTD_blockHeaderSize, align 8
  %145 = call i64 @ZSTD_getcBlockSize(i8* %143, i8* %144, %struct.TYPE_10__* %12)
  store i64 %145, i64* %13, align 8
  %146 = load i64, i64* %13, align 8
  %147 = call i32 @ZSTD_isError(i64 %146)
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %149, label %151

149:                                              ; preds = %142
  %150 = load i64, i64* %13, align 8
  store i64 %150, i64* %6, align 8
  br label %386

151:                                              ; preds = %142
  %152 = load i64, i64* %13, align 8
  %153 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %154 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %153, i32 0, i32 0
  store i64 %152, i64* %154, align 8
  %155 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %12, i32 0, i32 2
  %156 = load i32, i32* %155, align 4
  %157 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %158 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %157, i32 0, i32 9
  store i32 %156, i32* %158, align 4
  %159 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %12, i32 0, i32 1
  %160 = load i32, i32* %159, align 4
  %161 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %162 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %161, i32 0, i32 8
  store i32 %160, i32* %162, align 8
  %163 = load i64, i64* %13, align 8
  %164 = icmp ne i64 %163, 0
  br i1 %164, label %165, label %173

165:                                              ; preds = %151
  %166 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %12, i32 0, i32 0
  %167 = load i32, i32* %166, align 4
  %168 = icmp ne i32 %167, 0
  %169 = zext i1 %168 to i64
  %170 = select i1 %168, i32 134, i32 135
  %171 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %172 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %171, i32 0, i32 1
  store i32 %170, i32* %172, align 8
  store i64 0, i64* %6, align 8
  br label %386

173:                                              ; preds = %151
  %174 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %12, i32 0, i32 0
  %175 = load i32, i32* %174, align 4
  %176 = icmp ne i32 %175, 0
  br i1 %176, label %177, label %194

177:                                              ; preds = %173
  %178 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %179 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %178, i32 0, i32 7
  %180 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %179, i32 0, i32 1
  %181 = load i32, i32* %180, align 8
  %182 = icmp ne i32 %181, 0
  br i1 %182, label %183, label %188

183:                                              ; preds = %177
  %184 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %185 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %184, i32 0, i32 0
  store i64 4, i64* %185, align 8
  %186 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %187 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %186, i32 0, i32 1
  store i32 139, i32* %187, align 8
  br label %193

188:                                              ; preds = %177
  %189 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %190 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %189, i32 0, i32 0
  store i64 0, i64* %190, align 8
  %191 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %192 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %191, i32 0, i32 1
  store i32 133, i32* %192, align 8
  br label %193

193:                                              ; preds = %188, %183
  br label %201

194:                                              ; preds = %173
  %195 = load i8*, i8** @ZSTD_blockHeaderSize, align 8
  %196 = ptrtoint i8* %195 to i64
  %197 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %198 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %197, i32 0, i32 0
  store i64 %196, i64* %198, align 8
  %199 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %200 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %199, i32 0, i32 1
  store i32 138, i32* %200, align 8
  br label %201

201:                                              ; preds = %194, %193
  store i64 0, i64* %6, align 8
  br label %386

202:                                              ; preds = %35, %35
  %203 = call i32 (i32, i8*, ...) @DEBUGLOG(i32 5, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.1, i64 0, i64 0))
  %204 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %205 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %204, i32 0, i32 9
  %206 = load i32, i32* %205, align 4
  switch i32 %206, label %231 [
    i32 131, label %207
    i32 130, label %215
    i32 128, label %221
    i32 129, label %230
  ]

207:                                              ; preds = %202
  %208 = call i32 (i32, i8*, ...) @DEBUGLOG(i32 5, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.2, i64 0, i64 0))
  %209 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %210 = load i8*, i8** %8, align 8
  %211 = load i64, i64* %9, align 8
  %212 = load i8*, i8** %10, align 8
  %213 = load i64, i64* %11, align 8
  %214 = call i64 @ZSTD_decompressBlock_internal(%struct.TYPE_11__* %209, i8* %210, i64 %211, i8* %212, i64 %213, i32 1)
  store i64 %214, i64* %14, align 8
  br label %234

215:                                              ; preds = %202
  %216 = load i8*, i8** %8, align 8
  %217 = load i64, i64* %9, align 8
  %218 = load i8*, i8** %10, align 8
  %219 = load i64, i64* %11, align 8
  %220 = call i64 @ZSTD_copyRawBlock(i8* %216, i64 %217, i8* %218, i64 %219)
  store i64 %220, i64* %14, align 8
  br label %234

221:                                              ; preds = %202
  %222 = load i8*, i8** %8, align 8
  %223 = load i64, i64* %9, align 8
  %224 = load i8*, i8** %10, align 8
  %225 = load i64, i64* %11, align 8
  %226 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %227 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %226, i32 0, i32 8
  %228 = load i32, i32* %227, align 8
  %229 = call i64 @ZSTD_setRleBlock(i8* %222, i64 %223, i8* %224, i64 %225, i32 %228)
  store i64 %229, i64* %14, align 8
  br label %234

230:                                              ; preds = %202
  br label %231

231:                                              ; preds = %202, %230
  %232 = load i32, i32* @corruption_detected, align 4
  %233 = call i64 @ERROR(i32 %232)
  store i64 %233, i64* %6, align 8
  br label %386

234:                                              ; preds = %221, %215, %207
  %235 = load i64, i64* %14, align 8
  %236 = call i32 @ZSTD_isError(i64 %235)
  %237 = icmp ne i32 %236, 0
  br i1 %237, label %238, label %240

238:                                              ; preds = %234
  %239 = load i64, i64* %14, align 8
  store i64 %239, i64* %6, align 8
  br label %386

240:                                              ; preds = %234
  %241 = load i64, i64* %14, align 8
  %242 = trunc i64 %241 to i32
  %243 = call i32 (i32, i8*, ...) @DEBUGLOG(i32 5, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.3, i64 0, i64 0), i32 %242)
  %244 = load i64, i64* %14, align 8
  %245 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %246 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %245, i32 0, i32 4
  %247 = load i64, i64* %246, align 8
  %248 = add i64 %247, %244
  store i64 %248, i64* %246, align 8
  %249 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %250 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %249, i32 0, i32 7
  %251 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %250, i32 0, i32 1
  %252 = load i32, i32* %251, align 8
  %253 = icmp ne i32 %252, 0
  br i1 %253, label %254, label %260

254:                                              ; preds = %240
  %255 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %256 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %255, i32 0, i32 6
  %257 = load i8*, i8** %8, align 8
  %258 = load i64, i64* %14, align 8
  %259 = call i32 @XXH64_update(i32* %256, i8* %257, i64 %258)
  br label %260

260:                                              ; preds = %254, %240
  %261 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %262 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %261, i32 0, i32 1
  %263 = load i32, i32* %262, align 8
  %264 = icmp eq i32 %263, 134
  br i1 %264, label %265, label %307

265:                                              ; preds = %260
  %266 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %267 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %266, i32 0, i32 4
  %268 = load i64, i64* %267, align 8
  %269 = trunc i64 %268 to i32
  %270 = call i32 (i32, i8*, ...) @DEBUGLOG(i32 4, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.4, i64 0, i64 0), i32 %269)
  %271 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %272 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %271, i32 0, i32 7
  %273 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %272, i32 0, i32 0
  %274 = load i64, i64* %273, align 8
  %275 = load i64, i64* @ZSTD_CONTENTSIZE_UNKNOWN, align 8
  %276 = icmp ne i64 %274, %275
  br i1 %276, label %277, label %290

277:                                              ; preds = %265
  %278 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %279 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %278, i32 0, i32 4
  %280 = load i64, i64* %279, align 8
  %281 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %282 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %281, i32 0, i32 7
  %283 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %282, i32 0, i32 0
  %284 = load i64, i64* %283, align 8
  %285 = icmp ne i64 %280, %284
  br i1 %285, label %286, label %289

286:                                              ; preds = %277
  %287 = load i32, i32* @corruption_detected, align 4
  %288 = call i64 @ERROR(i32 %287)
  store i64 %288, i64* %6, align 8
  br label %386

289:                                              ; preds = %277
  br label %290

290:                                              ; preds = %289, %265
  %291 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %292 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %291, i32 0, i32 7
  %293 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %292, i32 0, i32 1
  %294 = load i32, i32* %293, align 8
  %295 = icmp ne i32 %294, 0
  br i1 %295, label %296, label %301

296:                                              ; preds = %290
  %297 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %298 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %297, i32 0, i32 0
  store i64 4, i64* %298, align 8
  %299 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %300 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %299, i32 0, i32 1
  store i32 139, i32* %300, align 8
  br label %306

301:                                              ; preds = %290
  %302 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %303 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %302, i32 0, i32 0
  store i64 0, i64* %303, align 8
  %304 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %305 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %304, i32 0, i32 1
  store i32 133, i32* %305, align 8
  br label %306

306:                                              ; preds = %301, %296
  br label %319

307:                                              ; preds = %260
  %308 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %309 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %308, i32 0, i32 1
  store i32 138, i32* %309, align 8
  %310 = load i8*, i8** @ZSTD_blockHeaderSize, align 8
  %311 = ptrtoint i8* %310 to i64
  %312 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %313 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %312, i32 0, i32 0
  store i64 %311, i64* %313, align 8
  %314 = load i8*, i8** %8, align 8
  %315 = load i64, i64* %14, align 8
  %316 = getelementptr inbounds i8, i8* %314, i64 %315
  %317 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %318 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %317, i32 0, i32 5
  store i8* %316, i8** %318, align 8
  br label %319

319:                                              ; preds = %307, %306
  %320 = load i64, i64* %14, align 8
  store i64 %320, i64* %6, align 8
  br label %386

321:                                              ; preds = %35
  %322 = load i64, i64* %11, align 8
  %323 = icmp eq i64 %322, 4
  %324 = zext i1 %323 to i32
  %325 = call i32 @assert(i32 %324)
  %326 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %327 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %326, i32 0, i32 6
  %328 = call i64 @XXH64_digest(i32* %327)
  %329 = trunc i64 %328 to i32
  store i32 %329, i32* %15, align 4
  %330 = load i8*, i8** %10, align 8
  %331 = ptrtoint i8* %330 to i64
  %332 = call i32 @MEM_readLE32(i64 %331)
  store i32 %332, i32* %16, align 4
  %333 = load i32, i32* %15, align 4
  %334 = load i32, i32* %16, align 4
  %335 = call i32 (i32, i8*, ...) @DEBUGLOG(i32 4, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.5, i64 0, i64 0), i32 %333, i32 %334)
  %336 = load i32, i32* %16, align 4
  %337 = load i32, i32* %15, align 4
  %338 = icmp ne i32 %336, %337
  br i1 %338, label %339, label %342

339:                                              ; preds = %321
  %340 = load i32, i32* @checksum_wrong, align 4
  %341 = call i64 @ERROR(i32 %340)
  store i64 %341, i64* %6, align 8
  br label %386

342:                                              ; preds = %321
  %343 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %344 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %343, i32 0, i32 0
  store i64 0, i64* %344, align 8
  %345 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %346 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %345, i32 0, i32 1
  store i32 133, i32* %346, align 8
  store i64 0, i64* %6, align 8
  br label %386

347:                                              ; preds = %35
  %348 = load i8*, i8** %10, align 8
  %349 = icmp ne i8* %348, null
  %350 = zext i1 %349 to i32
  %351 = call i32 @assert(i32 %350)
  %352 = load i64, i64* %11, align 8
  %353 = load i64, i64* @ZSTD_skippableHeaderSize, align 8
  %354 = icmp ule i64 %352, %353
  %355 = zext i1 %354 to i32
  %356 = call i32 @assert(i32 %355)
  %357 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %358 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %357, i32 0, i32 2
  %359 = load i64, i64* %358, align 8
  %360 = load i64, i64* @ZSTD_skippableHeaderSize, align 8
  %361 = load i64, i64* %11, align 8
  %362 = sub i64 %360, %361
  %363 = add i64 %359, %362
  %364 = load i8*, i8** %10, align 8
  %365 = load i64, i64* %11, align 8
  %366 = call i32 @memcpy(i64 %363, i8* %364, i64 %365)
  %367 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %368 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %367, i32 0, i32 2
  %369 = load i64, i64* %368, align 8
  %370 = load i64, i64* @ZSTD_FRAMEIDSIZE, align 8
  %371 = add i64 %369, %370
  %372 = call i32 @MEM_readLE32(i64 %371)
  %373 = sext i32 %372 to i64
  %374 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %375 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %374, i32 0, i32 0
  store i64 %373, i64* %375, align 8
  %376 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %377 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %376, i32 0, i32 1
  store i32 132, i32* %377, align 8
  store i64 0, i64* %6, align 8
  br label %386

378:                                              ; preds = %35
  %379 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %380 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %379, i32 0, i32 0
  store i64 0, i64* %380, align 8
  %381 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %382 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %381, i32 0, i32 1
  store i32 133, i32* %382, align 8
  store i64 0, i64* %6, align 8
  br label %386

383:                                              ; preds = %35
  %384 = load i32, i32* @GENERIC, align 4
  %385 = call i64 @ERROR(i32 %384)
  store i64 %385, i64* %6, align 8
  br label %386

386:                                              ; preds = %383, %378, %347, %342, %339, %319, %286, %238, %231, %201, %165, %149, %110, %94, %90, %61, %25
  %387 = load i64, i64* %6, align 8
  ret i64 %387
}

declare dso_local i32 @DEBUGLOG(i32, i8*, ...) #1

declare dso_local i64 @ERROR(i32) #1

declare dso_local i32 @ZSTD_checkContinuity(%struct.TYPE_11__*, i8*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @MEM_readLE32(i64) #1

declare dso_local i32 @memcpy(i64, i8*, i64) #1

declare dso_local i64 @ZSTD_frameHeaderSize_internal(i8*, i64, i32) #1

declare dso_local i32 @ZSTD_isError(i64) #1

declare dso_local i32 @CHECK_F(i32) #1

declare dso_local i32 @ZSTD_decodeFrameHeader(%struct.TYPE_11__*, i64, i64) #1

declare dso_local i64 @ZSTD_getcBlockSize(i8*, i8*, %struct.TYPE_10__*) #1

declare dso_local i64 @ZSTD_decompressBlock_internal(%struct.TYPE_11__*, i8*, i64, i8*, i64, i32) #1

declare dso_local i64 @ZSTD_copyRawBlock(i8*, i64, i8*, i64) #1

declare dso_local i64 @ZSTD_setRleBlock(i8*, i64, i8*, i64, i32) #1

declare dso_local i32 @XXH64_update(i32*, i8*, i64) #1

declare dso_local i64 @XXH64_digest(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
