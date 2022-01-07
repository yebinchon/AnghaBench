; ModuleID = '/home/carl/AnghaBench/reactos/drivers/filesystems/btrfs/zstd/extr_zstd_compress.c_ZSTD_CCtxParam_setParameter.c'
source_filename = "/home/carl/AnghaBench/reactos/drivers/filesystems/btrfs/zstd/extr_zstd_compress.c_ZSTD_CCtxParam_setParameter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32, i32, i64, %struct.TYPE_10__, %struct.TYPE_9__, %struct.TYPE_8__, i32 }
%struct.TYPE_10__ = type { i32, i32, i32, i32, i32 }
%struct.TYPE_9__ = type { i32, i32, i32 }
%struct.TYPE_8__ = type { i32, i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [37 x i8] c"ZSTD_CCtxParam_setParameter (%u, %u)\00", align 1
@ZSTD_f_zstd1_magicless = common dso_local global i32 0, align 4
@parameter_unsupported = common dso_local global i32 0, align 4
@ZSTD_WINDOWLOG_MIN = common dso_local global i32 0, align 4
@ZSTD_WINDOWLOG_MAX = common dso_local global i32 0, align 4
@ZSTD_HASHLOG_MIN = common dso_local global i32 0, align 4
@ZSTD_HASHLOG_MAX = common dso_local global i32 0, align 4
@ZSTD_CHAINLOG_MIN = common dso_local global i32 0, align 4
@ZSTD_CHAINLOG_MAX = common dso_local global i32 0, align 4
@ZSTD_SEARCHLOG_MIN = common dso_local global i32 0, align 4
@ZSTD_SEARCHLOG_MAX = common dso_local global i32 0, align 4
@ZSTD_SEARCHLENGTH_MIN = common dso_local global i32 0, align 4
@ZSTD_SEARCHLENGTH_MAX = common dso_local global i32 0, align 4
@ZSTD_fast = common dso_local global i32 0, align 4
@ZSTD_btultra = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"set content size flag = %u\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"set dictIDFlag = %u\00", align 1
@ZSTD_dictForceAttach = common dso_local global i64 0, align 8
@ZSTD_dictForceCopy = common dso_local global i64 0, align 8
@ZSTD_dictDefaultAttach = common dso_local global i64 0, align 8
@ZSTD_LDM_MINMATCH_MIN = common dso_local global i32 0, align 4
@ZSTD_LDM_MINMATCH_MAX = common dso_local global i32 0, align 4
@ZSTD_LDM_BUCKETSIZELOG_MAX = common dso_local global i32 0, align 4
@parameter_outOfBound = common dso_local global i32 0, align 4
@ZSTDMT_p_jobSize = common dso_local global i32 0, align 4
@ZSTDMT_p_overlapSectionLog = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @ZSTD_CCtxParam_setParameter(%struct.TYPE_11__* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.TYPE_11__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %9 = load i32, i32* %6, align 4
  %10 = load i32, i32* %7, align 4
  %11 = call i32 (i32, i8*, i32, ...) @DEBUGLOG(i32 4, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %9, i32 %10)
  %12 = load i32, i32* %6, align 4
  switch i32 %12, label %344 [
    i32 140, label %13
    i32 147, label %28
    i32 128, label %53
    i32 139, label %71
    i32 149, label %89
    i32 130, label %107
    i32 133, label %122
    i32 129, label %140
    i32 146, label %150
    i32 145, label %168
    i32 148, label %184
    i32 144, label %196
    i32 141, label %216
    i32 142, label %226
    i32 132, label %247
    i32 138, label %254
    i32 131, label %257
    i32 143, label %260
    i32 135, label %272
    i32 134, label %290
    i32 137, label %308
    i32 136, label %325
  ]

13:                                               ; preds = %3
  %14 = load i32, i32* %7, align 4
  %15 = load i32, i32* @ZSTD_f_zstd1_magicless, align 4
  %16 = icmp ugt i32 %14, %15
  br i1 %16, label %17, label %20

17:                                               ; preds = %13
  %18 = load i32, i32* @parameter_unsupported, align 4
  %19 = call i64 @ERROR(i32 %18)
  store i64 %19, i64* %4, align 8
  br label %347

20:                                               ; preds = %13
  %21 = load i32, i32* %7, align 4
  %22 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %23 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %22, i32 0, i32 6
  store i32 %21, i32* %23, align 4
  %24 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %25 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %24, i32 0, i32 6
  %26 = load i32, i32* %25, align 4
  %27 = sext i32 %26 to i64
  store i64 %27, i64* %4, align 8
  br label %347

28:                                               ; preds = %3
  %29 = load i32, i32* %7, align 4
  store i32 %29, i32* %8, align 4
  %30 = load i32, i32* %8, align 4
  %31 = call i32 (...) @ZSTD_maxCLevel()
  %32 = icmp sgt i32 %30, %31
  br i1 %32, label %33, label %35

33:                                               ; preds = %28
  %34 = call i32 (...) @ZSTD_maxCLevel()
  store i32 %34, i32* %8, align 4
  br label %35

35:                                               ; preds = %33, %28
  %36 = load i32, i32* %8, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %42

38:                                               ; preds = %35
  %39 = load i32, i32* %8, align 4
  %40 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %41 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %40, i32 0, i32 0
  store i32 %39, i32* %41, align 8
  br label %42

42:                                               ; preds = %38, %35
  %43 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %44 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = icmp sge i32 %45, 0
  br i1 %46, label %47, label %52

47:                                               ; preds = %42
  %48 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %49 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = sext i32 %50 to i64
  store i64 %51, i64* %4, align 8
  br label %347

52:                                               ; preds = %42
  store i64 0, i64* %4, align 8
  br label %347

53:                                               ; preds = %3
  %54 = load i32, i32* %7, align 4
  %55 = icmp ugt i32 %54, 0
  br i1 %55, label %56, label %61

56:                                               ; preds = %53
  %57 = load i32, i32* %7, align 4
  %58 = load i32, i32* @ZSTD_WINDOWLOG_MIN, align 4
  %59 = load i32, i32* @ZSTD_WINDOWLOG_MAX, align 4
  %60 = call i32 @CLAMPCHECK(i32 %57, i32 %58, i32 %59)
  br label %61

61:                                               ; preds = %56, %53
  %62 = load i32, i32* %7, align 4
  %63 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %64 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %63, i32 0, i32 5
  %65 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %64, i32 0, i32 0
  store i32 %62, i32* %65, align 8
  %66 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %67 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %66, i32 0, i32 5
  %68 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = zext i32 %69 to i64
  store i64 %70, i64* %4, align 8
  br label %347

71:                                               ; preds = %3
  %72 = load i32, i32* %7, align 4
  %73 = icmp ugt i32 %72, 0
  br i1 %73, label %74, label %79

74:                                               ; preds = %71
  %75 = load i32, i32* %7, align 4
  %76 = load i32, i32* @ZSTD_HASHLOG_MIN, align 4
  %77 = load i32, i32* @ZSTD_HASHLOG_MAX, align 4
  %78 = call i32 @CLAMPCHECK(i32 %75, i32 %76, i32 %77)
  br label %79

79:                                               ; preds = %74, %71
  %80 = load i32, i32* %7, align 4
  %81 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %82 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %81, i32 0, i32 5
  %83 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %82, i32 0, i32 1
  store i32 %80, i32* %83, align 4
  %84 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %85 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %84, i32 0, i32 5
  %86 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 4
  %88 = zext i32 %87 to i64
  store i64 %88, i64* %4, align 8
  br label %347

89:                                               ; preds = %3
  %90 = load i32, i32* %7, align 4
  %91 = icmp ugt i32 %90, 0
  br i1 %91, label %92, label %97

92:                                               ; preds = %89
  %93 = load i32, i32* %7, align 4
  %94 = load i32, i32* @ZSTD_CHAINLOG_MIN, align 4
  %95 = load i32, i32* @ZSTD_CHAINLOG_MAX, align 4
  %96 = call i32 @CLAMPCHECK(i32 %93, i32 %94, i32 %95)
  br label %97

97:                                               ; preds = %92, %89
  %98 = load i32, i32* %7, align 4
  %99 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %100 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %99, i32 0, i32 5
  %101 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %100, i32 0, i32 2
  store i32 %98, i32* %101, align 8
  %102 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %103 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %102, i32 0, i32 5
  %104 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %103, i32 0, i32 2
  %105 = load i32, i32* %104, align 8
  %106 = zext i32 %105 to i64
  store i64 %106, i64* %4, align 8
  br label %347

107:                                              ; preds = %3
  %108 = load i32, i32* %7, align 4
  %109 = icmp ugt i32 %108, 0
  br i1 %109, label %110, label %115

110:                                              ; preds = %107
  %111 = load i32, i32* %7, align 4
  %112 = load i32, i32* @ZSTD_SEARCHLOG_MIN, align 4
  %113 = load i32, i32* @ZSTD_SEARCHLOG_MAX, align 4
  %114 = call i32 @CLAMPCHECK(i32 %111, i32 %112, i32 %113)
  br label %115

115:                                              ; preds = %110, %107
  %116 = load i32, i32* %7, align 4
  %117 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %118 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %117, i32 0, i32 5
  %119 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %118, i32 0, i32 3
  store i32 %116, i32* %119, align 4
  %120 = load i32, i32* %7, align 4
  %121 = zext i32 %120 to i64
  store i64 %121, i64* %4, align 8
  br label %347

122:                                              ; preds = %3
  %123 = load i32, i32* %7, align 4
  %124 = icmp ugt i32 %123, 0
  br i1 %124, label %125, label %130

125:                                              ; preds = %122
  %126 = load i32, i32* %7, align 4
  %127 = load i32, i32* @ZSTD_SEARCHLENGTH_MIN, align 4
  %128 = load i32, i32* @ZSTD_SEARCHLENGTH_MAX, align 4
  %129 = call i32 @CLAMPCHECK(i32 %126, i32 %127, i32 %128)
  br label %130

130:                                              ; preds = %125, %122
  %131 = load i32, i32* %7, align 4
  %132 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %133 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %132, i32 0, i32 5
  %134 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %133, i32 0, i32 4
  store i32 %131, i32* %134, align 8
  %135 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %136 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %135, i32 0, i32 5
  %137 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %136, i32 0, i32 4
  %138 = load i32, i32* %137, align 8
  %139 = zext i32 %138 to i64
  store i64 %139, i64* %4, align 8
  br label %347

140:                                              ; preds = %3
  %141 = load i32, i32* %7, align 4
  %142 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %143 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %142, i32 0, i32 5
  %144 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %143, i32 0, i32 5
  store i32 %141, i32* %144, align 4
  %145 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %146 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %145, i32 0, i32 5
  %147 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %146, i32 0, i32 5
  %148 = load i32, i32* %147, align 4
  %149 = zext i32 %148 to i64
  store i64 %149, i64* %4, align 8
  br label %347

150:                                              ; preds = %3
  %151 = load i32, i32* %7, align 4
  %152 = icmp ugt i32 %151, 0
  br i1 %152, label %153, label %158

153:                                              ; preds = %150
  %154 = load i32, i32* %7, align 4
  %155 = load i32, i32* @ZSTD_fast, align 4
  %156 = load i32, i32* @ZSTD_btultra, align 4
  %157 = call i32 @CLAMPCHECK(i32 %154, i32 %155, i32 %156)
  br label %158

158:                                              ; preds = %153, %150
  %159 = load i32, i32* %7, align 4
  %160 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %161 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %160, i32 0, i32 5
  %162 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %161, i32 0, i32 6
  store i32 %159, i32* %162, align 8
  %163 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %164 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %163, i32 0, i32 5
  %165 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %164, i32 0, i32 6
  %166 = load i32, i32* %165, align 8
  %167 = sext i32 %166 to i64
  store i64 %167, i64* %4, align 8
  br label %347

168:                                              ; preds = %3
  %169 = load i32, i32* %7, align 4
  %170 = icmp ugt i32 %169, 0
  %171 = zext i1 %170 to i32
  %172 = call i32 (i32, i8*, i32, ...) @DEBUGLOG(i32 4, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i32 %171)
  %173 = load i32, i32* %7, align 4
  %174 = icmp ugt i32 %173, 0
  %175 = zext i1 %174 to i32
  %176 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %177 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %176, i32 0, i32 4
  %178 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %177, i32 0, i32 0
  store i32 %175, i32* %178, align 4
  %179 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %180 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %179, i32 0, i32 4
  %181 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %180, i32 0, i32 0
  %182 = load i32, i32* %181, align 4
  %183 = sext i32 %182 to i64
  store i64 %183, i64* %4, align 8
  br label %347

184:                                              ; preds = %3
  %185 = load i32, i32* %7, align 4
  %186 = icmp ugt i32 %185, 0
  %187 = zext i1 %186 to i32
  %188 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %189 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %188, i32 0, i32 4
  %190 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %189, i32 0, i32 1
  store i32 %187, i32* %190, align 4
  %191 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %192 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %191, i32 0, i32 4
  %193 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %192, i32 0, i32 1
  %194 = load i32, i32* %193, align 4
  %195 = sext i32 %194 to i64
  store i64 %195, i64* %4, align 8
  br label %347

196:                                              ; preds = %3
  %197 = load i32, i32* %7, align 4
  %198 = icmp ugt i32 %197, 0
  %199 = zext i1 %198 to i32
  %200 = call i32 (i32, i8*, i32, ...) @DEBUGLOG(i32 4, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0), i32 %199)
  %201 = load i32, i32* %7, align 4
  %202 = icmp ne i32 %201, 0
  %203 = xor i1 %202, true
  %204 = zext i1 %203 to i32
  %205 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %206 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %205, i32 0, i32 4
  %207 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %206, i32 0, i32 2
  store i32 %204, i32* %207, align 4
  %208 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %209 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %208, i32 0, i32 4
  %210 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %209, i32 0, i32 2
  %211 = load i32, i32* %210, align 4
  %212 = icmp ne i32 %211, 0
  %213 = xor i1 %212, true
  %214 = zext i1 %213 to i32
  %215 = sext i32 %214 to i64
  store i64 %215, i64* %4, align 8
  br label %347

216:                                              ; preds = %3
  %217 = load i32, i32* %7, align 4
  %218 = icmp ugt i32 %217, 0
  %219 = zext i1 %218 to i32
  %220 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %221 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %220, i32 0, i32 1
  store i32 %219, i32* %221, align 4
  %222 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %223 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %222, i32 0, i32 1
  %224 = load i32, i32* %223, align 4
  %225 = sext i32 %224 to i64
  store i64 %225, i64* %4, align 8
  br label %347

226:                                              ; preds = %3
  %227 = load i32, i32* %7, align 4
  %228 = icmp ne i32 %227, 0
  br i1 %228, label %229, label %238

229:                                              ; preds = %226
  %230 = load i32, i32* %7, align 4
  %231 = icmp ugt i32 %230, 0
  br i1 %231, label %232, label %234

232:                                              ; preds = %229
  %233 = load i64, i64* @ZSTD_dictForceAttach, align 8
  br label %236

234:                                              ; preds = %229
  %235 = load i64, i64* @ZSTD_dictForceCopy, align 8
  br label %236

236:                                              ; preds = %234, %232
  %237 = phi i64 [ %233, %232 ], [ %235, %234 ]
  br label %240

238:                                              ; preds = %226
  %239 = load i64, i64* @ZSTD_dictDefaultAttach, align 8
  br label %240

240:                                              ; preds = %238, %236
  %241 = phi i64 [ %237, %236 ], [ %239, %238 ]
  %242 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %243 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %242, i32 0, i32 2
  store i64 %241, i64* %243, align 8
  %244 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %245 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %244, i32 0, i32 2
  %246 = load i64, i64* %245, align 8
  store i64 %246, i64* %4, align 8
  br label %347

247:                                              ; preds = %3
  %248 = load i32, i32* %7, align 4
  %249 = icmp ugt i32 %248, 0
  br i1 %249, label %250, label %253

250:                                              ; preds = %247
  %251 = load i32, i32* @parameter_unsupported, align 4
  %252 = call i64 @ERROR(i32 %251)
  store i64 %252, i64* %4, align 8
  br label %347

253:                                              ; preds = %247
  store i64 0, i64* %4, align 8
  br label %347

254:                                              ; preds = %3
  %255 = load i32, i32* @parameter_unsupported, align 4
  %256 = call i64 @ERROR(i32 %255)
  store i64 %256, i64* %4, align 8
  br label %347

257:                                              ; preds = %3
  %258 = load i32, i32* @parameter_unsupported, align 4
  %259 = call i64 @ERROR(i32 %258)
  store i64 %259, i64* %4, align 8
  br label %347

260:                                              ; preds = %3
  %261 = load i32, i32* %7, align 4
  %262 = icmp ugt i32 %261, 0
  %263 = zext i1 %262 to i32
  %264 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %265 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %264, i32 0, i32 3
  %266 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %265, i32 0, i32 0
  store i32 %263, i32* %266, align 8
  %267 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %268 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %267, i32 0, i32 3
  %269 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %268, i32 0, i32 0
  %270 = load i32, i32* %269, align 8
  %271 = sext i32 %270 to i64
  store i64 %271, i64* %4, align 8
  br label %347

272:                                              ; preds = %3
  %273 = load i32, i32* %7, align 4
  %274 = icmp ugt i32 %273, 0
  br i1 %274, label %275, label %280

275:                                              ; preds = %272
  %276 = load i32, i32* %7, align 4
  %277 = load i32, i32* @ZSTD_HASHLOG_MIN, align 4
  %278 = load i32, i32* @ZSTD_HASHLOG_MAX, align 4
  %279 = call i32 @CLAMPCHECK(i32 %276, i32 %277, i32 %278)
  br label %280

280:                                              ; preds = %275, %272
  %281 = load i32, i32* %7, align 4
  %282 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %283 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %282, i32 0, i32 3
  %284 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %283, i32 0, i32 1
  store i32 %281, i32* %284, align 4
  %285 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %286 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %285, i32 0, i32 3
  %287 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %286, i32 0, i32 1
  %288 = load i32, i32* %287, align 4
  %289 = zext i32 %288 to i64
  store i64 %289, i64* %4, align 8
  br label %347

290:                                              ; preds = %3
  %291 = load i32, i32* %7, align 4
  %292 = icmp ugt i32 %291, 0
  br i1 %292, label %293, label %298

293:                                              ; preds = %290
  %294 = load i32, i32* %7, align 4
  %295 = load i32, i32* @ZSTD_LDM_MINMATCH_MIN, align 4
  %296 = load i32, i32* @ZSTD_LDM_MINMATCH_MAX, align 4
  %297 = call i32 @CLAMPCHECK(i32 %294, i32 %295, i32 %296)
  br label %298

298:                                              ; preds = %293, %290
  %299 = load i32, i32* %7, align 4
  %300 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %301 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %300, i32 0, i32 3
  %302 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %301, i32 0, i32 2
  store i32 %299, i32* %302, align 8
  %303 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %304 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %303, i32 0, i32 3
  %305 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %304, i32 0, i32 2
  %306 = load i32, i32* %305, align 8
  %307 = zext i32 %306 to i64
  store i64 %307, i64* %4, align 8
  br label %347

308:                                              ; preds = %3
  %309 = load i32, i32* %7, align 4
  %310 = load i32, i32* @ZSTD_LDM_BUCKETSIZELOG_MAX, align 4
  %311 = icmp ugt i32 %309, %310
  br i1 %311, label %312, label %315

312:                                              ; preds = %308
  %313 = load i32, i32* @parameter_outOfBound, align 4
  %314 = call i64 @ERROR(i32 %313)
  store i64 %314, i64* %4, align 8
  br label %347

315:                                              ; preds = %308
  %316 = load i32, i32* %7, align 4
  %317 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %318 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %317, i32 0, i32 3
  %319 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %318, i32 0, i32 3
  store i32 %316, i32* %319, align 4
  %320 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %321 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %320, i32 0, i32 3
  %322 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %321, i32 0, i32 3
  %323 = load i32, i32* %322, align 4
  %324 = zext i32 %323 to i64
  store i64 %324, i64* %4, align 8
  br label %347

325:                                              ; preds = %3
  %326 = load i32, i32* %7, align 4
  %327 = load i32, i32* @ZSTD_WINDOWLOG_MAX, align 4
  %328 = load i32, i32* @ZSTD_HASHLOG_MIN, align 4
  %329 = sub i32 %327, %328
  %330 = icmp ugt i32 %326, %329
  br i1 %330, label %331, label %334

331:                                              ; preds = %325
  %332 = load i32, i32* @parameter_outOfBound, align 4
  %333 = call i64 @ERROR(i32 %332)
  store i64 %333, i64* %4, align 8
  br label %347

334:                                              ; preds = %325
  %335 = load i32, i32* %7, align 4
  %336 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %337 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %336, i32 0, i32 3
  %338 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %337, i32 0, i32 4
  store i32 %335, i32* %338, align 8
  %339 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %340 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %339, i32 0, i32 3
  %341 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %340, i32 0, i32 4
  %342 = load i32, i32* %341, align 8
  %343 = zext i32 %342 to i64
  store i64 %343, i64* %4, align 8
  br label %347

344:                                              ; preds = %3
  %345 = load i32, i32* @parameter_unsupported, align 4
  %346 = call i64 @ERROR(i32 %345)
  store i64 %346, i64* %4, align 8
  br label %347

347:                                              ; preds = %344, %334, %331, %315, %312, %298, %280, %260, %257, %254, %253, %250, %240, %216, %196, %184, %168, %158, %140, %130, %115, %97, %79, %61, %52, %47, %20, %17
  %348 = load i64, i64* %4, align 8
  ret i64 %348
}

declare dso_local i32 @DEBUGLOG(i32, i8*, i32, ...) #1

declare dso_local i64 @ERROR(i32) #1

declare dso_local i32 @ZSTD_maxCLevel(...) #1

declare dso_local i32 @CLAMPCHECK(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
