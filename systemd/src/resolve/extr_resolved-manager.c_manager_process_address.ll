; ModuleID = '/home/carl/AnghaBench/systemd/src/resolve/extr_resolved-manager.c_manager_process_address.c'
source_filename = "/home/carl/AnghaBench/systemd/src/resolve/extr_resolved-manager.c_manager_process_address.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32 }
%union.in_addr_union = type { i32 }

@IFA_LOCAL = common dso_local global i32 0, align 4
@IFA_ADDRESS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"Failed to process RTNL address message: %m\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_13__*, %struct.TYPE_13__*, i8*)* @manager_process_address to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @manager_process_address(%struct.TYPE_13__* %0, %struct.TYPE_13__* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_13__*, align 8
  %6 = alloca %struct.TYPE_13__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.TYPE_13__*, align 8
  %9 = alloca %union.in_addr_union, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %5, align 8
  store %struct.TYPE_13__* %1, %struct.TYPE_13__** %6, align 8
  store i8* %2, i8** %7, align 8
  %16 = load i8*, i8** %7, align 8
  %17 = bitcast i8* %16 to %struct.TYPE_13__*
  store %struct.TYPE_13__* %17, %struct.TYPE_13__** %8, align 8
  %18 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %19 = call i32 @assert(%struct.TYPE_13__* %18)
  %20 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %21 = call i32 @assert(%struct.TYPE_13__* %20)
  %22 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %23 = call i32 @assert(%struct.TYPE_13__* %22)
  %24 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %25 = call i32 @sd_netlink_message_get_type(%struct.TYPE_13__* %24, i32* %10)
  store i32 %25, i32* %11, align 4
  %26 = load i32, i32* %11, align 4
  %27 = icmp slt i32 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %3
  br label %118

29:                                               ; preds = %3
  %30 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %31 = call i32 @sd_rtnl_message_addr_get_ifindex(%struct.TYPE_13__* %30, i32* %12)
  store i32 %31, i32* %11, align 4
  %32 = load i32, i32* %11, align 4
  %33 = icmp slt i32 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %29
  br label %118

35:                                               ; preds = %29
  %36 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %37 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* %12, align 4
  %40 = call i32 @INT_TO_PTR(i32 %39)
  %41 = call i32* @hashmap_get(i32 %38, i32 %40)
  store i32* %41, i32** %15, align 8
  %42 = load i32*, i32** %15, align 8
  %43 = icmp ne i32* %42, null
  br i1 %43, label %45, label %44

44:                                               ; preds = %35
  store i32 0, i32* %4, align 4
  br label %121

45:                                               ; preds = %35
  %46 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %47 = call i32 @sd_rtnl_message_addr_get_family(%struct.TYPE_13__* %46, i32* %13)
  store i32 %47, i32* %11, align 4
  %48 = load i32, i32* %11, align 4
  %49 = icmp slt i32 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %45
  br label %118

51:                                               ; preds = %45
  %52 = load i32, i32* %13, align 4
  switch i32 %52, label %87 [
    i32 131, label %53
    i32 130, label %70
  ]

53:                                               ; preds = %51
  %54 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %55 = load i32, i32* @IFA_LOCAL, align 4
  %56 = bitcast %union.in_addr_union* %9 to i32*
  %57 = call i32 @sd_netlink_message_read_in_addr(%struct.TYPE_13__* %54, i32 %55, i32* %56)
  store i32 %57, i32* %11, align 4
  %58 = load i32, i32* %11, align 4
  %59 = icmp slt i32 %58, 0
  br i1 %59, label %60, label %69

60:                                               ; preds = %53
  %61 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %62 = load i32, i32* @IFA_ADDRESS, align 4
  %63 = bitcast %union.in_addr_union* %9 to i32*
  %64 = call i32 @sd_netlink_message_read_in_addr(%struct.TYPE_13__* %61, i32 %62, i32* %63)
  store i32 %64, i32* %11, align 4
  %65 = load i32, i32* %11, align 4
  %66 = icmp slt i32 %65, 0
  br i1 %66, label %67, label %68

67:                                               ; preds = %60
  br label %118

68:                                               ; preds = %60
  br label %69

69:                                               ; preds = %68, %53
  br label %88

70:                                               ; preds = %51
  %71 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %72 = load i32, i32* @IFA_LOCAL, align 4
  %73 = bitcast %union.in_addr_union* %9 to i32*
  %74 = call i32 @sd_netlink_message_read_in6_addr(%struct.TYPE_13__* %71, i32 %72, i32* %73)
  store i32 %74, i32* %11, align 4
  %75 = load i32, i32* %11, align 4
  %76 = icmp slt i32 %75, 0
  br i1 %76, label %77, label %86

