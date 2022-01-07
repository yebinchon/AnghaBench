; ModuleID = '/home/carl/AnghaBench/vlc/src/input/extr_item.c_input_item_NewExt.c'
source_filename = "/home/carl/AnghaBench/vlc/src/input/extr_item.c_input_item_NewExt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32, i32, i32, i32, i32, i32, i32*, i32*, i32, i32, i32, i32, i32, i32*, i32*, i64, i32, i32, i32*, i32*, i32, i32 }
%struct.TYPE_9__ = type { %struct.TYPE_8__, i32 }

@ITEM_TYPE_UNKNOWN = common dso_local global i32 0, align 4
@ITEM_NET_UNKNOWN = common dso_local global i32 0, align 4
@ITEM_NET = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_8__* @input_item_NewExt(i8* %0, i8* %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.TYPE_8__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_9__*, align 8
  %13 = alloca %struct.TYPE_8__*, align 8
  %14 = alloca i32*, align 8
  store i8* %0, i8** %7, align 8
  store i8* %1, i8** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %15 = call %struct.TYPE_9__* @calloc(i32 1, i32 136)
  store %struct.TYPE_9__* %15, %struct.TYPE_9__** %12, align 8
  %16 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %17 = icmp eq %struct.TYPE_9__* %16, null
  %18 = zext i1 %17 to i32
  %19 = call i64 @unlikely(i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %5
  store %struct.TYPE_8__* null, %struct.TYPE_8__** %6, align 8
  br label %130

22:                                               ; preds = %5
  %23 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %24 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %23, i32 0, i32 1
  %25 = call i32 @vlc_atomic_rc_init(i32* %24)
  %26 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %27 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %26, i32 0, i32 0
  store %struct.TYPE_8__* %27, %struct.TYPE_8__** %13, align 8
  %28 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %29 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %28, i32 0, i32 22
  store i32* %29, i32** %14, align 8
  %30 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %31 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %30, i32 0, i32 21
  %32 = call i32 @vlc_mutex_init(i32* %31)
  %33 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %34 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %33, i32 0, i32 20
  store i32* null, i32** %34, align 8
  %35 = load i8*, i8** %8, align 8
  %36 = icmp ne i8* %35, null
  br i1 %36, label %37, label %41

37:                                               ; preds = %22
  %38 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %39 = load i8*, i8** %8, align 8
  %40 = call i32 @input_item_SetName(%struct.TYPE_8__* %38, i8* %39)
  br label %41

41:                                               ; preds = %37, %22
  %42 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %43 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %42, i32 0, i32 19
  store i32* null, i32** %43, align 8
  %44 = load i8*, i8** %7, align 8
  %45 = icmp ne i8* %44, null
  br i1 %45, label %46, label %50

46:                                               ; preds = %41
  %47 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %48 = load i8*, i8** %7, align 8
  %49 = call i32 @input_item_SetURI(%struct.TYPE_8__* %47, i8* %48)
  br label %56

50:                                               ; preds = %41
  %51 = load i32, i32* @ITEM_TYPE_UNKNOWN, align 4
  %52 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %53 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %52, i32 0, i32 0
  store i32 %51, i32* %53, align 8
  %54 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %55 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %54, i32 0, i32 1
  store i32 0, i32* %55, align 4
  br label %56

56:                                               ; preds = %50, %46
  %57 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %58 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %57, i32 0, i32 18
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %61 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %60, i32 0, i32 17
  %62 = load i32, i32* %61, align 8
  %63 = call i32 @TAB_INIT(i32 %59, i32 %62)
  %64 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %65 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %64, i32 0, i32 16
  store i64 0, i64* %65, align 8
  %66 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %67 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %66, i32 0, i32 15
  store i32* null, i32** %67, align 8
  %68 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %69 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %68, i32 0, i32 14
  store i32* null, i32** %69, align 8
  %70 = load i32, i32* %9, align 4
  %71 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %72 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %71, i32 0, i32 13
  store i32 %70, i32* %72, align 8
  %73 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %74 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %73, i32 0, i32 12
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %77 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %76, i32 0, i32 11
  %78 = load i32, i32* %77, align 8
  %79 = call i32 @TAB_INIT(i32 %75, i32 %78)
  %80 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %81 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %80, i32 0, i32 10
  %82 = load i32, i32* %81, align 4
  %83 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %84 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %83, i32 0, i32 9
  %85 = load i32, i32* %84, align 8
  %86 = call i32 @TAB_INIT(i32 %82, i32 %85)
  %87 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %88 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %87, i32 0, i32 8
  store i32* null, i32** %88, align 8
  %89 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %90 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %89, i32 0, i32 7
  store i32* null, i32** %90, align 8
  %91 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %92 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %91, i32 0, i32 6
  %93 = load i32, i32* %92, align 8
  %94 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %95 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %94, i32 0, i32 5
  %96 = load i32, i32* %95, align 4
  %97 = call i32 @TAB_INIT(i32 %93, i32 %96)
  %98 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %99 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %98, i32 0, i32 4
  %100 = load i32, i32* %99, align 8
  %101 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %102 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %101, i32 0, i32 3
  %103 = load i32, i32* %102, align 4
  %104 = call i32 @TAB_INIT(i32 %100, i32 %103)
  %105 = load i32*, i32** %14, align 8
  %106 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %107 = call i32 @vlc_event_manager_init(i32* %105, %struct.TYPE_8__* %106)
  %108 = load i32, i32* %10, align 4
  %109 = load i32, i32* @ITEM_TYPE_UNKNOWN, align 4
  %110 = icmp ne i32 %108, %109
  br i1 %110, label %111, label %115

111:                                              ; preds = %56
  %112 = load i32, i32* %10, align 4
  %113 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %114 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %113, i32 0, i32 0
  store i32 %112, i32* %114, align 8
  br label %115

115:                                              ; preds = %111, %56
  %116 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %117 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %116, i32 0, i32 2
  store i32 0, i32* %117, align 8
  %118 = load i32, i32* %11, align 4
  %119 = load i32, i32* @ITEM_NET_UNKNOWN, align 4
  %120 = icmp ne i32 %118, %119
  br i1 %120, label %121, label %128

121:                                              ; preds = %115
  %122 = load i32, i32* %11, align 4
  %123 = load i32, i32* @ITEM_NET, align 4
  %124 = icmp eq i32 %122, %123
  %125 = zext i1 %124 to i32
  %126 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %127 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %126, i32 0, i32 1
  store i32 %125, i32* %127, align 4
  br label %128

128:                                              ; preds = %121, %115
  %129 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  store %struct.TYPE_8__* %129, %struct.TYPE_8__** %6, align 8
  br label %130

130:                                              ; preds = %128, %21
  %131 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  ret %struct.TYPE_8__* %131
}

declare dso_local %struct.TYPE_9__* @calloc(i32, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @vlc_atomic_rc_init(i32*) #1

declare dso_local i32 @vlc_mutex_init(i32*) #1

declare dso_local i32 @input_item_SetName(%struct.TYPE_8__*, i8*) #1

declare dso_local i32 @input_item_SetURI(%struct.TYPE_8__*, i8*) #1

declare dso_local i32 @TAB_INIT(i32, i32) #1

declare dso_local i32 @vlc_event_manager_init(i32*, %struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
