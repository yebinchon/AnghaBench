; ModuleID = '/home/carl/AnghaBench/systemd/src/network/extr_networkd-dhcp6.c_dhcp6_lease_address_acquired.c'
source_filename = "/home/carl/AnghaBench/systemd/src/network/extr_networkd-dhcp6.c_dhcp6_lease_address_acquired.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.in6_addr = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*)* @dhcp6_lease_address_acquired to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dhcp6_lease_address_acquired(i32* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca %struct.in6_addr, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  %11 = load i32*, i32** %4, align 8
  %12 = call i32 @sd_dhcp6_client_get_lease(i32* %11, i32** %7)
  store i32 %12, i32* %6, align 4
  %13 = load i32, i32* %6, align 4
  %14 = icmp slt i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %2
  %16 = load i32, i32* %6, align 4
  store i32 %16, i32* %3, align 4
  br label %35

17:                                               ; preds = %2
  %18 = load i32*, i32** %7, align 8
  %19 = call i32 @sd_dhcp6_lease_reset_address_iter(i32* %18)
  br label %20

20:                                               ; preds = %33, %17
  %21 = load i32*, i32** %7, align 8
  %22 = call i64 @sd_dhcp6_lease_get_address(i32* %21, %struct.in6_addr* %8, i32* %9, i32* %10)
  %23 = icmp sge i64 %22, 0
  br i1 %23, label %24, label %34

24:                                               ; preds = %20
  %25 = load i32*, i32** %5, align 8
  %26 = load i32, i32* %9, align 4
  %27 = load i32, i32* %10, align 4
  %28 = call i32 @dhcp6_address_change(i32* %25, %struct.in6_addr* %8, i32 %26, i32 %27)
  store i32 %28, i32* %6, align 4
  %29 = load i32, i32* %6, align 4
  %30 = icmp slt i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %24
  %32 = load i32, i32* %6, align 4
  store i32 %32, i32* %3, align 4
  br label %35

33:                                               ; preds = %24
  br label %20

34:                                               ; preds = %20
  store i32 0, i32* %3, align 4
  br label %35

35:                                               ; preds = %34, %31, %15
  %36 = load i32, i32* %3, align 4
  ret i32 %36
}

declare dso_local i32 @sd_dhcp6_client_get_lease(i32*, i32**) #1

declare dso_local i32 @sd_dhcp6_lease_reset_address_iter(i32*) #1

declare dso_local i64 @sd_dhcp6_lease_get_address(i32*, %struct.in6_addr*, i32*, i32*) #1

declare dso_local i32 @dhcp6_address_change(i32*, %struct.in6_addr*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
