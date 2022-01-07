; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/dsound/extr_duplex.c_IDirectSoundFullDuplex_tests.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/dsound/extr_duplex.c_IDirectSoundFullDuplex_tests.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_7__*, i32, i32 }

@.str = private unnamed_addr constant [32 x i8] c"Testing IDirectSoundFullDuplex\0A\00", align 1
@CLSID_DirectSoundFullDuplex = common dso_local global i32 0, align 4
@CLSCTX_INPROC_SERVER = common dso_local global i32 0, align 4
@IID_IDirectSoundFullDuplex = common dso_local global i32 0, align 4
@S_OK = common dso_local global i64 0, align 8
@REGDB_E_CLASSNOTREG = common dso_local global i64 0, align 8
@CLASS_E_CLASSNOTAVAILABLE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [62 x i8] c"CoCreateInstance(CLSID_DirectSoundFullDuplex) failed: 0x%08x\0A\00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"  Class Not Registered\0A\00", align 1
@.str.3 = private unnamed_addr constant [23 x i8] c"  Class Not Available\0A\00", align 1
@FALSE = common dso_local global i32 0, align 4
@DSDEVID_DefaultCapture = common dso_local global i32 0, align 4
@DSDEVID_DefaultPlayback = common dso_local global i32 0, align 4
@DSDEVID_DefaultVoiceCapture = common dso_local global i32 0, align 4
@DSDEVID_DefaultVoicePlayback = common dso_local global i32 0, align 4
@CLSID_DirectSoundPrivate = common dso_local global i32 0, align 4
@E_NOINTERFACE = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [99 x i8] c"CoCreateInstance(CLSID_DirectSoundFullDuplex,CLSID_DirectSoundPrivate) should have failed: 0x%08x\0A\00", align 1
@WAVE_FORMAT_PCM = common dso_local global i32 0, align 4
@DSCBCAPS_WAVEMAPPED = common dso_local global i32 0, align 4
@DSBCAPS_GLOBALFOCUS = common dso_local global i32 0, align 4
@DSSCL_EXCLUSIVE = common dso_local global i32 0, align 4
@DS_OK = common dso_local global i64 0, align 8
@DSERR_NODRIVER = common dso_local global i64 0, align 8
@DSERR_ALLOCATED = common dso_local global i64 0, align 8
@E_FAIL = common dso_local global i64 0, align 8
@DSERR_INVALIDCALL = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [53 x i8] c"DirectSoundFullDuplexCreate(NULL,NULL) failed: %08x\0A\00", align 1
@TRUE = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [90 x i8] c"DirectSoundFullDuplexCreate(DSDEVID_DefaultCapture,DSDEVID_DefaultPlayback) failed: %08x\0A\00", align 1
@.str.7 = private unnamed_addr constant [100 x i8] c"DirectSoundFullDuplexCreate(DSDEVID_DefaultVoiceCapture,DSDEVID_DefaultVoicePlayback) failed: %08x\0A\00", align 1
@.str.8 = private unnamed_addr constant [112 x i8] c"DirectSoundFullDuplexCreate(DSDEVID_DefaultVoicePlayback,DSDEVID_DefaultVoiceCapture) should have failed: %08x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @IDirectSoundFullDuplex_tests to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @IDirectSoundFullDuplex_tests() #0 {
  %1 = alloca i64, align 8
  %2 = alloca i32*, align 8
  %3 = alloca %struct.TYPE_7__, align 8
  %4 = alloca %struct.TYPE_7__, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_7__, align 8
  store i32* null, i32** %2, align 8
  %8 = call i32 @trace(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  %9 = load i32, i32* @CLSCTX_INPROC_SERVER, align 4
  %10 = bitcast i32** %2 to i8**
  %11 = call i64 @CoCreateInstance(i32* @CLSID_DirectSoundFullDuplex, i32* null, i32 %9, i32* @IID_IDirectSoundFullDuplex, i8** %10)
  store i64 %11, i64* %1, align 8
  %12 = load i64, i64* %1, align 8
  %13 = load i64, i64* @S_OK, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %23, label %15

15:                                               ; preds = %0
  %16 = load i64, i64* %1, align 8
  %17 = load i64, i64* @REGDB_E_CLASSNOTREG, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %23, label %19

19:                                               ; preds = %15
  %20 = load i64, i64* %1, align 8
  %21 = load i64, i64* @CLASS_E_CLASSNOTAVAILABLE, align 8
  %22 = icmp eq i64 %20, %21
  br label %23

23:                                               ; preds = %19, %15, %0
  %24 = phi i1 [ true, %15 ], [ true, %0 ], [ %22, %19 ]
  %25 = zext i1 %24 to i32
  %26 = load i64, i64* %1, align 8
  %27 = call i32 @ok(i32 %25, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.1, i64 0, i64 0), i64 %26)
  %28 = load i64, i64* %1, align 8
  %29 = load i64, i64* @REGDB_E_CLASSNOTREG, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %33

