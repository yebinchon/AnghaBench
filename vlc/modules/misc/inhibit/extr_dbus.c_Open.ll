; ModuleID = '/home/carl/AnghaBench/vlc/modules/misc/inhibit/extr_dbus.c_Open.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/misc/inhibit/extr_dbus.c_Open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32, %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i32, i32*, i64, i32* }
%struct.TYPE_13__ = type { i32 }

@VLC_ENOMEM = common dso_local global i32 0, align 4
@DBUS_BUS_SESSION = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"cannot connect to session bus: %s\00", align 1
@VLC_EGENERIC = common dso_local global i32 0, align 4
@MAX_API = common dso_local global i32 0, align 4
@dbus_service = common dso_local global i32* null, align 8
@.str.1 = private unnamed_addr constant [17 x i8] c"found service %s\00", align 1
@Inhibit = common dso_local global i32 0, align 4
@VLC_SUCCESS = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [23 x i8] c"cannot find service %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @Open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @Open(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_11__*, align 8
  %5 = alloca %struct.TYPE_12__*, align 8
  %6 = alloca %struct.TYPE_13__, align 4
  %7 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  %8 = load i32*, i32** %3, align 8
  %9 = bitcast i32* %8 to %struct.TYPE_11__*
  store %struct.TYPE_11__* %9, %struct.TYPE_11__** %4, align 8
  %10 = call %struct.TYPE_12__* @malloc(i32 32)
  store %struct.TYPE_12__* %10, %struct.TYPE_12__** %5, align 8
  %11 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %12 = icmp eq %struct.TYPE_12__* %11, null
  %13 = zext i1 %12 to i32
  %14 = call i64 @unlikely(i32 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %1
  %17 = load i32, i32* @VLC_ENOMEM, align 4
  store i32 %17, i32* %2, align 4
  br label %90

18:                                               ; preds = %1
  %19 = call i32 @dbus_error_init(%struct.TYPE_13__* %6)
  %20 = load i32, i32* @DBUS_BUS_SESSION, align 4
  %21 = call i32* @dbus_bus_get_private(i32 %20, %struct.TYPE_13__* %6)
  %22 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %23 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %22, i32 0, i32 1
  store i32* %21, i32** %23, align 8
  %24 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %25 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %24, i32 0, i32 1
  %26 = load i32*, i32** %25, align 8
  %27 = icmp eq i32* %26, null
  br i1 %27, label %28, label %37

28:                                               ; preds = %18
  %29 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %30 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %6, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @msg_Err(%struct.TYPE_11__* %29, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %31)
  %33 = call i32 @dbus_error_free(%struct.TYPE_13__* %6)
  %34 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %35 = call i32 @free(%struct.TYPE_12__* %34)
  %36 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %36, i32* %2, align 4
  br label %90

37:                                               ; preds = %18
  %38 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %39 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %38, i32 0, i32 3
  store i32* null, i32** %39, align 8
  %40 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %41 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %40, i32 0, i32 2
  store i64 0, i64* %41, align 8
  %42 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %43 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %44 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %43, i32 0, i32 1
  store %struct.TYPE_12__* %42, %struct.TYPE_12__** %44, align 8
  store i32 0, i32* %7, align 4
  br label %45

45:                                               ; preds = %83, %37
  %46 = load i32, i32* %7, align 4
  %47 = load i32, i32* @MAX_API, align 4
  %48 = icmp ult i32 %46, %47
  br i1 %48, label %49, label %86

49:                                               ; preds = %45
  %50 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %51 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %50, i32 0, i32 1
  %52 = load i32*, i32** %51, align 8
  %53 = load i32*, i32** @dbus_service, align 8
  %54 = load i32, i32* %7, align 4
  %55 = zext i32 %54 to i64
  %56 = getelementptr inbounds i32, i32* %53, i64 %55
  %57 = load i32, i32* %56, align 4
  %58 = call i64 @dbus_bus_name_has_owner(i32* %52, i32 %57, i32* null)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %75

60:                                               ; preds = %49
  %61 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %62 = load i32*, i32** @dbus_service, align 8
  %63 = load i32, i32* %7, align 4
  %64 = zext i32 %63 to i64
  %65 = getelementptr inbounds i32, i32* %62, i64 %64
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @msg_Dbg(%struct.TYPE_11__* %61, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i32 %66)
  %68 = load i32, i32* %7, align 4
  %69 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %70 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %69, i32 0, i32 0
  store i32 %68, i32* %70, align 8
  %71 = load i32, i32* @Inhibit, align 4
  %72 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %73 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %72, i32 0, i32 0
  store i32 %71, i32* %73, align 8
  %74 = load i32, i32* @VLC_SUCCESS, align 4
  store i32 %74, i32* %2, align 4
  br label %90

75:                                               ; preds = %49
  %76 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %77 = load i32*, i32** @dbus_service, align 8
  %78 = load i32, i32* %7, align 4
  %79 = zext i32 %78 to i64
  %80 = getelementptr inbounds i32, i32* %77, i64 %79
  %81 = load i32, i32* %80, align 4
  %82 = call i32 @msg_Dbg(%struct.TYPE_11__* %76, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0), i32 %81)
  br label %83

83:                                               ; preds = %75
  %84 = load i32, i32* %7, align 4
  %85 = add i32 %84, 1
  store i32 %85, i32* %7, align 4
  br label %45

86:                                               ; preds = %45
  %87 = load i32*, i32** %3, align 8
  %88 = call i32 @Close(i32* %87)
  %89 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %89, i32* %2, align 4
  br label %90

90:                                               ; preds = %86, %60, %28, %16
  %91 = load i32, i32* %2, align 4
  ret i32 %91
}

declare dso_local %struct.TYPE_12__* @malloc(i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @dbus_error_init(%struct.TYPE_13__*) #1

declare dso_local i32* @dbus_bus_get_private(i32, %struct.TYPE_13__*) #1

declare dso_local i32 @msg_Err(%struct.TYPE_11__*, i8*, i32) #1

declare dso_local i32 @dbus_error_free(%struct.TYPE_13__*) #1

declare dso_local i32 @free(%struct.TYPE_12__*) #1

declare dso_local i64 @dbus_bus_name_has_owner(i32*, i32, i32*) #1

declare dso_local i32 @msg_Dbg(%struct.TYPE_11__*, i8*, i32) #1

declare dso_local i32 @Close(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
