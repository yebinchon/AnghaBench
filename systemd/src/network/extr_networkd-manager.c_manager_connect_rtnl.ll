; ModuleID = '/home/carl/AnghaBench/systemd/src/network/extr_networkd-manager.c_manager_connect_rtnl.c'
source_filename = "/home/carl/AnghaBench/systemd/src/network/extr_networkd-manager.c_manager_connect_rtnl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32 }

@RCVBUF_SIZE = common dso_local global i32 0, align 4
@RTM_NEWLINK = common dso_local global i32 0, align 4
@manager_rtnl_process_link = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"network-rtnl_process_link\00", align 1
@RTM_DELLINK = common dso_local global i32 0, align 4
@RTM_NEWADDR = common dso_local global i32 0, align 4
@manager_rtnl_process_address = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"network-rtnl_process_address\00", align 1
@RTM_DELADDR = common dso_local global i32 0, align 4
@RTM_NEWNEIGH = common dso_local global i32 0, align 4
@manager_rtnl_process_neighbor = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [30 x i8] c"network-rtnl_process_neighbor\00", align 1
@RTM_DELNEIGH = common dso_local global i32 0, align 4
@RTM_NEWROUTE = common dso_local global i32 0, align 4
@manager_rtnl_process_route = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [27 x i8] c"network-rtnl_process_route\00", align 1
@RTM_DELROUTE = common dso_local global i32 0, align 4
@RTM_NEWRULE = common dso_local global i32 0, align 4
@manager_rtnl_process_rule = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [26 x i8] c"network-rtnl_process_rule\00", align 1
@RTM_DELRULE = common dso_local global i32 0, align 4
@RTM_NEWNEXTHOP = common dso_local global i32 0, align 4
@manager_rtnl_process_nexthop = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [29 x i8] c"network-rtnl_process_nexthop\00", align 1
@RTM_DELNEXTHOP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_5__*)* @manager_connect_rtnl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @manager_connect_rtnl(%struct.TYPE_5__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_5__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %3, align 8
  %6 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %7 = call i32 @assert(%struct.TYPE_5__* %6)
  %8 = call i32 (...) @systemd_netlink_fd()
  store i32 %8, i32* %4, align 4
  %9 = load i32, i32* %4, align 4
  %10 = icmp slt i32 %9, 0
  br i1 %10, label %11, label %15

11:                                               ; preds = %1
  %12 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 0
  %14 = call i32 @sd_netlink_open(i32* %13)
  store i32 %14, i32* %5, align 4
  br label %20

15:                                               ; preds = %1
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 0
  %18 = load i32, i32* %4, align 4
  %19 = call i32 @sd_netlink_open_fd(i32* %17, i32 %18)
  store i32 %19, i32* %5, align 4
  br label %20

20:                                               ; preds = %15, %11
  %21 = load i32, i32* %5, align 4
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %20
  %24 = load i32, i32* %5, align 4
  store i32 %24, i32* %2, align 4
  br label %180

25:                                               ; preds = %20
  %26 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @RCVBUF_SIZE, align 4
  %30 = call i32 @sd_netlink_inc_rcvbuf(i32 %28, i32 %29)
  store i32 %30, i32* %5, align 4
  %31 = load i32, i32* %5, align 4
  %32 = icmp slt i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %25
  %34 = load i32, i32* %5, align 4
  store i32 %34, i32* %2, align 4
  br label %180

35:                                               ; preds = %25
  %36 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @sd_netlink_attach_event(i32 %38, i32 %41, i32 0)
  store i32 %42, i32* %5, align 4
  %43 = load i32, i32* %5, align 4
  %44 = icmp slt i32 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %35
  %46 = load i32, i32* %5, align 4
  store i32 %46, i32* %2, align 4
  br label %180

47:                                               ; preds = %35
  %48 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* @RTM_NEWLINK, align 4
  %52 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %53 = call i32 @sd_netlink_add_match(i32 %50, i32* null, i32 %51, i32* @manager_rtnl_process_link, i32* null, %struct.TYPE_5__* %52, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  store i32 %53, i32* %5, align 4
  %54 = load i32, i32* %5, align 4
  %55 = icmp slt i32 %54, 0
  br i1 %55, label %56, label %58

56:                                               ; preds = %47
  %57 = load i32, i32* %5, align 4
  store i32 %57, i32* %2, align 4
  br label %180

58:                                               ; preds = %47
  %59 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %60 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* @RTM_DELLINK, align 4
  %63 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %64 = call i32 @sd_netlink_add_match(i32 %61, i32* null, i32 %62, i32* @manager_rtnl_process_link, i32* null, %struct.TYPE_5__* %63, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  store i32 %64, i32* %5, align 4
  %65 = load i32, i32* %5, align 4
  %66 = icmp slt i32 %65, 0
  br i1 %66, label %67, label %69

67:                                               ; preds = %58
  %68 = load i32, i32* %5, align 4
  store i32 %68, i32* %2, align 4
  br label %180

69:                                               ; preds = %58
  %70 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %71 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = load i32, i32* @RTM_NEWADDR, align 4
  %74 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %75 = call i32 @sd_netlink_add_match(i32 %72, i32* null, i32 %73, i32* @manager_rtnl_process_address, i32* null, %struct.TYPE_5__* %74, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  store i32 %75, i32* %5, align 4
  %76 = load i32, i32* %5, align 4
  %77 = icmp slt i32 %76, 0
  br i1 %77, label %78, label %80

78:                                               ; preds = %69
  %79 = load i32, i32* %5, align 4
  store i32 %79, i32* %2, align 4
  br label %180

80:                                               ; preds = %69
  %81 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %82 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = load i32, i32* @RTM_DELADDR, align 4
  %85 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %86 = call i32 @sd_netlink_add_match(i32 %83, i32* null, i32 %84, i32* @manager_rtnl_process_address, i32* null, %struct.TYPE_5__* %85, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  store i32 %86, i32* %5, align 4
  %87 = load i32, i32* %5, align 4
  %88 = icmp slt i32 %87, 0
  br i1 %88, label %89, label %91

89:                                               ; preds = %80
  %90 = load i32, i32* %5, align 4
  store i32 %90, i32* %2, align 4
  br label %180

91:                                               ; preds = %80
  %92 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %93 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = load i32, i32* @RTM_NEWNEIGH, align 4
  %96 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %97 = call i32 @sd_netlink_add_match(i32 %94, i32* null, i32 %95, i32* @manager_rtnl_process_neighbor, i32* null, %struct.TYPE_5__* %96, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0))
  store i32 %97, i32* %5, align 4
  %98 = load i32, i32* %5, align 4
  %99 = icmp slt i32 %98, 0
  br i1 %99, label %100, label %102

100:                                              ; preds = %91
  %101 = load i32, i32* %5, align 4
  store i32 %101, i32* %2, align 4
  br label %180

102:                                              ; preds = %91
  %103 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %104 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = load i32, i32* @RTM_DELNEIGH, align 4
  %107 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %108 = call i32 @sd_netlink_add_match(i32 %105, i32* null, i32 %106, i32* @manager_rtnl_process_neighbor, i32* null, %struct.TYPE_5__* %107, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0))
  store i32 %108, i32* %5, align 4
  %109 = load i32, i32* %5, align 4
  %110 = icmp slt i32 %109, 0
  br i1 %110, label %111, label %113

111:                                              ; preds = %102
  %112 = load i32, i32* %5, align 4
  store i32 %112, i32* %2, align 4
  br label %180

113:                                              ; preds = %102
  %114 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %115 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 4
  %117 = load i32, i32* @RTM_NEWROUTE, align 4
  %118 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %119 = call i32 @sd_netlink_add_match(i32 %116, i32* null, i32 %117, i32* @manager_rtnl_process_route, i32* null, %struct.TYPE_5__* %118, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0))
  store i32 %119, i32* %5, align 4
  %120 = load i32, i32* %5, align 4
  %121 = icmp slt i32 %120, 0
  br i1 %121, label %122, label %124

122:                                              ; preds = %113
  %123 = load i32, i32* %5, align 4
  store i32 %123, i32* %2, align 4
  br label %180

124:                                              ; preds = %113
  %125 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %126 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 4
  %128 = load i32, i32* @RTM_DELROUTE, align 4
  %129 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %130 = call i32 @sd_netlink_add_match(i32 %127, i32* null, i32 %128, i32* @manager_rtnl_process_route, i32* null, %struct.TYPE_5__* %129, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0))
  store i32 %130, i32* %5, align 4
  %131 = load i32, i32* %5, align 4
  %132 = icmp slt i32 %131, 0
  br i1 %132, label %133, label %135

133:                                              ; preds = %124
  %134 = load i32, i32* %5, align 4
  store i32 %134, i32* %2, align 4
  br label %180

135:                                              ; preds = %124
  %136 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %137 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 4
  %139 = load i32, i32* @RTM_NEWRULE, align 4
  %140 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %141 = call i32 @sd_netlink_add_match(i32 %138, i32* null, i32 %139, i32* @manager_rtnl_process_rule, i32* null, %struct.TYPE_5__* %140, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0))
  store i32 %141, i32* %5, align 4
  %142 = load i32, i32* %5, align 4
  %143 = icmp slt i32 %142, 0
  br i1 %143, label %144, label %146

