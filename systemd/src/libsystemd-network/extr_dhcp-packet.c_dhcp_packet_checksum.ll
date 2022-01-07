; ModuleID = '/home/carl/AnghaBench/systemd/src/libsystemd-network/extr_dhcp-packet.c_dhcp_packet_checksum.c'
source_filename = "/home/carl/AnghaBench/systemd/src/libsystemd-network/extr_dhcp-packet.c_dhcp_packet_checksum.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @dhcp_packet_checksum(i32* %0, i64 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store i32* %0, i32** %3, align 8
  store i64 %1, i64* %4, align 8
  %9 = load i32*, i32** %3, align 8
  %10 = bitcast i32* %9 to i64*
  store i64* %10, i64** %5, align 8
  %11 = load i64*, i64** %5, align 8
  %12 = load i64, i64* %4, align 8
  %13 = udiv i64 %12, 8
  %14 = getelementptr inbounds i64, i64* %11, i64 %13
  store i64* %14, i64** %6, align 8
  store i64 0, i64* %7, align 8
  br label %15

15:                                               ; preds = %31, %2
  %16 = load i64*, i64** %5, align 8
  %17 = load i64*, i64** %6, align 8
  %18 = icmp ult i64* %16, %17
  br i1 %18, label %19, label %34

19:                                               ; preds = %15
  %20 = load i64*, i64** %5, align 8
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* %7, align 8
  %23 = add nsw i64 %22, %21
  store i64 %23, i64* %7, align 8
  %24 = load i64, i64* %7, align 8
  %25 = load i64*, i64** %5, align 8
  %26 = load i64, i64* %25, align 8
  %27 = icmp slt i64 %24, %26
  br i1 %27, label %28, label %31

28:                                               ; preds = %19
  %29 = load i64, i64* %7, align 8
  %30 = add nsw i64 %29, 1
  store i64 %30, i64* %7, align 8
  br label %31

31:                                               ; preds = %28, %19
  %32 = load i64*, i64** %5, align 8
  %33 = getelementptr inbounds i64, i64* %32, i32 1
  store i64* %33, i64** %5, align 8
  br label %15

34:                                               ; preds = %15
  %35 = load i64, i64* %4, align 8
  %36 = urem i64 %35, 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %53

38:                                               ; preds = %34
  store i64 0, i64* %8, align 8
  %39 = load i64*, i64** %5, align 8
  %40 = load i64, i64* %4, align 8
  %41 = urem i64 %40, 8
  %42 = call i32 @memcpy(i64* %8, i64* %39, i64 %41)
  %43 = load i64, i64* %8, align 8
  %44 = load i64, i64* %7, align 8
  %45 = add nsw i64 %44, %43
  store i64 %45, i64* %7, align 8
  %46 = load i64, i64* %7, align 8
  %47 = load i64, i64* %8, align 8
  %48 = icmp slt i64 %46, %47
  br i1 %48, label %49, label %52

49:                                               ; preds = %38
  %50 = load i64, i64* %7, align 8
  %51 = add nsw i64 %50, 1
  store i64 %51, i64* %7, align 8
  br label %52

52:                                               ; preds = %49, %38
  br label %53

53:                                               ; preds = %52, %34
  br label %54

54:                                               ; preds = %58, %53
  %55 = load i64, i64* %7, align 8
  %56 = ashr i64 %55, 16
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %64

58:                                               ; preds = %54
  %59 = load i64, i64* %7, align 8
  %60 = and i64 %59, 65535
  %61 = load i64, i64* %7, align 8
  %62 = ashr i64 %61, 16
  %63 = add nsw i64 %60, %62
  store i64 %63, i64* %7, align 8
  br label %54

64:                                               ; preds = %54
  %65 = load i64, i64* %7, align 8
  %66 = xor i64 %65, -1
  ret i64 %66
}

declare dso_local i32 @memcpy(i64*, i64*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
