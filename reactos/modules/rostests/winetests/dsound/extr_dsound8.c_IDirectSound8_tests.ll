; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/dsound/extr_dsound8.c_IDirectSound8_tests.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/dsound/extr_dsound8.c_IDirectSound8_tests.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [23 x i8] c"Testing IDirectSound8\0A\00", align 1
@CLSID_DirectSound8 = common dso_local global i32 0, align 4
@CLSCTX_INPROC_SERVER = common dso_local global i32 0, align 4
@IID_IClassFactory = common dso_local global i32 0, align 4
@S_OK = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [70 x i8] c"CoGetClassObject(CLSID_DirectSound8, IID_IClassFactory) failed: %08x\0A\00", align 1
@IID_IUnknown = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [65 x i8] c"CoGetClassObject(CLSID_DirectSound8, IID_IUnknown) failed: %08x\0A\00", align 1
@IID_IDirectSound8 = common dso_local global i32 0, align 4
@REGDB_E_CLASSNOTREG = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [33 x i8] c"CoCreateInstance() failed: %08x\0A\00", align 1
@.str.4 = private unnamed_addr constant [24 x i8] c"  Class Not Registered\0A\00", align 1
@FALSE = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [51 x i8] c"CoCreateInstance(CLSID_DirectSound8) failed: %08x\0A\00", align 1
@DSDEVID_DefaultPlayback = common dso_local global i32 0, align 4
@DSDEVID_DefaultVoicePlayback = common dso_local global i32 0, align 4
@CLSID_DirectSoundPrivate = common dso_local global i32 0, align 4
@E_NOINTERFACE = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [88 x i8] c"CoCreateInstance(CLSID_DirectSound8,CLSID_DirectSoundPrivate) should have failed: %08x\0A\00", align 1
@.str.7 = private unnamed_addr constant [87 x i8] c"CoCreateInstance(CLSID_DirectSoundPrivate,IID_IDirectSound8) should have failed: %08x\0A\00", align 1
@DSERR_NODRIVER = common dso_local global i64 0, align 8
@DSERR_ALLOCATED = common dso_local global i64 0, align 8
@E_FAIL = common dso_local global i64 0, align 8
@.str.8 = private unnamed_addr constant [35 x i8] c"DirectSoundCreate8() failed: %08x\0A\00", align 1
@DS_OK = common dso_local global i64 0, align 8
@TRUE = common dso_local global i32 0, align 4
@DSDEVID_DefaultVoiceCapture = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [74 x i8] c"DirectSoundCreate8(DSDEVID_DefaultVoiceCapture) should have failed: %08x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @IDirectSound8_tests to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @IDirectSound8_tests() #0 {
  %1 = alloca i64, align 8
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  store i32* null, i32** %2, align 8
  store i32* null, i32** %3, align 8
  %4 = call i32 @trace(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %5 = load i32, i32* @CLSCTX_INPROC_SERVER, align 4
  %6 = bitcast i32** %3 to i8**
  %7 = call i64 @CoGetClassObject(i32* @CLSID_DirectSound8, i32 %5, i32* null, i32* @IID_IClassFactory, i8** %6)
  store i64 %7, i64* %1, align 8
  %8 = load i64, i64* %1, align 8
  %9 = load i64, i64* @S_OK, align 8
  %10 = icmp eq i64 %8, %9
  %11 = zext i1 %10 to i32
  %12 = load i64, i64* %1, align 8
  %13 = call i32 @ok(i32 %11, i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.1, i64 0, i64 0), i64 %12)
  %14 = load i32, i32* @CLSCTX_INPROC_SERVER, align 4
  %15 = bitcast i32** %3 to i8**
  %16 = call i64 @CoGetClassObject(i32* @CLSID_DirectSound8, i32 %14, i32* null, i32* @IID_IUnknown, i8** %15)
  store i64 %16, i64* %1, align 8
  %17 = load i64, i64* %1, align 8
  %18 = load i64, i64* @S_OK, align 8
  %19 = icmp eq i64 %17, %18
  %20 = zext i1 %19 to i32
  %21 = load i64, i64* %1, align 8
  %22 = call i32 @ok(i32 %20, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.2, i64 0, i64 0), i64 %21)
  %23 = load i32, i32* @CLSCTX_INPROC_SERVER, align 4
  %24 = bitcast i32** %2 to i8**
  %25 = call i64 @CoCreateInstance(i32* @CLSID_DirectSound8, i32* null, i32 %23, i32* @IID_IDirectSound8, i8** %24)
  store i64 %25, i64* %1, align 8
  %26 = load i64, i64* %1, align 8
  %27 = load i64, i64* @S_OK, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %33, label %29