31:                                               ; preds = %23
  %32 = call i32 @trace(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0))
  br label %258

33:                                               ; preds = %23
  %34 = load i64, i64* %1, align 8
  %35 = load i64, i64* @CLASS_E_CLASSNOTAVAILABLE, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %37, label %39

37:                                               ; preds = %33
  %38 = call i32 @trace(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0))
  br label %258

39:                                               ; preds = %33
  br label %40

40:                                               ; preds = %39
  %41 = load i32*, i32** %2, align 8
  %42 = icmp ne i32* %41, null
  br i1 %42, label %43, label %47

43:                                               ; preds = %40
  %44 = load i32*, i32** %2, align 8
  %45 = load i32, i32* @FALSE, align 4
  %46 = call i32 @IDirectSoundFullDuplex_test(i32* %44, i32 %45, i32* null, i32* null)
  br label %47

47:                                               ; preds = %43, %40
  %48 = load i32, i32* @CLSCTX_INPROC_SERVER, align 4
  %49 = bitcast i32** %2 to i8**
  %50 = call i64 @CoCreateInstance(i32* @CLSID_DirectSoundFullDuplex, i32* null, i32 %48, i32* @IID_IDirectSoundFullDuplex, i8** %49)
  store i64 %50, i64* %1, align 8
  %51 = load i64, i64* %1, align 8
  %52 = load i64, i64* @S_OK, align 8
  %53 = icmp eq i64 %51, %52
  %54 = zext i1 %53 to i32
  %55 = load i64, i64* %1, align 8
  %56 = call i32 @ok(i32 %54, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.1, i64 0, i64 0), i64 %55)
  %57 = load i32*, i32** %2, align 8
  %58 = icmp ne i32* %57, null
  br i1 %58, label %59, label %63

59:                                               ; preds = %47
  %60 = load i32*, i32** %2, align 8
  %61 = load i32, i32* @FALSE, align 4
  %62 = call i32 @IDirectSoundFullDuplex_test(i32* %60, i32 %61, i32* @DSDEVID_DefaultCapture, i32* @DSDEVID_DefaultPlayback)
  br label %63

63:                                               ; preds = %59, %47
  %64 = load i32, i32* @CLSCTX_INPROC_SERVER, align 4
  %65 = bitcast i32** %2 to i8**
  %66 = call i64 @CoCreateInstance(i32* @CLSID_DirectSoundFullDuplex, i32* null, i32 %64, i32* @IID_IDirectSoundFullDuplex, i8** %65)
  store i64 %66, i64* %1, align 8
  %67 = load i64, i64* %1, align 8
  %68 = load i64, i64* @S_OK, align 8
  %69 = icmp eq i64 %67, %68
  %70 = zext i1 %69 to i32
  %71 = load i64, i64* %1, align 8
  %72 = call i32 @ok(i32 %70, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.1, i64 0, i64 0), i64 %71)
  %73 = load i32*, i32** %2, align 8
  %74 = icmp ne i32* %73, null
  br i1 %74, label %75, label %79

75:                                               ; preds = %63
  %76 = load i32*, i32** %2, align 8
  %77 = load i32, i32* @FALSE, align 4
  %78 = call i32 @IDirectSoundFullDuplex_test(i32* %76, i32 %77, i32* @DSDEVID_DefaultVoiceCapture, i32* @DSDEVID_DefaultVoicePlayback)
  br label %79

