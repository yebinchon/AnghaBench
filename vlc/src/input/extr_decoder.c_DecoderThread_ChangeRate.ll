; ModuleID = '/home/carl/AnghaBench/vlc/src/input/extr_decoder.c_DecoderThread_ChangeRate.c'
source_filename = "/home/carl/AnghaBench/vlc/src/input/extr_decoder.c_DecoderThread_ChangeRate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.decoder_owner = type { float, i32, i32, i32*, i32*, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@.str = private unnamed_addr constant [18 x i8] c"changing rate: %f\00", align 1
@VOUT_SPU_CHANNEL_INVALID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.decoder_owner*, float)* @DecoderThread_ChangeRate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @DecoderThread_ChangeRate(%struct.decoder_owner* %0, float %1) #0 {
  %3 = alloca %struct.decoder_owner*, align 8
  %4 = alloca float, align 4
  %5 = alloca %struct.TYPE_5__*, align 8
  store %struct.decoder_owner* %0, %struct.decoder_owner** %3, align 8
  store float %1, float* %4, align 4
  %6 = load %struct.decoder_owner*, %struct.decoder_owner** %3, align 8
  %7 = getelementptr inbounds %struct.decoder_owner, %struct.decoder_owner* %6, i32 0, i32 5
  store %struct.TYPE_5__* %7, %struct.TYPE_5__** %5, align 8
  %8 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %9 = load float, float* %4, align 4
  %10 = call i32 @msg_Dbg(%struct.TYPE_5__* %8, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), float %9)
  %11 = load %struct.decoder_owner*, %struct.decoder_owner** %3, align 8
  %12 = getelementptr inbounds %struct.decoder_owner, %struct.decoder_owner* %11, i32 0, i32 1
  %13 = call i32 @vlc_mutex_lock(i32* %12)
  %14 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  switch i32 %17, label %64 [
    i32 128, label %18
    i32 130, label %30
    i32 129, label %42
  ]

18:                                               ; preds = %2
  %19 = load %struct.decoder_owner*, %struct.decoder_owner** %3, align 8
  %20 = getelementptr inbounds %struct.decoder_owner, %struct.decoder_owner* %19, i32 0, i32 3
  %21 = load i32*, i32** %20, align 8
  %22 = icmp ne i32* %21, null
  br i1 %22, label %23, label %29

23:                                               ; preds = %18
  %24 = load %struct.decoder_owner*, %struct.decoder_owner** %3, align 8
  %25 = getelementptr inbounds %struct.decoder_owner, %struct.decoder_owner* %24, i32 0, i32 3
  %26 = load i32*, i32** %25, align 8
  %27 = load float, float* %4, align 4
  %28 = call i32 @vout_ChangeRate(i32* %26, float %27)
  br label %29

29:                                               ; preds = %23, %18
  br label %66

30:                                               ; preds = %2
  %31 = load %struct.decoder_owner*, %struct.decoder_owner** %3, align 8
  %32 = getelementptr inbounds %struct.decoder_owner, %struct.decoder_owner* %31, i32 0, i32 4
  %33 = load i32*, i32** %32, align 8
  %34 = icmp ne i32* %33, null
  br i1 %34, label %35, label %41

35:                                               ; preds = %30
  %36 = load %struct.decoder_owner*, %struct.decoder_owner** %3, align 8
  %37 = getelementptr inbounds %struct.decoder_owner, %struct.decoder_owner* %36, i32 0, i32 4
  %38 = load i32*, i32** %37, align 8
  %39 = load float, float* %4, align 4
  %40 = call i32 @aout_DecChangeRate(i32* %38, float %39)
  br label %41

41:                                               ; preds = %35, %30
  br label %66

42:                                               ; preds = %2
  %43 = load %struct.decoder_owner*, %struct.decoder_owner** %3, align 8
  %44 = getelementptr inbounds %struct.decoder_owner, %struct.decoder_owner* %43, i32 0, i32 3
  %45 = load i32*, i32** %44, align 8
  %46 = icmp ne i32* %45, null
  br i1 %46, label %47, label %63

47:                                               ; preds = %42
  %48 = load %struct.decoder_owner*, %struct.decoder_owner** %3, align 8
  %49 = getelementptr inbounds %struct.decoder_owner, %struct.decoder_owner* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 8
  %51 = load i32, i32* @VOUT_SPU_CHANNEL_INVALID, align 4
  %52 = icmp ne i32 %50, %51
  %53 = zext i1 %52 to i32
  %54 = call i32 @assert(i32 %53)
  %55 = load %struct.decoder_owner*, %struct.decoder_owner** %3, align 8
  %56 = getelementptr inbounds %struct.decoder_owner, %struct.decoder_owner* %55, i32 0, i32 3
  %57 = load i32*, i32** %56, align 8
  %58 = load %struct.decoder_owner*, %struct.decoder_owner** %3, align 8
  %59 = getelementptr inbounds %struct.decoder_owner, %struct.decoder_owner* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 8
  %61 = load float, float* %4, align 4
  %62 = call i32 @vout_ChangeSpuRate(i32* %57, i32 %60, float %61)
  br label %63

63:                                               ; preds = %47, %42
  br label %66

64:                                               ; preds = %2
  %65 = call i32 (...) @vlc_assert_unreachable()
  br label %66

66:                                               ; preds = %64, %63, %41, %29
  %67 = load float, float* %4, align 4
  %68 = load %struct.decoder_owner*, %struct.decoder_owner** %3, align 8
  %69 = getelementptr inbounds %struct.decoder_owner, %struct.decoder_owner* %68, i32 0, i32 0
  store float %67, float* %69, align 8
  %70 = load %struct.decoder_owner*, %struct.decoder_owner** %3, align 8
  %71 = getelementptr inbounds %struct.decoder_owner, %struct.decoder_owner* %70, i32 0, i32 1
  %72 = call i32 @vlc_mutex_unlock(i32* %71)
  ret void
}

declare dso_local i32 @msg_Dbg(%struct.TYPE_5__*, i8*, float) #1

declare dso_local i32 @vlc_mutex_lock(i32*) #1

declare dso_local i32 @vout_ChangeRate(i32*, float) #1

declare dso_local i32 @aout_DecChangeRate(i32*, float) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @vout_ChangeSpuRate(i32*, i32, float) #1

declare dso_local i32 @vlc_assert_unreachable(...) #1

declare dso_local i32 @vlc_mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
