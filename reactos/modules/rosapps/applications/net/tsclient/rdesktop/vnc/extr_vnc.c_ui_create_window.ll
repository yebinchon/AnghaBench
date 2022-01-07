; ModuleID = '/home/carl/AnghaBench/reactos/modules/rosapps/applications/net/tsclient/rdesktop/vnc/extr_vnc.c_ui_create_window.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rosapps/applications/net/tsclient/rdesktop/vnc/extr_vnc.c_ui_create_window.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i8*, i32, i32, %struct.TYPE_8__, i32, i32, i8*, i8*, i8*, i32, i32, i32 }
%struct.TYPE_8__ = type { i8* }
%struct.TYPE_9__ = type { i32, i32, i32, i8*, %struct.TYPE_8__*, i8* }

@reverseByte = common dso_local global i32* null, align 8
@g_width = common dso_local global i32 0, align 4
@g_height = common dso_local global i32 0, align 4
@server = common dso_local global %struct.TYPE_10__* null, align 8
@g_title = common dso_local global i32 0, align 4
@vncMouse = common dso_local global i32 0, align 4
@vncKey = common dso_local global i32 0, align 4
@FALSE = common dso_local global i8* null, align 8
@rfbClientSocket = common dso_local global i32 0, align 4
@defer_time = common dso_local global i32 0, align 4
@frameBuffer = common dso_local global %struct.TYPE_9__* null, align 8
@rfb_port = common dso_local global i32 0, align 4
@TRUE = common dso_local global i8* null, align 8
@client_counter = common dso_local global i8* null, align 8
@stderr = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ui_create_window() #0 {
  %1 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  br label %2

2:                                                ; preds = %48, %0
  %3 = load i32, i32* %1, align 4
  %4 = icmp slt i32 %3, 256
  br i1 %4, label %5, label %51

5:                                                ; preds = %2
  %6 = load i32, i32* %1, align 4
  %7 = ashr i32 %6, 7
  %8 = and i32 %7, 1
  %9 = load i32, i32* %1, align 4
  %10 = ashr i32 %9, 6
  %11 = and i32 %10, 1
  %12 = shl i32 %11, 1
  %13 = or i32 %8, %12
  %14 = load i32, i32* %1, align 4
  %15 = ashr i32 %14, 5
  %16 = and i32 %15, 1
  %17 = shl i32 %16, 2
  %18 = or i32 %13, %17
  %19 = load i32, i32* %1, align 4
  %20 = ashr i32 %19, 4
  %21 = and i32 %20, 1
  %22 = shl i32 %21, 3
  %23 = or i32 %18, %22
  %24 = load i32, i32* %1, align 4
  %25 = ashr i32 %24, 3
  %26 = and i32 %25, 1
  %27 = shl i32 %26, 4
  %28 = or i32 %23, %27
  %29 = load i32, i32* %1, align 4
  %30 = ashr i32 %29, 2
  %31 = and i32 %30, 1
  %32 = shl i32 %31, 5
  %33 = or i32 %28, %32
  %34 = load i32, i32* %1, align 4
  %35 = ashr i32 %34, 1
  %36 = and i32 %35, 1
  %37 = shl i32 %36, 6
  %38 = or i32 %33, %37
  %39 = load i32, i32* %1, align 4
  %40 = ashr i32 %39, 0
  %41 = and i32 %40, 1
  %42 = shl i32 %41, 7
  %43 = or i32 %38, %42
  %44 = load i32*, i32** @reverseByte, align 8
  %45 = load i32, i32* %1, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i32, i32* %44, i64 %46
  store i32 %43, i32* %47, align 4
  br label %48

48:                                               ; preds = %5
  %49 = load i32, i32* %1, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %1, align 4
  br label %2

