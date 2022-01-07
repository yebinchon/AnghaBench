; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/dsound/extr_ds3d8.c_test_primary8.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/dsound/extr_ds3d8.c_test_primary8.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32 }

@DS_OK = common dso_local global i32 0, align 4
@DSERR_NODRIVER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"DirectSoundCreate8() failed: %08x\0A\00", align 1
@.str.1 = private unnamed_addr constant [38 x i8] c"IDirectSound8_GetCaps() failed: %08x\0A\00", align 1
@DSSCL_PRIORITY = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [64 x i8] c"IDirectSound8_SetCooperativeLevel(DSSCL_PRIORITY) failed: %08x\0A\00", align 1
@DSBCAPS_PRIMARYBUFFER = common dso_local global i32 0, align 4
@DSBCAPS_CTRLVOLUME = common dso_local global i32 0, align 4
@DSBCAPS_CTRLPAN = common dso_local global i32 0, align 4
@DSERR_CONTROLUNAVAIL = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [75 x i8] c"IDirectSound8_CreateSoundBuffer() failed to create a primary buffer: %08x\0A\00", align 1
@.str.4 = private unnamed_addr constant [14 x i8] c"  No Primary\0A\00", align 1
@TRUE = common dso_local global i32 0, align 4
@winetest_interactive = common dso_local global i64 0, align 8
@DSCAPS_EMULDRIVER = common dso_local global i32 0, align 4
@DSBVOLUME_MAX = common dso_local global i32 0, align 4
@DSBVOLUME_MIN = common dso_local global i32 0, align 4
@DSBPAN_LEFT = common dso_local global i32 0, align 4
@DSBPAN_RIGHT = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [71 x i8] c"IDirectSoundBuffer_Release() primary has %d references, should have 0\0A\00", align 1
@DSSCL_NORMAL = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [62 x i8] c"IDirectSound8_SetCooperativeLevel(DSSCL_NORMAL) failed: %08x\0A\00", align 1
@.str.7 = private unnamed_addr constant [58 x i8] c"IDirectSound8_Release() has %d references, should have 0\0A\00", align 1
@DSERR_GENERIC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @test_primary8 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @test_primary8(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_6__, align 4
  %8 = alloca %struct.TYPE_6__, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32* null, i32** %5, align 8
  store i32* null, i32** %6, align 8
  %13 = load i32, i32* %3, align 4
  %14 = call i32 @pDirectSoundCreate8(i32 %13, i32** %5, i32* null)
  store i32 %14, i32* %4, align 4
  %15 = load i32, i32* %4, align 4
  %16 = load i32, i32* @DS_OK, align 4
  %17 = icmp eq i32 %15, %16
  br i1 %17, label %22, label %18

18:                                               ; preds = %1
  %19 = load i32, i32* %4, align 4
  %20 = load i32, i32* @DSERR_NODRIVER, align 4
  %21 = icmp eq i32 %19, %20
  br label %22

22:                                               ; preds = %18, %1
  %23 = phi i1 [ true, %1 ], [ %21, %18 ]
  %24 = zext i1 %23 to i32
  %25 = load i32, i32* %4, align 4
  %26 = call i32 @ok(i32 %24, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %25)
  %27 = load i32, i32* %4, align 4
  %28 = load i32, i32* @DS_OK, align 4
  %29 = icmp ne i32 %27, %28
  br i1 %29, label %30, label %32

30:                                               ; preds = %22
  %31 = load i32, i32* %4, align 4
  store i32 %31, i32* %2, align 4
  br label %218

32:                                               ; preds = %22
  %33 = call i32 @ZeroMemory(%struct.TYPE_6__* %8, i32 8)
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 0
  store i32 8, i32* %34, align 4
  %35 = load i32*, i32** %5, align 8
  %36 = call i32 @IDirectSound8_GetCaps(i32* %35, %struct.TYPE_6__* %8)
  store i32 %36, i32* %4, align 4
  %37 = load i32, i32* %4, align 4
  %38 = load i32, i32* @DS_OK, align 4
  %39 = icmp eq i32 %37, %38
  %40 = zext i1 %39 to i32
  %41 = load i32, i32* %4, align 4
  %42 = call i32 @ok(i32 %40, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0), i32 %41)
  %43 = load i32, i32* %4, align 4
  %44 = load i32, i32* @DS_OK, align 4
  %45 = icmp ne i32 %43, %44
  br i1 %45, label %46, label %47

