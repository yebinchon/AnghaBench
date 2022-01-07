; ModuleID = '/home/carl/AnghaBench/toxcore/toxcore/extr_friend_connection.c_do_friend_connections.c'
source_filename = "/home/carl/AnghaBench/toxcore/toxcore/extr_friend_connection.c_do_friend_connections.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i64, i32, i32 }
%struct.TYPE_16__ = type { i64, i64, i64, i32, i64, i64, i64, %struct.TYPE_17__, i64, i32 }
%struct.TYPE_17__ = type { %struct.TYPE_14__ }
%struct.TYPE_14__ = type { i64 }

@FRIENDCONN_STATUS_CONNECTING = common dso_local global i64 0, align 8
@FRIEND_DHT_TIMEOUT = common dso_local global i64 0, align 8
@MAX_FRIEND_TCP_CONNECTIONS = common dso_local global i32 0, align 4
@FRIENDCONN_STATUS_CONNECTED = common dso_local global i64 0, align 8
@FRIEND_PING_INTERVAL = common dso_local global i64 0, align 8
@SHARE_RELAYS_INTERVAL = common dso_local global i64 0, align 8
@FRIEND_CONNECTION_TIMEOUT = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @do_friend_connections(%struct.TYPE_15__* %0) #0 {
  %2 = alloca %struct.TYPE_15__*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.TYPE_16__*, align 8
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %2, align 8
  %6 = call i64 (...) @unix_time()
  store i64 %6, i64* %4, align 8
  store i64 0, i64* %3, align 8
  br label %7

7:                                                ; preds = %150, %1
  %8 = load i64, i64* %3, align 8
  %9 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %10 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = icmp slt i64 %8, %11
  br i1 %12, label %13, label %153

13:                                               ; preds = %7
  %14 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %15 = load i64, i64* %3, align 8
  %16 = call %struct.TYPE_16__* @get_conn(%struct.TYPE_15__* %14, i64 %15)
  store %struct.TYPE_16__* %16, %struct.TYPE_16__** %5, align 8
  %17 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %18 = icmp ne %struct.TYPE_16__* %17, null
  br i1 %18, label %19, label %149

19:                                               ; preds = %13
  %20 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %21 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @FRIENDCONN_STATUS_CONNECTING, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %95

25:                                               ; preds = %19
  %26 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %27 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @FRIEND_DHT_TIMEOUT, align 8
  %30 = add nsw i64 %28, %29
  %31 = load i64, i64* %4, align 8
  %32 = icmp slt i64 %30, %31
  br i1 %32, label %33, label %52

33:                                               ; preds = %25
  %34 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %35 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %34, i32 0, i32 8
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %51

38:                                               ; preds = %33
  %39 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %40 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %43 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %42, i32 0, i32 9
  %44 = load i32, i32* %43, align 8
  %45 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %46 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %45, i32 0, i32 8
  %47 = load i64, i64* %46, align 8
  %48 = call i32 @DHT_delfriend(i32 %41, i32 %44, i64 %47)
  %49 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %50 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %49, i32 0, i32 8
  store i64 0, i64* %50, align 8
  br label %51

51:                                               ; preds = %38, %33
  br label %52

52:                                               ; preds = %51, %25
  %53 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %54 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %53, i32 0, i32 2
  %55 = load i64, i64* %54, align 8
  %56 = load i64, i64* @FRIEND_DHT_TIMEOUT, align 8
  %57 = add nsw i64 %55, %56
  %58 = load i64, i64* %4, align 8
  %59 = icmp slt i64 %57, %58
  br i1 %59, label %60, label %65

60:                                               ; preds = %52
  %61 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %62 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %61, i32 0, i32 7
  %63 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %63, i32 0, i32 0
  store i64 0, i64* %64, align 8
  br label %65

65:                                               ; preds = %60, %52
  %66 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %67 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %66, i32 0, i32 8
  %68 = load i64, i64* %67, align 8
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %94

70:                                               ; preds = %65
  %71 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %72 = load i64, i64* %3, align 8
  %73 = call i64 @friend_new_connection(%struct.TYPE_15__* %71, i64 %72)
  %74 = icmp eq i64 %73, 0
  br i1 %74, label %75, label %93

