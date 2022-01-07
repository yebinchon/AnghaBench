; ModuleID = '/home/carl/AnghaBench/skynet/service-src/extr_service_harbor.c_send_remote.c'
source_filename = "/home/carl/AnghaBench/skynet/service-src/extr_service_harbor.c_send_remote.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.skynet_context = type { i32 }
%struct.remote_message_header = type { i32, i32 }
%struct.socket_sendbuffer = type { i32, i64, i32*, i32 }

@UINT32_MAX = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [49 x i8] c"remote message from :%08x to :%08x is too large.\00", align 1
@SOCKET_BUFFER_RAWPOINTER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.skynet_context*, i32, i8*, i64, %struct.remote_message_header*)* @send_remote to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @send_remote(%struct.skynet_context* %0, i32 %1, i8* %2, i64 %3, %struct.remote_message_header* %4) #0 {
  %6 = alloca %struct.skynet_context*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.remote_message_header*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca %struct.socket_sendbuffer, align 8
  store %struct.skynet_context* %0, %struct.skynet_context** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  store %struct.remote_message_header* %4, %struct.remote_message_header** %10, align 8
  %15 = load i64, i64* %9, align 8
  %16 = add i64 %15, 8
  store i64 %16, i64* %11, align 8
  %17 = load i64, i64* %11, align 8
  %18 = load i64, i64* @UINT32_MAX, align 8
  %19 = icmp ugt i64 %17, %18
  br i1 %19, label %20, label %29

20:                                               ; preds = %5
  %21 = load %struct.skynet_context*, %struct.skynet_context** %6, align 8
  %22 = load %struct.remote_message_header*, %struct.remote_message_header** %10, align 8
  %23 = getelementptr inbounds %struct.remote_message_header, %struct.remote_message_header* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.remote_message_header*, %struct.remote_message_header** %10, align 8
  %26 = getelementptr inbounds %struct.remote_message_header, %struct.remote_message_header* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @skynet_error(%struct.skynet_context* %21, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0), i32 %24, i32 %27)
  br label %57

29:                                               ; preds = %5
  %30 = load i64, i64* %11, align 8
  %31 = add i64 %30, 4
  %32 = call i8* @llvm.stacksave()
  store i8* %32, i8** %12, align 8
  %33 = alloca i32, i64 %31, align 16
  store i64 %31, i64* %13, align 8
  %34 = load i64, i64* %11, align 8
  %35 = trunc i64 %34 to i32
  %36 = call i32 @to_bigendian(i32* %33, i32 %35)
  %37 = getelementptr inbounds i32, i32* %33, i64 4
  %38 = load i8*, i8** %8, align 8
  %39 = load i64, i64* %9, align 8
  %40 = call i32 @memcpy(i32* %37, i8* %38, i64 %39)
  %41 = load %struct.remote_message_header*, %struct.remote_message_header** %10, align 8
  %42 = getelementptr inbounds i32, i32* %33, i64 4
  %43 = load i64, i64* %9, align 8
  %44 = getelementptr inbounds i32, i32* %42, i64 %43
  %45 = call i32 @header_to_message(%struct.remote_message_header* %41, i32* %44)
  %46 = load i32, i32* %7, align 4
  %47 = getelementptr inbounds %struct.socket_sendbuffer, %struct.socket_sendbuffer* %14, i32 0, i32 0
  store i32 %46, i32* %47, align 8
  %48 = load i32, i32* @SOCKET_BUFFER_RAWPOINTER, align 4
  %49 = getelementptr inbounds %struct.socket_sendbuffer, %struct.socket_sendbuffer* %14, i32 0, i32 3
  store i32 %48, i32* %49, align 8
  %50 = getelementptr inbounds %struct.socket_sendbuffer, %struct.socket_sendbuffer* %14, i32 0, i32 2
  store i32* %33, i32** %50, align 8
  %51 = load i64, i64* %11, align 8
  %52 = add i64 %51, 4
  %53 = getelementptr inbounds %struct.socket_sendbuffer, %struct.socket_sendbuffer* %14, i32 0, i32 1
  store i64 %52, i64* %53, align 8
  %54 = load %struct.skynet_context*, %struct.skynet_context** %6, align 8
  %55 = call i32 @skynet_socket_sendbuffer(%struct.skynet_context* %54, %struct.socket_sendbuffer* %14)
  %56 = load i8*, i8** %12, align 8
  call void @llvm.stackrestore(i8* %56)
  br label %57

57:                                               ; preds = %29, %20
  ret void
}

declare dso_local i32 @skynet_error(%struct.skynet_context*, i8*, i32, i32) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @to_bigendian(i32*, i32) #1

declare dso_local i32 @memcpy(i32*, i8*, i64) #1

declare dso_local i32 @header_to_message(%struct.remote_message_header*, i32*) #1

declare dso_local i32 @skynet_socket_sendbuffer(%struct.skynet_context*, %struct.socket_sendbuffer*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
