; ModuleID = '/home/carl/AnghaBench/systemd/src/network/extr_networkd-dhcp6.c_dhcp6_handler.c'
source_filename = "/home/carl/AnghaBench/systemd/src/network/extr_networkd-dhcp6.c_dhcp6_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32, i32, i32, %struct.TYPE_14__* }

@LINK_STATE_FAILED = common dso_local global i32 0, align 4
@LINK_STATE_LINGER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"DHCPv6 lease lost\00", align 1
@.str.1 = private unnamed_addr constant [44 x i8] c"DHCPv6 did not receive prefixes to delegate\00", align 1
@_fallthrough_ = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [17 x i8] c"DHCPv6 error: %m\00", align 1
@.str.3 = private unnamed_addr constant [25 x i8] c"DHCPv6 unknown event: %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, i8*)* @dhcp6_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dhcp6_handler(i32* %0, i32 %1, i8* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_14__*, align 8
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  store i8* %2, i8** %6, align 8
  %9 = load i8*, i8** %6, align 8
  %10 = bitcast i8* %9 to %struct.TYPE_14__*
  store %struct.TYPE_14__* %10, %struct.TYPE_14__** %8, align 8
  %11 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %12 = call i32 @assert(%struct.TYPE_14__* %11)
  %13 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %14 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %13, i32 0, i32 3
  %15 = load %struct.TYPE_14__*, %struct.TYPE_14__** %14, align 8
  %16 = call i32 @assert(%struct.TYPE_14__* %15)
  %17 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %18 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 8
  %20 = load i32, i32* @LINK_STATE_FAILED, align 4
  %21 = load i32, i32* @LINK_STATE_LINGER, align 4
  %22 = call i64 @IN_SET(i32 %19, i32 %20, i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %3
  br label %96

25:                                               ; preds = %3
  %26 = load i32, i32* %5, align 4
  switch i32 %26, label %81 [
    i32 128, label %27
    i32 130, label %27
    i32 129, label %27
    i32 131, label %47
    i32 132, label %67
  ]

27:                                               ; preds = %25, %25, %25
  %28 = load i32*, i32** %4, align 8
  %29 = call i32 @sd_dhcp6_client_get_lease(i32* %28, i32* null)
  %30 = icmp sge i32 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %27
  %32 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %33 = call i32 (%struct.TYPE_14__*, i8*, ...) @log_link_warning(%struct.TYPE_14__* %32, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  br label %34

34:                                               ; preds = %31, %27
  %35 = load i32*, i32** %4, align 8
  %36 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %37 = call i32 @dhcp6_lease_pd_prefix_lost(i32* %35, %struct.TYPE_14__* %36)
  %38 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %39 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %42 = call i32 @dhcp6_prefix_remove_all(i32 %40, %struct.TYPE_14__* %41)
  %43 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %44 = call i32 @link_dirty(%struct.TYPE_14__* %43)
  %45 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %46 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %45, i32 0, i32 0
  store i32 0, i32* %46, align 8
  br label %93

47:                                               ; preds = %25
  %48 = load i32*, i32** %4, align 8
  %49 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %50 = call i32 @dhcp6_lease_address_acquired(i32* %48, %struct.TYPE_14__* %49)
  store i32 %50, i32* %7, align 4
  %51 = load i32, i32* %7, align 4
  %52 = icmp slt i32 %51, 0
  br i1 %52, label %53, label %56

53:                                               ; preds = %47
  %54 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %55 = call i32 @link_enter_failed(%struct.TYPE_14__* %54)
  br label %96

56:                                               ; preds = %47
  %57 = load i32*, i32** %4, align 8
  %58 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %59 = call i32 @dhcp6_lease_pd_prefix_acquired(i32* %57, %struct.TYPE_14__* %58)
  store i32 %59, i32* %7, align 4
  %60 = load i32, i32* %7, align 4
  %61 = icmp slt i32 %60, 0
  br i1 %61, label %62, label %65

62:                                               ; preds = %56
  %63 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %64 = call i32 @log_link_debug(%struct.TYPE_14__* %63, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0))
  br label %65

65:                                               ; preds = %62, %56
  %66 = load i32, i32* @_fallthrough_, align 4
  br label %67

67:                                               ; preds = %25, %65
  %68 = load i32*, i32** %4, align 8
  %69 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %70 = call i32 @dhcp6_lease_information_acquired(i32* %68, %struct.TYPE_14__* %69)
  store i32 %70, i32* %7, align 4
  %71 = load i32, i32* %7, align 4
  %72 = icmp slt i32 %71, 0
  br i1 %72, label %73, label %76

73:                                               ; preds = %67
  %74 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %75 = call i32 @link_enter_failed(%struct.TYPE_14__* %74)
  br label %96

76:                                               ; preds = %67
  %77 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %78 = call i32 @link_dirty(%struct.TYPE_14__* %77)
  %79 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %80 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %79, i32 0, i32 0
  store i32 1, i32* %80, align 8
  br label %93

81:                                               ; preds = %25
  %82 = load i32, i32* %5, align 4
  %83 = icmp slt i32 %82, 0
  br i1 %83, label %84, label %88

84:                                               ; preds = %81
  %85 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %86 = load i32, i32* %5, align 4
  %87 = call i32 @log_link_warning_errno(%struct.TYPE_14__* %85, i32 %86, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0))
  br label %92

88:                                               ; preds = %81
  %89 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %90 = load i32, i32* %5, align 4
  %91 = call i32 (%struct.TYPE_14__*, i8*, ...) @log_link_warning(%struct.TYPE_14__* %89, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0), i32 %90)
  br label %92

92:                                               ; preds = %88, %84
  br label %96

93:                                               ; preds = %76, %34
  %94 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %95 = call i32 @link_check_ready(%struct.TYPE_14__* %94)
  br label %96

96:                                               ; preds = %93, %92, %73, %53, %24
  ret void
}

declare dso_local i32 @assert(%struct.TYPE_14__*) #1

declare dso_local i64 @IN_SET(i32, i32, i32) #1

declare dso_local i32 @sd_dhcp6_client_get_lease(i32*, i32*) #1

declare dso_local i32 @log_link_warning(%struct.TYPE_14__*, i8*, ...) #1

declare dso_local i32 @dhcp6_lease_pd_prefix_lost(i32*, %struct.TYPE_14__*) #1

declare dso_local i32 @dhcp6_prefix_remove_all(i32, %struct.TYPE_14__*) #1

declare dso_local i32 @link_dirty(%struct.TYPE_14__*) #1

declare dso_local i32 @dhcp6_lease_address_acquired(i32*, %struct.TYPE_14__*) #1

declare dso_local i32 @link_enter_failed(%struct.TYPE_14__*) #1

declare dso_local i32 @dhcp6_lease_pd_prefix_acquired(i32*, %struct.TYPE_14__*) #1

declare dso_local i32 @log_link_debug(%struct.TYPE_14__*, i8*) #1

declare dso_local i32 @dhcp6_lease_information_acquired(i32*, %struct.TYPE_14__*) #1

declare dso_local i32 @log_link_warning_errno(%struct.TYPE_14__*, i32, i8*) #1

declare dso_local i32 @link_check_ready(%struct.TYPE_14__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
