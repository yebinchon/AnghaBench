; ModuleID = '/home/carl/AnghaBench/skynet/skynet-src/extr_socket_server.c_clear_closed_event.c'
source_filename = "/home/carl/AnghaBench/skynet/skynet-src/extr_socket_server.c_clear_closed_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.socket_server = type { i32, i32, %struct.event* }
%struct.event = type { %struct.socket* }
%struct.socket = type { i64, i32 }
%struct.socket_message = type { i32 }

@SOCKET_CLOSE = common dso_local global i32 0, align 4
@SOCKET_ERR = common dso_local global i32 0, align 4
@SOCKET_TYPE_INVALID = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.socket_server*, %struct.socket_message*, i32)* @clear_closed_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @clear_closed_event(%struct.socket_server* %0, %struct.socket_message* %1, i32 %2) #0 {
  %4 = alloca %struct.socket_server*, align 8
  %5 = alloca %struct.socket_message*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.event*, align 8
  %10 = alloca %struct.socket*, align 8
  store %struct.socket_server* %0, %struct.socket_server** %4, align 8
  store %struct.socket_message* %1, %struct.socket_message** %5, align 8
  store i32 %2, i32* %6, align 4
  %11 = load i32, i32* %6, align 4
  %12 = load i32, i32* @SOCKET_CLOSE, align 4
  %13 = icmp eq i32 %11, %12
  br i1 %13, label %18, label %14

14:                                               ; preds = %3
  %15 = load i32, i32* %6, align 4
  %16 = load i32, i32* @SOCKET_ERR, align 4
  %17 = icmp eq i32 %15, %16
  br i1 %17, label %18, label %64

18:                                               ; preds = %14, %3
  %19 = load %struct.socket_message*, %struct.socket_message** %5, align 8
  %20 = getelementptr inbounds %struct.socket_message, %struct.socket_message* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  store i32 %21, i32* %7, align 4
  %22 = load %struct.socket_server*, %struct.socket_server** %4, align 8
  %23 = getelementptr inbounds %struct.socket_server, %struct.socket_server* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  store i32 %24, i32* %8, align 4
  br label %25

25:                                               ; preds = %60, %18
  %26 = load i32, i32* %8, align 4
  %27 = load %struct.socket_server*, %struct.socket_server** %4, align 8
  %28 = getelementptr inbounds %struct.socket_server, %struct.socket_server* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = icmp slt i32 %26, %29
  br i1 %30, label %31, label %63

31:                                               ; preds = %25
  %32 = load %struct.socket_server*, %struct.socket_server** %4, align 8
  %33 = getelementptr inbounds %struct.socket_server, %struct.socket_server* %32, i32 0, i32 2
  %34 = load %struct.event*, %struct.event** %33, align 8
  %35 = load i32, i32* %8, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds %struct.event, %struct.event* %34, i64 %36
  store %struct.event* %37, %struct.event** %9, align 8
  %38 = load %struct.event*, %struct.event** %9, align 8
  %39 = getelementptr inbounds %struct.event, %struct.event* %38, i32 0, i32 0
  %40 = load %struct.socket*, %struct.socket** %39, align 8
  store %struct.socket* %40, %struct.socket** %10, align 8
  %41 = load %struct.socket*, %struct.socket** %10, align 8
  %42 = icmp ne %struct.socket* %41, null
  br i1 %42, label %43, label %59

43:                                               ; preds = %31
  %44 = load %struct.socket*, %struct.socket** %10, align 8
  %45 = getelementptr inbounds %struct.socket, %struct.socket* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* @SOCKET_TYPE_INVALID, align 8
  %48 = icmp eq i64 %46, %47
  br i1 %48, label %49, label %58

49:                                               ; preds = %43
  %50 = load %struct.socket*, %struct.socket** %10, align 8
  %51 = getelementptr inbounds %struct.socket, %struct.socket* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 8
  %53 = load i32, i32* %7, align 4
  %54 = icmp eq i32 %52, %53
  br i1 %54, label %55, label %58

55:                                               ; preds = %49
  %56 = load %struct.event*, %struct.event** %9, align 8
  %57 = getelementptr inbounds %struct.event, %struct.event* %56, i32 0, i32 0
  store %struct.socket* null, %struct.socket** %57, align 8
  br label %63

58:                                               ; preds = %49, %43
  br label %59

59:                                               ; preds = %58, %31
  br label %60

60:                                               ; preds = %59
  %61 = load i32, i32* %8, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %8, align 4
  br label %25

63:                                               ; preds = %55, %25
  br label %64

64:                                               ; preds = %63, %14
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
