; ModuleID = '/home/carl/AnghaBench/skynet/skynet-src/extr_socket_server.c_set_udp_address.c'
source_filename = "/home/carl/AnghaBench/skynet/skynet-src/extr_socket_server.c_set_udp_address.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.socket_server = type { %struct.socket* }
%struct.socket = type { i64, i32, i32, i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.request_setudp = type { i32, i32* }
%struct.socket_message = type { i32, i8*, i64, i32 }

@SOCKET_TYPE_INVALID = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [18 x i8] c"protocol mismatch\00", align 1
@SOCKET_ERR = common dso_local global i32 0, align 4
@PROTOCOL_UDP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.socket_server*, %struct.request_setudp*, %struct.socket_message*)* @set_udp_address to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @set_udp_address(%struct.socket_server* %0, %struct.request_setudp* %1, %struct.socket_message* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.socket_server*, align 8
  %6 = alloca %struct.request_setudp*, align 8
  %7 = alloca %struct.socket_message*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.socket*, align 8
  %10 = alloca i32, align 4
  store %struct.socket_server* %0, %struct.socket_server** %5, align 8
  store %struct.request_setudp* %1, %struct.request_setudp** %6, align 8
  store %struct.socket_message* %2, %struct.socket_message** %7, align 8
  %11 = load %struct.request_setudp*, %struct.request_setudp** %6, align 8
  %12 = getelementptr inbounds %struct.request_setudp, %struct.request_setudp* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  store i32 %13, i32* %8, align 4
  %14 = load %struct.socket_server*, %struct.socket_server** %5, align 8
  %15 = getelementptr inbounds %struct.socket_server, %struct.socket_server* %14, i32 0, i32 0
  %16 = load %struct.socket*, %struct.socket** %15, align 8
  %17 = load i32, i32* %8, align 4
  %18 = call i64 @HASH_ID(i32 %17)
  %19 = getelementptr inbounds %struct.socket, %struct.socket* %16, i64 %18
  store %struct.socket* %19, %struct.socket** %9, align 8
  %20 = load %struct.socket*, %struct.socket** %9, align 8
  %21 = getelementptr inbounds %struct.socket, %struct.socket* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @SOCKET_TYPE_INVALID, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %31, label %25

25:                                               ; preds = %3
  %26 = load %struct.socket*, %struct.socket** %9, align 8
  %27 = getelementptr inbounds %struct.socket, %struct.socket* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 8
  %29 = load i32, i32* %8, align 4
  %30 = icmp ne i32 %28, %29
  br i1 %30, label %31, label %32

31:                                               ; preds = %25, %3
  store i32 -1, i32* %4, align 4
  br label %85

32:                                               ; preds = %25
  %33 = load %struct.request_setudp*, %struct.request_setudp** %6, align 8
  %34 = getelementptr inbounds %struct.request_setudp, %struct.request_setudp* %33, i32 0, i32 1
  %35 = load i32*, i32** %34, align 8
  %36 = getelementptr inbounds i32, i32* %35, i64 0
  %37 = load i32, i32* %36, align 4
  store i32 %37, i32* %10, align 4
  %38 = load i32, i32* %10, align 4
  %39 = load %struct.socket*, %struct.socket** %9, align 8
  %40 = getelementptr inbounds %struct.socket, %struct.socket* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 4
  %42 = icmp ne i32 %38, %41
  br i1 %42, label %43, label %59

43:                                               ; preds = %32
  %44 = load %struct.socket*, %struct.socket** %9, align 8
  %45 = getelementptr inbounds %struct.socket, %struct.socket* %44, i32 0, i32 5
  %46 = load i32, i32* %45, align 8
  %47 = load %struct.socket_message*, %struct.socket_message** %7, align 8
  %48 = getelementptr inbounds %struct.socket_message, %struct.socket_message* %47, i32 0, i32 3
  store i32 %46, i32* %48, align 8
  %49 = load %struct.socket*, %struct.socket** %9, align 8
  %50 = getelementptr inbounds %struct.socket, %struct.socket* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 8
  %52 = load %struct.socket_message*, %struct.socket_message** %7, align 8
  %53 = getelementptr inbounds %struct.socket_message, %struct.socket_message* %52, i32 0, i32 0
  store i32 %51, i32* %53, align 8
  %54 = load %struct.socket_message*, %struct.socket_message** %7, align 8
  %55 = getelementptr inbounds %struct.socket_message, %struct.socket_message* %54, i32 0, i32 2
  store i64 0, i64* %55, align 8
  %56 = load %struct.socket_message*, %struct.socket_message** %7, align 8
  %57 = getelementptr inbounds %struct.socket_message, %struct.socket_message* %56, i32 0, i32 1
  store i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i8** %57, align 8
  %58 = load i32, i32* @SOCKET_ERR, align 4
  store i32 %58, i32* %4, align 4
  br label %85

59:                                               ; preds = %32
  %60 = load i32, i32* %10, align 4
  %61 = load i32, i32* @PROTOCOL_UDP, align 4
  %62 = icmp eq i32 %60, %61
  br i1 %62, label %63, label %72

63:                                               ; preds = %59
  %64 = load %struct.socket*, %struct.socket** %9, align 8
  %65 = getelementptr inbounds %struct.socket, %struct.socket* %64, i32 0, i32 4
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.request_setudp*, %struct.request_setudp** %6, align 8
  %69 = getelementptr inbounds %struct.request_setudp, %struct.request_setudp* %68, i32 0, i32 1
  %70 = load i32*, i32** %69, align 8
  %71 = call i32 @memcpy(i32 %67, i32* %70, i32 7)
  br label %81

72:                                               ; preds = %59
  %73 = load %struct.socket*, %struct.socket** %9, align 8
  %74 = getelementptr inbounds %struct.socket, %struct.socket* %73, i32 0, i32 4
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = load %struct.request_setudp*, %struct.request_setudp** %6, align 8
  %78 = getelementptr inbounds %struct.request_setudp, %struct.request_setudp* %77, i32 0, i32 1
  %79 = load i32*, i32** %78, align 8
  %80 = call i32 @memcpy(i32 %76, i32* %79, i32 19)
  br label %81

81:                                               ; preds = %72, %63
  %82 = load %struct.socket*, %struct.socket** %9, align 8
  %83 = getelementptr inbounds %struct.socket, %struct.socket* %82, i32 0, i32 3
  %84 = call i32 @ATOM_DEC(i32* %83)
  store i32 -1, i32* %4, align 4
  br label %85

85:                                               ; preds = %81, %43, %31
  %86 = load i32, i32* %4, align 4
  ret i32 %86
}

declare dso_local i64 @HASH_ID(i32) #1

declare dso_local i32 @memcpy(i32, i32*, i32) #1

declare dso_local i32 @ATOM_DEC(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
