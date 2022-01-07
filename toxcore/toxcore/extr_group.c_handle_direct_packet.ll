; ModuleID = '/home/carl/AnghaBench/toxcore/toxcore/extr_group.c_handle_direct_packet.c'
source_filename = "/home/carl/AnghaBench/toxcore/toxcore/extr_group.c_handle_direct_packet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32 }
%struct.TYPE_11__ = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32, i32, i32, i32 }

@GROUPCHAT_CLOSE_NONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_12__*, i32, i32*, i64, i32)* @handle_direct_packet to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @handle_direct_packet(%struct.TYPE_12__* %0, i32 %1, i32* %2, i64 %3, i32 %4) #0 {
  %6 = alloca %struct.TYPE_12__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_11__*, align 8
  %12 = alloca %struct.TYPE_11__*, align 8
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store i64 %3, i64* %9, align 8
  store i32 %4, i32* %10, align 4
  %13 = load i64, i64* %9, align 8
  %14 = icmp eq i64 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %5
  br label %102

16:                                               ; preds = %5
  %17 = load i32*, i32** %8, align 8
  %18 = getelementptr inbounds i32, i32* %17, i64 0
  %19 = load i32, i32* %18, align 4
  switch i32 %19, label %102 [
    i32 131, label %20
    i32 130, label %59
    i32 129, label %86
    i32 128, label %94
  ]

20:                                               ; preds = %16
  %21 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %22 = load i32, i32* %7, align 4
  %23 = call %struct.TYPE_11__* @get_group_c(%struct.TYPE_12__* %21, i32 %22)
  store %struct.TYPE_11__* %23, %struct.TYPE_11__** %11, align 8
  %24 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %25 = icmp ne %struct.TYPE_11__* %24, null
  br i1 %25, label %27, label %26

26:                                               ; preds = %20
  br label %102

27:                                               ; preds = %20
  %28 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %29 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %28, i32 0, i32 0
  %30 = load %struct.TYPE_10__*, %struct.TYPE_10__** %29, align 8
  %31 = load i32, i32* %10, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %30, i64 %32
  %34 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %33, i32 0, i32 3
  %35 = load i32, i32* %34, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %58, label %37

37:                                               ; preds = %27
  %38 = load i32, i32* @GROUPCHAT_CLOSE_NONE, align 4
  %39 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %40 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %39, i32 0, i32 0
  %41 = load %struct.TYPE_10__*, %struct.TYPE_10__** %40, align 8
  %42 = load i32, i32* %10, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %41, i64 %43
  %45 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %44, i32 0, i32 2
  store i32 %38, i32* %45, align 4
  %46 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %47 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %50 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %49, i32 0, i32 0
  %51 = load %struct.TYPE_10__*, %struct.TYPE_10__** %50, align 8
  %52 = load i32, i32* %10, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %51, i64 %53
  %55 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @kill_friend_connection(i32 %48, i32 %56)
  br label %58

58:                                               ; preds = %37, %27
  br label %102

59:                                               ; preds = %16
  %60 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %61 = load i32, i32* %7, align 4
  %62 = call %struct.TYPE_11__* @get_group_c(%struct.TYPE_12__* %60, i32 %61)
  store %struct.TYPE_11__* %62, %struct.TYPE_11__** %12, align 8
  %63 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %64 = icmp ne %struct.TYPE_11__* %63, null
  br i1 %64, label %66, label %65

65:                                               ; preds = %59
  br label %102

66:                                               ; preds = %59
  %67 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %68 = load i32, i32* %7, align 4
  %69 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %70 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %69, i32 0, i32 0
  %71 = load %struct.TYPE_10__*, %struct.TYPE_10__** %70, align 8
  %72 = load i32, i32* %10, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %71, i64 %73
  %75 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %78 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %77, i32 0, i32 0
  %79 = load %struct.TYPE_10__*, %struct.TYPE_10__** %78, align 8
  %80 = load i32, i32* %10, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %79, i64 %81
  %83 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = call i32 @send_peers(%struct.TYPE_12__* %67, i32 %68, i32 %76, i32 %84)
  br label %102

86:                                               ; preds = %16
  %87 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %88 = load i32, i32* %7, align 4
  %89 = load i32*, i32** %8, align 8
  %90 = getelementptr inbounds i32, i32* %89, i64 1
  %91 = load i64, i64* %9, align 8
  %92 = sub nsw i64 %91, 1
  %93 = call i32 @handle_send_peers(%struct.TYPE_12__* %87, i32 %88, i32* %90, i64 %92)
  br label %102

94:                                               ; preds = %16
  %95 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %96 = load i32, i32* %7, align 4
  %97 = load i32*, i32** %8, align 8
  %98 = getelementptr inbounds i32, i32* %97, i64 1
  %99 = load i64, i64* %9, align 8
  %100 = sub nsw i64 %99, 1
  %101 = call i32 @settitle(%struct.TYPE_12__* %95, i32 %96, i32 -1, i32* %98, i64 %100)
  br label %102

102:                                              ; preds = %15, %26, %65, %16, %94, %86, %66, %58
  ret void
}

declare dso_local %struct.TYPE_11__* @get_group_c(%struct.TYPE_12__*, i32) #1

declare dso_local i32 @kill_friend_connection(i32, i32) #1

declare dso_local i32 @send_peers(%struct.TYPE_12__*, i32, i32, i32) #1

declare dso_local i32 @handle_send_peers(%struct.TYPE_12__*, i32, i32*, i64) #1

declare dso_local i32 @settitle(%struct.TYPE_12__*, i32, i32, i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
