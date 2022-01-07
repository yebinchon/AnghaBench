; ModuleID = '/home/carl/AnghaBench/systemd/src/login/extr_logind-seat-dbus.c_method_activate_session.c'
source_filename = "/home/carl/AnghaBench/systemd/src/login/extr_logind-seat-dbus.c_method_activate_session.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32, %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_13__ = type { %struct.TYPE_12__* }

@.str = private unnamed_addr constant [2 x i8] c"s\00", align 1
@BUS_ERROR_NO_SUCH_SESSION = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [22 x i8] c"No session '%s' known\00", align 1
@BUS_ERROR_SESSION_NOT_ON_SEAT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [26 x i8] c"Session %s not on seat %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_12__*, i8*, i32*)* @method_activate_session to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @method_activate_session(%struct.TYPE_12__* %0, i8* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_12__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_12__*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.TYPE_13__*, align 8
  %11 = alloca i32, align 4
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32* %2, i32** %7, align 8
  %12 = load i8*, i8** %6, align 8
  %13 = bitcast i8* %12 to %struct.TYPE_12__*
  store %struct.TYPE_12__* %13, %struct.TYPE_12__** %8, align 8
  %14 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %15 = call i32 @assert(%struct.TYPE_12__* %14)
  %16 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %17 = call i32 @assert(%struct.TYPE_12__* %16)
  %18 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %19 = call i32 @sd_bus_message_read(%struct.TYPE_12__* %18, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i8** %9)
  store i32 %19, i32* %11, align 4
  %20 = load i32, i32* %11, align 4
  %21 = icmp slt i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %3
  %23 = load i32, i32* %11, align 4
  store i32 %23, i32* %4, align 4
  br label %63

24:                                               ; preds = %3
  %25 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %26 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %25, i32 0, i32 1
  %27 = load %struct.TYPE_11__*, %struct.TYPE_11__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i8*, i8** %9, align 8
  %31 = call %struct.TYPE_13__* @hashmap_get(i32 %29, i8* %30)
  store %struct.TYPE_13__* %31, %struct.TYPE_13__** %10, align 8
  %32 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %33 = icmp ne %struct.TYPE_13__* %32, null
  br i1 %33, label %39, label %34

34:                                               ; preds = %24
  %35 = load i32*, i32** %7, align 8
  %36 = load i32, i32* @BUS_ERROR_NO_SUCH_SESSION, align 4
  %37 = load i8*, i8** %9, align 8
  %38 = call i32 (i32*, i32, i8*, i8*, ...) @sd_bus_error_setf(i32* %35, i32 %36, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i8* %37)
  store i32 %38, i32* %4, align 4
  br label %63

39:                                               ; preds = %24
  %40 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %41 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %40, i32 0, i32 0
  %42 = load %struct.TYPE_12__*, %struct.TYPE_12__** %41, align 8
  %43 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %44 = icmp ne %struct.TYPE_12__* %42, %43
  br i1 %44, label %45, label %53

45:                                               ; preds = %39
  %46 = load i32*, i32** %7, align 8
  %47 = load i32, i32* @BUS_ERROR_SESSION_NOT_ON_SEAT, align 4
  %48 = load i8*, i8** %9, align 8
  %49 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %50 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = call i32 (i32*, i32, i8*, i8*, ...) @sd_bus_error_setf(i32* %46, i32 %47, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), i8* %48, i32 %51)
  store i32 %52, i32* %4, align 4
  br label %63

53:                                               ; preds = %39
  %54 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %55 = call i32 @session_activate(%struct.TYPE_13__* %54)
  store i32 %55, i32* %11, align 4
  %56 = load i32, i32* %11, align 4
  %57 = icmp slt i32 %56, 0
  br i1 %57, label %58, label %60

58:                                               ; preds = %53
  %59 = load i32, i32* %11, align 4
  store i32 %59, i32* %4, align 4
  br label %63

60:                                               ; preds = %53
  %61 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %62 = call i32 @sd_bus_reply_method_return(%struct.TYPE_12__* %61, i32* null)
  store i32 %62, i32* %4, align 4
  br label %63

63:                                               ; preds = %60, %58, %45, %34, %22
  %64 = load i32, i32* %4, align 4
  ret i32 %64
}

declare dso_local i32 @assert(%struct.TYPE_12__*) #1

declare dso_local i32 @sd_bus_message_read(%struct.TYPE_12__*, i8*, i8**) #1

declare dso_local %struct.TYPE_13__* @hashmap_get(i32, i8*) #1

declare dso_local i32 @sd_bus_error_setf(i32*, i32, i8*, i8*, ...) #1

declare dso_local i32 @session_activate(%struct.TYPE_13__*) #1

declare dso_local i32 @sd_bus_reply_method_return(%struct.TYPE_12__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
