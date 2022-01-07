; ModuleID = '/home/carl/AnghaBench/systemd/src/network/extr_networkd-link.c_link_joined.c'
source_filename = "/home/carl/AnghaBench/systemd/src/network/extr_networkd-link.c_link_joined.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i32, i32, %struct.TYPE_15__*, i32, i64, i64, i64, i32 }

@IFF_UP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"Could not set bridge message: %m\00", align 1
@.str.1 = private unnamed_addr constant [48 x i8] c"Failed to add to bridge master's slave list: %m\00", align 1
@.str.2 = private unnamed_addr constant [31 x i8] c"Could not set bond message: %m\00", align 1
@.str.3 = private unnamed_addr constant [46 x i8] c"Failed to add to bond master's slave list: %m\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"bridge\00", align 1
@.str.5 = private unnamed_addr constant [30 x i8] c"Could not set bridge vlan: %m\00", align 1
@LINK_STATE_CONFIGURING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_15__*)* @link_joined to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @link_joined(%struct.TYPE_15__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_15__*, align 8
  %4 = alloca i32, align 4
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %3, align 8
  %5 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %6 = call i32 @assert(%struct.TYPE_15__* %5)
  %7 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %8 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %7, i32 0, i32 2
  %9 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %10 = call i32 @assert(%struct.TYPE_15__* %9)
  %11 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %12 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %11, i32 0, i32 7
  %13 = load i32, i32* %12, align 8
  %14 = call i32 @hashmap_isempty(i32 %13)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %24, label %16

16:                                               ; preds = %1
  %17 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %18 = call i32 @link_handle_bound_to_list(%struct.TYPE_15__* %17)
  store i32 %18, i32* %4, align 4
  %19 = load i32, i32* %4, align 4
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %16
  %22 = load i32, i32* %4, align 4
  store i32 %22, i32* %2, align 4
  br label %152

23:                                               ; preds = %16
  br label %42

24:                                               ; preds = %1
  %25 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %26 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = load i32, i32* @IFF_UP, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %41, label %31

31:                                               ; preds = %24
  %32 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %33 = call i32 @link_up(%struct.TYPE_15__* %32)
  store i32 %33, i32* %4, align 4
  %34 = load i32, i32* %4, align 4
  %35 = icmp slt i32 %34, 0
  br i1 %35, label %36, label %40

36:                                               ; preds = %31
  %37 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %38 = call i32 @link_enter_failed(%struct.TYPE_15__* %37)
  %39 = load i32, i32* %4, align 4
  store i32 %39, i32* %2, align 4
  br label %152

40:                                               ; preds = %31
  br label %41

41:                                               ; preds = %40, %24
  br label %42

42:                                               ; preds = %41, %23
  %43 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %44 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %43, i32 0, i32 2
  %45 = load %struct.TYPE_15__*, %struct.TYPE_15__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %45, i32 0, i32 4
  %47 = load i64, i64* %46, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %73

49:                                               ; preds = %42
  %50 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %51 = call i32 @link_set_bridge(%struct.TYPE_15__* %50)
  store i32 %51, i32* %4, align 4
  %52 = load i32, i32* %4, align 4
  %53 = icmp slt i32 %52, 0
  br i1 %53, label %54, label %58

54:                                               ; preds = %49
  %55 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %56 = load i32, i32* %4, align 4
  %57 = call i32 @log_link_error_errno(%struct.TYPE_15__* %55, i32 %56, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  br label %58

58:                                               ; preds = %54, %49
  %59 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %60 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %61 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %60, i32 0, i32 2
  %62 = load %struct.TYPE_15__*, %struct.TYPE_15__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %62, i32 0, i32 4
  %64 = load i64, i64* %63, align 8
  %65 = call i32 @link_append_to_master(%struct.TYPE_15__* %59, i64 %64)
  store i32 %65, i32* %4, align 4
  %66 = load i32, i32* %4, align 4
  %67 = icmp slt i32 %66, 0
  br i1 %67, label %68, label %72

68:                                               ; preds = %58
  %69 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %70 = load i32, i32* %4, align 4
  %71 = call i32 @log_link_error_errno(%struct.TYPE_15__* %69, i32 %70, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.1, i64 0, i64 0))
  br label %72

72:                                               ; preds = %68, %58
  br label %73

73:                                               ; preds = %72, %42
  %74 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %75 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %74, i32 0, i32 2
  %76 = load %struct.TYPE_15__*, %struct.TYPE_15__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %76, i32 0, i32 6
  %78 = load i64, i64* %77, align 8
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %104

80:                                               ; preds = %73
  %81 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %82 = call i32 @link_set_bond(%struct.TYPE_15__* %81)
  store i32 %82, i32* %4, align 4
  %83 = load i32, i32* %4, align 4
  %84 = icmp slt i32 %83, 0
  br i1 %84, label %85, label %89

85:                                               ; preds = %80
  %86 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %87 = load i32, i32* %4, align 4
  %88 = call i32 @log_link_error_errno(%struct.TYPE_15__* %86, i32 %87, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0))
  br label %89

