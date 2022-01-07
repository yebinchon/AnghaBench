; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/dsound/extr_capture.c_test_capture.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/dsound/extr_capture.c_test_capture.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [29 x i8] c"Testing IDirectSoundCapture\0A\00", align 1
@CLSID_DirectSoundCapture = common dso_local global i32 0, align 4
@CLSCTX_INPROC_SERVER = common dso_local global i32 0, align 4
@IID_IClassFactory = common dso_local global i32 0, align 4
@S_OK = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [76 x i8] c"CoGetClassObject(CLSID_DirectSoundCapture, IID_IClassFactory) failed: %08x\0A\00", align 1
@IID_IUnknown = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [71 x i8] c"CoGetClassObject(CLSID_DirectSoundCapture, IID_IUnknown) failed: %08x\0A\00", align 1
@IID_IDirectSoundCapture = common dso_local global i32 0, align 4
@REGDB_E_CLASSNOTREG = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [57 x i8] c"CoCreateInstance(CLSID_DirectSoundCapture) failed: %08x\0A\00", align 1
@.str.4 = private unnamed_addr constant [24 x i8] c"  Class Not Registered\0A\00", align 1
@FALSE = common dso_local global i32 0, align 4
@DSDEVID_DefaultCapture = common dso_local global i32 0, align 4
@DSDEVID_DefaultVoiceCapture = common dso_local global i32 0, align 4
@CLSID_DirectSoundPrivate = common dso_local global i32 0, align 4
@E_NOINTERFACE = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [94 x i8] c"CoCreateInstance(CLSID_DirectSoundCapture,CLSID_DirectSoundPrivate) should have failed: %08x\0A\00", align 1
@DS_OK = common dso_local global i64 0, align 8
@DSERR_NODRIVER = common dso_local global i64 0, align 8
@DSERR_ALLOCATED = common dso_local global i64 0, align 8
@E_FAIL = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [45 x i8] c"DirectSoundCaptureCreate(NULL) failed: %08x\0A\00", align 1
@TRUE = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [63 x i8] c"DirectSoundCaptureCreate(DSDEVID_DefaultCapture) failed: %08x\0A\00", align 1
@.str.8 = private unnamed_addr constant [68 x i8] c"DirectSoundCaptureCreate(DSDEVID_DefaultVoiceCapture) failed: %08x\0A\00", align 1
@DSDEVID_DefaultVoicePlayback = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [81 x i8] c"DirectSoundCaptureCreate(DSDEVID_DefaultVoicePlatback) should have failed: %08x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_capture to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_capture() #0 {
  %1 = alloca i64, align 8
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  store i32* null, i32** %2, align 8
  store i32* null, i32** %3, align 8
  %4 = call i32 @trace(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %5 = load i32, i32* @CLSCTX_INPROC_SERVER, align 4
  %6 = bitcast i32** %3 to i8**
  %7 = call i64 @CoGetClassObject(i32* @CLSID_DirectSoundCapture, i32 %5, i32* null, i32* @IID_IClassFactory, i8** %6)
  store i64 %7, i64* %1, align 8
  %8 = load i64, i64* %1, align 8
  %9 = load i64, i64* @S_OK, align 8
  %10 = icmp eq i64 %8, %9
  %11 = zext i1 %10 to i32
  %12 = load i64, i64* %1, align 8
  %13 = call i32 @ok(i32 %11, i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str.1, i64 0, i64 0), i64 %12)
  %14 = load i32, i32* @CLSCTX_INPROC_SERVER, align 4
  %15 = bitcast i32** %3 to i8**
  %16 = call i64 @CoGetClassObject(i32* @CLSID_DirectSoundCapture, i32 %14, i32* null, i32* @IID_IUnknown, i8** %15)
  store i64 %16, i64* %1, align 8
  %17 = load i64, i64* %1, align 8
  %18 = load i64, i64* @S_OK, align 8
  %19 = icmp eq i64 %17, %18
  %20 = zext i1 %19 to i32
  %21 = load i64, i64* %1, align 8
  %22 = call i32 @ok(i32 %20, i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.2, i64 0, i64 0), i64 %21)
  %23 = load i32, i32* @CLSCTX_INPROC_SERVER, align 4
  %24 = bitcast i32** %2 to i8**
  %25 = call i64 @CoCreateInstance(i32* @CLSID_DirectSoundCapture, i32* null, i32 %23, i32* @IID_IDirectSoundCapture, i8** %24)
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
  %37 = call i32 @ok(i32 %35, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.3, i64 0, i64 0), i64 %36)
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
  %49 = call i32 @IDirectSoundCapture_test(i32* %47, i32 %48, i32* null)
  br label %50

