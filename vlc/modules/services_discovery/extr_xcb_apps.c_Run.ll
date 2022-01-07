; ModuleID = '/home/carl/AnghaBench/vlc/modules/services_discovery/extr_xcb_apps.c_Run.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/services_discovery/extr_xcb_apps.c_Run.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i64, i32* }
%struct.TYPE_9__ = type { i32 }
%struct.pollfd = type { i32, i32 }
%struct.TYPE_8__ = type { i64 }

@POLLIN = common dso_local global i32 0, align 4
@XCB_PROPERTY_NOTIFY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*)* @Run to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @Run(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca %struct.TYPE_10__*, align 8
  %5 = alloca %struct.TYPE_11__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_9__*, align 8
  %9 = alloca %struct.pollfd, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_8__*, align 8
  store i8* %0, i8** %3, align 8
  %12 = load i8*, i8** %3, align 8
  %13 = bitcast i8* %12 to %struct.TYPE_10__*
  store %struct.TYPE_10__* %13, %struct.TYPE_10__** %4, align 8
  %14 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %15 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %14, i32 0, i32 0
  %16 = load %struct.TYPE_11__*, %struct.TYPE_11__** %15, align 8
  store %struct.TYPE_11__* %16, %struct.TYPE_11__** %5, align 8
  %17 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %18 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %17, i32 0, i32 1
  %19 = load i32*, i32** %18, align 8
  store i32* %19, i32** %6, align 8
  %20 = load i32*, i32** %6, align 8
  %21 = call i32 @xcb_get_file_descriptor(i32* %20)
  store i32 %21, i32* %7, align 4
  %22 = load i32, i32* %7, align 4
  %23 = icmp eq i32 %22, -1
  br i1 %23, label %24, label %25

24:                                               ; preds = %1
  store i8* null, i8** %2, align 8
  br label %70

25:                                               ; preds = %1
  br label %26

26:                                               ; preds = %66, %25
  %27 = load i32*, i32** %6, align 8
  %28 = call i32 @xcb_connection_has_error(i32* %27)
  %29 = icmp ne i32 %28, 0
  %30 = xor i1 %29, true
  br i1 %30, label %31, label %69

31:                                               ; preds = %26
  %32 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %9, i32 0, i32 0
  %33 = load i32, i32* %7, align 4
  store i32 %33, i32* %32, align 4
  %34 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %9, i32 0, i32 1
  %35 = load i32, i32* @POLLIN, align 4
  store i32 %35, i32* %34, align 4
  %36 = call i32 @poll(%struct.pollfd* %9, i32 1, i32 -1)
  %37 = call i32 (...) @vlc_savecancel()
  store i32 %37, i32* %10, align 4
  br label %38

38:                                               ; preds = %63, %31
  %39 = load i32*, i32** %6, align 8
  %40 = call %struct.TYPE_9__* @xcb_poll_for_event(i32* %39)
  store %struct.TYPE_9__* %40, %struct.TYPE_9__** %8, align 8
  %41 = icmp ne %struct.TYPE_9__* %40, null
  br i1 %41, label %42, label %66

42:                                               ; preds = %38
  %43 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %44 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = and i32 %45, 127
  %47 = load i32, i32* @XCB_PROPERTY_NOTIFY, align 4
  %48 = icmp eq i32 %46, %47
  br i1 %48, label %49, label %63

49:                                               ; preds = %42
  %50 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %51 = bitcast %struct.TYPE_9__* %50 to %struct.TYPE_8__*
  store %struct.TYPE_8__* %51, %struct.TYPE_8__** %11, align 8
  %52 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %53 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %56 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = icmp eq i64 %54, %57
  br i1 %58, label %59, label %62

59:                                               ; preds = %49
  %60 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %61 = call i32 @UpdateApps(%struct.TYPE_10__* %60)
  br label %62

62:                                               ; preds = %59, %49
  br label %63

63:                                               ; preds = %62, %42
  %64 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %65 = call i32 @free(%struct.TYPE_9__* %64)
  br label %38

66:                                               ; preds = %38
  %67 = load i32, i32* %10, align 4
  %68 = call i32 @vlc_restorecancel(i32 %67)
  br label %26

69:                                               ; preds = %26
  store i8* null, i8** %2, align 8
  br label %70

70:                                               ; preds = %69, %24
  %71 = load i8*, i8** %2, align 8
  ret i8* %71
}

declare dso_local i32 @xcb_get_file_descriptor(i32*) #1

declare dso_local i32 @xcb_connection_has_error(i32*) #1

declare dso_local i32 @poll(%struct.pollfd*, i32, i32) #1

declare dso_local i32 @vlc_savecancel(...) #1

declare dso_local %struct.TYPE_9__* @xcb_poll_for_event(i32*) #1

declare dso_local i32 @UpdateApps(%struct.TYPE_10__*) #1

declare dso_local i32 @free(%struct.TYPE_9__*) #1

declare dso_local i32 @vlc_restorecancel(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
