; ModuleID = '/home/carl/AnghaBench/systemd/src/network/netdev/extr_tunnel.c_netdev_vti_fill_message_create.c'
source_filename = "/home/carl/AnghaBench/systemd/src/network/netdev/extr_tunnel.c_netdev_vti_fill_message_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { i32 }
%struct.TYPE_16__ = type { i64, i64, i64, i64, i32, i32, i32, i64 }

@NETDEV_KIND_VTI = common dso_local global i64 0, align 8
@IFLA_VTI_LINK = common dso_local global i32 0, align 4
@LOOPBACK_IFINDEX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"Could not append IFLA_VTI_LINK attribute: %m\00", align 1
@IFLA_VTI_IKEY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [45 x i8] c"Could not append IFLA_VTI_IKEY attribute: %m\00", align 1
@IFLA_VTI_OKEY = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [45 x i8] c"Could not append IFLA_VTI_OKEY attribute: %m\00", align 1
@IFLA_VTI_LOCAL = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [46 x i8] c"Could not append IFLA_VTI_LOCAL attribute: %m\00", align 1
@IFLA_VTI_REMOTE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [47 x i8] c"Could not append IFLA_VTI_REMOTE attribute: %m\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_16__*, %struct.TYPE_17__*, %struct.TYPE_16__*)* @netdev_vti_fill_message_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @netdev_vti_fill_message_create(%struct.TYPE_16__* %0, %struct.TYPE_17__* %1, %struct.TYPE_16__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_16__*, align 8
  %6 = alloca %struct.TYPE_17__*, align 8
  %7 = alloca %struct.TYPE_16__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_16__*, align 8
  %11 = alloca i32, align 4
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %5, align 8
  store %struct.TYPE_17__* %1, %struct.TYPE_17__** %6, align 8
  store %struct.TYPE_16__* %2, %struct.TYPE_16__** %7, align 8
  %12 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %13 = call i32 @assert(%struct.TYPE_16__* %12)
  %14 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %15 = call i32 @assert(%struct.TYPE_16__* %14)
  %16 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %17 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @NETDEV_KIND_VTI, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %24

21:                                               ; preds = %3
  %22 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %23 = call %struct.TYPE_16__* @VTI(%struct.TYPE_16__* %22)
  store %struct.TYPE_16__* %23, %struct.TYPE_16__** %10, align 8
  br label %27

24:                                               ; preds = %3
  %25 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %26 = call %struct.TYPE_16__* @VTI6(%struct.TYPE_16__* %25)
  store %struct.TYPE_16__* %26, %struct.TYPE_16__** %10, align 8
  br label %27

27:                                               ; preds = %24, %21
  %28 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %29 = call i32 @assert(%struct.TYPE_16__* %28)
  %30 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %31 = icmp ne %struct.TYPE_17__* %30, null
  br i1 %31, label %37, label %32

32:                                               ; preds = %27
  %33 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %34 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %33, i32 0, i32 7
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %58

37:                                               ; preds = %32, %27
  %38 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %39 = load i32, i32* @IFLA_VTI_LINK, align 4
  %40 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %41 = icmp ne %struct.TYPE_17__* %40, null
  br i1 %41, label %42, label %46

42:                                               ; preds = %37
  %43 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %44 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  br label %48

46:                                               ; preds = %37
  %47 = load i32, i32* @LOOPBACK_IFINDEX, align 4
  br label %48

48:                                               ; preds = %46, %42
  %49 = phi i32 [ %45, %42 ], [ %47, %46 ]
  %50 = call i32 @sd_netlink_message_append_u32(%struct.TYPE_16__* %38, i32 %39, i32 %49)
  store i32 %50, i32* %11, align 4
  %51 = load i32, i32* %11, align 4
  %52 = icmp slt i32 %51, 0
  br i1 %52, label %53, label %57

53:                                               ; preds = %48
  %54 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %55 = load i32, i32* %11, align 4
  %56 = call i32 @log_netdev_error_errno(%struct.TYPE_16__* %54, i32 %55, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0))
  store i32 %56, i32* %4, align 4
  br label %131

57:                                               ; preds = %48
  br label %58

58:                                               ; preds = %57, %32
  %59 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %60 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %59, i32 0, i32 1
  %61 = load i64, i64* %60, align 8
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %68

63:                                               ; preds = %58
  %64 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %65 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %64, i32 0, i32 1
  %66 = load i64, i64* %65, align 8
  %67 = call i32 @htobe32(i64 %66)
  store i32 %67, i32* %9, align 4
  store i32 %67, i32* %8, align 4
  br label %77

