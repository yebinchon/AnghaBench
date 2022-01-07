; ModuleID = '/home/carl/AnghaBench/toxcore/toxcore/extr_TCP_connection.c_tcp_status_callback.c'
source_filename = "/home/carl/AnghaBench/toxcore/toxcore/extr_TCP_connection.c_tcp_status_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i32* }
%struct.TYPE_7__ = type { i32, i32 }
%struct.TYPE_8__ = type { i64 }

@TCP_CONNECTIONS_STATUS_REGISTERED = common dso_local global i32 0, align 4
@TCP_CONN_SLEEPING = common dso_local global i64 0, align 8
@TCP_CONNECTIONS_STATUS_ONLINE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32, i32, i32)* @tcp_status_callback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tcp_status_callback(i8* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_9__*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_7__*, align 8
  %14 = alloca %struct.TYPE_8__*, align 8
  store i8* %0, i8** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %15 = load i8*, i8** %6, align 8
  %16 = bitcast i8* %15 to %struct.TYPE_9__*
  store %struct.TYPE_9__* %16, %struct.TYPE_9__** %10, align 8
  %17 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %18 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %17, i32 0, i32 1
  %19 = load i32*, i32** %18, align 8
  store i32* %19, i32** %11, align 8
  %20 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %21 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  store i32 %22, i32* %12, align 4
  %23 = load i32*, i32** %11, align 8
  %24 = load i32, i32* %12, align 4
  %25 = call %struct.TYPE_7__* @get_tcp_connection(i32* %23, i32 %24)
  store %struct.TYPE_7__* %25, %struct.TYPE_7__** %13, align 8
  %26 = load i32*, i32** %11, align 8
  %27 = load i32, i32* %7, align 4
  %28 = call %struct.TYPE_8__* @get_connection(i32* %26, i32 %27)
  store %struct.TYPE_8__* %28, %struct.TYPE_8__** %14, align 8
  %29 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %30 = icmp ne %struct.TYPE_8__* %29, null
  br i1 %30, label %31, label %34

31:                                               ; preds = %4
  %32 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %33 = icmp ne %struct.TYPE_7__* %32, null
  br i1 %33, label %35, label %34

34:                                               ; preds = %31, %4
  store i32 -1, i32* %5, align 4
  br label %91

35:                                               ; preds = %31
  %36 = load i32, i32* %9, align 4
  %37 = icmp eq i32 %36, 1
  br i1 %37, label %38, label %62

38:                                               ; preds = %35
  %39 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %40 = load i32, i32* %12, align 4
  %41 = load i32, i32* @TCP_CONNECTIONS_STATUS_REGISTERED, align 4
  %42 = load i32, i32* %8, align 4
  %43 = call i32 @set_tcp_connection_status(%struct.TYPE_8__* %39, i32 %40, i32 %41, i32 %42)
  %44 = icmp eq i32 %43, -1
  br i1 %44, label %45, label %46

45:                                               ; preds = %38
  store i32 -1, i32* %5, align 4
  br label %91

46:                                               ; preds = %38
  %47 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %48 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = add nsw i32 %49, -1
  store i32 %50, i32* %48, align 4
  %51 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %52 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* @TCP_CONN_SLEEPING, align 8
  %55 = icmp eq i64 %53, %54
  br i1 %55, label %56, label %61

56:                                               ; preds = %46
  %57 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %58 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = add nsw i32 %59, -1
  store i32 %60, i32* %58, align 4
  br label %61

61:                                               ; preds = %56, %46
  br label %90

62:                                               ; preds = %35
  %63 = load i32, i32* %9, align 4
  %64 = icmp eq i32 %63, 2
  br i1 %64, label %65, label %89

65:                                               ; preds = %62
  %66 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %67 = load i32, i32* %12, align 4
  %68 = load i32, i32* @TCP_CONNECTIONS_STATUS_ONLINE, align 4
  %69 = load i32, i32* %8, align 4
  %70 = call i32 @set_tcp_connection_status(%struct.TYPE_8__* %66, i32 %67, i32 %68, i32 %69)
  %71 = icmp eq i32 %70, -1
  br i1 %71, label %72, label %73

72:                                               ; preds = %65
  store i32 -1, i32* %5, align 4
  br label %91

73:                                               ; preds = %65
  %74 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %75 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %75, align 4
  %78 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %79 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = load i64, i64* @TCP_CONN_SLEEPING, align 8
  %82 = icmp eq i64 %80, %81
  br i1 %82, label %83, label %88

83:                                               ; preds = %73
  %84 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %85 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = add nsw i32 %86, 1
  store i32 %87, i32* %85, align 4
  br label %88

88:                                               ; preds = %83, %73
  br label %89

89:                                               ; preds = %88, %62
  br label %90

90:                                               ; preds = %89, %61
  store i32 0, i32* %5, align 4
  br label %91

91:                                               ; preds = %90, %72, %45, %34
  %92 = load i32, i32* %5, align 4
  ret i32 %92
}

declare dso_local %struct.TYPE_7__* @get_tcp_connection(i32*, i32) #1

declare dso_local %struct.TYPE_8__* @get_connection(i32*, i32) #1

declare dso_local i32 @set_tcp_connection_status(%struct.TYPE_8__*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
