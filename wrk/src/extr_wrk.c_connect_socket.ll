; ModuleID = '/home/carl/AnghaBench/wrk/src/extr_wrk.c_connect_socket.c'
source_filename = "/home/carl/AnghaBench/wrk/src/extr_wrk.c_connect_socket.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { %struct.TYPE_9__, %struct.aeEventLoop*, %struct.addrinfo* }
%struct.TYPE_9__ = type { i32 }
%struct.aeEventLoop = type { i32 }
%struct.addrinfo = type { i32, i32, i32, i32, i32 }
%struct.TYPE_11__ = type { i32, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_11__* }

@F_GETFL = common dso_local global i32 0, align 4
@F_SETFL = common dso_local global i32 0, align 4
@O_NONBLOCK = common dso_local global i32 0, align 4
@errno = common dso_local global i64 0, align 8
@EINPROGRESS = common dso_local global i64 0, align 8
@IPPROTO_TCP = common dso_local global i32 0, align 4
@TCP_NODELAY = common dso_local global i32 0, align 4
@AE_READABLE = common dso_local global i32 0, align 4
@AE_WRITABLE = common dso_local global i32 0, align 4
@socket_connected = common dso_local global i32 0, align 4
@AE_OK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_10__*, %struct.TYPE_11__*)* @connect_socket to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @connect_socket(%struct.TYPE_10__* %0, %struct.TYPE_11__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_10__*, align 8
  %5 = alloca %struct.TYPE_11__*, align 8
  %6 = alloca %struct.addrinfo*, align 8
  %7 = alloca %struct.aeEventLoop*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %4, align 8
  store %struct.TYPE_11__* %1, %struct.TYPE_11__** %5, align 8
  %10 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %11 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %10, i32 0, i32 2
  %12 = load %struct.addrinfo*, %struct.addrinfo** %11, align 8
  store %struct.addrinfo* %12, %struct.addrinfo** %6, align 8
  %13 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %13, i32 0, i32 1
  %15 = load %struct.aeEventLoop*, %struct.aeEventLoop** %14, align 8
  store %struct.aeEventLoop* %15, %struct.aeEventLoop** %7, align 8
  %16 = load %struct.addrinfo*, %struct.addrinfo** %6, align 8
  %17 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %16, i32 0, i32 4
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.addrinfo*, %struct.addrinfo** %6, align 8
  %20 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %19, i32 0, i32 3
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.addrinfo*, %struct.addrinfo** %6, align 8
  %23 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @socket(i32 %18, i32 %21, i32 %24)
  store i32 %25, i32* %8, align 4
  %26 = load i32, i32* %8, align 4
  %27 = load i32, i32* @F_GETFL, align 4
  %28 = call i32 @fcntl(i32 %26, i32 %27, i32 0)
  store i32 %28, i32* %9, align 4
  %29 = load i32, i32* %8, align 4
  %30 = load i32, i32* @F_SETFL, align 4
  %31 = load i32, i32* %9, align 4
  %32 = load i32, i32* @O_NONBLOCK, align 4
  %33 = or i32 %31, %32
  %34 = call i32 @fcntl(i32 %29, i32 %30, i32 %33)
  %35 = load i32, i32* %8, align 4
  %36 = load %struct.addrinfo*, %struct.addrinfo** %6, align 8
  %37 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.addrinfo*, %struct.addrinfo** %6, align 8
  %40 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @connect(i32 %35, i32 %38, i32 %41)
  %43 = icmp eq i32 %42, -1
  br i1 %43, label %44, label %50

44:                                               ; preds = %2
  %45 = load i64, i64* @errno, align 8
  %46 = load i64, i64* @EINPROGRESS, align 8
  %47 = icmp ne i64 %45, %46
  br i1 %47, label %48, label %49

48:                                               ; preds = %44
  br label %76

49:                                               ; preds = %44
  br label %50

50:                                               ; preds = %49, %2
  store i32 1, i32* %9, align 4
  %51 = load i32, i32* %8, align 4
  %52 = load i32, i32* @IPPROTO_TCP, align 4
  %53 = load i32, i32* @TCP_NODELAY, align 4
  %54 = call i32 @setsockopt(i32 %51, i32 %52, i32 %53, i32* %9, i32 4)
  %55 = load i32, i32* @AE_READABLE, align 4
  %56 = load i32, i32* @AE_WRITABLE, align 4
  %57 = or i32 %55, %56
  store i32 %57, i32* %9, align 4
  %58 = load %struct.aeEventLoop*, %struct.aeEventLoop** %7, align 8
  %59 = load i32, i32* %8, align 4
  %60 = load i32, i32* %9, align 4
  %61 = load i32, i32* @socket_connected, align 4
  %62 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %63 = call i64 @aeCreateFileEvent(%struct.aeEventLoop* %58, i32 %59, i32 %60, i32 %61, %struct.TYPE_11__* %62)
  %64 = load i64, i64* @AE_OK, align 8
  %65 = icmp eq i64 %63, %64
  br i1 %65, label %66, label %75

66:                                               ; preds = %50
  %67 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %68 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %69 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %68, i32 0, i32 1
  %70 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %69, i32 0, i32 0
  store %struct.TYPE_11__* %67, %struct.TYPE_11__** %70, align 8
  %71 = load i32, i32* %8, align 4
  %72 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %73 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %72, i32 0, i32 0
  store i32 %71, i32* %73, align 8
  %74 = load i32, i32* %8, align 4
  store i32 %74, i32* %3, align 4
  br label %84

75:                                               ; preds = %50
  br label %76

76:                                               ; preds = %75, %48
  %77 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %78 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = add nsw i32 %80, 1
  store i32 %81, i32* %79, align 8
  %82 = load i32, i32* %8, align 4
  %83 = call i32 @close(i32 %82)
  store i32 -1, i32* %3, align 4
  br label %84

84:                                               ; preds = %76, %66
  %85 = load i32, i32* %3, align 4
  ret i32 %85
}

declare dso_local i32 @socket(i32, i32, i32) #1

declare dso_local i32 @fcntl(i32, i32, i32) #1

declare dso_local i32 @connect(i32, i32, i32) #1

declare dso_local i32 @setsockopt(i32, i32, i32, i32*, i32) #1

declare dso_local i64 @aeCreateFileEvent(%struct.aeEventLoop*, i32, i32, i32, %struct.TYPE_11__*) #1

declare dso_local i32 @close(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