68:                                               ; preds = %58
  %69 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %70 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %69, i32 0, i32 2
  %71 = load i64, i64* %70, align 8
  %72 = call i32 @htobe32(i64 %71)
  store i32 %72, i32* %8, align 4
  %73 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %74 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %73, i32 0, i32 3
  %75 = load i64, i64* %74, align 8
  %76 = call i32 @htobe32(i64 %75)
  store i32 %76, i32* %9, align 4
  br label %77

77:                                               ; preds = %68, %63
  %78 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %79 = load i32, i32* @IFLA_VTI_IKEY, align 4
  %80 = load i32, i32* %8, align 4
  %81 = call i32 @sd_netlink_message_append_u32(%struct.TYPE_16__* %78, i32 %79, i32 %80)
  store i32 %81, i32* %11, align 4
  %82 = load i32, i32* %11, align 4
  %83 = icmp slt i32 %82, 0
  br i1 %83, label %84, label %88

84:                                               ; preds = %77
  %85 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %86 = load i32, i32* %11, align 4
  %87 = call i32 @log_netdev_error_errno(%struct.TYPE_16__* %85, i32 %86, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0))
  store i32 %87, i32* %4, align 4
  br label %131

88:                                               ; preds = %77
  %89 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %90 = load i32, i32* @IFLA_VTI_OKEY, align 4
  %91 = load i32, i32* %9, align 4
  %92 = call i32 @sd_netlink_message_append_u32(%struct.TYPE_16__* %89, i32 %90, i32 %91)
  store i32 %92, i32* %11, align 4
  %93 = load i32, i32* %11, align 4
  %94 = icmp slt i32 %93, 0
  br i1 %94, label %95, label %99

95:                                               ; preds = %88
  %96 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %97 = load i32, i32* %11, align 4
  %98 = call i32 @log_netdev_error_errno(%struct.TYPE_16__* %96, i32 %97, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.2, i64 0, i64 0))
  store i32 %98, i32* %4, align 4
  br label %131

99:                                               ; preds = %88
  %100 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %101 = load i32, i32* @IFLA_VTI_LOCAL, align 4
  %102 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %103 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %102, i32 0, i32 5
  %104 = load i32, i32* %103, align 4
  %105 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %106 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %105, i32 0, i32 6
  %107 = call i32 @netlink_message_append_in_addr_union(%struct.TYPE_16__* %100, i32 %101, i32 %104, i32* %106)
  store i32 %107, i32* %11, align 4
  %108 = load i32, i32* %11, align 4
  %109 = icmp slt i32 %108, 0
  br i1 %109, label %110, label %114

110:                                              ; preds = %99
  %111 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %112 = load i32, i32* %11, align 4
  %113 = call i32 @log_netdev_error_errno(%struct.TYPE_16__* %111, i32 %112, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.3, i64 0, i64 0))
  store i32 %113, i32* %4, align 4
  br label %131

114:                                              ; preds = %99
  %115 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %116 = load i32, i32* @IFLA_VTI_REMOTE, align 4
  %117 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %118 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %117, i32 0, i32 5
  %119 = load i32, i32* %118, align 4
  %120 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %121 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %120, i32 0, i32 4
  %122 = call i32 @netlink_message_append_in_addr_union(%struct.TYPE_16__* %115, i32 %116, i32 %119, i32* %121)
  store i32 %122, i32* %11, align 4
  %123 = load i32, i32* %11, align 4
  %124 = icmp slt i32 %123, 0
  br i1 %124, label %125, label %129

125:                                              ; preds = %114
  %126 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %127 = load i32, i32* %11, align 4
  %128 = call i32 @log_netdev_error_errno(%struct.TYPE_16__* %126, i32 %127, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.4, i64 0, i64 0))
  store i32 %128, i32* %4, align 4
  br label %131

129:                                              ; preds = %114
  %130 = load i32, i32* %11, align 4
  store i32 %130, i32* %4, align 4
  br label %131

131:                                              ; preds = %129, %125, %110, %95, %84, %53
  %132 = load i32, i32* %4, align 4
  ret i32 %132
}

declare dso_local i32 @assert(%struct.TYPE_16__*) #1

declare dso_local %struct.TYPE_16__* @VTI(%struct.TYPE_16__*) #1

declare dso_local %struct.TYPE_16__* @VTI6(%struct.TYPE_16__*) #1

declare dso_local i32 @sd_netlink_message_append_u32(%struct.TYPE_16__*, i32, i32) #1

declare dso_local i32 @log_netdev_error_errno(%struct.TYPE_16__*, i32, i8*) #1

declare dso_local i32 @htobe32(i64) #1

declare dso_local i32 @netlink_message_append_in_addr_union(%struct.TYPE_16__*, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
