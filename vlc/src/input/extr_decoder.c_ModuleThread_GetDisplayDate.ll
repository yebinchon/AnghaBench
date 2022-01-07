; ModuleID = '/home/carl/AnghaBench/vlc/src/input/extr_decoder.c_ModuleThread_GetDisplayDate.c'
source_filename = "/home/carl/AnghaBench/vlc/src/input/extr_decoder.c_ModuleThread_GetDisplayDate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.decoder_owner = type { float, i32, i32, i64, i64 }

@VLC_TICK_INVALID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32, i32)* @ModuleThread_GetDisplayDate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ModuleThread_GetDisplayDate(i32* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.decoder_owner*, align 8
  %9 = alloca float, align 4
  store i32* %0, i32** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %10 = load i32*, i32** %5, align 8
  %11 = call %struct.decoder_owner* @dec_get_owner(i32* %10)
  store %struct.decoder_owner* %11, %struct.decoder_owner** %8, align 8
  %12 = load %struct.decoder_owner*, %struct.decoder_owner** %8, align 8
  %13 = getelementptr inbounds %struct.decoder_owner, %struct.decoder_owner* %12, i32 0, i32 2
  %14 = call i32 @vlc_mutex_lock(i32* %13)
  %15 = load %struct.decoder_owner*, %struct.decoder_owner** %8, align 8
  %16 = getelementptr inbounds %struct.decoder_owner, %struct.decoder_owner* %15, i32 0, i32 4
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %24, label %19

19:                                               ; preds = %3
  %20 = load %struct.decoder_owner*, %struct.decoder_owner** %8, align 8
  %21 = getelementptr inbounds %struct.decoder_owner, %struct.decoder_owner* %20, i32 0, i32 3
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %19, %3
  %25 = load i32, i32* @VLC_TICK_INVALID, align 4
  store i32 %25, i32* %7, align 4
  br label %26

26:                                               ; preds = %24, %19
  %27 = load %struct.decoder_owner*, %struct.decoder_owner** %8, align 8
  %28 = getelementptr inbounds %struct.decoder_owner, %struct.decoder_owner* %27, i32 0, i32 0
  %29 = load float, float* %28, align 8
  store float %29, float* %9, align 4
  %30 = load %struct.decoder_owner*, %struct.decoder_owner** %8, align 8
  %31 = getelementptr inbounds %struct.decoder_owner, %struct.decoder_owner* %30, i32 0, i32 2
  %32 = call i32 @vlc_mutex_unlock(i32* %31)
  %33 = load %struct.decoder_owner*, %struct.decoder_owner** %8, align 8
  %34 = getelementptr inbounds %struct.decoder_owner, %struct.decoder_owner* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %41

37:                                               ; preds = %26
  %38 = load i32, i32* %7, align 4
  %39 = load i32, i32* @VLC_TICK_INVALID, align 4
  %40 = icmp eq i32 %38, %39
  br i1 %40, label %41, label %43

41:                                               ; preds = %37, %26
  %42 = load i32, i32* %7, align 4
  store i32 %42, i32* %4, align 4
  br label %51

43:                                               ; preds = %37
  %44 = load %struct.decoder_owner*, %struct.decoder_owner** %8, align 8
  %45 = getelementptr inbounds %struct.decoder_owner, %struct.decoder_owner* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* %6, align 4
  %48 = load i32, i32* %7, align 4
  %49 = load float, float* %9, align 4
  %50 = call i32 @vlc_clock_ConvertToSystem(i32 %46, i32 %47, i32 %48, float %49)
  store i32 %50, i32* %4, align 4
  br label %51

51:                                               ; preds = %43, %41
  %52 = load i32, i32* %4, align 4
  ret i32 %52
}

declare dso_local %struct.decoder_owner* @dec_get_owner(i32*) #1

declare dso_local i32 @vlc_mutex_lock(i32*) #1

declare dso_local i32 @vlc_mutex_unlock(i32*) #1

declare dso_local i32 @vlc_clock_ConvertToSystem(i32, i32, i32, float) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
