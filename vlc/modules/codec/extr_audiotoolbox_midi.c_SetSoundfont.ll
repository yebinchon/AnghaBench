; ModuleID = '/home/carl/AnghaBench/vlc/modules/codec/extr_audiotoolbox_midi.c_SetSoundfont.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/codec/extr_audiotoolbox_midi.c_SetSoundfont.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [24 x i8] c"using default soundfont\00", align 1
@VLC_SUCCESS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"using custom soundfont: '%s'\00", align 1
@kCFAllocatorDefault = common dso_local global i32 0, align 4
@VLC_ENOMEM = common dso_local global i32 0, align 4
@kMusicDeviceProperty_SoundBankURL = common dso_local global i32 0, align 4
@kAudioUnitScope_Global = common dso_local global i32 0, align 4
@noErr = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [56 x i8] c"failed setting custom SoundFont for MIDI synthesis (%i)\00", align 1
@VLC_EGENERIC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32, i8*)* @SetSoundfont to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @SetSoundfont(i32* %0, i32 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  store i32* %0, i32** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  %10 = load i8*, i8** %7, align 8
  %11 = icmp ne i8* %10, null
  br i1 %11, label %16, label %12

12:                                               ; preds = %3
  %13 = load i32*, i32** %5, align 8
  %14 = call i32 (i32*, i8*, ...) @msg_Dbg(i32* %13, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %15 = load i32, i32* @VLC_SUCCESS, align 4
  store i32 %15, i32* %4, align 4
  br label %50

16:                                               ; preds = %3
  %17 = load i32*, i32** %5, align 8
  %18 = load i8*, i8** %7, align 8
  %19 = call i32 (i32*, i8*, ...) @msg_Dbg(i32* %17, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i8* %18)
  %20 = load i32, i32* @kCFAllocatorDefault, align 4
  %21 = load i8*, i8** %7, align 8
  %22 = bitcast i8* %21 to i32*
  %23 = load i8*, i8** %7, align 8
  %24 = call i32 @strlen(i8* %23)
  %25 = call i32* @CFURLCreateFromFileSystemRepresentation(i32 %20, i32* %22, i32 %24, i32 0)
  store i32* %25, i32** %8, align 8
  %26 = load i32*, i32** %8, align 8
  %27 = icmp eq i32* %26, null
  %28 = zext i1 %27 to i32
  %29 = call i64 @unlikely(i32 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %16
  %32 = load i32, i32* @VLC_ENOMEM, align 4
  store i32 %32, i32* %4, align 4
  br label %50

33:                                               ; preds = %16
  %34 = load i32, i32* %6, align 4
  %35 = load i32, i32* @kMusicDeviceProperty_SoundBankURL, align 4
  %36 = load i32, i32* @kAudioUnitScope_Global, align 4
  %37 = call i64 @AudioUnitSetProperty(i32 %34, i32 %35, i32 %36, i32 0, i32** %8, i32 8)
  store i64 %37, i64* %9, align 8
  %38 = load i32*, i32** %8, align 8
  %39 = call i32 @CFRelease(i32* %38)
  %40 = load i64, i64* %9, align 8
  %41 = load i64, i64* @noErr, align 8
  %42 = icmp ne i64 %40, %41
  br i1 %42, label %43, label %48

43:                                               ; preds = %33
  %44 = load i32*, i32** %5, align 8
  %45 = load i64, i64* %9, align 8
  %46 = call i32 @msg_Err(i32* %44, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.2, i64 0, i64 0), i64 %45)
  %47 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %47, i32* %4, align 4
  br label %50

48:                                               ; preds = %33
  %49 = load i32, i32* @VLC_SUCCESS, align 4
  store i32 %49, i32* %4, align 4
  br label %50

50:                                               ; preds = %48, %43, %31, %12
  %51 = load i32, i32* %4, align 4
  ret i32 %51
}

declare dso_local i32 @msg_Dbg(i32*, i8*, ...) #1

declare dso_local i32* @CFURLCreateFromFileSystemRepresentation(i32, i32*, i32, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @AudioUnitSetProperty(i32, i32, i32, i32, i32**, i32) #1

declare dso_local i32 @CFRelease(i32*) #1

declare dso_local i32 @msg_Err(i32*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
