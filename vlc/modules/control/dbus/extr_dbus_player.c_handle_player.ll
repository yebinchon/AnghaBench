; ModuleID = '/home/carl/AnghaBench/vlc/modules/control/dbus/extr_dbus_player.c_handle_player.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/control/dbus/extr_dbus_player.c_handle_player.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@DBUS_INTERFACE_PROPERTIES = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"Get\00", align 1
@GetProperty = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [4 x i8] c"Set\00", align 1
@SetProperty = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [7 x i8] c"GetAll\00", align 1
@GetAllProperties = common dso_local global i32 0, align 4
@DBUS_MPRIS_PLAYER_INTERFACE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [9 x i8] c"Previous\00", align 1
@Prev = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [5 x i8] c"Next\00", align 1
@Next = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [5 x i8] c"Stop\00", align 1
@Stop = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [5 x i8] c"Seek\00", align 1
@Seek = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [5 x i8] c"Play\00", align 1
@Play = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [6 x i8] c"Pause\00", align 1
@Pause = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [10 x i8] c"PlayPause\00", align 1
@PlayPause = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [8 x i8] c"OpenUri\00", align 1
@OpenUri = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [12 x i8] c"SetPosition\00", align 1
@SetPosition = common dso_local global i32 0, align 4
@DBUS_HANDLER_RESULT_NOT_YET_HANDLED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @handle_player(i32* %0, i32* %1, i8* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  store i8* %2, i8** %6, align 8
  %7 = load i32, i32* @DBUS_INTERFACE_PROPERTIES, align 4
  %8 = load i32, i32* @GetProperty, align 4
  %9 = call i32 @METHOD_FUNC(i32 %7, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %8)
  %10 = load i32, i32* @DBUS_INTERFACE_PROPERTIES, align 4
  %11 = load i32, i32* @SetProperty, align 4
  %12 = call i32 @METHOD_FUNC(i32 %10, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 %11)
  %13 = load i32, i32* @DBUS_INTERFACE_PROPERTIES, align 4
  %14 = load i32, i32* @GetAllProperties, align 4
  %15 = call i32 @METHOD_FUNC(i32 %13, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i32 %14)
  %16 = load i32, i32* @DBUS_MPRIS_PLAYER_INTERFACE, align 4
  %17 = load i32, i32* @Prev, align 4
  %18 = call i32 @METHOD_FUNC(i32 %16, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), i32 %17)
  %19 = load i32, i32* @DBUS_MPRIS_PLAYER_INTERFACE, align 4
  %20 = load i32, i32* @Next, align 4
  %21 = call i32 @METHOD_FUNC(i32 %19, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i32 %20)
  %22 = load i32, i32* @DBUS_MPRIS_PLAYER_INTERFACE, align 4
  %23 = load i32, i32* @Stop, align 4
  %24 = call i32 @METHOD_FUNC(i32 %22, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i32 %23)
  %25 = load i32, i32* @DBUS_MPRIS_PLAYER_INTERFACE, align 4
  %26 = load i32, i32* @Seek, align 4
  %27 = call i32 @METHOD_FUNC(i32 %25, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0), i32 %26)
  %28 = load i32, i32* @DBUS_MPRIS_PLAYER_INTERFACE, align 4
  %29 = load i32, i32* @Play, align 4
  %30 = call i32 @METHOD_FUNC(i32 %28, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i32 %29)
  %31 = load i32, i32* @DBUS_MPRIS_PLAYER_INTERFACE, align 4
  %32 = load i32, i32* @Pause, align 4
  %33 = call i32 @METHOD_FUNC(i32 %31, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i64 0, i64 0), i32 %32)
  %34 = load i32, i32* @DBUS_MPRIS_PLAYER_INTERFACE, align 4
  %35 = load i32, i32* @PlayPause, align 4
  %36 = call i32 @METHOD_FUNC(i32 %34, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.9, i64 0, i64 0), i32 %35)
  %37 = load i32, i32* @DBUS_MPRIS_PLAYER_INTERFACE, align 4
  %38 = load i32, i32* @OpenUri, align 4
  %39 = call i32 @METHOD_FUNC(i32 %37, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.10, i64 0, i64 0), i32 %38)
  %40 = load i32, i32* @DBUS_MPRIS_PLAYER_INTERFACE, align 4
  %41 = load i32, i32* @SetPosition, align 4
  %42 = call i32 @METHOD_FUNC(i32 %40, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.11, i64 0, i64 0), i32 %41)
  %43 = load i32, i32* @DBUS_HANDLER_RESULT_NOT_YET_HANDLED, align 4
  ret i32 %43
}

declare dso_local i32 @METHOD_FUNC(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
