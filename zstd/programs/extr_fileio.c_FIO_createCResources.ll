; ModuleID = '/home/carl/AnghaBench/zstd/programs/extr_fileio.c_FIO_createCResources.c'
source_filename = "/home/carl/AnghaBench/zstd/programs/extr_fileio.c_FIO_createCResources.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i8*, i32*, i8*, i8*, i32, i32 }
%struct.TYPE_10__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64 }
%struct.TYPE_9__ = type { i32, i64, i64, i64, i64, i64, i64 }

@.str = private unnamed_addr constant [23 x i8] c"FIO_createCResources \0A\00", align 1
@.str.1 = private unnamed_addr constant [46 x i8] c"allocation error (%s): can't create ZSTD_CCtx\00", align 1
@errno = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [37 x i8] c"allocation error : not enough memory\00", align 1
@.str.3 = private unnamed_addr constant [43 x i8] c"allocation error : can't create dictBuffer\00", align 1
@ADAPT_WINDOWLOG_DEFAULT = common dso_local global i64 0, align 8
@ZSTD_c_contentSizeFlag = common dso_local global i32 0, align 4
@ZSTD_c_dictIDFlag = common dso_local global i32 0, align 4
@ZSTD_c_checksumFlag = common dso_local global i32 0, align 4
@ZSTD_c_compressionLevel = common dso_local global i32 0, align 4
@ZSTD_c_targetCBlockSize = common dso_local global i32 0, align 4
@ZSTD_c_srcSizeHint = common dso_local global i32 0, align 4
@ZSTD_c_enableLongDistanceMatching = common dso_local global i32 0, align 4
@ZSTD_c_ldmHashLog = common dso_local global i32 0, align 4
@ZSTD_c_ldmMinMatch = common dso_local global i32 0, align 4
@FIO_LDM_PARAM_NOTSET = common dso_local global i32 0, align 4
@ZSTD_c_ldmBucketSizeLog = common dso_local global i32 0, align 4
@ZSTD_c_ldmHashRateLog = common dso_local global i32 0, align 4
@ZSTD_c_windowLog = common dso_local global i32 0, align 4
@ZSTD_c_chainLog = common dso_local global i32 0, align 4
@ZSTD_c_hashLog = common dso_local global i32 0, align 4
@ZSTD_c_searchLog = common dso_local global i32 0, align 4
@ZSTD_c_minMatch = common dso_local global i32 0, align 4
@ZSTD_c_targetLength = common dso_local global i32 0, align 4
@ZSTD_c_strategy = common dso_local global i32 0, align 4
@ZSTD_c_literalCompressionMode = common dso_local global i32 0, align 4
@FIO_OVERLAP_LOG_NOTSET = common dso_local global i32 0, align 4
@ZSTD_c_jobSize = common dso_local global i32 0, align 4
@ZSTD_c_nbWorkers = common dso_local global i32 0, align 4
@ZSTD_c_overlapLog = common dso_local global i32 0, align 4
@ZSTD_c_rsyncable = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_8__*, %struct.TYPE_10__*, i8*, i32, %struct.TYPE_9__*)* @FIO_createCResources to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @FIO_createCResources(%struct.TYPE_8__* noalias sret %0, %struct.TYPE_10__* %1, i8* %2, i32 %3, %struct.TYPE_9__* byval(%struct.TYPE_9__) align 8 %4) #0 {
  %6 = alloca %struct.TYPE_10__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  store %struct.TYPE_10__* %1, %struct.TYPE_10__** %6, align 8
  store i8* %2, i8** %7, align 8
  store i32 %3, i32* %8, align 4
  %11 = call i32 @memset(%struct.TYPE_8__* %0, i32 0, i32 40)
  %12 = call i32 (i32, i8*, ...) @DISPLAYLEVEL(i32 6, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %13 = call i32* (...) @ZSTD_createCCtx()
  %14 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %0, i32 0, i32 1
  store i32* %13, i32** %14, align 8
  %15 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %0, i32 0, i32 1
  %16 = load i32*, i32** %15, align 8
  %17 = icmp eq i32* %16, null
  br i1 %17, label %18, label %22

18:                                               ; preds = %5
  %19 = load i32, i32* @errno, align 4
  %20 = call i32 @strerror(i32 %19)
  %21 = call i32 (i32, i8*, ...) @EXM_THROW(i32 30, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0), i32 %20)
  br label %22