79:                                               ; preds = %75, %63
  %80 = load i32, i32* @CLSCTX_INPROC_SERVER, align 4
  %81 = bitcast i32** %2 to i8**
  %82 = call i64 @CoCreateInstance(i32* @CLSID_DirectSoundFullDuplex, i32* null, i32 %80, i32* @CLSID_DirectSoundPrivate, i8** %81)
  store i64 %82, i64* %1, align 8
  %83 = load i64, i64* %1, align 8
  %84 = load i64, i64* @E_NOINTERFACE, align 8
  %85 = icmp eq i64 %83, %84
  %86 = zext i1 %85 to i32
  %87 = load i64, i64* %1, align 8
  %88 = call i32 @ok(i32 %86, i8* getelementptr inbounds ([99 x i8], [99 x i8]* @.str.4, i64 0, i64 0), i64 %87)
  %89 = call i32 @ZeroMemory(%struct.TYPE_7__* %7, i32 48)
  %90 = load i32, i32* @WAVE_FORMAT_PCM, align 4
  %91 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %7, i32 0, i32 9
  store i32 %90, i32* %91, align 4
  %92 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %7, i32 0, i32 0
  store i32 1, i32* %92, align 8
  %93 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %7, i32 0, i32 1
  store i32 8000, i32* %93, align 4
  %94 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %7, i32 0, i32 2
  store i32 16, i32* %94, align 8
  %95 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %7, i32 0, i32 2
  %96 = load i32, i32* %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %7, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  %99 = mul nsw i32 %96, %98
  %100 = sdiv i32 %99, 8
  %101 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %7, i32 0, i32 3
  store i32 %100, i32* %101, align 4
  %102 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %7, i32 0, i32 1
  %103 = load i32, i32* %102, align 4
  %104 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %7, i32 0, i32 3
  %105 = load i32, i32* %104, align 4
  %106 = mul nsw i32 %103, %105
  %107 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %7, i32 0, i32 4
  store i32 %106, i32* %107, align 8
  %108 = call i32 @ZeroMemory(%struct.TYPE_7__* %3, i32 48)
  %109 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %3, i32 0, i32 5
  store i32 48, i32* %109, align 4
  %110 = load i32, i32* @DSCBCAPS_WAVEMAPPED, align 4
  %111 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %3, i32 0, i32 8
  store i32 %110, i32* %111, align 8
  %112 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %3, i32 0, i32 6
  store i32 8192, i32* %112, align 8
  %113 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %3, i32 0, i32 7
  store %struct.TYPE_7__* %7, %struct.TYPE_7__** %113, align 8
  %114 = call i32 @ZeroMemory(%struct.TYPE_7__* %4, i32 48)
  %115 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %4, i32 0, i32 5
  store i32 48, i32* %115, align 4
  %116 = load i32, i32* @DSBCAPS_GLOBALFOCUS, align 4
  %117 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %4, i32 0, i32 8
  store i32 %116, i32* %117, align 8
  %118 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %4, i32 0, i32 6
  store i32 8192, i32* %118, align 8
  %119 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %4, i32 0, i32 7
  store %struct.TYPE_7__* %7, %struct.TYPE_7__** %119, align 8
  %120 = call i32 (...) @get_hwnd()
  %121 = load i32, i32* @DSSCL_EXCLUSIVE, align 4
  %122 = call i64 @pDirectSoundFullDuplexCreate(i32* null, i32* null, %struct.TYPE_7__* %3, %struct.TYPE_7__* %4, i32 %120, i32 %121, i32** %2, i32* %5, i32* %6, i32* null)
  store i64 %122, i64* %1, align 8
  %123 = load i64, i64* %1, align 8
  %124 = load i64, i64* @DS_OK, align 8
  %125 = icmp eq i64 %123, %124
  br i1 %125, label %142, label %126

126:                                              ; preds = %79
  %127 = load i64, i64* %1, align 8
  %128 = load i64, i64* @DSERR_NODRIVER, align 8
  %129 = icmp eq i64 %127, %128
  br i1 %129, label %142, label %130

130:                                              ; preds = %126
  %131 = load i64, i64* %1, align 8
  %132 = load i64, i64* @DSERR_ALLOCATED, align 8
  %133 = icmp eq i64 %131, %132
  br i1 %133, label %142, label %134

134:                                              ; preds = %130
  %135 = load i64, i64* %1, align 8
  %136 = load i64, i64* @E_FAIL, align 8
  %137 = icmp eq i64 %135, %136
  br i1 %137, label %142, label %138

138:                                              ; preds = %134
  %139 = load i64, i64* %1, align 8
  %140 = load i64, i64* @DSERR_INVALIDCALL, align 8
  %141 = icmp eq i64 %139, %140
  br label %142

142:                                              ; preds = %138, %134, %130, %126, %79
  %143 = phi i1 [ true, %134 ], [ true, %130 ], [ true, %126 ], [ true, %79 ], [ %141, %138 ]
  %144 = zext i1 %143 to i32
  %145 = load i64, i64* %1, align 8
  %146 = call i32 @ok(i32 %144, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.5, i64 0, i64 0), i64 %145)
  %147 = load i64, i64* %1, align 8
  %148 = load i64, i64* @S_OK, align 8
  %149 = icmp eq i64 %147, %148
  br i1 %149, label %150, label %157

