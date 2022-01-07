; ModuleID = '/home/carl/AnghaBench/vlc/lib/extr_media_player.c_libvlc_audio_set_callbacks.c'
source_filename = "/home/carl/AnghaBench/vlc/lib/extr_media_player.c_libvlc_audio_set_callbacks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [10 x i8] c"amem-play\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"amem-pause\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"amem-resume\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"amem-flush\00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c"amem-drain\00", align 1
@.str.5 = private unnamed_addr constant [10 x i8] c"amem-data\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"aout\00", align 1
@.str.7 = private unnamed_addr constant [10 x i8] c"amem,none\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @libvlc_audio_set_callbacks(i32* %0, i8* %1, i8* %2, i8* %3, i8* %4, i8* %5, i8* %6) #0 {
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  store i32* %0, i32** %8, align 8
  store i8* %1, i8** %9, align 8
  store i8* %2, i8** %10, align 8
  store i8* %3, i8** %11, align 8
  store i8* %4, i8** %12, align 8
  store i8* %5, i8** %13, align 8
  store i8* %6, i8** %14, align 8
  %15 = load i32*, i32** %8, align 8
  %16 = load i8*, i8** %9, align 8
  %17 = call i32 @var_SetAddress(i32* %15, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i8* %16)
  %18 = load i32*, i32** %8, align 8
  %19 = load i8*, i8** %10, align 8
  %20 = call i32 @var_SetAddress(i32* %18, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i8* %19)
  %21 = load i32*, i32** %8, align 8
  %22 = load i8*, i8** %11, align 8
  %23 = call i32 @var_SetAddress(i32* %21, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i8* %22)
  %24 = load i32*, i32** %8, align 8
  %25 = load i8*, i8** %12, align 8
  %26 = call i32 @var_SetAddress(i32* %24, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0), i8* %25)
  %27 = load i32*, i32** %8, align 8
  %28 = load i8*, i8** %13, align 8
  %29 = call i32 @var_SetAddress(i32* %27, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0), i8* %28)
  %30 = load i32*, i32** %8, align 8
  %31 = load i8*, i8** %14, align 8
  %32 = call i32 @var_SetAddress(i32* %30, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0), i8* %31)
  %33 = load i32*, i32** %8, align 8
  %34 = call i32 @var_SetString(i32* %33, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i64 0, i64 0))
  ret void
}

declare dso_local i32 @var_SetAddress(i32*, i8*, i8*) #1

declare dso_local i32 @var_SetString(i32*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
