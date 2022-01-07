; ModuleID = '/home/carl/AnghaBench/vlc/modules/control/globalhotkeys/extr_xcb.c_Thread.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/control/globalhotkeys/extr_xcb.c_Thread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i32, %struct.TYPE_13__*, i32* }
%struct.TYPE_13__ = type { i64*, i64, i32 }
%struct.pollfd = type { i32, i32 }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_9__ = type { i64, i64 }

@POLLIN = common dso_local global i32 0, align 4
@errno = common dso_local global i64 0, align 8
@EINTR = common dso_local global i64 0, align 8
@XCB_KEY_PRESS = common dso_local global i32 0, align 4
@XCB_NO_SYMBOL = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [19 x i8] c"global-key-pressed\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*)* @Thread to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @Thread(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.TYPE_11__*, align 8
  %4 = alloca %struct.TYPE_12__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.pollfd, align 4
  %9 = alloca %struct.TYPE_10__*, align 8
  %10 = alloca %struct.TYPE_9__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_13__*, align 8
  %13 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %14 = load i8*, i8** %2, align 8
  %15 = bitcast i8* %14 to %struct.TYPE_11__*
  store %struct.TYPE_11__* %15, %struct.TYPE_11__** %3, align 8
  %16 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %17 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %16, i32 0, i32 0
  %18 = load %struct.TYPE_12__*, %struct.TYPE_12__** %17, align 8
  store %struct.TYPE_12__* %18, %struct.TYPE_12__** %4, align 8
  %19 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %20 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %19, i32 0, i32 2
  %21 = load i32*, i32** %20, align 8
  store i32* %21, i32** %5, align 8
  %22 = call i32 (...) @vlc_savecancel()
  store i32 %22, i32* %6, align 4
  %23 = load i32*, i32** %5, align 8
  %24 = call i32 @xcb_flush(i32* %23)
  %25 = load i32*, i32** %5, align 8
  %26 = call i32 @xcb_get_file_descriptor(i32* %25)
  store i32 %26, i32* %7, align 4
  br label %27

27:                                               ; preds = %124, %41, %1
  %28 = load i32, i32* %6, align 4
  %29 = call i32 @vlc_restorecancel(i32 %28)
  %30 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %8, i32 0, i32 0
  %31 = load i32, i32* %7, align 4
  store i32 %31, i32* %30, align 4
  %32 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %8, i32 0, i32 1
  %33 = load i32, i32* @POLLIN, align 4
  store i32 %33, i32* %32, align 4
  %34 = call i64 @poll(%struct.pollfd* %8, i32 1, i32 -1)
  %35 = icmp slt i64 %34, 0
  br i1 %35, label %36, label %43

36:                                               ; preds = %27
  %37 = load i64, i64* @errno, align 8
  %38 = load i64, i64* @EINTR, align 8
  %39 = icmp ne i64 %37, %38
  br i1 %39, label %40, label %41

40:                                               ; preds = %36
  br label %125

41:                                               ; preds = %36
  %42 = call i32 (...) @vlc_savecancel()
  store i32 %42, i32* %6, align 4
  br label %27

43:                                               ; preds = %27
  %44 = call i32 (...) @vlc_savecancel()
  store i32 %44, i32* %6, align 4
  br label %45

45:                                               ; preds = %121, %56, %43
  %46 = load i32*, i32** %5, align 8
  %47 = call %struct.TYPE_10__* @xcb_poll_for_event(i32* %46)
  store %struct.TYPE_10__* %47, %struct.TYPE_10__** %9, align 8
  %48 = icmp ne %struct.TYPE_10__* %47, null
  br i1 %48, label %49, label %124

49:                                               ; preds = %45
  %50 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %51 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = and i32 %52, 127
  %54 = load i32, i32* @XCB_KEY_PRESS, align 4
  %55 = icmp ne i32 %53, %54
  br i1 %55, label %56, label %59