51:                                               ; preds = %2
  %52 = load i32, i32* @g_width, align 4
  %53 = load i32, i32* @g_height, align 4
  %54 = call %struct.TYPE_10__* @rfbGetScreen(i32 0, i32* null, i32 %52, i32 %53, i32 8, i32 1, i32 1)
  store %struct.TYPE_10__* %54, %struct.TYPE_10__** @server, align 8
  %55 = load i32, i32* @g_title, align 4
  %56 = load %struct.TYPE_10__*, %struct.TYPE_10__** @server, align 8
  %57 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %56, i32 0, i32 11
  store i32 %55, i32* %57, align 8
  %58 = load i32, i32* @g_width, align 4
  %59 = load i32, i32* @g_height, align 4
  %60 = mul nsw i32 %58, %59
  %61 = call i64 @malloc(i32 %60)
  %62 = inttoptr i64 %61 to i8*
  %63 = load %struct.TYPE_10__*, %struct.TYPE_10__** @server, align 8
  %64 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %63, i32 0, i32 0
  store i8* %62, i8** %64, align 8
  %65 = load i32, i32* @vncMouse, align 4
  %66 = load %struct.TYPE_10__*, %struct.TYPE_10__** @server, align 8
  %67 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %66, i32 0, i32 10
  store i32 %65, i32* %67, align 4
  %68 = load i32, i32* @vncKey, align 4
  %69 = load %struct.TYPE_10__*, %struct.TYPE_10__** @server, align 8
  %70 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %69, i32 0, i32 9
  store i32 %68, i32* %70, align 8
  %71 = load %struct.TYPE_10__*, %struct.TYPE_10__** @server, align 8
  %72 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %71, i32 0, i32 1
  store i32 -1, i32* %72, align 8
  %73 = load i8*, i8** @FALSE, align 8
  %74 = load %struct.TYPE_10__*, %struct.TYPE_10__** @server, align 8
  %75 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %74, i32 0, i32 7
  store i8* %73, i8** %75, align 8
  %76 = load i8*, i8** @FALSE, align 8
  %77 = load %struct.TYPE_10__*, %struct.TYPE_10__** @server, align 8
  %78 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %77, i32 0, i32 6
  store i8* %76, i8** %78, align 8
  %79 = load i32, i32* @rfbClientSocket, align 4
  %80 = load %struct.TYPE_10__*, %struct.TYPE_10__** @server, align 8
  %81 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %80, i32 0, i32 5
  store i32 %79, i32* %81, align 4
  %82 = load i8*, i8** @FALSE, align 8
  %83 = load %struct.TYPE_10__*, %struct.TYPE_10__** @server, align 8
  %84 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %83, i32 0, i32 3
  %85 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %84, i32 0, i32 0
  store i8* %82, i8** %85, align 8
  %86 = load i32, i32* @defer_time, align 4
  %87 = load %struct.TYPE_10__*, %struct.TYPE_10__** @server, align 8
  %88 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %87, i32 0, i32 4
  store i32 %86, i32* %88, align 8
  %89 = call i64 @malloc(i32 40)
  %90 = inttoptr i64 %89 to %struct.TYPE_9__*
  store %struct.TYPE_9__* %90, %struct.TYPE_9__** @frameBuffer, align 8
  %91 = load i32, i32* @g_width, align 4
  %92 = load %struct.TYPE_9__*, %struct.TYPE_9__** @frameBuffer, align 8
  %93 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %92, i32 0, i32 0
  store i32 %91, i32* %93, align 8
  %94 = load i32, i32* @g_height, align 4
  %95 = load %struct.TYPE_9__*, %struct.TYPE_9__** @frameBuffer, align 8
  %96 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %95, i32 0, i32 1
  store i32 %94, i32* %96, align 4
  %97 = load i32, i32* @g_width, align 4
  %98 = load %struct.TYPE_9__*, %struct.TYPE_9__** @frameBuffer, align 8
  %99 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %98, i32 0, i32 2
  store i32 %97, i32* %99, align 8
  %100 = load %struct.TYPE_10__*, %struct.TYPE_10__** @server, align 8
  %101 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %100, i32 0, i32 0
  %102 = load i8*, i8** %101, align 8
  %103 = load %struct.TYPE_9__*, %struct.TYPE_9__** @frameBuffer, align 8
  %104 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %103, i32 0, i32 3
  store i8* %102, i8** %104, align 8
  %105 = load i8*, i8** @FALSE, align 8
  %106 = load %struct.TYPE_9__*, %struct.TYPE_9__** @frameBuffer, align 8
  %107 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %106, i32 0, i32 5
  store i8* %105, i8** %107, align 8
  %108 = load %struct.TYPE_10__*, %struct.TYPE_10__** @server, align 8
  %109 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %108, i32 0, i32 3
  %110 = load %struct.TYPE_9__*, %struct.TYPE_9__** @frameBuffer, align 8
  %111 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %110, i32 0, i32 4
  store %struct.TYPE_8__* %109, %struct.TYPE_8__** %111, align 8
  %112 = load i32, i32* @g_width, align 4
  %113 = load i32, i32* @g_height, align 4
  %114 = call i32 @ui_set_clip(i32 0, i32 0, i32 %112, i32 %113)
  %115 = load %struct.TYPE_10__*, %struct.TYPE_10__** @server, align 8
  %116 = call i32 @rfbInitServer(%struct.TYPE_10__* %115)
  %117 = load i32, i32* @rfb_port, align 4
  %118 = load %struct.TYPE_10__*, %struct.TYPE_10__** @server, align 8
  %119 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %118, i32 0, i32 1
  store i32 %117, i32* %119, align 8
  %120 = call i32 (...) @init_keyboard()
  %121 = load %struct.TYPE_10__*, %struct.TYPE_10__** @server, align 8
  %122 = icmp ne %struct.TYPE_10__* %121, null
  %123 = zext i1 %122 to i32
  ret i32 %123
}

declare dso_local %struct.TYPE_10__* @rfbGetScreen(i32, i32*, i32, i32, i32, i32, i32) #1

declare dso_local i64 @malloc(i32) #1

declare dso_local i32 @ui_set_clip(i32, i32, i32, i32) #1

declare dso_local i32 @rfbInitServer(%struct.TYPE_10__*) #1

declare dso_local i32 @init_keyboard(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
