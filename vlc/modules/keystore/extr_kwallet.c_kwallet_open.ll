; ModuleID = '/home/carl/AnghaBench/vlc/modules/keystore/extr_kwallet.c_kwallet_open.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/keystore/extr_kwallet.c_kwallet_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i64, i64, i32 }
%struct.TYPE_15__ = type { i32 }

@VLC_EGENERIC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"open\00", align 1
@.str.1 = private unnamed_addr constant [42 x i8] c"kwallet_open : vlc_dbus_new_method failed\00", align 1
@DBUS_TYPE_STRING = common dso_local global i32 0, align 4
@DBUS_TYPE_INT64 = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [44 x i8] c"kwallet_open : vlc_dbus_send_message failed\00", align 1
@DBUS_TYPE_INT32 = common dso_local global i32 0, align 4
@DBUS_TYPE_INVALID = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [47 x i8] c"kwallet_open : dbus_message_get_args failed\0A%s\00", align 1
@psz_folder = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [42 x i8] c"kwallet_open : could not create folder %s\00", align 1
@VLC_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_14__*)* @kwallet_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kwallet_open(%struct.TYPE_14__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_14__*, align 8
  %4 = alloca %struct.TYPE_13__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_15__, align 4
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %3, align 8
  %13 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %13, i32 0, i32 0
  %15 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  store %struct.TYPE_13__* %15, %struct.TYPE_13__** %4, align 8
  store i32* null, i32** %5, align 8
  store i32* null, i32** %6, align 8
  store i64 0, i64* %9, align 8
  store i32 1, i32* %10, align 4
  %16 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %16, i32* %12, align 4
  %17 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %18 = call i32* @vlc_dbus_new_method(%struct.TYPE_14__* %17, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  store i32* %18, i32** %5, align 8
  %19 = load i32*, i32** %5, align 8
  %20 = icmp ne i32* %19, null
  br i1 %20, label %25, label %21

21:                                               ; preds = %1
  %22 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %23 = call i32 (%struct.TYPE_14__*, i8*, ...) @msg_Err(%struct.TYPE_14__* %22, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0))
  %24 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %24, i32* %2, align 4
  br label %104

25:                                               ; preds = %1
  %26 = load i32*, i32** %5, align 8
  %27 = call i32 @dbus_message_iter_init_append(i32* %26, i32* %7)
  %28 = load i32, i32* @DBUS_TYPE_STRING, align 4
  %29 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %30 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %29, i32 0, i32 0
  %31 = call i32 @dbus_message_iter_append_basic(i32* %7, i32 %28, i64* %30)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %43

33:                                               ; preds = %25
  %34 = load i32, i32* @DBUS_TYPE_INT64, align 4
  %35 = call i32 @dbus_message_iter_append_basic(i32* %7, i32 %34, i64* %9)
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %43

37:                                               ; preds = %33
  %38 = load i32, i32* @DBUS_TYPE_STRING, align 4
  %39 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %40 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %39, i32 0, i32 1
  %41 = call i32 @dbus_message_iter_append_basic(i32* %7, i32 %38, i64* %40)
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %44, label %43

43:                                               ; preds = %37, %33, %25
  br label %90

44:                                               ; preds = %37
  %45 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %46 = load i32*, i32** %5, align 8
  %47 = call i32* @vlc_dbus_send_message(%struct.TYPE_14__* %45, i32* %46)
  store i32* %47, i32** %6, align 8
  %48 = load i32*, i32** %6, align 8
  %49 = icmp ne i32* %48, null
  br i1 %49, label %53, label %50

50:                                               ; preds = %44
  %51 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %52 = call i32 (%struct.TYPE_14__*, i8*, ...) @msg_Err(%struct.TYPE_14__* %51, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.2, i64 0, i64 0))
  br label %90

