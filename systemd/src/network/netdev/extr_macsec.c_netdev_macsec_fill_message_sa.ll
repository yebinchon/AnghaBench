; ModuleID = '/home/carl/AnghaBench/systemd/src/network/netdev/extr_macsec.c_netdev_macsec_fill_message_sa.c'
source_filename = "/home/carl/AnghaBench/systemd/src/network/netdev/extr_macsec.c_netdev_macsec_fill_message_sa.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i64, i64, i64, i64, i32, i32 }

@MACSEC_ATTR_SA_CONFIG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [53 x i8] c"Could not append MACSEC_ATTR_SA_CONFIG attribute: %m\00", align 1
@MACSEC_SA_ATTR_AN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [49 x i8] c"Could not append MACSEC_SA_ATTR_AN attribute: %m\00", align 1
@MACSEC_SA_ATTR_PN = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [49 x i8] c"Could not append MACSEC_SA_ATTR_PN attribute: %m\00", align 1
@MACSEC_SA_ATTR_KEYID = common dso_local global i32 0, align 4
@MACSEC_KEYID_LEN = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [52 x i8] c"Could not append MACSEC_SA_ATTR_KEYID attribute: %m\00", align 1
@MACSEC_SA_ATTR_KEY = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [50 x i8] c"Could not append MACSEC_SA_ATTR_KEY attribute: %m\00", align 1
@MACSEC_SA_ATTR_ACTIVE = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [53 x i8] c"Could not append MACSEC_SA_ATTR_ACTIVE attribute: %m\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_14__*, %struct.TYPE_14__*, %struct.TYPE_14__*)* @netdev_macsec_fill_message_sa to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @netdev_macsec_fill_message_sa(%struct.TYPE_14__* %0, %struct.TYPE_14__* %1, %struct.TYPE_14__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_14__*, align 8
  %6 = alloca %struct.TYPE_14__*, align 8
  %7 = alloca %struct.TYPE_14__*, align 8
  %8 = alloca i32, align 4
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %5, align 8
  store %struct.TYPE_14__* %1, %struct.TYPE_14__** %6, align 8
  store %struct.TYPE_14__* %2, %struct.TYPE_14__** %7, align 8
  %9 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %10 = call i32 @assert(%struct.TYPE_14__* %9)
  %11 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %12 = call i32 @assert(%struct.TYPE_14__* %11)
  %13 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %14 = call i32 @assert(%struct.TYPE_14__* %13)
  %15 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %16 = load i32, i32* @MACSEC_ATTR_SA_CONFIG, align 4
  %17 = call i32 @sd_netlink_message_open_container(%struct.TYPE_14__* %15, i32 %16)
  store i32 %17, i32* %8, align 4
  %18 = load i32, i32* %8, align 4
  %19 = icmp slt i32 %18, 0
  br i1 %19, label %20, label %24

20:                                               ; preds = %3
  %21 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %22 = load i32, i32* %8, align 4
  %23 = call i32 @log_netdev_error_errno(%struct.TYPE_14__* %21, i32 %22, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str, i64 0, i64 0))
  store i32 %23, i32* %4, align 4
  br label %121

24:                                               ; preds = %3
  %25 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %26 = load i32, i32* @MACSEC_SA_ATTR_AN, align 4
  %27 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %28 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = call i32 @sd_netlink_message_append_u8(%struct.TYPE_14__* %25, i32 %26, i64 %29)
  store i32 %30, i32* %8, align 4
  %31 = load i32, i32* %8, align 4
  %32 = icmp slt i32 %31, 0
  br i1 %32, label %33, label %37

33:                                               ; preds = %24
  %34 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %35 = load i32, i32* %8, align 4
  %36 = call i32 @log_netdev_error_errno(%struct.TYPE_14__* %34, i32 %35, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.1, i64 0, i64 0))
  store i32 %36, i32* %4, align 4
  br label %121

37:                                               ; preds = %24
  %38 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %39 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = icmp sgt i64 %40, 0
  br i1 %41, label %42, label %56

42:                                               ; preds = %37
  %43 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %44 = load i32, i32* @MACSEC_SA_ATTR_PN, align 4
  %45 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %46 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = call i32 @sd_netlink_message_append_u32(%struct.TYPE_14__* %43, i32 %44, i64 %47)
  store i32 %48, i32* %8, align 4
  %49 = load i32, i32* %8, align 4
  %50 = icmp slt i32 %49, 0
  br i1 %50, label %51, label %55

51:                                               ; preds = %42
  %52 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %53 = load i32, i32* %8, align 4
  %54 = call i32 @log_netdev_error_errno(%struct.TYPE_14__* %52, i32 %53, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.2, i64 0, i64 0))
  store i32 %54, i32* %4, align 4
  br label %121

55:                                               ; preds = %42
  br label %56

