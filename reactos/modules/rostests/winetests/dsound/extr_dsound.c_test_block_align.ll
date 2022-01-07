; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/dsound/extr_dsound.c_test_block_align.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/dsound/extr_dsound.c_test_block_align.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i64, %struct.TYPE_8__*, i32 }
%struct.TYPE_8__ = type { i64, i32 }

@DS_OK = common dso_local global i64 0, align 8
@DSERR_NODRIVER = common dso_local global i64 0, align 8
@DSERR_ALLOCATED = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [34 x i8] c"DirectSoundCreate() failed: %08x\0A\00", align 1
@WAVE_FORMAT_PCM = common dso_local global i32 0, align 4
@DSBCAPS_GETCURRENTPOSITION2 = common dso_local global i32 0, align 4
@DSERR_CONTROLUNAVAIL = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [77 x i8] c"IDirectSound_CreateSoundBuffer() should have returned DS_OK, returned: %08x\0A\00", align 1
@.str.2 = private unnamed_addr constant [73 x i8] c"IDirectSoundBuffer_GetCaps() should have returned DS_OK, returned: %08x\0A\00", align 1
@.str.3 = private unnamed_addr constant [79 x i8] c"Buffer size not a multiple of nBlockAlign: requested %d, got %d, should be %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [35 x i8] c"Could not set position to 0: %08x\0A\00", align 1
@.str.5 = private unnamed_addr constant [30 x i8] c"Could not get position: %08x\0A\00", align 1
@.str.6 = private unnamed_addr constant [35 x i8] c"Could not set position to 1: %08x\0A\00", align 1
@.str.7 = private unnamed_addr constant [34 x i8] c"Could not get new position: %08x\0A\00", align 1
@.str.8 = private unnamed_addr constant [60 x i8] c"Positions not the same! Old position: %d, new position: %d\0A\00", align 1
@.str.9 = private unnamed_addr constant [73 x i8] c"IDirectSoundBuffer_Release() secondary has %d references, should have 0\0A\00", align 1
@.str.10 = private unnamed_addr constant [57 x i8] c"IDirectSound_Release() has %d references, should have 0\0A\00", align 1
@DSERR_GENERIC = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32)* @test_block_align to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @test_block_align(i32 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_9__, align 8
  %8 = alloca %struct.TYPE_9__, align 8
  %9 = alloca %struct.TYPE_8__, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32* null, i32** %5, align 8
  store i32* null, i32** %6, align 8
  %13 = load i32, i32* %3, align 4
  %14 = call i64 @pDirectSoundCreate(i32 %13, i32** %5, i32* null)
  store i64 %14, i64* %4, align 8
  %15 = load i64, i64* %4, align 8
  %16 = load i64, i64* @DS_OK, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %26, label %18

18:                                               ; preds = %1
  %19 = load i64, i64* %4, align 8
  %20 = load i64, i64* @DSERR_NODRIVER, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %26, label %22

22:                                               ; preds = %18
  %23 = load i64, i64* %4, align 8
  %24 = load i64, i64* @DSERR_ALLOCATED, align 8
  %25 = icmp eq i64 %23, %24
  br label %26

26:                                               ; preds = %22, %18, %1
  %27 = phi i1 [ true, %18 ], [ true, %1 ], [ %25, %22 ]
  %28 = zext i1 %27 to i32
  %29 = load i64, i64* %4, align 8
  %30 = trunc i64 %29 to i32
  %31 = call i32 (i32, i8*, i32, ...) @ok(i32 %28, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %30)
  %32 = load i64, i64* %4, align 8
  %33 = load i64, i64* @DS_OK, align 8
  %34 = icmp ne i64 %32, %33
  br i1 %34, label %35, label %37

35:                                               ; preds = %26
  %36 = load i64, i64* %4, align 8
  store i64 %36, i64* %2, align 8
  br label %181

37:                                               ; preds = %26
  %38 = load i32, i32* @WAVE_FORMAT_PCM, align 4
  %39 = call i32 @init_format(%struct.TYPE_8__* %9, i32 %38, i32 11025, i32 16, i32 2)
  %40 = call i32 @ZeroMemory(%struct.TYPE_9__* %7, i32 32)
  %41 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %7, i32 0, i32 0
  store i32 32, i32* %41, align 8
  %42 = load i32, i32* @DSBCAPS_GETCURRENTPOSITION2, align 4
  %43 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %7, i32 0, i32 3
  store i32 %42, i32* %43, align 8
  %44 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %9, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = add nsw i64 %45, 1
  %47 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %7, i32 0, i32 1
  store i64 %46, i64* %47, align 8
  %48 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %7, i32 0, i32 2
  store %struct.TYPE_8__* %9, %struct.TYPE_8__** %48, align 8
  %49 = load i32*, i32** %5, align 8
  %50 = call i64 @IDirectSound_CreateSoundBuffer(i32* %49, %struct.TYPE_9__* %7, i32** %6, i32* null)
  store i64 %50, i64* %4, align 8
  %51 = load i64, i64* %4, align 8
  %52 = load i64, i64* @DS_OK, align 8
  %53 = icmp eq i64 %51, %52
  br i1 %53, label %61, label %54

54:                                               ; preds = %37
  %55 = load i64, i64* %4, align 8
  %56 = load i64, i64* @DSERR_CONTROLUNAVAIL, align 8
  %57 = icmp eq i64 %55, %56
  %58 = zext i1 %57 to i32
  %59 = call i64 @broken(i32 %58)
  %60 = icmp ne i64 %59, 0
  br label %61

61:                                               ; preds = %54, %37
  %62 = phi i1 [ true, %37 ], [ %60, %54 ]
  %63 = zext i1 %62 to i32
  %64 = load i64, i64* %4, align 8
  %65 = trunc i64 %64 to i32
  %66 = call i32 (i32, i8*, i32, ...) @ok(i32 %63, i8* getelementptr inbounds ([77 x i8], [77 x i8]* @.str.1, i64 0, i64 0), i32 %65)
  %67 = load i64, i64* %4, align 8
  %68 = load i64, i64* @DS_OK, align 8
  %69 = icmp eq i64 %67, %68
  br i1 %69, label %70, label %167

70:                                               ; preds = %61
  %71 = load i32*, i32** %6, align 8
  %72 = icmp ne i32* %71, null
  br i1 %72, label %73, label %167

73:                                               ; preds = %70
  %74 = call i32 @ZeroMemory(%struct.TYPE_9__* %8, i32 32)
  %75 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %8, i32 0, i32 0
  store i32 32, i32* %75, align 8
  %76 = load i32*, i32** %6, align 8
  %77 = call i64 @IDirectSoundBuffer_GetCaps(i32* %76, %struct.TYPE_9__* %8)
  store i64 %77, i64* %4, align 8
  %78 = load i64, i64* %4, align 8
  %79 = load i64, i64* @DS_OK, align 8
  %80 = icmp eq i64 %78, %79
  %81 = zext i1 %80 to i32
  %82 = load i64, i64* %4, align 8
  %83 = trunc i64 %82 to i32
  %84 = call i32 (i32, i8*, i32, ...) @ok(i32 %81, i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.2, i64 0, i64 0), i32 %83)
  %85 = load i64, i64* %4, align 8
  %86 = load i64, i64* @DS_OK, align 8
  %87 = icmp eq i64 %85, %86
  br i1 %87, label %88, label %159

