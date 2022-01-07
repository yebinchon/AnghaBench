; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/dsound/extr_capture.c_IDirectSoundCapture_test.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/dsound/extr_capture.c_IDirectSoundCapture_test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }

@IID_IUnknown = common dso_local global i32 0, align 4
@DS_OK = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [63 x i8] c"IDirectSoundCapture_QueryInterface(IID_IUnknown) failed: %08x\0A\00", align 1
@IID_IDirectSoundCapture = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [74 x i8] c"IDirectSoundCapture_QueryInterface(IID_IDirectSoundCapture) failed: %08x\0A\00", align 1
@FALSE = common dso_local global i64 0, align 8
@DSERR_UNINITIALIZED = common dso_local global i64 0, align 8
@E_INVALIDARG = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [108 x i8] c"IDirectSoundCapture_GetCaps(NULL) should have returned DSERR_UNINITIALIZED or E_INVALIDARG, returned: %08x\0A\00", align 1
@.str.3 = private unnamed_addr constant [88 x i8] c"IDirectSoundCapture_GetCaps() should have returned DSERR_UNINITIALIZED, returned: %08x\0A\00", align 1
@DSERR_NODRIVER = common dso_local global i64 0, align 8
@DSERR_ALLOCATED = common dso_local global i64 0, align 8
@E_FAIL = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [47 x i8] c"IDirectSoundCapture_Initialize() failed: %08x\0A\00", align 1
@.str.5 = private unnamed_addr constant [13 x i8] c"  No Driver\0A\00", align 1
@.str.6 = private unnamed_addr constant [13 x i8] c"  No Device\0A\00", align 1
@.str.7 = private unnamed_addr constant [18 x i8] c"  Already In Use\0A\00", align 1
@DSERR_ALREADYINITIALIZED = common dso_local global i64 0, align 8
@.str.8 = private unnamed_addr constant [86 x i8] c"IDirectSoundCapture_Initialize() should have returned DSERR_ALREADYINITIALIZED: %08x\0A\00", align 1
@DSERR_INVALIDPARAM = common dso_local global i64 0, align 8
@.str.9 = private unnamed_addr constant [91 x i8] c"IDirectSoundCapture_GetCaps(NULL) should have returned DSERR_INVALIDPARAM, returned: %08x\0A\00", align 1
@.str.10 = private unnamed_addr constant [80 x i8] c"IDirectSound_GetCaps() should have returned DSERR_INVALIDPARAM, returned: %08x\0A\00", align 1
@.str.11 = private unnamed_addr constant [44 x i8] c"IDirectSoundCapture_GetCaps() failed: %08x\0A\00", align 1
@.str.12 = private unnamed_addr constant [64 x i8] c"IDirectSoundCapture_Release() has %d references, should have 0\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i64, i32)* @IDirectSoundCapture_test to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @IDirectSoundCapture_test(i32* %0, i64 %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_5__, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  store i32* %0, i32** %4, align 8
  store i64 %1, i64* %5, align 8
  store i32 %2, i32* %6, align 4
  %12 = load i32*, i32** %4, align 8
  %13 = bitcast i32** %10 to i32*
  %14 = call i64 @IDirectSoundCapture_QueryInterface(i32* %12, i32* @IID_IUnknown, i32* %13)
  store i64 %14, i64* %7, align 8
  %15 = load i64, i64* %7, align 8
  %16 = load i64, i64* @DS_OK, align 8
  %17 = icmp eq i64 %15, %16
  %18 = zext i1 %17 to i32
  %19 = load i64, i64* %7, align 8
  %20 = trunc i64 %19 to i32
  %21 = call i32 @ok(i32 %18, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str, i64 0, i64 0), i32 %20)
  %22 = load i64, i64* %7, align 8
  %23 = load i64, i64* @DS_OK, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %28

25:                                               ; preds = %3
  %26 = load i32*, i32** %10, align 8
  %27 = call i32 @IDirectSoundCapture_Release(i32* %26)
  br label %28

28:                                               ; preds = %25, %3
  %29 = load i32*, i32** %4, align 8
  %30 = bitcast i32** %11 to i32*
  %31 = call i64 @IDirectSoundCapture_QueryInterface(i32* %29, i32* @IID_IDirectSoundCapture, i32* %30)
  store i64 %31, i64* %7, align 8
  %32 = load i64, i64* %7, align 8
  %33 = load i64, i64* @DS_OK, align 8
  %34 = icmp eq i64 %32, %33
  %35 = zext i1 %34 to i32
  %36 = load i64, i64* %7, align 8
  %37 = trunc i64 %36 to i32
  %38 = call i32 @ok(i32 %35, i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.1, i64 0, i64 0), i32 %37)
  %39 = load i64, i64* %7, align 8
  %40 = load i64, i64* @DS_OK, align 8
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %42, label %45

