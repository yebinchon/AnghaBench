; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/winmm/extr_mmio.c_MMIO_Open.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/winmm/extr_mmio.c_MMIO_Open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i64, i8*, i64*, i64, i32*, i32* }
%struct.TYPE_11__ = type { %struct.TYPE_12__*, %struct.TYPE_13__, i32, i8*, i8* }
%struct.TYPE_12__ = type { i32, i32* }
%struct.TYPE_13__ = type { i64, i32, i32, i64* }

@.str = private unnamed_addr constant [23 x i8] c"('%s', %p, %08X, %s);\0A\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"unicode\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"ansi\00", align 1
@FALSE = common dso_local global i8* null, align 8
@MMIO_PARSE = common dso_local global i32 0, align 4
@MMIO_EXIST = common dso_local global i32 0, align 4
@MAX_PATH = common dso_local global i32 0, align 4
@INVALID_FILE_ATTRIBUTES = common dso_local global i64 0, align 8
@TRUE = common dso_local global i8* null, align 8
@FOURCC_DOS = common dso_local global i8* null, align 8
@MMIO_INSTALLPROC = common dso_local global i32 0, align 4
@MMIO_ALLOCBUF = common dso_local global i32 0, align 4
@MMIO_DEFAULTBUFFER = common dso_local global i64 0, align 8
@MMSYSERR_NOERROR = common dso_local global i8* null, align 8
@FOURCC_MEM = common dso_local global i64 0, align 8
@MMIOM_OPEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, %struct.TYPE_10__*, i32, i8*)* @MMIO_Open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @MMIO_Open(i64 %0, %struct.TYPE_10__* %1, i32 %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca %struct.TYPE_10__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca %struct.TYPE_11__*, align 8
  %11 = alloca %struct.TYPE_10__, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  store i64 %0, i64* %6, align 8
  store %struct.TYPE_10__* %1, %struct.TYPE_10__** %7, align 8
  store i32 %2, i32* %8, align 4
  store i8* %3, i8** %9, align 8
  %15 = load i64, i64* %6, align 8
  %16 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %17 = load i32, i32* %8, align 4
  %18 = load i8*, i8** %9, align 8
  %19 = icmp ne i8* %18, null
  %20 = zext i1 %19 to i64
  %21 = select i1 %19, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)
  %22 = call i32 @TRACE(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i64 %15, %struct.TYPE_10__* %16, i32 %17, i8* %21)
  %23 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %24 = icmp ne %struct.TYPE_10__* %23, null
  br i1 %24, label %31, label %25

25:                                               ; preds = %4
  store %struct.TYPE_10__* %11, %struct.TYPE_10__** %7, align 8
  %26 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %11, i32 0, i32 0
  store i64 0, i64* %26, align 8
  %27 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %11, i32 0, i32 5
  store i32* null, i32** %27, align 8
  %28 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %11, i32 0, i32 4
  store i32* null, i32** %28, align 8
  %29 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %11, i32 0, i32 3
  store i64 0, i64* %29, align 8
  %30 = load i8*, i8** @FALSE, align 8
  store i8* %30, i8** %9, align 8
  br label %31

31:                                               ; preds = %25, %4
  %32 = load i32, i32* %8, align 4
  %33 = load i32, i32* @MMIO_PARSE, align 4
  %34 = load i32, i32* @MMIO_EXIST, align 4
  %35 = or i32 %33, %34
  %36 = and i32 %32, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %76

38:                                               ; preds = %31
  %39 = load i32, i32* @MAX_PATH, align 4
  %40 = zext i32 %39 to i64
  %41 = call i8* @llvm.stacksave()
  store i8* %41, i8** %12, align 8
  %42 = alloca i8, i64 %40, align 16
  store i64 %40, i64* %13, align 8
  %43 = load i64, i64* %6, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %48, label %45

45:                                               ; preds = %38
  %46 = load i8*, i8** @FALSE, align 8
  %47 = ptrtoint i8* %46 to i32
  store i32 %47, i32* %5, align 4
  store i32 1, i32* %14, align 4
  br label %74

