; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/dsound/extr_dsound.c_IDirectSound_tests.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/dsound/extr_dsound.c_IDirectSound_tests.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [22 x i8] c"Testing IDirectSound\0A\00", align 1
@CLSID_DirectSound = common dso_local global i32 0, align 4
@CLSCTX_INPROC_SERVER = common dso_local global i32 0, align 4
@IID_IClassFactory = common dso_local global i32 0, align 4
@S_OK = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [69 x i8] c"CoGetClassObject(CLSID_DirectSound, IID_IClassFactory) failed: %08x\0A\00", align 1
@IID_IUnknown = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [64 x i8] c"CoGetClassObject(CLSID_DirectSound, IID_IUnknown) failed: %08x\0A\00", align 1
@IID_IDirectSound = common dso_local global i32 0, align 4
@CLASS_E_NOAGGREGATION = common dso_local global i64 0, align 8
@DSERR_INVALIDPARAM = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [76 x i8] c"DirectMusicPerformance create failed: %08x, expected CLASS_E_NOAGGREGATION\0A\00", align 1
@.str.4 = private unnamed_addr constant [50 x i8] c"CoCreateInstance(CLSID_DirectSound) failed: %08x\0A\00", align 1
@FALSE = common dso_local global i32 0, align 4
@DSDEVID_DefaultPlayback = common dso_local global i32 0, align 4
@DSDEVID_DefaultVoicePlayback = common dso_local global i32 0, align 4
@CLSID_DirectSoundPrivate = common dso_local global i32 0, align 4
@E_NOINTERFACE = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [87 x i8] c"CoCreateInstance(CLSID_DirectSound,CLSID_DirectSoundPrivate) should have failed: %08x\0A\00", align 1
@REGDB_E_CLASSNOTREG = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [86 x i8] c"CoCreateInstance(CLSID_DirectSoundPrivate,IID_IDirectSound) should have failed: %08x\0A\00", align 1
@DS_OK = common dso_local global i64 0, align 8
@DSERR_NODRIVER = common dso_local global i64 0, align 8
@DSERR_ALLOCATED = common dso_local global i64 0, align 8
@E_FAIL = common dso_local global i64 0, align 8
@.str.7 = private unnamed_addr constant [38 x i8] c"DirectSoundCreate(NULL) failed: %08x\0A\00", align 1
@TRUE = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [57 x i8] c"DirectSoundCreate(DSDEVID_DefaultPlayback) failed: %08x\0A\00", align 1
@.str.9 = private unnamed_addr constant [62 x i8] c"DirectSoundCreate(DSDEVID_DefaultVoicePlayback) failed: %08x\0A\00", align 1
@DSDEVID_DefaultVoiceCapture = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [73 x i8] c"DirectSoundCreate(DSDEVID_DefaultVoiceCapture) should have failed: %08x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @IDirectSound_tests to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @IDirectSound_tests() #0 {
  %1 = alloca i64, align 8
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  store i32* inttoptr (i64 3735928559 to i32*), i32** %2, align 8
  store i32* null, i32** %3, align 8
  %4 = call i32 @trace(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %5 = load i32, i32* @CLSCTX_INPROC_SERVER, align 4
  %6 = bitcast i32** %3 to i8**
  %7 = call i64 @CoGetClassObject(i32* @CLSID_DirectSound, i32 %5, i32* null, i32* @IID_IClassFactory, i8** %6)
  store i64 %7, i64* %1, align 8
  %8 = load i64, i64* %1, align 8
  %9 = load i64, i64* @S_OK, align 8
  %10 = icmp eq i64 %8, %9
  %11 = zext i1 %10 to i32
  %12 = load i64, i64* %1, align 8
  %13 = call i32 @ok(i32 %11, i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.1, i64 0, i64 0), i64 %12)
  %14 = load i32, i32* @CLSCTX_INPROC_SERVER, align 4
  %15 = bitcast i32** %3 to i8**
  %16 = call i64 @CoGetClassObject(i32* @CLSID_DirectSound, i32 %14, i32* null, i32* @IID_IUnknown, i8** %15)
  store i64 %16, i64* %1, align 8
  %17 = load i64, i64* %1, align 8
  %18 = load i64, i64* @S_OK, align 8
  %19 = icmp eq i64 %17, %18
  %20 = zext i1 %19 to i32
  %21 = load i64, i64* %1, align 8
  %22 = call i32 @ok(i32 %20, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.2, i64 0, i64 0), i64 %21)
  %23 = bitcast i32** %2 to i32*
  %24 = load i32, i32* @CLSCTX_INPROC_SERVER, align 4
  %25 = bitcast i32** %2 to i8**
  %26 = call i64 @CoCreateInstance(i32* @CLSID_DirectSound, i32* %23, i32 %24, i32* @IID_IDirectSound, i8** %25)
  store i64 %26, i64* %1, align 8
  %27 = load i64, i64* %1, align 8
  %28 = load i64, i64* @CLASS_E_NOAGGREGATION, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %37, label %30