42:                                               ; preds = %28
  %43 = load i32*, i32** %11, align 8
  %44 = call i32 @IDirectSoundCapture_Release(i32* %43)
  br label %45

45:                                               ; preds = %42, %28
  %46 = load i64, i64* %5, align 8
  %47 = load i64, i64* @FALSE, align 8
  %48 = icmp eq i64 %46, %47
  br i1 %48, label %49, label %126

49:                                               ; preds = %45
  %50 = load i32*, i32** %4, align 8
  %51 = call i64 @IDirectSoundCapture_GetCaps(i32* %50, %struct.TYPE_5__* null)
  store i64 %51, i64* %7, align 8
  %52 = load i64, i64* %7, align 8
  %53 = load i64, i64* @DSERR_UNINITIALIZED, align 8
  %54 = icmp eq i64 %52, %53
  br i1 %54, label %59, label %55

55:                                               ; preds = %49
  %56 = load i64, i64* %7, align 8
  %57 = load i64, i64* @E_INVALIDARG, align 8
  %58 = icmp eq i64 %56, %57
  br label %59

59:                                               ; preds = %55, %49
  %60 = phi i1 [ true, %49 ], [ %58, %55 ]
  %61 = zext i1 %60 to i32
  %62 = load i64, i64* %7, align 8
  %63 = trunc i64 %62 to i32
  %64 = call i32 @ok(i32 %61, i8* getelementptr inbounds ([108 x i8], [108 x i8]* @.str.2, i64 0, i64 0), i32 %63)
  %65 = load i32*, i32** %4, align 8
  %66 = call i64 @IDirectSoundCapture_GetCaps(i32* %65, %struct.TYPE_5__* %8)
  store i64 %66, i64* %7, align 8
  %67 = load i64, i64* %7, align 8
  %68 = load i64, i64* @DSERR_UNINITIALIZED, align 8
  %69 = icmp eq i64 %67, %68
  %70 = zext i1 %69 to i32
  %71 = load i64, i64* %7, align 8
  %72 = trunc i64 %71 to i32
  %73 = call i32 @ok(i32 %70, i8* getelementptr inbounds ([88 x i8], [88 x i8]* @.str.3, i64 0, i64 0), i32 %72)
  %74 = load i32*, i32** %4, align 8
  %75 = load i32, i32* %6, align 4
  %76 = call i64 @IDirectSoundCapture_Initialize(i32* %74, i32 %75)
  store i64 %76, i64* %7, align 8
  %77 = load i64, i64* %7, align 8
  %78 = load i64, i64* @DS_OK, align 8
  %79 = icmp eq i64 %77, %78
  br i1 %79, label %96, label %80

80:                                               ; preds = %59
  %81 = load i64, i64* %7, align 8
  %82 = load i64, i64* @DSERR_NODRIVER, align 8
  %83 = icmp eq i64 %81, %82
  br i1 %83, label %96, label %84

84:                                               ; preds = %80
  %85 = load i64, i64* %7, align 8
  %86 = load i64, i64* @DSERR_ALLOCATED, align 8
  %87 = icmp eq i64 %85, %86
  br i1 %87, label %96, label %88

88:                                               ; preds = %84
  %89 = load i64, i64* %7, align 8
  %90 = load i64, i64* @E_FAIL, align 8
  %91 = icmp eq i64 %89, %90
  br i1 %91, label %96, label %92

92:                                               ; preds = %88
  %93 = load i64, i64* %7, align 8
  %94 = load i64, i64* @E_INVALIDARG, align 8
  %95 = icmp eq i64 %93, %94
  br label %96

96:                                               ; preds = %92, %88, %84, %80, %59
  %97 = phi i1 [ true, %88 ], [ true, %84 ], [ true, %80 ], [ true, %59 ], [ %95, %92 ]
  %98 = zext i1 %97 to i32
  %99 = load i64, i64* %7, align 8
  %100 = trunc i64 %99 to i32
  %101 = call i32 @ok(i32 %98, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.4, i64 0, i64 0), i32 %100)
  %102 = load i64, i64* %7, align 8
  %103 = load i64, i64* @DSERR_NODRIVER, align 8
  %104 = icmp eq i64 %102, %103
  br i1 %104, label %109, label %105

105:                                              ; preds = %96
  %106 = load i64, i64* %7, align 8
  %107 = load i64, i64* @E_INVALIDARG, align 8
  %108 = icmp eq i64 %106, %107
  br i1 %108, label %109, label %111

109:                                              ; preds = %105, %96
  %110 = call i32 @trace(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i64 0, i64 0))
  br label %166

111:                                              ; preds = %105
  %112 = load i64, i64* %7, align 8
  %113 = load i64, i64* @E_FAIL, align 8
  %114 = icmp eq i64 %112, %113
  br i1 %114, label %115, label %117

