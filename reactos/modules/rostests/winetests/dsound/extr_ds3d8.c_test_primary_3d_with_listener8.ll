; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/dsound/extr_ds3d8.c_test_primary_3d_with_listener8.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/dsound/extr_ds3d8.c_test_primary_3d_with_listener8.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32 }

@DS_OK = common dso_local global i64 0, align 8
@DSERR_NODRIVER = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [35 x i8] c"DirectSoundCreate8() failed: %08x\0A\00", align 1
@.str.1 = private unnamed_addr constant [38 x i8] c"IDirectSound8_GetCaps() failed: %08x\0A\00", align 1
@DSSCL_PRIORITY = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [64 x i8] c"IDirectSound8_SetCooperativeLevel(DSSCL_PRIORITY) failed: %08x\0A\00", align 1
@DSBCAPS_PRIMARYBUFFER = common dso_local global i32 0, align 4
@DSBCAPS_CTRL3D = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [77 x i8] c"IDirectSound8_CreateSoundBuffer() failed to create a 3D primary buffer %08x\0A\00", align 1
@IID_IDirectSound3DListener = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [71 x i8] c"IDirectSoundBuffer_QueryInterface() failed to get a 3D listener: %08x\0A\00", align 1
@IID_IDirectSoundBuffer = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [50 x i8] c"IDirectSoundBuffer_QueryInterface() failed: %08x\0A\00", align 1
@.str.6 = private unnamed_addr constant [32 x i8] c"COM interface broken: %p != %p\0A\00", align 1
@.str.7 = private unnamed_addr constant [63 x i8] c"IDirectSoundBuffer_Release() has %d references, should have 1\0A\00", align 1
@FALSE = common dso_local global i32 0, align 4
@winetest_interactive = common dso_local global i64 0, align 8
@DSCAPS_EMULDRIVER = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [76 x i8] c"IDirectSound3DListener_Release() listener has %d references, should have 0\0A\00", align 1
@.str.9 = private unnamed_addr constant [71 x i8] c"IDirectSoundBuffer_Release() primary has %d references, should have 0\0A\00", align 1
@.str.10 = private unnamed_addr constant [58 x i8] c"IDirectSound8_Release() has %d references, should have 0\0A\00", align 1
@DSERR_GENERIC = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32)* @test_primary_3d_with_listener8 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @test_primary_3d_with_listener8(i32 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_6__, align 4
  %8 = alloca %struct.TYPE_6__, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  store i32 %0, i32* %3, align 4
  store i32* null, i32** %5, align 8
  store i32* null, i32** %6, align 8
  %12 = load i32, i32* %3, align 4
  %13 = call i64 @pDirectSoundCreate8(i32 %12, i32** %5, i32* null)
  store i64 %13, i64* %4, align 8
  %14 = load i64, i64* %4, align 8
  %15 = load i64, i64* @DS_OK, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %21, label %17

17:                                               ; preds = %1
  %18 = load i64, i64* %4, align 8
  %19 = load i64, i64* @DSERR_NODRIVER, align 8
  %20 = icmp eq i64 %18, %19
  br label %21

21:                                               ; preds = %17, %1
  %22 = phi i1 [ true, %1 ], [ %20, %17 ]
  %23 = zext i1 %22 to i32
  %24 = load i64, i64* %4, align 8
  %25 = trunc i64 %24 to i32
  %26 = call i32 (i32, i8*, i32, ...) @ok(i32 %23, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %25)
  %27 = load i64, i64* %4, align 8
  %28 = load i64, i64* @DS_OK, align 8
  %29 = icmp ne i64 %27, %28
  br i1 %29, label %30, label %32

30:                                               ; preds = %21
  %31 = load i64, i64* %4, align 8
  store i64 %31, i64* %2, align 8
  br label %229

32:                                               ; preds = %21
  %33 = call i32 @ZeroMemory(%struct.TYPE_6__* %8, i32 8)
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 0
  store i32 8, i32* %34, align 4
  %35 = load i32*, i32** %5, align 8
  %36 = call i64 @IDirectSound8_GetCaps(i32* %35, %struct.TYPE_6__* %8)
  store i64 %36, i64* %4, align 8
  %37 = load i64, i64* %4, align 8
  %38 = load i64, i64* @DS_OK, align 8
  %39 = icmp eq i64 %37, %38
  %40 = zext i1 %39 to i32
  %41 = load i64, i64* %4, align 8
  %42 = trunc i64 %41 to i32
  %43 = call i32 (i32, i8*, i32, ...) @ok(i32 %40, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0), i32 %42)
  %44 = load i64, i64* %4, align 8
  %45 = load i64, i64* @DS_OK, align 8
  %46 = icmp ne i64 %44, %45
  br i1 %46, label %47, label %48