56:                                               ; preds = %55, %37
  %57 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %58 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %57, i32 0, i32 2
  %59 = load i64, i64* %58, align 8
  %60 = icmp sgt i64 %59, 0
  br i1 %60, label %61, label %92

61:                                               ; preds = %56
  %62 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %63 = load i32, i32* @MACSEC_SA_ATTR_KEYID, align 4
  %64 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %65 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %64, i32 0, i32 5
  %66 = load i32, i32* %65, align 4
  %67 = load i64, i64* @MACSEC_KEYID_LEN, align 8
  %68 = call i32 @sd_netlink_message_append_data(%struct.TYPE_14__* %62, i32 %63, i32 %66, i64 %67)
  store i32 %68, i32* %8, align 4
  %69 = load i32, i32* %8, align 4
  %70 = icmp slt i32 %69, 0
  br i1 %70, label %71, label %75

71:                                               ; preds = %61
  %72 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %73 = load i32, i32* %8, align 4
  %74 = call i32 @log_netdev_error_errno(%struct.TYPE_14__* %72, i32 %73, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.3, i64 0, i64 0))
  store i32 %74, i32* %4, align 4
  br label %121

75:                                               ; preds = %61
  %76 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %77 = load i32, i32* @MACSEC_SA_ATTR_KEY, align 4
  %78 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %79 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %78, i32 0, i32 4
  %80 = load i32, i32* %79, align 8
  %81 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %82 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %81, i32 0, i32 2
  %83 = load i64, i64* %82, align 8
  %84 = call i32 @sd_netlink_message_append_data(%struct.TYPE_14__* %76, i32 %77, i32 %80, i64 %83)
  store i32 %84, i32* %8, align 4
  %85 = load i32, i32* %8, align 4
  %86 = icmp slt i32 %85, 0
  br i1 %86, label %87, label %91

87:                                               ; preds = %75
  %88 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %89 = load i32, i32* %8, align 4
  %90 = call i32 @log_netdev_error_errno(%struct.TYPE_14__* %88, i32 %89, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.4, i64 0, i64 0))
  store i32 %90, i32* %4, align 4
  br label %121

91:                                               ; preds = %75
  br label %92

92:                                               ; preds = %91, %56
  %93 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %94 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %93, i32 0, i32 3
  %95 = load i64, i64* %94, align 8
  %96 = icmp sge i64 %95, 0
  br i1 %96, label %97, label %111

97:                                               ; preds = %92
  %98 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %99 = load i32, i32* @MACSEC_SA_ATTR_ACTIVE, align 4
  %100 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %101 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %100, i32 0, i32 3
  %102 = load i64, i64* %101, align 8
  %103 = call i32 @sd_netlink_message_append_u8(%struct.TYPE_14__* %98, i32 %99, i64 %102)
  store i32 %103, i32* %8, align 4
  %104 = load i32, i32* %8, align 4
  %105 = icmp slt i32 %104, 0
  br i1 %105, label %106, label %110

106:                                              ; preds = %97
  %107 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %108 = load i32, i32* %8, align 4
  %109 = call i32 @log_netdev_error_errno(%struct.TYPE_14__* %107, i32 %108, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.5, i64 0, i64 0))
  store i32 %109, i32* %4, align 4
  br label %121

110:                                              ; preds = %97
  br label %111

111:                                              ; preds = %110, %92
  %112 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %113 = call i32 @sd_netlink_message_close_container(%struct.TYPE_14__* %112)
  store i32 %113, i32* %8, align 4
  %114 = load i32, i32* %8, align 4
  %115 = icmp slt i32 %114, 0
  br i1 %115, label %116, label %120

116:                                              ; preds = %111
  %117 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %118 = load i32, i32* %8, align 4
  %119 = call i32 @log_netdev_error_errno(%struct.TYPE_14__* %117, i32 %118, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str, i64 0, i64 0))
  store i32 %119, i32* %4, align 4
  br label %121

120:                                              ; preds = %111
  store i32 0, i32* %4, align 4
  br label %121

121:                                              ; preds = %120, %116, %106, %87, %71, %51, %33, %20
  %122 = load i32, i32* %4, align 4
  ret i32 %122
}

declare dso_local i32 @assert(%struct.TYPE_14__*) #1

declare dso_local i32 @sd_netlink_message_open_container(%struct.TYPE_14__*, i32) #1

declare dso_local i32 @log_netdev_error_errno(%struct.TYPE_14__*, i32, i8*) #1

declare dso_local i32 @sd_netlink_message_append_u8(%struct.TYPE_14__*, i32, i64) #1

declare dso_local i32 @sd_netlink_message_append_u32(%struct.TYPE_14__*, i32, i64) #1

declare dso_local i32 @sd_netlink_message_append_data(%struct.TYPE_14__*, i32, i32, i64) #1

declare dso_local i32 @sd_netlink_message_close_container(%struct.TYPE_14__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
