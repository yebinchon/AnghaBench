; ModuleID = '/home/carl/AnghaBench/vlc/lib/extr_media_player.c_libvlc_video_set_callbacks.c'
source_filename = "/home/carl/AnghaBench/vlc/lib/extr_media_player.c_libvlc_video_set_callbacks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [10 x i8] c"vmem-lock\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"vmem-unlock\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"vmem-display\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"vmem-data\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"dec-dev\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"none\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"vout\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"vmem\00", align 1
@.str.8 = private unnamed_addr constant [7 x i8] c"window\00", align 1
@.str.9 = private unnamed_addr constant [6 x i8] c"dummy\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @libvlc_video_set_callbacks(i32* %0, i8* (i8*, i8**)* %1, void (i8*, i8*, i8**)* %2, void (i8*, i8*)* %3, i8* %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i8* (i8*, i8**)*, align 8
  %8 = alloca void (i8*, i8*, i8**)*, align 8
  %9 = alloca void (i8*, i8*)*, align 8
  %10 = alloca i8*, align 8
  store i32* %0, i32** %6, align 8
  store i8* (i8*, i8**)* %1, i8* (i8*, i8**)** %7, align 8
  store void (i8*, i8*, i8**)* %2, void (i8*, i8*, i8**)** %8, align 8
  store void (i8*, i8*)* %3, void (i8*, i8*)** %9, align 8
  store i8* %4, i8** %10, align 8
  %11 = load i32*, i32** %6, align 8
  %12 = load i8* (i8*, i8**)*, i8* (i8*, i8**)** %7, align 8
  %13 = bitcast i8* (i8*, i8**)* %12 to i8*
  %14 = call i32 @var_SetAddress(i32* %11, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i8* %13)
  %15 = load i32*, i32** %6, align 8
  %16 = load void (i8*, i8*, i8**)*, void (i8*, i8*, i8**)** %8, align 8
  %17 = bitcast void (i8*, i8*, i8**)* %16 to i8*
  %18 = call i32 @var_SetAddress(i32* %15, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i8* %17)
  %19 = load i32*, i32** %6, align 8
  %20 = load void (i8*, i8*)*, void (i8*, i8*)** %9, align 8
  %21 = bitcast void (i8*, i8*)* %20 to i8*
  %22 = call i32 @var_SetAddress(i32* %19, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i8* %21)
  %23 = load i32*, i32** %6, align 8
  %24 = load i8*, i8** %10, align 8
  %25 = call i32 @var_SetAddress(i32* %23, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0), i8* %24)
  %26 = load i32*, i32** %6, align 8
  %27 = call i32 @var_SetString(i32* %26, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0))
  %28 = load i32*, i32** %6, align 8
  %29 = call i32 @var_SetString(i32* %28, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0))
  %30 = load i32*, i32** %6, align 8
  %31 = call i32 @var_SetString(i32* %30, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0))
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
