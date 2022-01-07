; ModuleID = '/home/carl/AnghaBench/vlc/lib/extr_media_player.c_libvlc_video_direct3d_set_callbacks.c'
source_filename = "/home/carl/AnghaBench/vlc/lib/extr_media_player.c_libvlc_video_direct3d_set_callbacks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [7 x i8] c"window\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"wextern\00", align 1
@libvlc_video_direct3d_engine_d3d11 = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [5 x i8] c"vout\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"direct3d11\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"dec-dev\00", align 1
@.str.5 = private unnamed_addr constant [13 x i8] c"d3d11-device\00", align 1
@libvlc_video_direct3d_engine_d3d9 = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [10 x i8] c"direct3d9\00", align 1
@.str.7 = private unnamed_addr constant [12 x i8] c"d3d9-device\00", align 1
@.str.8 = private unnamed_addr constant [15 x i8] c"vout-cb-opaque\00", align 1
@.str.9 = private unnamed_addr constant [14 x i8] c"vout-cb-setup\00", align 1
@.str.10 = private unnamed_addr constant [16 x i8] c"vout-cb-cleanup\00", align 1
@.str.11 = private unnamed_addr constant [18 x i8] c"vout-cb-resize-cb\00", align 1
@.str.12 = private unnamed_addr constant [22 x i8] c"vout-cb-update-output\00", align 1
@.str.13 = private unnamed_addr constant [13 x i8] c"vout-cb-swap\00", align 1
@.str.14 = private unnamed_addr constant [21 x i8] c"vout-cb-make-current\00", align 1
@.str.15 = private unnamed_addr constant [21 x i8] c"vout-cb-select-plane\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @libvlc_video_direct3d_set_callbacks(i32* %0, i64 %1, i8* %2, i8* %3, i8* %4, i8* %5, i8* %6, i8* %7, i8* %8, i8* %9) #0 {
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i8*, align 8
  %21 = alloca i8*, align 8
  store i32* %0, i32** %12, align 8
  store i64 %1, i64* %13, align 8
  store i8* %2, i8** %14, align 8
  store i8* %3, i8** %15, align 8
  store i8* %4, i8** %16, align 8
  store i8* %5, i8** %17, align 8
  store i8* %6, i8** %18, align 8
  store i8* %7, i8** %19, align 8
  store i8* %8, i8** %20, align 8
  store i8* %9, i8** %21, align 8
  %22 = load i32*, i32** %12, align 8
  %23 = call i32 @var_SetString(i32* %22, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  %24 = load i64, i64* %13, align 8
  %25 = load i64, i64* @libvlc_video_direct3d_engine_d3d11, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %32

27:                                               ; preds = %10
  %28 = load i32*, i32** %12, align 8
  %29 = call i32 @var_SetString(i32* %28, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0))
  %30 = load i32*, i32** %12, align 8
  %31 = call i32 @var_SetString(i32* %30, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i64 0, i64 0))
  br label %43

32:                                               ; preds = %10
  %33 = load i64, i64* %13, align 8
  %34 = load i64, i64* @libvlc_video_direct3d_engine_d3d9, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %36, label %41

36:                                               ; preds = %32
  %37 = load i32*, i32** %12, align 8
  %38 = call i32 @var_SetString(i32* %37, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i64 0, i64 0))
  %39 = load i32*, i32** %12, align 8
  %40 = call i32 @var_SetString(i32* %39, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.7, i64 0, i64 0))
  br label %42

41:                                               ; preds = %32
  store i32 0, i32* %11, align 4
  br label %68

42:                                               ; preds = %36
  br label %43

43:                                               ; preds = %42, %27
  %44 = load i32*, i32** %12, align 8
  %45 = load i8*, i8** %21, align 8
  %46 = call i32 @var_SetAddress(i32* %44, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.8, i64 0, i64 0), i8* %45)
  %47 = load i32*, i32** %12, align 8
  %48 = load i8*, i8** %14, align 8
  %49 = call i32 @var_SetAddress(i32* %47, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.9, i64 0, i64 0), i8* %48)
  %50 = load i32*, i32** %12, align 8
  %51 = load i8*, i8** %15, align 8
  %52 = call i32 @var_SetAddress(i32* %50, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.10, i64 0, i64 0), i8* %51)
  %53 = load i32*, i32** %12, align 8
  %54 = load i8*, i8** %16, align 8
  %55 = call i32 @var_SetAddress(i32* %53, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.11, i64 0, i64 0), i8* %54)
  %56 = load i32*, i32** %12, align 8
  %57 = load i8*, i8** %17, align 8
  %58 = call i32 @var_SetAddress(i32* %56, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.12, i64 0, i64 0), i8* %57)
  %59 = load i32*, i32** %12, align 8
  %60 = load i8*, i8** %18, align 8
  %61 = call i32 @var_SetAddress(i32* %59, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.13, i64 0, i64 0), i8* %60)
  %62 = load i32*, i32** %12, align 8
  %63 = load i8*, i8** %19, align 8
  %64 = call i32 @var_SetAddress(i32* %62, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.14, i64 0, i64 0), i8* %63)
  %65 = load i32*, i32** %12, align 8
  %66 = load i8*, i8** %20, align 8
  %67 = call i32 @var_SetAddress(i32* %65, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.15, i64 0, i64 0), i8* %66)
  store i32 1, i32* %11, align 4
  br label %68

68:                                               ; preds = %43, %41
  %69 = load i32, i32* %11, align 4
  ret i32 %69
}

declare dso_local i32 @var_SetString(i32*, i8*, i8*) #1

declare dso_local i32 @var_SetAddress(i32*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