150:                                              ; preds = %142
  %151 = load i32*, i32** %2, align 8
  %152 = icmp ne i32* %151, null
  br i1 %152, label %153, label %157

153:                                              ; preds = %150
  %154 = load i32*, i32** %2, align 8
  %155 = load i32, i32* @TRUE, align 4
  %156 = call i32 @IDirectSoundFullDuplex_test(i32* %154, i32 %155, i32* null, i32* null)
  br label %157

157:                                              ; preds = %153, %150, %142
  %158 = call i32 (...) @get_hwnd()
  %159 = load i32, i32* @DSSCL_EXCLUSIVE, align 4
  %160 = call i64 @pDirectSoundFullDuplexCreate(i32* @DSDEVID_DefaultCapture, i32* @DSDEVID_DefaultPlayback, %struct.TYPE_7__* %3, %struct.TYPE_7__* %4, i32 %158, i32 %159, i32** %2, i32* %5, i32* %6, i32* null)
  store i64 %160, i64* %1, align 8
  %161 = load i64, i64* %1, align 8
  %162 = load i64, i64* @DS_OK, align 8
  %163 = icmp eq i64 %161, %162
  br i1 %163, label %180, label %164

164:                                              ; preds = %157
  %165 = load i64, i64* %1, align 8
  %166 = load i64, i64* @DSERR_NODRIVER, align 8
  %167 = icmp eq i64 %165, %166
  br i1 %167, label %180, label %168

168:                                              ; preds = %164
  %169 = load i64, i64* %1, align 8
  %170 = load i64, i64* @DSERR_ALLOCATED, align 8
  %171 = icmp eq i64 %169, %170
  br i1 %171, label %180, label %172

172:                                              ; preds = %168
  %173 = load i64, i64* %1, align 8
  %174 = load i64, i64* @E_FAIL, align 8
  %175 = icmp eq i64 %173, %174
  br i1 %175, label %180, label %176

176:                                              ; preds = %172
  %177 = load i64, i64* %1, align 8
  %178 = load i64, i64* @DSERR_INVALIDCALL, align 8
  %179 = icmp eq i64 %177, %178
  br label %180

180:                                              ; preds = %176, %172, %168, %164, %157
  %181 = phi i1 [ true, %172 ], [ true, %168 ], [ true, %164 ], [ true, %157 ], [ %179, %176 ]
  %182 = zext i1 %181 to i32
  %183 = load i64, i64* %1, align 8
  %184 = call i32 @ok(i32 %182, i8* getelementptr inbounds ([90 x i8], [90 x i8]* @.str.6, i64 0, i64 0), i64 %183)
  %185 = load i64, i64* %1, align 8
  %186 = load i64, i64* @DS_OK, align 8
  %187 = icmp eq i64 %185, %186
  br i1 %187, label %188, label %195

188:                                              ; preds = %180
  %189 = load i32*, i32** %2, align 8
  %190 = icmp ne i32* %189, null
  br i1 %190, label %191, label %195

191:                                              ; preds = %188
  %192 = load i32*, i32** %2, align 8
  %193 = load i32, i32* @TRUE, align 4
  %194 = call i32 @IDirectSoundFullDuplex_test(i32* %192, i32 %193, i32* null, i32* null)
  br label %195

195:                                              ; preds = %191, %188, %180
  %196 = call i32 (...) @get_hwnd()
  %197 = load i32, i32* @DSSCL_EXCLUSIVE, align 4
  %198 = call i64 @pDirectSoundFullDuplexCreate(i32* @DSDEVID_DefaultVoiceCapture, i32* @DSDEVID_DefaultVoicePlayback, %struct.TYPE_7__* %3, %struct.TYPE_7__* %4, i32 %196, i32 %197, i32** %2, i32* %5, i32* %6, i32* null)
  store i64 %198, i64* %1, align 8
  %199 = load i64, i64* %1, align 8
  %200 = load i64, i64* @DS_OK, align 8
  %201 = icmp eq i64 %199, %200
  br i1 %201, label %218, label %202

202:                                              ; preds = %195
  %203 = load i64, i64* %1, align 8
  %204 = load i64, i64* @DSERR_NODRIVER, align 8
  %205 = icmp eq i64 %203, %204
  br i1 %205, label %218, label %206