75:                                               ; preds = %70
  %76 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %77 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 8
  %79 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %80 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %79, i32 0, i32 3
  %81 = load i32, i32* %80, align 8
  %82 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %83 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %82, i32 0, i32 7
  %84 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = call i32 @set_direct_ip_port(i32 %78, i32 %81, i64 %86, i32 0)
  %88 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %89 = load i64, i64* %3, align 8
  %90 = load i32, i32* @MAX_FRIEND_TCP_CONNECTIONS, align 4
  %91 = sdiv i32 %90, 2
  %92 = call i32 @connect_to_saved_tcp_relays(%struct.TYPE_15__* %88, i64 %89, i32 %91)
  br label %93

93:                                               ; preds = %75, %70
  br label %94

94:                                               ; preds = %93, %65
  br label %148

95:                                               ; preds = %19
  %96 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %97 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %96, i32 0, i32 0
  %98 = load i64, i64* %97, align 8
  %99 = load i64, i64* @FRIENDCONN_STATUS_CONNECTED, align 8
  %100 = icmp eq i64 %98, %99
  br i1 %100, label %101, label %147

101:                                              ; preds = %95
  %102 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %103 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %102, i32 0, i32 4
  %104 = load i64, i64* %103, align 8
  %105 = load i64, i64* @FRIEND_PING_INTERVAL, align 8
  %106 = add nsw i64 %104, %105
  %107 = load i64, i64* %4, align 8
  %108 = icmp slt i64 %106, %107
  br i1 %108, label %109, label %113

109:                                              ; preds = %101
  %110 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %111 = load i64, i64* %3, align 8
  %112 = call i32 @send_ping(%struct.TYPE_15__* %110, i64 %111)
  br label %113

113:                                              ; preds = %109, %101
  %114 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %115 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %114, i32 0, i32 5
  %116 = load i64, i64* %115, align 8
  %117 = load i64, i64* @SHARE_RELAYS_INTERVAL, align 8
  %118 = add nsw i64 %116, %117
  %119 = load i64, i64* %4, align 8
  %120 = icmp slt i64 %118, %119
  br i1 %120, label %121, label %125

121:                                              ; preds = %113
  %122 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %123 = load i64, i64* %3, align 8
  %124 = call i32 @send_relays(%struct.TYPE_15__* %122, i64 %123)
  br label %125

125:                                              ; preds = %121, %113
  %126 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %127 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %126, i32 0, i32 6
  %128 = load i64, i64* %127, align 8
  %129 = load i64, i64* @FRIEND_CONNECTION_TIMEOUT, align 8
  %130 = add nsw i64 %128, %129
  %131 = load i64, i64* %4, align 8
  %132 = icmp slt i64 %130, %131
  br i1 %132, label %133, label %146

133:                                              ; preds = %125
  %134 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %135 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %134, i32 0, i32 1
  %136 = load i32, i32* %135, align 8
  %137 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %138 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %137, i32 0, i32 3
  %139 = load i32, i32* %138, align 8
  %140 = call i32 @crypto_kill(i32 %136, i32 %139)
  %141 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %142 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %141, i32 0, i32 3
  store i32 -1, i32* %142, align 8
  %143 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %144 = load i64, i64* %3, align 8
  %145 = call i32 @handle_status(%struct.TYPE_15__* %143, i64 %144, i32 0)
  br label %146

146:                                              ; preds = %133, %125
  br label %147

147:                                              ; preds = %146, %95
  br label %148

148:                                              ; preds = %147, %94
  br label %149

149:                                              ; preds = %148, %13
  br label %150

150:                                              ; preds = %149
  %151 = load i64, i64* %3, align 8
  %152 = add nsw i64 %151, 1
  store i64 %152, i64* %3, align 8
  br label %7

153:                                              ; preds = %7
  %154 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %155 = call i32 @LANdiscovery(%struct.TYPE_15__* %154)
  ret void
}

declare dso_local i64 @unix_time(...) #1

declare dso_local %struct.TYPE_16__* @get_conn(%struct.TYPE_15__*, i64) #1

declare dso_local i32 @DHT_delfriend(i32, i32, i64) #1

declare dso_local i64 @friend_new_connection(%struct.TYPE_15__*, i64) #1

declare dso_local i32 @set_direct_ip_port(i32, i32, i64, i32) #1

declare dso_local i32 @connect_to_saved_tcp_relays(%struct.TYPE_15__*, i64, i32) #1

declare dso_local i32 @send_ping(%struct.TYPE_15__*, i64) #1

declare dso_local i32 @send_relays(%struct.TYPE_15__*, i64) #1

declare dso_local i32 @crypto_kill(i32, i32) #1

declare dso_local i32 @handle_status(%struct.TYPE_15__*, i64, i32) #1

declare dso_local i32 @LANdiscovery(%struct.TYPE_15__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