48:                                               ; preds = %38
  %49 = load i64, i64* %6, align 8
  %50 = trunc i64 %40 to i32
  %51 = call i32 @GetFullPathNameA(i64 %49, i32 %50, i8* %42, i32* null)
  %52 = sext i32 %51 to i64
  %53 = icmp uge i64 %52, %40
  br i1 %53, label %54, label %57

54:                                               ; preds = %48
  %55 = load i8*, i8** @FALSE, align 8
  %56 = ptrtoint i8* %55 to i32
  store i32 %56, i32* %5, align 4
  store i32 1, i32* %14, align 4
  br label %74

57:                                               ; preds = %48
  %58 = load i32, i32* %8, align 4
  %59 = load i32, i32* @MMIO_EXIST, align 4
  %60 = and i32 %58, %59
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %69

62:                                               ; preds = %57
  %63 = call i64 @GetFileAttributesA(i8* %42)
  %64 = load i64, i64* @INVALID_FILE_ATTRIBUTES, align 8
  %65 = icmp eq i64 %63, %64
  br i1 %65, label %66, label %69

66:                                               ; preds = %62
  %67 = load i8*, i8** @FALSE, align 8
  %68 = ptrtoint i8* %67 to i32
  store i32 %68, i32* %5, align 4
  store i32 1, i32* %14, align 4
  br label %74

69:                                               ; preds = %62, %57
  %70 = load i64, i64* %6, align 8
  %71 = call i32 @strcpy(i64 %70, i8* %42)
  %72 = load i8*, i8** @TRUE, align 8
  %73 = ptrtoint i8* %72 to i32
  store i32 %73, i32* %5, align 4
  store i32 1, i32* %14, align 4
  br label %74

74:                                               ; preds = %69, %66, %54, %45
  %75 = load i8*, i8** %12, align 8
  call void @llvm.stackrestore(i8* %75)
  br label %345

76:                                               ; preds = %31
  %77 = call %struct.TYPE_11__* (...) @MMIO_Create()
  store %struct.TYPE_11__* %77, %struct.TYPE_11__** %10, align 8
  %78 = icmp eq %struct.TYPE_11__* %77, null
  br i1 %78, label %79, label %80

79:                                               ; preds = %76
  store i32 0, i32* %5, align 4
  br label %345

80:                                               ; preds = %76
  %81 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %82 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = icmp eq i64 %83, 0
  br i1 %84, label %85, label %138

85:                                               ; preds = %80
  %86 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %87 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %86, i32 0, i32 5
  %88 = load i32*, i32** %87, align 8
  %89 = icmp eq i32* %88, null
  br i1 %89, label %90, label %138

90:                                               ; preds = %85
  %91 = load i64, i64* %6, align 8
  %92 = call i64 @MMIO_ParseExtA(i64 %91)
  %93 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %94 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %93, i32 0, i32 1
  %95 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %94, i32 0, i32 0
  store i64 %92, i64* %95, align 8
  %96 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %97 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %96, i32 0, i32 1
  %98 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %97, i32 0, i32 0
  %99 = load i64, i64* %98, align 8
  %100 = icmp eq i64 %99, 0
  br i1 %100, label %101, label %107

101:                                              ; preds = %90
  %102 = load i8*, i8** @FOURCC_DOS, align 8
  %103 = ptrtoint i8* %102 to i64
  %104 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %105 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %104, i32 0, i32 1
  %106 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %105, i32 0, i32 0
  store i64 %103, i64* %106, align 8
  br label %107

107:                                              ; preds = %101, %90
  %108 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %109 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %108, i32 0, i32 1
  %110 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %109, i32 0, i32 0
  %111 = load i64, i64* %110, align 8
  %112 = call i8* @MMIO_FindProcNode(i64 %111)
  %113 = bitcast i8* %112 to %struct.TYPE_12__*
  %114 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %115 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %114, i32 0, i32 0
  store %struct.TYPE_12__* %113, %struct.TYPE_12__** %115, align 8
  %116 = icmp ne %struct.TYPE_12__* %113, null
  br i1 %116, label %134, label %117