22:                                               ; preds = %18, %5
  %23 = call i32 (...) @ZSTD_CStreamInSize()
  %24 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %0, i32 0, i32 5
  store i32 %23, i32* %24, align 4
  %25 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %0, i32 0, i32 5
  %26 = load i32, i32* %25, align 4
  %27 = call i8* @malloc(i32 %26)
  %28 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %0, i32 0, i32 3
  store i8* %27, i8** %28, align 8
  %29 = call i32 (...) @ZSTD_CStreamOutSize()
  %30 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %0, i32 0, i32 4
  store i32 %29, i32* %30, align 8
  %31 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %0, i32 0, i32 4
  %32 = load i32, i32* %31, align 8
  %33 = call i8* @malloc(i32 %32)
  %34 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %0, i32 0, i32 2
  store i8* %33, i8** %34, align 8
  %35 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %0, i32 0, i32 3
  %36 = load i8*, i8** %35, align 8
  %37 = icmp ne i8* %36, null
  br i1 %37, label %38, label %42

38:                                               ; preds = %22
  %39 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %0, i32 0, i32 2
  %40 = load i8*, i8** %39, align 8
  %41 = icmp ne i8* %40, null
  br i1 %41, label %44, label %42

42:                                               ; preds = %38, %22
  %43 = call i32 (i32, i8*, ...) @EXM_THROW(i32 31, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0))
  br label %44

44:                                               ; preds = %42, %38
  %45 = load i8*, i8** %7, align 8
  %46 = call i64 @FIO_createDictBuffer(i8** %9, i8* %45)
  store i64 %46, i64* %10, align 8
  %47 = load i8*, i8** %7, align 8
  %48 = icmp ne i8* %47, null
  br i1 %48, label %49, label %54

49:                                               ; preds = %44
  %50 = load i8*, i8** %9, align 8
  %51 = icmp eq i8* %50, null
  br i1 %51, label %52, label %54

52:                                               ; preds = %49
  %53 = call i32 (i32, i8*, ...) @EXM_THROW(i32 32, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.3, i64 0, i64 0))
  br label %54

54:                                               ; preds = %52, %49, %44
  %55 = load i8*, i8** %7, align 8
  %56 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %0, i32 0, i32 0
  store i8* %55, i8** %56, align 8
  %57 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %58 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %57, i32 0, i32 14
  %59 = load i64, i64* %58, align 8
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %73

61:                                               ; preds = %54
  %62 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %63 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %73, label %66

66:                                               ; preds = %61
  %67 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %4, i32 0, i32 6
  %68 = load i64, i64* %67, align 8
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %73, label %70

70:                                               ; preds = %66
  %71 = load i64, i64* @ADAPT_WINDOWLOG_DEFAULT, align 8
  %72 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %4, i32 0, i32 6
  store i64 %71, i64* %72, align 8
  br label %73