89:                                               ; preds = %85, %80
  %90 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %91 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %92 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %91, i32 0, i32 2
  %93 = load %struct.TYPE_15__*, %struct.TYPE_15__** %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %93, i32 0, i32 6
  %95 = load i64, i64* %94, align 8
  %96 = call i32 @link_append_to_master(%struct.TYPE_15__* %90, i64 %95)
  store i32 %96, i32* %4, align 4
  %97 = load i32, i32* %4, align 4
  %98 = icmp slt i32 %97, 0
  br i1 %98, label %99, label %103

99:                                               ; preds = %89
  %100 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %101 = load i32, i32* %4, align 4
  %102 = call i32 @log_link_error_errno(%struct.TYPE_15__* %100, i32 %101, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.3, i64 0, i64 0))
  br label %103

103:                                              ; preds = %99, %89
  br label %104

104:                                              ; preds = %103, %73
  %105 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %106 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %105, i32 0, i32 2
  %107 = load %struct.TYPE_15__*, %struct.TYPE_15__** %106, align 8
  %108 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %107, i32 0, i32 5
  %109 = load i64, i64* %108, align 8
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %111, label %134

111:                                              ; preds = %104
  %112 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %113 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %112, i32 0, i32 2
  %114 = load %struct.TYPE_15__*, %struct.TYPE_15__** %113, align 8
  %115 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %114, i32 0, i32 4
  %116 = load i64, i64* %115, align 8
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %124, label %118

118:                                              ; preds = %111
  %119 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %120 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %119, i32 0, i32 3
  %121 = load i32, i32* %120, align 8
  %122 = call i64 @streq_ptr(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0), i32 %121)
  %123 = icmp ne i64 %122, 0
  br i1 %123, label %124, label %134

124:                                              ; preds = %118, %111
  %125 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %126 = call i32 @link_set_bridge_vlan(%struct.TYPE_15__* %125)
  store i32 %126, i32* %4, align 4
  %127 = load i32, i32* %4, align 4
  %128 = icmp slt i32 %127, 0
  br i1 %128, label %129, label %133

129:                                              ; preds = %124
  %130 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %131 = load i32, i32* %4, align 4
  %132 = call i32 @log_link_error_errno(%struct.TYPE_15__* %130, i32 %131, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.5, i64 0, i64 0))
  br label %133

133:                                              ; preds = %129, %124
  br label %134

134:                                              ; preds = %133, %118, %104
  %135 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %136 = call i32 @link_has_carrier(%struct.TYPE_15__* %135)
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %146, label %138

138:                                              ; preds = %134
  %139 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %140 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %139, i32 0, i32 2
  %141 = load %struct.TYPE_15__*, %struct.TYPE_15__** %140, align 8
  %142 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %141, i32 0, i32 1
  %143 = load i32, i32* %142, align 4
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %146, label %145

145:                                              ; preds = %138
  store i32 0, i32* %2, align 4
  br label %152

146:                                              ; preds = %138, %134
  %147 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %148 = load i32, i32* @LINK_STATE_CONFIGURING, align 4
  %149 = call i32 @link_set_state(%struct.TYPE_15__* %147, i32 %148)
  %150 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %151 = call i32 @link_request_set_addresses(%struct.TYPE_15__* %150)
  store i32 %151, i32* %2, align 4
  br label %152

152:                                              ; preds = %146, %145, %36, %21
  %153 = load i32, i32* %2, align 4
  ret i32 %153
}

declare dso_local i32 @assert(%struct.TYPE_15__*) #1

declare dso_local i32 @hashmap_isempty(i32) #1

declare dso_local i32 @link_handle_bound_to_list(%struct.TYPE_15__*) #1

declare dso_local i32 @link_up(%struct.TYPE_15__*) #1

declare dso_local i32 @link_enter_failed(%struct.TYPE_15__*) #1

declare dso_local i32 @link_set_bridge(%struct.TYPE_15__*) #1

declare dso_local i32 @log_link_error_errno(%struct.TYPE_15__*, i32, i8*) #1

declare dso_local i32 @link_append_to_master(%struct.TYPE_15__*, i64) #1

declare dso_local i32 @link_set_bond(%struct.TYPE_15__*) #1

declare dso_local i64 @streq_ptr(i8*, i32) #1

declare dso_local i32 @link_set_bridge_vlan(%struct.TYPE_15__*) #1

declare dso_local i32 @link_has_carrier(%struct.TYPE_15__*) #1

declare dso_local i32 @link_set_state(%struct.TYPE_15__*, i32) #1

declare dso_local i32 @link_request_set_addresses(%struct.TYPE_15__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
