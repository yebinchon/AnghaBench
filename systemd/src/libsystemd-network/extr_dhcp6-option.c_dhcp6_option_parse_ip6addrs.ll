; ModuleID = '/home/carl/AnghaBench/systemd/src/libsystemd-network/extr_dhcp6-option.c_dhcp6_option_parse_ip6addrs.c'
source_filename = "/home/carl/AnghaBench/systemd/src/libsystemd-network/extr_dhcp6-option.c_dhcp6_option_parse_ip6addrs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.in6_addr = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dhcp6_option_parse_ip6addrs(i32* %0, i32 %1, %struct.in6_addr** %2, i64 %3, i64* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.in6_addr**, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64*, align 8
  store i32* %0, i32** %7, align 8
  store i32 %1, i32* %8, align 4
  store %struct.in6_addr** %2, %struct.in6_addr*** %9, align 8
  store i64 %3, i64* %10, align 8
  store i64* %4, i64** %11, align 8
  %12 = load i32, i32* %8, align 4
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %19, label %14

14:                                               ; preds = %5
  %15 = load i32, i32* %8, align 4
  %16 = sext i32 %15 to i64
  %17 = urem i64 %16, 4
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %14, %5
  %20 = load i32, i32* @EINVAL, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %6, align 4
  br label %52

22:                                               ; preds = %14
  %23 = load %struct.in6_addr**, %struct.in6_addr*** %9, align 8
  %24 = load %struct.in6_addr*, %struct.in6_addr** %23, align 8
  %25 = load i64*, i64** %11, align 8
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* %10, align 8
  %28 = mul i64 %27, 4
  %29 = load i32, i32* %8, align 4
  %30 = sext i32 %29 to i64
  %31 = add i64 %28, %30
  %32 = call i32 @GREEDY_REALLOC(%struct.in6_addr* %24, i64 %26, i64 %31)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %37, label %34

34:                                               ; preds = %22
  %35 = load i32, i32* @ENOMEM, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %6, align 4
  br label %52

37:                                               ; preds = %22
  %38 = load %struct.in6_addr**, %struct.in6_addr*** %9, align 8
  %39 = load %struct.in6_addr*, %struct.in6_addr** %38, align 8
  %40 = load i64, i64* %10, align 8
  %41 = getelementptr inbounds %struct.in6_addr, %struct.in6_addr* %39, i64 %40
  %42 = load i32*, i32** %7, align 8
  %43 = load i32, i32* %8, align 4
  %44 = call i32 @memcpy(%struct.in6_addr* %41, i32* %42, i32 %43)
  %45 = load i32, i32* %8, align 4
  %46 = sext i32 %45 to i64
  %47 = udiv i64 %46, 4
  %48 = load i64, i64* %10, align 8
  %49 = add i64 %48, %47
  store i64 %49, i64* %10, align 8
  %50 = load i64, i64* %10, align 8
  %51 = trunc i64 %50 to i32
  store i32 %51, i32* %6, align 4
  br label %52

52:                                               ; preds = %37, %34, %19
  %53 = load i32, i32* %6, align 4
  ret i32 %53
}

declare dso_local i32 @GREEDY_REALLOC(%struct.in6_addr*, i64, i64) #1

declare dso_local i32 @memcpy(%struct.in6_addr*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