56:                                               ; preds = %49
  %57 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %58 = call i32 @free(%struct.TYPE_10__* %57)
  br label %45

59:                                               ; preds = %49
  %60 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %61 = bitcast %struct.TYPE_10__* %60 to %struct.TYPE_9__*
  store %struct.TYPE_9__* %61, %struct.TYPE_9__** %10, align 8
  store i32 0, i32* %11, align 4
  br label %62

62:                                               ; preds = %117, %59
  %63 = load i32, i32* %11, align 4
  %64 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %65 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = icmp slt i32 %63, %66
  br i1 %67, label %68, label %120

68:                                               ; preds = %62
  %69 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %70 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %69, i32 0, i32 1
  %71 = load %struct.TYPE_13__*, %struct.TYPE_13__** %70, align 8
  %72 = load i32, i32* %11, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %71, i64 %73
  store %struct.TYPE_13__* %74, %struct.TYPE_13__** %12, align 8
  store i32 0, i32* %13, align 4
  br label %75

75:                                               ; preds = %113, %68
  %76 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %77 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %76, i32 0, i32 0
  %78 = load i64*, i64** %77, align 8
  %79 = load i32, i32* %13, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds i64, i64* %78, i64 %80
  %82 = load i64, i64* %81, align 8
  %83 = load i64, i64* @XCB_NO_SYMBOL, align 8
  %84 = icmp ne i64 %82, %83
  br i1 %84, label %85, label %116

85:                                               ; preds = %75
  %86 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %87 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %86, i32 0, i32 0
  %88 = load i64*, i64** %87, align 8
  %89 = load i32, i32* %13, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds i64, i64* %88, i64 %90
  %92 = load i64, i64* %91, align 8
  %93 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %94 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %93, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = icmp eq i64 %92, %95
  br i1 %96, label %97, label %112

97:                                               ; preds = %85
  %98 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %99 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %98, i32 0, i32 1
  %100 = load i64, i64* %99, align 8
  %101 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %102 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %101, i32 0, i32 1
  %103 = load i64, i64* %102, align 8
  %104 = icmp eq i64 %100, %103
  br i1 %104, label %105, label %112

105:                                              ; preds = %97
  %106 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %107 = call i32 @vlc_object_instance(%struct.TYPE_11__* %106)
  %108 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %109 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %108, i32 0, i32 2
  %110 = load i32, i32* %109, align 8
  %111 = call i32 @var_SetInteger(i32 %107, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 %110)
  br label %121

112:                                              ; preds = %97, %85
  br label %113

113:                                              ; preds = %112
  %114 = load i32, i32* %13, align 4
  %115 = add nsw i32 %114, 1
  store i32 %115, i32* %13, align 4
  br label %75

116:                                              ; preds = %75
  br label %117

117:                                              ; preds = %116
  %118 = load i32, i32* %11, align 4
  %119 = add nsw i32 %118, 1
  store i32 %119, i32* %11, align 4
  br label %62

120:                                              ; preds = %62
  br label %121

121:                                              ; preds = %120, %105
  %122 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %123 = call i32 @free(%struct.TYPE_10__* %122)
  br label %45

124:                                              ; preds = %45
  br label %27

125:                                              ; preds = %40
  ret i8* null
}

declare dso_local i32 @vlc_savecancel(...) #1

declare dso_local i32 @xcb_flush(i32*) #1

declare dso_local i32 @xcb_get_file_descriptor(i32*) #1

declare dso_local i32 @vlc_restorecancel(i32) #1

declare dso_local i64 @poll(%struct.pollfd*, i32, i32) #1

declare dso_local %struct.TYPE_10__* @xcb_poll_for_event(i32*) #1

declare dso_local i32 @free(%struct.TYPE_10__*) #1

declare dso_local i32 @var_SetInteger(i32, i8*, i32) #1

declare dso_local i32 @vlc_object_instance(%struct.TYPE_11__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
