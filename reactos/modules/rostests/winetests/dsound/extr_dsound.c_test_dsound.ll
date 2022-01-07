; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/dsound/extr_dsound.c_test_dsound.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/dsound/extr_dsound.c_test_dsound.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32, %struct.TYPE_6__*, i32 }
%struct.TYPE_6__ = type { i32, i32 }

@DSERR_INVALIDPARAM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [77 x i8] c"DirectSoundCreate() should have returned DSERR_INVALIDPARAM, returned: %08x\0A\00", align 1
@DS_OK = common dso_local global i32 0, align 4
@DSERR_NODRIVER = common dso_local global i32 0, align 4
@DSERR_ALLOCATED = common dso_local global i32 0, align 4
@E_FAIL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"DirectSoundCreate() failed: %08x\0A\00", align 1
@TRUE = common dso_local global i32 0, align 4
@CLSID_DirectSound = common dso_local global i32 0, align 4
@CLSCTX_INPROC_SERVER = common dso_local global i32 0, align 4
@IID_IDirectSound = common dso_local global i32 0, align 4
@S_OK = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [50 x i8] c"CoCreateInstance(CLSID_DirectSound) failed: %08x\0A\00", align 1
@FALSE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [57 x i8] c"IDirectSound_Release() has %d references, should have 0\0A\00", align 1
@.str.4 = private unnamed_addr constant [54 x i8] c"DirectSound objects should be unique: dso=%p,dso1=%p\0A\00", align 1
@DSERR_GENERIC = common dso_local global i32 0, align 4
@WAVE_FORMAT_PCM = common dso_local global i32 0, align 4
@DSBCAPS_GETCURRENTPOSITION2 = common dso_local global i32 0, align 4
@DSBCAPS_CTRL3D = common dso_local global i32 0, align 4
@BUFFER_LEN = common dso_local global i32 0, align 4
@DSERR_CONTROLUNAVAIL = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [75 x i8] c"IDirectSound_CreateSoundBuffer() failed to create a secondary buffer %08x\0A\00", align 1
@IID_IDirectSound3DBuffer = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [44 x i8] c"IDirectSound_QueryInterface() failed: %08x\0A\00", align 1
@.str.7 = private unnamed_addr constant [64 x i8] c"IDirectSound3DBuffer_AddRef() has %d references, should have 2\0A\00", align 1
@.str.8 = private unnamed_addr constant [62 x i8] c"IDirectSoundBuffer_AddRef() has %d references, should have 2\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @test_dsound to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @test_dsound(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_7__, align 8
  %10 = alloca %struct.TYPE_6__, align 4
  %11 = alloca i32*, align 8
  store i32 %0, i32* %3, align 4
  store i32* null, i32** %5, align 8
  %12 = load i32, i32* %3, align 4
  %13 = call i32 @pDirectSoundCreate(i32 %12, i32** null, i32* null)
  store i32 %13, i32* %4, align 4
  %14 = load i32, i32* %4, align 4
  %15 = load i32, i32* @DSERR_INVALIDPARAM, align 4
  %16 = icmp eq i32 %14, %15
  %17 = zext i1 %16 to i32
  %18 = load i32, i32* %4, align 4
  %19 = call i32 (i32, i8*, i32, ...) @ok(i32 %17, i8* getelementptr inbounds ([77 x i8], [77 x i8]* @.str, i64 0, i64 0), i32 %18)
  %20 = load i32, i32* %3, align 4
  %21 = call i32 @pDirectSoundCreate(i32 %20, i32** %5, i32* null)
  store i32 %21, i32* %4, align 4
  %22 = load i32, i32* %4, align 4
  %23 = load i32, i32* @DS_OK, align 4
  %24 = icmp eq i32 %22, %23
  br i1 %24, label %37, label %25

25:                                               ; preds = %1
  %26 = load i32, i32* %4, align 4
  %27 = load i32, i32* @DSERR_NODRIVER, align 4
  %28 = icmp eq i32 %26, %27
  br i1 %28, label %37, label %29

29:                                               ; preds = %25
  %30 = load i32, i32* %4, align 4
  %31 = load i32, i32* @DSERR_ALLOCATED, align 4
  %32 = icmp eq i32 %30, %31
  br i1 %32, label %37, label %33

33:                                               ; preds = %29
  %34 = load i32, i32* %4, align 4
  %35 = load i32, i32* @E_FAIL, align 4
  %36 = icmp eq i32 %34, %35
  br label %37