47:                                               ; preds = %32
  br label %215

48:                                               ; preds = %32
  %49 = load i32*, i32** %5, align 8
  %50 = call i32 (...) @get_hwnd()
  %51 = load i32, i32* @DSSCL_PRIORITY, align 4
  %52 = call i64 @IDirectSound8_SetCooperativeLevel(i32* %49, i32 %50, i32 %51)
  store i64 %52, i64* %4, align 8
  %53 = load i64, i64* %4, align 8
  %54 = load i64, i64* @DS_OK, align 8
  %55 = icmp eq i64 %53, %54
  %56 = zext i1 %55 to i32
  %57 = load i64, i64* %4, align 8
  %58 = trunc i64 %57 to i32
  %59 = call i32 (i32, i8*, i32, ...) @ok(i32 %56, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.2, i64 0, i64 0), i32 %58)
  %60 = load i64, i64* %4, align 8
  %61 = load i64, i64* @DS_OK, align 8
  %62 = icmp ne i64 %60, %61
  br i1 %62, label %63, label %64

63:                                               ; preds = %48
  br label %215

64:                                               ; preds = %48
  store i32* null, i32** %6, align 8
  %65 = call i32 @ZeroMemory(%struct.TYPE_6__* %7, i32 8)
  %66 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %7, i32 0, i32 0
  store i32 8, i32* %66, align 4
  %67 = load i32, i32* @DSBCAPS_PRIMARYBUFFER, align 4
  %68 = load i32, i32* @DSBCAPS_CTRL3D, align 4
  %69 = or i32 %67, %68
  %70 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %7, i32 0, i32 1
  store i32 %69, i32* %70, align 4
  %71 = load i32*, i32** %5, align 8
  %72 = call i64 @IDirectSound8_CreateSoundBuffer(i32* %71, %struct.TYPE_6__* %7, i32** %6, i32* null)
  store i64 %72, i64* %4, align 8
  %73 = load i64, i64* %4, align 8
  %74 = load i64, i64* @DS_OK, align 8
  %75 = icmp eq i64 %73, %74
  br i1 %75, label %76, label %79

76:                                               ; preds = %64
  %77 = load i32*, i32** %6, align 8
  %78 = icmp ne i32* %77, null
  br label %79

79:                                               ; preds = %76, %64
  %80 = phi i1 [ false, %64 ], [ %78, %76 ]
  %81 = zext i1 %80 to i32
  %82 = load i64, i64* %4, align 8
  %83 = trunc i64 %82 to i32
  %84 = call i32 (i32, i8*, i32, ...) @ok(i32 %81, i8* getelementptr inbounds ([77 x i8], [77 x i8]* @.str.3, i64 0, i64 0), i32 %83)
  %85 = load i64, i64* %4, align 8
  %86 = load i64, i64* @DS_OK, align 8
  %87 = icmp eq i64 %85, %86
  br i1 %87, label %88, label %214

88:                                               ; preds = %79
  %89 = load i32*, i32** %6, align 8
  %90 = icmp ne i32* %89, null
  br i1 %90, label %91, label %214

91:                                               ; preds = %88
  store i32* null, i32** %10, align 8
  %92 = load i32*, i32** %6, align 8
  %93 = bitcast i32** %10 to i8**
  %94 = call i64 @IDirectSoundBuffer_QueryInterface(i32* %92, i32* @IID_IDirectSound3DListener, i8** %93)
  store i64 %94, i64* %4, align 8
  %95 = load i64, i64* %4, align 8
  %96 = load i64, i64* @DS_OK, align 8
  %97 = icmp eq i64 %95, %96
  br i1 %97, label %98, label %101

98:                                               ; preds = %91
  %99 = load i32*, i32** %10, align 8
  %100 = icmp ne i32* %99, null
  br label %101

101:                                              ; preds = %98, %91
  %102 = phi i1 [ false, %91 ], [ %100, %98 ]
  %103 = zext i1 %102 to i32
  %104 = load i64, i64* %4, align 8
  %105 = trunc i64 %104 to i32
  %106 = call i32 (i32, i8*, i32, ...) @ok(i32 %103, i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.4, i64 0, i64 0), i32 %105)
  %107 = load i64, i64* %4, align 8
  %108 = load i64, i64* @DS_OK, align 8
  %109 = icmp eq i64 %107, %108
  br i1 %109, label %110, label %206

110:                                              ; preds = %101
  %111 = load i32*, i32** %10, align 8
  %112 = icmp ne i32* %111, null
  br i1 %112, label %113, label %206

