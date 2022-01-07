; ModuleID = '/home/carl/AnghaBench/vlc/modules/keystore/extr_kwallet.c_kwallet_has_entry.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/keystore/extr_kwallet.c_kwallet_has_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i8*, i8* }
%struct.TYPE_13__ = type { i32 }

@VLC_EGENERIC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"hasEntry\00", align 1
@.str.1 = private unnamed_addr constant [47 x i8] c"kwallet_has_entry : vlc_dbus_new_method failed\00", align 1
@DBUS_TYPE_INT32 = common dso_local global i32 0, align 4
@DBUS_TYPE_STRING = common dso_local global i32 0, align 4
@psz_folder = common dso_local global i8* null, align 8
@.str.2 = private unnamed_addr constant [49 x i8] c"kwallet_has_entry : vlc_dbus_send_message failed\00", align 1
@DBUS_TYPE_BOOLEAN = common dso_local global i32 0, align 4
@DBUS_TYPE_INVALID = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [52 x i8] c"kwallet_has_entry : dbus_message_get_args failed\0A%s\00", align 1
@VLC_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_12__*, i8*, i32*)* @kwallet_has_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kwallet_has_entry(%struct.TYPE_12__* %0, i8* %1, i32* %2) #0 {
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
  %20 = call i32* @vlc_dbus_new_method(%struct.TYPE_12__* %19, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  store i32* %20, i32** %9, align 8
  %21 = icmp ne i32* %20, null
  br i1 %21, label %26, label %22

22:                                               ; preds = %3
  %23 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %24 = call i32 (%struct.TYPE_12__*, i8*, ...) @msg_Err(%struct.TYPE_12__* %23, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0))
  %25 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %25, i32* %4, align 4
  br label %88

26:                                               ; preds = %3
  %27 = load i32*, i32** %9, align 8
  %28 = call i32 @dbus_message_iter_init_append(i32* %27, i32* %12)
  %29 = load i32, i32* @DBUS_TYPE_INT32, align 4
  %30 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %31 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %30, i32 0, i32 0
  %32 = call i32 @dbus_message_iter_append_basic(i32* %12, i32 %29, i8** %31)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %48

34:                                               ; preds = %26
  %35 = load i32, i32* @DBUS_TYPE_STRING, align 4
  %36 = call i32 @dbus_message_iter_append_basic(i32* %12, i32 %35, i8** @psz_folder)
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %48

38:                                               ; preds = %34
  %39 = load i32, i32* @DBUS_TYPE_STRING, align 4
  %40 = call i32 @dbus_message_iter_append_basic(i32* %12, i32 %39, i8** %6)
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %48

42:                                               ; preds = %38
  %43 = load i32, i32* @DBUS_TYPE_STRING, align 4
  %44 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %45 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %44, i32 0, i32 1
  %46 = call i32 @dbus_message_iter_append_basic(i32* %12, i32 %43, i8** %45)
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %49, label %48

48:                                               ; preds = %42, %38, %34, %26
  br label %74

49:                                               ; preds = %42
  %50 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %51 = load i32*, i32** %9, align 8
  %52 = call i32* @vlc_dbus_send_message(%struct.TYPE_12__* %50, i32* %51)
  store i32* %52, i32** %10, align 8
  %53 = icmp ne i32* %52, null
  br i1 %53, label %57, label %54

54:                                               ; preds = %49
  %55 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %56 = call i32 (%struct.TYPE_12__*, i8*, ...) @msg_Err(%struct.TYPE_12__* %55, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.2, i64 0, i64 0))
  br label %74

57:                                               ; preds = %49
  %58 = call i32 @dbus_error_init(%struct.TYPE_13__* %11)
  %59 = load i32*, i32** %10, align 8
  %60 = load i32, i32* @DBUS_TYPE_BOOLEAN, align 4
  %61 = load i32, i32* @DBUS_TYPE_INVALID, align 4
  %62 = call i32 @dbus_message_get_args(i32* %59, %struct.TYPE_13__* %11, i32 %60, i32* %13, i32 %61)
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %70, label %64

64:                                               ; preds = %57
  %65 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %66 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %11, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = call i32 (%struct.TYPE_12__*, i8*, ...) @msg_Err(%struct.TYPE_12__* %65, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.3, i64 0, i64 0), i32 %67)
  %69 = call i32 @dbus_error_free(%struct.TYPE_13__* %11)
  br label %74

70:                                               ; preds = %57
  %71 = load i32, i32* %13, align 4
  %72 = load i32*, i32** %7, align 8
  store i32 %71, i32* %72, align 4
  %73 = load i32, i32* @VLC_SUCCESS, align 4
  store i32 %73, i32* %14, align 4
  br label %74

74:                                               ; preds = %70, %64, %54, %48
  %75 = load i32*, i32** %9, align 8
  %76 = icmp ne i32* %75, null
  br i1 %76, label %77, label %80

77:                                               ; preds = %74
  %78 = load i32*, i32** %9, align 8
  %79 = call i32 @dbus_message_unref(i32* %78)
  br label %80

80:                                               ; preds = %77, %74
  %81 = load i32*, i32** %10, align 8
  %82 = icmp ne i32* %81, null
  br i1 %82, label %83, label %86

83:                                               ; preds = %80
  %84 = load i32*, i32** %10, align 8
  %85 = call i32 @dbus_message_unref(i32* %84)
  br label %86

86:                                               ; preds = %83, %80
  %87 = load i32, i32* %14, align 4
  store i32 %87, i32* %4, align 4
  br label %88

88:                                               ; preds = %86, %22
  %89 = load i32, i32* %4, align 4
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