73:                                               ; preds = %70, %66, %61, %54
  %74 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %0, i32 0, i32 1
  %75 = load i32*, i32** %74, align 8
  %76 = load i32, i32* @ZSTD_c_contentSizeFlag, align 4
  %77 = call i32 @ZSTD_CCtx_setParameter(i32* %75, i32 %76, i32 1)
  %78 = call i32 @CHECK(i32 %77)
  %79 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %0, i32 0, i32 1
  %80 = load i32*, i32** %79, align 8
  %81 = load i32, i32* @ZSTD_c_dictIDFlag, align 4
  %82 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %83 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = call i32 @ZSTD_CCtx_setParameter(i32* %80, i32 %81, i32 %84)
  %86 = call i32 @CHECK(i32 %85)
  %87 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %0, i32 0, i32 1
  %88 = load i32*, i32** %87, align 8
  %89 = load i32, i32* @ZSTD_c_checksumFlag, align 4
  %90 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %91 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %90, i32 0, i32 2
  %92 = load i32, i32* %91, align 8
  %93 = call i32 @ZSTD_CCtx_setParameter(i32* %88, i32 %89, i32 %92)
  %94 = call i32 @CHECK(i32 %93)
  %95 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %0, i32 0, i32 1
  %96 = load i32*, i32** %95, align 8
  %97 = load i32, i32* @ZSTD_c_compressionLevel, align 4
  %98 = load i32, i32* %8, align 4
  %99 = call i32 @ZSTD_CCtx_setParameter(i32* %96, i32 %97, i32 %98)
  %100 = call i32 @CHECK(i32 %99)
  %101 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %0, i32 0, i32 1
  %102 = load i32*, i32** %101, align 8
  %103 = load i32, i32* @ZSTD_c_targetCBlockSize, align 4
  %104 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %105 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %104, i32 0, i32 13
  %106 = load i64, i64* %105, align 8
  %107 = trunc i64 %106 to i32
  %108 = call i32 @ZSTD_CCtx_setParameter(i32* %102, i32 %103, i32 %107)
  %109 = call i32 @CHECK(i32 %108)
  %110 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %0, i32 0, i32 1
  %111 = load i32*, i32** %110, align 8
  %112 = load i32, i32* @ZSTD_c_srcSizeHint, align 4
  %113 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %114 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %113, i32 0, i32 12
  %115 = load i64, i64* %114, align 8
  %116 = trunc i64 %115 to i32
  %117 = call i32 @ZSTD_CCtx_setParameter(i32* %111, i32 %112, i32 %116)
  %118 = call i32 @CHECK(i32 %117)
  %119 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %0, i32 0, i32 1
  %120 = load i32*, i32** %119, align 8
  %121 = load i32, i32* @ZSTD_c_enableLongDistanceMatching, align 4
  %122 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %123 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 8
  %125 = call i32 @ZSTD_CCtx_setParameter(i32* %120, i32 %121, i32 %124)
  %126 = call i32 @CHECK(i32 %125)
  %127 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %0, i32 0, i32 1
  %128 = load i32*, i32** %127, align 8
  %129 = load i32, i32* @ZSTD_c_ldmHashLog, align 4
  %130 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %131 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %130, i32 0, i32 3
  %132 = load i32, i32* %131, align 4
  %133 = call i32 @ZSTD_CCtx_setParameter(i32* %128, i32 %129, i32 %132)
  %134 = call i32 @CHECK(i32 %133)
  %135 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %0, i32 0, i32 1
  %136 = load i32*, i32** %135, align 8
  %137 = load i32, i32* @ZSTD_c_ldmMinMatch, align 4
  %138 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %139 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %138, i32 0, i32 4
  %140 = load i32, i32* %139, align 8
  %141 = call i32 @ZSTD_CCtx_setParameter(i32* %136, i32 %137, i32 %140)
  %142 = call i32 @CHECK(i32 %141)
  %143 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %144 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %143, i32 0, i32 5
  %145 = load i32, i32* %144, align 4
  %146 = load i32, i32* @FIO_LDM_PARAM_NOTSET, align 4
  %147 = icmp ne i32 %145, %146
  br i1 %147, label %148, label %157

148:                                              ; preds = %73
  %149 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %0, i32 0, i32 1
  %150 = load i32*, i32** %149, align 8
  %151 = load i32, i32* @ZSTD_c_ldmBucketSizeLog, align 4
  %152 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %153 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %152, i32 0, i32 5
  %154 = load i32, i32* %153, align 4
  %155 = call i32 @ZSTD_CCtx_setParameter(i32* %150, i32 %151, i32 %154)
  %156 = call i32 @CHECK(i32 %155)
  br label %157

157:                                              ; preds = %148, %73
  %158 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %159 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %158, i32 0, i32 6
  %160 = load i32, i32* %159, align 8
  %161 = load i32, i32* @FIO_LDM_PARAM_NOTSET, align 4
  %162 = icmp ne i32 %160, %161
  br i1 %162, label %163, label %172

163:                                              ; preds = %157
  %164 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %0, i32 0, i32 1
  %165 = load i32*, i32** %164, align 8
  %166 = load i32, i32* @ZSTD_c_ldmHashRateLog, align 4
  %167 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %168 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %167, i32 0, i32 6
  %169 = load i32, i32* %168, align 8
  %170 = call i32 @ZSTD_CCtx_setParameter(i32* %165, i32 %166, i32 %169)
  %171 = call i32 @CHECK(i32 %170)
  br label %172

