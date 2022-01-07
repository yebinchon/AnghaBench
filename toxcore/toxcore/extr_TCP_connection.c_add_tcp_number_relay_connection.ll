; ModuleID = '/home/carl/AnghaBench/toxcore/toxcore/extr_TCP_connection.c_add_tcp_number_relay_connection.c'
source_filename = "/home/carl/AnghaBench/toxcore/toxcore/extr_TCP_connection.c_add_tcp_number_relay_connection.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64, i32 }
%struct.TYPE_6__ = type { i64, i32, i32 }

@TCP_CONN_SLEEPING = common dso_local global i64 0, align 8
@TCP_CONN_CONNECTED = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @add_tcp_number_relay_connection(i32* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_7__*, align 8
  %9 = alloca %struct.TYPE_6__*, align 8
  store i32* %0, i32** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %10 = load i32*, i32** %5, align 8
  %11 = load i32, i32* %6, align 4
  %12 = call %struct.TYPE_7__* @get_connection(i32* %10, i32 %11)
  store %struct.TYPE_7__* %12, %struct.TYPE_7__** %8, align 8
  %13 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %14 = icmp ne %struct.TYPE_7__* %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %3
  store i32 -1, i32* %4, align 4
  br label %64

16:                                               ; preds = %3
  %17 = load i32*, i32** %5, align 8
  %18 = load i32, i32* %7, align 4
  %19 = call %struct.TYPE_6__* @get_tcp_connection(i32* %17, i32 %18)
  store %struct.TYPE_6__* %19, %struct.TYPE_6__** %9, align 8
  %20 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %21 = icmp ne %struct.TYPE_6__* %20, null
  br i1 %21, label %23, label %22

22:                                               ; preds = %16
  store i32 -1, i32* %4, align 4
  br label %64

23:                                               ; preds = %16
  %24 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %25 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @TCP_CONN_SLEEPING, align 8
  %28 = icmp ne i64 %26, %27
  br i1 %28, label %29, label %38

29:                                               ; preds = %23
  %30 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @TCP_CONN_SLEEPING, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %35, label %38

35:                                               ; preds = %29
  %36 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 1
  store i32 1, i32* %37, align 8
  br label %38

38:                                               ; preds = %35, %29, %23
  %39 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %40 = load i32, i32* %7, align 4
  %41 = call i32 @add_tcp_connection_to_conn(%struct.TYPE_7__* %39, i32 %40)
  %42 = icmp eq i32 %41, -1
  br i1 %42, label %43, label %44

43:                                               ; preds = %38
  store i32 -1, i32* %4, align 4
  br label %64

44:                                               ; preds = %38
  %45 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* @TCP_CONN_CONNECTED, align 8
  %49 = icmp eq i64 %47, %48
  br i1 %49, label %50, label %63

50:                                               ; preds = %44
  %51 = load i32*, i32** %5, align 8
  %52 = load i32, i32* %7, align 4
  %53 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %54 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 8
  %56 = call i64 @send_tcp_relay_routing_request(i32* %51, i32 %52, i32 %55)
  %57 = icmp eq i64 %56, 0
  br i1 %57, label %58, label %62

58:                                               ; preds = %50
  %59 = call i32 (...) @unix_time()
  %60 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i32 0, i32 2
  store i32 %59, i32* %61, align 4
  br label %62

62:                                               ; preds = %58, %50
  br label %63

63:                                               ; preds = %62, %44
  store i32 0, i32* %4, align 4
  br label %64

64:                                               ; preds = %63, %43, %22, %15
  %65 = load i32, i32* %4, align 4
  ret i32 %65
}

declare dso_local %struct.TYPE_7__* @get_connection(i32*, i32) #1

declare dso_local %struct.TYPE_6__* @get_tcp_connection(i32*, i32) #1

declare dso_local i32 @add_tcp_connection_to_conn(%struct.TYPE_7__*, i32) #1

declare dso_local i64 @send_tcp_relay_routing_request(i32*, i32, i32) #1

declare dso_local i32 @unix_time(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
