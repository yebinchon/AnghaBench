; ModuleID = '/home/carl/AnghaBench/vlc/src/input/extr_decoder.c_ModuleThread_NewSpuBuffer.c'
source_filename = "/home/carl/AnghaBench/vlc/src/input/extr_decoder.c_ModuleThread_NewSpuBuffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i32, i64 }
%struct.decoder_owner = type { i64, i32, i32, i64, i32, i32*, i32, i32, i64 }

@DECODER_SPU_VOUT_WAIT_DURATION = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"no vout found, dropping subpicture\00", align 1
@VOUT_SPU_CHANNEL_INVALID = common dso_local global i64 0, align 8
@on_vout_stopped = common dso_local global i32 0, align 4
@VLC_VOUT_ORDER_NONE = common dso_local global i32 0, align 4
@on_vout_started = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_4__* (i32*, i32*)* @ModuleThread_NewSpuBuffer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_4__* @ModuleThread_NewSpuBuffer(i32* %0, i32* %1) #0 {
  %3 = alloca %struct.TYPE_4__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.decoder_owner*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_4__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  %11 = load i32*, i32** %4, align 8
  %12 = call %struct.decoder_owner* @dec_get_owner(i32* %11)
  store %struct.decoder_owner* %12, %struct.decoder_owner** %6, align 8
  store i32* null, i32** %7, align 8
  store i32 30, i32* %9, align 4
  br label %13

13:                                               ; preds = %31, %2
  %14 = load i32, i32* %9, align 4
  %15 = add nsw i32 %14, -1
  store i32 %15, i32* %9, align 4
  %16 = icmp ne i32 %14, 0
  br i1 %16, label %17, label %34

17:                                               ; preds = %13
  %18 = load %struct.decoder_owner*, %struct.decoder_owner** %6, align 8
  %19 = getelementptr inbounds %struct.decoder_owner, %struct.decoder_owner* %18, i32 0, i32 8
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %17
  br label %34

23:                                               ; preds = %17
  %24 = load %struct.decoder_owner*, %struct.decoder_owner** %6, align 8
  %25 = getelementptr inbounds %struct.decoder_owner, %struct.decoder_owner* %24, i32 0, i32 7
  %26 = load i32, i32* %25, align 4
  %27 = call i32* @input_resource_HoldVout(i32 %26)
  store i32* %27, i32** %7, align 8
  %28 = load i32*, i32** %7, align 8
  %29 = icmp ne i32* %28, null
  br i1 %29, label %30, label %31

30:                                               ; preds = %23
  br label %34

31:                                               ; preds = %23
  %32 = load i32, i32* @DECODER_SPU_VOUT_WAIT_DURATION, align 4
  %33 = call i32 @vlc_tick_sleep(i32 %32)
  br label %13

34:                                               ; preds = %30, %22, %13
  %35 = load i32*, i32** %7, align 8
  %36 = icmp ne i32* %35, null
  br i1 %36, label %83, label %37

