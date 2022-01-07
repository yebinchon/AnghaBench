; ModuleID = '/home/carl/AnghaBench/systemd/src/network/tc/extr_netem.c_network_emulator_fill_message.c'
source_filename = "/home/carl/AnghaBench/systemd/src/network/tc/extr_netem.c_network_emulator_fill_message.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tc_netem_qopt = type { i32, i64, i64, i32, i32 }
%struct.TYPE_12__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i64, i64, i64, i64, i64 }

@__const.network_emulator_fill_message.opt = private unnamed_addr constant %struct.tc_netem_qopt { i32 1000, i64 0, i64 0, i32 0, i32 0 }, align 8
@USEC_INFINITY = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [46 x i8] c"Failed to calculate latency in TCA_OPTION: %m\00", align 1
@.str.1 = private unnamed_addr constant [45 x i8] c"Failed to calculate jitter in TCA_OPTION: %m\00", align 1
@TCA_OPTIONS = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [42 x i8] c"Could not append TCA_OPTION attribute: %m\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @network_emulator_fill_message(%struct.TYPE_12__* %0, %struct.TYPE_12__* %1, %struct.TYPE_12__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_12__*, align 8
  %6 = alloca %struct.TYPE_12__*, align 8
  %7 = alloca %struct.TYPE_12__*, align 8
  %8 = alloca %struct.tc_netem_qopt, align 8
  %9 = alloca i32, align 4
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %5, align 8
  store %struct.TYPE_12__* %1, %struct.TYPE_12__** %6, align 8
  store %struct.TYPE_12__* %2, %struct.TYPE_12__** %7, align 8
  %10 = bitcast %struct.tc_netem_qopt* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %10, i8* align 8 bitcast (%struct.tc_netem_qopt* @__const.network_emulator_fill_message.opt to i8*), i64 32, i1 false)
  %11 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %12 = call i32 @assert(%struct.TYPE_12__* %11)
  %13 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %14 = call i32 @assert(%struct.TYPE_12__* %13)
  %15 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %16 = call i32 @assert(%struct.TYPE_12__* %15)
  %17 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %18 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp sgt i64 %20, 0
  br i1 %21, label %22, label %29

22:                                               ; preds = %3
  %23 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %24 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = trunc i64 %26 to i32
  %28 = getelementptr inbounds %struct.tc_netem_qopt, %struct.tc_netem_qopt* %8, i32 0, i32 0
  store i32 %27, i32* %28, align 8
  br label %29

29:                                               ; preds = %22, %3
  %30 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %31 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = icmp sgt i64 %33, 0
  br i1 %34, label %35, label %41

35:                                               ; preds = %29
  %36 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %37 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = getelementptr inbounds %struct.tc_netem_qopt, %struct.tc_netem_qopt* %8, i32 0, i32 1
  store i64 %39, i64* %40, align 8
  br label %41

41:                                               ; preds = %35, %29
  %42 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %43 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %43, i32 0, i32 2
  %45 = load i64, i64* %44, align 8
  %46 = icmp sgt i64 %45, 0
  br i1 %46, label %47, label %53

47:                                               ; preds = %41
  %48 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %49 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %49, i32 0, i32 2
  %51 = load i64, i64* %50, align 8
  %52 = getelementptr inbounds %struct.tc_netem_qopt, %struct.tc_netem_qopt* %8, i32 0, i32 2
  store i64 %51, i64* %52, align 8
  br label %53

53:                                               ; preds = %47, %41
  %54 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %55 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %55, i32 0, i32 3
  %57 = load i64, i64* %56, align 8
  %58 = load i64, i64* @USEC_INFINITY, align 8
  %59 = icmp ne i64 %57, %58
  br i1 %59, label %60, label %74

60:                                               ; preds = %53
  %61 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %62 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %62, i32 0, i32 3
  %64 = load i64, i64* %63, align 8
  %65 = getelementptr inbounds %struct.tc_netem_qopt, %struct.tc_netem_qopt* %8, i32 0, i32 4
  %66 = call i32 @tc_time_to_tick(i64 %64, i32* %65)
  store i32 %66, i32* %9, align 4
  %67 = load i32, i32* %9, align 4
  %68 = icmp slt i32 %67, 0
  br i1 %68, label %69, label %73

69:                                               ; preds = %60
  %70 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %71 = load i32, i32* %9, align 4
  %72 = call i32 @log_link_error_errno(%struct.TYPE_12__* %70, i32 %71, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0))
  store i32 %72, i32* %4, align 4
  br label %106

73:                                               ; preds = %60
  br label %74

74:                                               ; preds = %73, %53
  %75 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %76 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %76, i32 0, i32 4
  %78 = load i64, i64* %77, align 8
  %79 = load i64, i64* @USEC_INFINITY, align 8
  %80 = icmp ne i64 %78, %79
  br i1 %80, label %81, label %95

81:                                               ; preds = %74
  %82 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %83 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %83, i32 0, i32 4
  %85 = load i64, i64* %84, align 8
  %86 = getelementptr inbounds %struct.tc_netem_qopt, %struct.tc_netem_qopt* %8, i32 0, i32 3
  %87 = call i32 @tc_time_to_tick(i64 %85, i32* %86)
  store i32 %87, i32* %9, align 4
  %88 = load i32, i32* %9, align 4
  %89 = icmp slt i32 %88, 0
  br i1 %89, label %90, label %94

90:                                               ; preds = %81
  %91 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %92 = load i32, i32* %9, align 4
  %93 = call i32 @log_link_error_errno(%struct.TYPE_12__* %91, i32 %92, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0))
  store i32 %93, i32* %4, align 4
  br label %106

94:                                               ; preds = %81
  br label %95

95:                                               ; preds = %94, %74
  %96 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %97 = load i32, i32* @TCA_OPTIONS, align 4
  %98 = call i32 @sd_netlink_message_append_data(%struct.TYPE_12__* %96, i32 %97, %struct.tc_netem_qopt* %8, i32 32)
  store i32 %98, i32* %9, align 4
  %99 = load i32, i32* %9, align 4
  %100 = icmp slt i32 %99, 0
  br i1 %100, label %101, label %105

101:                                              ; preds = %95
  %102 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %103 = load i32, i32* %9, align 4
  %104 = call i32 @log_link_error_errno(%struct.TYPE_12__* %102, i32 %103, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.2, i64 0, i64 0))
  store i32 %104, i32* %4, align 4
  br label %106

105:                                              ; preds = %95
  store i32 0, i32* %4, align 4
  br label %106

106:                                              ; preds = %105, %101, %90, %69
  %107 = load i32, i32* %4, align 4
  ret i32 %107
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @assert(%struct.TYPE_12__*) #2

declare dso_local i32 @tc_time_to_tick(i64, i32*) #2

declare dso_local i32 @log_link_error_errno(%struct.TYPE_12__*, i32, i8*) #2

declare dso_local i32 @sd_netlink_message_append_data(%struct.TYPE_12__*, i32, %struct.tc_netem_qopt*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