50:                                               ; preds = %46, %43
  %51 = load i32, i32* @CLSCTX_INPROC_SERVER, align 4
  %52 = bitcast i32** %2 to i8**
  %53 = call i64 @CoCreateInstance(i32* @CLSID_DirectSoundCapture, i32* null, i32 %51, i32* @IID_IDirectSoundCapture, i8** %52)
  store i64 %53, i64* %1, align 8
  %54 = load i64, i64* %1, align 8
  %55 = load i64, i64* @S_OK, align 8
  %56 = icmp eq i64 %54, %55
  %57 = zext i1 %56 to i32
  %58 = load i64, i64* %1, align 8
  %59 = call i32 @ok(i32 %57, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.3, i64 0, i64 0), i64 %58)
  %60 = load i32*, i32** %2, align 8
  %61 = icmp ne i32* %60, null
  br i1 %61, label %62, label %66

62:                                               ; preds = %50
  %63 = load i32*, i32** %2, align 8
  %64 = load i32, i32* @FALSE, align 4
  %65 = call i32 @IDirectSoundCapture_test(i32* %63, i32 %64, i32* @DSDEVID_DefaultCapture)
  br label %66

66:                                               ; preds = %62, %50
  %67 = load i32, i32* @CLSCTX_INPROC_SERVER, align 4
  %68 = bitcast i32** %2 to i8**
  %69 = call i64 @CoCreateInstance(i32* @CLSID_DirectSoundCapture, i32* null, i32 %67, i32* @IID_IDirectSoundCapture, i8** %68)
  store i64 %69, i64* %1, align 8
  %70 = load i64, i64* %1, align 8
  %71 = load i64, i64* @S_OK, align 8
  %72 = icmp eq i64 %70, %71
  %73 = zext i1 %72 to i32
  %74 = load i64, i64* %1, align 8
  %75 = call i32 @ok(i32 %73, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.3, i64 0, i64 0), i64 %74)
  %76 = load i32*, i32** %2, align 8
  %77 = icmp ne i32* %76, null
  br i1 %77, label %78, label %82

78:                                               ; preds = %66
  %79 = load i32*, i32** %2, align 8
  %80 = load i32, i32* @FALSE, align 4
  %81 = call i32 @IDirectSoundCapture_test(i32* %79, i32 %80, i32* @DSDEVID_DefaultVoiceCapture)
  br label %82

82:                                               ; preds = %78, %66
  %83 = load i32, i32* @CLSCTX_INPROC_SERVER, align 4
  %84 = bitcast i32** %2 to i8**
  %85 = call i64 @CoCreateInstance(i32* @CLSID_DirectSoundCapture, i32* null, i32 %83, i32* @CLSID_DirectSoundPrivate, i8** %84)
  store i64 %85, i64* %1, align 8
  %86 = load i64, i64* %1, align 8
  %87 = load i64, i64* @E_NOINTERFACE, align 8
  %88 = icmp eq i64 %86, %87
  %89 = zext i1 %88 to i32
  %90 = load i64, i64* %1, align 8
  %91 = call i32 @ok(i32 %89, i8* getelementptr inbounds ([94 x i8], [94 x i8]* @.str.5, i64 0, i64 0), i64 %90)
  %92 = call i64 @pDirectSoundCaptureCreate(i32* null, i32** %2, i32* null)
  store i64 %92, i64* %1, align 8
  %93 = load i64, i64* %1, align 8
  %94 = load i64, i64* @DS_OK, align 8
  %95 = icmp eq i64 %93, %94
  br i1 %95, label %108, label %96

