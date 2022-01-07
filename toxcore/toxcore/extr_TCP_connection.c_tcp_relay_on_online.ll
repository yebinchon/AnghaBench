; ModuleID = '/home/carl/AnghaBench/toxcore/toxcore/extr_TCP_connection.c_tcp_relay_on_online.c'
source_filename = "/home/carl/AnghaBench/toxcore/toxcore/extr_TCP_connection.c_tcp_relay_on_online.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32, i64, i64 }
%struct.TYPE_12__ = type { i32, i64, i32 }
%struct.TYPE_14__ = type { i32 }

@TCP_CONN_CONNECTED = common dso_local global i32 0, align 4
@NUM_ONION_TCP_CONNECTIONS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_13__*, i32)* @tcp_relay_on_online to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tcp_relay_on_online(%struct.TYPE_13__* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_13__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_12__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_14__*, align 8
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %11 = load i32, i32* %5, align 4
  %12 = call %struct.TYPE_12__* @get_tcp_connection(%struct.TYPE_13__* %10, i32 %11)
  store %struct.TYPE_12__* %12, %struct.TYPE_12__** %6, align 8
  %13 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %14 = icmp ne %struct.TYPE_12__* %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %86

16:                                               ; preds = %2
  store i32 0, i32* %8, align 4
  store i32 0, i32* %7, align 4
  br label %17

17:                                               ; preds = %48, %16
  %18 = load i32, i32* %7, align 4
  %19 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %20 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = icmp ult i32 %18, %21
  br i1 %22, label %23, label %51

23:                                               ; preds = %17
  %24 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %25 = load i32, i32* %7, align 4
  %26 = call %struct.TYPE_14__* @get_connection(%struct.TYPE_13__* %24, i32 %25)
  store %struct.TYPE_14__* %26, %struct.TYPE_14__** %9, align 8
  %27 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %28 = icmp ne %struct.TYPE_14__* %27, null
  br i1 %28, label %29, label %47

29:                                               ; preds = %23
  %30 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %31 = load i32, i32* %5, align 4
  %32 = call i64 @tcp_connection_in_conn(%struct.TYPE_14__* %30, i32 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %46

34:                                               ; preds = %29
  %35 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %36 = load i32, i32* %5, align 4
  %37 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %38 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i64 @send_tcp_relay_routing_request(%struct.TYPE_13__* %35, i32 %36, i32 %39)
  %41 = icmp eq i64 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %34
  %43 = load i32, i32* %8, align 4
  %44 = add i32 %43, 1
  store i32 %44, i32* %8, align 4
  br label %45

45:                                               ; preds = %42, %34
  br label %46

46:                                               ; preds = %45, %29
  br label %47

47:                                               ; preds = %46, %23
  br label %48

48:                                               ; preds = %47
  %49 = load i32, i32* %7, align 4
  %50 = add i32 %49, 1
  store i32 %50, i32* %7, align 4
  br label %17

51:                                               ; preds = %17
  %52 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %53 = load i32, i32* %5, align 4
  %54 = call i32 @tcp_relay_set_callbacks(%struct.TYPE_13__* %52, i32 %53)
  %55 = load i32, i32* @TCP_CONN_CONNECTED, align 4
  %56 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %57 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %56, i32 0, i32 2
  store i32 %55, i32* %57, align 8
  %58 = load i32, i32* %8, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %64

60:                                               ; preds = %51
  %61 = call i64 (...) @unix_time()
  %62 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %63 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %62, i32 0, i32 1
  store i64 %61, i64* %63, align 8
  br label %67

64:                                               ; preds = %51
  %65 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %66 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %65, i32 0, i32 1
  store i64 0, i64* %66, align 8
  br label %67

67:                                               ; preds = %64, %60
  %68 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %69 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %68, i32 0, i32 2
  %70 = load i64, i64* %69, align 8
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %85

72:                                               ; preds = %67
  %73 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %74 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %73, i32 0, i32 1
  %75 = load i64, i64* %74, align 8
  %76 = load i64, i64* @NUM_ONION_TCP_CONNECTIONS, align 8
  %77 = icmp slt i64 %75, %76
  br i1 %77, label %78, label %85

78:                                               ; preds = %72
  %79 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %80 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %79, i32 0, i32 0
  store i32 1, i32* %80, align 8
  %81 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %82 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %81, i32 0, i32 1
  %83 = load i64, i64* %82, align 8
  %84 = add nsw i64 %83, 1
  store i64 %84, i64* %82, align 8
  br label %85

85:                                               ; preds = %78, %72, %67
  store i32 0, i32* %3, align 4
  br label %86

86:                                               ; preds = %85, %15
  %87 = load i32, i32* %3, align 4
  ret i32 %87
}

declare dso_local %struct.TYPE_12__* @get_tcp_connection(%struct.TYPE_13__*, i32) #1

declare dso_local %struct.TYPE_14__* @get_connection(%struct.TYPE_13__*, i32) #1

declare dso_local i64 @tcp_connection_in_conn(%struct.TYPE_14__*, i32) #1

declare dso_local i64 @send_tcp_relay_routing_request(%struct.TYPE_13__*, i32, i32) #1

declare dso_local i32 @tcp_relay_set_callbacks(%struct.TYPE_13__*, i32) #1

declare dso_local i64 @unix_time(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
