; ModuleID = '/home/carl/AnghaBench/systemd/src/libsystemd-network/extr_sd-dhcp-client.c_client_timeout_t2.c'
source_filename = "/home/carl/AnghaBench/systemd/src/libsystemd-network/extr_sd-dhcp-client.c_client_timeout_t2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i64, i32, i32 }

@DHCP_STATE_REBINDING = common dso_local global i32 0, align 4
@client_receive_message_raw = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32, i8*)* @client_timeout_t2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @client_timeout_t2(i32* %0, i32 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca %struct.TYPE_6__*, align 8
  %9 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  %10 = load i8*, i8** %7, align 8
  %11 = bitcast i8* %10 to %struct.TYPE_6__*
  store %struct.TYPE_6__* %11, %struct.TYPE_6__** %8, align 8
  %12 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %13 = call i32 @DHCP_CLIENT_DONT_DESTROY(%struct.TYPE_6__* %12)
  %14 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %15 = call i32 @assert(%struct.TYPE_6__* %14)
  %16 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 10
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @sd_event_source_unref(i32 %18)
  %20 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 10
  store i32 %19, i32* %21, align 4
  %22 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = call i32 @asynchronous_close(i32 %24)
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 0
  store i32 %25, i32* %27, align 8
  %28 = load i32, i32* @DHCP_STATE_REBINDING, align 4
  %29 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 9
  store i32 %28, i32* %30, align 8
  %31 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 8
  store i64 0, i64* %32, align 8
  %33 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 7
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 6
  %38 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 5
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 4
  %43 = load i32, i32* %42, align 8
  %44 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 3
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 8
  %50 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @dhcp_network_bind_raw_socket(i32 %35, i32* %37, i32 %40, i32 %43, i32 %46, i32 %49, i32 %52)
  store i32 %53, i32* %9, align 4
  %54 = load i32, i32* %9, align 4
  %55 = icmp slt i32 %54, 0
  br i1 %55, label %56, label %60

56:                                               ; preds = %3
  %57 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %58 = load i32, i32* %9, align 4
  %59 = call i32 @client_stop(%struct.TYPE_6__* %57, i32 %58)
  store i32 0, i32* %4, align 4
  br label %67

60:                                               ; preds = %3
  %61 = load i32, i32* %9, align 4
  %62 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %62, i32 0, i32 0
  store i32 %61, i32* %63, align 8
  %64 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %65 = load i32, i32* @client_receive_message_raw, align 4
  %66 = call i32 @client_initialize_events(%struct.TYPE_6__* %64, i32 %65)
  store i32 %66, i32* %4, align 4
  br label %67

67:                                               ; preds = %60, %56
  %68 = load i32, i32* %4, align 4
  ret i32 %68
}

declare dso_local i32 @DHCP_CLIENT_DONT_DESTROY(%struct.TYPE_6__*) #1

declare dso_local i32 @assert(%struct.TYPE_6__*) #1

declare dso_local i32 @sd_event_source_unref(i32) #1

declare dso_local i32 @asynchronous_close(i32) #1

declare dso_local i32 @dhcp_network_bind_raw_socket(i32, i32*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @client_stop(%struct.TYPE_6__*, i32) #1

declare dso_local i32 @client_initialize_events(%struct.TYPE_6__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