37:                                               ; preds = %33, %29, %25, %1
  %38 = phi i1 [ true, %29 ], [ true, %25 ], [ true, %1 ], [ %36, %33 ]
  %39 = zext i1 %38 to i32
  %40 = load i32, i32* %4, align 4
  %41 = call i32 (i32, i8*, i32, ...) @ok(i32 %39, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i32 %40)
  %42 = load i32, i32* %4, align 4
  %43 = load i32, i32* @DS_OK, align 4
  %44 = icmp ne i32 %42, %43
  br i1 %44, label %45, label %47

45:                                               ; preds = %37
  %46 = load i32, i32* %4, align 4
  store i32 %46, i32* %2, align 4
  br label %234

47:                                               ; preds = %37
  %48 = load i32*, i32** %5, align 8
  %49 = load i32, i32* @TRUE, align 4
  %50 = load i32, i32* %3, align 4
  %51 = call i32 @IDirectSound_test(i32* %48, i32 %49, i32 %50)
  %52 = load i32, i32* @CLSCTX_INPROC_SERVER, align 4
  %53 = bitcast i32** %5 to i8**
  %54 = call i32 @CoCreateInstance(i32* @CLSID_DirectSound, i32* null, i32 %52, i32* @IID_IDirectSound, i8** %53)
  store i32 %54, i32* %4, align 4
  %55 = load i32, i32* %4, align 4
  %56 = load i32, i32* @S_OK, align 4
  %57 = icmp eq i32 %55, %56
  %58 = zext i1 %57 to i32
  %59 = load i32, i32* %4, align 4
  %60 = call i32 (i32, i8*, i32, ...) @ok(i32 %58, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.2, i64 0, i64 0), i32 %59)
  %61 = load i32*, i32** %5, align 8
  %62 = icmp ne i32* %61, null
  br i1 %62, label %63, label %68

63:                                               ; preds = %47
  %64 = load i32*, i32** %5, align 8
  %65 = load i32, i32* @FALSE, align 4
  %66 = load i32, i32* %3, align 4
  %67 = call i32 @IDirectSound_test(i32* %64, i32 %65, i32 %66)
  br label %68

68:                                               ; preds = %63, %47
  %69 = load i32, i32* %3, align 4
  %70 = call i32 @pDirectSoundCreate(i32 %69, i32** %5, i32* null)
  store i32 %70, i32* %4, align 4
  %71 = load i32, i32* %4, align 4
  %72 = load i32, i32* @DS_OK, align 4
  %73 = icmp eq i32 %71, %72
  %74 = zext i1 %73 to i32
  %75 = load i32, i32* %4, align 4
  %76 = call i32 (i32, i8*, i32, ...) @ok(i32 %74, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i32 %75)
  %77 = load i32, i32* %4, align 4
  %78 = load i32, i32* @DS_OK, align 4
  %79 = icmp eq i32 %77, %78
  br i1 %79, label %80, label %121

80:                                               ; preds = %68
  store i32* null, i32** %7, align 8
  %81 = load i32, i32* %3, align 4
  %82 = call i32 @pDirectSoundCreate(i32 %81, i32** %7, i32* null)
  store i32 %82, i32* %4, align 4
  %83 = load i32, i32* %4, align 4
  %84 = load i32, i32* @DS_OK, align 4
  %85 = icmp eq i32 %83, %84
  %86 = zext i1 %85 to i32
  %87 = load i32, i32* %4, align 4
  %88 = call i32 (i32, i8*, i32, ...) @ok(i32 %86, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i32 %87)
  %89 = load i32, i32* %4, align 4
  %90 = load i32, i32* @DS_OK, align 4
  %91 = icmp eq i32 %89, %90
  br i1 %91, label %92, label %108

92:                                               ; preds = %80
  %93 = load i32*, i32** %7, align 8
  %94 = call i32 @IDirectSound_Release(i32* %93)
  store i32 %94, i32* %6, align 4
  %95 = load i32, i32* %6, align 4
  %96 = icmp eq i32 %95, 0
  %97 = zext i1 %96 to i32
  %98 = load i32, i32* %6, align 4
  %99 = call i32 (i32, i8*, i32, ...) @ok(i32 %97, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.3, i64 0, i64 0), i32 %98)
  %100 = load i32*, i32** %5, align 8
  %101 = load i32*, i32** %7, align 8
  %102 = icmp ne i32* %100, %101
  %103 = zext i1 %102 to i32
  %104 = load i32*, i32** %5, align 8
  %105 = ptrtoint i32* %104 to i32
  %106 = load i32*, i32** %7, align 8
  %107 = call i32 (i32, i8*, i32, ...) @ok(i32 %103, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.4, i64 0, i64 0), i32 %105, i32* %106)
  br label %108

