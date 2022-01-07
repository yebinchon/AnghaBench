; ModuleID = '/home/carl/AnghaBench/vlc/src/input/extr_item.c_input_item_parser_InputEvent.c'
source_filename = "/home/carl/AnghaBench/vlc/src/input/extr_item.c_input_item_parser_InputEvent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vlc_input_event = type { i32, i32, %struct.TYPE_5__, %struct.TYPE_7__ }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_8__ = type { i32, %struct.TYPE_6__*, i32 }
%struct.TYPE_6__ = type { i32 (i32, i32, i32)*, i32 (i32, i32, i32)* }

@END_S = common dso_local global i32 0, align 4
@VLC_SUCCESS = common dso_local global i32 0, align 4
@VLC_EGENERIC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.vlc_input_event*, i8*)* @input_item_parser_InputEvent to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @input_item_parser_InputEvent(i32* %0, %struct.vlc_input_event* %1, i8* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca %struct.vlc_input_event*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.TYPE_8__*, align 8
  %8 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store %struct.vlc_input_event* %1, %struct.vlc_input_event** %5, align 8
  store i8* %2, i8** %6, align 8
  %9 = load i8*, i8** %6, align 8
  %10 = bitcast i8* %9 to %struct.TYPE_8__*
  store %struct.TYPE_8__* %10, %struct.TYPE_8__** %7, align 8
  %11 = load %struct.vlc_input_event*, %struct.vlc_input_event** %5, align 8
  %12 = getelementptr inbounds %struct.vlc_input_event, %struct.vlc_input_event* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  switch i32 %13, label %76 [
    i32 128, label %14
    i32 130, label %22
    i32 131, label %29
    i32 129, label %53
  ]

14:                                               ; preds = %3
  %15 = load i32*, i32** %4, align 8
  %16 = call i32 @input_GetItem(i32* %15)
  %17 = load %struct.vlc_input_event*, %struct.vlc_input_event** %5, align 8
  %18 = getelementptr inbounds %struct.vlc_input_event, %struct.vlc_input_event* %17, i32 0, i32 3
  %19 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @input_item_SetDuration(i32 %16, i32 %20)
  br label %77

22:                                               ; preds = %3
  %23 = load %struct.vlc_input_event*, %struct.vlc_input_event** %5, align 8
  %24 = getelementptr inbounds %struct.vlc_input_event, %struct.vlc_input_event* %23, i32 0, i32 2
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %28 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %27, i32 0, i32 2
  store i32 %26, i32* %28, align 8
  br label %77

29:                                               ; preds = %3
  %30 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %31 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 8
  %33 = load i32, i32* @END_S, align 4
  %34 = icmp eq i32 %32, %33
  br i1 %34, label %35, label %37

35:                                               ; preds = %29
  %36 = load i32, i32* @VLC_SUCCESS, align 4
  br label %39

37:                                               ; preds = %29
  %38 = load i32, i32* @VLC_EGENERIC, align 4
  br label %39

39:                                               ; preds = %37, %35
  %40 = phi i32 [ %36, %35 ], [ %38, %37 ]
  store i32 %40, i32* %8, align 4
  %41 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %42 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %41, i32 0, i32 1
  %43 = load %struct.TYPE_6__*, %struct.TYPE_6__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 1
  %45 = load i32 (i32, i32, i32)*, i32 (i32, i32, i32)** %44, align 8
  %46 = load i32*, i32** %4, align 8
  %47 = call i32 @input_GetItem(i32* %46)
  %48 = load i32, i32* %8, align 4
  %49 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %50 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = call i32 %45(i32 %47, i32 %48, i32 %51)
  br label %77

53:                                               ; preds = %3
  %54 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %55 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %54, i32 0, i32 1
  %56 = load %struct.TYPE_6__*, %struct.TYPE_6__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 0
  %58 = load i32 (i32, i32, i32)*, i32 (i32, i32, i32)** %57, align 8
  %59 = icmp ne i32 (i32, i32, i32)* %58, null
  br i1 %59, label %60, label %75

60:                                               ; preds = %53
  %61 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %62 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %61, i32 0, i32 1
  %63 = load %struct.TYPE_6__*, %struct.TYPE_6__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %63, i32 0, i32 0
  %65 = load i32 (i32, i32, i32)*, i32 (i32, i32, i32)** %64, align 8
  %66 = load i32*, i32** %4, align 8
  %67 = call i32 @input_GetItem(i32* %66)
  %68 = load %struct.vlc_input_event*, %struct.vlc_input_event** %5, align 8
  %69 = getelementptr inbounds %struct.vlc_input_event, %struct.vlc_input_event* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %72 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = call i32 %65(i32 %67, i32 %70, i32 %73)
  br label %75

75:                                               ; preds = %60, %53
  br label %77

76:                                               ; preds = %3
  br label %77

77:                                               ; preds = %76, %75, %39, %22, %14
  ret void
}

declare dso_local i32 @input_item_SetDuration(i32, i32) #1

declare dso_local i32 @input_GetItem(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
