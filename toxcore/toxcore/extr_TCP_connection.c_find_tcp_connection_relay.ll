; ModuleID = '/home/carl/AnghaBench/toxcore/toxcore/extr_TCP_connection.c_find_tcp_connection_relay.c'
source_filename = "/home/carl/AnghaBench/toxcore/toxcore/extr_TCP_connection.c_find_tcp_connection_relay.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32 }
%struct.TYPE_8__ = type { i64, %struct.TYPE_7__*, i32 }
%struct.TYPE_7__ = type { i32 }

@TCP_CONN_SLEEPING = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_9__*, i32*)* @find_tcp_connection_relay to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @find_tcp_connection_relay(%struct.TYPE_9__* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_9__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_8__*, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 0, i32* %6, align 4
  br label %8

8:                                                ; preds = %50, %2
  %9 = load i32, i32* %6, align 4
  %10 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %11 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = icmp ult i32 %9, %12
  br i1 %13, label %14, label %53

14:                                               ; preds = %8
  %15 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %16 = load i32, i32* %6, align 4
  %17 = call %struct.TYPE_8__* @get_tcp_connection(%struct.TYPE_9__* %15, i32 %16)
  store %struct.TYPE_8__* %17, %struct.TYPE_8__** %7, align 8
  %18 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %19 = icmp ne %struct.TYPE_8__* %18, null
  br i1 %19, label %20, label %49

20:                                               ; preds = %14
  %21 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %22 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @TCP_CONN_SLEEPING, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %36

26:                                               ; preds = %20
  %27 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %28 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 8
  %30 = load i32*, i32** %5, align 8
  %31 = call i64 @public_key_cmp(i32 %29, i32* %30)
  %32 = icmp eq i64 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %26
  %34 = load i32, i32* %6, align 4
  store i32 %34, i32* %3, align 4
  br label %54

35:                                               ; preds = %26
  br label %48

36:                                               ; preds = %20
  %37 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %38 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %37, i32 0, i32 1
  %39 = load %struct.TYPE_7__*, %struct.TYPE_7__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load i32*, i32** %5, align 8
  %43 = call i64 @public_key_cmp(i32 %41, i32* %42)
  %44 = icmp eq i64 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %36
  %46 = load i32, i32* %6, align 4
  store i32 %46, i32* %3, align 4
  br label %54

47:                                               ; preds = %36
  br label %48

48:                                               ; preds = %47, %35
  br label %49

49:                                               ; preds = %48, %14
  br label %50

50:                                               ; preds = %49
  %51 = load i32, i32* %6, align 4
  %52 = add i32 %51, 1
  store i32 %52, i32* %6, align 4
  br label %8

53:                                               ; preds = %8
  store i32 -1, i32* %3, align 4
  br label %54

54:                                               ; preds = %53, %45, %33
  %55 = load i32, i32* %3, align 4
  ret i32 %55
}

declare dso_local %struct.TYPE_8__* @get_tcp_connection(%struct.TYPE_9__*, i32) #1

declare dso_local i64 @public_key_cmp(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
