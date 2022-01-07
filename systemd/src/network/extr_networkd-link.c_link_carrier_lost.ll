; ModuleID = '/home/carl/AnghaBench/systemd/src/network/extr_networkd-link.c_link_carrier_lost.c'
source_filename = "/home/carl/AnghaBench/systemd/src/network/extr_networkd-link.c_link_carrier_lost.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32, i32, i64, %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i64 }

@LINK_STATE_UNMANAGED = common dso_local global i32 0, align 4
@LINK_STATE_PENDING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"State is %s, dropping config\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_13__*)* @link_carrier_lost to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @link_carrier_lost(%struct.TYPE_13__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_13__*, align 8
  %4 = alloca i32, align 4
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %3, align 8
  %5 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %6 = call i32 @assert(%struct.TYPE_13__* %5)
  %7 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %8 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %7, i32 0, i32 3
  %9 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %10 = icmp ne %struct.TYPE_12__* %9, null
  br i1 %10, label %11, label %19

11:                                               ; preds = %1
  %12 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %13 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %12, i32 0, i32 3
  %14 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %11
  store i32 0, i32* %2, align 4
  br label %80

19:                                               ; preds = %11, %1
  %20 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %21 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %20, i32 0, i32 2
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %19
  store i32 0, i32* %2, align 4
  br label %80

25:                                               ; preds = %19
  %26 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %27 = call i32 @link_stop_clients(%struct.TYPE_13__* %26, i32 0)
  store i32 %27, i32* %4, align 4
  %28 = load i32, i32* %4, align 4
  %29 = icmp slt i32 %28, 0
  br i1 %29, label %30, label %34

30:                                               ; preds = %25
  %31 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %32 = call i32 @link_enter_failed(%struct.TYPE_13__* %31)
  %33 = load i32, i32* %4, align 4
  store i32 %33, i32* %2, align 4
  br label %80

34:                                               ; preds = %25
  %35 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %36 = call i64 @link_dhcp4_server_enabled(%struct.TYPE_13__* %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %43

38:                                               ; preds = %34
  %39 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %40 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @sd_dhcp_server_stop(i32 %41)
  br label %43

43:                                               ; preds = %38, %34
  %44 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %45 = call i32 @link_drop_config(%struct.TYPE_13__* %44)
  store i32 %45, i32* %4, align 4
  %46 = load i32, i32* %4, align 4
  %47 = icmp slt i32 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %43
  %49 = load i32, i32* %4, align 4
  store i32 %49, i32* %2, align 4
  br label %80

50:                                               ; preds = %43
  %51 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %52 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = load i32, i32* @LINK_STATE_UNMANAGED, align 4
  %55 = load i32, i32* @LINK_STATE_PENDING, align 4
  %56 = call i32 @IN_SET(i32 %53, i32 %54, i32 %55)
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %72, label %58

58:                                               ; preds = %50
  %59 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %60 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %61 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = call i32 @link_state_to_string(i32 %62)
  %64 = call i32 @log_link_debug(%struct.TYPE_13__* %59, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %63)
  %65 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %66 = call i32 @link_drop_foreign_config(%struct.TYPE_13__* %65)
  store i32 %66, i32* %4, align 4
  %67 = load i32, i32* %4, align 4
  %68 = icmp slt i32 %67, 0
  br i1 %68, label %69, label %71

69:                                               ; preds = %58
  %70 = load i32, i32* %4, align 4
  store i32 %70, i32* %2, align 4
  br label %80

71:                                               ; preds = %58
  br label %72

72:                                               ; preds = %71, %50
  %73 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %74 = call i32 @link_handle_bound_by_list(%struct.TYPE_13__* %73)
  store i32 %74, i32* %4, align 4
  %75 = load i32, i32* %4, align 4
  %76 = icmp slt i32 %75, 0
  br i1 %76, label %77, label %79

77:                                               ; preds = %72
  %78 = load i32, i32* %4, align 4
  store i32 %78, i32* %2, align 4
  br label %80

79:                                               ; preds = %72
  store i32 0, i32* %2, align 4
  br label %80

80:                                               ; preds = %79, %77, %69, %48, %30, %24, %18
  %81 = load i32, i32* %2, align 4
  ret i32 %81
}

declare dso_local i32 @assert(%struct.TYPE_13__*) #1

declare dso_local i32 @link_stop_clients(%struct.TYPE_13__*, i32) #1

declare dso_local i32 @link_enter_failed(%struct.TYPE_13__*) #1

declare dso_local i64 @link_dhcp4_server_enabled(%struct.TYPE_13__*) #1

declare dso_local i32 @sd_dhcp_server_stop(i32) #1

declare dso_local i32 @link_drop_config(%struct.TYPE_13__*) #1

declare dso_local i32 @IN_SET(i32, i32, i32) #1

declare dso_local i32 @log_link_debug(%struct.TYPE_13__*, i8*, i32) #1

declare dso_local i32 @link_state_to_string(i32) #1

declare dso_local i32 @link_drop_foreign_config(%struct.TYPE_13__*) #1

declare dso_local i32 @link_handle_bound_by_list(%struct.TYPE_13__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
