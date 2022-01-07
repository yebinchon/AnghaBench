; ModuleID = '/home/carl/AnghaBench/zstd/lib/compress/extr_zstd_compress.c_ZSTD_CCtxParams_setParameter.c'
source_filename = "/home/carl/AnghaBench/zstd/lib/compress/extr_zstd_compress.c_ZSTD_CCtxParams_setParameter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_8__, %struct.TYPE_7__, %struct.TYPE_6__, i32 }
%struct.TYPE_8__ = type { i32, i32, i32, i32, i32 }
%struct.TYPE_7__ = type { i32, i32, i32 }
%struct.TYPE_6__ = type { i64, i64, i64, i32, i32, i32, i8* }

@.str = private unnamed_addr constant [38 x i8] c"ZSTD_CCtxParams_setParameter (%i, %i)\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"set content size flag = %u\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"set dictIDFlag = %u\00", align 1
@parameter_unsupported = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [33 x i8] c"not compiled with multithreading\00", align 1
@ZSTD_WINDOWLOG_MAX = common dso_local global i32 0, align 4
@ZSTD_HASHLOG_MIN = common dso_local global i32 0, align 4
@parameter_outOfBound = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [18 x i8] c"unknown parameter\00", align 1
@ZSTDMT_JOBSIZE_MIN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @ZSTD_CCtxParams_setParameter(%struct.TYPE_9__* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.TYPE_9__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %10 = load i32, i32* %6, align 4
  %11 = load i32, i32* %7, align 4
  %12 = call i32 (i32, i8*, i32, ...) @DEBUGLOG(i32 4, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %10, i32 %11)
  %13 = load i32, i32* %6, align 4
  switch i32 %13, label %368 [
    i32 145, label %14
    i32 151, label %24
    i32 128, label %45
    i32 144, label %63
    i32 153, label %81
    i32 133, label %99
    i32 137, label %114
    i32 129, label %130
    i32 131, label %142
    i32 150, label %158
    i32 152, label %174
    i32 149, label %186
    i32 146, label %206
    i32 147, label %216
    i32 138, label %227
    i32 136, label %238
    i32 143, label %244
    i32 135, label %250
    i32 134, label %256
    i32 148, label %262
    i32 141, label %274
    i32 139, label %290
    i32 142, label %306
    i32 140, label %322
    i32 130, label %340
    i32 132, label %354
  ]

14:                                               ; preds = %3
  %15 = load i32, i32* %7, align 4
  %16 = call i32 @BOUNDCHECK(i32 145, i32 %15)
  %17 = load i32, i32* %7, align 4
  %18 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %19 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %18, i32 0, i32 13
  store i32 %17, i32* %19, align 8
  %20 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %21 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %20, i32 0, i32 13
  %22 = load i32, i32* %21, align 8
  %23 = sext i32 %22 to i64
  store i64 %23, i64* %4, align 8
  br label %371

24:                                               ; preds = %3
  %25 = load i32, i32* %6, align 4
  %26 = call i32 @ZSTD_cParam_clampBounds(i32 %25, i32* %7)
  %27 = call i32 @FORWARD_IF_ERROR(i32 %26)
  %28 = load i32, i32* %7, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %34

30:                                               ; preds = %24
  %31 = load i32, i32* %7, align 4
  %32 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %33 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %32, i32 0, i32 0
  store i32 %31, i32* %33, align 8
  br label %34

34:                                               ; preds = %30, %24
  %35 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %36 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = icmp sge i32 %37, 0
  br i1 %38, label %39, label %44

39:                                               ; preds = %34
  %40 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %41 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = sext i32 %42 to i64
  store i64 %43, i64* %4, align 8
  br label %371

44:                                               ; preds = %34
  store i64 0, i64* %4, align 8
  br label %371

45:                                               ; preds = %3
  %46 = load i32, i32* %7, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %51

48:                                               ; preds = %45
  %49 = load i32, i32* %7, align 4
  %50 = call i32 @BOUNDCHECK(i32 128, i32 %49)
  br label %51

51:                                               ; preds = %48, %45
  %52 = load i32, i32* %7, align 4
  %53 = sext i32 %52 to i64
  %54 = inttoptr i64 %53 to i8*
  %55 = ptrtoint i8* %54 to i64
  %56 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %57 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %56, i32 0, i32 12
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i32 0, i32 0
  store i64 %55, i64* %58, align 8
  %59 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %60 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %59, i32 0, i32 12
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  store i64 %62, i64* %4, align 8
  br label %371

63:                                               ; preds = %3
  %64 = load i32, i32* %7, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %69

66:                                               ; preds = %63
  %67 = load i32, i32* %7, align 4
  %68 = call i32 @BOUNDCHECK(i32 144, i32 %67)
  br label %69

69:                                               ; preds = %66, %63
  %70 = load i32, i32* %7, align 4
  %71 = sext i32 %70 to i64
  %72 = inttoptr i64 %71 to i8*
  %73 = ptrtoint i8* %72 to i64
  %74 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %75 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %74, i32 0, i32 12
  %76 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %75, i32 0, i32 1
  store i64 %73, i64* %76, align 8
  %77 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %78 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %77, i32 0, i32 12
  %79 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %78, i32 0, i32 1
  %80 = load i64, i64* %79, align 8
  store i64 %80, i64* %4, align 8
  br label %371

81:                                               ; preds = %3
  %82 = load i32, i32* %7, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %87

84:                                               ; preds = %81
  %85 = load i32, i32* %7, align 4
  %86 = call i32 @BOUNDCHECK(i32 153, i32 %85)
  br label %87

87:                                               ; preds = %84, %81
  %88 = load i32, i32* %7, align 4
  %89 = sext i32 %88 to i64
  %90 = inttoptr i64 %89 to i8*
  %91 = ptrtoint i8* %90 to i64
  %92 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %93 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %92, i32 0, i32 12
  %94 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %93, i32 0, i32 2
  store i64 %91, i64* %94, align 8
  %95 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %96 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %95, i32 0, i32 12
  %97 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %96, i32 0, i32 2
  %98 = load i64, i64* %97, align 8
  store i64 %98, i64* %4, align 8
  br label %371

99:                                               ; preds = %3
  %100 = load i32, i32* %7, align 4
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %105

102:                                              ; preds = %99
  %103 = load i32, i32* %7, align 4
  %104 = call i32 @BOUNDCHECK(i32 133, i32 %103)
  br label %105

105:                                              ; preds = %102, %99
  %106 = load i32, i32* %7, align 4
  %107 = sext i32 %106 to i64
  %108 = inttoptr i64 %107 to i8*
  %109 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %110 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %109, i32 0, i32 12
  %111 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %110, i32 0, i32 6
  store i8* %108, i8** %111, align 8
  %112 = load i32, i32* %7, align 4
  %113 = sext i32 %112 to i64
  store i64 %113, i64* %4, align 8
  br label %371

114:                                              ; preds = %3
  %115 = load i32, i32* %7, align 4
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %120

117:                                              ; preds = %114
  %118 = load i32, i32* %7, align 4
  %119 = call i32 @BOUNDCHECK(i32 137, i32 %118)
  br label %120

120:                                              ; preds = %117, %114
  %121 = load i32, i32* %7, align 4
  %122 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %123 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %122, i32 0, i32 12
  %124 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %123, i32 0, i32 3
  store i32 %121, i32* %124, align 8
  %125 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %126 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %125, i32 0, i32 12
  %127 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %126, i32 0, i32 3
  %128 = load i32, i32* %127, align 8
  %129 = sext i32 %128 to i64
  store i64 %129, i64* %4, align 8
  br label %371

130:                                              ; preds = %3
  %131 = load i32, i32* %7, align 4
  %132 = call i32 @BOUNDCHECK(i32 129, i32 %131)
  %133 = load i32, i32* %7, align 4
  %134 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %135 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %134, i32 0, i32 12
  %136 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %135, i32 0, i32 4
  store i32 %133, i32* %136, align 4
  %137 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %138 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %137, i32 0, i32 12
  %139 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %138, i32 0, i32 4
  %140 = load i32, i32* %139, align 4
  %141 = sext i32 %140 to i64
  store i64 %141, i64* %4, align 8
  br label %371

142:                                              ; preds = %3
  %143 = load i32, i32* %7, align 4
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %145, label %148

145:                                              ; preds = %142
  %146 = load i32, i32* %7, align 4
  %147 = call i32 @BOUNDCHECK(i32 131, i32 %146)
  br label %148

148:                                              ; preds = %145, %142
  %149 = load i32, i32* %7, align 4
  %150 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %151 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %150, i32 0, i32 12
  %152 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %151, i32 0, i32 5
  store i32 %149, i32* %152, align 8
  %153 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %154 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %153, i32 0, i32 12
  %155 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %154, i32 0, i32 5
  %156 = load i32, i32* %155, align 8
  %157 = sext i32 %156 to i64
  store i64 %157, i64* %4, align 8
  br label %371

158:                                              ; preds = %3
  %159 = load i32, i32* %7, align 4
  %160 = icmp ne i32 %159, 0
  %161 = zext i1 %160 to i32
  %162 = call i32 (i32, i8*, i32, ...) @DEBUGLOG(i32 4, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i32 %161)
  %163 = load i32, i32* %7, align 4
  %164 = icmp ne i32 %163, 0
  %165 = zext i1 %164 to i32
  %166 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %167 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %166, i32 0, i32 11
  %168 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %167, i32 0, i32 0
  store i32 %165, i32* %168, align 4
  %169 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %170 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %169, i32 0, i32 11
  %171 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %170, i32 0, i32 0
  %172 = load i32, i32* %171, align 4
  %173 = sext i32 %172 to i64
  store i64 %173, i64* %4, align 8
  br label %371

174:                                              ; preds = %3
  %175 = load i32, i32* %7, align 4
  %176 = icmp ne i32 %175, 0
  %177 = zext i1 %176 to i32
  %178 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %179 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %178, i32 0, i32 11
  %180 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %179, i32 0, i32 1
  store i32 %177, i32* %180, align 4
  %181 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %182 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %181, i32 0, i32 11
  %183 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %182, i32 0, i32 1
  %184 = load i32, i32* %183, align 4
  %185 = sext i32 %184 to i64
  store i64 %185, i64* %4, align 8
  br label %371

186:                                              ; preds = %3
  %187 = load i32, i32* %7, align 4
  %188 = icmp ne i32 %187, 0
  %189 = zext i1 %188 to i32
  %190 = call i32 (i32, i8*, i32, ...) @DEBUGLOG(i32 4, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0), i32 %189)
  %191 = load i32, i32* %7, align 4
  %192 = icmp ne i32 %191, 0
  %193 = xor i1 %192, true
  %194 = zext i1 %193 to i32
  %195 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %196 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %195, i32 0, i32 11
  %197 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %196, i32 0, i32 2
  store i32 %194, i32* %197, align 4
  %198 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %199 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %198, i32 0, i32 11
  %200 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %199, i32 0, i32 2
  %201 = load i32, i32* %200, align 4
  %202 = icmp ne i32 %201, 0
  %203 = xor i1 %202, true
  %204 = zext i1 %203 to i32
  %205 = sext i32 %204 to i64
  store i64 %205, i64* %4, align 8
  br label %371

