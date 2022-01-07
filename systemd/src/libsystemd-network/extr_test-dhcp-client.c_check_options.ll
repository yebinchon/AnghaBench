; ModuleID = '/home/carl/AnghaBench/systemd/src/libsystemd-network/extr_test-dhcp-client.c_check_options.c'
source_filename = "/home/carl/AnghaBench/systemd/src/libsystemd-network/extr_test-dhcp-client.c_check_options.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.duid = type { i32 }

@mac_addr = common dso_local global i32 0, align 4
@ETH_ALEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i8*, i8*)* @check_options to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @check_options(i32 %0, i32 %1, i8* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.duid, align 4
  %10 = alloca %struct.duid, align 4
  %11 = alloca i64, align 8
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  store i8* %3, i8** %8, align 8
  %12 = load i32, i32* %5, align 4
  switch i32 %12, label %57 [
    i32 128, label %13
  ]

13:                                               ; preds = %4
  %14 = call i32 @dhcp_identifier_set_duid_en(%struct.duid* %10, i64* %11)
  %15 = icmp sge i32 %14, 0
  %16 = zext i1 %15 to i32
  %17 = call i32 @assert_se(i32 %16)
  %18 = load i32, i32* @mac_addr, align 4
  %19 = load i32, i32* @ETH_ALEN, align 4
  %20 = call i32 @dhcp_identifier_set_iaid(i32 42, i32 %18, i32 %19, i32 1, %struct.duid* %9)
  %21 = icmp sge i32 %20, 0
  %22 = zext i1 %21 to i32
  %23 = call i32 @assert_se(i32 %22)
  %24 = load i32, i32* %6, align 4
  %25 = sext i32 %24 to i64
  %26 = load i64, i64* %11, align 8
  %27 = add i64 8, %26
  %28 = icmp eq i64 %25, %27
  %29 = zext i1 %28 to i32
  %30 = call i32 @assert_se(i32 %29)
  %31 = load i32, i32* %6, align 4
  %32 = icmp eq i32 %31, 19
  %33 = zext i1 %32 to i32
  %34 = call i32 @assert_se(i32 %33)
  %35 = load i8*, i8** %7, align 8
  %36 = bitcast i8* %35 to i32*
  %37 = getelementptr inbounds i32, i32* %36, i64 0
  %38 = load i32, i32* %37, align 4
  %39 = icmp eq i32 %38, 255
  %40 = zext i1 %39 to i32
  %41 = call i32 @assert_se(i32 %40)
  %42 = load i8*, i8** %7, align 8
  %43 = bitcast i8* %42 to i32*
  %44 = getelementptr inbounds i32, i32* %43, i64 1
  %45 = call i32 @memcmp(i32* %44, %struct.duid* %9, i64 4)
  %46 = icmp eq i32 %45, 0
  %47 = zext i1 %46 to i32
  %48 = call i32 @assert_se(i32 %47)
  %49 = load i8*, i8** %7, align 8
  %50 = bitcast i8* %49 to i32*
  %51 = getelementptr inbounds i32, i32* %50, i64 5
  %52 = load i64, i64* %11, align 8
  %53 = call i32 @memcmp(i32* %51, %struct.duid* %10, i64 %52)
  %54 = icmp eq i32 %53, 0
  %55 = zext i1 %54 to i32
  %56 = call i32 @assert_se(i32 %55)
  br label %58

57:                                               ; preds = %4
  br label %58

58:                                               ; preds = %57, %13
  ret i32 0
}

declare dso_local i32 @assert_se(i32) #1

declare dso_local i32 @dhcp_identifier_set_duid_en(%struct.duid*, i64*) #1

declare dso_local i32 @dhcp_identifier_set_iaid(i32, i32, i32, i32, %struct.duid*) #1

declare dso_local i32 @memcmp(i32*, %struct.duid*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
