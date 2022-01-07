; ModuleID = '/home/carl/AnghaBench/systemd/src/resolve/extr_resolved-link.c_link_read_settings.c'
source_filename = "/home/carl/AnghaBench/systemd/src/resolve/extr_resolved-link.c_link_read_settings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i32 }

@.str = private unnamed_addr constant [57 x i8] c"Failed to determine whether the interface is managed: %m\00", align 1
@.str.1 = private unnamed_addr constant [59 x i8] c"Failed to read DNS servers for the interface, ignoring: %m\00", align 1
@.str.2 = private unnamed_addr constant [61 x i8] c"Failed to read LLMNR support for the interface, ignoring: %m\00", align 1
@.str.3 = private unnamed_addr constant [60 x i8] c"Failed to read mDNS support for the interface, ignoring: %m\00", align 1
@.str.4 = private unnamed_addr constant [65 x i8] c"Failed to read DNS-over-TLS mode for the interface, ignoring: %m\00", align 1
@.str.5 = private unnamed_addr constant [59 x i8] c"Failed to read DNSSEC mode for the interface, ignoring: %m\00", align 1
@.str.6 = private unnamed_addr constant [77 x i8] c"Failed to read DNSSEC negative trust anchors for the interface, ignoring: %m\00", align 1
@.str.7 = private unnamed_addr constant [62 x i8] c"Failed to read search domains for the interface, ignoring: %m\00", align 1
@.str.8 = private unnamed_addr constant [78 x i8] c"Failed to read default route setting for the interface, proceeding anyway: %m\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_15__*)* @link_read_settings to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @link_read_settings(%struct.TYPE_15__* %0) #0 {
  %2 = alloca %struct.TYPE_15__*, align 8
  %3 = alloca i32, align 4
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %2, align 8
  %4 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %5 = call i32 @assert(%struct.TYPE_15__* %4)
  %6 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %7 = call i32 @link_is_managed(%struct.TYPE_15__* %6)
  store i32 %7, i32* %3, align 4
  %8 = load i32, i32* %3, align 4
  %9 = icmp slt i32 %8, 0
  br i1 %9, label %10, label %14

10:                                               ; preds = %1
  %11 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %12 = load i32, i32* %3, align 4
  %13 = call i32 @log_link_warning_errno(%struct.TYPE_15__* %11, i32 %12, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str, i64 0, i64 0))
  br label %102

14:                                               ; preds = %1
  %15 = load i32, i32* %3, align 4
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %28

17:                                               ; preds = %14
  %18 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %19 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %17
  %23 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %24 = call i32 @link_flush_settings(%struct.TYPE_15__* %23)
  br label %25

25:                                               ; preds = %22, %17
  %26 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %27 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %26, i32 0, i32 0
  store i32 0, i32* %27, align 4
  br label %102

28:                                               ; preds = %14
  %29 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %30 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %29, i32 0, i32 0
  store i32 1, i32* %30, align 4
  %31 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %32 = call i32 @link_update_dns_servers(%struct.TYPE_15__* %31)
  store i32 %32, i32* %3, align 4
  %33 = load i32, i32* %3, align 4
  %34 = icmp slt i32 %33, 0
  br i1 %34, label %35, label %39

35:                                               ; preds = %28
  %36 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %37 = load i32, i32* %3, align 4
  %38 = call i32 @log_link_warning_errno(%struct.TYPE_15__* %36, i32 %37, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.1, i64 0, i64 0))
  br label %39

39:                                               ; preds = %35, %28
  %40 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %41 = call i32 @link_update_llmnr_support(%struct.TYPE_15__* %40)
  store i32 %41, i32* %3, align 4
  %42 = load i32, i32* %3, align 4
  %43 = icmp slt i32 %42, 0
  br i1 %43, label %44, label %48

44:                                               ; preds = %39
  %45 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %46 = load i32, i32* %3, align 4
  %47 = call i32 @log_link_warning_errno(%struct.TYPE_15__* %45, i32 %46, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.2, i64 0, i64 0))
  br label %48

48:                                               ; preds = %44, %39
  %49 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %50 = call i32 @link_update_mdns_support(%struct.TYPE_15__* %49)
  store i32 %50, i32* %3, align 4
  %51 = load i32, i32* %3, align 4
  %52 = icmp slt i32 %51, 0
  br i1 %52, label %53, label %57

