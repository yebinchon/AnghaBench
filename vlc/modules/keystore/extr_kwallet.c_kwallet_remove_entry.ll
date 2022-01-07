; ModuleID = '/home/carl/AnghaBench/vlc/modules/keystore/extr_kwallet.c_kwallet_remove_entry.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/keystore/extr_kwallet.c_kwallet_remove_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i8*, i8* }
%struct.TYPE_14__ = type { i8* }

@VLC_EGENERIC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [48 x i8] c"kwallet_remove_entry : kwallet_has_entry failed\00", align 1
@.str.1 = private unnamed_addr constant [50 x i8] c"kwallet_remove_entry : there is no such entry :%s\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"removeEntry\00", align 1
@.str.3 = private unnamed_addr constant [50 x i8] c"kwallet_remove_entry : vlc_dbus_new_method failed\00", align 1
@DBUS_TYPE_INT32 = common dso_local global i32 0, align 4
@DBUS_TYPE_STRING = common dso_local global i32 0, align 4
@psz_folder = common dso_local global i8* null, align 8
@.str.4 = private unnamed_addr constant [52 x i8] c"kwallet_remove_entry : vlc_dbus_send_message failed\00", align 1
@DBUS_TYPE_INVALID = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [55 x i8] c"kwallet_remove entry : dbus_message_get_args failed\0A%s\00", align 1
@VLC_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_13__*, i8*)* @kwallet_remove_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kwallet_remove_entry(%struct.TYPE_13__* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_13__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.TYPE_12__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_14__, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %4, align 8
  store i8* %1, i8** %5, align 8
  %14 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %15 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %14, i32 0, i32 0
  %16 = load %struct.TYPE_12__*, %struct.TYPE_12__** %15, align 8
  store %struct.TYPE_12__* %16, %struct.TYPE_12__** %6, align 8
  store i32* null, i32** %7, align 8
  store i32* null, i32** %8, align 8
  store i32 0, i32* %12, align 4
  %17 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %17, i32* %13, align 4
  %18 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %19 = load i8*, i8** %5, align 8
  %20 = call i64 @kwallet_has_entry(%struct.TYPE_13__* %18, i8* %19, i32* %12)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %26

22:                                               ; preds = %2
  %23 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %24 = call i32 (%struct.TYPE_13__*, i8*, ...) @msg_Err(%struct.TYPE_13__* %23, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0))
  %25 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %25, i32* %3, align 4
  br label %102

26:                                               ; preds = %2
  %27 = load i32, i32* %12, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %34, label %29

29:                                               ; preds = %26
  %30 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %31 = load i8*, i8** %5, align 8
  %32 = call i32 (%struct.TYPE_13__*, i8*, ...) @msg_Err(%struct.TYPE_13__* %30, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.1, i64 0, i64 0), i8* %31)
  %33 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %33, i32* %3, align 4
  br label %102

34:                                               ; preds = %26
  %35 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %36 = call i32* @vlc_dbus_new_method(%struct.TYPE_13__* %35, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0))
  store i32* %36, i32** %7, align 8
  %37 = icmp ne i32* %36, null
  br i1 %37, label %42, label %38

38:                                               ; preds = %34
  %39 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %40 = call i32 (%struct.TYPE_13__*, i8*, ...) @msg_Err(%struct.TYPE_13__* %39, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.3, i64 0, i64 0))
  %41 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %41, i32* %3, align 4
  br label %102

42:                                               ; preds = %34
  %43 = load i32*, i32** %7, align 8
  %44 = call i32 @dbus_message_iter_init_append(i32* %43, i32* %10)
  %45 = load i32, i32* @DBUS_TYPE_INT32, align 4
  %46 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %47 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %46, i32 0, i32 0
  %48 = call i32 @dbus_message_iter_append_basic(i32* %10, i32 %45, i8** %47)
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %64

50:                                               ; preds = %42
  %51 = load i32, i32* @DBUS_TYPE_STRING, align 4
  %52 = call i32 @dbus_message_iter_append_basic(i32* %10, i32 %51, i8** @psz_folder)
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %64