29:                                               ; preds = %0
  %30 = load i64, i64* %1, align 8
  %31 = load i64, i64* @REGDB_E_CLASSNOTREG, align 8
  %32 = icmp eq i64 %30, %31
  br label %33

33:                                               ; preds = %29, %0
  %34 = phi i1 [ true, %0 ], [ %32, %29 ]
  %35 = zext i1 %34 to i32
  %36 = load i64, i64* %1, align 8
  %37 = call i32 @ok(i32 %35, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0), i64 %36)
  %38 = load i64, i64* %1, align 8
  %39 = load i64, i64* @REGDB_E_CLASSNOTREG, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %41, label %43

41:                                               ; preds = %33
  %42 = call i32 @trace(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0))
  br label %204

43:                                               ; preds = %33
  %44 = load i32*, i32** %2, align 8
  %45 = icmp ne i32* %44, null
  br i1 %45, label %46, label %50

46:                                               ; preds = %43
  %47 = load i32*, i32** %2, align 8
  %48 = load i32, i32* @FALSE, align 4
  %49 = call i32 @IDirectSound8_test(i32* %47, i32 %48, i32* null)
  br label %50

50:                                               ; preds = %46, %43
  %51 = load i32, i32* @CLSCTX_INPROC_SERVER, align 4
  %52 = bitcast i32** %2 to i8**
  %53 = call i64 @CoCreateInstance(i32* @CLSID_DirectSound8, i32* null, i32 %51, i32* @IID_IDirectSound8, i8** %52)
  store i64 %53, i64* %1, align 8
  %54 = load i64, i64* %1, align 8
  %55 = load i64, i64* @S_OK, align 8
  %56 = icmp eq i64 %54, %55
  %57 = zext i1 %56 to i32
  %58 = load i64, i64* %1, align 8
  %59 = call i32 @ok(i32 %57, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.5, i64 0, i64 0), i64 %58)
  %60 = load i32*, i32** %2, align 8
  %61 = icmp ne i32* %60, null
  br i1 %61, label %62, label %66

62:                                               ; preds = %50
  %63 = load i32*, i32** %2, align 8
  %64 = load i32, i32* @FALSE, align 4
  %65 = call i32 @IDirectSound8_test(i32* %63, i32 %64, i32* @DSDEVID_DefaultPlayback)
  br label %66

66:                                               ; preds = %62, %50
  %67 = load i32, i32* @CLSCTX_INPROC_SERVER, align 4
  %68 = bitcast i32** %2 to i8**
  %69 = call i64 @CoCreateInstance(i32* @CLSID_DirectSound8, i32* null, i32 %67, i32* @IID_IDirectSound8, i8** %68)
  store i64 %69, i64* %1, align 8
  %70 = load i64, i64* %1, align 8
  %71 = load i64, i64* @S_OK, align 8
  %72 = icmp eq i64 %70, %71
  %73 = zext i1 %72 to i32
  %74 = load i64, i64* %1, align 8
  %75 = call i32 @ok(i32 %73, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.5, i64 0, i64 0), i64 %74)
  %76 = load i32*, i32** %2, align 8
  %77 = icmp ne i32* %76, null
  br i1 %77, label %78, label %82

78:                                               ; preds = %66
  %79 = load i32*, i32** %2, align 8
  %80 = load i32, i32* @FALSE, align 4
  %81 = call i32 @IDirectSound8_test(i32* %79, i32 %80, i32* @DSDEVID_DefaultVoicePlayback)
  br label %82