206:                                              ; preds = %3
  %207 = load i32, i32* %7, align 4
  %208 = icmp ne i32 %207, 0
  %209 = zext i1 %208 to i32
  %210 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %211 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %210, i32 0, i32 1
  store i32 %209, i32* %211, align 4
  %212 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %213 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %212, i32 0, i32 1
  %214 = load i32, i32* %213, align 4
  %215 = sext i32 %214 to i64
  store i64 %215, i64* %4, align 8
  br label %371

216:                                              ; preds = %3
  %217 = load i32, i32* %7, align 4
  store i32 %217, i32* %8, align 4
  %218 = load i32, i32* %8, align 4
  %219 = call i32 @BOUNDCHECK(i32 147, i32 %218)
  %220 = load i32, i32* %8, align 4
  %221 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %222 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %221, i32 0, i32 2
  store i32 %220, i32* %222, align 8
  %223 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %224 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %223, i32 0, i32 2
  %225 = load i32, i32* %224, align 8
  %226 = sext i32 %225 to i64
  store i64 %226, i64* %4, align 8
  br label %371

227:                                              ; preds = %3
  %228 = load i32, i32* %7, align 4
  store i32 %228, i32* %9, align 4
  %229 = load i32, i32* %9, align 4
  %230 = call i32 @BOUNDCHECK(i32 138, i32 %229)
  %231 = load i32, i32* %9, align 4
  %232 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %233 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %232, i32 0, i32 3
  store i32 %231, i32* %233, align 4
  %234 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %235 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %234, i32 0, i32 3
  %236 = load i32, i32* %235, align 4
  %237 = sext i32 %236 to i64
  store i64 %237, i64* %4, align 8
  br label %371