54:                                               ; preds = %50
  %55 = load i32, i32* @DBUS_TYPE_STRING, align 4
  %56 = call i32 @dbus_message_iter_append_basic(i32* %10, i32 %55, i8** %5)
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %64

58:                                               ; preds = %54
  %59 = load i32, i32* @DBUS_TYPE_STRING, align 4
  %60 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %61 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %60, i32 0, i32 1
  %62 = call i32 @dbus_message_iter_append_basic(i32* %10, i32 %59, i8** %61)
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %65, label %64

64:                                               ; preds = %58, %54, %50, %42
  br label %88

65:                                               ; preds = %58
  %66 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %67 = load i32*, i32** %7, align 8
  %68 = call i32* @vlc_dbus_send_message(%struct.TYPE_13__* %66, i32* %67)
  store i32* %68, i32** %8, align 8
  %69 = icmp ne i32* %68, null
  br i1 %69, label %73, label %70

70:                                               ; preds = %65
  %71 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %72 = call i32 (%struct.TYPE_13__*, i8*, ...) @msg_Err(%struct.TYPE_13__* %71, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.4, i64 0, i64 0))
  br label %88

73:                                               ; preds = %65
  %74 = call i32 @dbus_error_init(%struct.TYPE_14__* %9)
  %75 = load i32*, i32** %8, align 8
  %76 = load i32, i32* @DBUS_TYPE_INT32, align 4
  %77 = load i32, i32* @DBUS_TYPE_INVALID, align 4
  %78 = call i32 @dbus_message_get_args(i32* %75, %struct.TYPE_14__* %9, i32 %76, i32* %11, i32 %77)
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %86, label %80

80:                                               ; preds = %73
  %81 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %82 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %9, i32 0, i32 0
  %83 = load i8*, i8** %82, align 8
  %84 = call i32 (%struct.TYPE_13__*, i8*, ...) @msg_Err(%struct.TYPE_13__* %81, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.5, i64 0, i64 0), i8* %83)
  %85 = call i32 @dbus_error_free(%struct.TYPE_14__* %9)
  br label %88

86:                                               ; preds = %73
  %87 = load i32, i32* @VLC_SUCCESS, align 4
  store i32 %87, i32* %13, align 4
  br label %88

88:                                               ; preds = %86, %80, %70, %64
  %89 = load i32*, i32** %7, align 8
  %90 = icmp ne i32* %89, null
  br i1 %90, label %91, label %94

91:                                               ; preds = %88
  %92 = load i32*, i32** %7, align 8
  %93 = call i32 @dbus_message_unref(i32* %92)
  br label %94

94:                                               ; preds = %91, %88
  %95 = load i32*, i32** %8, align 8
  %96 = icmp ne i32* %95, null
  br i1 %96, label %97, label %100

97:                                               ; preds = %94
  %98 = load i32*, i32** %8, align 8
  %99 = call i32 @dbus_message_unref(i32* %98)
  br label %100

100:                                              ; preds = %97, %94
  %101 = load i32, i32* %13, align 4
  store i32 %101, i32* %3, align 4
  br label %102

102:                                              ; preds = %100, %38, %29, %22
  %103 = load i32, i32* %3, align 4
  ret i32 %103
}

declare dso_local i64 @kwallet_has_entry(%struct.TYPE_13__*, i8*, i32*) #1

declare dso_local i32 @msg_Err(%struct.TYPE_13__*, i8*, ...) #1

declare dso_local i32* @vlc_dbus_new_method(%struct.TYPE_13__*, i8*) #1

declare dso_local i32 @dbus_message_iter_init_append(i32*, i32*) #1

declare dso_local i32 @dbus_message_iter_append_basic(i32*, i32, i8**) #1

declare dso_local i32* @vlc_dbus_send_message(%struct.TYPE_13__*, i32*) #1

declare dso_local i32 @dbus_error_init(%struct.TYPE_14__*) #1

declare dso_local i32 @dbus_message_get_args(i32*, %struct.TYPE_14__*, i32, i32*, i32) #1

declare dso_local i32 @dbus_error_free(%struct.TYPE_14__*) #1

declare dso_local i32 @dbus_message_unref(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