96:                                               ; preds = %82
  %97 = load i64, i64* %1, align 8
  %98 = load i64, i64* @DSERR_NODRIVER, align 8
  %99 = icmp eq i64 %97, %98
  br i1 %99, label %108, label %100

100:                                              ; preds = %96
  %101 = load i64, i64* %1, align 8
  %102 = load i64, i64* @DSERR_ALLOCATED, align 8
  %103 = icmp eq i64 %101, %102
  br i1 %103, label %108, label %104

104:                                              ; preds = %100
  %105 = load i64, i64* %1, align 8
  %106 = load i64, i64* @E_FAIL, align 8
  %107 = icmp eq i64 %105, %106
  br label %108

108:                                              ; preds = %104, %100, %96, %82
  %109 = phi i1 [ true, %100 ], [ true, %96 ], [ true, %82 ], [ %107, %104 ]
  %110 = zext i1 %109 to i32
  %111 = load i64, i64* %1, align 8
  %112 = call i32 @ok(i32 %110, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.6, i64 0, i64 0), i64 %111)
  %113 = load i64, i64* %1, align 8
  %114 = load i64, i64* @S_OK, align 8
  %115 = icmp eq i64 %113, %114
  br i1 %115, label %116, label %123

116:                                              ; preds = %108
  %117 = load i32*, i32** %2, align 8
  %118 = icmp ne i32* %117, null
  br i1 %118, label %119, label %123

119:                                              ; preds = %116
  %120 = load i32*, i32** %2, align 8
  %121 = load i32, i32* @TRUE, align 4
  %122 = call i32 @IDirectSoundCapture_test(i32* %120, i32 %121, i32* null)
  br label %123

123:                                              ; preds = %119, %116, %108
  %124 = call i64 @pDirectSoundCaptureCreate(i32* @DSDEVID_DefaultCapture, i32** %2, i32* null)
  store i64 %124, i64* %1, align 8
  %125 = load i64, i64* %1, align 8
  %126 = load i64, i64* @DS_OK, align 8
  %127 = icmp eq i64 %125, %126
  br i1 %127, label %140, label %128

128:                                              ; preds = %123
  %129 = load i64, i64* %1, align 8
  %130 = load i64, i64* @DSERR_NODRIVER, align 8
  %131 = icmp eq i64 %129, %130
  br i1 %131, label %140, label %132

132:                                              ; preds = %128
  %133 = load i64, i64* %1, align 8
  %134 = load i64, i64* @DSERR_ALLOCATED, align 8
  %135 = icmp eq i64 %133, %134
  br i1 %135, label %140, label %136

136:                                              ; preds = %132
  %137 = load i64, i64* %1, align 8
  %138 = load i64, i64* @E_FAIL, align 8
  %139 = icmp eq i64 %137, %138
  br label %140

140:                                              ; preds = %136, %132, %128, %123
  %141 = phi i1 [ true, %132 ], [ true, %128 ], [ true, %123 ], [ %139, %136 ]
  %142 = zext i1 %141 to i32
  %143 = load i64, i64* %1, align 8
  %144 = call i32 @ok(i32 %142, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.7, i64 0, i64 0), i64 %143)
  %145 = load i64, i64* %1, align 8
  %146 = load i64, i64* @DS_OK, align 8
  %147 = icmp eq i64 %145, %146
  br i1 %147, label %148, label %155

148:                                              ; preds = %140
  %149 = load i32*, i32** %2, align 8
  %150 = icmp ne i32* %149, null
  br i1 %150, label %151, label %155

151:                                              ; preds = %148
  %152 = load i32*, i32** %2, align 8
  %153 = load i32, i32* @TRUE, align 4
  %154 = call i32 @IDirectSoundCapture_test(i32* %152, i32 %153, i32* null)
  br label %155

