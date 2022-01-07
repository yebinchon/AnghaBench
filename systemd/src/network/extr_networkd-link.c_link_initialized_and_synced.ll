; ModuleID = '/home/carl/AnghaBench/systemd/src/network/extr_networkd-link.c_link_initialized_and_synced.c'
source_filename = "/home/carl/AnghaBench/systemd/src/network/extr_networkd-link.c_link_initialized_and_synced.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_20__ = type { i32, i32, i32, i32, i32, %struct.TYPE_20__*, i32, %struct.TYPE_20__*, i32, i32 }
%struct.TYPE_19__ = type { i64, i64, i64, i64 }

@LINK_STATE_PENDING = common dso_local global i32 0, align 4
@LINK_STATE_INITIALIZED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"Link state is up-to-date\00", align 1
@ENOENT = common dso_local global i32 0, align 4
@IFF_LOOPBACK = common dso_local global i32 0, align 4
@ADDRESS_FAMILY_NO = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [56 x i8] c"Ignoring link-local autoconfiguration for loopback link\00", align 1
@.str.2 = private unnamed_addr constant [40 x i8] c"Ignoring DHCP clients for loopback link\00", align 1
@.str.3 = private unnamed_addr constant [39 x i8] c"Ignoring DHCP server for loopback link\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_20__*)* @link_initialized_and_synced to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @link_initialized_and_synced(%struct.TYPE_20__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_20__*, align 8
  %4 = alloca %struct.TYPE_19__*, align 8
  %5 = alloca i32, align 4
  store %struct.TYPE_20__* %0, %struct.TYPE_20__** %3, align 8
  %6 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %7 = call i32 @assert(%struct.TYPE_20__* %6)
  %8 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %9 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %8, i32 0, i32 5
  %10 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %11 = call i32 @assert(%struct.TYPE_20__* %10)
  %12 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %13 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %12, i32 0, i32 7
  %14 = load %struct.TYPE_20__*, %struct.TYPE_20__** %13, align 8
  %15 = call i32 @assert(%struct.TYPE_20__* %14)
  %16 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %17 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %16, i32 0, i32 9
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @LINK_STATE_PENDING, align 4
  %20 = load i32, i32* @LINK_STATE_INITIALIZED, align 4
  %21 = call i32 @IN_SET(i32 %18, i32 %19, i32 %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %24, label %23

23:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %166

24:                                               ; preds = %1
  %25 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %26 = call i32 @log_link_debug(%struct.TYPE_20__* %25, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %27 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %28 = load i32, i32* @LINK_STATE_INITIALIZED, align 4
  %29 = call i32 @link_set_state(%struct.TYPE_20__* %27, i32 %28)
  %30 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %31 = call i32 @link_new_bound_by_list(%struct.TYPE_20__* %30)
  store i32 %31, i32* %5, align 4
  %32 = load i32, i32* %5, align 4
  %33 = icmp slt i32 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %24
  %35 = load i32, i32* %5, align 4
  store i32 %35, i32* %2, align 4
  br label %166

36:                                               ; preds = %24
  %37 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %38 = call i32 @link_handle_bound_by_list(%struct.TYPE_20__* %37)
  store i32 %38, i32* %5, align 4
  %39 = load i32, i32* %5, align 4
  %40 = icmp slt i32 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %36
  %42 = load i32, i32* %5, align 4
  store i32 %42, i32* %2, align 4
  br label %166

43:                                               ; preds = %36
  %44 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %45 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %44, i32 0, i32 8
  %46 = load i32, i32* %45, align 8
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %144, label %48

48:                                               ; preds = %43
  %49 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %50 = call i32 @wifi_get_info(%struct.TYPE_20__* %49)
  store i32 %50, i32* %5, align 4
  %51 = load i32, i32* %5, align 4
  %52 = icmp slt i32 %51, 0
  br i1 %52, label %53, label %55

53:                                               ; preds = %48
  %54 = load i32, i32* %5, align 4
  store i32 %54, i32* %2, align 4
  br label %166

55:                                               ; preds = %48
  %56 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %57 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %56, i32 0, i32 7
  %58 = load %struct.TYPE_20__*, %struct.TYPE_20__** %57, align 8
  %59 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %60 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %59, i32 0, i32 6
  %61 = load i32, i32* %60, align 8
  %62 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %63 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %62, i32 0, i32 5
  %64 = load %struct.TYPE_20__*, %struct.TYPE_20__** %63, align 8
  %65 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %66 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %65, i32 0, i32 4
  %67 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %68 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %67, i32 0, i32 3
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %71 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %70, i32 0, i32 2
  %72 = load i32, i32* %71, align 8
  %73 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %74 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %73, i32 0, i32 1
  %75 = call i32 @network_get(%struct.TYPE_20__* %58, i32 %61, %struct.TYPE_20__* %64, i32* %66, i32 %69, i32 %72, i32* %74, %struct.TYPE_19__** %4)
  store i32 %75, i32* %5, align 4
  %76 = load i32, i32* %5, align 4
  %77 = load i32, i32* @ENOENT, align 4
  %78 = sub nsw i32 0, %77
  %79 = icmp eq i32 %76, %78
  br i1 %79, label %80, label %83

80:                                               ; preds = %55
  %81 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %82 = call i32 @link_enter_unmanaged(%struct.TYPE_20__* %81)
  store i32 0, i32* %2, align 4
  br label %166

83:                                               ; preds = %55
  %84 = load i32, i32* %5, align 4
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %86, label %94

86:                                               ; preds = %83
  %87 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %88 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %87, i32 0, i32 3
  %89 = load i64, i64* %88, align 8
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %94

91:                                               ; preds = %86
  %92 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %93 = call i32 @link_enter_unmanaged(%struct.TYPE_20__* %92)
  store i32 0, i32* %2, align 4
  br label %166

94:                                               ; preds = %86, %83
  %95 = load i32, i32* %5, align 4
  %96 = icmp slt i32 %95, 0
  br i1 %96, label %97, label %99

97:                                               ; preds = %94
  %98 = load i32, i32* %5, align 4
  store i32 %98, i32* %2, align 4
  br label %166

99:                                               ; preds = %94
  br label %100

100:                                              ; preds = %99
  br label %101

101:                                              ; preds = %100
  %102 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %103 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 8
  %105 = load i32, i32* @IFF_LOOPBACK, align 4
  %106 = and i32 %104, %105
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %135

108:                                              ; preds = %101
  %109 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %110 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %109, i32 0, i32 0
  %111 = load i64, i64* %110, align 8
  %112 = load i64, i64* @ADDRESS_FAMILY_NO, align 8
  %113 = icmp ne i64 %111, %112
  br i1 %113, label %114, label %117

114:                                              ; preds = %108
  %115 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %116 = call i32 @log_link_debug(%struct.TYPE_20__* %115, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.1, i64 0, i64 0))
  br label %117

117:                                              ; preds = %114, %108
  %118 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %119 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %118, i32 0, i32 1
  %120 = load i64, i64* %119, align 8
  %121 = load i64, i64* @ADDRESS_FAMILY_NO, align 8
  %122 = icmp ne i64 %120, %121
  br i1 %122, label %123, label %126

123:                                              ; preds = %117
  %124 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %125 = call i32 @log_link_debug(%struct.TYPE_20__* %124, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i64 0, i64 0))
  br label %126

