; ModuleID = '/home/carl/AnghaBench/reactos/drivers/filesystems/btrfs/extr_balance.c_should_balance_chunk.c'
source_filename = "/home/carl/AnghaBench/reactos/drivers/filesystems/btrfs/extr_balance.c_should_balance_chunk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { %struct.TYPE_14__* }
%struct.TYPE_14__ = type { i32, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.TYPE_13__ = type { i64, i32, %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i64, i32, i64, i64 }
%struct.TYPE_15__ = type { i64, i64 }

@BTRFS_BALANCE_OPTS_ENABLED = common dso_local global i32 0, align 4
@BTRFS_BALANCE_OPTS_PROFILES = common dso_local global i32 0, align 4
@BTRFS_BALANCE_OPTS_DEVID = common dso_local global i32 0, align 4
@BTRFS_BALANCE_OPTS_DRANGE = common dso_local global i32 0, align 4
@BLOCK_FLAG_RAID0 = common dso_local global i32 0, align 4
@BLOCK_FLAG_RAID10 = common dso_local global i32 0, align 4
@BLOCK_FLAG_RAID5 = common dso_local global i32 0, align 4
@BLOCK_FLAG_RAID6 = common dso_local global i32 0, align 4
@BTRFS_BALANCE_OPTS_VRANGE = common dso_local global i32 0, align 4
@BTRFS_BALANCE_OPTS_STRIPES = common dso_local global i32 0, align 4
@BTRFS_BALANCE_OPTS_USAGE = common dso_local global i32 0, align 4
@BTRFS_BALANCE_OPTS_CONVERT = common dso_local global i32 0, align 4
@BTRFS_BALANCE_OPTS_SOFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_12__*, i64, %struct.TYPE_13__*)* @should_balance_chunk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @should_balance_chunk(%struct.TYPE_12__* %0, i64 %1, %struct.TYPE_13__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_12__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.TYPE_13__*, align 8
  %8 = alloca %struct.TYPE_14__*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.TYPE_15__*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca %struct.TYPE_15__*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %5, align 8
  store i64 %1, i64* %6, align 8
  store %struct.TYPE_13__* %2, %struct.TYPE_13__** %7, align 8
  %20 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %21 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %21, i32 0, i32 0
  %23 = load %struct.TYPE_14__*, %struct.TYPE_14__** %22, align 8
  %24 = load i64, i64* %6, align 8
  %25 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %23, i64 %24
  store %struct.TYPE_14__* %25, %struct.TYPE_14__** %8, align 8
  %26 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %27 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = load i32, i32* @BTRFS_BALANCE_OPTS_ENABLED, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %33, label %32

32:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %367

33:                                               ; preds = %3
  %34 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %35 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = load i32, i32* @BTRFS_BALANCE_OPTS_PROFILES, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %51

40:                                               ; preds = %33
  %41 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %42 = call i64 @get_chunk_dup_type(%struct.TYPE_13__* %41)
  store i64 %42, i64* %9, align 8
  %43 = load i64, i64* %9, align 8
  %44 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %45 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = and i64 %43, %46
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %50, label %49

49:                                               ; preds = %40
  store i32 0, i32* %4, align 4
  br label %367

50:                                               ; preds = %40
  br label %51

51:                                               ; preds = %50, %33
  %52 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %53 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = load i32, i32* @BTRFS_BALANCE_OPTS_DEVID, align 4
  %56 = and i32 %54, %55
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %92

58:                                               ; preds = %51
  %59 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %60 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %59, i32 0, i32 2
  %61 = load %struct.TYPE_11__*, %struct.TYPE_11__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %61, i64 1
  %63 = bitcast %struct.TYPE_11__* %62 to %struct.TYPE_15__*
  store %struct.TYPE_15__* %63, %struct.TYPE_15__** %11, align 8
  store i32 0, i32* %12, align 4
  store i64 0, i64* %10, align 8
  br label %64

64:                                               ; preds = %84, %58
  %65 = load i64, i64* %10, align 8
  %66 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %67 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %66, i32 0, i32 2
  %68 = load %struct.TYPE_11__*, %struct.TYPE_11__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = icmp ult i64 %65, %70
  br i1 %71, label %72, label %87

72:                                               ; preds = %64
  %73 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %74 = load i64, i64* %10, align 8
  %75 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %73, i64 %74
  %76 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %79 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %78, i32 0, i32 2
  %80 = load i64, i64* %79, align 8
  %81 = icmp eq i64 %77, %80
  br i1 %81, label %82, label %83

82:                                               ; preds = %72
  store i32 1, i32* %12, align 4
  br label %87

83:                                               ; preds = %72
  br label %84

84:                                               ; preds = %83
  %85 = load i64, i64* %10, align 8
  %86 = add i64 %85, 1
  store i64 %86, i64* %10, align 8
  br label %64

87:                                               ; preds = %82, %64
  %88 = load i32, i32* %12, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %91, label %90

90:                                               ; preds = %87
  store i32 0, i32* %4, align 4
  br label %367

91:                                               ; preds = %87
  br label %92

92:                                               ; preds = %91, %51
  %93 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %94 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  %96 = load i32, i32* @BTRFS_BALANCE_OPTS_DRANGE, align 4
  %97 = and i32 %95, %96
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %241

99:                                               ; preds = %92
  %100 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %101 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %100, i32 0, i32 2
  %102 = load %struct.TYPE_11__*, %struct.TYPE_11__** %101, align 8
  %103 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %102, i64 1
  %104 = bitcast %struct.TYPE_11__* %103 to %struct.TYPE_15__*
  store %struct.TYPE_15__* %104, %struct.TYPE_15__** %16, align 8
  store i32 0, i32* %17, align 4
  %105 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %106 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %105, i32 0, i32 2
  %107 = load %struct.TYPE_11__*, %struct.TYPE_11__** %106, align 8
  %108 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 8
  %110 = load i32, i32* @BLOCK_FLAG_RAID0, align 4
  %111 = and i32 %109, %110
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %119

113:                                              ; preds = %99
  %114 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %115 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %114, i32 0, i32 2
  %116 = load %struct.TYPE_11__*, %struct.TYPE_11__** %115, align 8
  %117 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %116, i32 0, i32 0
  %118 = load i64, i64* %117, align 8
  store i64 %118, i64* %14, align 8
  br label %176

119:                                              ; preds = %99
  %120 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %121 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %120, i32 0, i32 2
  %122 = load %struct.TYPE_11__*, %struct.TYPE_11__** %121, align 8
  %123 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %122, i32 0, i32 1
  %124 = load i32, i32* %123, align 8
  %125 = load i32, i32* @BLOCK_FLAG_RAID10, align 4
  %126 = and i32 %124, %125
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %140

128:                                              ; preds = %119
  %129 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %130 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %129, i32 0, i32 2
  %131 = load %struct.TYPE_11__*, %struct.TYPE_11__** %130, align 8
  %132 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %131, i32 0, i32 0
  %133 = load i64, i64* %132, align 8
  %134 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %135 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %134, i32 0, i32 2
  %136 = load %struct.TYPE_11__*, %struct.TYPE_11__** %135, align 8
  %137 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %136, i32 0, i32 2
  %138 = load i64, i64* %137, align 8
  %139 = udiv i64 %133, %138
  store i64 %139, i64* %14, align 8
  br label %175

140:                                              ; preds = %119
  %141 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %142 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %141, i32 0, i32 2
  %143 = load %struct.TYPE_11__*, %struct.TYPE_11__** %142, align 8
  %144 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %143, i32 0, i32 1
  %145 = load i32, i32* %144, align 8
  %146 = load i32, i32* @BLOCK_FLAG_RAID5, align 4
  %147 = and i32 %145, %146
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %149, label %156

149:                                              ; preds = %140
  %150 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %151 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %150, i32 0, i32 2
  %152 = load %struct.TYPE_11__*, %struct.TYPE_11__** %151, align 8
  %153 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %152, i32 0, i32 0
  %154 = load i64, i64* %153, align 8
  %155 = sub i64 %154, 1
  store i64 %155, i64* %14, align 8
  br label %174

156:                                              ; preds = %140
  %157 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %158 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %157, i32 0, i32 2
  %159 = load %struct.TYPE_11__*, %struct.TYPE_11__** %158, align 8
  %160 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %159, i32 0, i32 1
  %161 = load i32, i32* %160, align 8
  %162 = load i32, i32* @BLOCK_FLAG_RAID6, align 4
  %163 = and i32 %161, %162
  %164 = icmp ne i32 %163, 0
  br i1 %164, label %165, label %172

165:                                              ; preds = %156
  %166 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %167 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %166, i32 0, i32 2
  %168 = load %struct.TYPE_11__*, %struct.TYPE_11__** %167, align 8
  %169 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %168, i32 0, i32 0
  %170 = load i64, i64* %169, align 8
  %171 = sub i64 %170, 2
  store i64 %171, i64* %14, align 8
  br label %173

172:                                              ; preds = %156
  store i64 1, i64* %14, align 8
  br label %173

173:                                              ; preds = %172, %165
  br label %174

174:                                              ; preds = %173, %149
  br label %175

175:                                              ; preds = %174, %128
  br label %176

176:                                              ; preds = %175, %113
  %177 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %178 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %177, i32 0, i32 2
  %179 = load %struct.TYPE_11__*, %struct.TYPE_11__** %178, align 8
  %180 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %179, i32 0, i32 3
  %181 = load i64, i64* %180, align 8
  %182 = load i64, i64* %14, align 8
  %183 = udiv i64 %181, %182
  store i64 %183, i64* %15, align 8
  store i64 0, i64* %13, align 8
  br label %184

184:                                              ; preds = %233, %176
  %185 = load i64, i64* %13, align 8
  %186 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %187 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %186, i32 0, i32 2
  %188 = load %struct.TYPE_11__*, %struct.TYPE_11__** %187, align 8
  %189 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %188, i32 0, i32 0
  %190 = load i64, i64* %189, align 8
  %191 = icmp ult i64 %185, %190
  br i1 %191, label %192, label %236

192:                                              ; preds = %184
  %193 = load %struct.TYPE_15__*, %struct.TYPE_15__** %16, align 8
  %194 = load i64, i64* %13, align 8
  %195 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %193, i64 %194
  %196 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %195, i32 0, i32 1
  %197 = load i64, i64* %196, align 8
  %198 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %199 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %198, i32 0, i32 3
  %200 = load i64, i64* %199, align 8
  %201 = icmp slt i64 %197, %200
  br i1 %201, label %202, label %232

202:                                              ; preds = %192
  %203 = load %struct.TYPE_15__*, %struct.TYPE_15__** %16, align 8
  %204 = load i64, i64* %13, align 8
  %205 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %203, i64 %204
  %206 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %205, i32 0, i32 1
  %207 = load i64, i64* %206, align 8
  %208 = load i64, i64* %15, align 8
  %209 = add nsw i64 %207, %208
  %210 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %211 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %210, i32 0, i32 4
  %212 = load i64, i64* %211, align 8
  %213 = icmp sge i64 %209, %212
  br i1 %213, label %214, label %232

214:                                              ; preds = %202
  %215 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %216 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %215, i32 0, i32 0
  %217 = load i32, i32* %216, align 8
  %218 = load i32, i32* @BTRFS_BALANCE_OPTS_DEVID, align 4
  %219 = and i32 %217, %218
  %220 = icmp ne i32 %219, 0
  br i1 %220, label %221, label %231

221:                                              ; preds = %214
  %222 = load %struct.TYPE_15__*, %struct.TYPE_15__** %16, align 8
  %223 = load i64, i64* %13, align 8
  %224 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %222, i64 %223
  %225 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %224, i32 0, i32 0
  %226 = load i64, i64* %225, align 8
  %227 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %228 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %227, i32 0, i32 2
  %229 = load i64, i64* %228, align 8
  %230 = icmp eq i64 %226, %229
  br i1 %230, label %231, label %232

231:                                              ; preds = %221, %214
  store i32 1, i32* %17, align 4
  br label %236

232:                                              ; preds = %221, %202, %192
  br label %233

233:                                              ; preds = %232
  %234 = load i64, i64* %13, align 8
  %235 = add i64 %234, 1
  store i64 %235, i64* %13, align 8
  br label %184

236:                                              ; preds = %231, %184
  %237 = load i32, i32* %17, align 4
  %238 = icmp ne i32 %237, 0
  br i1 %238, label %240, label %239

239:                                              ; preds = %236
  store i32 0, i32* %4, align 4
  br label %367

240:                                              ; preds = %236
  br label %241

241:                                              ; preds = %240, %92
  %242 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %243 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %242, i32 0, i32 0
  %244 = load i32, i32* %243, align 8
  %245 = load i32, i32* @BTRFS_BALANCE_OPTS_VRANGE, align 4
  %246 = and i32 %244, %245
  %247 = icmp ne i32 %246, 0
  br i1 %247, label %248, label %272

248:                                              ; preds = %241
  %249 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %250 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %249, i32 0, i32 0
  %251 = load i64, i64* %250, align 8
  %252 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %253 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %252, i32 0, i32 2
  %254 = load %struct.TYPE_11__*, %struct.TYPE_11__** %253, align 8
  %255 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %254, i32 0, i32 3
  %256 = load i64, i64* %255, align 8
  %257 = add i64 %251, %256
  %258 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %259 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %258, i32 0, i32 5
  %260 = load i64, i64* %259, align 8
  %261 = icmp ule i64 %257, %260
  br i1 %261, label %270, label %262

262:                                              ; preds = %248
  %263 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %264 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %263, i32 0, i32 0
  %265 = load i64, i64* %264, align 8
  %266 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %267 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %266, i32 0, i32 6
  %268 = load i64, i64* %267, align 8
  %269 = icmp sgt i64 %265, %268
  br i1 %269, label %270, label %271

270:                                              ; preds = %262, %248
  store i32 0, i32* %4, align 4
  br label %367

271:                                              ; preds = %262
  br label %272

272:                                              ; preds = %271, %241
  %273 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %274 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %273, i32 0, i32 0
  %275 = load i32, i32* %274, align 8
  %276 = load i32, i32* @BTRFS_BALANCE_OPTS_STRIPES, align 4
  %277 = and i32 %275, %276
  %278 = icmp ne i32 %277, 0
  br i1 %278, label %279, label %301

279:                                              ; preds = %272
  %280 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %281 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %280, i32 0, i32 2
  %282 = load %struct.TYPE_11__*, %struct.TYPE_11__** %281, align 8
  %283 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %282, i32 0, i32 0
  %284 = load i64, i64* %283, align 8
  %285 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %286 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %285, i32 0, i32 7
  %287 = load i64, i64* %286, align 8
  %288 = icmp ult i64 %284, %287
  br i1 %288, label %299, label %289

289:                                              ; preds = %279
  %290 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %291 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %290, i32 0, i32 2
  %292 = load %struct.TYPE_11__*, %struct.TYPE_11__** %291, align 8
  %293 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %292, i32 0, i32 0
  %294 = load i64, i64* %293, align 8
  %295 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %296 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %295, i32 0, i32 8
  %297 = load i64, i64* %296, align 8
  %298 = icmp ult i64 %294, %297
  br i1 %298, label %299, label %300

299:                                              ; preds = %289, %279
  store i32 0, i32* %4, align 4
  br label %367

300:                                              ; preds = %289
  br label %301

301:                                              ; preds = %300, %272
  %302 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %303 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %302, i32 0, i32 0
  %304 = load i32, i32* %303, align 8
  %305 = load i32, i32* @BTRFS_BALANCE_OPTS_USAGE, align 4
  %306 = and i32 %304, %305
  %307 = icmp ne i32 %306, 0
  br i1 %307, label %308, label %342

308:                                              ; preds = %301
  %309 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %310 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %309, i32 0, i32 1
  %311 = load i32, i32* %310, align 8
  %312 = mul nsw i32 %311, 100
  %313 = sext i32 %312 to i64
  %314 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %315 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %314, i32 0, i32 2
  %316 = load %struct.TYPE_11__*, %struct.TYPE_11__** %315, align 8
  %317 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %316, i32 0, i32 3
  %318 = load i64, i64* %317, align 8
  %319 = udiv i64 %313, %318
  store i64 %319, i64* %18, align 8
  %320 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %321 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %320, i32 0, i32 1
  %322 = load i32, i32* %321, align 8
  %323 = icmp sgt i32 %322, 0
  br i1 %323, label %324, label %328

324:                                              ; preds = %308
  %325 = load i64, i64* %18, align 8
  %326 = icmp eq i64 %325, 0
  br i1 %326, label %327, label %328

327:                                              ; preds = %324
  store i64 1, i64* %18, align 8
  br label %328

328:                                              ; preds = %327, %324, %308
  %329 = load i64, i64* %18, align 8
  %330 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %331 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %330, i32 0, i32 9
  %332 = load i64, i64* %331, align 8
  %333 = icmp slt i64 %329, %332
  br i1 %333, label %340, label %334

334:                                              ; preds = %328
  %335 = load i64, i64* %18, align 8
  %336 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %337 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %336, i32 0, i32 10
  %338 = load i64, i64* %337, align 8
  %339 = icmp sgt i64 %335, %338
  br i1 %339, label %340, label %341

340:                                              ; preds = %334, %328
  store i32 0, i32* %4, align 4
  br label %367

341:                                              ; preds = %334
  br label %342

342:                                              ; preds = %341, %301
  %343 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %344 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %343, i32 0, i32 0
  %345 = load i32, i32* %344, align 8
  %346 = load i32, i32* @BTRFS_BALANCE_OPTS_CONVERT, align 4
  %347 = and i32 %345, %346
  %348 = icmp ne i32 %347, 0
  br i1 %348, label %349, label %366

349:                                              ; preds = %342
  %350 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %351 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %350, i32 0, i32 0
  %352 = load i32, i32* %351, align 8
  %353 = load i32, i32* @BTRFS_BALANCE_OPTS_SOFT, align 4
  %354 = and i32 %352, %353
  %355 = icmp ne i32 %354, 0
  br i1 %355, label %356, label %366

356:                                              ; preds = %349
  %357 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %358 = call i64 @get_chunk_dup_type(%struct.TYPE_13__* %357)
  store i64 %358, i64* %19, align 8
  %359 = load i64, i64* %19, align 8
  %360 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %361 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %360, i32 0, i32 11
  %362 = load i64, i64* %361, align 8
  %363 = icmp eq i64 %359, %362
  br i1 %363, label %364, label %365

364:                                              ; preds = %356
  store i32 0, i32* %4, align 4
  br label %367

365:                                              ; preds = %356
  br label %366

366:                                              ; preds = %365, %349, %342
  store i32 1, i32* %4, align 4
  br label %367

367:                                              ; preds = %366, %364, %340, %299, %270, %239, %90, %49, %32
  %368 = load i32, i32* %4, align 4
  ret i32 %368
}

declare dso_local i64 @get_chunk_dup_type(%struct.TYPE_13__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
