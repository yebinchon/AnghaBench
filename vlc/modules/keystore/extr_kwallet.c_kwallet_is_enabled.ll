; ModuleID = '/home/carl/AnghaBench/vlc/modules/keystore/extr_kwallet.c_kwallet_is_enabled.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/keystore/extr_kwallet.c_kwallet_is_enabled.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }

@VLC_EGENERIC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"org.freedesktop.DBus\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"/\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"NameHasOwner\00", align 1
@.str.3 = private unnamed_addr constant [47 x i8] c"vlc_dbus_new_method : Failed to create message\00", align 1
@DBUS_TYPE_STRING = common dso_local global i32 0, align 4
@ppsz_sAddr = common dso_local global i32* null, align 8
@.str.4 = private unnamed_addr constant [50 x i8] c"kwallet_is_enabled : vlc_dbus_send_message failed\00", align 1
@DBUS_TYPE_BOOLEAN = common dso_local global i32 0, align 4
@DBUS_TYPE_INVALID = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [53 x i8] c"kwallet_is_enabled : dbus_message_get_args failed\0A%s\00", align 1
@VLC_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32, i32*)* @kwallet_is_enabled to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kwallet_is_enabled(i32* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_5__, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32* %2, i32** %6, align 8
  %13 = load i32*, i32** %4, align 8
  %14 = call i32 @VLC_UNUSED(i32* %13)
  store i32* null, i32** %7, align 8
  store i32* null, i32** %8, align 8
  %15 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %15, i32* %12, align 4
  %16 = call i32* @dbus_message_new_method_call(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0))
  store i32* %16, i32** %7, align 8
  %17 = load i32*, i32** %7, align 8
  %18 = icmp ne i32* %17, null
  br i1 %18, label %22, label %19

19:                                               ; preds = %3
  %20 = load i32*, i32** %4, align 8
  %21 = call i32 (i32*, i8*, ...) @msg_Err(i32* %20, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.3, i64 0, i64 0))
  br label %59

22:                                               ; preds = %3
  %23 = load i32*, i32** %7, align 8
  %24 = call i32 @dbus_message_iter_init_append(i32* %23, i32* %9)
  %25 = load i32, i32* @DBUS_TYPE_STRING, align 4
  %26 = load i32*, i32** @ppsz_sAddr, align 8
  %27 = load i32, i32* %5, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i32, i32* %26, i64 %28
  %30 = call i32 @dbus_message_iter_append_basic(i32* %9, i32 %25, i32* %29)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %33, label %32

32:                                               ; preds = %22
  br label %59

33:                                               ; preds = %22
  %34 = load i32*, i32** %4, align 8
  %35 = load i32*, i32** %7, align 8
  %36 = call i32* @vlc_dbus_send_message(i32* %34, i32* %35)
  store i32* %36, i32** %8, align 8
  %37 = load i32*, i32** %8, align 8
  %38 = icmp ne i32* %37, null
  br i1 %38, label %42, label %39

39:                                               ; preds = %33
  %40 = load i32*, i32** %4, align 8
  %41 = call i32 (i32*, i8*, ...) @msg_Err(i32* %40, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.4, i64 0, i64 0))
  br label %59

42:                                               ; preds = %33
  %43 = call i32 @dbus_error_init(%struct.TYPE_5__* %10)
  %44 = load i32*, i32** %8, align 8
  %45 = load i32, i32* @DBUS_TYPE_BOOLEAN, align 4
  %46 = load i32, i32* @DBUS_TYPE_INVALID, align 4
  %47 = call i32 @dbus_message_get_args(i32* %44, %struct.TYPE_5__* %10, i32 %45, i32* %11, i32 %46)
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %55, label %49

49:                                               ; preds = %42
  %50 = load i32*, i32** %4, align 8
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = call i32 (i32*, i8*, ...) @msg_Err(i32* %50, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.5, i64 0, i64 0), i32 %52)
  %54 = call i32 @dbus_error_free(%struct.TYPE_5__* %10)
  br label %59

55:                                               ; preds = %42
  %56 = load i32, i32* %11, align 4
  %57 = load i32*, i32** %6, align 8
  store i32 %56, i32* %57, align 4
  %58 = load i32, i32* @VLC_SUCCESS, align 4
  store i32 %58, i32* %12, align 4
  br label %59

59:                                               ; preds = %55, %49, %39, %32, %19
  %60 = load i32*, i32** %7, align 8
  %61 = icmp ne i32* %60, null
  br i1 %61, label %62, label %65

62:                                               ; preds = %59
  %63 = load i32*, i32** %7, align 8
  %64 = call i32 @dbus_message_unref(i32* %63)
  br label %65

65:                                               ; preds = %62, %59
  %66 = load i32*, i32** %8, align 8
  %67 = icmp ne i32* %66, null
  br i1 %67, label %68, label %71

68:                                               ; preds = %65
  %69 = load i32*, i32** %8, align 8
  %70 = call i32 @dbus_message_unref(i32* %69)
  br label %71

71:                                               ; preds = %68, %65
  %72 = load i32, i32* %12, align 4
  ret i32 %72
}

declare dso_local i32 @VLC_UNUSED(i32*) #1

declare dso_local i32* @dbus_message_new_method_call(i8*, i8*, i8*, i8*) #1

declare dso_local i32 @msg_Err(i32*, i8*, ...) #1

declare dso_local i32 @dbus_message_iter_init_append(i32*, i32*) #1

declare dso_local i32 @dbus_message_iter_append_basic(i32*, i32, i32*) #1

declare dso_local i32* @vlc_dbus_send_message(i32*, i32*) #1

declare dso_local i32 @dbus_error_init(%struct.TYPE_5__*) #1

declare dso_local i32 @dbus_message_get_args(i32*, %struct.TYPE_5__*, i32, i32*, i32) #1

declare dso_local i32 @dbus_error_free(%struct.TYPE_5__*) #1

declare dso_local i32 @dbus_message_unref(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