238:                                              ; preds = %3
  %239 = load i32, i32* %7, align 4
  %240 = icmp ne i32 %239, 0
  %241 = zext i1 %240 to i32
  %242 = load i32, i32* @parameter_unsupported, align 4
  %243 = call i32 (i32, i32, ...) @RETURN_ERROR_IF(i32 %241, i32 %242, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0))
  store i64 0, i64* %4, align 8
  br label %371

244:                                              ; preds = %3
  %245 = load i32, i32* %7, align 4
  %246 = icmp ne i32 %245, 0
  %247 = zext i1 %246 to i32
  %248 = load i32, i32* @parameter_unsupported, align 4
  %249 = call i32 (i32, i32, ...) @RETURN_ERROR_IF(i32 %247, i32 %248, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0))
  store i64 0, i64* %4, align 8
  br label %371

250:                                              ; preds = %3
  %251 = load i32, i32* %7, align 4
  %252 = icmp ne i32 %251, 0
  %253 = zext i1 %252 to i32
  %254 = load i32, i32* @parameter_unsupported, align 4
  %255 = call i32 (i32, i32, ...) @RETURN_ERROR_IF(i32 %253, i32 %254, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0))
  store i64 0, i64* %4, align 8
  br label %371

256:                                              ; preds = %3
  %257 = load i32, i32* %7, align 4
  %258 = icmp ne i32 %257, 0
  %259 = zext i1 %258 to i32
  %260 = load i32, i32* @parameter_unsupported, align 4
  %261 = call i32 (i32, i32, ...) @RETURN_ERROR_IF(i32 %259, i32 %260, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0))
  store i64 0, i64* %4, align 8
  br label %371

