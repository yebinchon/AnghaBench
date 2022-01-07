; ModuleID = '/home/carl/AnghaBench/systemd/src/network/extr_networkd-dhcp4.c_dhcp_server_is_black_listed.c'
source_filename = "/home/carl/AnghaBench/systemd/src/network/extr_networkd-dhcp4.c_dhcp_server_is_black_listed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32, %struct.TYPE_11__* }
%struct.in_addr = type { i32 }

@.str = private unnamed_addr constant [29 x i8] c"Failed to get DHCP lease: %m\00", align 1
@.str.1 = private unnamed_addr constant [41 x i8] c"Failed to get DHCP server ip address: %m\00", align 1
@LOG_DEBUG = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [75 x i8] c"DHCPv4 ip '%u.%u.%u.%u' found in black listed ip addresses, ignoring offer\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_11__*, %struct.TYPE_11__*)* @dhcp_server_is_black_listed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dhcp_server_is_black_listed(%struct.TYPE_11__* %0, %struct.TYPE_11__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_11__*, align 8
  %5 = alloca %struct.TYPE_11__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.in_addr, align 4
  %8 = alloca i32, align 4
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %4, align 8
  store %struct.TYPE_11__* %1, %struct.TYPE_11__** %5, align 8
  %9 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %10 = call i32 @assert(%struct.TYPE_11__* %9)
  %11 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %12 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %11, i32 0, i32 1
  %13 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %14 = call i32 @assert(%struct.TYPE_11__* %13)
  %15 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %16 = call i32 @assert(%struct.TYPE_11__* %15)
  %17 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %18 = call i32 @sd_dhcp_client_get_lease(%struct.TYPE_11__* %17, i32** %6)
  store i32 %18, i32* %8, align 4
  %19 = load i32, i32* %8, align 4
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %2
  %22 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %23 = load i32, i32* %8, align 4
  %24 = call i32 @log_link_error_errno(%struct.TYPE_11__* %22, i32 %23, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  store i32 %24, i32* %3, align 4
  br label %56

25:                                               ; preds = %2
  %26 = load i32*, i32** %6, align 8
  %27 = call i32 @sd_dhcp_lease_get_server_identifier(i32* %26, %struct.in_addr* %7)
  store i32 %27, i32* %8, align 4
  %28 = load i32, i32* %8, align 4
  %29 = icmp slt i32 %28, 0
  br i1 %29, label %30, label %34

30:                                               ; preds = %25
  %31 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %32 = load i32, i32* %8, align 4
  %33 = call i32 @log_link_debug_errno(%struct.TYPE_11__* %31, i32 %32, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0))
  store i32 %33, i32* %3, align 4
  br label %56

34:                                               ; preds = %25
  %35 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %36 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %35, i32 0, i32 1
  %37 = load %struct.TYPE_11__*, %struct.TYPE_11__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %7, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @UINT32_TO_PTR(i32 %41)
  %43 = call i64 @set_contains(i32 %39, i32 %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %55

45:                                               ; preds = %34
  %46 = load i32, i32* @LOG_DEBUG, align 4
  %47 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %48 = call i32 @LOG_LINK_INTERFACE(%struct.TYPE_11__* %47)
  %49 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %50 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %7, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @ADDRESS_FMT_VAL(i32 %51)
  %53 = call i32 @LOG_LINK_MESSAGE(%struct.TYPE_11__* %49, i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str.2, i64 0, i64 0), i32 %52)
  %54 = call i32 @log_struct(i32 %46, i32 %48, i32 %53)
  store i32 1, i32* %3, align 4
  br label %56

55:                                               ; preds = %34
  store i32 0, i32* %3, align 4
  br label %56

56:                                               ; preds = %55, %45, %30, %21
  %57 = load i32, i32* %3, align 4
  ret i32 %57
}

declare dso_local i32 @assert(%struct.TYPE_11__*) #1

declare dso_local i32 @sd_dhcp_client_get_lease(%struct.TYPE_11__*, i32**) #1

declare dso_local i32 @log_link_error_errno(%struct.TYPE_11__*, i32, i8*) #1

declare dso_local i32 @sd_dhcp_lease_get_server_identifier(i32*, %struct.in_addr*) #1

declare dso_local i32 @log_link_debug_errno(%struct.TYPE_11__*, i32, i8*) #1

declare dso_local i64 @set_contains(i32, i32) #1

declare dso_local i32 @UINT32_TO_PTR(i32) #1

declare dso_local i32 @log_struct(i32, i32, i32) #1

declare dso_local i32 @LOG_LINK_INTERFACE(%struct.TYPE_11__*) #1

declare dso_local i32 @LOG_LINK_MESSAGE(%struct.TYPE_11__*, i8*, i32) #1

declare dso_local i32 @ADDRESS_FMT_VAL(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
