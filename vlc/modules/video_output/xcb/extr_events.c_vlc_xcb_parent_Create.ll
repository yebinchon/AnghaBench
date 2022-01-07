; ModuleID = '/home/carl/AnghaBench/vlc/modules/video_output/xcb/extr_events.c_vlc_xcb_parent_Create.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/video_output/xcb/extr_events.c_vlc_xcb_parent_Create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i64, %struct.TYPE_11__, %struct.TYPE_10__ }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_14__ = type { %struct.TYPE_13__* }
%struct.TYPE_12__ = type { i32 }

@VOUT_WINDOW_TYPE_XID = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [21 x i8] c"window not available\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"window not valid\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_13__* @vlc_xcb_parent_Create(i32* %0, %struct.TYPE_14__* %1, i32** noalias %2, i32** noalias %3) #0 {
  %5 = alloca %struct.TYPE_13__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_14__*, align 8
  %8 = alloca i32**, align 8
  %9 = alloca i32**, align 8
  %10 = alloca %struct.TYPE_13__*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.TYPE_12__*, align 8
  %13 = alloca i32*, align 8
  store i32* %0, i32** %6, align 8
  store %struct.TYPE_14__* %1, %struct.TYPE_14__** %7, align 8
  store i32** %2, i32*** %8, align 8
  store i32** %3, i32*** %9, align 8
  %14 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %15 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %14, i32 0, i32 0
  %16 = load %struct.TYPE_13__*, %struct.TYPE_13__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @VOUT_WINDOW_TYPE_XID, align 8
  %20 = icmp ne i64 %18, %19
  br i1 %20, label %21, label %24

21:                                               ; preds = %4
  %22 = load i32*, i32** %6, align 8
  %23 = call i32 @msg_Err(i32* %22, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  store %struct.TYPE_13__* null, %struct.TYPE_13__** %5, align 8
  br label %78

24:                                               ; preds = %4
  %25 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %26 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %25, i32 0, i32 0
  %27 = load %struct.TYPE_13__*, %struct.TYPE_13__** %26, align 8
  store %struct.TYPE_13__* %27, %struct.TYPE_13__** %10, align 8
  %28 = load i32*, i32** %6, align 8
  %29 = call i32 @VLC_OBJECT(i32* %28)
  %30 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %31 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %30, i32 0, i32 2
  %32 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i32* @Connect(i32 %29, i32 %33)
  store i32* %34, i32** %11, align 8
  %35 = load i32*, i32** %11, align 8
  %36 = icmp eq i32* %35, null
  br i1 %36, label %37, label %38

37:                                               ; preds = %24
  br label %71

38:                                               ; preds = %24
  %39 = load i32*, i32** %11, align 8
  %40 = load i32**, i32*** %8, align 8
  store i32* %39, i32** %40, align 8
  %41 = load i32*, i32** %11, align 8
  %42 = load i32*, i32** %11, align 8
  %43 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %44 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = call i32 @xcb_get_geometry(i32* %42, i32 %46)
  %48 = call %struct.TYPE_12__* @xcb_get_geometry_reply(i32* %41, i32 %47, i32* null)
  store %struct.TYPE_12__* %48, %struct.TYPE_12__** %12, align 8
  %49 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %50 = icmp eq %struct.TYPE_12__* %49, null
  br i1 %50, label %51, label %54

51:                                               ; preds = %38
  %52 = load i32*, i32** %6, align 8
  %53 = call i32 @msg_Err(i32* %52, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  br label %71

54:                                               ; preds = %38
  %55 = load i32*, i32** %6, align 8
  %56 = call i32 @VLC_OBJECT(i32* %55)
  %57 = load i32*, i32** %11, align 8
  %58 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %59 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = call i32* @FindScreen(i32 %56, i32* %57, i32 %60)
  store i32* %61, i32** %13, align 8
  %62 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %63 = call i32 @free(%struct.TYPE_12__* %62)
  %64 = load i32*, i32** %13, align 8
  %65 = icmp eq i32* %64, null
  br i1 %65, label %66, label %67

66:                                               ; preds = %54
  br label %71

67:                                               ; preds = %54
  %68 = load i32*, i32** %13, align 8
  %69 = load i32**, i32*** %9, align 8
  store i32* %68, i32** %69, align 8
  %70 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  store %struct.TYPE_13__* %70, %struct.TYPE_13__** %5, align 8
  br label %78

71:                                               ; preds = %66, %51, %37
  %72 = load i32*, i32** %11, align 8
  %73 = icmp ne i32* %72, null
  br i1 %73, label %74, label %77

74:                                               ; preds = %71
  %75 = load i32*, i32** %11, align 8
  %76 = call i32 @xcb_disconnect(i32* %75)
  br label %77

77:                                               ; preds = %74, %71
  store %struct.TYPE_13__* null, %struct.TYPE_13__** %5, align 8
  br label %78

78:                                               ; preds = %77, %67, %21
  %79 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  ret %struct.TYPE_13__* %79
}

declare dso_local i32 @msg_Err(i32*, i8*) #1

declare dso_local i32* @Connect(i32, i32) #1

declare dso_local i32 @VLC_OBJECT(i32*) #1

declare dso_local %struct.TYPE_12__* @xcb_get_geometry_reply(i32*, i32, i32*) #1

declare dso_local i32 @xcb_get_geometry(i32*, i32) #1

declare dso_local i32* @FindScreen(i32, i32*, i32) #1

declare dso_local i32 @free(%struct.TYPE_12__*) #1

declare dso_local i32 @xcb_disconnect(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