262:                                              ; preds = %3
  %263 = load i32, i32* %7, align 4
  %264 = icmp ne i32 %263, 0
  %265 = zext i1 %264 to i32
  %266 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %267 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %266, i32 0, i32 10
  %268 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %267, i32 0, i32 0
  store i32 %265, i32* %268, align 8
  %269 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %270 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %269, i32 0, i32 10
  %271 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %270, i32 0, i32 0
  %272 = load i32, i32* %271, align 8
  %273 = sext i32 %272 to i64
  store i64 %273, i64* %4, align 8
  br label %371

274:                                              ; preds = %3
  %275 = load i32, i32* %7, align 4
  %276 = icmp ne i32 %275, 0
  br i1 %276, label %277, label %280

277:                                              ; preds = %274
  %278 = load i32, i32* %7, align 4
  %279 = call i32 @BOUNDCHECK(i32 141, i32 %278)
  br label %280

280:                                              ; preds = %277, %274
  %281 = load i32, i32* %7, align 4
  %282 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %283 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %282, i32 0, i32 10
  %284 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %283, i32 0, i32 1
  store i32 %281, i32* %284, align 4
  %285 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %286 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %285, i32 0, i32 10
  %287 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %286, i32 0, i32 1
  %288 = load i32, i32* %287, align 4
  %289 = sext i32 %288 to i64
  store i64 %289, i64* %4, align 8
  br label %371

290:                                              ; preds = %3
  %291 = load i32, i32* %7, align 4
  %292 = icmp ne i32 %291, 0
  br i1 %292, label %293, label %296

293:                                              ; preds = %290
  %294 = load i32, i32* %7, align 4
  %295 = call i32 @BOUNDCHECK(i32 139, i32 %294)
  br label %296

296:                                              ; preds = %293, %290
  %297 = load i32, i32* %7, align 4
  %298 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %299 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %298, i32 0, i32 10
  %300 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %299, i32 0, i32 2
  store i32 %297, i32* %300, align 8
  %301 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %302 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %301, i32 0, i32 10
  %303 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %302, i32 0, i32 2
  %304 = load i32, i32* %303, align 8
  %305 = sext i32 %304 to i64
  store i64 %305, i64* %4, align 8
  br label %371