46:                                               ; preds = %32
  br label %204

47:                                               ; preds = %32
  %48 = load i32*, i32** %5, align 8
  %49 = call i32 (...) @get_hwnd()
  %50 = load i32, i32* @DSSCL_PRIORITY, align 4
  %51 = call i32 @IDirectSound8_SetCooperativeLevel(i32* %48, i32 %49, i32 %50)
  store i32 %51, i32* %4, align 4
  %52 = load i32, i32* %4, align 4
  %53 = load i32, i32* @DS_OK, align 4
  %54 = icmp eq i32 %52, %53
  %55 = zext i1 %54 to i32
  %56 = load i32, i32* %4, align 4
  %57 = call i32 @ok(i32 %55, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.2, i64 0, i64 0), i32 %56)
  %58 = load i32, i32* %4, align 4
  %59 = load i32, i32* @DS_OK, align 4
  %60 = icmp ne i32 %58, %59
  br i1 %60, label %61, label %62

61:                                               ; preds = %47
  br label %204

62:                                               ; preds = %47
  store i32* null, i32** %6, align 8
  %63 = call i32 @ZeroMemory(%struct.TYPE_6__* %7, i32 8)
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %7, i32 0, i32 0
  store i32 8, i32* %64, align 4
  %65 = load i32, i32* @DSBCAPS_PRIMARYBUFFER, align 4
  %66 = load i32, i32* @DSBCAPS_CTRLVOLUME, align 4
  %67 = or i32 %65, %66
  %68 = load i32, i32* @DSBCAPS_CTRLPAN, align 4
  %69 = or i32 %67, %68
  %70 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %7, i32 0, i32 1
  store i32 %69, i32* %70, align 4
  %71 = load i32*, i32** %5, align 8
  %72 = call i32 @IDirectSound8_CreateSoundBuffer(i32* %71, %struct.TYPE_6__* %7, i32** %6, i32* null)
  store i32 %72, i32* %4, align 4
  %73 = load i32, i32* %4, align 4
  %74 = load i32, i32* @DS_OK, align 4
  %75 = icmp eq i32 %73, %74
  br i1 %75, label %76, label %79

76:                                               ; preds = %62
  %77 = load i32*, i32** %6, align 8
  %78 = icmp ne i32* %77, null
  br i1 %78, label %83, label %79

79:                                               ; preds = %76, %62
  %80 = load i32, i32* %4, align 4
  %81 = load i32, i32* @DSERR_CONTROLUNAVAIL, align 4
  %82 = icmp eq i32 %80, %81
  br label %83

83:                                               ; preds = %79, %76
  %84 = phi i1 [ true, %76 ], [ %82, %79 ]
  %85 = zext i1 %84 to i32
  %86 = load i32, i32* %4, align 4
  %87 = call i32 @ok(i32 %85, i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str.3, i64 0, i64 0), i32 %86)
  %88 = load i32, i32* %4, align 4
  %89 = load i32, i32* @DSERR_CONTROLUNAVAIL, align 4
  %90 = icmp eq i32 %88, %89
  br i1 %90, label %91, label %93

91:                                               ; preds = %83
  %92 = call i32 @trace(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0))
  br label %193

93:                                               ; preds = %83
  %94 = load i32, i32* %4, align 4
  %95 = load i32, i32* @DS_OK, align 4
  %96 = icmp eq i32 %94, %95
  br i1 %96, label %97, label %192

97:                                               ; preds = %93
  %98 = load i32*, i32** %6, align 8
  %99 = icmp ne i32* %98, null
  br i1 %99, label %100, label %192

100:                                              ; preds = %97
  %101 = load i32*, i32** %5, align 8
  %102 = load i32, i32* @TRUE, align 4
  %103 = load i32, i32* @TRUE, align 4
  %104 = load i64, i64* @winetest_interactive, align 8
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %113