117:                                              ; preds = %107
  %118 = load i8*, i8** @FOURCC_DOS, align 8
  %119 = ptrtoint i8* %118 to i64
  %120 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %121 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %120, i32 0, i32 1
  %122 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %121, i32 0, i32 0
  store i64 %119, i64* %122, align 8
  %123 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %124 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %123, i32 0, i32 1
  %125 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %124, i32 0, i32 0
  %126 = load i64, i64* %125, align 8
  %127 = call i8* @MMIO_FindProcNode(i64 %126)
  %128 = bitcast i8* %127 to %struct.TYPE_12__*
  %129 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %130 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %129, i32 0, i32 0
  store %struct.TYPE_12__* %128, %struct.TYPE_12__** %130, align 8
  %131 = icmp ne %struct.TYPE_12__* %128, null
  br i1 %131, label %133, label %132

132:                                              ; preds = %117
  br label %342

133:                                              ; preds = %117
  br label %134

134:                                              ; preds = %133, %107
  %135 = load i8*, i8** @FALSE, align 8
  %136 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %137 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %136, i32 0, i32 4
  store i8* %135, i8** %137, align 8
  br label %207

138:                                              ; preds = %85, %80
  %139 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %140 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %139, i32 0, i32 5
  %141 = load i32*, i32** %140, align 8
  %142 = icmp eq i32* %141, null
  br i1 %142, label %143, label %164

143:                                              ; preds = %138
  %144 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %145 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %144, i32 0, i32 0
  %146 = load i64, i64* %145, align 8
  %147 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %148 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %147, i32 0, i32 1
  %149 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %148, i32 0, i32 0
  store i64 %146, i64* %149, align 8
  %150 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %151 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %150, i32 0, i32 1
  %152 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %151, i32 0, i32 0
  %153 = load i64, i64* %152, align 8
  %154 = call i8* @MMIO_FindProcNode(i64 %153)
  %155 = bitcast i8* %154 to %struct.TYPE_12__*
  %156 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %157 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %156, i32 0, i32 0
  store %struct.TYPE_12__* %155, %struct.TYPE_12__** %157, align 8
  %158 = icmp ne %struct.TYPE_12__* %155, null
  br i1 %158, label %160, label %159

159:                                              ; preds = %143
  br label %342

160:                                              ; preds = %143
  %161 = load i8*, i8** @FALSE, align 8
  %162 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %163 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %162, i32 0, i32 4
  store i8* %161, i8** %163, align 8
  br label %206

164:                                              ; preds = %138
  %165 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %166 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %165, i32 0, i32 0
  %167 = load i64, i64* %166, align 8
  %168 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %169 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %168, i32 0, i32 1
  %170 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %169, i32 0, i32 0
  store i64 %167, i64* %170, align 8
  %171 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %172 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %171, i32 0, i32 1
  %173 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %172, i32 0, i32 0
  %174 = load i64, i64* %173, align 8
  %175 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %176 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %175, i32 0, i32 5
  %177 = load i32*, i32** %176, align 8
  %178 = load i32, i32* @MMIO_INSTALLPROC, align 4
  %179 = load i8*, i8** %9, align 8
  %180 = call i32 @MMIO_InstallIOProc(i64 %174, i32* %177, i32 %178, i8* %179)
  %181 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %182 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %181, i32 0, i32 1
  %183 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %182, i32 0, i32 0
  %184 = load i64, i64* %183, align 8
  %185 = call i8* @MMIO_FindProcNode(i64 %184)
  %186 = bitcast i8* %185 to %struct.TYPE_12__*
  %187 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %188 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %187, i32 0, i32 0
  store %struct.TYPE_12__* %186, %struct.TYPE_12__** %188, align 8
  %189 = icmp ne %struct.TYPE_12__* %186, null
  br i1 %189, label %191, label %190

190:                                              ; preds = %164
  br label %342

191:                                              ; preds = %164
  %192 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %193 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %192, i32 0, i32 0
  %194 = load %struct.TYPE_12__*, %struct.TYPE_12__** %193, align 8
  %195 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %194, i32 0, i32 1
  %196 = load i32*, i32** %195, align 8
  %197 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %198 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %197, i32 0, i32 5
  %199 = load i32*, i32** %198, align 8
  %200 = icmp eq i32* %196, %199
  %201 = zext i1 %200 to i32
  %202 = call i32 @assert(i32 %201)
  %203 = load i8*, i8** @TRUE, align 8
  %204 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %205 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %204, i32 0, i32 4
  store i8* %203, i8** %205, align 8
  br label %206

