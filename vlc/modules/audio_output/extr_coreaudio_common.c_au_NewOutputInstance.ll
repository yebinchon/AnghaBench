; ModuleID = '/home/carl/AnghaBench/vlc/modules/audio_output/extr_coreaudio_common.c_au_NewOutputInstance.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/audio_output/extr_coreaudio_common.c_au_NewOutputInstance.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32, i32, i32 }

@kAudioUnitManufacturer_Apple = common dso_local global i32 0, align 4
@kAudioUnitType_Output = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [50 x i8] c"cannot find any AudioComponent, PCM output failed\00", align 1
@noErr = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [46 x i8] c"cannot open AudioComponent, PCM output failed\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @au_NewOutputInstance(i32* %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_3__, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 0
  store i32 0, i32* %10, align 4
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 1
  store i32 0, i32* %11, align 4
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 2
  %13 = load i32, i32* @kAudioUnitManufacturer_Apple, align 4
  store i32 %13, i32* %12, align 4
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 3
  %15 = load i32, i32* %5, align 4
  store i32 %15, i32* %14, align 4
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 4
  %17 = load i32, i32* @kAudioUnitType_Output, align 4
  store i32 %17, i32* %16, align 4
  %18 = call i32* @AudioComponentFindNext(i32* null, %struct.TYPE_3__* %6)
  store i32* %18, i32** %7, align 8
  %19 = load i32*, i32** %7, align 8
  %20 = icmp eq i32* %19, null
  br i1 %20, label %21, label %24

21:                                               ; preds = %2
  %22 = load i32*, i32** %4, align 8
  %23 = call i32 @msg_Err(i32* %22, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0))
  store i32* null, i32** %3, align 8
  br label %34

24:                                               ; preds = %2
  %25 = load i32*, i32** %7, align 8
  %26 = call i64 @AudioComponentInstanceNew(i32* %25, i32** %8)
  store i64 %26, i64* %9, align 8
  %27 = load i64, i64* %9, align 8
  %28 = load i64, i64* @noErr, align 8
  %29 = icmp ne i64 %27, %28
  br i1 %29, label %30, label %32

30:                                               ; preds = %24
  %31 = call i32 @ca_LogErr(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0))
  store i32* null, i32** %3, align 8
  br label %34

32:                                               ; preds = %24
  %33 = load i32*, i32** %8, align 8
  store i32* %33, i32** %3, align 8
  br label %34

34:                                               ; preds = %32, %30, %21
  %35 = load i32*, i32** %3, align 8
  ret i32* %35
}

declare dso_local i32* @AudioComponentFindNext(i32*, %struct.TYPE_3__*) #1

declare dso_local i32 @msg_Err(i32*, i8*) #1

declare dso_local i64 @AudioComponentInstanceNew(i32*, i32**) #1

declare dso_local i32 @ca_LogErr(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