88:                                               ; preds = %73
  %89 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %9, i32 0, i32 1
  %90 = load i32, i32* %89, align 8
  %91 = icmp sgt i32 %90, 1
  br i1 %91, label %92, label %159

92:                                               ; preds = %88
  %93 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %8, i32 0, i32 1
  %94 = load i64, i64* %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %9, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %9, i32 0, i32 1
  %98 = load i32, i32* %97, align 8
  %99 = sext i32 %98 to i64
  %100 = add nsw i64 %96, %99
  %101 = icmp eq i64 %94, %100
  %102 = zext i1 %101 to i32
  %103 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %7, i32 0, i32 1
  %104 = load i64, i64* %103, align 8
  %105 = trunc i64 %104 to i32
  %106 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %8, i32 0, i32 1
  %107 = load i64, i64* %106, align 8
  %108 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %9, i32 0, i32 0
  %109 = load i64, i64* %108, align 8
  %110 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %9, i32 0, i32 1
  %111 = load i32, i32* %110, align 8
  %112 = sext i32 %111 to i64
  %113 = add nsw i64 %109, %112
  %114 = call i32 (i32, i8*, i32, ...) @ok(i32 %102, i8* getelementptr inbounds ([79 x i8], [79 x i8]* @.str.3, i64 0, i64 0), i32 %105, i64 %107, i64 %113)
  %115 = load i32*, i32** %6, align 8
  %116 = call i64 @IDirectSoundBuffer_SetCurrentPosition(i32* %115, i32 0)
  store i64 %116, i64* %4, align 8
  %117 = load i64, i64* %4, align 8
  %118 = load i64, i64* @DS_OK, align 8
  %119 = icmp eq i64 %117, %118
  %120 = zext i1 %119 to i32
  %121 = load i64, i64* %4, align 8
  %122 = trunc i64 %121 to i32
  %123 = call i32 (i32, i8*, i32, ...) @ok(i32 %120, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.4, i64 0, i64 0), i32 %122)
  %124 = load i32*, i32** %6, align 8
  %125 = call i64 @IDirectSoundBuffer_GetCurrentPosition(i32* %124, i64* %10, i32* null)
  store i64 %125, i64* %4, align 8
  %126 = load i64, i64* %4, align 8
  %127 = load i64, i64* @DS_OK, align 8
  %128 = icmp eq i64 %126, %127
  %129 = zext i1 %128 to i32
  %130 = load i64, i64* %4, align 8
  %131 = trunc i64 %130 to i32
  %132 = call i32 (i32, i8*, i32, ...) @ok(i32 %129, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.5, i64 0, i64 0), i32 %131)
  %133 = load i32*, i32** %6, align 8
  %134 = call i64 @IDirectSoundBuffer_SetCurrentPosition(i32* %133, i32 1)
  store i64 %134, i64* %4, align 8
  %135 = load i64, i64* %4, align 8
  %136 = load i64, i64* @DS_OK, align 8
  %137 = icmp eq i64 %135, %136
  %138 = zext i1 %137 to i32
  %139 = load i64, i64* %4, align 8
  %140 = trunc i64 %139 to i32
  %141 = call i32 (i32, i8*, i32, ...) @ok(i32 %138, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.6, i64 0, i64 0), i32 %140)
  %142 = load i32*, i32** %6, align 8
  %143 = call i64 @IDirectSoundBuffer_GetCurrentPosition(i32* %142, i64* %11, i32* null)
  store i64 %143, i64* %4, align 8
  %144 = load i64, i64* %4, align 8
  %145 = load i64, i64* @DS_OK, align 8
  %146 = icmp eq i64 %144, %145
  %147 = zext i1 %146 to i32
  %148 = load i64, i64* %4, align 8
  %149 = trunc i64 %148 to i32
  %150 = call i32 (i32, i8*, i32, ...) @ok(i32 %147, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.7, i64 0, i64 0), i32 %149)
  %151 = load i64, i64* %10, align 8
  %152 = load i64, i64* %11, align 8
  %153 = icmp eq i64 %151, %152
  %154 = zext i1 %153 to i32
  %155 = load i64, i64* %10, align 8
  %156 = trunc i64 %155 to i32
  %157 = load i64, i64* %11, align 8
  %158 = call i32 (i32, i8*, i32, ...) @ok(i32 %154, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.8, i64 0, i64 0), i32 %156, i64 %157)
  br label %159

