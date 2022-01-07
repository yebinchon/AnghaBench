; ModuleID = '/home/carl/AnghaBench/toxcore/toxcore/extr_TCP_connection.c_tcp_send_oob_packet.c'
source_filename = "/home/carl/AnghaBench/toxcore/toxcore/extr_TCP_connection.c_tcp_send_oob_packet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i32 }

@TCP_CONN_CONNECTED = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tcp_send_oob_packet(i32* %0, i32 %1, i32* %2, i32* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_3__*, align 8
  %13 = alloca i32, align 4
  store i32* %0, i32** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32* %2, i32** %9, align 8
  store i32* %3, i32** %10, align 8
  store i32 %4, i32* %11, align 4
  %14 = load i32*, i32** %7, align 8
  %15 = load i32, i32* %8, align 4
  %16 = call %struct.TYPE_3__* @get_tcp_connection(i32* %14, i32 %15)
  store %struct.TYPE_3__* %16, %struct.TYPE_3__** %12, align 8
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %18 = icmp ne %struct.TYPE_3__* %17, null
  br i1 %18, label %20, label %19

19:                                               ; preds = %5
  store i32 -1, i32* %6, align 4
  br label %39

20:                                               ; preds = %5
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @TCP_CONN_CONNECTED, align 8
  %25 = icmp ne i64 %23, %24
  br i1 %25, label %26, label %27

26:                                               ; preds = %20
  store i32 -1, i32* %6, align 4
  br label %39

27:                                               ; preds = %20
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 8
  %31 = load i32*, i32** %9, align 8
  %32 = load i32*, i32** %10, align 8
  %33 = load i32, i32* %11, align 4
  %34 = call i32 @send_oob_packet(i32 %30, i32* %31, i32* %32, i32 %33)
  store i32 %34, i32* %13, align 4
  %35 = load i32, i32* %13, align 4
  %36 = icmp eq i32 %35, 1
  br i1 %36, label %37, label %38

37:                                               ; preds = %27
  store i32 0, i32* %6, align 4
  br label %39

38:                                               ; preds = %27
  store i32 -1, i32* %6, align 4
  br label %39

39:                                               ; preds = %38, %37, %26, %19
  %40 = load i32, i32* %6, align 4
  ret i32 %40
}

declare dso_local %struct.TYPE_3__* @get_tcp_connection(i32*, i32) #1

declare dso_local i32 @send_oob_packet(i32, i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
