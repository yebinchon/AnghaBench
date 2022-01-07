; ModuleID = '/home/carl/AnghaBench/systemd/src/libsystemd-network/extr_sd-dhcp6-lease.c_dhcp6_lease_set_sntp.c'
source_filename = "/home/carl/AnghaBench/systemd/src/libsystemd-network/extr_sd-dhcp6-lease.c_dhcp6_lease_set_sntp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32, i64, i64 }

@EINVAL = common dso_local global i32 0, align 4
@client = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"NTP information already provided\00", align 1
@.str.1 = private unnamed_addr constant [34 x i8] c"Using deprecated SNTP information\00", align 1
@.str.2 = private unnamed_addr constant [31 x i8] c"Invalid SNTP server option: %m\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dhcp6_lease_set_sntp(%struct.TYPE_7__* %0, %struct.TYPE_7__* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_7__*, align 8
  %6 = alloca %struct.TYPE_7__*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %5, align 8
  store %struct.TYPE_7__* %1, %struct.TYPE_7__** %6, align 8
  store i64 %2, i64* %7, align 8
  %9 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %10 = load i32, i32* @EINVAL, align 4
  %11 = sub nsw i32 0, %10
  %12 = call i32 @assert_return(%struct.TYPE_7__* %9, i32 %11)
  %13 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %14 = load i32, i32* @EINVAL, align 4
  %15 = sub nsw i32 0, %14
  %16 = call i32 @assert_return(%struct.TYPE_7__* %13, i32 %15)
  %17 = load i64, i64* %7, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %56

20:                                               ; preds = %3
  %21 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %22 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %21, i32 0, i32 2
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %30, label %25

25:                                               ; preds = %20
  %26 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %27 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %26, i32 0, i32 3
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %25, %20
  %31 = load i32, i32* @client, align 4
  %32 = call i32 @log_dhcp6_client(i32 %31, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %4, align 4
  br label %56

33:                                               ; preds = %25
  %34 = load i32, i32* @client, align 4
  %35 = call i32 @log_dhcp6_client(i32 %34, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0))
  %36 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %37 = load i64, i64* %7, align 8
  %38 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %39 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %38, i32 0, i32 2
  %40 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %41 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %44 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %43, i32 0, i32 1
  %45 = call i32 @dhcp6_option_parse_ip6addrs(%struct.TYPE_7__* %36, i64 %37, i64* %39, i32 %42, i32* %44)
  store i32 %45, i32* %8, align 4
  %46 = load i32, i32* %8, align 4
  %47 = icmp slt i32 %46, 0
  br i1 %47, label %48, label %52

48:                                               ; preds = %33
  %49 = load i32, i32* @client, align 4
  %50 = load i32, i32* %8, align 4
  %51 = call i32 @log_dhcp6_client_errno(i32 %49, i32 %50, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0))
  store i32 %51, i32* %4, align 4
  br label %56

52:                                               ; preds = %33
  %53 = load i32, i32* %8, align 4
  %54 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %55 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %54, i32 0, i32 0
  store i32 %53, i32* %55, align 8
  store i32 0, i32* %4, align 4
  br label %56

56:                                               ; preds = %52, %48, %30, %19
  %57 = load i32, i32* %4, align 4
  ret i32 %57
}

declare dso_local i32 @assert_return(%struct.TYPE_7__*, i32) #1

declare dso_local i32 @log_dhcp6_client(i32, i8*) #1

declare dso_local i32 @dhcp6_option_parse_ip6addrs(%struct.TYPE_7__*, i64, i64*, i32, i32*) #1

declare dso_local i32 @log_dhcp6_client_errno(i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