30:                                               ; preds = %0
  %31 = load i64, i64* %1, align 8
  %32 = load i64, i64* @DSERR_INVALIDPARAM, align 8
  %33 = icmp eq i64 %31, %32
  %34 = zext i1 %33 to i32
  %35 = call i64 @broken(i32 %34)
  %36 = icmp ne i64 %35, 0
  br label %37

37:                                               ; preds = %30, %0
  %38 = phi i1 [ true, %0 ], [ %36, %30 ]
  %39 = zext i1 %38 to i32
  %40 = load i64, i64* %1, align 8
  %41 = call i32 @ok(i32 %39, i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str.3, i64 0, i64 0), i64 %40)
  %42 = load i32, i32* @CLSCTX_INPROC_SERVER, align 4
  %43 = bitcast i32** %2 to i8**
  %44 = call i64 @CoCreateInstance(i32* @CLSID_DirectSound, i32* null, i32 %42, i32* @IID_IDirectSound, i8** %43)
  store i64 %44, i64* %1, align 8
  %45 = load i64, i64* %1, align 8
  %46 = load i64, i64* @S_OK, align 8
  %47 = icmp eq i64 %45, %46
  %48 = zext i1 %47 to i32
  %49 = load i64, i64* %1, align 8
  %50 = call i32 @ok(i32 %48, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.4, i64 0, i64 0), i64 %49)
  %51 = load i32*, i32** %2, align 8
  %52 = icmp ne i32* %51, null
  br i1 %52, label %53, label %57

53:                                               ; preds = %37
  %54 = load i32*, i32** %2, align 8
  %55 = load i32, i32* @FALSE, align 4
  %56 = call i32 @IDirectSound_test(i32* %54, i32 %55, i32* null)
  br label %57

57:                                               ; preds = %53, %37
  %58 = load i32, i32* @CLSCTX_INPROC_SERVER, align 4
  %59 = bitcast i32** %2 to i8**
  %60 = call i64 @CoCreateInstance(i32* @CLSID_DirectSound, i32* null, i32 %58, i32* @IID_IDirectSound, i8** %59)
  store i64 %60, i64* %1, align 8
  %61 = load i64, i64* %1, align 8
  %62 = load i64, i64* @S_OK, align 8
  %63 = icmp eq i64 %61, %62
  %64 = zext i1 %63 to i32
  %65 = load i64, i64* %1, align 8
  %66 = call i32 @ok(i32 %64, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.4, i64 0, i64 0), i64 %65)
  %67 = load i32*, i32** %2, align 8
  %68 = icmp ne i32* %67, null
  br i1 %68, label %69, label %73

69:                                               ; preds = %57
  %70 = load i32*, i32** %2, align 8
  %71 = load i32, i32* @FALSE, align 4
  %72 = call i32 @IDirectSound_test(i32* %70, i32 %71, i32* @DSDEVID_DefaultPlayback)
  br label %73

73:                                               ; preds = %69, %57
  %74 = load i32, i32* @CLSCTX_INPROC_SERVER, align 4
  %75 = bitcast i32** %2 to i8**
  %76 = call i64 @CoCreateInstance(i32* @CLSID_DirectSound, i32* null, i32 %74, i32* @IID_IDirectSound, i8** %75)
  store i64 %76, i64* %1, align 8
  %77 = load i64, i64* %1, align 8
  %78 = load i64, i64* @S_OK, align 8
  %79 = icmp eq i64 %77, %78
  %80 = zext i1 %79 to i32
  %81 = load i64, i64* %1, align 8
  %82 = call i32 @ok(i32 %80, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.4, i64 0, i64 0), i64 %81)
  %83 = load i32*, i32** %2, align 8
  %84 = icmp ne i32* %83, null
  br i1 %84, label %85, label %89

85:                                               ; preds = %73
  %86 = load i32*, i32** %2, align 8
  %87 = load i32, i32* @FALSE, align 4
  %88 = call i32 @IDirectSound_test(i32* %86, i32 %87, i32* @DSDEVID_DefaultVoicePlayback)
  br label %89

