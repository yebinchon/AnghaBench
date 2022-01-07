; ModuleID = '/home/carl/AnghaBench/vlc/modules/video_output/vulkan/extr_platform_xcb.c_vlc_vk_InitPlatform.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/video_output/vulkan/extr_platform_xcb.c_vlc_vk_InitPlatform.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32*, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i64, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i8* }

@VOUT_WINDOW_TYPE_XID = common dso_local global i64 0, align 8
@VLC_EGENERIC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"Failed connecting to X server (%s)\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"default\00", align 1
@VLC_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vlc_vk_InitPlatform(%struct.TYPE_8__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_8__*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %3, align 8
  %6 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %7 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %6, i32 0, i32 1
  %8 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @VOUT_WINDOW_TYPE_XID, align 8
  %12 = icmp ne i64 %10, %11
  br i1 %12, label %13, label %15

13:                                               ; preds = %1
  %14 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %14, i32* %2, align 4
  br label %44

15:                                               ; preds = %1
  %16 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %17 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %16, i32 0, i32 1
  %18 = load %struct.TYPE_7__*, %struct.TYPE_7__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 0
  %21 = load i8*, i8** %20, align 8
  store i8* %21, i8** %4, align 8
  %22 = load i8*, i8** %4, align 8
  %23 = call i32* @xcb_connect(i8* %22, i32* null)
  %24 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %25 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %24, i32 0, i32 0
  store i32* %23, i32** %25, align 8
  store i32* %23, i32** %5, align 8
  %26 = load i32*, i32** %5, align 8
  %27 = call i64 @xcb_connection_has_error(i32* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %42

29:                                               ; preds = %15
  %30 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %31 = load i8*, i8** %4, align 8
  %32 = icmp ne i8* %31, null
  br i1 %32, label %33, label %35

33:                                               ; preds = %29
  %34 = load i8*, i8** %4, align 8
  br label %36

35:                                               ; preds = %29
  br label %36

36:                                               ; preds = %35, %33
  %37 = phi i8* [ %34, %33 ], [ getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), %35 ]
  %38 = call i32 @msg_Err(%struct.TYPE_8__* %30, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i8* %37)
  %39 = load i32*, i32** %5, align 8
  %40 = call i32 @xcb_disconnect(i32* %39)
  %41 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %41, i32* %2, align 4
  br label %44

42:                                               ; preds = %15
  %43 = load i32, i32* @VLC_SUCCESS, align 4
  store i32 %43, i32* %2, align 4
  br label %44

44:                                               ; preds = %42, %36, %13
  %45 = load i32, i32* %2, align 4
  ret i32 %45
}

declare dso_local i32* @xcb_connect(i8*, i32*) #1

declare dso_local i64 @xcb_connection_has_error(i32*) #1

declare dso_local i32 @msg_Err(%struct.TYPE_8__*, i8*, i8*) #1

declare dso_local i32 @xcb_disconnect(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
