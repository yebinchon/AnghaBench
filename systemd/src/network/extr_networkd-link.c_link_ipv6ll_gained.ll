; ModuleID = '/home/carl/AnghaBench/systemd/src/network/extr_networkd-link.c_link_ipv6ll_gained.c'
source_filename = "/home/carl/AnghaBench/systemd/src/network/extr_networkd-link.c_link_ipv6ll_gained.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, %struct.in6_addr }
%struct.in6_addr = type { i32 }

@.str = private unnamed_addr constant [14 x i8] c"Gained IPv6LL\00", align 1
@LINK_STATE_CONFIGURING = common dso_local global i32 0, align 4
@LINK_STATE_CONFIGURED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @link_ipv6ll_gained(%struct.TYPE_8__* %0, %struct.in6_addr* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_8__*, align 8
  %5 = alloca %struct.in6_addr*, align 8
  %6 = alloca i32, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %4, align 8
  store %struct.in6_addr* %1, %struct.in6_addr** %5, align 8
  %7 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %8 = call i32 @assert(%struct.TYPE_8__* %7)
  %9 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %10 = call i32 @log_link_info(%struct.TYPE_8__* %9, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  %11 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %12 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %11, i32 0, i32 1
  %13 = load %struct.in6_addr*, %struct.in6_addr** %5, align 8
  %14 = bitcast %struct.in6_addr* %12 to i8*
  %15 = bitcast %struct.in6_addr* %13 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %14, i8* align 4 %15, i64 4, i1 false)
  %16 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %17 = call i32 @link_check_ready(%struct.TYPE_8__* %16)
  %18 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @LINK_STATE_CONFIGURING, align 4
  %22 = load i32, i32* @LINK_STATE_CONFIGURED, align 4
  %23 = call i64 @IN_SET(i32 %20, i32 %21, i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %35

25:                                               ; preds = %2
  %26 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %27 = call i32 @link_acquire_ipv6_conf(%struct.TYPE_8__* %26)
  store i32 %27, i32* %6, align 4
  %28 = load i32, i32* %6, align 4
  %29 = icmp slt i32 %28, 0
  br i1 %29, label %30, label %34

30:                                               ; preds = %25
  %31 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %32 = call i32 @link_enter_failed(%struct.TYPE_8__* %31)
  %33 = load i32, i32* %6, align 4
  store i32 %33, i32* %3, align 4
  br label %36

34:                                               ; preds = %25
  br label %35

35:                                               ; preds = %34, %2
  store i32 0, i32* %3, align 4
  br label %36

36:                                               ; preds = %35, %30
  %37 = load i32, i32* %3, align 4
  ret i32 %37
}

declare dso_local i32 @assert(%struct.TYPE_8__*) #1

declare dso_local i32 @log_link_info(%struct.TYPE_8__*, i8*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @link_check_ready(%struct.TYPE_8__*) #1

declare dso_local i64 @IN_SET(i32, i32, i32) #1

declare dso_local i32 @link_acquire_ipv6_conf(%struct.TYPE_8__*) #1

declare dso_local i32 @link_enter_failed(%struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