115:                                              ; preds = %111
  %116 = call i32 @trace(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.6, i64 0, i64 0))
  br label %166

117:                                              ; preds = %111
  %118 = load i64, i64* %7, align 8
  %119 = load i64, i64* @DSERR_ALLOCATED, align 8
  %120 = icmp eq i64 %118, %119
  br i1 %120, label %121, label %123

121:                                              ; preds = %117
  %122 = call i32 @trace(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.7, i64 0, i64 0))
  br label %166

123:                                              ; preds = %117
  br label %124

124:                                              ; preds = %123
  br label %125

125:                                              ; preds = %124
  br label %126

126:                                              ; preds = %125, %45
  %127 = load i32*, i32** %4, align 8
  %128 = load i32, i32* %6, align 4
  %129 = call i64 @IDirectSoundCapture_Initialize(i32* %127, i32 %128)
  store i64 %129, i64* %7, align 8
  %130 = load i64, i64* %7, align 8
  %131 = load i64, i64* @DSERR_ALREADYINITIALIZED, align 8
  %132 = icmp eq i64 %130, %131
  %133 = zext i1 %132 to i32
  %134 = load i64, i64* %7, align 8
  %135 = trunc i64 %134 to i32
  %136 = call i32 @ok(i32 %133, i8* getelementptr inbounds ([86 x i8], [86 x i8]* @.str.8, i64 0, i64 0), i32 %135)
  %137 = load i32*, i32** %4, align 8
  %138 = call i64 @IDirectSoundCapture_GetCaps(i32* %137, %struct.TYPE_5__* null)
  store i64 %138, i64* %7, align 8
  %139 = load i64, i64* %7, align 8
  %140 = load i64, i64* @DSERR_INVALIDPARAM, align 8
  %141 = icmp eq i64 %139, %140
  %142 = zext i1 %141 to i32
  %143 = load i64, i64* %7, align 8
  %144 = trunc i64 %143 to i32
  %145 = call i32 @ok(i32 %142, i8* getelementptr inbounds ([91 x i8], [91 x i8]* @.str.9, i64 0, i64 0), i32 %144)
  %146 = call i32 @ZeroMemory(%struct.TYPE_5__* %8, i32 4)
  %147 = load i32*, i32** %4, align 8
  %148 = call i64 @IDirectSound_GetCaps(i32* %147, %struct.TYPE_5__* %8)
  store i64 %148, i64* %7, align 8
  %149 = load i64, i64* %7, align 8
  %150 = load i64, i64* @DSERR_INVALIDPARAM, align 8
  %151 = icmp eq i64 %149, %150
  %152 = zext i1 %151 to i32
  %153 = load i64, i64* %7, align 8
  %154 = trunc i64 %153 to i32
  %155 = call i32 @ok(i32 %152, i8* getelementptr inbounds ([80 x i8], [80 x i8]* @.str.10, i64 0, i64 0), i32 %154)
  %156 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 0
  store i32 4, i32* %156, align 4
  %157 = load i32*, i32** %4, align 8
  %158 = call i64 @IDirectSoundCapture_GetCaps(i32* %157, %struct.TYPE_5__* %8)
  store i64 %158, i64* %7, align 8
  %159 = load i64, i64* %7, align 8
  %160 = load i64, i64* @DS_OK, align 8
  %161 = icmp eq i64 %159, %160
  %162 = zext i1 %161 to i32
  %163 = load i64, i64* %7, align 8
  %164 = trunc i64 %163 to i32
  %165 = call i32 @ok(i32 %162, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.11, i64 0, i64 0), i32 %164)
  br label %166

166:                                              ; preds = %126, %121, %115, %109
  %167 = load i32*, i32** %4, align 8
  %168 = call i32 @IDirectSoundCapture_Release(i32* %167)
  store i32 %168, i32* %9, align 4
  %169 = load i32, i32* %9, align 4
  %170 = icmp eq i32 %169, 0
  %171 = zext i1 %170 to i32
  %172 = load i32, i32* %9, align 4
  %173 = call i32 @ok(i32 %171, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.12, i64 0, i64 0), i32 %172)
  ret void
}

declare dso_local i64 @IDirectSoundCapture_QueryInterface(i32*, i32*, i32*) #1

declare dso_local i32 @ok(i32, i8*, i32) #1

declare dso_local i32 @IDirectSoundCapture_Release(i32*) #1

declare dso_local i64 @IDirectSoundCapture_GetCaps(i32*, %struct.TYPE_5__*) #1

declare dso_local i64 @IDirectSoundCapture_Initialize(i32*, i32) #1

declare dso_local i32 @trace(i8*) #1

declare dso_local i32 @ZeroMemory(%struct.TYPE_5__*, i32) #1

declare dso_local i64 @IDirectSound_GetCaps(i32*, %struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