206:                                              ; preds = %191, %160
  br label %207

207:                                              ; preds = %206, %134
  %208 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %209 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %208, i32 0, i32 0
  %210 = load %struct.TYPE_12__*, %struct.TYPE_12__** %209, align 8
  %211 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %210, i32 0, i32 0
  %212 = load i32, i32* %211, align 8
  %213 = add nsw i32 %212, 1
  store i32 %213, i32* %211, align 8
  %214 = load i32, i32* %8, align 4
  %215 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %216 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %215, i32 0, i32 1
  %217 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %216, i32 0, i32 1
  store i32 %214, i32* %217, align 8
  %218 = load i32, i32* %8, align 4
  %219 = load i32, i32* @MMIO_ALLOCBUF, align 4
  %220 = and i32 %218, %219
  %221 = icmp ne i32 %220, 0
  br i1 %221, label %222, label %249

222:                                              ; preds = %207
  %223 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %224 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %225 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %224, i32 0, i32 4
  %226 = load i32*, i32** %225, align 8
  %227 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %228 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %227, i32 0, i32 3
  %229 = load i64, i64* %228, align 8
  %230 = icmp ne i64 %229, 0
  br i1 %230, label %231, label %235

231:                                              ; preds = %222
  %232 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %233 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %232, i32 0, i32 3
  %234 = load i64, i64* %233, align 8
  br label %237

235:                                              ; preds = %222
  %236 = load i64, i64* @MMIO_DEFAULTBUFFER, align 8
  br label %237

237:                                              ; preds = %235, %231
  %238 = phi i64 [ %234, %231 ], [ %236, %235 ]
  %239 = call i8* @MMIO_SetBuffer(%struct.TYPE_11__* %223, i32* %226, i64 %238, i32 0)
  %240 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %241 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %240, i32 0, i32 1
  store i8* %239, i8** %241, align 8
  %242 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %243 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %242, i32 0, i32 1
  %244 = load i8*, i8** %243, align 8
  %245 = load i8*, i8** @MMSYSERR_NOERROR, align 8
  %246 = icmp ne i8* %244, %245
  br i1 %246, label %247, label %248

247:                                              ; preds = %237
  br label %329

248:                                              ; preds = %237
  br label %267

249:                                              ; preds = %207
  %250 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %251 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %252 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %251, i32 0, i32 4
  %253 = load i32*, i32** %252, align 8
  %254 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %255 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %254, i32 0, i32 3
  %256 = load i64, i64* %255, align 8
  %257 = call i8* @MMIO_SetBuffer(%struct.TYPE_11__* %250, i32* %253, i64 %256, i32 0)
  %258 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %259 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %258, i32 0, i32 1
  store i8* %257, i8** %259, align 8
  %260 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %261 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %260, i32 0, i32 1
  %262 = load i8*, i8** %261, align 8
  %263 = load i8*, i8** @MMSYSERR_NOERROR, align 8
  %264 = icmp ne i8* %262, %263
  br i1 %264, label %265, label %266

265:                                              ; preds = %249
  br label %329

266:                                              ; preds = %249
  br label %267

267:                                              ; preds = %266, %248
  %268 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %269 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %268, i32 0, i32 1
  %270 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %269, i32 0, i32 0
  %271 = load i64, i64* %270, align 8
  %272 = load i64, i64* @FOURCC_MEM, align 8
  %273 = icmp eq i64 %271, %272
  br i1 %273, label %274, label %286

274:                                              ; preds = %267
  %275 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %276 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %275, i32 0, i32 1
  %277 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %276, i32 0, i32 1
  %278 = load i32, i32* %277, align 8
  %279 = load i32, i32* @MMIO_ALLOCBUF, align 4
  %280 = and i32 %278, %279
  %281 = icmp ne i32 %280, 0
  br i1 %281, label %286, label %282

282:                                              ; preds = %274
  %283 = load i8*, i8** @TRUE, align 8
  %284 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %285 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %284, i32 0, i32 3
  store i8* %283, i8** %285, align 8
  br label %286