172:                                              ; preds = %163, %157
  %173 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %0, i32 0, i32 1
  %174 = load i32*, i32** %173, align 8
  %175 = load i32, i32* @ZSTD_c_windowLog, align 4
  %176 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %4, i32 0, i32 6
  %177 = load i64, i64* %176, align 8
  %178 = trunc i64 %177 to i32
  %179 = call i32 @ZSTD_CCtx_setParameter(i32* %174, i32 %175, i32 %178)
  %180 = call i32 @CHECK(i32 %179)
  %181 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %0, i32 0, i32 1
  %182 = load i32*, i32** %181, align 8
  %183 = load i32, i32* @ZSTD_c_chainLog, align 4
  %184 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %4, i32 0, i32 5
  %185 = load i64, i64* %184, align 8
  %186 = trunc i64 %185 to i32
  %187 = call i32 @ZSTD_CCtx_setParameter(i32* %182, i32 %183, i32 %186)
  %188 = call i32 @CHECK(i32 %187)
  %189 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %0, i32 0, i32 1
  %190 = load i32*, i32** %189, align 8
  %191 = load i32, i32* @ZSTD_c_hashLog, align 4
  %192 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %4, i32 0, i32 4
  %193 = load i64, i64* %192, align 8
  %194 = trunc i64 %193 to i32
  %195 = call i32 @ZSTD_CCtx_setParameter(i32* %190, i32 %191, i32 %194)
  %196 = call i32 @CHECK(i32 %195)
  %197 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %0, i32 0, i32 1
  %198 = load i32*, i32** %197, align 8
  %199 = load i32, i32* @ZSTD_c_searchLog, align 4
  %200 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %4, i32 0, i32 3
  %201 = load i64, i64* %200, align 8
  %202 = trunc i64 %201 to i32
  %203 = call i32 @ZSTD_CCtx_setParameter(i32* %198, i32 %199, i32 %202)
  %204 = call i32 @CHECK(i32 %203)
  %205 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %0, i32 0, i32 1
  %206 = load i32*, i32** %205, align 8
  %207 = load i32, i32* @ZSTD_c_minMatch, align 4
  %208 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %4, i32 0, i32 2
  %209 = load i64, i64* %208, align 8
  %210 = trunc i64 %209 to i32
  %211 = call i32 @ZSTD_CCtx_setParameter(i32* %206, i32 %207, i32 %210)
  %212 = call i32 @CHECK(i32 %211)
  %213 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %0, i32 0, i32 1
  %214 = load i32*, i32** %213, align 8
  %215 = load i32, i32* @ZSTD_c_targetLength, align 4
  %216 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %4, i32 0, i32 1
  %217 = load i64, i64* %216, align 8
  %218 = trunc i64 %217 to i32
  %219 = call i32 @ZSTD_CCtx_setParameter(i32* %214, i32 %215, i32 %218)
  %220 = call i32 @CHECK(i32 %219)
  %221 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %0, i32 0, i32 1
  %222 = load i32*, i32** %221, align 8
  %223 = load i32, i32* @ZSTD_c_strategy, align 4
  %224 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %4, i32 0, i32 0
  %225 = load i32, i32* %224, align 8
  %226 = call i32 @ZSTD_CCtx_setParameter(i32* %222, i32 %223, i32 %225)
  %227 = call i32 @CHECK(i32 %226)
  %228 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %0, i32 0, i32 1
  %229 = load i32*, i32** %228, align 8
  %230 = load i32, i32* @ZSTD_c_literalCompressionMode, align 4
  %231 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %232 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %231, i32 0, i32 11
  %233 = load i64, i64* %232, align 8
  %234 = trunc i64 %233 to i32
  %235 = call i32 @ZSTD_CCtx_setParameter(i32* %229, i32 %230, i32 %234)
  %236 = call i32 @CHECK(i32 %235)
  %237 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %0, i32 0, i32 1
  %238 = load i32*, i32** %237, align 8
  %239 = load i8*, i8** %9, align 8
  %240 = load i64, i64* %10, align 8
  %241 = call i32 @ZSTD_CCtx_loadDictionary(i32* %238, i8* %239, i64 %240)
  %242 = call i32 @CHECK(i32 %241)
  %243 = load i8*, i8** %9, align 8
  %244 = call i32 @free(i8* %243)
  ret void
}

declare dso_local i32 @memset(%struct.TYPE_8__*, i32, i32) #1

declare dso_local i32 @DISPLAYLEVEL(i32, i8*, ...) #1

declare dso_local i32* @ZSTD_createCCtx(...) #1

declare dso_local i32 @EXM_THROW(i32, i8*, ...) #1

declare dso_local i32 @strerror(i32) #1

declare dso_local i32 @ZSTD_CStreamInSize(...) #1

declare dso_local i8* @malloc(i32) #1

declare dso_local i32 @ZSTD_CStreamOutSize(...) #1

declare dso_local i64 @FIO_createDictBuffer(i8**, i8*) #1

declare dso_local i32 @CHECK(i32) #1

declare dso_local i32 @ZSTD_CCtx_setParameter(i32*, i32, i32) #1

declare dso_local i32 @ZSTD_CCtx_loadDictionary(i32*, i8*, i64) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