106:                                              ; preds = %100
  %107 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 1
  %108 = load i32, i32* %107, align 4
  %109 = load i32, i32* @DSCAPS_EMULDRIVER, align 4
  %110 = and i32 %108, %109
  %111 = icmp ne i32 %110, 0
  %112 = xor i1 %111, true
  br label %113

113:                                              ; preds = %106, %100
  %114 = phi i1 [ false, %100 ], [ %112, %106 ]
  %115 = zext i1 %114 to i32
  %116 = call i32 @test_buffer8(i32* %101, i32** %6, i32 1, i32 %102, i32 0, i32 %103, i32 0, i32 %115, double 1.000000e+00, i32 0, i32* null, i32 0, i32 0)
  %117 = load i64, i64* @winetest_interactive, align 8
  %118 = icmp ne i64 %117, 0
  br i1 %118, label %119, label %184

119:                                              ; preds = %113
  %120 = load i32, i32* @DSBVOLUME_MAX, align 4
  store i32 %120, i32* %11, align 4
  store i32 0, i32* %10, align 4
  br label %121

121:                                              ; preds = %148, %119
  %122 = load i32, i32* %10, align 4
  %123 = icmp slt i32 %122, 6
  br i1 %123, label %124, label %151

124:                                              ; preds = %121
  %125 = load i32*, i32** %5, align 8
  %126 = load i32, i32* @TRUE, align 4
  %127 = load i32, i32* %11, align 4
  %128 = load i32, i32* @TRUE, align 4
  %129 = load i64, i64* @winetest_interactive, align 8
  %130 = icmp ne i64 %129, 0
  br i1 %130, label %131, label %138

131:                                              ; preds = %124
  %132 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 1
  %133 = load i32, i32* %132, align 4
  %134 = load i32, i32* @DSCAPS_EMULDRIVER, align 4
  %135 = and i32 %133, %134
  %136 = icmp ne i32 %135, 0
  %137 = xor i1 %136, true
  br label %138

138:                                              ; preds = %131, %124
  %139 = phi i1 [ false, %124 ], [ %137, %131 ]
  %140 = zext i1 %139 to i32
  %141 = call i32 @test_buffer8(i32* %125, i32** %6, i32 1, i32 %126, i32 %127, i32 %128, i32 0, i32 %140, double 1.000000e+00, i32 0, i32* null, i32 0, i32 0)
  %142 = load i32, i32* @DSBVOLUME_MAX, align 4
  %143 = load i32, i32* @DSBVOLUME_MIN, align 4
  %144 = sub nsw i32 %142, %143
  %145 = sdiv i32 %144, 40
  %146 = load i32, i32* %11, align 4
  %147 = sub nsw i32 %146, %145
  store i32 %147, i32* %11, align 4
  br label %148

148:                                              ; preds = %138
  %149 = load i32, i32* %10, align 4
  %150 = add nsw i32 %149, 1
  store i32 %150, i32* %10, align 4
  br label %121

151:                                              ; preds = %121
  %152 = load i32, i32* @DSBPAN_LEFT, align 4
  store i32 %152, i32* %12, align 4
  store i32 0, i32* %10, align 4
  br label %153

153:                                              ; preds = %180, %151
  %154 = load i32, i32* %10, align 4
  %155 = icmp slt i32 %154, 7
  br i1 %155, label %156, label %183

156:                                              ; preds = %153
  %157 = load i32*, i32** %5, align 8
  %158 = load i32, i32* @TRUE, align 4
  %159 = load i32, i32* @TRUE, align 4
  %160 = load i32, i32* %12, align 4
  %161 = load i64, i64* @winetest_interactive, align 8
  %162 = icmp ne i64 %161, 0
  br i1 %162, label %163, label %170

163:                                              ; preds = %156
  %164 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 1
  %165 = load i32, i32* %164, align 4
  %166 = load i32, i32* @DSCAPS_EMULDRIVER, align 4
  %167 = and i32 %165, %166
  %168 = icmp ne i32 %167, 0
  %169 = xor i1 %168, true
  br label %170