108:                                              ; preds = %92, %80
  %109 = load i32*, i32** %5, align 8
  %110 = call i32 @IDirectSound_Release(i32* %109)
  store i32 %110, i32* %6, align 4
  %111 = load i32, i32* %6, align 4
  %112 = icmp eq i32 %111, 0
  %113 = zext i1 %112 to i32
  %114 = load i32, i32* %6, align 4
  %115 = call i32 (i32, i8*, i32, ...) @ok(i32 %113, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.3, i64 0, i64 0), i32 %114)
  %116 = load i32, i32* %6, align 4
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %120

118:                                              ; preds = %108
  %119 = load i32, i32* @DSERR_GENERIC, align 4
  store i32 %119, i32* %2, align 4
  br label %234

120:                                              ; preds = %108
  br label %123

121:                                              ; preds = %68
  %122 = load i32, i32* %4, align 4
  store i32 %122, i32* %2, align 4
  br label %234

123:                                              ; preds = %120
  %124 = load i32, i32* %3, align 4
  %125 = call i32 @pDirectSoundCreate(i32 %124, i32** %5, i32* null)
  store i32 %125, i32* %4, align 4
  %126 = load i32, i32* %4, align 4
  %127 = load i32, i32* @DS_OK, align 4
  %128 = icmp eq i32 %126, %127
  %129 = zext i1 %128 to i32
  %130 = load i32, i32* %4, align 4
  %131 = call i32 (i32, i8*, i32, ...) @ok(i32 %129, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i32 %130)
  %132 = load i32, i32* %4, align 4
  %133 = load i32, i32* @DS_OK, align 4
  %134 = icmp eq i32 %132, %133
  br i1 %134, label %135, label %230

135:                                              ; preds = %123
  %136 = load i32, i32* @WAVE_FORMAT_PCM, align 4
  %137 = call i32 @init_format(%struct.TYPE_6__* %10, i32 %136, i32 11025, i32 8, i32 1)
  %138 = call i32 @ZeroMemory(%struct.TYPE_7__* %9, i32 24)
  %139 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %9, i32 0, i32 0
  store i32 24, i32* %139, align 8
  %140 = load i32, i32* @DSBCAPS_GETCURRENTPOSITION2, align 4
  %141 = load i32, i32* @DSBCAPS_CTRL3D, align 4
  %142 = or i32 %140, %141
  %143 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %9, i32 0, i32 1
  store i32 %142, i32* %143, align 4
  %144 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 0
  %145 = load i32, i32* %144, align 4
  %146 = load i32, i32* @BUFFER_LEN, align 4
  %147 = mul nsw i32 %145, %146
  %148 = sdiv i32 %147, 1000
  %149 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 1
  %150 = load i32, i32* %149, align 4
  %151 = call i32 @align(i32 %148, i32 %150)
  %152 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %9, i32 0, i32 3
  store i32 %151, i32* %152, align 8
  %153 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %9, i32 0, i32 2
  store %struct.TYPE_6__* %10, %struct.TYPE_6__** %153, align 8
  %154 = load i32*, i32** %5, align 8
  %155 = call i32 @IDirectSound_CreateSoundBuffer(i32* %154, %struct.TYPE_7__* %9, i32** %8, i32* null)
  store i32 %155, i32* %4, align 4
  %156 = load i32, i32* %4, align 4
  %157 = load i32, i32* @DS_OK, align 4
  %158 = icmp eq i32 %156, %157
  br i1 %158, label %159, label %162

159:                                              ; preds = %135
  %160 = load i32*, i32** %8, align 8
  %161 = icmp ne i32* %160, null
  br i1 %161, label %169, label %162

162:                                              ; preds = %159, %135
  %163 = load i32, i32* %4, align 4
  %164 = load i32, i32* @DSERR_CONTROLUNAVAIL, align 4
  %165 = icmp eq i32 %163, %164
  %166 = zext i1 %165 to i32
  %167 = call i64 @broken(i32 %166)
  %168 = icmp ne i64 %167, 0
  br label %169

169:                                              ; preds = %162, %159
  %170 = phi i1 [ true, %159 ], [ %168, %162 ]
  %171 = zext i1 %170 to i32
  %172 = load i32, i32* %4, align 4
  %173 = call i32 (i32, i8*, i32, ...) @ok(i32 %171, i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str.5, i64 0, i64 0), i32 %172)
  %174 = load i32, i32* %4, align 4
  %175 = load i32, i32* @DS_OK, align 4
  %176 = icmp eq i32 %174, %175
  br i1 %176, label %177, label %217

177:                                              ; preds = %169
  %178 = load i32*, i32** %8, align 8
  %179 = icmp ne i32* %178, null
  br i1 %179, label %180, label %217