286:                                              ; preds = %282, %274, %267
  %287 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %288 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %287, i32 0, i32 2
  %289 = load i64*, i64** %288, align 8
  %290 = getelementptr inbounds i64, i64* %289, i64 0
  %291 = load i64, i64* %290, align 8
  %292 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %293 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %292, i32 0, i32 1
  %294 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %293, i32 0, i32 3
  %295 = load i64*, i64** %294, align 8
  %296 = getelementptr inbounds i64, i64* %295, i64 0
  store i64 %291, i64* %296, align 8
  %297 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %298 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %297, i32 0, i32 0
  %299 = load %struct.TYPE_12__*, %struct.TYPE_12__** %298, align 8
  %300 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %301 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %300, i32 0, i32 1
  %302 = load i32, i32* @MMIOM_OPEN, align 4
  %303 = load i64, i64* %6, align 8
  %304 = trunc i64 %303 to i32
  %305 = load i8*, i8** @FALSE, align 8
  %306 = call i8* @send_message(%struct.TYPE_12__* %299, %struct.TYPE_13__* %301, i32 %302, i32 %304, i32 0, i8* %305)
  %307 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %308 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %307, i32 0, i32 1
  store i8* %306, i8** %308, align 8
  %309 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %310 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %309, i32 0, i32 1
  %311 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %310, i32 0, i32 3
  %312 = load i64*, i64** %311, align 8
  %313 = getelementptr inbounds i64, i64* %312, i64 0
  %314 = load i64, i64* %313, align 8
  %315 = trunc i64 %314 to i32
  %316 = call i32 @GetFileSize(i32 %315, i32* null)
  %317 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %318 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %317, i32 0, i32 2
  store i32 %316, i32* %318, align 8
  %319 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %320 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %319, i32 0, i32 1
  %321 = load i8*, i8** %320, align 8
  %322 = icmp eq i8* %321, null
  br i1 %322, label %323, label %328

323:                                              ; preds = %286
  %324 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %325 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %324, i32 0, i32 1
  %326 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %325, i32 0, i32 2
  %327 = load i32, i32* %326, align 4
  store i32 %327, i32* %5, align 4
  br label %345

328:                                              ; preds = %286
  br label %329

329:                                              ; preds = %328, %265, %247
  %330 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %331 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %330, i32 0, i32 0
  %332 = load %struct.TYPE_12__*, %struct.TYPE_12__** %331, align 8
  %333 = icmp ne %struct.TYPE_12__* %332, null
  br i1 %333, label %334, label %341

334:                                              ; preds = %329
  %335 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %336 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %335, i32 0, i32 0
  %337 = load %struct.TYPE_12__*, %struct.TYPE_12__** %336, align 8
  %338 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %337, i32 0, i32 0
  %339 = load i32, i32* %338, align 8
  %340 = add nsw i32 %339, -1
  store i32 %340, i32* %338, align 8
  br label %341

341:                                              ; preds = %334, %329
  br label %342

342:                                              ; preds = %341, %190, %159, %132
  %343 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %344 = call i32 @MMIO_Destroy(%struct.TYPE_11__* %343)
  store i32 0, i32* %5, align 4
  br label %345

345:                                              ; preds = %342, %323, %79, %74
  %346 = load i32, i32* %5, align 4
  ret i32 %346
}

declare dso_local i32 @TRACE(i8*, i64, %struct.TYPE_10__*, i32, i8*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @GetFullPathNameA(i64, i32, i8*, i32*) #1

declare dso_local i64 @GetFileAttributesA(i8*) #1

declare dso_local i32 @strcpy(i64, i8*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

declare dso_local %struct.TYPE_11__* @MMIO_Create(...) #1

declare dso_local i64 @MMIO_ParseExtA(i64) #1

declare dso_local i8* @MMIO_FindProcNode(i64) #1

declare dso_local i32 @MMIO_InstallIOProc(i64, i32*, i32, i8*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i8* @MMIO_SetBuffer(%struct.TYPE_11__*, i32*, i64, i32) #1

declare dso_local i8* @send_message(%struct.TYPE_12__*, %struct.TYPE_13__*, i32, i32, i32, i8*) #1

declare dso_local i32 @GetFileSize(i32, i32*) #1

declare dso_local i32 @MMIO_Destroy(%struct.TYPE_11__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