53:                                               ; preds = %44
  %54 = call i32 @dbus_error_init(%struct.TYPE_15__* %8)
  %55 = load i32*, i32** %6, align 8
  %56 = load i32, i32* @DBUS_TYPE_INT32, align 4
  %57 = load i32, i32* @DBUS_TYPE_INVALID, align 4
  %58 = call i32 @dbus_message_get_args(i32* %55, %struct.TYPE_15__* %8, i32 %56, i32* %10, i32 %57)
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %66, label %60

60:                                               ; preds = %53
  %61 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %62 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %8, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = call i32 (%struct.TYPE_14__*, i8*, ...) @msg_Err(%struct.TYPE_14__* %61, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.3, i64 0, i64 0), i32 %63)
  %65 = call i32 @dbus_error_free(%struct.TYPE_15__* %8)
  br label %90

66:                                               ; preds = %53
  %67 = load i32, i32* %10, align 4
  %68 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %69 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %68, i32 0, i32 2
  store i32 %67, i32* %69, align 8
  %70 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %71 = load i32, i32* @psz_folder, align 4
  %72 = call i64 @kwallet_has_folder(%struct.TYPE_14__* %70, i32 %71, i32* %11)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %75

74:                                               ; preds = %66
  br label %90

75:                                               ; preds = %66
  %76 = load i32, i32* %11, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %88, label %78

78:                                               ; preds = %75
  %79 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %80 = load i32, i32* @psz_folder, align 4
  %81 = call i64 @kwallet_create_folder(%struct.TYPE_14__* %79, i32 %80)
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %87

83:                                               ; preds = %78
  %84 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %85 = load i32, i32* @psz_folder, align 4
  %86 = call i32 (%struct.TYPE_14__*, i8*, ...) @msg_Err(%struct.TYPE_14__* %84, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.4, i64 0, i64 0), i32 %85)
  br label %90

87:                                               ; preds = %78
  br label %88

88:                                               ; preds = %87, %75
  %89 = load i32, i32* @VLC_SUCCESS, align 4
  store i32 %89, i32* %12, align 4
  br label %90

90:                                               ; preds = %88, %83, %74, %60, %50, %43
  %91 = load i32*, i32** %5, align 8
  %92 = icmp ne i32* %91, null
  br i1 %92, label %93, label %96

93:                                               ; preds = %90
  %94 = load i32*, i32** %5, align 8
  %95 = call i32 @dbus_message_unref(i32* %94)
  br label %96

96:                                               ; preds = %93, %90
  %97 = load i32*, i32** %6, align 8
  %98 = icmp ne i32* %97, null
  br i1 %98, label %99, label %102

99:                                               ; preds = %96
  %100 = load i32*, i32** %6, align 8
  %101 = call i32 @dbus_message_unref(i32* %100)
  br label %102

102:                                              ; preds = %99, %96
  %103 = load i32, i32* %12, align 4
  store i32 %103, i32* %2, align 4
  br label %104

104:                                              ; preds = %102, %21
  %105 = load i32, i32* %2, align 4
  ret i32 %105
}

declare dso_local i32* @vlc_dbus_new_method(%struct.TYPE_14__*, i8*) #1

declare dso_local i32 @msg_Err(%struct.TYPE_14__*, i8*, ...) #1

declare dso_local i32 @dbus_message_iter_init_append(i32*, i32*) #1

declare dso_local i32 @dbus_message_iter_append_basic(i32*, i32, i64*) #1

declare dso_local i32* @vlc_dbus_send_message(%struct.TYPE_14__*, i32*) #1

declare dso_local i32 @dbus_error_init(%struct.TYPE_15__*) #1

declare dso_local i32 @dbus_message_get_args(i32*, %struct.TYPE_15__*, i32, i32*, i32) #1

declare dso_local i32 @dbus_error_free(%struct.TYPE_15__*) #1

declare dso_local i64 @kwallet_has_folder(%struct.TYPE_14__*, i32, i32*) #1

declare dso_local i64 @kwallet_create_folder(%struct.TYPE_14__*, i32) #1

declare dso_local i32 @dbus_message_unref(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
