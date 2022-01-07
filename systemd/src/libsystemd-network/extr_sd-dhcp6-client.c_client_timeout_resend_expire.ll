; ModuleID = '/home/carl/AnghaBench/systemd/src/libsystemd-network/extr_sd-dhcp6-client.c_client_timeout_resend_expire.c'
source_filename = "/home/carl/AnghaBench/systemd/src/libsystemd-network/extr_sd-dhcp6-client.c_client_timeout_resend_expire.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, %struct.TYPE_8__* }

@SD_DHCP6_CLIENT_EVENT_RESEND_EXPIRE = common dso_local global i32 0, align 4
@DHCP6_STATE_REBIND = common dso_local global i32 0, align 4
@DHCP6_STATE_SOLICITATION = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_8__*, i32, i8*)* @client_timeout_resend_expire to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @client_timeout_resend_expire(%struct.TYPE_8__* %0, i32 %1, i8* %2) #0 {
  %4 = alloca %struct.TYPE_8__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.TYPE_8__*, align 8
  %8 = alloca i32, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %4, align 8
  store i32 %1, i32* %5, align 4
  store i8* %2, i8** %6, align 8
  %9 = load i8*, i8** %6, align 8
  %10 = bitcast i8* %9 to %struct.TYPE_8__*
  store %struct.TYPE_8__* %10, %struct.TYPE_8__** %7, align 8
  %11 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %12 = call i32 @DHCP6_CLIENT_DONT_DESTROY(%struct.TYPE_8__* %11)
  %13 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %14 = call i32 @assert(%struct.TYPE_8__* %13)
  %15 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %16 = call i32 @assert(%struct.TYPE_8__* %15)
  %17 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %18 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %17, i32 0, i32 1
  %19 = load %struct.TYPE_8__*, %struct.TYPE_8__** %18, align 8
  %20 = call i32 @assert(%struct.TYPE_8__* %19)
  %21 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %22 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  store i32 %23, i32* %8, align 4
  %24 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %25 = load i32, i32* @SD_DHCP6_CLIENT_EVENT_RESEND_EXPIRE, align 4
  %26 = call i32 @client_stop(%struct.TYPE_8__* %24, i32 %25)
  %27 = load i32, i32* %8, align 4
  %28 = load i32, i32* @DHCP6_STATE_REBIND, align 4
  %29 = icmp eq i32 %27, %28
  br i1 %29, label %30, label %34

30:                                               ; preds = %3
  %31 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %32 = load i32, i32* @DHCP6_STATE_SOLICITATION, align 4
  %33 = call i32 @client_start(%struct.TYPE_8__* %31, i32 %32)
  br label %34

34:                                               ; preds = %30, %3
  ret i32 0
}

declare dso_local i32 @DHCP6_CLIENT_DONT_DESTROY(%struct.TYPE_8__*) #1

declare dso_local i32 @assert(%struct.TYPE_8__*) #1

declare dso_local i32 @client_stop(%struct.TYPE_8__*, i32) #1

declare dso_local i32 @client_start(%struct.TYPE_8__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