206:                                              ; preds = %202
  %207 = load i64, i64* %1, align 8
  %208 = load i64, i64* @DSERR_ALLOCATED, align 8
  %209 = icmp eq i64 %207, %208
  br i1 %209, label %218, label %210

210:                                              ; preds = %206
  %211 = load i64, i64* %1, align 8
  %212 = load i64, i64* @E_FAIL, align 8
  %213 = icmp eq i64 %211, %212
  br i1 %213, label %218, label %214

214:                                              ; preds = %210
  %215 = load i64, i64* %1, align 8
  %216 = load i64, i64* @DSERR_INVALIDCALL, align 8
  %217 = icmp eq i64 %215, %216
  br label %218

218:                                              ; preds = %214, %210, %206, %202, %195
  %219 = phi i1 [ true, %210 ], [ true, %206 ], [ true, %202 ], [ true, %195 ], [ %217, %214 ]
  %220 = zext i1 %219 to i32
  %221 = load i64, i64* %1, align 8
  %222 = call i32 @ok(i32 %220, i8* getelementptr inbounds ([100 x i8], [100 x i8]* @.str.7, i64 0, i64 0), i64 %221)
  %223 = load i64, i64* %1, align 8
  %224 = load i64, i64* @DS_OK, align 8
  %225 = icmp eq i64 %223, %224
  br i1 %225, label %226, label %233

226:                                              ; preds = %218
  %227 = load i32*, i32** %2, align 8
  %228 = icmp ne i32* %227, null
  br i1 %228, label %229, label %233

229:                                              ; preds = %226
  %230 = load i32*, i32** %2, align 8
  %231 = load i32, i32* @TRUE, align 4
  %232 = call i32 @IDirectSoundFullDuplex_test(i32* %230, i32 %231, i32* null, i32* null)
  br label %233

233:                                              ; preds = %229, %226, %218
  %234 = call i32 (...) @get_hwnd()
  %235 = load i32, i32* @DSSCL_EXCLUSIVE, align 4
  %236 = call i64 @pDirectSoundFullDuplexCreate(i32* @DSDEVID_DefaultVoicePlayback, i32* @DSDEVID_DefaultVoiceCapture, %struct.TYPE_7__* %3, %struct.TYPE_7__* %4, i32 %234, i32 %235, i32** %2, i32* %5, i32* %6, i32* null)
  store i64 %236, i64* %1, align 8
  %237 = load i64, i64* %1, align 8
  %238 = load i64, i64* @DSERR_NODRIVER, align 8
  %239 = icmp eq i64 %237, %238
  br i1 %239, label %244, label %240

240:                                              ; preds = %233
  %241 = load i64, i64* %1, align 8
  %242 = load i64, i64* @DSERR_INVALIDCALL, align 8
  %243 = icmp eq i64 %241, %242
  br label %244

244:                                              ; preds = %240, %233
  %245 = phi i1 [ true, %233 ], [ %243, %240 ]
  %246 = zext i1 %245 to i32
  %247 = load i64, i64* %1, align 8
  %248 = call i32 @ok(i32 %246, i8* getelementptr inbounds ([112 x i8], [112 x i8]* @.str.8, i64 0, i64 0), i64 %247)
  %249 = load i64, i64* %1, align 8
  %250 = load i64, i64* @DS_OK, align 8
  %251 = icmp eq i64 %249, %250
  br i1 %251, label %252, label %258

252:                                              ; preds = %244
  %253 = load i32*, i32** %2, align 8
  %254 = icmp ne i32* %253, null
  br i1 %254, label %255, label %258

255:                                              ; preds = %252
  %256 = load i32*, i32** %2, align 8
  %257 = call i32 @IDirectSoundFullDuplex_Release(i32* %256)
  br label %258

258:                                              ; preds = %31, %37, %255, %252, %244
  ret void
}

declare dso_local i32 @trace(i8*) #1

declare dso_local i64 @CoCreateInstance(i32*, i32*, i32, i32*, i8**) #1

declare dso_local i32 @ok(i32, i8*, i64) #1

declare dso_local i32 @IDirectSoundFullDuplex_test(i32*, i32, i32*, i32*) #1

declare dso_local i32 @ZeroMemory(%struct.TYPE_7__*, i32) #1

declare dso_local i64 @pDirectSoundFullDuplexCreate(i32*, i32*, %struct.TYPE_7__*, %struct.TYPE_7__*, i32, i32, i32**, i32*, i32*, i32*) #1

declare dso_local i32 @get_hwnd(...) #1

declare dso_local i32 @IDirectSoundFullDuplex_Release(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