82:                                               ; preds = %78, %66
  %83 = load i32, i32* @CLSCTX_INPROC_SERVER, align 4
  %84 = bitcast i32** %2 to i8**
  %85 = call i64 @CoCreateInstance(i32* @CLSID_DirectSound8, i32* null, i32 %83, i32* @CLSID_DirectSoundPrivate, i8** %84)
  store i64 %85, i64* %1, align 8
  %86 = load i64, i64* %1, align 8
  %87 = load i64, i64* @E_NOINTERFACE, align 8
  %88 = icmp eq i64 %86, %87
  %89 = zext i1 %88 to i32
  %90 = load i64, i64* %1, align 8
  %91 = call i32 @ok(i32 %89, i8* getelementptr inbounds ([88 x i8], [88 x i8]* @.str.6, i64 0, i64 0), i64 %90)
  %92 = load i32, i32* @CLSCTX_INPROC_SERVER, align 4
  %93 = bitcast i32** %2 to i8**
  %94 = call i64 @CoCreateInstance(i32* @CLSID_DirectSoundPrivate, i32* null, i32 %92, i32* @IID_IDirectSound8, i8** %93)
  store i64 %94, i64* %1, align 8
  %95 = load i64, i64* %1, align 8
  %96 = load i64, i64* @REGDB_E_CLASSNOTREG, align 8
  %97 = icmp eq i64 %95, %96
  %98 = zext i1 %97 to i32
  %99 = load i64, i64* %1, align 8
  %100 = call i32 @ok(i32 %98, i8* getelementptr inbounds ([87 x i8], [87 x i8]* @.str.7, i64 0, i64 0), i64 %99)
  %101 = call i64 @pDirectSoundCreate8(i32* null, i32** %2, i32* null)
  store i64 %101, i64* %1, align 8
  %102 = load i64, i64* %1, align 8
  %103 = load i64, i64* @S_OK, align 8
  %104 = icmp eq i64 %102, %103
  br i1 %104, label %117, label %105

105:                                              ; preds = %82
  %106 = load i64, i64* %1, align 8
  %107 = load i64, i64* @DSERR_NODRIVER, align 8
  %108 = icmp eq i64 %106, %107
  br i1 %108, label %117, label %109

109:                                              ; preds = %105
  %110 = load i64, i64* %1, align 8
  %111 = load i64, i64* @DSERR_ALLOCATED, align 8
  %112 = icmp eq i64 %110, %111
  br i1 %112, label %117, label %113

113:                                              ; preds = %109
  %114 = load i64, i64* %1, align 8
  %115 = load i64, i64* @E_FAIL, align 8
  %116 = icmp eq i64 %114, %115
  br label %117

117:                                              ; preds = %113, %109, %105, %82
  %118 = phi i1 [ true, %109 ], [ true, %105 ], [ true, %82 ], [ %116, %113 ]
  %119 = zext i1 %118 to i32
  %120 = load i64, i64* %1, align 8
  %121 = call i32 @ok(i32 %119, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.8, i64 0, i64 0), i64 %120)
  %122 = load i64, i64* %1, align 8
  %123 = load i64, i64* @DS_OK, align 8
  %124 = icmp eq i64 %122, %123
  br i1 %124, label %125, label %132

125:                                              ; preds = %117
  %126 = load i32*, i32** %2, align 8
  %127 = icmp ne i32* %126, null
  br i1 %127, label %128, label %132

128:                                              ; preds = %125
  %129 = load i32*, i32** %2, align 8
  %130 = load i32, i32* @TRUE, align 4
  %131 = call i32 @IDirectSound8_test(i32* %129, i32 %130, i32* null)
  br label %132

132:                                              ; preds = %128, %125, %117
  %133 = call i64 @pDirectSoundCreate8(i32* @DSDEVID_DefaultPlayback, i32** %2, i32* null)
  store i64 %133, i64* %1, align 8
  %134 = load i64, i64* %1, align 8
  %135 = load i64, i64* @S_OK, align 8
  %136 = icmp eq i64 %134, %135
  br i1 %136, label %149, label %137

137:                                              ; preds = %132
  %138 = load i64, i64* %1, align 8
  %139 = load i64, i64* @DSERR_NODRIVER, align 8
  %140 = icmp eq i64 %138, %139
  br i1 %140, label %149, label %141

141:                                              ; preds = %137
  %142 = load i64, i64* %1, align 8
  %143 = load i64, i64* @DSERR_ALLOCATED, align 8
  %144 = icmp eq i64 %142, %143
  br i1 %144, label %149, label %145

145:                                              ; preds = %141
  %146 = load i64, i64* %1, align 8
  %147 = load i64, i64* @E_FAIL, align 8
  %148 = icmp eq i64 %146, %147
  br label %149