144:                                              ; preds = %135
  %145 = load i32, i32* %5, align 4
  store i32 %145, i32* %2, align 4
  br label %180

146:                                              ; preds = %135
  %147 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %148 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %147, i32 0, i32 0
  %149 = load i32, i32* %148, align 4
  %150 = load i32, i32* @RTM_DELRULE, align 4
  %151 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %152 = call i32 @sd_netlink_add_match(i32 %149, i32* null, i32 %150, i32* @manager_rtnl_process_rule, i32* null, %struct.TYPE_5__* %151, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0))
  store i32 %152, i32* %5, align 4
  %153 = load i32, i32* %5, align 4
  %154 = icmp slt i32 %153, 0
  br i1 %154, label %155, label %157

155:                                              ; preds = %146
  %156 = load i32, i32* %5, align 4
  store i32 %156, i32* %2, align 4
  br label %180

157:                                              ; preds = %146
  %158 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %159 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %158, i32 0, i32 0
  %160 = load i32, i32* %159, align 4
  %161 = load i32, i32* @RTM_NEWNEXTHOP, align 4
  %162 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %163 = call i32 @sd_netlink_add_match(i32 %160, i32* null, i32 %161, i32* @manager_rtnl_process_nexthop, i32* null, %struct.TYPE_5__* %162, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.5, i64 0, i64 0))
  store i32 %163, i32* %5, align 4
  %164 = load i32, i32* %5, align 4
  %165 = icmp slt i32 %164, 0
  br i1 %165, label %166, label %168

