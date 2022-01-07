; ModuleID = '/home/carl/AnghaBench/systemd/src/network/extr_networkd-link.c_link_acquire_conf.c'
source_filename = "/home/carl/AnghaBench/systemd/src/network/extr_networkd-link.c_link_acquire_conf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32 }
%union.in_addr_union = type { i32 }

@AF_INET6 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"Failed to start LLDP transmission: %m\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_9__*)* @link_acquire_conf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @link_acquire_conf(%struct.TYPE_9__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_9__*, align 8
  %4 = alloca i32, align 4
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %3, align 8
  %5 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %6 = call i32 @assert(%struct.TYPE_9__* %5)
  %7 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %8 = call i32 @link_acquire_ipv4_conf(%struct.TYPE_9__* %7)
  store i32 %8, i32* %4, align 4
  %9 = load i32, i32* %4, align 4
  %10 = icmp slt i32 %9, 0
  br i1 %10, label %11, label %13

11:                                               ; preds = %1
  %12 = load i32, i32* %4, align 4
  store i32 %12, i32* %2, align 4
  br label %43

13:                                               ; preds = %1
  %14 = load i32, i32* @AF_INET6, align 4
  %15 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %16 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %15, i32 0, i32 0
  %17 = bitcast i32* %16 to %union.in_addr_union*
  %18 = call i32 @in_addr_is_null(i32 %14, %union.in_addr_union* %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %28, label %20

20:                                               ; preds = %13
  %21 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %22 = call i32 @link_acquire_ipv6_conf(%struct.TYPE_9__* %21)
  store i32 %22, i32* %4, align 4
  %23 = load i32, i32* %4, align 4
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %20
  %26 = load i32, i32* %4, align 4
  store i32 %26, i32* %2, align 4
  br label %43

27:                                               ; preds = %20
  br label %28

28:                                               ; preds = %27, %13
  %29 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %30 = call i64 @link_lldp_emit_enabled(%struct.TYPE_9__* %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %42

32:                                               ; preds = %28
  %33 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %34 = call i32 @link_lldp_emit_start(%struct.TYPE_9__* %33)
  store i32 %34, i32* %4, align 4
  %35 = load i32, i32* %4, align 4
  %36 = icmp slt i32 %35, 0
  br i1 %36, label %37, label %41

37:                                               ; preds = %32
  %38 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %39 = load i32, i32* %4, align 4
  %40 = call i32 @log_link_warning_errno(%struct.TYPE_9__* %38, i32 %39, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  store i32 %40, i32* %2, align 4
  br label %43

41:                                               ; preds = %32
  br label %42

42:                                               ; preds = %41, %28
  store i32 0, i32* %2, align 4
  br label %43

43:                                               ; preds = %42, %37, %25, %11
  %44 = load i32, i32* %2, align 4
  ret i32 %44
}

declare dso_local i32 @assert(%struct.TYPE_9__*) #1

declare dso_local i32 @link_acquire_ipv4_conf(%struct.TYPE_9__*) #1

declare dso_local i32 @in_addr_is_null(i32, %union.in_addr_union*) #1

declare dso_local i32 @link_acquire_ipv6_conf(%struct.TYPE_9__*) #1

declare dso_local i64 @link_lldp_emit_enabled(%struct.TYPE_9__*) #1

declare dso_local i32 @link_lldp_emit_start(%struct.TYPE_9__*) #1

declare dso_local i32 @log_link_warning_errno(%struct.TYPE_9__*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
