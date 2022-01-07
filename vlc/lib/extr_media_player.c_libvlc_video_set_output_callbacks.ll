; ModuleID = '/home/carl/AnghaBench/vlc/lib/extr_media_player.c_libvlc_video_set_output_callbacks.c'
source_filename = "/home/carl/AnghaBench/vlc/lib/extr_media_player.c_libvlc_video_set_output_callbacks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [7 x i8] c"window\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"wdummy\00", align 1
@libvlc_video_engine_gles2 = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [5 x i8] c"vout\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"gles2\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"vgl\00", align 1
@libvlc_video_engine_opengl = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [3 x i8] c"gl\00", align 1
@.str.6 = private unnamed_addr constant [15 x i8] c"vout-cb-opaque\00", align 1
@.str.7 = private unnamed_addr constant [14 x i8] c"vout-cb-setup\00", align 1
@.str.8 = private unnamed_addr constant [16 x i8] c"vout-cb-cleanup\00", align 1
@.str.9 = private unnamed_addr constant [22 x i8] c"vout-cb-update-output\00", align 1
@.str.10 = private unnamed_addr constant [13 x i8] c"vout-cb-swap\00", align 1
@.str.11 = private unnamed_addr constant [25 x i8] c"vout-cb-get-proc-address\00", align 1
@.str.12 = private unnamed_addr constant [21 x i8] c"vout-cb-make-current\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @libvlc_video_set_output_callbacks(i32* %0, i64 %1, i8* %2, i8* %3, i8* %4, i8* %5, i8* %6, i8* %7, i8* %8) #0 {
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i8*, align 8
  store i32* %0, i32** %11, align 8
  store i64 %1, i64* %12, align 8
  store i8* %2, i8** %13, align 8
  store i8* %3, i8** %14, align 8
  store i8* %4, i8** %15, align 8
  store i8* %5, i8** %16, align 8
  store i8* %6, i8** %17, align 8
  store i8* %7, i8** %18, align 8
  store i8* %8, i8** %19, align 8
  %20 = load i32*, i32** %11, align 8
  %21 = call i32 @var_SetString(i32* %20, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  %22 = load i64, i64* %12, align 8
  %23 = load i64, i64* @libvlc_video_engine_gles2, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %30

25:                                               ; preds = %9
  %26 = load i32*, i32** %11, align 8
  %27 = call i32 @var_SetString(i32* %26, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0))
  %28 = load i32*, i32** %11, align 8
  %29 = call i32 @var_SetString(i32* %28, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0))
  br label %41

30:                                               ; preds = %9
  %31 = load i64, i64* %12, align 8
  %32 = load i64, i64* @libvlc_video_engine_opengl, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %34, label %39

34:                                               ; preds = %30
  %35 = load i32*, i32** %11, align 8
  %36 = call i32 @var_SetString(i32* %35, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0))
  %37 = load i32*, i32** %11, align 8
  %38 = call i32 @var_SetString(i32* %37, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0))
  br label %40

39:                                               ; preds = %30
  store i32 0, i32* %10, align 4
  br label %63

40:                                               ; preds = %34
  br label %41

41:                                               ; preds = %40, %25
  %42 = load i32*, i32** %11, align 8
  %43 = load i8*, i8** %19, align 8
  %44 = call i32 @var_SetAddress(i32* %42, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.6, i64 0, i64 0), i8* %43)
  %45 = load i32*, i32** %11, align 8
  %46 = load i8*, i8** %13, align 8
  %47 = call i32 @var_SetAddress(i32* %45, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i64 0, i64 0), i8* %46)
  %48 = load i32*, i32** %11, align 8
  %49 = load i8*, i8** %14, align 8
  %50 = call i32 @var_SetAddress(i32* %48, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.8, i64 0, i64 0), i8* %49)
  %51 = load i32*, i32** %11, align 8
  %52 = load i8*, i8** %15, align 8
  %53 = call i32 @var_SetAddress(i32* %51, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.9, i64 0, i64 0), i8* %52)
  %54 = load i32*, i32** %11, align 8
  %55 = load i8*, i8** %16, align 8
  %56 = call i32 @var_SetAddress(i32* %54, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.10, i64 0, i64 0), i8* %55)
  %57 = load i32*, i32** %11, align 8
  %58 = load i8*, i8** %18, align 8
  %59 = call i32 @var_SetAddress(i32* %57, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.11, i64 0, i64 0), i8* %58)
  %60 = load i32*, i32** %11, align 8
  %61 = load i8*, i8** %17, align 8
  %62 = call i32 @var_SetAddress(i32* %60, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.12, i64 0, i64 0), i8* %61)
  store i32 1, i32* %10, align 4
  br label %63

63:                                               ; preds = %41, %39
  %64 = load i32, i32* %10, align 4
  ret i32 %64
}

declare dso_local i32 @var_SetString(i32*, i8*, i8*) #1

declare dso_local i32 @var_SetAddress(i32*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