159:                                              ; preds = %92, %88, %73
  %160 = load i32*, i32** %6, align 8
  %161 = call i32 @IDirectSoundBuffer_Release(i32* %160)
  store i32 %161, i32* %12, align 4
  %162 = load i32, i32* %12, align 4
  %163 = icmp eq i32 %162, 0
  %164 = zext i1 %163 to i32
  %165 = load i32, i32* %12, align 4
  %166 = call i32 (i32, i8*, i32, ...) @ok(i32 %164, i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.9, i64 0, i64 0), i32 %165)
  br label %167

167:                                              ; preds = %159, %70, %61
  %168 = load i32*, i32** %5, align 8
  %169 = call i32 @IDirectSound_Release(i32* %168)
  store i32 %169, i32* %12, align 4
  %170 = load i32, i32* %12, align 4
  %171 = icmp eq i32 %170, 0
  %172 = zext i1 %171 to i32
  %173 = load i32, i32* %12, align 4
  %174 = call i32 (i32, i8*, i32, ...) @ok(i32 %172, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.10, i64 0, i64 0), i32 %173)
  %175 = load i32, i32* %12, align 4
  %176 = icmp ne i32 %175, 0
  br i1 %176, label %177, label %179

177:                                              ; preds = %167
  %178 = load i64, i64* @DSERR_GENERIC, align 8
  store i64 %178, i64* %2, align 8
  br label %181

179:                                              ; preds = %167
  %180 = load i64, i64* %4, align 8
  store i64 %180, i64* %2, align 8
  br label %181

181:                                              ; preds = %179, %177, %35
  %182 = load i64, i64* %2, align 8
  ret i64 %182
}

declare dso_local i64 @pDirectSoundCreate(i32, i32**, i32*) #1

declare dso_local i32 @ok(i32, i8*, i32, ...) #1

declare dso_local i32 @init_format(%struct.TYPE_8__*, i32, i32, i32, i32) #1

declare dso_local i32 @ZeroMemory(%struct.TYPE_9__*, i32) #1

declare dso_local i64 @IDirectSound_CreateSoundBuffer(i32*, %struct.TYPE_9__*, i32**, i32*) #1

declare dso_local i64 @broken(i32) #1

declare dso_local i64 @IDirectSoundBuffer_GetCaps(i32*, %struct.TYPE_9__*) #1

declare dso_local i64 @IDirectSoundBuffer_SetCurrentPosition(i32*, i32) #1

declare dso_local i64 @IDirectSoundBuffer_GetCurrentPosition(i32*, i64*, i32*) #1

declare dso_local i32 @IDirectSoundBuffer_Release(i32*) #1

declare dso_local i32 @IDirectSound_Release(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
