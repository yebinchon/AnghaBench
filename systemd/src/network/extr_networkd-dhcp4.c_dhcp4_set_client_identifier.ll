; ModuleID = '/home/carl/AnghaBench/systemd/src/network/extr_networkd-dhcp4.c_dhcp4_set_client_identifier.c'
source_filename = "/home/carl/AnghaBench/systemd/src/network/extr_networkd-dhcp4.c_dhcp4_set_client_identifier.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32, i32, %struct.TYPE_13__*, i32, %struct.TYPE_13__*, i32 }
%struct.TYPE_14__ = type { i32, i32*, i32, i32 }

@DUID_TYPE_LLT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"DHCP4 CLIENT: Failed to set IAID+DUID: %m\00", align 1
@.str.1 = private unnamed_addr constant [37 x i8] c"DHCP4 CLIENT: Failed to set DUID: %m\00", align 1
@ARPHRD_ETHER = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [42 x i8] c"DHCP4 CLIENT: Failed to set client ID: %m\00", align 1
@.str.3 = private unnamed_addr constant [32 x i8] c"Unknown client identifier type.\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dhcp4_set_client_identifier(%struct.TYPE_13__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_13__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_14__*, align 8
  %6 = alloca %struct.TYPE_14__*, align 8
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %3, align 8
  %7 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %8 = call i32 @assert(%struct.TYPE_13__* %7)
  %9 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %10 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %9, i32 0, i32 4
  %11 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %12 = call i32 @assert(%struct.TYPE_13__* %11)
  %13 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %13, i32 0, i32 2
  %15 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %16 = call i32 @assert(%struct.TYPE_13__* %15)
  %17 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %18 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %17, i32 0, i32 4
  %19 = load %struct.TYPE_13__*, %struct.TYPE_13__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  switch i32 %21, label %159 [
    i32 130, label %22
    i32 129, label %93
    i32 128, label %144
  ]

22:                                               ; preds = %1
  %23 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %24 = call %struct.TYPE_14__* @link_get_duid(%struct.TYPE_13__* %23)
  store %struct.TYPE_14__* %24, %struct.TYPE_14__** %5, align 8
  %25 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %26 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 8
  %28 = load i32, i32* @DUID_TYPE_LLT, align 4
  %29 = icmp eq i32 %27, %28
  br i1 %29, label %30, label %53

30:                                               ; preds = %22
  %31 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %32 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %53

35:                                               ; preds = %30
  %36 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %37 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %36, i32 0, i32 2
  %38 = load %struct.TYPE_13__*, %struct.TYPE_13__** %37, align 8
  %39 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %40 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %39, i32 0, i32 4
  %41 = load %struct.TYPE_13__*, %struct.TYPE_13__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %41, i32 0, i32 5
  %43 = load i32, i32* %42, align 8
  %44 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %45 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %44, i32 0, i32 4
  %46 = load %struct.TYPE_13__*, %struct.TYPE_13__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %46, i32 0, i32 3
  %48 = load i32, i32* %47, align 8
  %49 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %50 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %49, i32 0, i32 3
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @sd_dhcp_client_set_iaid_duid_llt(%struct.TYPE_13__* %38, i32 %43, i32 %48, i32 %51)
  store i32 %52, i32* %4, align 4
  br label %85

53:                                               ; preds = %30, %22
  %54 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %55 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %54, i32 0, i32 2
  %56 = load %struct.TYPE_13__*, %struct.TYPE_13__** %55, align 8
  %57 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %58 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %57, i32 0, i32 4
  %59 = load %struct.TYPE_13__*, %struct.TYPE_13__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %59, i32 0, i32 5
  %61 = load i32, i32* %60, align 8
  %62 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %63 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %62, i32 0, i32 4
  %64 = load %struct.TYPE_13__*, %struct.TYPE_13__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %64, i32 0, i32 3
  %66 = load i32, i32* %65, align 8
  %67 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %68 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %67, i32 0, i32 2
  %69 = load i32, i32* %68, align 8
  %70 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %71 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = icmp sgt i32 %72, 0
  br i1 %73, label %74, label %78

74:                                               ; preds = %53
  %75 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %76 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %75, i32 0, i32 1
  %77 = load i32*, i32** %76, align 8
  br label %79

78:                                               ; preds = %53
  br label %79

79:                                               ; preds = %78, %74
  %80 = phi i32* [ %77, %74 ], [ null, %78 ]
  %81 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %82 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = call i32 @sd_dhcp_client_set_iaid_duid(%struct.TYPE_13__* %56, i32 %61, i32 %66, i32 %69, i32* %80, i32 %83)
  store i32 %84, i32* %4, align 4
  br label %85

85:                                               ; preds = %79, %35
  %86 = load i32, i32* %4, align 4
  %87 = icmp slt i32 %86, 0
  br i1 %87, label %88, label %92

88:                                               ; preds = %85
  %89 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %90 = load i32, i32* %4, align 4
  %91 = call i32 @log_link_error_errno(%struct.TYPE_13__* %89, i32 %90, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0))
  store i32 %91, i32* %2, align 4
  br label %162