113:                                              ; preds = %110
  store i32* null, i32** %11, align 8
  %114 = load i32*, i32** %6, align 8
  %115 = bitcast i32** %11 to i8**
  %116 = call i64 @IDirectSoundBuffer_QueryInterface(i32* %114, i32* @IID_IDirectSoundBuffer, i8** %115)
  store i64 %116, i64* %4, align 8
  %117 = load i64, i64* %4, align 8
  %118 = load i64, i64* @DS_OK, align 8
  %119 = icmp eq i64 %117, %118
  br i1 %119, label %120, label %123

120:                                              ; preds = %113
  %121 = load i32*, i32** %11, align 8
  %122 = icmp ne i32* %121, null
  br label %123

123:                                              ; preds = %120, %113
  %124 = phi i1 [ false, %113 ], [ %122, %120 ]
  %125 = zext i1 %124 to i32
  %126 = load i64, i64* %4, align 8
  %127 = trunc i64 %126 to i32
  %128 = call i32 (i32, i8*, i32, ...) @ok(i32 %125, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.5, i64 0, i64 0), i32 %127)
  %129 = load i32*, i32** %11, align 8
  %130 = load i32*, i32** %6, align 8
  %131 = icmp eq i32* %129, %130
  %132 = zext i1 %131 to i32
  %133 = load i32*, i32** %11, align 8
  %134 = ptrtoint i32* %133 to i32
  %135 = load i32*, i32** %6, align 8
  %136 = call i32 (i32, i8*, i32, ...) @ok(i32 %132, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.6, i64 0, i64 0), i32 %134, i32* %135)
  %137 = load i64, i64* %4, align 8
  %138 = load i64, i64* @DS_OK, align 8
  %139 = icmp eq i64 %137, %138
  br i1 %139, label %140, label %198

140:                                              ; preds = %123
  %141 = load i32*, i32** %11, align 8
  %142 = icmp ne i32* %141, null
  br i1 %142, label %143, label %198

143:                                              ; preds = %140
  %144 = load i32*, i32** %11, align 8
  %145 = call i32 @IDirectSoundBuffer_Release(i32* %144)
  store i32 %145, i32* %9, align 4
  %146 = load i32, i32* %9, align 4
  %147 = icmp eq i32 %146, 1
  %148 = zext i1 %147 to i32
  %149 = load i32, i32* %9, align 4
  %150 = call i32 (i32, i8*, i32, ...) @ok(i32 %148, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.7, i64 0, i64 0), i32 %149)
  store i32* null, i32** %11, align 8
  %151 = load i32*, i32** %10, align 8
  %152 = bitcast i32** %11 to i8**
  %153 = call i64 @IDirectSound3DListener_QueryInterface(i32* %151, i32* @IID_IDirectSoundBuffer, i8** %152)
  store i64 %153, i64* %4, align 8
  %154 = load i64, i64* %4, align 8
  %155 = load i64, i64* @DS_OK, align 8
  %156 = icmp eq i64 %154, %155
  br i1 %156, label %157, label %160

157:                                              ; preds = %143
  %158 = load i32*, i32** %11, align 8
  %159 = icmp ne i32* %158, null
  br label %160

160:                                              ; preds = %157, %143
  %161 = phi i1 [ false, %143 ], [ %159, %157 ]
  %162 = zext i1 %161 to i32
  %163 = load i64, i64* %4, align 8
  %164 = trunc i64 %163 to i32
  %165 = call i32 (i32, i8*, i32, ...) @ok(i32 %162, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.5, i64 0, i64 0), i32 %164)
  %166 = load i32*, i32** %11, align 8
  %167 = load i32*, i32** %6, align 8
  %168 = icmp eq i32* %166, %167
  %169 = zext i1 %168 to i32
  %170 = load i32*, i32** %11, align 8
  %171 = ptrtoint i32* %170 to i32
  %172 = load i32*, i32** %6, align 8
  %173 = call i32 (i32, i8*, i32, ...) @ok(i32 %169, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.6, i64 0, i64 0), i32 %171, i32* %172)
  %174 = load i32*, i32** %11, align 8
  %175 = call i32 @IDirectSoundBuffer_Release(i32* %174)
  store i32 %175, i32* %9, align 4
  %176 = load i32, i32* %9, align 4
  %177 = icmp eq i32 %176, 1
  %178 = zext i1 %177 to i32
  %179 = load i32, i32* %9, align 4
  %180 = call i32 (i32, i8*, i32, ...) @ok(i32 %178, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.7, i64 0, i64 0), i32 %179)
  %181 = load i32*, i32** %5, align 8
  %182 = load i32, i32* @FALSE, align 4
  %183 = load i32, i32* @FALSE, align 4
  %184 = load i64, i64* @winetest_interactive, align 8
  %185 = icmp ne i64 %184, 0
  br i1 %185, label %186, label %193

