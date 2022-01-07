; ModuleID = '/home/carl/AnghaBench/rofi/source/extr_xcb.c_x11_build_monitor_layout_xinerama.c'
source_filename = "/home/carl/AnghaBench/rofi/source/extr_xcb.c_x11_build_monitor_layout_xinerama.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { %struct.TYPE_10__*, i32 }
%struct.TYPE_10__ = type { i32, %struct.TYPE_10__*, i32, i32, i32, i32 }
%struct.TYPE_9__ = type { i64, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32, i32, i32, i32 }

@xcb = common dso_local global %struct.TYPE_11__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @x11_build_monitor_layout_xinerama to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @x11_build_monitor_layout_xinerama() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32*, align 8
  %3 = alloca %struct.TYPE_9__, align 8
  %4 = alloca %struct.TYPE_10__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_10__*, align 8
  %7 = load %struct.TYPE_11__*, %struct.TYPE_11__** @xcb, align 8
  %8 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 8
  %10 = call i32 @xcb_xinerama_query_screens_unchecked(i32 %9)
  store i32 %10, i32* %1, align 4
  %11 = load %struct.TYPE_11__*, %struct.TYPE_11__** @xcb, align 8
  %12 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 8
  %14 = load i32, i32* %1, align 4
  %15 = call i32* @xcb_xinerama_query_screens_reply(i32 %13, i32 %14, i32* null)
  store i32* %15, i32** %2, align 8
  %16 = load i32*, i32** %2, align 8
  %17 = call { i64, %struct.TYPE_8__* } @xcb_xinerama_query_screens_screen_info_iterator(i32* %16)
  %18 = bitcast %struct.TYPE_9__* %3 to { i64, %struct.TYPE_8__* }*
  %19 = getelementptr inbounds { i64, %struct.TYPE_8__* }, { i64, %struct.TYPE_8__* }* %18, i32 0, i32 0
  %20 = extractvalue { i64, %struct.TYPE_8__* } %17, 0
  store i64 %20, i64* %19, align 8
  %21 = getelementptr inbounds { i64, %struct.TYPE_8__* }, { i64, %struct.TYPE_8__* }* %18, i32 0, i32 1
  %22 = extractvalue { i64, %struct.TYPE_8__* } %17, 1
  store %struct.TYPE_8__* %22, %struct.TYPE_8__** %21, align 8
  br label %23

23:                                               ; preds = %61, %0
  %24 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %3, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = icmp sgt i64 %25, 0
  br i1 %26, label %27, label %63

27:                                               ; preds = %23
  %28 = call %struct.TYPE_10__* @g_malloc0(i32 32)
  store %struct.TYPE_10__* %28, %struct.TYPE_10__** %4, align 8
  %29 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %3, i32 0, i32 1
  %30 = load %struct.TYPE_8__*, %struct.TYPE_8__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %30, i32 0, i32 3
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %34 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %33, i32 0, i32 5
  store i32 %32, i32* %34, align 4
  %35 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %3, i32 0, i32 1
  %36 = load %struct.TYPE_8__*, %struct.TYPE_8__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %40 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %39, i32 0, i32 4
  store i32 %38, i32* %40, align 8
  %41 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %3, i32 0, i32 1
  %42 = load %struct.TYPE_8__*, %struct.TYPE_8__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %46 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %45, i32 0, i32 3
  store i32 %44, i32* %46, align 4
  %47 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %3, i32 0, i32 1
  %48 = load %struct.TYPE_8__*, %struct.TYPE_8__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %52 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %51, i32 0, i32 2
  store i32 %50, i32* %52, align 8
  %53 = load %struct.TYPE_11__*, %struct.TYPE_11__** @xcb, align 8
  %54 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %53, i32 0, i32 0
  %55 = load %struct.TYPE_10__*, %struct.TYPE_10__** %54, align 8
  %56 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %57 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %56, i32 0, i32 1
  store %struct.TYPE_10__* %55, %struct.TYPE_10__** %57, align 8
  %58 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %59 = load %struct.TYPE_11__*, %struct.TYPE_11__** @xcb, align 8
  %60 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %59, i32 0, i32 0
  store %struct.TYPE_10__* %58, %struct.TYPE_10__** %60, align 8
  br label %61

61:                                               ; preds = %27
  %62 = call i32 @xcb_xinerama_screen_info_next(%struct.TYPE_9__* %3)
  br label %23

63:                                               ; preds = %23
  store i32 0, i32* %5, align 4
  %64 = load %struct.TYPE_11__*, %struct.TYPE_11__** @xcb, align 8
  %65 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %64, i32 0, i32 0
  %66 = load %struct.TYPE_10__*, %struct.TYPE_10__** %65, align 8
  store %struct.TYPE_10__* %66, %struct.TYPE_10__** %6, align 8
  br label %67

67:                                               ; preds = %75, %63
  %68 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %69 = icmp ne %struct.TYPE_10__* %68, null
  br i1 %69, label %70, label %79

70:                                               ; preds = %67
  %71 = load i32, i32* %5, align 4
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %5, align 4
  %73 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %74 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %73, i32 0, i32 0
  store i32 %71, i32* %74, align 8
  br label %75

75:                                               ; preds = %70
  %76 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %77 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %76, i32 0, i32 1
  %78 = load %struct.TYPE_10__*, %struct.TYPE_10__** %77, align 8
  store %struct.TYPE_10__* %78, %struct.TYPE_10__** %6, align 8
  br label %67

79:                                               ; preds = %67
  %80 = load i32*, i32** %2, align 8
  %81 = call i32 @free(i32* %80)
  ret void
}

declare dso_local i32 @xcb_xinerama_query_screens_unchecked(i32) #1

declare dso_local i32* @xcb_xinerama_query_screens_reply(i32, i32, i32*) #1

declare dso_local { i64, %struct.TYPE_8__* } @xcb_xinerama_query_screens_screen_info_iterator(i32*) #1

declare dso_local %struct.TYPE_10__* @g_malloc0(i32) #1

declare dso_local i32 @xcb_xinerama_screen_info_next(%struct.TYPE_9__*) #1

declare dso_local i32 @free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
