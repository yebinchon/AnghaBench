; ModuleID = '/home/carl/AnghaBench/systemd/src/resolve/extr_resolved-dns-zone.c_dns_zone_item_verify.c'
source_filename = "/home/carl/AnghaBench/systemd/src/resolve/extr_resolved-dns-zone.c_dns_zone_item_verify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64, i32 }

@DNS_ZONE_ITEM_ESTABLISHED = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [16 x i8] c"Verifying RR %s\00", align 1
@DNS_ZONE_ITEM_VERIFYING = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [45 x i8] c"Failed to start probing for verifying RR: %m\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_5__*)* @dns_zone_item_verify to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dns_zone_item_verify(%struct.TYPE_5__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_5__*, align 8
  %4 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %3, align 8
  %5 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %6 = call i32 @assert(%struct.TYPE_5__* %5)
  %7 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %8 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @DNS_ZONE_ITEM_ESTABLISHED, align 8
  %11 = icmp ne i64 %9, %10
  br i1 %11, label %12, label %13

12:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %35

13:                                               ; preds = %1
  %14 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 8
  %17 = call i32 @dns_resource_record_to_string(i32 %16)
  %18 = call i32 @strna(i32 %17)
  %19 = call i32 @log_debug(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32 %18)
  %20 = load i64, i64* @DNS_ZONE_ITEM_VERIFYING, align 8
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 0
  store i64 %20, i64* %22, align 8
  %23 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %24 = call i32 @dns_zone_item_probe_start(%struct.TYPE_5__* %23)
  store i32 %24, i32* %4, align 4
  %25 = load i32, i32* %4, align 4
  %26 = icmp slt i32 %25, 0
  br i1 %26, label %27, label %34

27:                                               ; preds = %13
  %28 = load i32, i32* %4, align 4
  %29 = call i32 @log_error_errno(i32 %28, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0))
  %30 = load i64, i64* @DNS_ZONE_ITEM_ESTABLISHED, align 8
  %31 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 0
  store i64 %30, i64* %32, align 8
  %33 = load i32, i32* %4, align 4
  store i32 %33, i32* %2, align 4
  br label %35

34:                                               ; preds = %13
  store i32 0, i32* %2, align 4
  br label %35

35:                                               ; preds = %34, %27, %12
  %36 = load i32, i32* %2, align 4
  ret i32 %36
}

declare dso_local i32 @assert(%struct.TYPE_5__*) #1

declare dso_local i32 @log_debug(i8*, i32) #1

declare dso_local i32 @strna(i32) #1

declare dso_local i32 @dns_resource_record_to_string(i32) #1

declare dso_local i32 @dns_zone_item_probe_start(%struct.TYPE_5__*) #1

declare dso_local i32 @log_error_errno(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
