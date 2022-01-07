; ModuleID = '/home/carl/AnghaBench/systemd/src/network/extr_networkd-link.c_link_reconfigure.c'
source_filename = "/home/carl/AnghaBench/systemd/src/network/extr_networkd-link.c_link_reconfigure.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_24__ = type { %struct.TYPE_23__*, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_23__ = type { i32, i64 }

@LINK_STATE_PENDING = common dso_local global i32 0, align 4
@LINK_STATE_LINGER = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"Re-configuring with %s\00", align 1
@LINK_STATE_UNMANAGED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"State is %s, dropping config\00", align 1
@LINK_STATE_INITIALIZED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @link_reconfigure(%struct.TYPE_24__* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_24__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_23__*, align 8
  %7 = alloca i32, align 4
  store %struct.TYPE_24__* %0, %struct.TYPE_24__** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %9 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 8
  %11 = load i32, i32* @LINK_STATE_PENDING, align 4
  %12 = load i32, i32* @LINK_STATE_LINGER, align 4
  %13 = call i64 @IN_SET(i32 %10, i32 %11, i32 %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %167

16:                                               ; preds = %2
  %17 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %18 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %17, i32 0, i32 9
  %19 = load i32, i32* %18, align 8
  %20 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %21 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %20, i32 0, i32 8
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %24 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %23, i32 0, i32 7
  %25 = load i32, i32* %24, align 8
  %26 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %27 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %26, i32 0, i32 6
  %28 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %29 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %28, i32 0, i32 5
  %30 = load i32, i32* %29, align 8
  %31 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %32 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %31, i32 0, i32 4
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %35 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %34, i32 0, i32 3
  %36 = call i32 @network_get(i32 %19, i32 %22, i32 %25, i32* %27, i32 %30, i32 %33, i32* %35, %struct.TYPE_23__** %6)
  store i32 %36, i32* %7, align 4
  %37 = load i32, i32* %7, align 4
  %38 = load i32, i32* @ENOENT, align 4
  %39 = sub nsw i32 0, %38
  %40 = icmp eq i32 %37, %39
  br i1 %40, label %41, label %44

41:                                               ; preds = %16
  %42 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %43 = call i32 @link_enter_unmanaged(%struct.TYPE_24__* %42)
  store i32 0, i32* %3, align 4
  br label %167

44:                                               ; preds = %16
  %45 = load i32, i32* %7, align 4
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %55

47:                                               ; preds = %44
  %48 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %49 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %55

52:                                               ; preds = %47
  %53 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %54 = call i32 @link_enter_unmanaged(%struct.TYPE_24__* %53)
  store i32 0, i32* %3, align 4
  br label %167

55:                                               ; preds = %47, %44
  %56 = load i32, i32* %7, align 4
  %57 = icmp slt i32 %56, 0
  br i1 %57, label %58, label %60

58:                                               ; preds = %55
  %59 = load i32, i32* %7, align 4
  store i32 %59, i32* %3, align 4
  br label %167

60:                                               ; preds = %55
  br label %61

61:                                               ; preds = %60
  br label %62

62:                                               ; preds = %61
  %63 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %64 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %63, i32 0, i32 0
  %65 = load %struct.TYPE_23__*, %struct.TYPE_23__** %64, align 8
  %66 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %67 = icmp eq %struct.TYPE_23__* %65, %66
  br i1 %67, label %68, label %72

68:                                               ; preds = %62
  %69 = load i32, i32* %5, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %72, label %71

71:                                               ; preds = %68
  store i32 0, i32* %3, align 4
  br label %167

72:                                               ; preds = %68, %62
  %73 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %74 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %75 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = call i32 @log_link_info(%struct.TYPE_24__* %73, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %76)
  %78 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %79 = call i32 @link_stop_clients(%struct.TYPE_24__* %78, i32 0)
  store i32 %79, i32* %7, align 4
  %80 = load i32, i32* %7, align 4
  %81 = icmp slt i32 %80, 0
  br i1 %81, label %82, label %86

82:                                               ; preds = %72
  %83 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %84 = call i32 @link_enter_failed(%struct.TYPE_24__* %83)
  %85 = load i32, i32* %7, align 4
  store i32 %85, i32* %3, align 4
  br label %167

86:                                               ; preds = %72
  %87 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %88 = call i64 @link_dhcp4_server_enabled(%struct.TYPE_24__* %87)
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %95

90:                                               ; preds = %86
  %91 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %92 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %91, i32 0, i32 2
  %93 = load i32, i32* %92, align 4
  %94 = call i32 @sd_dhcp_server_stop(i32 %93)
  br label %95

95:                                               ; preds = %90, %86
  %96 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %97 = call i32 @link_drop_config(%struct.TYPE_24__* %96)
  store i32 %97, i32* %7, align 4
  %98 = load i32, i32* %7, align 4
  %99 = icmp slt i32 %98, 0
  br i1 %99, label %100, label %102

100:                                              ; preds = %95
  %101 = load i32, i32* %7, align 4
  store i32 %101, i32* %3, align 4
  br label %167

102:                                              ; preds = %95
  %103 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %104 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 8
  %106 = load i32, i32* @LINK_STATE_UNMANAGED, align 4
  %107 = load i32, i32* @LINK_STATE_PENDING, align 4
  %108 = call i64 @IN_SET(i32 %105, i32 %106, i32 %107)
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %124, label %110

110:                                              ; preds = %102
  %111 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %112 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %113 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %112, i32 0, i32 1
  %114 = load i32, i32* %113, align 8
  %115 = call i32 @link_state_to_string(i32 %114)
  %116 = call i32 @log_link_debug(%struct.TYPE_24__* %111, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32 %115)
  %117 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %118 = call i32 @link_drop_foreign_config(%struct.TYPE_24__* %117)
  store i32 %118, i32* %7, align 4
  %119 = load i32, i32* %7, align 4
  %120 = icmp slt i32 %119, 0
  br i1 %120, label %121, label %123

121:                                              ; preds = %110
  %122 = load i32, i32* %7, align 4
  store i32 %122, i32* %3, align 4
  br label %167

123:                                              ; preds = %110
  br label %124

124:                                              ; preds = %123, %102
  %125 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %126 = call i32 @link_free_carrier_maps(%struct.TYPE_24__* %125)
  %127 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %128 = call i32 @link_free_engines(%struct.TYPE_24__* %127)
  %129 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %130 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %129, i32 0, i32 0
  %131 = load %struct.TYPE_23__*, %struct.TYPE_23__** %130, align 8
  %132 = call %struct.TYPE_23__* @network_unref(%struct.TYPE_23__* %131)
  %133 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %134 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %133, i32 0, i32 0
  store %struct.TYPE_23__* %132, %struct.TYPE_23__** %134, align 8
  %135 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %136 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %137 = call i32 @network_apply(%struct.TYPE_23__* %135, %struct.TYPE_24__* %136)
  store i32 %137, i32* %7, align 4
  %138 = load i32, i32* %7, align 4
  %139 = icmp slt i32 %138, 0
  br i1 %139, label %140, label %142

140:                                              ; preds = %124
  %141 = load i32, i32* %7, align 4
  store i32 %141, i32* %3, align 4
  br label %167

142:                                              ; preds = %124
  %143 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %144 = call i32 @link_new_carrier_maps(%struct.TYPE_24__* %143)
  store i32 %144, i32* %7, align 4
  %145 = load i32, i32* %7, align 4
  %146 = icmp slt i32 %145, 0
  br i1 %146, label %147, label %149

147:                                              ; preds = %142
  %148 = load i32, i32* %7, align 4
  store i32 %148, i32* %3, align 4
  br label %167

149:                                              ; preds = %142
  %150 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %151 = load i32, i32* @LINK_STATE_INITIALIZED, align 4
  %152 = call i32 @link_set_state(%struct.TYPE_24__* %150, i32 %151)
  %153 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %154 = call i32 @link_configure_duid(%struct.TYPE_24__* %153)
  store i32 %154, i32* %7, align 4
  %155 = load i32, i32* %7, align 4
  %156 = icmp sle i32 %155, 0
  br i1 %156, label %157, label %159

157:                                              ; preds = %149
  %158 = load i32, i32* %7, align 4
  store i32 %158, i32* %3, align 4
  br label %167

159:                                              ; preds = %149
  %160 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %161 = call i32 @link_configure(%struct.TYPE_24__* %160)
  store i32 %161, i32* %7, align 4
  %162 = load i32, i32* %7, align 4
  %163 = icmp slt i32 %162, 0
  br i1 %163, label %164, label %166

164:                                              ; preds = %159
  %165 = load i32, i32* %7, align 4
  store i32 %165, i32* %3, align 4
  br label %167

166:                                              ; preds = %159
  store i32 0, i32* %3, align 4
  br label %167

167:                                              ; preds = %166, %164, %157, %147, %140, %121, %100, %82, %71, %58, %52, %41, %15
  %168 = load i32, i32* %3, align 4
  ret i32 %168
}

declare dso_local i64 @IN_SET(i32, i32, i32) #1

declare dso_local i32 @network_get(i32, i32, i32, i32*, i32, i32, i32*, %struct.TYPE_23__**) #1

declare dso_local i32 @link_enter_unmanaged(%struct.TYPE_24__*) #1

declare dso_local i32 @log_link_info(%struct.TYPE_24__*, i8*, i32) #1

declare dso_local i32 @link_stop_clients(%struct.TYPE_24__*, i32) #1

declare dso_local i32 @link_enter_failed(%struct.TYPE_24__*) #1

declare dso_local i64 @link_dhcp4_server_enabled(%struct.TYPE_24__*) #1

declare dso_local i32 @sd_dhcp_server_stop(i32) #1

declare dso_local i32 @link_drop_config(%struct.TYPE_24__*) #1

declare dso_local i32 @log_link_debug(%struct.TYPE_24__*, i8*, i32) #1

declare dso_local i32 @link_state_to_string(i32) #1

declare dso_local i32 @link_drop_foreign_config(%struct.TYPE_24__*) #1

declare dso_local i32 @link_free_carrier_maps(%struct.TYPE_24__*) #1

declare dso_local i32 @link_free_engines(%struct.TYPE_24__*) #1

declare dso_local %struct.TYPE_23__* @network_unref(%struct.TYPE_23__*) #1

declare dso_local i32 @network_apply(%struct.TYPE_23__*, %struct.TYPE_24__*) #1

declare dso_local i32 @link_new_carrier_maps(%struct.TYPE_24__*) #1

declare dso_local i32 @link_set_state(%struct.TYPE_24__*, i32) #1

declare dso_local i32 @link_configure_duid(%struct.TYPE_24__*) #1

declare dso_local i32 @link_configure(%struct.TYPE_24__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
