; ModuleID = '/home/carl/AnghaBench/systemd/src/libsystemd-network/extr_sd-ipv4ll.c_ipv4ll_address_is_valid.c'
source_filename = "/home/carl/AnghaBench/systemd/src/libsystemd-network/extr_sd-ipv4ll.c_ipv4ll_address_is_valid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.in_addr = type { i32 }
%union.in_addr_union = type { i32 }

@AF_INET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.in_addr*)* @ipv4ll_address_is_valid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ipv4ll_address_is_valid(%struct.in_addr* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.in_addr*, align 8
  store %struct.in_addr* %0, %struct.in_addr** %3, align 8
  %4 = load %struct.in_addr*, %struct.in_addr** %3, align 8
  %5 = call i32 @assert(%struct.in_addr* %4)
  %6 = load i32, i32* @AF_INET, align 4
  %7 = load %struct.in_addr*, %struct.in_addr** %3, align 8
  %8 = bitcast %struct.in_addr* %7 to %union.in_addr_union*
  %9 = call i32 @in_addr_is_link_local(i32 %6, %union.in_addr_union* %8)
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %22

12:                                               ; preds = %1
  %13 = load %struct.in_addr*, %struct.in_addr** %3, align 8
  %14 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @be32toh(i32 %15)
  %17 = and i32 %16, 65280
  %18 = call i32 @IN_SET(i32 %17, i32 0, i32 65280)
  %19 = icmp ne i32 %18, 0
  %20 = xor i1 %19, true
  %21 = zext i1 %20 to i32
  store i32 %21, i32* %2, align 4
  br label %22

22:                                               ; preds = %12, %11
  %23 = load i32, i32* %2, align 4
  ret i32 %23
}

declare dso_local i32 @assert(%struct.in_addr*) #1

declare dso_local i32 @in_addr_is_link_local(i32, %union.in_addr_union*) #1

declare dso_local i32 @IN_SET(i32, i32, i32) #1

declare dso_local i32 @be32toh(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
