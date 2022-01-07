; ModuleID = '/home/carl/AnghaBench/systemd/src/udev/net/extr_link-config.c_get_mac.c'
source_filename = "/home/carl/AnghaBench/systemd/src/udev/net/extr_link-config.c_get_mac.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ether_addr = type { i32* }

@MAC_ADDRESS_POLICY_RANDOM = common dso_local global i64 0, align 8
@MAC_ADDRESS_POLICY_PERSISTENT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"addr_assign_type\00", align 1
@.str.1 = private unnamed_addr constant [43 x i8] c"MAC on the device already set by userspace\00", align 1
@.str.2 = private unnamed_addr constant [54 x i8] c"MAC on the device already set based on another device\00", align 1
@.str.3 = private unnamed_addr constant [38 x i8] c"Unknown addr_assign_type %u, ignoring\00", align 1
@.str.4 = private unnamed_addr constant [46 x i8] c"MAC on the device already matches policy *%s*\00", align 1
@.str.5 = private unnamed_addr constant [35 x i8] c"Using random bytes to generate MAC\00", align 1
@ETH_ALEN = common dso_local global i32 0, align 4
@NAMING_STABLE_VIRTUAL_MACS = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [38 x i8] c"Could not generate persistent MAC: %m\00", align 1
@.str.7 = private unnamed_addr constant [39 x i8] c"Using generated persistent MAC address\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i64, %struct.ether_addr*)* @get_mac to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_mac(i32* %0, i64 %1, %struct.ether_addr* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.ether_addr*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i64 %1, i64* %6, align 8
  store %struct.ether_addr* %2, %struct.ether_addr** %7, align 8
  %12 = load i64, i64* %6, align 8
  %13 = load i64, i64* @MAC_ADDRESS_POLICY_RANDOM, align 8
  %14 = icmp eq i64 %12, %13
  %15 = zext i1 %14 to i32
  store i32 %15, i32* %9, align 4
  %16 = load i64, i64* %6, align 8
  %17 = load i64, i64* @MAC_ADDRESS_POLICY_RANDOM, align 8
  %18 = load i32, i32* @MAC_ADDRESS_POLICY_PERSISTENT, align 4
  %19 = call i32 @IN_SET(i64 %16, i64 %17, i32 %18)
  %20 = call i32 @assert(i32 %19)
  %21 = load i32*, i32** %5, align 8
  %22 = call i32 @link_unsigned_attribute(i32* %21, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32* %8)
  store i32 %22, i32* %10, align 4
  %23 = load i32, i32* %10, align 4
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %3
  %26 = load i32, i32* %10, align 4
  store i32 %26, i32* %4, align 4
  br label %99

27:                                               ; preds = %3
  %28 = load i32, i32* %8, align 4
  switch i32 %28, label %36 [
    i32 129, label %29
    i32 128, label %32
    i32 130, label %35
    i32 131, label %35
  ]

29:                                               ; preds = %27
  %30 = load i32*, i32** %5, align 8
  %31 = call i32 (i32*, i8*, ...) @log_device_debug(i32* %30, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0))
  store i32 %31, i32* %4, align 4
  br label %99

32:                                               ; preds = %27
  %33 = load i32*, i32** %5, align 8
  %34 = call i32 (i32*, i8*, ...) @log_device_debug(i32* %33, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.2, i64 0, i64 0))
  store i32 %34, i32* %4, align 4
  br label %99

35:                                               ; preds = %27, %27
  br label %40

36:                                               ; preds = %27
  %37 = load i32*, i32** %5, align 8
  %38 = load i32, i32* %8, align 4
  %39 = call i32 @log_device_warning(i32* %37, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.3, i64 0, i64 0), i32 %38)
  store i32 %39, i32* %4, align 4
  br label %99

40:                                               ; preds = %35
  %41 = load i32, i32* %9, align 4
  %42 = load i32, i32* %8, align 4
  %43 = icmp eq i32 %42, 130
  %44 = zext i1 %43 to i32
  %45 = icmp eq i32 %41, %44
  br i1 %45, label %46, label %51

46:                                               ; preds = %40
  %47 = load i32*, i32** %5, align 8
  %48 = load i64, i64* %6, align 8
  %49 = call i32 @mac_address_policy_to_string(i64 %48)
  %50 = call i32 (i32*, i8*, ...) @log_device_debug(i32* %47, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.4, i64 0, i64 0), i32 %49)
  store i32 %50, i32* %4, align 4
  br label %99