53:                                               ; preds = %48
  %54 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %55 = load i32, i32* %3, align 4
  %56 = call i32 @log_link_warning_errno(%struct.TYPE_15__* %54, i32 %55, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.3, i64 0, i64 0))
  br label %57

57:                                               ; preds = %53, %48
  %58 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %59 = call i32 @link_update_dns_over_tls_mode(%struct.TYPE_15__* %58)
  store i32 %59, i32* %3, align 4
  %60 = load i32, i32* %3, align 4
  %61 = icmp slt i32 %60, 0
  br i1 %61, label %62, label %66

62:                                               ; preds = %57
  %63 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %64 = load i32, i32* %3, align 4
  %65 = call i32 @log_link_warning_errno(%struct.TYPE_15__* %63, i32 %64, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.4, i64 0, i64 0))
  br label %66

66:                                               ; preds = %62, %57
  %67 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %68 = call i32 @link_update_dnssec_mode(%struct.TYPE_15__* %67)
  store i32 %68, i32* %3, align 4
  %69 = load i32, i32* %3, align 4
  %70 = icmp slt i32 %69, 0
  br i1 %70, label %71, label %75

71:                                               ; preds = %66
  %72 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %73 = load i32, i32* %3, align 4
  %74 = call i32 @log_link_warning_errno(%struct.TYPE_15__* %72, i32 %73, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.5, i64 0, i64 0))
  br label %75

75:                                               ; preds = %71, %66
  %76 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %77 = call i32 @link_update_dnssec_negative_trust_anchors(%struct.TYPE_15__* %76)
  store i32 %77, i32* %3, align 4
  %78 = load i32, i32* %3, align 4
  %79 = icmp slt i32 %78, 0
  br i1 %79, label %80, label %84

80:                                               ; preds = %75
  %81 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %82 = load i32, i32* %3, align 4
  %83 = call i32 @log_link_warning_errno(%struct.TYPE_15__* %81, i32 %82, i8* getelementptr inbounds ([77 x i8], [77 x i8]* @.str.6, i64 0, i64 0))
  br label %84

84:                                               ; preds = %80, %75
  %85 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %86 = call i32 @link_update_search_domains(%struct.TYPE_15__* %85)
  store i32 %86, i32* %3, align 4
  %87 = load i32, i32* %3, align 4
  %88 = icmp slt i32 %87, 0
  br i1 %88, label %89, label %93

89:                                               ; preds = %84
  %90 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %91 = load i32, i32* %3, align 4
  %92 = call i32 @log_link_warning_errno(%struct.TYPE_15__* %90, i32 %91, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.7, i64 0, i64 0))
  br label %93

93:                                               ; preds = %89, %84
  %94 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %95 = call i32 @link_update_default_route(%struct.TYPE_15__* %94)
  store i32 %95, i32* %3, align 4
  %96 = load i32, i32* %3, align 4
  %97 = icmp slt i32 %96, 0
  br i1 %97, label %98, label %102

98:                                               ; preds = %93
  %99 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %100 = load i32, i32* %3, align 4
  %101 = call i32 @log_link_warning_errno(%struct.TYPE_15__* %99, i32 %100, i8* getelementptr inbounds ([78 x i8], [78 x i8]* @.str.8, i64 0, i64 0))
  br label %102

102:                                              ; preds = %10, %25, %98, %93
  ret void
}

declare dso_local i32 @assert(%struct.TYPE_15__*) #1

declare dso_local i32 @link_is_managed(%struct.TYPE_15__*) #1

declare dso_local i32 @log_link_warning_errno(%struct.TYPE_15__*, i32, i8*) #1

declare dso_local i32 @link_flush_settings(%struct.TYPE_15__*) #1

declare dso_local i32 @link_update_dns_servers(%struct.TYPE_15__*) #1

declare dso_local i32 @link_update_llmnr_support(%struct.TYPE_15__*) #1

declare dso_local i32 @link_update_mdns_support(%struct.TYPE_15__*) #1

declare dso_local i32 @link_update_dns_over_tls_mode(%struct.TYPE_15__*) #1

declare dso_local i32 @link_update_dnssec_mode(%struct.TYPE_15__*) #1

declare dso_local i32 @link_update_dnssec_negative_trust_anchors(%struct.TYPE_15__*) #1

declare dso_local i32 @link_update_search_domains(%struct.TYPE_15__*) #1

declare dso_local i32 @link_update_default_route(%struct.TYPE_15__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
