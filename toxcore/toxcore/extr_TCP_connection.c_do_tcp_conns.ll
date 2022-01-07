; ModuleID = '/home/carl/AnghaBench/toxcore/toxcore/extr_TCP_connection.c_do_tcp_conns.c'
source_filename = "/home/carl/AnghaBench/toxcore/toxcore/extr_TCP_connection.c_do_tcp_conns.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32 }
%struct.TYPE_13__ = type { i64, i64, i64, i64, i32, i32, %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i64 }

@TCP_CONN_SLEEPING = common dso_local global i64 0, align 8
@TCP_CLIENT_DISCONNECTED = common dso_local global i64 0, align 8
@TCP_CONN_CONNECTED = common dso_local global i64 0, align 8
@TCP_CONN_VALID = common dso_local global i64 0, align 8
@TCP_CLIENT_CONFIRMED = common dso_local global i64 0, align 8
@TCP_CONNECTION_ANNOUNCE_TIMEOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_14__*)* @do_tcp_conns to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @do_tcp_conns(%struct.TYPE_14__* %0) #0 {
  %2 = alloca %struct.TYPE_14__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_13__*, align 8
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %2, align 8
  store i32 0, i32* %3, align 4
  br label %5

5:                                                ; preds = %124, %1
  %6 = load i32, i32* %3, align 4
  %7 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %8 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = icmp ult i32 %6, %9
  br i1 %10, label %11, label %127

11:                                               ; preds = %5
  %12 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %13 = load i32, i32* %3, align 4
  %14 = call %struct.TYPE_13__* @get_tcp_connection(%struct.TYPE_14__* %12, i32 %13)
  store %struct.TYPE_13__* %14, %struct.TYPE_13__** %4, align 8
  %15 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %16 = icmp ne %struct.TYPE_13__* %15, null
  br i1 %16, label %17, label %123

17:                                               ; preds = %11
  %18 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @TCP_CONN_SLEEPING, align 8
  %22 = icmp ne i64 %20, %21
  br i1 %22, label %23, label %107

23:                                               ; preds = %17
  %24 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %25 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %24, i32 0, i32 6
  %26 = load %struct.TYPE_12__*, %struct.TYPE_12__** %25, align 8
  %27 = call i32 @do_TCP_connection(%struct.TYPE_12__* %26)
  %28 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %29 = load i32, i32* %3, align 4
  %30 = call %struct.TYPE_13__* @get_tcp_connection(%struct.TYPE_14__* %28, i32 %29)
  store %struct.TYPE_13__* %30, %struct.TYPE_13__** %4, align 8
  %31 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %32 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %31, i32 0, i32 6
  %33 = load %struct.TYPE_12__*, %struct.TYPE_12__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @TCP_CLIENT_DISCONNECTED, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %38, label %53

38:                                               ; preds = %23
  %39 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %40 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @TCP_CONN_CONNECTED, align 8
  %43 = icmp eq i64 %41, %42
  br i1 %43, label %44, label %48

44:                                               ; preds = %38
  %45 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %46 = load i32, i32* %3, align 4
  %47 = call i32 @reconnect_tcp_relay_connection(%struct.TYPE_14__* %45, i32 %46)
  br label %52

48:                                               ; preds = %38
  %49 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %50 = load i32, i32* %3, align 4
  %51 = call i32 @kill_tcp_relay_connection(%struct.TYPE_14__* %49, i32 %50)
  br label %52

52:                                               ; preds = %48, %44
  br label %124

53:                                               ; preds = %23
  %54 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %55 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* @TCP_CONN_VALID, align 8
  %58 = icmp eq i64 %56, %57
  br i1 %58, label %59, label %71

59:                                               ; preds = %53
  %60 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %61 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %60, i32 0, i32 6
  %62 = load %struct.TYPE_12__*, %struct.TYPE_12__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = load i64, i64* @TCP_CLIENT_CONFIRMED, align 8
  %66 = icmp eq i64 %64, %65
  br i1 %66, label %67, label %71

67:                                               ; preds = %59
  %68 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %69 = load i32, i32* %3, align 4
  %70 = call i32 @tcp_relay_on_online(%struct.TYPE_14__* %68, i32 %69)
  br label %71

71:                                               ; preds = %67, %59, %53
  %72 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %73 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = load i64, i64* @TCP_CONN_CONNECTED, align 8
  %76 = icmp eq i64 %74, %75
  br i1 %76, label %77, label %106

77:                                               ; preds = %71
  %78 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %79 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %78, i32 0, i32 5
  %80 = load i32, i32* %79, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %106, label %82

82:                                               ; preds = %77
  %83 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %84 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %83, i32 0, i32 1
  %85 = load i64, i64* %84, align 8
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %106

87:                                               ; preds = %82
  %88 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %89 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %88, i32 0, i32 1
  %90 = load i64, i64* %89, align 8
  %91 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %92 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %91, i32 0, i32 2
  %93 = load i64, i64* %92, align 8
  %94 = icmp eq i64 %90, %93
  br i1 %94, label %95, label %106

95:                                               ; preds = %87
  %96 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %97 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %96, i32 0, i32 4
  %98 = load i32, i32* %97, align 8
  %99 = load i32, i32* @TCP_CONNECTION_ANNOUNCE_TIMEOUT, align 4
  %100 = call i64 @is_timeout(i32 %98, i32 %99)
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %106

102:                                              ; preds = %95
  %103 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %104 = load i32, i32* %3, align 4
  %105 = call i32 @sleep_tcp_relay_connection(%struct.TYPE_14__* %103, i32 %104)
  br label %106

106:                                              ; preds = %102, %95, %87, %82, %77, %71
  br label %107

107:                                              ; preds = %106, %17
  %108 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %109 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %108, i32 0, i32 0
  %110 = load i64, i64* %109, align 8
  %111 = load i64, i64* @TCP_CONN_SLEEPING, align 8
  %112 = icmp eq i64 %110, %111
  br i1 %112, label %113, label %122

113:                                              ; preds = %107
  %114 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %115 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %114, i32 0, i32 3
  %116 = load i64, i64* %115, align 8
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %118, label %122

118:                                              ; preds = %113
  %119 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %120 = load i32, i32* %3, align 4
  %121 = call i32 @unsleep_tcp_relay_connection(%struct.TYPE_14__* %119, i32 %120)
  br label %122

122:                                              ; preds = %118, %113, %107
  br label %123

123:                                              ; preds = %122, %11
  br label %124

124:                                              ; preds = %123, %52
  %125 = load i32, i32* %3, align 4
  %126 = add i32 %125, 1
  store i32 %126, i32* %3, align 4
  br label %5

127:                                              ; preds = %5
  ret void
}

declare dso_local %struct.TYPE_13__* @get_tcp_connection(%struct.TYPE_14__*, i32) #1

declare dso_local i32 @do_TCP_connection(%struct.TYPE_12__*) #1

declare dso_local i32 @reconnect_tcp_relay_connection(%struct.TYPE_14__*, i32) #1

declare dso_local i32 @kill_tcp_relay_connection(%struct.TYPE_14__*, i32) #1

declare dso_local i32 @tcp_relay_on_online(%struct.TYPE_14__*, i32) #1

declare dso_local i64 @is_timeout(i32, i32) #1

declare dso_local i32 @sleep_tcp_relay_connection(%struct.TYPE_14__*, i32) #1

declare dso_local i32 @unsleep_tcp_relay_connection(%struct.TYPE_14__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
