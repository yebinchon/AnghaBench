; ModuleID = '/home/carl/AnghaBench/systemd/src/libsystemd-network/extr_test-ipv4ll-manual.c_client_run.c'
source_filename = "/home/carl/AnghaBench/systemd/src/libsystemd-network/extr_test-ipv4ll-manual.c_client_run.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ether_addr = type { i32 }

@ll_handler = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"starting IPv4LL client\00", align 1
@EXIT_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*, %struct.ether_addr*, i32*)* @client_run to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @client_run(i32 %0, i8* %1, %struct.ether_addr* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.ether_addr*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i8* %1, i8** %6, align 8
  store %struct.ether_addr* %2, %struct.ether_addr** %7, align 8
  store i32* %3, i32** %8, align 8
  %11 = call i64 @sd_ipv4ll_new(i32** %9)
  %12 = icmp sge i64 %11, 0
  %13 = zext i1 %12 to i32
  %14 = call i32 @assert_se(i32 %13)
  %15 = load i32*, i32** %9, align 8
  %16 = load i32*, i32** %8, align 8
  %17 = call i64 @sd_ipv4ll_attach_event(i32* %15, i32* %16, i32 0)
  %18 = icmp sge i64 %17, 0
  %19 = zext i1 %18 to i32
  %20 = call i32 @assert_se(i32 %19)
  %21 = load i32*, i32** %9, align 8
  %22 = load i32, i32* %5, align 4
  %23 = call i64 @sd_ipv4ll_set_ifindex(i32* %21, i32 %22)
  %24 = icmp sge i64 %23, 0
  %25 = zext i1 %24 to i32
  %26 = call i32 @assert_se(i32 %25)
  %27 = load i32*, i32** %9, align 8
  %28 = load %struct.ether_addr*, %struct.ether_addr** %7, align 8
  %29 = call i64 @sd_ipv4ll_set_mac(i32* %27, %struct.ether_addr* %28)
  %30 = icmp sge i64 %29, 0
  %31 = zext i1 %30 to i32
  %32 = call i32 @assert_se(i32 %31)
  %33 = load i32*, i32** %9, align 8
  %34 = load i32, i32* @ll_handler, align 4
  %35 = call i64 @sd_ipv4ll_set_callback(i32* %33, i32 %34, i32* null)
  %36 = icmp sge i64 %35, 0
  %37 = zext i1 %36 to i32
  %38 = call i32 @assert_se(i32 %37)
  %39 = load i8*, i8** %6, align 8
  %40 = icmp ne i8* %39, null
  br i1 %40, label %41, label %53

41:                                               ; preds = %4
  %42 = load i8*, i8** %6, align 8
  %43 = call i64 @safe_atou(i8* %42, i32* %10)
  %44 = icmp sge i64 %43, 0
  %45 = zext i1 %44 to i32
  %46 = call i32 @assert_se(i32 %45)
  %47 = load i32*, i32** %9, align 8
  %48 = load i32, i32* %10, align 4
  %49 = call i64 @sd_ipv4ll_set_address_seed(i32* %47, i32 %48)
  %50 = icmp sge i64 %49, 0
  %51 = zext i1 %50 to i32
  %52 = call i32 @assert_se(i32 %51)
  br label %53

53:                                               ; preds = %41, %4
  %54 = call i32 @log_info(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %55 = load i32*, i32** %9, align 8
  %56 = call i64 @sd_ipv4ll_start(i32* %55)
  %57 = icmp sge i64 %56, 0
  %58 = zext i1 %57 to i32
  %59 = call i32 @assert_se(i32 %58)
  %60 = load i32*, i32** %8, align 8
  %61 = call i64 @sd_event_loop(i32* %60)
  %62 = icmp sge i64 %61, 0
  %63 = zext i1 %62 to i32
  %64 = call i32 @assert_se(i32 %63)
  %65 = load i32*, i32** %9, align 8
  %66 = call i32 @sd_ipv4ll_unref(i32* %65)
  %67 = icmp ne i32 %66, 0
  %68 = xor i1 %67, true
  %69 = zext i1 %68 to i32
  %70 = call i32 @assert_se(i32 %69)
  %71 = load i32, i32* @EXIT_SUCCESS, align 4
  ret i32 %71
}

declare dso_local i32 @assert_se(i32) #1

declare dso_local i64 @sd_ipv4ll_new(i32**) #1

declare dso_local i64 @sd_ipv4ll_attach_event(i32*, i32*, i32) #1

declare dso_local i64 @sd_ipv4ll_set_ifindex(i32*, i32) #1

declare dso_local i64 @sd_ipv4ll_set_mac(i32*, %struct.ether_addr*) #1

declare dso_local i64 @sd_ipv4ll_set_callback(i32*, i32, i32*) #1

declare dso_local i64 @safe_atou(i8*, i32*) #1

declare dso_local i64 @sd_ipv4ll_set_address_seed(i32*, i32) #1

declare dso_local i32 @log_info(i8*) #1

declare dso_local i64 @sd_ipv4ll_start(i32*) #1

declare dso_local i64 @sd_event_loop(i32*) #1

declare dso_local i32 @sd_ipv4ll_unref(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
