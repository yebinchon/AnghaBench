; ModuleID = '/home/carl/AnghaBench/vlc/lib/extr_audio.c_libvlc_audio_output_device_set.c'
source_filename = "/home/carl/AnghaBench/vlc/lib/extr_audio.c_libvlc_audio_output_device_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [16 x i8] c"%s-audio-device\00", align 1
@VLC_VAR_STRING = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @libvlc_audio_output_device_set(i32* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  store i32* %0, i32** %4, align 8
  store i8* %1, i8** %5, align 8
  store i8* %2, i8** %6, align 8
  %9 = load i8*, i8** %6, align 8
  %10 = icmp eq i8* %9, null
  br i1 %10, label %11, label %12

11:                                               ; preds = %3
  br label %49

12:                                               ; preds = %3
  %13 = load i8*, i8** %5, align 8
  %14 = icmp ne i8* %13, null
  br i1 %14, label %15, label %37

15:                                               ; preds = %12
  %16 = load i8*, i8** %5, align 8
  %17 = call i32 @asprintf(i8** %7, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i8* %16)
  %18 = icmp eq i32 %17, -1
  br i1 %18, label %19, label %20

19:                                               ; preds = %15
  br label %49

20:                                               ; preds = %15
  %21 = load i32*, i32** %4, align 8
  %22 = load i8*, i8** %7, align 8
  %23 = call i32 @var_Type(i32* %21, i8* %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %30, label %25

25:                                               ; preds = %20
  %26 = load i32*, i32** %4, align 8
  %27 = load i8*, i8** %7, align 8
  %28 = load i32, i32* @VLC_VAR_STRING, align 4
  %29 = call i32 @var_Create(i32* %26, i8* %27, i32 %28)
  br label %30

30:                                               ; preds = %25, %20
  %31 = load i32*, i32** %4, align 8
  %32 = load i8*, i8** %7, align 8
  %33 = load i8*, i8** %6, align 8
  %34 = call i32 @var_SetString(i32* %31, i8* %32, i8* %33)
  %35 = load i8*, i8** %7, align 8
  %36 = call i32 @free(i8* %35)
  br label %49

37:                                               ; preds = %12
  %38 = load i32*, i32** %4, align 8
  %39 = call i32* @GetAOut(i32* %38)
  store i32* %39, i32** %8, align 8
  %40 = load i32*, i32** %8, align 8
  %41 = icmp eq i32* %40, null
  br i1 %41, label %42, label %43

42:                                               ; preds = %37
  br label %49

43:                                               ; preds = %37
  %44 = load i32*, i32** %8, align 8
  %45 = load i8*, i8** %6, align 8
  %46 = call i32 @aout_DeviceSet(i32* %44, i8* %45)
  %47 = load i32*, i32** %8, align 8
  %48 = call i32 @aout_Release(i32* %47)
  br label %49

49:                                               ; preds = %43, %42, %30, %19, %11
  ret void
}

declare dso_local i32 @asprintf(i8**, i8*, i8*) #1

declare dso_local i32 @var_Type(i32*, i8*) #1

declare dso_local i32 @var_Create(i32*, i8*, i32) #1

declare dso_local i32 @var_SetString(i32*, i8*, i8*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32* @GetAOut(i32*) #1

declare dso_local i32 @aout_DeviceSet(i32*, i8*) #1

declare dso_local i32 @aout_Release(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
