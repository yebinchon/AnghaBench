; ModuleID = '/home/carl/AnghaBench/vlc/modules/keystore/extr_kwallet.c_kwallet_create_folder.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/keystore/extr_kwallet.c_kwallet_create_folder.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i8*, i8* }
%struct.TYPE_13__ = type { i32 }

@VLC_EGENERIC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"createFolder\00", align 1
@.str.1 = private unnamed_addr constant [51 x i8] c"kwallet_create_folder : vlc_dbus_new_method failed\00", align 1
@DBUS_TYPE_INT32 = common dso_local global i32 0, align 4
@DBUS_TYPE_STRING = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [53 x i8] c"kwallet_create_folder : vlc_dbus_send_message failed\00", align 1
@DBUS_TYPE_BOOLEAN = common dso_local global i32 0, align 4
@DBUS_TYPE_INVALID = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [56 x i8] c"kwallet_create_folder : dbus_message_get_args failed\0A%s\00", align 1
@.str.4 = private unnamed_addr constant [48 x i8] c"kwallet_create_folder : Could not create folder\00", align 1
@VLC_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_12__*, i8*)* @kwallet_create_folder to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kwallet_create_folder(%struct.TYPE_12__* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_12__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.TYPE_11__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_13__, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %4, align 8
  store i8* %1, i8** %5, align 8
  %13 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %13, i32 0, i32 0
  %15 = load %struct.TYPE_11__*, %struct.TYPE_11__** %14, align 8
  store %struct.TYPE_11__* %15, %struct.TYPE_11__** %6, align 8
  store i32* null, i32** %7, align 8
  store i32* null, i32** %8, align 8
  %16 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %16, i32* %12, align 4
  %17 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %18 = call i32* @vlc_dbus_new_method(%struct.TYPE_12__* %17, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  store i32* %18, i32** %7, align 8
  %19 = load i32*, i32** %7, align 8
  %20 = icmp ne i32* %19, null
  br i1 %20, label %25, label %21

21:                                               ; preds = %2
  %22 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %23 = call i32 (%struct.TYPE_12__*, i8*, ...) @msg_Err(%struct.TYPE_12__* %22, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.1, i64 0, i64 0))
  %24 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %24, i32* %3, align 4
  br label %88

25:                                               ; preds = %2
  %26 = load i32*, i32** %7, align 8
  %27 = call i32 @dbus_message_iter_init_append(i32* %26, i32* %10)
  %28 = load i32, i32* @DBUS_TYPE_INT32, align 4
  %29 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %30 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %29, i32 0, i32 0
  %31 = call i32 @dbus_message_iter_append_basic(i32* %10, i32 %28, i8** %30)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %43

33:                                               ; preds = %25
  %34 = load i32, i32* @DBUS_TYPE_STRING, align 4
  %35 = call i32 @dbus_message_iter_append_basic(i32* %10, i32 %34, i8** %5)
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %43

37:                                               ; preds = %33
  %38 = load i32, i32* @DBUS_TYPE_STRING, align 4
  %39 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %40 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %39, i32 0, i32 1
  %41 = call i32 @dbus_message_iter_append_basic(i32* %10, i32 %38, i8** %40)
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %44, label %43

43:                                               ; preds = %37, %33, %25
  br label %74

44:                                               ; preds = %37
  %45 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %46 = load i32*, i32** %7, align 8
  %47 = call i32* @vlc_dbus_send_message(%struct.TYPE_12__* %45, i32* %46)
  store i32* %47, i32** %8, align 8
  %48 = load i32*, i32** %8, align 8
  %49 = icmp ne i32* %48, null
  br i1 %49, label %53, label %50

50:                                               ; preds = %44
  %51 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %52 = call i32 (%struct.TYPE_12__*, i8*, ...) @msg_Err(%struct.TYPE_12__* %51, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.2, i64 0, i64 0))
  br label %74

53:                                               ; preds = %44
  %54 = call i32 @dbus_error_init(%struct.TYPE_13__* %9)
  %55 = load i32*, i32** %8, align 8
  %56 = load i32, i32* @DBUS_TYPE_BOOLEAN, align 4
  %57 = load i32, i32* @DBUS_TYPE_INVALID, align 4
  %58 = call i32 @dbus_message_get_args(i32* %55, %struct.TYPE_13__* %9, i32 %56, i32* %11, i32 %57)
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %66, label %60

60:                                               ; preds = %53
  %61 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %62 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %9, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = call i32 (%struct.TYPE_12__*, i8*, ...) @msg_Err(%struct.TYPE_12__* %61, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.3, i64 0, i64 0), i32 %63)
  %65 = call i32 @dbus_error_free(%struct.TYPE_13__* %9)
  br label %74

66:                                               ; preds = %53
  %67 = load i32, i32* %11, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %72, label %69

69:                                               ; preds = %66
  %70 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %71 = call i32 (%struct.TYPE_12__*, i8*, ...) @msg_Err(%struct.TYPE_12__* %70, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.4, i64 0, i64 0))
  br label %74

72:                                               ; preds = %66
  %73 = load i32, i32* @VLC_SUCCESS, align 4
  store i32 %73, i32* %12, align 4
  br label %74

74:                                               ; preds = %72, %69, %60, %50, %43
  %75 = load i32*, i32** %7, align 8
  %76 = icmp ne i32* %75, null
  br i1 %76, label %77, label %80

77:                                               ; preds = %74
  %78 = load i32*, i32** %7, align 8
  %79 = call i32 @dbus_message_unref(i32* %78)
  br label %80

80:                                               ; preds = %77, %74
  %81 = load i32*, i32** %8, align 8
  %82 = icmp ne i32* %81, null
  br i1 %82, label %83, label %86

83:                                               ; preds = %80
  %84 = load i32*, i32** %8, align 8
  %85 = call i32 @dbus_message_unref(i32* %84)
  br label %86

86:                                               ; preds = %83, %80
  %87 = load i32, i32* %12, align 4
  store i32 %87, i32* %3, align 4
  br label %88

88:                                               ; preds = %86, %21
  %89 = load i32, i32* %3, align 4
  ret i32 %89
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