37:                                               ; preds = %34
  %38 = load i32*, i32** %4, align 8
  %39 = call i32 @msg_Warn(i32* %38, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  %40 = load %struct.decoder_owner*, %struct.decoder_owner** %6, align 8
  %41 = getelementptr inbounds %struct.decoder_owner, %struct.decoder_owner* %40, i32 0, i32 5
  %42 = load i32*, i32** %41, align 8
  %43 = icmp ne i32* %42, null
  br i1 %43, label %44, label %82

44:                                               ; preds = %37
  %45 = load %struct.decoder_owner*, %struct.decoder_owner** %6, align 8
  %46 = getelementptr inbounds %struct.decoder_owner, %struct.decoder_owner* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* @VOUT_SPU_CHANNEL_INVALID, align 8
  %49 = icmp ne i64 %47, %48
  %50 = zext i1 %49 to i32
  %51 = call i32 @assert(i32 %50)
  %52 = load %struct.decoder_owner*, %struct.decoder_owner** %6, align 8
  %53 = load i32, i32* @on_vout_stopped, align 4
  %54 = load %struct.decoder_owner*, %struct.decoder_owner** %6, align 8
  %55 = getelementptr inbounds %struct.decoder_owner, %struct.decoder_owner* %54, i32 0, i32 5
  %56 = load i32*, i32** %55, align 8
  %57 = call i32 (%struct.decoder_owner*, i32, i32*, ...) @decoder_Notify(%struct.decoder_owner* %52, i32 %53, i32* %56)
  %58 = load %struct.decoder_owner*, %struct.decoder_owner** %6, align 8
  %59 = getelementptr inbounds %struct.decoder_owner, %struct.decoder_owner* %58, i32 0, i32 4
  %60 = call i32 @vlc_mutex_lock(i32* %59)
  %61 = load %struct.decoder_owner*, %struct.decoder_owner** %6, align 8
  %62 = getelementptr inbounds %struct.decoder_owner, %struct.decoder_owner* %61, i32 0, i32 5
  %63 = load i32*, i32** %62, align 8
  %64 = load %struct.decoder_owner*, %struct.decoder_owner** %6, align 8
  %65 = getelementptr inbounds %struct.decoder_owner, %struct.decoder_owner* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = call i32 @vout_UnregisterSubpictureChannel(i32* %63, i64 %66)
  %68 = load i64, i64* @VOUT_SPU_CHANNEL_INVALID, align 8
  %69 = load %struct.decoder_owner*, %struct.decoder_owner** %6, align 8
  %70 = getelementptr inbounds %struct.decoder_owner, %struct.decoder_owner* %69, i32 0, i32 0
  store i64 %68, i64* %70, align 8
  %71 = load %struct.decoder_owner*, %struct.decoder_owner** %6, align 8
  %72 = getelementptr inbounds %struct.decoder_owner, %struct.decoder_owner* %71, i32 0, i32 5
  %73 = load i32*, i32** %72, align 8
  %74 = call i32 @vout_Release(i32* %73)
  %75 = load %struct.decoder_owner*, %struct.decoder_owner** %6, align 8
  %76 = getelementptr inbounds %struct.decoder_owner, %struct.decoder_owner* %75, i32 0, i32 5
  store i32* null, i32** %76, align 8
  %77 = load %struct.decoder_owner*, %struct.decoder_owner** %6, align 8
  %78 = getelementptr inbounds %struct.decoder_owner, %struct.decoder_owner* %77, i32 0, i32 1
  store i32 0, i32* %78, align 8
  %79 = load %struct.decoder_owner*, %struct.decoder_owner** %6, align 8
  %80 = getelementptr inbounds %struct.decoder_owner, %struct.decoder_owner* %79, i32 0, i32 4
  %81 = call i32 @vlc_mutex_unlock(i32* %80)
  br label %82

82:                                               ; preds = %44, %37
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %3, align 8
  br label %199

83:                                               ; preds = %34
  %84 = load %struct.decoder_owner*, %struct.decoder_owner** %6, align 8
  %85 = getelementptr inbounds %struct.decoder_owner, %struct.decoder_owner* %84, i32 0, i32 5
  %86 = load i32*, i32** %85, align 8
  %87 = load i32*, i32** %7, align 8
  %88 = icmp ne i32* %86, %87
  br i1 %88, label %89, label %175

89:                                               ; preds = %83
  %90 = load %struct.decoder_owner*, %struct.decoder_owner** %6, align 8
  %91 = getelementptr inbounds %struct.decoder_owner, %struct.decoder_owner* %90, i32 0, i32 5
  %92 = load i32*, i32** %91, align 8
  %93 = icmp ne i32* %92, null
  br i1 %93, label %94, label %101

94:                                               ; preds = %89
  %95 = load %struct.decoder_owner*, %struct.decoder_owner** %6, align 8
  %96 = load i32, i32* @on_vout_stopped, align 4
  %97 = load %struct.decoder_owner*, %struct.decoder_owner** %6, align 8
  %98 = getelementptr inbounds %struct.decoder_owner, %struct.decoder_owner* %97, i32 0, i32 5
  %99 = load i32*, i32** %98, align 8
  %100 = call i32 (%struct.decoder_owner*, i32, i32*, ...) @decoder_Notify(%struct.decoder_owner* %95, i32 %96, i32* %99)
  br label %101

101:                                              ; preds = %94, %89
  %102 = load %struct.decoder_owner*, %struct.decoder_owner** %6, align 8
  %103 = getelementptr inbounds %struct.decoder_owner, %struct.decoder_owner* %102, i32 0, i32 4
  %104 = call i32 @vlc_mutex_lock(i32* %103)
  %105 = load %struct.decoder_owner*, %struct.decoder_owner** %6, align 8
  %106 = getelementptr inbounds %struct.decoder_owner, %struct.decoder_owner* %105, i32 0, i32 5
  %107 = load i32*, i32** %106, align 8
  %108 = icmp ne i32* %107, null
  br i1 %108, label %109, label %132

109:                                              ; preds = %101
  %110 = load %struct.decoder_owner*, %struct.decoder_owner** %6, align 8
  %111 = getelementptr inbounds %struct.decoder_owner, %struct.decoder_owner* %110, i32 0, i32 0
  %112 = load i64, i64* %111, align 8
  %113 = load i64, i64* @VOUT_SPU_CHANNEL_INVALID, align 8
  %114 = icmp ne i64 %112, %113
  %115 = zext i1 %114 to i32
  %116 = call i32 @assert(i32 %115)
  %117 = load %struct.decoder_owner*, %struct.decoder_owner** %6, align 8
  %118 = getelementptr inbounds %struct.decoder_owner, %struct.decoder_owner* %117, i32 0, i32 5
  %119 = load i32*, i32** %118, align 8
  %120 = load %struct.decoder_owner*, %struct.decoder_owner** %6, align 8
  %121 = getelementptr inbounds %struct.decoder_owner, %struct.decoder_owner* %120, i32 0, i32 0
  %122 = load i64, i64* %121, align 8
  %123 = call i32 @vout_UnregisterSubpictureChannel(i32* %119, i64 %122)
  %124 = load %struct.decoder_owner*, %struct.decoder_owner** %6, align 8
  %125 = getelementptr inbounds %struct.decoder_owner, %struct.decoder_owner* %124, i32 0, i32 5
  %126 = load i32*, i32** %125, align 8
  %127 = call i32 @vout_Release(i32* %126)
  %128 = load %struct.decoder_owner*, %struct.decoder_owner** %6, align 8
  %129 = getelementptr inbounds %struct.decoder_owner, %struct.decoder_owner* %128, i32 0, i32 5
  store i32* null, i32** %129, align 8
  %130 = load %struct.decoder_owner*, %struct.decoder_owner** %6, align 8
  %131 = getelementptr inbounds %struct.decoder_owner, %struct.decoder_owner* %130, i32 0, i32 1
  store i32 0, i32* %131, align 8
  br label %132

132:                                              ; preds = %109, %101
  %133 = load i32*, i32** %7, align 8
  %134 = load %struct.decoder_owner*, %struct.decoder_owner** %6, align 8
  %135 = getelementptr inbounds %struct.decoder_owner, %struct.decoder_owner* %134, i32 0, i32 6
  %136 = load i32, i32* %135, align 8
  %137 = call i64 @vout_RegisterSubpictureChannelInternal(i32* %133, i32 %136, i32* %10)
  %138 = load %struct.decoder_owner*, %struct.decoder_owner** %6, align 8
  %139 = getelementptr inbounds %struct.decoder_owner, %struct.decoder_owner* %138, i32 0, i32 0
  store i64 %137, i64* %139, align 8
  %140 = load %struct.decoder_owner*, %struct.decoder_owner** %6, align 8
  %141 = getelementptr inbounds %struct.decoder_owner, %struct.decoder_owner* %140, i32 0, i32 3
  store i64 0, i64* %141, align 8
  %142 = load %struct.decoder_owner*, %struct.decoder_owner** %6, align 8
  %143 = getelementptr inbounds %struct.decoder_owner, %struct.decoder_owner* %142, i32 0, i32 0
  %144 = load i64, i64* %143, align 8
  %145 = load i64, i64* @VOUT_SPU_CHANNEL_INVALID, align 8
  %146 = icmp eq i64 %144, %145
  br i1 %146, label %147, label %153

147:                                              ; preds = %132
  %148 = load %struct.decoder_owner*, %struct.decoder_owner** %6, align 8
  %149 = getelementptr inbounds %struct.decoder_owner, %struct.decoder_owner* %148, i32 0, i32 4
  %150 = call i32 @vlc_mutex_unlock(i32* %149)
  %151 = load i32*, i32** %7, align 8
  %152 = call i32 @vout_Release(i32* %151)
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %3, align 8
  br label %199

153:                                              ; preds = %132
  %154 = load i32*, i32** %7, align 8
  %155 = load %struct.decoder_owner*, %struct.decoder_owner** %6, align 8
  %156 = getelementptr inbounds %struct.decoder_owner, %struct.decoder_owner* %155, i32 0, i32 5
  store i32* %154, i32** %156, align 8
  %157 = load %struct.decoder_owner*, %struct.decoder_owner** %6, align 8
  %158 = getelementptr inbounds %struct.decoder_owner, %struct.decoder_owner* %157, i32 0, i32 1
  store i32 1, i32* %158, align 8
  %159 = load i32, i32* %10, align 4
  %160 = load %struct.decoder_owner*, %struct.decoder_owner** %6, align 8
  %161 = getelementptr inbounds %struct.decoder_owner, %struct.decoder_owner* %160, i32 0, i32 2
  store i32 %159, i32* %161, align 4
  %162 = load %struct.decoder_owner*, %struct.decoder_owner** %6, align 8
  %163 = getelementptr inbounds %struct.decoder_owner, %struct.decoder_owner* %162, i32 0, i32 4
  %164 = call i32 @vlc_mutex_unlock(i32* %163)
  %165 = load i32, i32* %10, align 4
  %166 = load i32, i32* @VLC_VOUT_ORDER_NONE, align 4
  %167 = icmp ne i32 %165, %166
  %168 = zext i1 %167 to i32
  %169 = call i32 @assert(i32 %168)
  %170 = load %struct.decoder_owner*, %struct.decoder_owner** %6, align 8
  %171 = load i32, i32* @on_vout_started, align 4
  %172 = load i32*, i32** %7, align 8
  %173 = load i32, i32* %10, align 4
  %174 = call i32 (%struct.decoder_owner*, i32, i32*, ...) @decoder_Notify(%struct.decoder_owner* %170, i32 %171, i32* %172, i32 %173)
  br label %178

175:                                              ; preds = %83
  %176 = load i32*, i32** %7, align 8
  %177 = call i32 @vout_Release(i32* %176)
  br label %178

178:                                              ; preds = %175, %153
  %179 = load i32*, i32** %5, align 8
  %180 = call %struct.TYPE_4__* @subpicture_New(i32* %179)
  store %struct.TYPE_4__* %180, %struct.TYPE_4__** %8, align 8
  %181 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %182 = icmp ne %struct.TYPE_4__* %181, null
  br i1 %182, label %183, label %197

183:                                              ; preds = %178
  %184 = load %struct.decoder_owner*, %struct.decoder_owner** %6, align 8
  %185 = getelementptr inbounds %struct.decoder_owner, %struct.decoder_owner* %184, i32 0, i32 0
  %186 = load i64, i64* %185, align 8
  %187 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %188 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %187, i32 0, i32 0
  store i64 %186, i64* %188, align 8
  %189 = load %struct.decoder_owner*, %struct.decoder_owner** %6, align 8
  %190 = getelementptr inbounds %struct.decoder_owner, %struct.decoder_owner* %189, i32 0, i32 3
  %191 = load i64, i64* %190, align 8
  %192 = add nsw i64 %191, 1
  store i64 %192, i64* %190, align 8
  %193 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %194 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %193, i32 0, i32 2
  store i64 %191, i64* %194, align 8
  %195 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %196 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %195, i32 0, i32 1
  store i32 1, i32* %196, align 8
  br label %197

197:                                              ; preds = %183, %178
  %198 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  store %struct.TYPE_4__* %198, %struct.TYPE_4__** %3, align 8
  br label %199

199:                                              ; preds = %197, %147, %82
  %200 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  ret %struct.TYPE_4__* %200
}

declare dso_local %struct.decoder_owner* @dec_get_owner(i32*) #1

declare dso_local i32* @input_resource_HoldVout(i32) #1

declare dso_local i32 @vlc_tick_sleep(i32) #1

declare dso_local i32 @msg_Warn(i32*, i8*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @decoder_Notify(%struct.decoder_owner*, i32, i32*, ...) #1

declare dso_local i32 @vlc_mutex_lock(i32*) #1

declare dso_local i32 @vout_UnregisterSubpictureChannel(i32*, i64) #1

declare dso_local i32 @vout_Release(i32*) #1

declare dso_local i32 @vlc_mutex_unlock(i32*) #1

declare dso_local i64 @vout_RegisterSubpictureChannelInternal(i32*, i32, i32*) #1

declare dso_local %struct.TYPE_4__* @subpicture_New(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
