; ModuleID = '/home/carl/AnghaBench/toxcore/toxcore/extr_group.c_handle_packet_online.c'
source_filename = "/home/carl/AnghaBench/toxcore/toxcore/extr_group.c_handle_packet_online.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32 }
%struct.TYPE_13__ = type { i32, %struct.TYPE_12__*, i32 }
%struct.TYPE_12__ = type { i64, i32, i64, i32 }

@ONLINE_PACKET_DATA_SIZE = common dso_local global i64 0, align 8
@GROUPCHAT_CLOSE_ONLINE = common dso_local global i64 0, align 8
@DESIRED_CLOSE_CONNECTIONS = common dso_local global i64 0, align 8
@GROUPCHAT_CLOSE_NONE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_14__*, i32, i32*, i64)* @handle_packet_online to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @handle_packet_online(%struct.TYPE_14__* %0, i32 %1, i32* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_14__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca %struct.TYPE_13__*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store i64 %3, i64* %9, align 8
  %15 = load i64, i64* %9, align 8
  %16 = load i64, i64* @ONLINE_PACKET_DATA_SIZE, align 8
  %17 = icmp ne i64 %15, %16
  br i1 %17, label %18, label %19

18:                                               ; preds = %4
  store i32 -1, i32* %5, align 4
  br label %159

19:                                               ; preds = %4
  %20 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %21 = load i32*, i32** %8, align 8
  %22 = getelementptr inbounds i32, i32* %21, i64 8
  %23 = call i32 @get_group_num(%struct.TYPE_14__* %20, i32* %22)
  store i32 %23, i32* %10, align 4
  %24 = load i32*, i32** %8, align 8
  %25 = call i32 @memcpy(i64* %11, i32* %24, i32 8)
  %26 = load i64, i64* %11, align 8
  %27 = call i64 @ntohs(i64 %26)
  store i64 %27, i64* %11, align 8
  %28 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %29 = load i32, i32* %10, align 4
  %30 = call %struct.TYPE_13__* @get_group_c(%struct.TYPE_14__* %28, i32 %29)
  store %struct.TYPE_13__* %30, %struct.TYPE_13__** %12, align 8
  %31 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %32 = icmp ne %struct.TYPE_13__* %31, null
  br i1 %32, label %34, label %33

33:                                               ; preds = %19
  store i32 -1, i32* %5, align 4
  br label %159

34:                                               ; preds = %19
  %35 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %36 = load i32, i32* %7, align 4
  %37 = call i32 @friend_in_close(%struct.TYPE_13__* %35, i32 %36)
  store i32 %37, i32* %13, align 4
  %38 = load i32, i32* %13, align 4
  %39 = icmp eq i32 %38, -1
  br i1 %39, label %40, label %41

40:                                               ; preds = %34
  store i32 -1, i32* %5, align 4
  br label %159

41:                                               ; preds = %34
  %42 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %43 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %42, i32 0, i32 1
  %44 = load %struct.TYPE_12__*, %struct.TYPE_12__** %43, align 8
  %45 = load i32, i32* %13, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %44, i64 %46
  %48 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* @GROUPCHAT_CLOSE_ONLINE, align 8
  %51 = icmp eq i64 %49, %50
  br i1 %51, label %52, label %53

52:                                               ; preds = %41
  store i32 -1, i32* %5, align 4
  br label %159

53:                                               ; preds = %41
  %54 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %55 = call i64 @count_close_connected(%struct.TYPE_13__* %54)
  %56 = icmp eq i64 %55, 0
  br i1 %56, label %57, label %62

57:                                               ; preds = %53
  %58 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %59 = load i32, i32* %7, align 4
  %60 = load i64, i64* %11, align 8
  %61 = call i32 @send_peer_query(%struct.TYPE_14__* %58, i32 %59, i64 %60)
  br label %62

62:                                               ; preds = %57, %53
  %63 = load i64, i64* %11, align 8
  %64 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %65 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %64, i32 0, i32 1
  %66 = load %struct.TYPE_12__*, %struct.TYPE_12__** %65, align 8
  %67 = load i32, i32* %13, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %66, i64 %68
  %70 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %69, i32 0, i32 2
  store i64 %63, i64* %70, align 8
  %71 = load i64, i64* @GROUPCHAT_CLOSE_ONLINE, align 8
  %72 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %73 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %72, i32 0, i32 1
  %74 = load %struct.TYPE_12__*, %struct.TYPE_12__** %73, align 8
  %75 = load i32, i32* %13, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %74, i64 %76
  %78 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %77, i32 0, i32 0
  store i64 %71, i64* %78, align 8
  %79 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %80 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = load i32, i32* %7, align 4
  %83 = load i32, i32* %10, align 4
  %84 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %85 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %84, i32 0, i32 2
  %86 = load i32, i32* %85, align 8
  %87 = call i32 @send_packet_online(i32 %81, i32 %82, i32 %83, i32 %86)
  %88 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %89 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = icmp ne i32 %90, -1
  br i1 %91, label %92, label %158

92:                                               ; preds = %62
  %93 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %94 = call i64 @count_close_connected(%struct.TYPE_13__* %93)
  %95 = load i64, i64* @DESIRED_CLOSE_CONNECTIONS, align 8
  %96 = icmp sge i64 %94, %95
  br i1 %96, label %97, label %158

97:                                               ; preds = %92
  %98 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %99 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %100 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 8
  %102 = call i32 @friend_in_close(%struct.TYPE_13__* %98, i32 %101)
  store i32 %102, i32* %14, align 4
  %103 = load i32, i32* %14, align 4
  %104 = icmp eq i32 %103, -1
  br i1 %104, label %105, label %106

105:                                              ; preds = %97
  store i32 -1, i32* %5, align 4
  br label %159

106:                                              ; preds = %97
  %107 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %108 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %107, i32 0, i32 1
  %109 = load %struct.TYPE_12__*, %struct.TYPE_12__** %108, align 8
  %110 = load i32, i32* %14, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %109, i64 %111
  %113 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %112, i32 0, i32 3
  %114 = load i32, i32* %113, align 8
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %157, label %116

116:                                              ; preds = %106
  %117 = load i64, i64* @GROUPCHAT_CLOSE_NONE, align 8
  %118 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %119 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %118, i32 0, i32 1
  %120 = load %struct.TYPE_12__*, %struct.TYPE_12__** %119, align 8
  %121 = load i32, i32* %14, align 4
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %120, i64 %122
  %124 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %123, i32 0, i32 0
  store i64 %117, i64* %124, align 8
  %125 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %126 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %127 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %126, i32 0, i32 1
  %128 = load %struct.TYPE_12__*, %struct.TYPE_12__** %127, align 8
  %129 = load i32, i32* %14, align 4
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %128, i64 %130
  %132 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %131, i32 0, i32 1
  %133 = load i32, i32* %132, align 8
  %134 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %135 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %134, i32 0, i32 1
  %136 = load %struct.TYPE_12__*, %struct.TYPE_12__** %135, align 8
  %137 = load i32, i32* %14, align 4
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %136, i64 %138
  %140 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %139, i32 0, i32 2
  %141 = load i64, i64* %140, align 8
  %142 = call i32 @send_peer_kill(%struct.TYPE_14__* %125, i32 %133, i64 %141)
  %143 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %144 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 4
  %146 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %147 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %146, i32 0, i32 1
  %148 = load %struct.TYPE_12__*, %struct.TYPE_12__** %147, align 8
  %149 = load i32, i32* %14, align 4
  %150 = sext i32 %149 to i64
  %151 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %148, i64 %150
  %152 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %151, i32 0, i32 1
  %153 = load i32, i32* %152, align 8
  %154 = call i32 @kill_friend_connection(i32 %145, i32 %153)
  %155 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %156 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %155, i32 0, i32 0
  store i32 -1, i32* %156, align 8
  br label %157

157:                                              ; preds = %116, %106
  br label %158

158:                                              ; preds = %157, %92, %62
  store i32 0, i32* %5, align 4
  br label %159

159:                                              ; preds = %158, %105, %52, %40, %33, %18
  %160 = load i32, i32* %5, align 4
  ret i32 %160
}

declare dso_local i32 @get_group_num(%struct.TYPE_14__*, i32*) #1

declare dso_local i32 @memcpy(i64*, i32*, i32) #1

declare dso_local i64 @ntohs(i64) #1

declare dso_local %struct.TYPE_13__* @get_group_c(%struct.TYPE_14__*, i32) #1

declare dso_local i32 @friend_in_close(%struct.TYPE_13__*, i32) #1

declare dso_local i64 @count_close_connected(%struct.TYPE_13__*) #1

declare dso_local i32 @send_peer_query(%struct.TYPE_14__*, i32, i64) #1

declare dso_local i32 @send_packet_online(i32, i32, i32, i32) #1

declare dso_local i32 @send_peer_kill(%struct.TYPE_14__*, i32, i64) #1

declare dso_local i32 @kill_friend_connection(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
