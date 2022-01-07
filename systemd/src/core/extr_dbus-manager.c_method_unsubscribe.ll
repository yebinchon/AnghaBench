; ModuleID = '/home/carl/AnghaBench/systemd/src/core/extr_dbus-manager.c_method_unsubscribe.c'
source_filename = "/home/carl/AnghaBench/systemd/src/core/extr_dbus-manager.c_method_unsubscribe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i64, i32 }

@.str = private unnamed_addr constant [7 x i8] c"status\00", align 1
@BUS_ERROR_NOT_SUBSCRIBED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"Client is not subscribed.\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_9__*, i8*, i32*)* @method_unsubscribe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @method_unsubscribe(%struct.TYPE_9__* %0, i8* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_9__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_9__*, align 8
  %9 = alloca i32, align 4
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32* %2, i32** %7, align 8
  %10 = load i8*, i8** %6, align 8
  %11 = bitcast i8* %10 to %struct.TYPE_9__*
  store %struct.TYPE_9__* %11, %struct.TYPE_9__** %8, align 8
  %12 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %13 = call i32 @assert(%struct.TYPE_9__* %12)
  %14 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %15 = call i32 @assert(%struct.TYPE_9__* %14)
  %16 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %17 = load i32*, i32** %7, align 8
  %18 = call i32 @mac_selinux_access_check(%struct.TYPE_9__* %16, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32* %17)
  store i32 %18, i32* %9, align 4
  %19 = load i32, i32* %9, align 4
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %3
  %22 = load i32, i32* %9, align 4
  store i32 %22, i32* %4, align 4
  br label %51

23:                                               ; preds = %3
  %24 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %25 = call i64 @sd_bus_message_get_bus(%struct.TYPE_9__* %24)
  %26 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %27 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = icmp eq i64 %25, %28
  br i1 %29, label %30, label %48

30:                                               ; preds = %23
  %31 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %32 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 8
  %34 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %35 = call i32 @sd_bus_track_remove_sender(i32 %33, %struct.TYPE_9__* %34)
  store i32 %35, i32* %9, align 4
  %36 = load i32, i32* %9, align 4
  %37 = icmp slt i32 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %30
  %39 = load i32, i32* %9, align 4
  store i32 %39, i32* %4, align 4
  br label %51

40:                                               ; preds = %30
  %41 = load i32, i32* %9, align 4
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %47

43:                                               ; preds = %40
  %44 = load i32*, i32** %7, align 8
  %45 = load i32, i32* @BUS_ERROR_NOT_SUBSCRIBED, align 4
  %46 = call i32 @sd_bus_error_setf(i32* %44, i32 %45, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  store i32 %46, i32* %4, align 4
  br label %51

47:                                               ; preds = %40
  br label %48

48:                                               ; preds = %47, %23
  %49 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %50 = call i32 @sd_bus_reply_method_return(%struct.TYPE_9__* %49, i32* null)
  store i32 %50, i32* %4, align 4
  br label %51

51:                                               ; preds = %48, %43, %38, %21
  %52 = load i32, i32* %4, align 4
  ret i32 %52
}

declare dso_local i32 @assert(%struct.TYPE_9__*) #1

declare dso_local i32 @mac_selinux_access_check(%struct.TYPE_9__*, i8*, i32*) #1

declare dso_local i64 @sd_bus_message_get_bus(%struct.TYPE_9__*) #1

declare dso_local i32 @sd_bus_track_remove_sender(i32, %struct.TYPE_9__*) #1

declare dso_local i32 @sd_bus_error_setf(i32*, i32, i8*) #1

declare dso_local i32 @sd_bus_reply_method_return(%struct.TYPE_9__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