92:                                               ; preds = %85
  br label %161

93:                                               ; preds = %1
  %94 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %95 = call %struct.TYPE_14__* @link_get_duid(%struct.TYPE_13__* %94)
  store %struct.TYPE_14__* %95, %struct.TYPE_14__** %6, align 8
  %96 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %97 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %96, i32 0, i32 2
  %98 = load i32, i32* %97, align 8
  %99 = load i32, i32* @DUID_TYPE_LLT, align 4
  %100 = icmp eq i32 %98, %99
  br i1 %100, label %101, label %114

101:                                              ; preds = %93
  %102 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %103 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 8
  %105 = icmp eq i32 %104, 0
  br i1 %105, label %106, label %114

106:                                              ; preds = %101
  %107 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %108 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %107, i32 0, i32 2
  %109 = load %struct.TYPE_13__*, %struct.TYPE_13__** %108, align 8
  %110 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %111 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %110, i32 0, i32 3
  %112 = load i32, i32* %111, align 4
  %113 = call i32 @sd_dhcp_client_set_duid_llt(%struct.TYPE_13__* %109, i32 %112)
  store i32 %113, i32* %4, align 4
  br label %136

114:                                              ; preds = %101, %93
  %115 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %116 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %115, i32 0, i32 2
  %117 = load %struct.TYPE_13__*, %struct.TYPE_13__** %116, align 8
  %118 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %119 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %118, i32 0, i32 2
  %120 = load i32, i32* %119, align 8
  %121 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %122 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 8
  %124 = icmp sgt i32 %123, 0
  br i1 %124, label %125, label %129

125:                                              ; preds = %114
  %126 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %127 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %126, i32 0, i32 1
  %128 = load i32*, i32** %127, align 8
  br label %130

129:                                              ; preds = %114
  br label %130

130:                                              ; preds = %129, %125
  %131 = phi i32* [ %128, %125 ], [ null, %129 ]
  %132 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %133 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 8
  %135 = call i32 @sd_dhcp_client_set_duid(%struct.TYPE_13__* %117, i32 %120, i32* %131, i32 %134)
  store i32 %135, i32* %4, align 4
  br label %136

136:                                              ; preds = %130, %106
  %137 = load i32, i32* %4, align 4
  %138 = icmp slt i32 %137, 0
  br i1 %138, label %139, label %143

139:                                              ; preds = %136
  %140 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %141 = load i32, i32* %4, align 4
  %142 = call i32 @log_link_error_errno(%struct.TYPE_13__* %140, i32 %141, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0))
  store i32 %142, i32* %2, align 4
  br label %162

143:                                              ; preds = %136
  br label %161

144:                                              ; preds = %1
  %145 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %146 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %145, i32 0, i32 2
  %147 = load %struct.TYPE_13__*, %struct.TYPE_13__** %146, align 8
  %148 = load i32, i32* @ARPHRD_ETHER, align 4
  %149 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %150 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %149, i32 0, i32 1
  %151 = call i32 @sd_dhcp_client_set_client_id(%struct.TYPE_13__* %147, i32 %148, i32* %150, i32 4)
  store i32 %151, i32* %4, align 4
  %152 = load i32, i32* %4, align 4
  %153 = icmp slt i32 %152, 0
  br i1 %153, label %154, label %158

154:                                              ; preds = %144
  %155 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %156 = load i32, i32* %4, align 4
  %157 = call i32 @log_link_error_errno(%struct.TYPE_13__* %155, i32 %156, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.2, i64 0, i64 0))
  store i32 %157, i32* %2, align 4
  br label %162

158:                                              ; preds = %144
  br label %161

159:                                              ; preds = %1
  %160 = call i32 @assert_not_reached(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0))
  br label %161

161:                                              ; preds = %159, %158, %143, %92
  store i32 0, i32* %2, align 4
  br label %162

162:                                              ; preds = %161, %154, %139, %88
  %163 = load i32, i32* %2, align 4
  ret i32 %163
}

declare dso_local i32 @assert(%struct.TYPE_13__*) #1

declare dso_local %struct.TYPE_14__* @link_get_duid(%struct.TYPE_13__*) #1

declare dso_local i32 @sd_dhcp_client_set_iaid_duid_llt(%struct.TYPE_13__*, i32, i32, i32) #1

declare dso_local i32 @sd_dhcp_client_set_iaid_duid(%struct.TYPE_13__*, i32, i32, i32, i32*, i32) #1

declare dso_local i32 @log_link_error_errno(%struct.TYPE_13__*, i32, i8*) #1

declare dso_local i32 @sd_dhcp_client_set_duid_llt(%struct.TYPE_13__*, i32) #1

declare dso_local i32 @sd_dhcp_client_set_duid(%struct.TYPE_13__*, i32, i32*, i32) #1

declare dso_local i32 @sd_dhcp_client_set_client_id(%struct.TYPE_13__*, i32, i32*, i32) #1

declare dso_local i32 @assert_not_reached(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