166:                                              ; preds = %157
  %167 = load i32, i32* %5, align 4
  store i32 %167, i32* %2, align 4
  br label %180

168:                                              ; preds = %157
  %169 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %170 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %169, i32 0, i32 0
  %171 = load i32, i32* %170, align 4
  %172 = load i32, i32* @RTM_DELNEXTHOP, align 4
  %173 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %174 = call i32 @sd_netlink_add_match(i32 %171, i32* null, i32 %172, i32* @manager_rtnl_process_nexthop, i32* null, %struct.TYPE_5__* %173, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.5, i64 0, i64 0))
  store i32 %174, i32* %5, align 4
  %175 = load i32, i32* %5, align 4
  %176 = icmp slt i32 %175, 0
  br i1 %176, label %177, label %179

177:                                              ; preds = %168
  %178 = load i32, i32* %5, align 4
  store i32 %178, i32* %2, align 4
  br label %180

179:                                              ; preds = %168
  store i32 0, i32* %2, align 4
  br label %180

180:                                              ; preds = %179, %177, %166, %155, %144, %133, %122, %111, %100, %89, %78, %67, %56, %45, %33, %23
  %181 = load i32, i32* %2, align 4
  ret i32 %181
}

declare dso_local i32 @assert(%struct.TYPE_5__*) #1

declare dso_local i32 @systemd_netlink_fd(...) #1

declare dso_local i32 @sd_netlink_open(i32*) #1

declare dso_local i32 @sd_netlink_open_fd(i32*, i32) #1

declare dso_local i32 @sd_netlink_inc_rcvbuf(i32, i32) #1

declare dso_local i32 @sd_netlink_attach_event(i32, i32, i32) #1

declare dso_local i32 @sd_netlink_add_match(i32, i32*, i32, i32*, i32*, %struct.TYPE_5__*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