155:                                              ; preds = %151, %148, %140
  %156 = call i64 @pDirectSoundCaptureCreate(i32* @DSDEVID_DefaultVoiceCapture, i32** %2, i32* null)
  store i64 %156, i64* %1, align 8
  %157 = load i64, i64* %1, align 8
  %158 = load i64, i64* @DS_OK, align 8
  %159 = icmp eq i64 %157, %158
  br i1 %159, label %172, label %160

160:                                              ; preds = %155
  %161 = load i64, i64* %1, align 8
  %162 = load i64, i64* @DSERR_NODRIVER, align 8
  %163 = icmp eq i64 %161, %162
  br i1 %163, label %172, label %164

164:                                              ; preds = %160
  %165 = load i64, i64* %1, align 8
  %166 = load i64, i64* @DSERR_ALLOCATED, align 8
  %167 = icmp eq i64 %165, %166
  br i1 %167, label %172, label %168

168:                                              ; preds = %164
  %169 = load i64, i64* %1, align 8
  %170 = load i64, i64* @E_FAIL, align 8
  %171 = icmp eq i64 %169, %170
  br label %172

172:                                              ; preds = %168, %164, %160, %155
  %173 = phi i1 [ true, %164 ], [ true, %160 ], [ true, %155 ], [ %171, %168 ]
  %174 = zext i1 %173 to i32
  %175 = load i64, i64* %1, align 8
  %176 = call i32 @ok(i32 %174, i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.8, i64 0, i64 0), i64 %175)
  %177 = load i64, i64* %1, align 8
  %178 = load i64, i64* @DS_OK, align 8
  %179 = icmp eq i64 %177, %178
  br i1 %179, label %180, label %187

180:                                              ; preds = %172
  %181 = load i32*, i32** %2, align 8
  %182 = icmp ne i32* %181, null
  br i1 %182, label %183, label %187

183:                                              ; preds = %180
  %184 = load i32*, i32** %2, align 8
  %185 = load i32, i32* @TRUE, align 4
  %186 = call i32 @IDirectSoundCapture_test(i32* %184, i32 %185, i32* null)
  br label %187

187:                                              ; preds = %183, %180, %172
  %188 = call i64 @pDirectSoundCaptureCreate(i32* @DSDEVID_DefaultVoicePlayback, i32** %2, i32* null)
  store i64 %188, i64* %1, align 8
  %189 = load i64, i64* %1, align 8
  %190 = load i64, i64* @DSERR_NODRIVER, align 8
  %191 = icmp eq i64 %189, %190
  %192 = zext i1 %191 to i32
  %193 = load i64, i64* %1, align 8
  %194 = call i32 @ok(i32 %192, i8* getelementptr inbounds ([81 x i8], [81 x i8]* @.str.9, i64 0, i64 0), i64 %193)
  %195 = load i64, i64* %1, align 8
  %196 = load i64, i64* @DS_OK, align 8
  %197 = icmp eq i64 %195, %196
  br i1 %197, label %198, label %204

198:                                              ; preds = %187
  %199 = load i32*, i32** %2, align 8
  %200 = icmp ne i32* %199, null
  br i1 %200, label %201, label %204

201:                                              ; preds = %198
  %202 = load i32*, i32** %2, align 8
  %203 = call i32 @IDirectSoundCapture_Release(i32* %202)
  br label %204

204:                                              ; preds = %41, %201, %198, %187
  ret void
}

declare dso_local i32 @trace(i8*) #1

declare dso_local i64 @CoGetClassObject(i32*, i32, i32*, i32*, i8**) #1

declare dso_local i32 @ok(i32, i8*, i64) #1

declare dso_local i64 @CoCreateInstance(i32*, i32*, i32, i32*, i8**) #1

declare dso_local i32 @IDirectSoundCapture_test(i32*, i32, i32*) #1

declare dso_local i64 @pDirectSoundCaptureCreate(i32*, i32**, i32*) #1

declare dso_local i32 @IDirectSoundCapture_Release(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