186:                                              ; preds = %160
  %187 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 1
  %188 = load i32, i32* %187, align 4
  %189 = load i32, i32* @DSCAPS_EMULDRIVER, align 4
  %190 = and i32 %188, %189
  %191 = icmp ne i32 %190, 0
  %192 = xor i1 %191, true
  br label %193

193:                                              ; preds = %186, %160
  %194 = phi i1 [ false, %160 ], [ %192, %186 ]
  %195 = zext i1 %194 to i32
  %196 = load i32*, i32** %10, align 8
  %197 = call i32 @test_buffer8(i32* %181, i32** %6, i32 1, i32 %182, i32 0, i32 %183, i32 0, i32 %195, double 1.000000e+00, i32 0, i32* %196, i32 0, i32 0)
  br label %198

198:                                              ; preds = %193, %140, %123
  %199 = load i32*, i32** %10, align 8
  %200 = call i32 @IDirectSound3DListener_Release(i32* %199)
  store i32 %200, i32* %9, align 4
  %201 = load i32, i32* %9, align 4
  %202 = icmp eq i32 %201, 0
  %203 = zext i1 %202 to i32
  %204 = load i32, i32* %9, align 4
  %205 = call i32 (i32, i8*, i32, ...) @ok(i32 %203, i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str.8, i64 0, i64 0), i32 %204)
  br label %206

206:                                              ; preds = %198, %110, %101
  %207 = load i32*, i32** %6, align 8
  %208 = call i32 @IDirectSoundBuffer_Release(i32* %207)
  store i32 %208, i32* %9, align 4
  %209 = load i32, i32* %9, align 4
  %210 = icmp eq i32 %209, 0
  %211 = zext i1 %210 to i32
  %212 = load i32, i32* %9, align 4
  %213 = call i32 (i32, i8*, i32, ...) @ok(i32 %211, i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.9, i64 0, i64 0), i32 %212)
  br label %214

214:                                              ; preds = %206, %88, %79
  br label %215

215:                                              ; preds = %214, %63, %47
  %216 = load i32*, i32** %5, align 8
  %217 = call i32 @IDirectSound8_Release(i32* %216)
  store i32 %217, i32* %9, align 4
  %218 = load i32, i32* %9, align 4
  %219 = icmp eq i32 %218, 0
  %220 = zext i1 %219 to i32
  %221 = load i32, i32* %9, align 4
  %222 = call i32 (i32, i8*, i32, ...) @ok(i32 %220, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.10, i64 0, i64 0), i32 %221)
  %223 = load i32, i32* %9, align 4
  %224 = icmp ne i32 %223, 0
  br i1 %224, label %225, label %227

225:                                              ; preds = %215
  %226 = load i64, i64* @DSERR_GENERIC, align 8
  store i64 %226, i64* %2, align 8
  br label %229

227:                                              ; preds = %215
  %228 = load i64, i64* %4, align 8
  store i64 %228, i64* %2, align 8
  br label %229

229:                                              ; preds = %227, %225, %30
  %230 = load i64, i64* %2, align 8
  ret i64 %230
}

declare dso_local i64 @pDirectSoundCreate8(i32, i32**, i32*) #1

declare dso_local i32 @ok(i32, i8*, i32, ...) #1

declare dso_local i32 @ZeroMemory(%struct.TYPE_6__*, i32) #1

declare dso_local i64 @IDirectSound8_GetCaps(i32*, %struct.TYPE_6__*) #1

declare dso_local i64 @IDirectSound8_SetCooperativeLevel(i32*, i32, i32) #1

declare dso_local i32 @get_hwnd(...) #1

declare dso_local i64 @IDirectSound8_CreateSoundBuffer(i32*, %struct.TYPE_6__*, i32**, i32*) #1

declare dso_local i64 @IDirectSoundBuffer_QueryInterface(i32*, i32*, i8**) #1

declare dso_local i32 @IDirectSoundBuffer_Release(i32*) #1

declare dso_local i64 @IDirectSound3DListener_QueryInterface(i32*, i32*, i8**) #1

declare dso_local i32 @test_buffer8(i32*, i32**, i32, i32, i32, i32, i32, i32, double, i32, i32*, i32, i32) #1

declare dso_local i32 @IDirectSound3DListener_Release(i32*) #1

declare dso_local i32 @IDirectSound8_Release(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
