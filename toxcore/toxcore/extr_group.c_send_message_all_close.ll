; ModuleID = '/home/carl/AnghaBench/toxcore/toxcore/extr_group.c_send_message_all_close.c'
source_filename = "/home/carl/AnghaBench/toxcore/toxcore/extr_group.c_send_message_all_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32 }
%struct.TYPE_8__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i64, i32, i32 }

@MAX_GROUP_CONNECTIONS = common dso_local global i64 0, align 8
@GROUPCHAT_CLOSE_ONLINE = common dso_local global i64 0, align 8
@PACKET_ID_MESSAGE_GROUPCHAT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_9__*, i32, i32*, i64, i32)* @send_message_all_close to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @send_message_all_close(%struct.TYPE_9__* %0, i32 %1, i32* %2, i64 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_9__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_8__*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32* %2, i32** %9, align 8
  store i64 %3, i64* %10, align 8
  store i32 %4, i32* %11, align 4
  %15 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %16 = load i32, i32* %8, align 4
  %17 = call %struct.TYPE_8__* @get_group_c(%struct.TYPE_9__* %15, i32 %16)
  store %struct.TYPE_8__* %17, %struct.TYPE_8__** %12, align 8
  %18 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %19 = icmp ne %struct.TYPE_8__* %18, null
  br i1 %19, label %21, label %20

20:                                               ; preds = %5
  store i32 0, i32* %6, align 4
  br label %76

21:                                               ; preds = %5
  store i64 0, i64* %14, align 8
  store i64 0, i64* %13, align 8
  br label %22

22:                                               ; preds = %70, %21
  %23 = load i64, i64* %13, align 8
  %24 = load i64, i64* @MAX_GROUP_CONNECTIONS, align 8
  %25 = icmp ult i64 %23, %24
  br i1 %25, label %26, label %73

26:                                               ; preds = %22
  %27 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %28 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %27, i32 0, i32 0
  %29 = load %struct.TYPE_7__*, %struct.TYPE_7__** %28, align 8
  %30 = load i64, i64* %13, align 8
  %31 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %29, i64 %30
  %32 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @GROUPCHAT_CLOSE_ONLINE, align 8
  %35 = icmp ne i64 %33, %34
  br i1 %35, label %36, label %37

36:                                               ; preds = %26
  br label %70

37:                                               ; preds = %26
  %38 = load i64, i64* %13, align 8
  %39 = trunc i64 %38 to i32
  %40 = load i32, i32* %11, align 4
  %41 = icmp eq i32 %39, %40
  br i1 %41, label %42, label %43

42:                                               ; preds = %37
  br label %70

43:                                               ; preds = %37
  %44 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %45 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %48 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %47, i32 0, i32 0
  %49 = load %struct.TYPE_7__*, %struct.TYPE_7__** %48, align 8
  %50 = load i64, i64* %13, align 8
  %51 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %49, i64 %50
  %52 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* @PACKET_ID_MESSAGE_GROUPCHAT, align 4
  %55 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %56 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %55, i32 0, i32 0
  %57 = load %struct.TYPE_7__*, %struct.TYPE_7__** %56, align 8
  %58 = load i64, i64* %13, align 8
  %59 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %57, i64 %58
  %60 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 8
  %62 = load i32*, i32** %9, align 8
  %63 = load i64, i64* %10, align 8
  %64 = call i64 @send_packet_group_peer(i32 %46, i32 %53, i32 %54, i32 %61, i32* %62, i64 %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %69

66:                                               ; preds = %43
  %67 = load i64, i64* %14, align 8
  %68 = add i64 %67, 1
  store i64 %68, i64* %14, align 8
  br label %69

69:                                               ; preds = %66, %43
  br label %70

70:                                               ; preds = %69, %42, %36
  %71 = load i64, i64* %13, align 8
  %72 = add i64 %71, 1
  store i64 %72, i64* %13, align 8
  br label %22

73:                                               ; preds = %22
  %74 = load i64, i64* %14, align 8
  %75 = trunc i64 %74 to i32
  store i32 %75, i32* %6, align 4
  br label %76

76:                                               ; preds = %73, %20
  %77 = load i32, i32* %6, align 4
  ret i32 %77
}

declare dso_local %struct.TYPE_8__* @get_group_c(%struct.TYPE_9__*, i32) #1

declare dso_local i64 @send_packet_group_peer(i32, i32, i32, i32, i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