149:                                              ; preds = %145, %141, %137, %132
  %150 = phi i1 [ true, %141 ], [ true, %137 ], [ true, %132 ], [ %148, %145 ]
  %151 = zext i1 %150 to i32
  %152 = load i64, i64* %1, align 8
  %153 = call i32 @ok(i32 %151, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.8, i64 0, i64 0), i64 %152)
  %154 = load i64, i64* %1, align 8
  %155 = load i64, i64* @DS_OK, align 8
  %156 = icmp eq i64 %154, %155
  br i1 %156, label %157, label %164

157:                                              ; preds = %149
  %158 = load i32*, i32** %2, align 8
  %159 = icmp ne i32* %158, null
  br i1 %159, label %160, label %164

160:                                              ; preds = %157
  %161 = load i32*, i32** %2, align 8
  %162 = load i32, i32* @TRUE, align 4
  %163 = call i32 @IDirectSound8_test(i32* %161, i32 %162, i32* null)
  br label %164

164:                                              ; preds = %160, %157, %149
  %165 = call i64 @pDirectSoundCreate8(i32* @DSDEVID_DefaultVoicePlayback, i32** %2, i32* null)
  store i64 %165, i64* %1, align 8
  %166 = load i64, i64* %1, align 8
  %167 = load i64, i64* @S_OK, align 8
  %168 = icmp eq i64 %166, %167
  br i1 %168, label %181, label %169

169:                                              ; preds = %164
  %170 = load i64, i64* %1, align 8
  %171 = load i64, i64* @DSERR_NODRIVER, align 8
  %172 = icmp eq i64 %170, %171
  br i1 %172, label %181, label %173

173:                                              ; preds = %169
  %174 = load i64, i64* %1, align 8
  %175 = load i64, i64* @DSERR_ALLOCATED, align 8
  %176 = icmp eq i64 %174, %175
  br i1 %176, label %181, label %177

177:                                              ; preds = %173
  %178 = load i64, i64* %1, align 8
  %179 = load i64, i64* @E_FAIL, align 8
  %180 = icmp eq i64 %178, %179
  br label %181

181:                                              ; preds = %177, %173, %169, %164
  %182 = phi i1 [ true, %173 ], [ true, %169 ], [ true, %164 ], [ %180, %177 ]
  %183 = zext i1 %182 to i32
  %184 = load i64, i64* %1, align 8
  %185 = call i32 @ok(i32 %183, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.8, i64 0, i64 0), i64 %184)
  %186 = load i64, i64* %1, align 8
  %187 = load i64, i64* @DS_OK, align 8
  %188 = icmp eq i64 %186, %187
  br i1 %188, label %189, label %196

189:                                              ; preds = %181
  %190 = load i32*, i32** %2, align 8
  %191 = icmp ne i32* %190, null
  br i1 %191, label %192, label %196

192:                                              ; preds = %189
  %193 = load i32*, i32** %2, align 8
  %194 = load i32, i32* @TRUE, align 4
  %195 = call i32 @IDirectSound8_test(i32* %193, i32 %194, i32* null)
  br label %196

196:                                              ; preds = %192, %189, %181
  %197 = call i64 @pDirectSoundCreate8(i32* @DSDEVID_DefaultVoiceCapture, i32** %2, i32* null)
  store i64 %197, i64* %1, align 8
  %198 = load i64, i64* %1, align 8
  %199 = load i64, i64* @DSERR_NODRIVER, align 8
  %200 = icmp eq i64 %198, %199
  %201 = zext i1 %200 to i32
  %202 = load i64, i64* %1, align 8
  %203 = call i32 @ok(i32 %201, i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.9, i64 0, i64 0), i64 %202)
  br label %204

204:                                              ; preds = %196, %41
  ret void
}

declare dso_local i32 @trace(i8*) #1

declare dso_local i64 @CoGetClassObject(i32*, i32, i32*, i32*, i8**) #1

declare dso_local i32 @ok(i32, i8*, i64) #1

declare dso_local i64 @CoCreateInstance(i32*, i32*, i32, i32*, i8**) #1

declare dso_local i32 @IDirectSound8_test(i32*, i32, i32*) #1

declare dso_local i64 @pDirectSoundCreate8(i32*, i32**, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
