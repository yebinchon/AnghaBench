; ModuleID = '/home/carl/AnghaBench/vlc/modules/keystore/extr_kwallet.c_kwallet_network_wallet.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/keystore/extr_kwallet.c_kwallet_network_wallet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_13__ = type { i32 }

@VLC_EGENERIC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"networkWallet\00", align 1
@.str.1 = private unnamed_addr constant [52 x i8] c"kwallet_network_wallet : vlc_dbus_new_method failed\00", align 1
@.str.2 = private unnamed_addr constant [54 x i8] c"kwallet_network_wallet : vlc_dbus_send_message failed\00", align 1
@DBUS_TYPE_STRING = common dso_local global i32 0, align 4
@DBUS_TYPE_INVALID = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [57 x i8] c"kwallet_network_wallet : dbus_message_get_args failed\0A%s\00", align 1
@VLC_ENOMEM = common dso_local global i32 0, align 4
@VLC_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_12__*)* @kwallet_network_wallet to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kwallet_network_wallet(%struct.TYPE_12__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_12__*, align 8
  %4 = alloca %struct.TYPE_11__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_13__, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %3, align 8
  %10 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %11 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %10, i32 0, i32 0
  %12 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  store %struct.TYPE_11__* %12, %struct.TYPE_11__** %4, align 8
  store i32* null, i32** %5, align 8
  store i32* null, i32** %6, align 8
  %13 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %13, i32* %9, align 4
  %14 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %15 = call i32* @vlc_dbus_new_method(%struct.TYPE_12__* %14, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  store i32* %15, i32** %5, align 8
  %16 = load i32*, i32** %5, align 8
  %17 = icmp ne i32* %16, null
  br i1 %17, label %22, label %18

18:                                               ; preds = %1
  %19 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %20 = call i32 (%struct.TYPE_12__*, i8*, ...) @msg_Err(%struct.TYPE_12__* %19, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.1, i64 0, i64 0))
  %21 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %21, i32* %2, align 4
  br label %71

22:                                               ; preds = %1
  %23 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %24 = load i32*, i32** %5, align 8
  %25 = call i32* @vlc_dbus_send_message(%struct.TYPE_12__* %23, i32* %24)
  store i32* %25, i32** %6, align 8
  %26 = load i32*, i32** %6, align 8
  %27 = icmp ne i32* %26, null
  br i1 %27, label %31, label %28

28:                                               ; preds = %22
  %29 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %30 = call i32 (%struct.TYPE_12__*, i8*, ...) @msg_Err(%struct.TYPE_12__* %29, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.2, i64 0, i64 0))
  br label %57

31:                                               ; preds = %22
  %32 = call i32 @dbus_error_init(%struct.TYPE_13__* %7)
  %33 = load i32*, i32** %6, align 8
  %34 = load i32, i32* @DBUS_TYPE_STRING, align 4
  %35 = load i32, i32* @DBUS_TYPE_INVALID, align 4
  %36 = call i32 @dbus_message_get_args(i32* %33, %struct.TYPE_13__* %7, i32 %34, i8** %8, i32 %35)
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %44, label %38

38:                                               ; preds = %31
  %39 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %40 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %7, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call i32 (%struct.TYPE_12__*, i8*, ...) @msg_Err(%struct.TYPE_12__* %39, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.3, i64 0, i64 0), i32 %41)
  %43 = call i32 @dbus_error_free(%struct.TYPE_13__* %7)
  br label %57

44:                                               ; preds = %31
  %45 = load i8*, i8** %8, align 8
  %46 = call i32 @strdup(i8* %45)
  %47 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %48 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %47, i32 0, i32 0
  store i32 %46, i32* %48, align 4
  %49 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %50 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %55, label %53

53:                                               ; preds = %44
  %54 = load i32, i32* @VLC_ENOMEM, align 4
  store i32 %54, i32* %9, align 4
  br label %57

55:                                               ; preds = %44
  %56 = load i32, i32* @VLC_SUCCESS, align 4
  store i32 %56, i32* %9, align 4
  br label %57

57:                                               ; preds = %55, %53, %38, %28
  %58 = load i32*, i32** %5, align 8
  %59 = icmp ne i32* %58, null
  br i1 %59, label %60, label %63

60:                                               ; preds = %57
  %61 = load i32*, i32** %5, align 8
  %62 = call i32 @dbus_message_unref(i32* %61)
  br label %63

63:                                               ; preds = %60, %57
  %64 = load i32*, i32** %6, align 8
  %65 = icmp ne i32* %64, null
  br i1 %65, label %66, label %69

66:                                               ; preds = %63
  %67 = load i32*, i32** %6, align 8
  %68 = call i32 @dbus_message_unref(i32* %67)
  br label %69

69:                                               ; preds = %66, %63
  %70 = load i32, i32* %9, align 4
  store i32 %70, i32* %2, align 4
  br label %71

71:                                               ; preds = %69, %18
  %72 = load i32, i32* %2, align 4
  ret i32 %72
}

declare dso_local i32* @vlc_dbus_new_method(%struct.TYPE_12__*, i8*) #1

declare dso_local i32 @msg_Err(%struct.TYPE_12__*, i8*, ...) #1

declare dso_local i32* @vlc_dbus_send_message(%struct.TYPE_12__*, i32*) #1

declare dso_local i32 @dbus_error_init(%struct.TYPE_13__*) #1

declare dso_local i32 @dbus_message_get_args(i32*, %struct.TYPE_13__*, i32, i8**, i32) #1

declare dso_local i32 @dbus_error_free(%struct.TYPE_13__*) #1

declare dso_local i32 @strdup(i8*) #1

declare dso_local i32 @dbus_message_unref(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