126:                                              ; preds = %123, %117
  %127 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %128 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %127, i32 0, i32 2
  %129 = load i64, i64* %128, align 8
  %130 = icmp ne i64 %129, 0
  br i1 %130, label %131, label %134

131:                                              ; preds = %126
  %132 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %133 = call i32 @log_link_debug(%struct.TYPE_20__* %132, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.3, i64 0, i64 0))
  br label %134

134:                                              ; preds = %131, %126
  br label %135

135:                                              ; preds = %134, %101
  %136 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %137 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %138 = call i32 @network_apply(%struct.TYPE_19__* %136, %struct.TYPE_20__* %137)
  store i32 %138, i32* %5, align 4
  %139 = load i32, i32* %5, align 4
  %140 = icmp slt i32 %139, 0
  br i1 %140, label %141, label %143

141:                                              ; preds = %135
  %142 = load i32, i32* %5, align 4
  store i32 %142, i32* %2, align 4
  br label %166

143:                                              ; preds = %135
  br label %144

144:                                              ; preds = %143, %43
  %145 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %146 = call i32 @link_new_bound_to_list(%struct.TYPE_20__* %145)
  store i32 %146, i32* %5, align 4
  %147 = load i32, i32* %5, align 4
  %148 = icmp slt i32 %147, 0
  br i1 %148, label %149, label %151

149:                                              ; preds = %144
  %150 = load i32, i32* %5, align 4
  store i32 %150, i32* %2, align 4
  br label %166

151:                                              ; preds = %144
  %152 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %153 = call i32 @link_configure_duid(%struct.TYPE_20__* %152)
  store i32 %153, i32* %5, align 4
  %154 = load i32, i32* %5, align 4
  %155 = icmp sle i32 %154, 0
  br i1 %155, label %156, label %158

156:                                              ; preds = %151
  %157 = load i32, i32* %5, align 4
  store i32 %157, i32* %2, align 4
  br label %166

158:                                              ; preds = %151
  %159 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %160 = call i32 @link_configure(%struct.TYPE_20__* %159)
  store i32 %160, i32* %5, align 4
  %161 = load i32, i32* %5, align 4
  %162 = icmp slt i32 %161, 0
  br i1 %162, label %163, label %165

163:                                              ; preds = %158
  %164 = load i32, i32* %5, align 4
  store i32 %164, i32* %2, align 4
  br label %166

165:                                              ; preds = %158
  store i32 0, i32* %2, align 4
  br label %166

166:                                              ; preds = %165, %163, %156, %149, %141, %97, %91, %80, %53, %41, %34, %23
  %167 = load i32, i32* %2, align 4
  ret i32 %167
}

declare dso_local i32 @assert(%struct.TYPE_20__*) #1

declare dso_local i32 @IN_SET(i32, i32, i32) #1

declare dso_local i32 @log_link_debug(%struct.TYPE_20__*, i8*) #1

declare dso_local i32 @link_set_state(%struct.TYPE_20__*, i32) #1

declare dso_local i32 @link_new_bound_by_list(%struct.TYPE_20__*) #1

declare dso_local i32 @link_handle_bound_by_list(%struct.TYPE_20__*) #1

declare dso_local i32 @wifi_get_info(%struct.TYPE_20__*) #1

declare dso_local i32 @network_get(%struct.TYPE_20__*, i32, %struct.TYPE_20__*, i32*, i32, i32, i32*, %struct.TYPE_19__**) #1

declare dso_local i32 @link_enter_unmanaged(%struct.TYPE_20__*) #1

declare dso_local i32 @network_apply(%struct.TYPE_19__*, %struct.TYPE_20__*) #1

declare dso_local i32 @link_new_bound_to_list(%struct.TYPE_20__*) #1

declare dso_local i32 @link_configure_duid(%struct.TYPE_20__*) #1

declare dso_local i32 @link_configure(%struct.TYPE_20__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