89:                                               ; preds = %85, %73
  %90 = load i32, i32* @CLSCTX_INPROC_SERVER, align 4
  %91 = bitcast i32** %2 to i8**
  %92 = call i64 @CoCreateInstance(i32* @CLSID_DirectSound, i32* null, i32 %90, i32* @CLSID_DirectSoundPrivate, i8** %91)
  store i64 %92, i64* %1, align 8
  %93 = load i64, i64* %1, align 8
  %94 = load i64, i64* @E_NOINTERFACE, align 8
  %95 = icmp eq i64 %93, %94
  %96 = zext i1 %95 to i32
  %97 = load i64, i64* %1, align 8
  %98 = call i32 @ok(i32 %96, i8* getelementptr inbounds ([87 x i8], [87 x i8]* @.str.5, i64 0, i64 0), i64 %97)
  %99 = load i32, i32* @CLSCTX_INPROC_SERVER, align 4
  %100 = bitcast i32** %2 to i8**
  %101 = call i64 @CoCreateInstance(i32* @CLSID_DirectSoundPrivate, i32* null, i32 %99, i32* @IID_IDirectSound, i8** %100)
  store i64 %101, i64* %1, align 8
  %102 = load i64, i64* %1, align 8
  %103 = load i64, i64* @REGDB_E_CLASSNOTREG, align 8
  %104 = icmp eq i64 %102, %103
  %105 = zext i1 %104 to i32
  %106 = load i64, i64* %1, align 8
  %107 = call i32 @ok(i32 %105, i8* getelementptr inbounds ([86 x i8], [86 x i8]* @.str.6, i64 0, i64 0), i64 %106)
  %108 = call i64 @pDirectSoundCreate(i32* null, i32** %2, i32* null)
  store i64 %108, i64* %1, align 8
  %109 = load i64, i64* %1, align 8
  %110 = load i64, i64* @DS_OK, align 8
  %111 = icmp eq i64 %109, %110
  br i1 %111, label %124, label %112

112:                                              ; preds = %89
  %113 = load i64, i64* %1, align 8
  %114 = load i64, i64* @DSERR_NODRIVER, align 8
  %115 = icmp eq i64 %113, %114
  br i1 %115, label %124, label %116

116:                                              ; preds = %112
  %117 = load i64, i64* %1, align 8
  %118 = load i64, i64* @DSERR_ALLOCATED, align 8
  %119 = icmp eq i64 %117, %118
  br i1 %119, label %124, label %120

120:                                              ; preds = %116
  %121 = load i64, i64* %1, align 8
  %122 = load i64, i64* @E_FAIL, align 8
  %123 = icmp eq i64 %121, %122
  br label %124

124:                                              ; preds = %120, %116, %112, %89
  %125 = phi i1 [ true, %116 ], [ true, %112 ], [ true, %89 ], [ %123, %120 ]
  %126 = zext i1 %125 to i32
  %127 = load i64, i64* %1, align 8
  %128 = call i32 @ok(i32 %126, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.7, i64 0, i64 0), i64 %127)
  %129 = load i64, i64* %1, align 8
  %130 = load i64, i64* @S_OK, align 8
  %131 = icmp eq i64 %129, %130
  br i1 %131, label %132, label %139

132:                                              ; preds = %124
  %133 = load i32*, i32** %2, align 8
  %134 = icmp ne i32* %133, null
  br i1 %134, label %135, label %139

135:                                              ; preds = %132
  %136 = load i32*, i32** %2, align 8
  %137 = load i32, i32* @TRUE, align 4
  %138 = call i32 @IDirectSound_test(i32* %136, i32 %137, i32* null)
  br label %139

139:                                              ; preds = %135, %132, %124
  %140 = call i64 @pDirectSoundCreate(i32* @DSDEVID_DefaultPlayback, i32** %2, i32* null)
  store i64 %140, i64* %1, align 8
  %141 = load i64, i64* %1, align 8
  %142 = load i64, i64* @DS_OK, align 8
  %143 = icmp eq i64 %141, %142
  br i1 %143, label %156, label %144

144:                                              ; preds = %139
  %145 = load i64, i64* %1, align 8
  %146 = load i64, i64* @DSERR_NODRIVER, align 8
  %147 = icmp eq i64 %145, %146
  br i1 %147, label %156, label %148

148:                                              ; preds = %144
  %149 = load i64, i64* %1, align 8
  %150 = load i64, i64* @DSERR_ALLOCATED, align 8
  %151 = icmp eq i64 %149, %150
  br i1 %151, label %156, label %152

152:                                              ; preds = %148
  %153 = load i64, i64* %1, align 8
  %154 = load i64, i64* @E_FAIL, align 8
  %155 = icmp eq i64 %153, %154
  br label %156