170:                                              ; preds = %163, %156
  %171 = phi i1 [ false, %156 ], [ %169, %163 ]
  %172 = zext i1 %171 to i32
  %173 = call i32 @test_buffer8(i32* %157, i32** %6, i32 1, i32 %158, i32 0, i32 %159, i32 %160, i32 %172, double 1.000000e+00, i32 0, i32* null, i32 0, i32 0)
  %174 = load i32, i32* @DSBPAN_RIGHT, align 4
  %175 = load i32, i32* @DSBPAN_LEFT, align 4
  %176 = sub nsw i32 %174, %175
  %177 = sdiv i32 %176, 6
  %178 = load i32, i32* %12, align 4
  %179 = add nsw i32 %178, %177
  store i32 %179, i32* %12, align 4
  br label %180

180:                                              ; preds = %170
  %181 = load i32, i32* %10, align 4
  %182 = add nsw i32 %181, 1
  store i32 %182, i32* %10, align 4
  br label %153

183:                                              ; preds = %153
  br label %184

184:                                              ; preds = %183, %113
  %185 = load i32*, i32** %6, align 8
  %186 = call i32 @IDirectSoundBuffer_Release(i32* %185)
  store i32 %186, i32* %9, align 4
  %187 = load i32, i32* %9, align 4
  %188 = icmp eq i32 %187, 0
  %189 = zext i1 %188 to i32
  %190 = load i32, i32* %9, align 4
  %191 = call i32 @ok(i32 %189, i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.5, i64 0, i64 0), i32 %190)
  br label %192

192:                                              ; preds = %184, %97, %93
  br label %193

193:                                              ; preds = %192, %91
  %194 = load i32*, i32** %5, align 8
  %195 = call i32 (...) @get_hwnd()
  %196 = load i32, i32* @DSSCL_NORMAL, align 4
  %197 = call i32 @IDirectSound8_SetCooperativeLevel(i32* %194, i32 %195, i32 %196)
  store i32 %197, i32* %4, align 4
  %198 = load i32, i32* %4, align 4
  %199 = load i32, i32* @DS_OK, align 4
  %200 = icmp eq i32 %198, %199
  %201 = zext i1 %200 to i32
  %202 = load i32, i32* %4, align 4
  %203 = call i32 @ok(i32 %201, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.6, i64 0, i64 0), i32 %202)
  br label %204

204:                                              ; preds = %193, %61, %46
  %205 = load i32*, i32** %5, align 8
  %206 = call i32 @IDirectSound8_Release(i32* %205)
  store i32 %206, i32* %9, align 4
  %207 = load i32, i32* %9, align 4
  %208 = icmp eq i32 %207, 0
  %209 = zext i1 %208 to i32
  %210 = load i32, i32* %9, align 4
  %211 = call i32 @ok(i32 %209, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.7, i64 0, i64 0), i32 %210)
  %212 = load i32, i32* %9, align 4
  %213 = icmp ne i32 %212, 0
  br i1 %213, label %214, label %216

214:                                              ; preds = %204
  %215 = load i32, i32* @DSERR_GENERIC, align 4
  store i32 %215, i32* %2, align 4
  br label %218

216:                                              ; preds = %204
  %217 = load i32, i32* %4, align 4
  store i32 %217, i32* %2, align 4
  br label %218

218:                                              ; preds = %216, %214, %30
  %219 = load i32, i32* %2, align 4
  ret i32 %219
}

declare dso_local i32 @pDirectSoundCreate8(i32, i32**, i32*) #1

declare dso_local i32 @ok(i32, i8*, i32) #1

declare dso_local i32 @ZeroMemory(%struct.TYPE_6__*, i32) #1

declare dso_local i32 @IDirectSound8_GetCaps(i32*, %struct.TYPE_6__*) #1

declare dso_local i32 @IDirectSound8_SetCooperativeLevel(i32*, i32, i32) #1

declare dso_local i32 @get_hwnd(...) #1

declare dso_local i32 @IDirectSound8_CreateSoundBuffer(i32*, %struct.TYPE_6__*, i32**, i32*) #1

declare dso_local i32 @trace(i8*) #1

declare dso_local i32 @test_buffer8(i32*, i32**, i32, i32, i32, i32, i32, i32, double, i32, i32*, i32, i32) #1

declare dso_local i32 @IDirectSoundBuffer_Release(i32*) #1

declare dso_local i32 @IDirectSound8_Release(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