51:                                               ; preds = %40
  %52 = load i32, i32* %9, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %62

54:                                               ; preds = %51
  %55 = load i32*, i32** %5, align 8
  %56 = call i32 (i32*, i8*, ...) @log_device_debug(i32* %55, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.5, i64 0, i64 0))
  %57 = load %struct.ether_addr*, %struct.ether_addr** %7, align 8
  %58 = getelementptr inbounds %struct.ether_addr, %struct.ether_addr* %57, i32 0, i32 0
  %59 = load i32*, i32** %58, align 8
  %60 = load i32, i32* @ETH_ALEN, align 4
  %61 = call i32 @random_bytes(i32* %59, i32 %60)
  br label %86

62:                                               ; preds = %51
  %63 = load i32*, i32** %5, align 8
  %64 = load i32, i32* @NAMING_STABLE_VIRTUAL_MACS, align 4
  %65 = call i32 @naming_scheme_has(i32 %64)
  %66 = call i32 @net_get_unique_predictable_data(i32* %63, i32 %65, i32* %11)
  store i32 %66, i32* %10, align 4
  %67 = load i32, i32* %10, align 4
  %68 = icmp slt i32 %67, 0
  br i1 %68, label %69, label %73

69:                                               ; preds = %62
  %70 = load i32*, i32** %5, align 8
  %71 = load i32, i32* %10, align 4
  %72 = call i32 @log_device_warning_errno(i32* %70, i32 %71, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.6, i64 0, i64 0))
  store i32 %72, i32* %4, align 4
  br label %99

73:                                               ; preds = %62
  %74 = load i32*, i32** %5, align 8
  %75 = call i32 (i32*, i8*, ...) @log_device_debug(i32* %74, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.7, i64 0, i64 0))
  %76 = load i32, i32* @ETH_ALEN, align 4
  %77 = sext i32 %76 to i64
  %78 = icmp ule i64 %77, 4
  %79 = zext i1 %78 to i32
  %80 = call i32 @assert_cc(i32 %79)
  %81 = load %struct.ether_addr*, %struct.ether_addr** %7, align 8
  %82 = getelementptr inbounds %struct.ether_addr, %struct.ether_addr* %81, i32 0, i32 0
  %83 = load i32*, i32** %82, align 8
  %84 = load i32, i32* @ETH_ALEN, align 4
  %85 = call i32 @memcpy(i32* %83, i32* %11, i32 %84)
  br label %86

86:                                               ; preds = %73, %54
  %87 = load %struct.ether_addr*, %struct.ether_addr** %7, align 8
  %88 = getelementptr inbounds %struct.ether_addr, %struct.ether_addr* %87, i32 0, i32 0
  %89 = load i32*, i32** %88, align 8
  %90 = getelementptr inbounds i32, i32* %89, i64 0
  %91 = load i32, i32* %90, align 4
  %92 = and i32 %91, 254
  store i32 %92, i32* %90, align 4
  %93 = load %struct.ether_addr*, %struct.ether_addr** %7, align 8
  %94 = getelementptr inbounds %struct.ether_addr, %struct.ether_addr* %93, i32 0, i32 0
  %95 = load i32*, i32** %94, align 8
  %96 = getelementptr inbounds i32, i32* %95, i64 0
  %97 = load i32, i32* %96, align 4
  %98 = or i32 %97, 2
  store i32 %98, i32* %96, align 4
  store i32 1, i32* %4, align 4
  br label %99

99:                                               ; preds = %86, %69, %46, %36, %32, %29, %25
  %100 = load i32, i32* %4, align 4
  ret i32 %100
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @IN_SET(i64, i64, i32) #1

declare dso_local i32 @link_unsigned_attribute(i32*, i8*, i32*) #1

declare dso_local i32 @log_device_debug(i32*, i8*, ...) #1

declare dso_local i32 @log_device_warning(i32*, i8*, i32) #1

declare dso_local i32 @mac_address_policy_to_string(i64) #1

declare dso_local i32 @random_bytes(i32*, i32) #1

declare dso_local i32 @net_get_unique_predictable_data(i32*, i32, i32*) #1

declare dso_local i32 @naming_scheme_has(i32) #1

declare dso_local i32 @log_device_warning_errno(i32*, i32, i8*) #1

declare dso_local i32 @assert_cc(i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
