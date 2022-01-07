; ModuleID = '/home/carl/AnghaBench/vlc/modules/keystore/extr_kwallet.c_kwallet_has_folder.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/keystore/extr_kwallet.c_kwallet_has_folder.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i8*, i8* }
%struct.TYPE_13__ = type { i32 }

@VLC_EGENERIC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"hasFolder\00", align 1
@.str.1 = private unnamed_addr constant [48 x i8] c"kwallet_has_folder : vlc_dbus_new_method failed\00", align 1
@DBUS_TYPE_INT32 = common dso_local global i32 0, align 4
@DBUS_TYPE_STRING = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [50 x i8] c"kwallet_has_folder : vlc_dbus_send_message failed\00", align 1
@DBUS_TYPE_BOOLEAN = common dso_local global i32 0, align 4
@DBUS_TYPE_INVALID = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [53 x i8] c"kwallet_has_folder : dbus_message_get_args failed\0A%s\00", align 1
@VLC_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_12__*, i8*, i32*)* @kwallet_has_folder to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kwallet_has_folder(%struct.TYPE_12__* %0, i8* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_12__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_11__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.TYPE_13__, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32* %2, i32** %7, align 8
  %15 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %16 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %15, i32 0, i32 0
  %17 = load %struct.TYPE_11__*, %struct.TYPE_11__** %16, align 8
  store %struct.TYPE_11__* %17, %struct.TYPE_11__** %8, align 8
  store i32* null, i32** %9, align 8
  store i32* null, i32** %10, align 8
  %18 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %18, i32* %14, align 4
  %19 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %20 = call i32* @vlc_dbus_new_method(%struct.TYPE_12__* %19, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  store i32* %20, i32** %9, align 8
  %21 = load i32*, i32** %9, align 8
  %22 = icmp ne i32* %21, null
  br i1 %22, label %27, label %23

23:                                               ; preds = %3
  %24 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %25 = call i32 (%struct.TYPE_12__*, i8*, ...) @msg_Err(%struct.TYPE_12__* %24, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.1, i64 0, i64 0))
  %26 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %26, i32* %4, align 4
  br label %86

27:                                               ; preds = %3
  %28 = load i32*, i32** %9, align 8
  %29 = call i32 @dbus_message_iter_init_append(i32* %28, i32* %12)
  %30 = load i32, i32* @DBUS_TYPE_INT32, align 4
  %31 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %32 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %31, i32 0, i32 0
  %33 = call i32 @dbus_message_iter_append_basic(i32* %12, i32 %30, i8** %32)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %45

35:                                               ; preds = %27
  %36 = load i32, i32* @DBUS_TYPE_STRING, align 4
  %37 = call i32 @dbus_message_iter_append_basic(i32* %12, i32 %36, i8** %6)
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %45

39:                                               ; preds = %35
  %40 = load i32, i32* @DBUS_TYPE_STRING, align 4
  %41 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %42 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %41, i32 0, i32 1
  %43 = call i32 @dbus_message_iter_append_basic(i32* %12, i32 %40, i8** %42)
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %46, label %45

45:                                               ; preds = %39, %35, %27
  br label %72

46:                                               ; preds = %39
  %47 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %48 = load i32*, i32** %9, align 8
  %49 = call i32* @vlc_dbus_send_message(%struct.TYPE_12__* %47, i32* %48)
  store i32* %49, i32** %10, align 8
  %50 = load i32*, i32** %10, align 8
  %51 = icmp ne i32* %50, null
  br i1 %51, label %55, label %52

52:                                               ; preds = %46
  %53 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %54 = call i32 (%struct.TYPE_12__*, i8*, ...) @msg_Err(%struct.TYPE_12__* %53, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.2, i64 0, i64 0))
  br label %72

55:                                               ; preds = %46
  %56 = call i32 @dbus_error_init(%struct.TYPE_13__* %11)
  %57 = load i32*, i32** %10, align 8
  %58 = load i32, i32* @DBUS_TYPE_BOOLEAN, align 4
  %59 = load i32, i32* @DBUS_TYPE_INVALID, align 4
  %60 = call i32 @dbus_message_get_args(i32* %57, %struct.TYPE_13__* %11, i32 %58, i32* %13, i32 %59)
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %68, label %62

62:                                               ; preds = %55
  %63 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %64 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %11, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = call i32 (%struct.TYPE_12__*, i8*, ...) @msg_Err(%struct.TYPE_12__* %63, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.3, i64 0, i64 0), i32 %65)
  %67 = call i32 @dbus_error_free(%struct.TYPE_13__* %11)
  br label %72

68:                                               ; preds = %55
  %69 = load i32, i32* %13, align 4
  %70 = load i32*, i32** %7, align 8
  store i32 %69, i32* %70, align 4
  %71 = load i32, i32* @VLC_SUCCESS, align 4
  store i32 %71, i32* %14, align 4
  br label %72

72:                                               ; preds = %68, %62, %52, %45
  %73 = load i32*, i32** %9, align 8
  %74 = icmp ne i32* %73, null
  br i1 %74, label %75, label %78

75:                                               ; preds = %72
  %76 = load i32*, i32** %9, align 8
  %77 = call i32 @dbus_message_unref(i32* %76)
  br label %78

78:                                               ; preds = %75, %72
  %79 = load i32*, i32** %10, align 8
  %80 = icmp ne i32* %79, null
  br i1 %80, label %81, label %84

81:                                               ; preds = %78
  %82 = load i32*, i32** %10, align 8
  %83 = call i32 @dbus_message_unref(i32* %82)
  br label %84

84:                                               ; preds = %81, %78
  %85 = load i32, i32* %14, align 4
  store i32 %85, i32* %4, align 4
  br label %86

86:                                               ; preds = %84, %23
  %87 = load i32, i32* %4, align 4
  ret i32 %87
}

declare dso_local i32* @vlc_dbus_new_method(%struct.TYPE_12__*, i8*) #1

declare dso_local i32 @msg_Err(%struct.TYPE_12__*, i8*, ...) #1

declare dso_local i32 @dbus_message_iter_init_append(i32*, i32*) #1

declare dso_local i32 @dbus_message_iter_append_basic(i32*, i32, i8**) #1

declare dso_local i32* @vlc_dbus_send_message(%struct.TYPE_12__*, i32*) #1

declare dso_local i32 @dbus_error_init(%struct.TYPE_13__*) #1

declare dso_local i32 @dbus_message_get_args(i32*, %struct.TYPE_13__*, i32, i32*, i32) #1

declare dso_local i32 @dbus_error_free(%struct.TYPE_13__*) #1

declare dso_local i32 @dbus_message_unref(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