156:                                              ; preds = %152, %148, %144, %139
  %157 = phi i1 [ true, %148 ], [ true, %144 ], [ true, %139 ], [ %155, %152 ]
  %158 = zext i1 %157 to i32
  %159 = load i64, i64* %1, align 8
  %160 = call i32 @ok(i32 %158, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.8, i64 0, i64 0), i64 %159)
  %161 = load i64, i64* %1, align 8
  %162 = load i64, i64* @DS_OK, align 8
  %163 = icmp eq i64 %161, %162
  br i1 %163, label %164, label %171

164:                                              ; preds = %156
  %165 = load i32*, i32** %2, align 8
  %166 = icmp ne i32* %165, null
  br i1 %166, label %167, label %171

167:                                              ; preds = %164
  %168 = load i32*, i32** %2, align 8
  %169 = load i32, i32* @TRUE, align 4
  %170 = call i32 @IDirectSound_test(i32* %168, i32 %169, i32* null)
  br label %171

171:                                              ; preds = %167, %164, %156
  %172 = call i64 @pDirectSoundCreate(i32* @DSDEVID_DefaultVoicePlayback, i32** %2, i32* null)
  store i64 %172, i64* %1, align 8
  %173 = load i64, i64* %1, align 8
  %174 = load i64, i64* @DS_OK, align 8
  %175 = icmp eq i64 %173, %174
  br i1 %175, label %188, label %176

176:                                              ; preds = %171
  %177 = load i64, i64* %1, align 8
  %178 = load i64, i64* @DSERR_NODRIVER, align 8
  %179 = icmp eq i64 %177, %178
  br i1 %179, label %188, label %180

180:                                              ; preds = %176
  %181 = load i64, i64* %1, align 8
  %182 = load i64, i64* @DSERR_ALLOCATED, align 8
  %183 = icmp eq i64 %181, %182
  br i1 %183, label %188, label %184

184:                                              ; preds = %180
  %185 = load i64, i64* %1, align 8
  %186 = load i64, i64* @E_FAIL, align 8
  %187 = icmp eq i64 %185, %186
  br label %188

188:                                              ; preds = %184, %180, %176, %171
  %189 = phi i1 [ true, %180 ], [ true, %176 ], [ true, %171 ], [ %187, %184 ]
  %190 = zext i1 %189 to i32
  %191 = load i64, i64* %1, align 8
  %192 = call i32 @ok(i32 %190, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.9, i64 0, i64 0), i64 %191)
  %193 = load i64, i64* %1, align 8
  %194 = load i64, i64* @DS_OK, align 8
  %195 = icmp eq i64 %193, %194
  br i1 %195, label %196, label %203

196:                                              ; preds = %188
  %197 = load i32*, i32** %2, align 8
  %198 = icmp ne i32* %197, null
  br i1 %198, label %199, label %203

199:                                              ; preds = %196
  %200 = load i32*, i32** %2, align 8
  %201 = load i32, i32* @TRUE, align 4
  %202 = call i32 @IDirectSound_test(i32* %200, i32 %201, i32* null)
  br label %203

203:                                              ; preds = %199, %196, %188
  %204 = call i64 @pDirectSoundCreate(i32* @DSDEVID_DefaultVoiceCapture, i32** %2, i32* null)
  store i64 %204, i64* %1, align 8
  %205 = load i64, i64* %1, align 8
  %206 = load i64, i64* @DSERR_NODRIVER, align 8
  %207 = icmp eq i64 %205, %206
  %208 = zext i1 %207 to i32
  %209 = load i64, i64* %1, align 8
  %210 = call i32 @ok(i32 %208, i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.10, i64 0, i64 0), i64 %209)
  %211 = load i64, i64* %1, align 8
  %212 = load i64, i64* @DS_OK, align 8
  %213 = icmp eq i64 %211, %212
  br i1 %213, label %214, label %220

214:                                              ; preds = %203
  %215 = load i32*, i32** %2, align 8
  %216 = icmp ne i32* %215, null
  br i1 %216, label %217, label %220

217:                                              ; preds = %214
  %218 = load i32*, i32** %2, align 8
  %219 = call i32 @IDirectSound_Release(i32* %218)
  br label %220

220:                                              ; preds = %217, %214, %203
  ret void
}

declare dso_local i32 @trace(i8*) #1

declare dso_local i64 @CoGetClassObject(i32*, i32, i32*, i32*, i8**) #1

declare dso_local i32 @ok(i32, i8*, i64) #1

declare dso_local i64 @CoCreateInstance(i32*, i32*, i32, i32*, i8**) #1

declare dso_local i64 @broken(i32) #1

declare dso_local i32 @IDirectSound_test(i32*, i32, i32*) #1

declare dso_local i64 @pDirectSoundCreate(i32*, i32**, i32*) #1

declare dso_local i32 @IDirectSound_Release(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