180:                                              ; preds = %177
  %181 = load i32*, i32** %8, align 8
  %182 = bitcast i32** %11 to i8**
  %183 = call i32 @IDirectSound_QueryInterface(i32* %181, i32* @IID_IDirectSound3DBuffer, i8** %182)
  store i32 %183, i32* %4, align 4
  %184 = load i32, i32* %4, align 4
  %185 = load i32, i32* @DS_OK, align 4
  %186 = icmp eq i32 %184, %185
  br i1 %186, label %187, label %190

187:                                              ; preds = %180
  %188 = load i32*, i32** %11, align 8
  %189 = icmp ne i32* %188, null
  br label %190

190:                                              ; preds = %187, %180
  %191 = phi i1 [ false, %180 ], [ %189, %187 ]
  %192 = zext i1 %191 to i32
  %193 = load i32, i32* %4, align 4
  %194 = call i32 (i32, i8*, i32, ...) @ok(i32 %192, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.6, i64 0, i64 0), i32 %193)
  %195 = load i32, i32* %4, align 4
  %196 = load i32, i32* @DS_OK, align 4
  %197 = icmp eq i32 %195, %196
  br i1 %197, label %198, label %209

198:                                              ; preds = %190
  %199 = load i32*, i32** %11, align 8
  %200 = icmp ne i32* %199, null
  br i1 %200, label %201, label %209

201:                                              ; preds = %198
  %202 = load i32*, i32** %11, align 8
  %203 = call i32 @IDirectSound3DBuffer_AddRef(i32* %202)
  store i32 %203, i32* %6, align 4
  %204 = load i32, i32* %6, align 4
  %205 = icmp eq i32 %204, 2
  %206 = zext i1 %205 to i32
  %207 = load i32, i32* %6, align 4
  %208 = call i32 (i32, i8*, i32, ...) @ok(i32 %206, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.7, i64 0, i64 0), i32 %207)
  br label %209

209:                                              ; preds = %201, %198, %190
  %210 = load i32*, i32** %8, align 8
  %211 = call i32 @IDirectSoundBuffer_AddRef(i32* %210)
  store i32 %211, i32* %6, align 4
  %212 = load i32, i32* %6, align 4
  %213 = icmp eq i32 %212, 2
  %214 = zext i1 %213 to i32
  %215 = load i32, i32* %6, align 4
  %216 = call i32 (i32, i8*, i32, ...) @ok(i32 %214, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.8, i64 0, i64 0), i32 %215)
  br label %217

217:                                              ; preds = %209, %177, %169
  %218 = load i32*, i32** %5, align 8
  %219 = call i32 @IDirectSound_Release(i32* %218)
  store i32 %219, i32* %6, align 4
  %220 = load i32, i32* %6, align 4
  %221 = icmp eq i32 %220, 0
  %222 = zext i1 %221 to i32
  %223 = load i32, i32* %6, align 4
  %224 = call i32 (i32, i8*, i32, ...) @ok(i32 %222, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.3, i64 0, i64 0), i32 %223)
  %225 = load i32, i32* %6, align 4
  %226 = icmp ne i32 %225, 0
  br i1 %226, label %227, label %229

227:                                              ; preds = %217
  %228 = load i32, i32* @DSERR_GENERIC, align 4
  store i32 %228, i32* %2, align 4
  br label %234

229:                                              ; preds = %217
  br label %232

230:                                              ; preds = %123
  %231 = load i32, i32* %4, align 4
  store i32 %231, i32* %2, align 4
  br label %234

232:                                              ; preds = %229
  %233 = load i32, i32* @DS_OK, align 4
  store i32 %233, i32* %2, align 4
  br label %234

234:                                              ; preds = %232, %230, %227, %121, %118, %45
  %235 = load i32, i32* %2, align 4
  ret i32 %235
}

declare dso_local i32 @pDirectSoundCreate(i32, i32**, i32*) #1

declare dso_local i32 @ok(i32, i8*, i32, ...) #1

declare dso_local i32 @IDirectSound_test(i32*, i32, i32) #1

declare dso_local i32 @CoCreateInstance(i32*, i32*, i32, i32*, i8**) #1

declare dso_local i32 @IDirectSound_Release(i32*) #1

declare dso_local i32 @init_format(%struct.TYPE_6__*, i32, i32, i32, i32) #1

declare dso_local i32 @ZeroMemory(%struct.TYPE_7__*, i32) #1

declare dso_local i32 @align(i32, i32) #1

declare dso_local i32 @IDirectSound_CreateSoundBuffer(i32*, %struct.TYPE_7__*, i32**, i32*) #1

declare dso_local i64 @broken(i32) #1

declare dso_local i32 @IDirectSound_QueryInterface(i32*, i32*, i8**) #1

declare dso_local i32 @IDirectSound3DBuffer_AddRef(i32*) #1

declare dso_local i32 @IDirectSoundBuffer_AddRef(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