306:                                              ; preds = %3
  %307 = load i32, i32* %7, align 4
  %308 = icmp ne i32 %307, 0
  br i1 %308, label %309, label %312

309:                                              ; preds = %306
  %310 = load i32, i32* %7, align 4
  %311 = call i32 @BOUNDCHECK(i32 142, i32 %310)
  br label %312

312:                                              ; preds = %309, %306
  %313 = load i32, i32* %7, align 4
  %314 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %315 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %314, i32 0, i32 10
  %316 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %315, i32 0, i32 3
  store i32 %313, i32* %316, align 4
  %317 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %318 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %317, i32 0, i32 10
  %319 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %318, i32 0, i32 3
  %320 = load i32, i32* %319, align 4
  %321 = sext i32 %320 to i64
  store i64 %321, i64* %4, align 8
  br label %371

322:                                              ; preds = %3
  %323 = load i32, i32* %7, align 4
  %324 = load i32, i32* @ZSTD_WINDOWLOG_MAX, align 4
  %325 = load i32, i32* @ZSTD_HASHLOG_MIN, align 4
  %326 = sub nsw i32 %324, %325
  %327 = icmp sgt i32 %323, %326
  %328 = zext i1 %327 to i32
  %329 = load i32, i32* @parameter_outOfBound, align 4
  %330 = call i32 (i32, i32, ...) @RETURN_ERROR_IF(i32 %328, i32 %329)
  %331 = load i32, i32* %7, align 4
  %332 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %333 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %332, i32 0, i32 10
  %334 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %333, i32 0, i32 4
  store i32 %331, i32* %334, align 8
  %335 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %336 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %335, i32 0, i32 10
  %337 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %336, i32 0, i32 4
  %338 = load i32, i32* %337, align 8
  %339 = sext i32 %338 to i64
  store i64 %339, i64* %4, align 8
  br label %371

340:                                              ; preds = %3
  %341 = load i32, i32* %7, align 4
  %342 = icmp ne i32 %341, 0
  br i1 %342, label %343, label %346

343:                                              ; preds = %340
  %344 = load i32, i32* %7, align 4
  %345 = call i32 @BOUNDCHECK(i32 130, i32 %344)
  br label %346

346:                                              ; preds = %343, %340
  %347 = load i32, i32* %7, align 4
  %348 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %349 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %348, i32 0, i32 8
  store i32 %347, i32* %349, align 8
  %350 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %351 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %350, i32 0, i32 8
  %352 = load i32, i32* %351, align 8
  %353 = sext i32 %352 to i64
  store i64 %353, i64* %4, align 8
  br label %371

354:                                              ; preds = %3
  %355 = load i32, i32* %7, align 4
  %356 = icmp ne i32 %355, 0
  br i1 %356, label %357, label %360

357:                                              ; preds = %354
  %358 = load i32, i32* %7, align 4
  %359 = call i32 @BOUNDCHECK(i32 132, i32 %358)
  br label %360

360:                                              ; preds = %357, %354
  %361 = load i32, i32* %7, align 4
  %362 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %363 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %362, i32 0, i32 9
  store i32 %361, i32* %363, align 4
  %364 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %365 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %364, i32 0, i32 9
  %366 = load i32, i32* %365, align 4
  %367 = sext i32 %366 to i64
  store i64 %367, i64* %4, align 8
  br label %371

368:                                              ; preds = %3
  %369 = load i32, i32* @parameter_unsupported, align 4
  %370 = call i32 @RETURN_ERROR(i32 %369, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i64 0, i64 0))
  br label %371

371:                                              ; preds = %14, %39, %44, %51, %69, %87, %105, %120, %130, %148, %158, %174, %186, %206, %216, %227, %238, %244, %250, %256, %262, %280, %296, %312, %322, %346, %360, %368
  %372 = load i64, i64* %4, align 8
  ret i64 %372
}

declare dso_local i32 @DEBUGLOG(i32, i8*, i32, ...) #1

declare dso_local i32 @BOUNDCHECK(i32, i32) #1

declare dso_local i32 @FORWARD_IF_ERROR(i32) #1

declare dso_local i32 @ZSTD_cParam_clampBounds(i32, i32*) #1

declare dso_local i32 @RETURN_ERROR_IF(i32, i32, ...) #1

declare dso_local i32 @RETURN_ERROR(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