77:                                               ; preds = %70
  %78 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %79 = load i32, i32* @IFA_ADDRESS, align 4
  %80 = bitcast %union.in_addr_union* %9 to i32*
  %81 = call i32 @sd_netlink_message_read_in6_addr(%struct.TYPE_13__* %78, i32 %79, i32* %80)
  store i32 %81, i32* %11, align 4
  %82 = load i32, i32* %11, align 4
  %83 = icmp slt i32 %82, 0
  br i1 %83, label %84, label %85

84:                                               ; preds = %77
  br label %118

85:                                               ; preds = %77
  br label %86

86:                                               ; preds = %85, %70
  br label %88

87:                                               ; preds = %51
  store i32 0, i32* %4, align 4
  br label %121

88:                                               ; preds = %86, %69
  %89 = load i32*, i32** %15, align 8
  %90 = load i32, i32* %13, align 4
  %91 = call i32* @link_find_address(i32* %89, i32 %90, %union.in_addr_union* %9)
  store i32* %91, i32** %14, align 8
  %92 = load i32, i32* %10, align 4
  switch i32 %92, label %117 [
    i32 128, label %93
    i32 129, label %114
  ]

93:                                               ; preds = %88
  %94 = load i32*, i32** %14, align 8
  %95 = icmp ne i32* %94, null
  br i1 %95, label %105, label %96

96:                                               ; preds = %93
  %97 = load i32*, i32** %15, align 8
  %98 = load i32, i32* %13, align 4
  %99 = call i32 @link_address_new(i32* %97, i32** %14, i32 %98, %union.in_addr_union* %9)
  store i32 %99, i32* %11, align 4
  %100 = load i32, i32* %11, align 4
  %101 = icmp slt i32 %100, 0
  br i1 %101, label %102, label %104

102:                                              ; preds = %96
  %103 = load i32, i32* %11, align 4
  store i32 %103, i32* %4, align 4
  br label %121

104:                                              ; preds = %96
  br label %105

105:                                              ; preds = %104, %93
  %106 = load i32*, i32** %14, align 8
  %107 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %108 = call i32 @link_address_update_rtnl(i32* %106, %struct.TYPE_13__* %107)
  store i32 %108, i32* %11, align 4
  %109 = load i32, i32* %11, align 4
  %110 = icmp slt i32 %109, 0
  br i1 %110, label %111, label %113

111:                                              ; preds = %105
  %112 = load i32, i32* %11, align 4
  store i32 %112, i32* %4, align 4
  br label %121

113:                                              ; preds = %105
  br label %117

114:                                              ; preds = %88
  %115 = load i32*, i32** %14, align 8
  %116 = call i32 @link_address_free(i32* %115)
  br label %117

117:                                              ; preds = %88, %114, %113
  store i32 0, i32* %4, align 4
  br label %121

118:                                              ; preds = %84, %67, %50, %34, %28
  %119 = load i32, i32* %11, align 4
  %120 = call i32 @log_warning_errno(i32 %119, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %4, align 4
  br label %121

121:                                              ; preds = %118, %117, %111, %102, %87, %44
  %122 = load i32, i32* %4, align 4
  ret i32 %122
}

declare dso_local i32 @assert(%struct.TYPE_13__*) #1

declare dso_local i32 @sd_netlink_message_get_type(%struct.TYPE_13__*, i32*) #1

declare dso_local i32 @sd_rtnl_message_addr_get_ifindex(%struct.TYPE_13__*, i32*) #1

declare dso_local i32* @hashmap_get(i32, i32) #1

declare dso_local i32 @INT_TO_PTR(i32) #1

declare dso_local i32 @sd_rtnl_message_addr_get_family(%struct.TYPE_13__*, i32*) #1

declare dso_local i32 @sd_netlink_message_read_in_addr(%struct.TYPE_13__*, i32, i32*) #1

declare dso_local i32 @sd_netlink_message_read_in6_addr(%struct.TYPE_13__*, i32, i32*) #1

declare dso_local i32* @link_find_address(i32*, i32, %union.in_addr_union*) #1

declare dso_local i32 @link_address_new(i32*, i32**, i32, %union.in_addr_union*) #1

declare dso_local i32 @link_address_update_rtnl(i32*, %struct.TYPE_13__*) #1

declare dso_local i32 @link_address_free(i32*) #1

declare dso_local i32 @log_warning_errno(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
