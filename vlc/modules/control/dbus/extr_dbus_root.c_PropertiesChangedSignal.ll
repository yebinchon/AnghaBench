; ModuleID = '/home/carl/AnghaBench/vlc/modules/control/dbus/extr_dbus_root.c_PropertiesChangedSignal.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/control/dbus/extr_dbus_root.c_PropertiesChangedSignal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32* }

@DBUS_MPRIS_ROOT_INTERFACE = common dso_local global i8* null, align 8
@DBUS_INTERFACE_PROPERTIES = common dso_local global i32 0, align 4
@DBUS_MPRIS_OBJECT_PATH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"PropertiesChanged\00", align 1
@OUT_ARGUMENTS = common dso_local global i32 0, align 4
@args = common dso_local global i32 0, align 4
@DBUS_TYPE_ARRAY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"{sv}\00", align 1
@DBUS_HANDLER_RESULT_NEED_MEMORY = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [11 x i8] c"Fullscreen\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"b\00", align 1
@MarshalFullscreen = common dso_local global i32 0, align 4
@VLC_SUCCESS = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [2 x i8] c"s\00", align 1
@SIGNAL_SEND = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_6__*, i32*)* @PropertiesChangedSignal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @PropertiesChangedSignal(%struct.TYPE_6__* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %4, align 8
  store i32* %1, i32** %5, align 8
  %10 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %11 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 0
  %12 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 0
  %14 = load i32*, i32** %13, align 8
  store i32* %14, i32** %6, align 8
  %15 = load i8*, i8** @DBUS_MPRIS_ROOT_INTERFACE, align 8
  store i8* %15, i8** %9, align 8
  %16 = load i32, i32* @DBUS_INTERFACE_PROPERTIES, align 4
  %17 = load i32, i32* @DBUS_MPRIS_OBJECT_PATH, align 4
  %18 = call i32 @SIGNAL_INIT(i32 %16, i32 %17, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %19 = load i32, i32* @OUT_ARGUMENTS, align 4
  %20 = call i32 @ADD_STRING(i8** %9)
  %21 = load i32, i32* @DBUS_TYPE_ARRAY, align 4
  %22 = call i32 @dbus_message_iter_open_container(i32* @args, i32 %21, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32* %7)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %26, label %24

24:                                               ; preds = %2
  %25 = load i32, i32* @DBUS_HANDLER_RESULT_NEED_MEMORY, align 4
  store i32 %25, i32* %3, align 4
  br label %58

26:                                               ; preds = %2
  %27 = load i32*, i32** %5, align 8
  %28 = call i64 @vlc_dictionary_has_key(i32* %27, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0))
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %40

30:                                               ; preds = %26
  %31 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %32 = load i32, i32* @MarshalFullscreen, align 4
  %33 = call i64 @AddProperty(%struct.TYPE_6__* %31, i32* %7, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0), i32 %32)
  %34 = load i64, i64* @VLC_SUCCESS, align 8
  %35 = icmp ne i64 %33, %34
  br i1 %35, label %36, label %39

36:                                               ; preds = %30
  %37 = call i32 @dbus_message_iter_abandon_container(i32* @args, i32* %7)
  %38 = load i32, i32* @DBUS_HANDLER_RESULT_NEED_MEMORY, align 4
  store i32 %38, i32* %3, align 4
  br label %58

39:                                               ; preds = %30
  br label %40

40:                                               ; preds = %39, %26
  %41 = call i32 @dbus_message_iter_close_container(i32* @args, i32* %7)
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %45, label %43

43:                                               ; preds = %40
  %44 = load i32, i32* @DBUS_HANDLER_RESULT_NEED_MEMORY, align 4
  store i32 %44, i32* %3, align 4
  br label %58

45:                                               ; preds = %40
  %46 = load i32, i32* @DBUS_TYPE_ARRAY, align 4
  %47 = call i32 @dbus_message_iter_open_container(i32* @args, i32 %46, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0), i32* %8)
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %51, label %49

49:                                               ; preds = %45
  %50 = load i32, i32* @DBUS_HANDLER_RESULT_NEED_MEMORY, align 4
  store i32 %50, i32* %3, align 4
  br label %58

51:                                               ; preds = %45
  %52 = call i32 @dbus_message_iter_close_container(i32* @args, i32* %8)
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %56, label %54

54:                                               ; preds = %51
  %55 = load i32, i32* @DBUS_HANDLER_RESULT_NEED_MEMORY, align 4
  store i32 %55, i32* %3, align 4
  br label %58

56:                                               ; preds = %51
  %57 = load i32, i32* @SIGNAL_SEND, align 4
  br label %58

58:                                               ; preds = %56, %54, %49, %43, %36, %24
  %59 = load i32, i32* %3, align 4
  ret i32 %59
}

declare dso_local i32 @SIGNAL_INIT(i32, i32, i8*) #1

declare dso_local i32 @ADD_STRING(i8**) #1

declare dso_local i32 @dbus_message_iter_open_container(i32*, i32, i8*, i32*) #1

declare dso_local i64 @vlc_dictionary_has_key(i32*, i8*) #1

declare dso_local i64 @AddProperty(%struct.TYPE_6__*, i32*, i8*, i8*, i32) #1

declare dso_local i32 @dbus_message_iter_abandon_container(i32*, i32*) #1

declare dso_local i32 @dbus_message_iter_close_container(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
