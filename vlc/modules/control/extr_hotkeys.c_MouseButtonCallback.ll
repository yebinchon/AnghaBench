; ModuleID = '/home/carl/AnghaBench/vlc/modules/control/extr_hotkeys.c_MouseButtonCallback.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/control/extr_hotkeys.c_MouseButtonCallback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32 }
%struct.TYPE_10__ = type { %struct.TYPE_11__* }
%struct.TYPE_11__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32, i32, i32 }

@MOUSE_BUTTON_LEFT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"viewpoint-changeable\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"mouse-moved\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"intf-popupmenu\00", align 1
@MOUSE_BUTTON_CENTER = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [22 x i8] c"intf-toggle-fscontrol\00", align 1
@MOUSE_BUTTON_RIGHT = common dso_local global i32 0, align 4
@MOUSE_BUTTON_WHEEL_UP = common dso_local global i32 0, align 4
@MOUSE_BUTTON_WHEEL_RIGHT = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [12 x i8] c"key-pressed\00", align 1
@VLC_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i8*, i32, i32, i8*)* @MouseButtonCallback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @MouseButtonCallback(i32* %0, i8* %1, i32 %2, i32 %3, i8* %4) #0 {
  %6 = alloca %struct.TYPE_9__, align 4
  %7 = alloca %struct.TYPE_9__, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca %struct.TYPE_10__*, align 8
  %12 = alloca %struct.TYPE_11__*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %6, i32 0, i32 0
  store i32 %2, i32* %17, align 4
  %18 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %7, i32 0, i32 0
  store i32 %3, i32* %18, align 4
  store i32* %0, i32** %8, align 8
  store i8* %1, i8** %9, align 8
  store i8* %4, i8** %10, align 8
  %19 = load i8*, i8** %9, align 8
  %20 = call i32 @VLC_UNUSED(i8* %19)
  %21 = load i8*, i8** %10, align 8
  %22 = bitcast i8* %21 to %struct.TYPE_10__*
  store %struct.TYPE_10__* %22, %struct.TYPE_10__** %11, align 8
  %23 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %24 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %23, i32 0, i32 0
  %25 = load %struct.TYPE_11__*, %struct.TYPE_11__** %24, align 8
  store %struct.TYPE_11__* %25, %struct.TYPE_11__** %12, align 8
  %26 = load i32*, i32** %8, align 8
  store i32* %26, i32** %13, align 8
  %27 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %7, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @MOUSE_BUTTON_LEFT, align 4
  %30 = shl i32 1, %29
  %31 = and i32 %28, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %56

33:                                               ; preds = %5
  %34 = load i32*, i32** %13, align 8
  %35 = call i64 @var_GetBool(i32* %34, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %56

37:                                               ; preds = %33
  %38 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %39 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %55, label %43

43:                                               ; preds = %37
  %44 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %45 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %45, i32 0, i32 0
  store i32 1, i32* %46, align 4
  %47 = load i32*, i32** %13, align 8
  %48 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %49 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %49, i32 0, i32 2
  %51 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %52 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %52, i32 0, i32 1
  %54 = call i32 @var_GetCoords(i32* %47, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i32* %50, i32* %53)
  br label %55

55:                                               ; preds = %43, %37
  br label %60

56:                                               ; preds = %33, %5
  %57 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %58 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %58, i32 0, i32 0
  store i32 0, i32* %59, align 4
  br label %60

60:                                               ; preds = %56, %55
  %61 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %7, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %6, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = xor i32 %64, -1
  %66 = and i32 %62, %65
  store i32 %66, i32* %14, align 4
  %67 = load i32, i32* %14, align 4
  %68 = load i32, i32* @MOUSE_BUTTON_LEFT, align 4
  %69 = shl i32 1, %68
  %70 = and i32 %67, %69
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %76

72:                                               ; preds = %60
  %73 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %74 = call i32 @vlc_object_instance(%struct.TYPE_10__* %73)
  %75 = call i32 @var_SetBool(i32 %74, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i32 0)
  br label %76

76:                                               ; preds = %72, %60
  %77 = load i32, i32* %14, align 4
  %78 = load i32, i32* @MOUSE_BUTTON_CENTER, align 4
  %79 = shl i32 1, %78
  %80 = and i32 %77, %79
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %86

82:                                               ; preds = %76
  %83 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %84 = call i32 @vlc_object_instance(%struct.TYPE_10__* %83)
  %85 = call i32 @var_TriggerCallback(i32 %84, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0))
  br label %86

86:                                               ; preds = %82, %76
  %87 = load i32, i32* %14, align 4
  %88 = load i32, i32* @MOUSE_BUTTON_RIGHT, align 4
  %89 = shl i32 1, %88
  %90 = and i32 %87, %89
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %96

92:                                               ; preds = %86
  %93 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %94 = call i32 @vlc_object_instance(%struct.TYPE_10__* %93)
  %95 = call i32 @var_SetBool(i32 %94, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i32 1)
  br label %96

96:                                               ; preds = %92, %86
  %97 = load i32, i32* @MOUSE_BUTTON_WHEEL_UP, align 4
  store i32 %97, i32* %15, align 4
  br label %98

98:                                               ; preds = %116, %96
  %99 = load i32, i32* %15, align 4
  %100 = load i32, i32* @MOUSE_BUTTON_WHEEL_RIGHT, align 4
  %101 = icmp sle i32 %99, %100
  br i1 %101, label %102, label %119

102:                                              ; preds = %98
  %103 = load i32, i32* %14, align 4
  %104 = load i32, i32* %15, align 4
  %105 = shl i32 1, %104
  %106 = and i32 %103, %105
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %115

108:                                              ; preds = %102
  %109 = load i32, i32* %15, align 4
  %110 = call i32 @KEY_MOUSEWHEEL_FROM_BUTTON(i32 %109)
  store i32 %110, i32* %16, align 4
  %111 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %112 = call i32 @vlc_object_instance(%struct.TYPE_10__* %111)
  %113 = load i32, i32* %16, align 4
  %114 = call i32 @var_SetInteger(i32 %112, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0), i32 %113)
  br label %115

115:                                              ; preds = %108, %102
  br label %116

116:                                              ; preds = %115
  %117 = load i32, i32* %15, align 4
  %118 = add nsw i32 %117, 1
  store i32 %118, i32* %15, align 4
  br label %98

119:                                              ; preds = %98
  %120 = load i32, i32* @VLC_SUCCESS, align 4
  ret i32 %120
}

declare dso_local i32 @VLC_UNUSED(i8*) #1

declare dso_local i64 @var_GetBool(i32*, i8*) #1

declare dso_local i32 @var_GetCoords(i32*, i8*, i32*, i32*) #1

declare dso_local i32 @var_SetBool(i32, i8*, i32) #1

declare dso_local i32 @vlc_object_instance(%struct.TYPE_10__*) #1

declare dso_local i32 @var_TriggerCallback(i32, i8*) #1

declare dso_local i32 @KEY_MOUSEWHEEL_FROM_BUTTON(i32) #1

declare dso_local i32 @var_SetInteger(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
