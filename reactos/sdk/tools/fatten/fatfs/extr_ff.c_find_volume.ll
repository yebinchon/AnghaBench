; ModuleID = '/home/carl/AnghaBench/reactos/sdk/tools/fatten/fatfs/extr_ff.c_find_volume.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/tools/fatten/fatfs/extr_ff.c_find_volume.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i32*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, i32 }

@FR_INVALID_DRIVE = common dso_local global i64 0, align 8
@FatFs = common dso_local global %struct.TYPE_9__** null, align 8
@FR_NOT_ENABLED = common dso_local global i64 0, align 8
@STA_NOINIT = common dso_local global i32 0, align 4
@_FS_READONLY = common dso_local global i32 0, align 4
@STA_PROTECT = common dso_local global i32 0, align 4
@FR_WRITE_PROTECTED = common dso_local global i64 0, align 8
@FR_OK = common dso_local global i64 0, align 8
@FR_NOT_READY = common dso_local global i64 0, align 8
@MBR_Table = common dso_local global i32 0, align 4
@SZ_PTE = common dso_local global i32 0, align 4
@FR_DISK_ERR = common dso_local global i64 0, align 8
@FR_NO_FILESYSTEM = common dso_local global i64 0, align 8
@BPB_BytsPerSec = common dso_local global i32 0, align 4
@BPB_FATSz16 = common dso_local global i32 0, align 4
@BPB_FATSz32 = common dso_local global i32 0, align 4
@BPB_NumFATs = common dso_local global i64 0, align 8
@BPB_SecPerClus = common dso_local global i64 0, align 8
@BPB_RootEntCnt = common dso_local global i32 0, align 4
@SZ_DIRE = common dso_local global i32 0, align 4
@BPB_TotSec16 = common dso_local global i32 0, align 4
@BPB_TotSec32 = common dso_local global i32 0, align 4
@BPB_RsvdSecCnt = common dso_local global i32 0, align 4
@FS_FAT12 = common dso_local global i32 0, align 4
@MIN_FAT16 = common dso_local global i32 0, align 4
@FS_FAT16 = common dso_local global i32 0, align 4
@MIN_FAT32 = common dso_local global i32 0, align 4
@FS_FAT32 = common dso_local global i32 0, align 4
@BPB_RootClus = common dso_local global i32 0, align 4
@BPB_FSInfo = common dso_local global i32 0, align 4
@BS_55AA = common dso_local global i32 0, align 4
@FSI_LeadSig = common dso_local global i32 0, align 4
@FSI_StrucSig = common dso_local global i32 0, align 4
@FSI_Free_Count = common dso_local global i32 0, align 4
@FSI_Nxt_Free = common dso_local global i32 0, align 4
@Fsid = common dso_local global i64 0, align 8
@GET_SECTOR_SIZE = common dso_local global i32 0, align 4
@RES_OK = common dso_local global i64 0, align 8
@_MAX_SS = common dso_local global i32 0, align 4
@_MIN_SS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_9__**, i32**, i32)* @find_volume to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @find_volume(%struct.TYPE_9__** %0, i32** %1, i32 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.TYPE_9__**, align 8
  %6 = alloca i32**, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca [4 x i32], align 16
  %19 = alloca i32, align 4
  %20 = alloca %struct.TYPE_9__*, align 8
  %21 = alloca i32, align 4
  store %struct.TYPE_9__** %0, %struct.TYPE_9__*** %5, align 8
  store i32** %1, i32*** %6, align 8
  store i32 %2, i32* %7, align 4
  %22 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %5, align 8
  store %struct.TYPE_9__* null, %struct.TYPE_9__** %22, align 8
  %23 = load i32**, i32*** %6, align 8
  %24 = call i32 @get_ldnumber(i32** %23)
  store i32 %24, i32* %10, align 4
  %25 = load i32, i32* %10, align 4
  %26 = icmp slt i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %3
  %28 = load i64, i64* @FR_INVALID_DRIVE, align 8
  store i64 %28, i64* %4, align 8
  br label %551

29:                                               ; preds = %3
  %30 = load %struct.TYPE_9__**, %struct.TYPE_9__*** @FatFs, align 8
  %31 = load i32, i32* %10, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %30, i64 %32
  %34 = load %struct.TYPE_9__*, %struct.TYPE_9__** %33, align 8
  store %struct.TYPE_9__* %34, %struct.TYPE_9__** %20, align 8
  %35 = load %struct.TYPE_9__*, %struct.TYPE_9__** %20, align 8
  %36 = icmp ne %struct.TYPE_9__* %35, null
  br i1 %36, label %39, label %37

37:                                               ; preds = %29
  %38 = load i64, i64* @FR_NOT_ENABLED, align 8
  store i64 %38, i64* %4, align 8
  br label %551

39:                                               ; preds = %29
  %40 = load %struct.TYPE_9__*, %struct.TYPE_9__** %20, align 8
  %41 = call i32 @ENTER_FF(%struct.TYPE_9__* %40)
  %42 = load %struct.TYPE_9__*, %struct.TYPE_9__** %20, align 8
  %43 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %5, align 8
  store %struct.TYPE_9__* %42, %struct.TYPE_9__** %43, align 8
  %44 = load %struct.TYPE_9__*, %struct.TYPE_9__** %20, align 8
  %45 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %73

48:                                               ; preds = %39
  %49 = load %struct.TYPE_9__*, %struct.TYPE_9__** %20, align 8
  %50 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %49, i32 0, i32 16
  %51 = load i32, i32* %50, align 8
  %52 = call i32 @disk_status(i32 %51)
  store i32 %52, i32* %11, align 4
  %53 = load i32, i32* %11, align 4
  %54 = load i32, i32* @STA_NOINIT, align 4
  %55 = and i32 %53, %54
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %72, label %57

57:                                               ; preds = %48
  %58 = load i32, i32* @_FS_READONLY, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %70, label %60

60:                                               ; preds = %57
  %61 = load i32, i32* %7, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %70

63:                                               ; preds = %60
  %64 = load i32, i32* %11, align 4
  %65 = load i32, i32* @STA_PROTECT, align 4
  %66 = and i32 %64, %65
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %70

68:                                               ; preds = %63
  %69 = load i64, i64* @FR_WRITE_PROTECTED, align 8
  store i64 %69, i64* %4, align 8
  br label %551

70:                                               ; preds = %63, %60, %57
  %71 = load i64, i64* @FR_OK, align 8
  store i64 %71, i64* %4, align 8
  br label %551

72:                                               ; preds = %48
  br label %73

73:                                               ; preds = %72, %39
  %74 = load %struct.TYPE_9__*, %struct.TYPE_9__** %20, align 8
  %75 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %74, i32 0, i32 0
  store i32 0, i32* %75, align 8
  %76 = load i32, i32* %10, align 4
  %77 = call i32 @LD2PD(i32 %76)
  %78 = load %struct.TYPE_9__*, %struct.TYPE_9__** %20, align 8
  %79 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %78, i32 0, i32 16
  store i32 %77, i32* %79, align 8
  %80 = load %struct.TYPE_9__*, %struct.TYPE_9__** %20, align 8
  %81 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %80, i32 0, i32 16
  %82 = load i32, i32* %81, align 8
  %83 = call i32 @disk_initialize(i32 %82)
  store i32 %83, i32* %11, align 4
  %84 = load i32, i32* %11, align 4
  %85 = load i32, i32* @STA_NOINIT, align 4
  %86 = and i32 %84, %85
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %90

88:                                               ; preds = %73
  %89 = load i64, i64* @FR_NOT_READY, align 8
  store i64 %89, i64* %4, align 8
  br label %551

90:                                               ; preds = %73
  %91 = load i32, i32* @_FS_READONLY, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %103, label %93

93:                                               ; preds = %90
  %94 = load i32, i32* %7, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %103

96:                                               ; preds = %93
  %97 = load i32, i32* %11, align 4
  %98 = load i32, i32* @STA_PROTECT, align 4
  %99 = and i32 %97, %98
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %103

101:                                              ; preds = %96
  %102 = load i64, i64* @FR_WRITE_PROTECTED, align 8
  store i64 %102, i64* %4, align 8
  br label %551

103:                                              ; preds = %96, %93, %90
  store i32 0, i32* %12, align 4
  %104 = load %struct.TYPE_9__*, %struct.TYPE_9__** %20, align 8
  %105 = load i32, i32* %12, align 4
  %106 = call i32 @check_fs(%struct.TYPE_9__* %104, i32 %105)
  store i32 %106, i32* %8, align 4
  %107 = load i32, i32* %8, align 4
  %108 = icmp eq i32 %107, 1
  br i1 %108, label %116, label %109

109:                                              ; preds = %103
  %110 = load i32, i32* %8, align 4
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %186, label %112

112:                                              ; preds = %109
  %113 = load i32, i32* %10, align 4
  %114 = call i32 @LD2PT(i32 %113)
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %186

116:                                              ; preds = %112, %103
  store i32 0, i32* %21, align 4
  br label %117

117:                                              ; preds = %146, %116
  %118 = load i32, i32* %21, align 4
  %119 = icmp slt i32 %118, 4
  br i1 %119, label %120, label %149

120:                                              ; preds = %117
  %121 = load %struct.TYPE_9__*, %struct.TYPE_9__** %20, align 8
  %122 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %121, i32 0, i32 1
  %123 = load i32*, i32** %122, align 8
  %124 = load i32, i32* @MBR_Table, align 4
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds i32, i32* %123, i64 %125
  %127 = load i32, i32* %21, align 4
  %128 = load i32, i32* @SZ_PTE, align 4
  %129 = mul nsw i32 %127, %128
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds i32, i32* %126, i64 %130
  store i32* %131, i32** %9, align 8
  %132 = load i32*, i32** %9, align 8
  %133 = getelementptr inbounds i32, i32* %132, i64 4
  %134 = load i32, i32* %133, align 4
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %136, label %140

136:                                              ; preds = %120
  %137 = load i32*, i32** %9, align 8
  %138 = getelementptr inbounds i32, i32* %137, i64 8
  %139 = call i32 @LD_DWORD(i32* %138)
  br label %141

140:                                              ; preds = %120
  br label %141

141:                                              ; preds = %140, %136
  %142 = phi i32 [ %139, %136 ], [ 0, %140 ]
  %143 = load i32, i32* %21, align 4
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds [4 x i32], [4 x i32]* %18, i64 0, i64 %144
  store i32 %142, i32* %145, align 4
  br label %146

146:                                              ; preds = %141
  %147 = load i32, i32* %21, align 4
  %148 = add nsw i32 %147, 1
  store i32 %148, i32* %21, align 4
  br label %117

149:                                              ; preds = %117
  %150 = load i32, i32* %10, align 4
  %151 = call i32 @LD2PT(i32 %150)
  store i32 %151, i32* %21, align 4
  %152 = load i32, i32* %21, align 4
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %154, label %157

154:                                              ; preds = %149
  %155 = load i32, i32* %21, align 4
  %156 = add nsw i32 %155, -1
  store i32 %156, i32* %21, align 4
  br label %157

157:                                              ; preds = %154, %149
  br label %158

158:                                              ; preds = %183, %157
  %159 = load i32, i32* %21, align 4
  %160 = sext i32 %159 to i64
  %161 = getelementptr inbounds [4 x i32], [4 x i32]* %18, i64 0, i64 %160
  %162 = load i32, i32* %161, align 4
  store i32 %162, i32* %12, align 4
  %163 = load i32, i32* %12, align 4
  %164 = icmp ne i32 %163, 0
  br i1 %164, label %165, label %169

165:                                              ; preds = %158
  %166 = load %struct.TYPE_9__*, %struct.TYPE_9__** %20, align 8
  %167 = load i32, i32* %12, align 4
  %168 = call i32 @check_fs(%struct.TYPE_9__* %166, i32 %167)
  br label %170

169:                                              ; preds = %158
  br label %170

170:                                              ; preds = %169, %165
  %171 = phi i32 [ %168, %165 ], [ 2, %169 ]
  store i32 %171, i32* %8, align 4
  br label %172

172:                                              ; preds = %170
  %173 = load i32, i32* %10, align 4
  %174 = call i32 @LD2PT(i32 %173)
  %175 = icmp ne i32 %174, 0
  br i1 %175, label %183, label %176

176:                                              ; preds = %172
  %177 = load i32, i32* %8, align 4
  %178 = icmp ne i32 %177, 0
  br i1 %178, label %179, label %183

179:                                              ; preds = %176
  %180 = load i32, i32* %21, align 4
  %181 = add nsw i32 %180, 1
  store i32 %181, i32* %21, align 4
  %182 = icmp slt i32 %181, 4
  br label %183

183:                                              ; preds = %179, %176, %172
  %184 = phi i1 [ false, %176 ], [ false, %172 ], [ %182, %179 ]
  br i1 %184, label %158, label %185

185:                                              ; preds = %183
  br label %186

186:                                              ; preds = %185, %112, %109
  %187 = load i32, i32* %8, align 4
  %188 = icmp eq i32 %187, 3
  br i1 %188, label %189, label %191

189:                                              ; preds = %186
  %190 = load i64, i64* @FR_DISK_ERR, align 8
  store i64 %190, i64* %4, align 8
  br label %551

191:                                              ; preds = %186
  %192 = load i32, i32* %8, align 4
  %193 = icmp ne i32 %192, 0
  br i1 %193, label %194, label %196

194:                                              ; preds = %191
  %195 = load i64, i64* @FR_NO_FILESYSTEM, align 8
  store i64 %195, i64* %4, align 8
  br label %551

196:                                              ; preds = %191
  %197 = load %struct.TYPE_9__*, %struct.TYPE_9__** %20, align 8
  %198 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %197, i32 0, i32 1
  %199 = load i32*, i32** %198, align 8
  %200 = load i32, i32* @BPB_BytsPerSec, align 4
  %201 = sext i32 %200 to i64
  %202 = getelementptr inbounds i32, i32* %199, i64 %201
  %203 = call i32 @LD_WORD(i32* %202)
  %204 = load %struct.TYPE_9__*, %struct.TYPE_9__** %20, align 8
  %205 = call i32 @SS(%struct.TYPE_9__* %204)
  %206 = icmp ne i32 %203, %205
  br i1 %206, label %207, label %209

207:                                              ; preds = %196
  %208 = load i64, i64* @FR_NO_FILESYSTEM, align 8
  store i64 %208, i64* %4, align 8
  br label %551

209:                                              ; preds = %196
  %210 = load %struct.TYPE_9__*, %struct.TYPE_9__** %20, align 8
  %211 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %210, i32 0, i32 1
  %212 = load i32*, i32** %211, align 8
  %213 = load i32, i32* @BPB_FATSz16, align 4
  %214 = sext i32 %213 to i64
  %215 = getelementptr inbounds i32, i32* %212, i64 %214
  %216 = call i32 @LD_WORD(i32* %215)
  store i32 %216, i32* %13, align 4
  %217 = load i32, i32* %13, align 4
  %218 = icmp ne i32 %217, 0
  br i1 %218, label %227, label %219

219:                                              ; preds = %209
  %220 = load %struct.TYPE_9__*, %struct.TYPE_9__** %20, align 8
  %221 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %220, i32 0, i32 1
  %222 = load i32*, i32** %221, align 8
  %223 = load i32, i32* @BPB_FATSz32, align 4
  %224 = sext i32 %223 to i64
  %225 = getelementptr inbounds i32, i32* %222, i64 %224
  %226 = call i32 @LD_DWORD(i32* %225)
  store i32 %226, i32* %13, align 4
  br label %227

227:                                              ; preds = %219, %209
  %228 = load i32, i32* %13, align 4
  %229 = load %struct.TYPE_9__*, %struct.TYPE_9__** %20, align 8
  %230 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %229, i32 0, i32 2
  store i32 %228, i32* %230, align 8
  %231 = load %struct.TYPE_9__*, %struct.TYPE_9__** %20, align 8
  %232 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %231, i32 0, i32 1
  %233 = load i32*, i32** %232, align 8
  %234 = load i64, i64* @BPB_NumFATs, align 8
  %235 = getelementptr inbounds i32, i32* %233, i64 %234
  %236 = load i32, i32* %235, align 4
  %237 = load %struct.TYPE_9__*, %struct.TYPE_9__** %20, align 8
  %238 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %237, i32 0, i32 3
  store i32 %236, i32* %238, align 4
  %239 = load %struct.TYPE_9__*, %struct.TYPE_9__** %20, align 8
  %240 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %239, i32 0, i32 3
  %241 = load i32, i32* %240, align 4
  %242 = icmp ne i32 %241, 1
  br i1 %242, label %243, label %250

243:                                              ; preds = %227
  %244 = load %struct.TYPE_9__*, %struct.TYPE_9__** %20, align 8
  %245 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %244, i32 0, i32 3
  %246 = load i32, i32* %245, align 4
  %247 = icmp ne i32 %246, 2
  br i1 %247, label %248, label %250

248:                                              ; preds = %243
  %249 = load i64, i64* @FR_NO_FILESYSTEM, align 8
  store i64 %249, i64* %4, align 8
  br label %551

250:                                              ; preds = %243, %227
  %251 = load %struct.TYPE_9__*, %struct.TYPE_9__** %20, align 8
  %252 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %251, i32 0, i32 3
  %253 = load i32, i32* %252, align 4
  %254 = load i32, i32* %13, align 4
  %255 = mul nsw i32 %254, %253
  store i32 %255, i32* %13, align 4
  %256 = load %struct.TYPE_9__*, %struct.TYPE_9__** %20, align 8
  %257 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %256, i32 0, i32 1
  %258 = load i32*, i32** %257, align 8
  %259 = load i64, i64* @BPB_SecPerClus, align 8
  %260 = getelementptr inbounds i32, i32* %258, i64 %259
  %261 = load i32, i32* %260, align 4
  %262 = load %struct.TYPE_9__*, %struct.TYPE_9__** %20, align 8
  %263 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %262, i32 0, i32 4
  store i32 %261, i32* %263, align 8
  %264 = load %struct.TYPE_9__*, %struct.TYPE_9__** %20, align 8
  %265 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %264, i32 0, i32 4
  %266 = load i32, i32* %265, align 8
  %267 = icmp ne i32 %266, 0
  br i1 %267, label %268, label %278

268:                                              ; preds = %250
  %269 = load %struct.TYPE_9__*, %struct.TYPE_9__** %20, align 8
  %270 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %269, i32 0, i32 4
  %271 = load i32, i32* %270, align 8
  %272 = load %struct.TYPE_9__*, %struct.TYPE_9__** %20, align 8
  %273 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %272, i32 0, i32 4
  %274 = load i32, i32* %273, align 8
  %275 = sub nsw i32 %274, 1
  %276 = and i32 %271, %275
  %277 = icmp ne i32 %276, 0
  br i1 %277, label %278, label %280

278:                                              ; preds = %268, %250
  %279 = load i64, i64* @FR_NO_FILESYSTEM, align 8
  store i64 %279, i64* %4, align 8
  br label %551

280:                                              ; preds = %268
  %281 = load %struct.TYPE_9__*, %struct.TYPE_9__** %20, align 8
  %282 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %281, i32 0, i32 1
  %283 = load i32*, i32** %282, align 8
  %284 = load i32, i32* @BPB_RootEntCnt, align 4
  %285 = sext i32 %284 to i64
  %286 = getelementptr inbounds i32, i32* %283, i64 %285
  %287 = call i32 @LD_WORD(i32* %286)
  %288 = load %struct.TYPE_9__*, %struct.TYPE_9__** %20, align 8
  %289 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %288, i32 0, i32 5
  store i32 %287, i32* %289, align 4
  %290 = load %struct.TYPE_9__*, %struct.TYPE_9__** %20, align 8
  %291 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %290, i32 0, i32 5
  %292 = load i32, i32* %291, align 4
  %293 = load %struct.TYPE_9__*, %struct.TYPE_9__** %20, align 8
  %294 = call i32 @SS(%struct.TYPE_9__* %293)
  %295 = load i32, i32* @SZ_DIRE, align 4
  %296 = sdiv i32 %294, %295
  %297 = srem i32 %292, %296
  %298 = icmp ne i32 %297, 0
  br i1 %298, label %299, label %301

299:                                              ; preds = %280
  %300 = load i64, i64* @FR_NO_FILESYSTEM, align 8
  store i64 %300, i64* %4, align 8
  br label %551

301:                                              ; preds = %280
  %302 = load %struct.TYPE_9__*, %struct.TYPE_9__** %20, align 8
  %303 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %302, i32 0, i32 1
  %304 = load i32*, i32** %303, align 8
  %305 = load i32, i32* @BPB_TotSec16, align 4
  %306 = sext i32 %305 to i64
  %307 = getelementptr inbounds i32, i32* %304, i64 %306
  %308 = call i32 @LD_WORD(i32* %307)
  store i32 %308, i32* %14, align 4
  %309 = load i32, i32* %14, align 4
  %310 = icmp ne i32 %309, 0
  br i1 %310, label %319, label %311

311:                                              ; preds = %301
  %312 = load %struct.TYPE_9__*, %struct.TYPE_9__** %20, align 8
  %313 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %312, i32 0, i32 1
  %314 = load i32*, i32** %313, align 8
  %315 = load i32, i32* @BPB_TotSec32, align 4
  %316 = sext i32 %315 to i64
  %317 = getelementptr inbounds i32, i32* %314, i64 %316
  %318 = call i32 @LD_DWORD(i32* %317)
  store i32 %318, i32* %14, align 4
  br label %319

319:                                              ; preds = %311, %301
  %320 = load %struct.TYPE_9__*, %struct.TYPE_9__** %20, align 8
  %321 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %320, i32 0, i32 1
  %322 = load i32*, i32** %321, align 8
  %323 = load i32, i32* @BPB_RsvdSecCnt, align 4
  %324 = sext i32 %323 to i64
  %325 = getelementptr inbounds i32, i32* %322, i64 %324
  %326 = call i32 @LD_WORD(i32* %325)
  store i32 %326, i32* %19, align 4
  %327 = load i32, i32* %19, align 4
  %328 = icmp ne i32 %327, 0
  br i1 %328, label %331, label %329

329:                                              ; preds = %319
  %330 = load i64, i64* @FR_NO_FILESYSTEM, align 8
  store i64 %330, i64* %4, align 8
  br label %551

331:                                              ; preds = %319
  %332 = load i32, i32* %19, align 4
  %333 = load i32, i32* %13, align 4
  %334 = add nsw i32 %332, %333
  %335 = load %struct.TYPE_9__*, %struct.TYPE_9__** %20, align 8
  %336 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %335, i32 0, i32 5
  %337 = load i32, i32* %336, align 4
  %338 = load %struct.TYPE_9__*, %struct.TYPE_9__** %20, align 8
  %339 = call i32 @SS(%struct.TYPE_9__* %338)
  %340 = load i32, i32* @SZ_DIRE, align 4
  %341 = sdiv i32 %339, %340
  %342 = sdiv i32 %337, %341
  %343 = add nsw i32 %334, %342
  store i32 %343, i32* %15, align 4
  %344 = load i32, i32* %14, align 4
  %345 = load i32, i32* %15, align 4
  %346 = icmp slt i32 %344, %345
  br i1 %346, label %347, label %349

347:                                              ; preds = %331
  %348 = load i64, i64* @FR_NO_FILESYSTEM, align 8
  store i64 %348, i64* %4, align 8
  br label %551

349:                                              ; preds = %331
  %350 = load i32, i32* %14, align 4
  %351 = load i32, i32* %15, align 4
  %352 = sub nsw i32 %350, %351
  %353 = load %struct.TYPE_9__*, %struct.TYPE_9__** %20, align 8
  %354 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %353, i32 0, i32 4
  %355 = load i32, i32* %354, align 8
  %356 = sdiv i32 %352, %355
  store i32 %356, i32* %16, align 4
  %357 = load i32, i32* %16, align 4
  %358 = icmp ne i32 %357, 0
  br i1 %358, label %361, label %359

359:                                              ; preds = %349
  %360 = load i64, i64* @FR_NO_FILESYSTEM, align 8
  store i64 %360, i64* %4, align 8
  br label %551

361:                                              ; preds = %349
  %362 = load i32, i32* @FS_FAT12, align 4
  store i32 %362, i32* %8, align 4
  %363 = load i32, i32* %16, align 4
  %364 = load i32, i32* @MIN_FAT16, align 4
  %365 = icmp sge i32 %363, %364
  br i1 %365, label %366, label %368

366:                                              ; preds = %361
  %367 = load i32, i32* @FS_FAT16, align 4
  store i32 %367, i32* %8, align 4
  br label %368

368:                                              ; preds = %366, %361
  %369 = load i32, i32* %16, align 4
  %370 = load i32, i32* @MIN_FAT32, align 4
  %371 = icmp sge i32 %369, %370
  br i1 %371, label %372, label %374

372:                                              ; preds = %368
  %373 = load i32, i32* @FS_FAT32, align 4
  store i32 %373, i32* %8, align 4
  br label %374

374:                                              ; preds = %372, %368
  %375 = load i32, i32* %16, align 4
  %376 = add nsw i32 %375, 2
  %377 = load %struct.TYPE_9__*, %struct.TYPE_9__** %20, align 8
  %378 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %377, i32 0, i32 6
  store i32 %376, i32* %378, align 8
  %379 = load i32, i32* %12, align 4
  %380 = load %struct.TYPE_9__*, %struct.TYPE_9__** %20, align 8
  %381 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %380, i32 0, i32 7
  store i32 %379, i32* %381, align 4
  %382 = load i32, i32* %12, align 4
  %383 = load i32, i32* %19, align 4
  %384 = add nsw i32 %382, %383
  %385 = load %struct.TYPE_9__*, %struct.TYPE_9__** %20, align 8
  %386 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %385, i32 0, i32 8
  store i32 %384, i32* %386, align 8
  %387 = load i32, i32* %12, align 4
  %388 = load i32, i32* %15, align 4
  %389 = add nsw i32 %387, %388
  %390 = load %struct.TYPE_9__*, %struct.TYPE_9__** %20, align 8
  %391 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %390, i32 0, i32 9
  store i32 %389, i32* %391, align 4
  %392 = load i32, i32* %8, align 4
  %393 = load i32, i32* @FS_FAT32, align 4
  %394 = icmp eq i32 %392, %393
  br i1 %394, label %395, label %416

395:                                              ; preds = %374
  %396 = load %struct.TYPE_9__*, %struct.TYPE_9__** %20, align 8
  %397 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %396, i32 0, i32 5
  %398 = load i32, i32* %397, align 4
  %399 = icmp ne i32 %398, 0
  br i1 %399, label %400, label %402

400:                                              ; preds = %395
  %401 = load i64, i64* @FR_NO_FILESYSTEM, align 8
  store i64 %401, i64* %4, align 8
  br label %551

402:                                              ; preds = %395
  %403 = load %struct.TYPE_9__*, %struct.TYPE_9__** %20, align 8
  %404 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %403, i32 0, i32 1
  %405 = load i32*, i32** %404, align 8
  %406 = load i32, i32* @BPB_RootClus, align 4
  %407 = sext i32 %406 to i64
  %408 = getelementptr inbounds i32, i32* %405, i64 %407
  %409 = call i32 @LD_DWORD(i32* %408)
  %410 = load %struct.TYPE_9__*, %struct.TYPE_9__** %20, align 8
  %411 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %410, i32 0, i32 10
  store i32 %409, i32* %411, align 8
  %412 = load %struct.TYPE_9__*, %struct.TYPE_9__** %20, align 8
  %413 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %412, i32 0, i32 6
  %414 = load i32, i32* %413, align 8
  %415 = mul nsw i32 %414, 4
  store i32 %415, i32* %17, align 4
  br label %452

416:                                              ; preds = %374
  %417 = load %struct.TYPE_9__*, %struct.TYPE_9__** %20, align 8
  %418 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %417, i32 0, i32 5
  %419 = load i32, i32* %418, align 4
  %420 = icmp ne i32 %419, 0
  br i1 %420, label %423, label %421

421:                                              ; preds = %416
  %422 = load i64, i64* @FR_NO_FILESYSTEM, align 8
  store i64 %422, i64* %4, align 8
  br label %551

423:                                              ; preds = %416
  %424 = load %struct.TYPE_9__*, %struct.TYPE_9__** %20, align 8
  %425 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %424, i32 0, i32 8
  %426 = load i32, i32* %425, align 8
  %427 = load i32, i32* %13, align 4
  %428 = add nsw i32 %426, %427
  %429 = load %struct.TYPE_9__*, %struct.TYPE_9__** %20, align 8
  %430 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %429, i32 0, i32 10
  store i32 %428, i32* %430, align 8
  %431 = load i32, i32* %8, align 4
  %432 = load i32, i32* @FS_FAT16, align 4
  %433 = icmp eq i32 %431, %432
  br i1 %433, label %434, label %439

434:                                              ; preds = %423
  %435 = load %struct.TYPE_9__*, %struct.TYPE_9__** %20, align 8
  %436 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %435, i32 0, i32 6
  %437 = load i32, i32* %436, align 8
  %438 = mul nsw i32 %437, 2
  br label %450

439:                                              ; preds = %423
  %440 = load %struct.TYPE_9__*, %struct.TYPE_9__** %20, align 8
  %441 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %440, i32 0, i32 6
  %442 = load i32, i32* %441, align 8
  %443 = mul nsw i32 %442, 3
  %444 = sdiv i32 %443, 2
  %445 = load %struct.TYPE_9__*, %struct.TYPE_9__** %20, align 8
  %446 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %445, i32 0, i32 6
  %447 = load i32, i32* %446, align 8
  %448 = and i32 %447, 1
  %449 = add nsw i32 %444, %448
  br label %450

450:                                              ; preds = %439, %434
  %451 = phi i32 [ %438, %434 ], [ %449, %439 ]
  store i32 %451, i32* %17, align 4
  br label %452

452:                                              ; preds = %450, %402
  %453 = load %struct.TYPE_9__*, %struct.TYPE_9__** %20, align 8
  %454 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %453, i32 0, i32 2
  %455 = load i32, i32* %454, align 8
  %456 = load i32, i32* %17, align 4
  %457 = load %struct.TYPE_9__*, %struct.TYPE_9__** %20, align 8
  %458 = call i32 @SS(%struct.TYPE_9__* %457)
  %459 = sub nsw i32 %458, 1
  %460 = add nsw i32 %456, %459
  %461 = load %struct.TYPE_9__*, %struct.TYPE_9__** %20, align 8
  %462 = call i32 @SS(%struct.TYPE_9__* %461)
  %463 = sdiv i32 %460, %462
  %464 = icmp slt i32 %455, %463
  br i1 %464, label %465, label %467

465:                                              ; preds = %452
  %466 = load i64, i64* @FR_NO_FILESYSTEM, align 8
  store i64 %466, i64* %4, align 8
  br label %551

467:                                              ; preds = %452
  %468 = load %struct.TYPE_9__*, %struct.TYPE_9__** %20, align 8
  %469 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %468, i32 0, i32 12
  store i32 -1, i32* %469, align 8
  %470 = load %struct.TYPE_9__*, %struct.TYPE_9__** %20, align 8
  %471 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %470, i32 0, i32 11
  store i32 -1, i32* %471, align 4
  %472 = load %struct.TYPE_9__*, %struct.TYPE_9__** %20, align 8
  %473 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %472, i32 0, i32 13
  store i32 128, i32* %473, align 4
  %474 = load i32, i32* %8, align 4
  %475 = load i32, i32* @FS_FAT32, align 4
  %476 = icmp eq i32 %474, %475
  br i1 %476, label %477, label %542

477:                                              ; preds = %467
  %478 = load %struct.TYPE_9__*, %struct.TYPE_9__** %20, align 8
  %479 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %478, i32 0, i32 1
  %480 = load i32*, i32** %479, align 8
  %481 = load i32, i32* @BPB_FSInfo, align 4
  %482 = sext i32 %481 to i64
  %483 = getelementptr inbounds i32, i32* %480, i64 %482
  %484 = call i32 @LD_WORD(i32* %483)
  %485 = icmp eq i32 %484, 1
  br i1 %485, label %486, label %542

486:                                              ; preds = %477
  %487 = load %struct.TYPE_9__*, %struct.TYPE_9__** %20, align 8
  %488 = load i32, i32* %12, align 4
  %489 = add nsw i32 %488, 1
  %490 = call i64 @move_window(%struct.TYPE_9__* %487, i32 %489)
  %491 = load i64, i64* @FR_OK, align 8
  %492 = icmp eq i64 %490, %491
  br i1 %492, label %493, label %542

493:                                              ; preds = %486
  %494 = load %struct.TYPE_9__*, %struct.TYPE_9__** %20, align 8
  %495 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %494, i32 0, i32 13
  store i32 0, i32* %495, align 4
  %496 = load %struct.TYPE_9__*, %struct.TYPE_9__** %20, align 8
  %497 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %496, i32 0, i32 1
  %498 = load i32*, i32** %497, align 8
  %499 = load i32, i32* @BS_55AA, align 4
  %500 = sext i32 %499 to i64
  %501 = getelementptr inbounds i32, i32* %498, i64 %500
  %502 = call i32 @LD_WORD(i32* %501)
  %503 = icmp eq i32 %502, 43605
  br i1 %503, label %504, label %541

504:                                              ; preds = %493
  %505 = load %struct.TYPE_9__*, %struct.TYPE_9__** %20, align 8
  %506 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %505, i32 0, i32 1
  %507 = load i32*, i32** %506, align 8
  %508 = load i32, i32* @FSI_LeadSig, align 4
  %509 = sext i32 %508 to i64
  %510 = getelementptr inbounds i32, i32* %507, i64 %509
  %511 = call i32 @LD_DWORD(i32* %510)
  %512 = icmp eq i32 %511, 1096897106
  br i1 %512, label %513, label %541

513:                                              ; preds = %504
  %514 = load %struct.TYPE_9__*, %struct.TYPE_9__** %20, align 8
  %515 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %514, i32 0, i32 1
  %516 = load i32*, i32** %515, align 8
  %517 = load i32, i32* @FSI_StrucSig, align 4
  %518 = sext i32 %517 to i64
  %519 = getelementptr inbounds i32, i32* %516, i64 %518
  %520 = call i32 @LD_DWORD(i32* %519)
  %521 = icmp eq i32 %520, 1631679090
  br i1 %521, label %522, label %541

522:                                              ; preds = %513
  %523 = load %struct.TYPE_9__*, %struct.TYPE_9__** %20, align 8
  %524 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %523, i32 0, i32 1
  %525 = load i32*, i32** %524, align 8
  %526 = load i32, i32* @FSI_Free_Count, align 4
  %527 = sext i32 %526 to i64
  %528 = getelementptr inbounds i32, i32* %525, i64 %527
  %529 = call i32 @LD_DWORD(i32* %528)
  %530 = load %struct.TYPE_9__*, %struct.TYPE_9__** %20, align 8
  %531 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %530, i32 0, i32 12
  store i32 %529, i32* %531, align 8
  %532 = load %struct.TYPE_9__*, %struct.TYPE_9__** %20, align 8
  %533 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %532, i32 0, i32 1
  %534 = load i32*, i32** %533, align 8
  %535 = load i32, i32* @FSI_Nxt_Free, align 4
  %536 = sext i32 %535 to i64
  %537 = getelementptr inbounds i32, i32* %534, i64 %536
  %538 = call i32 @LD_DWORD(i32* %537)
  %539 = load %struct.TYPE_9__*, %struct.TYPE_9__** %20, align 8
  %540 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %539, i32 0, i32 11
  store i32 %538, i32* %540, align 4
  br label %541

541:                                              ; preds = %522, %513, %504, %493
  br label %542

542:                                              ; preds = %541, %486, %477, %467
  %543 = load i32, i32* %8, align 4
  %544 = load %struct.TYPE_9__*, %struct.TYPE_9__** %20, align 8
  %545 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %544, i32 0, i32 0
  store i32 %543, i32* %545, align 8
  %546 = load i64, i64* @Fsid, align 8
  %547 = add nsw i64 %546, 1
  store i64 %547, i64* @Fsid, align 8
  %548 = load %struct.TYPE_9__*, %struct.TYPE_9__** %20, align 8
  %549 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %548, i32 0, i32 15
  store i64 %547, i64* %549, align 8
  %550 = load i64, i64* @FR_OK, align 8
  store i64 %550, i64* %4, align 8
  br label %551

551:                                              ; preds = %542, %465, %421, %400, %359, %347, %329, %299, %278, %248, %207, %194, %189, %101, %88, %70, %68, %37, %27
  %552 = load i64, i64* %4, align 8
  ret i64 %552
}

declare dso_local i32 @get_ldnumber(i32**) #1

declare dso_local i32 @ENTER_FF(%struct.TYPE_9__*) #1

declare dso_local i32 @disk_status(i32) #1

declare dso_local i32 @LD2PD(i32) #1

declare dso_local i32 @disk_initialize(i32) #1

declare dso_local i32 @check_fs(%struct.TYPE_9__*, i32) #1

declare dso_local i32 @LD2PT(i32) #1

declare dso_local i32 @LD_DWORD(i32*) #1

declare dso_local i32 @LD_WORD(i32*) #1

declare dso_local i32 @SS(%struct.TYPE_9__*) #1

declare dso_local i64 @move_window(%struct.TYPE_9__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
