; ModuleID = '/home/carl/AnghaBench/systemd/src/resolve/extr_resolved-dns-server.c_dns_server_packet_rrsig_missing.c'
source_filename = "/home/carl/AnghaBench/systemd/src/resolve/extr_resolved-dns-server.c_dns_server_packet_rrsig_missing.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i32 }

@DNS_SERVER_FEATURE_LEVEL_DO = common dso_local global i64 0, align 8
@DNS_SERVER_FEATURE_LEVEL_TLS_PLAIN = common dso_local global i64 0, align 8
@DNS_SERVER_FEATURE_LEVEL_EDNS0 = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dns_server_packet_rrsig_missing(%struct.TYPE_4__* %0, i64 %1) #0 {
  %3 = alloca %struct.TYPE_4__*, align 8
  %4 = alloca i64, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %3, align 8
  store i64 %1, i64* %4, align 8
  %5 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %6 = call i32 @assert(%struct.TYPE_4__* %5)
  %7 = load i64, i64* %4, align 8
  %8 = load i64, i64* @DNS_SERVER_FEATURE_LEVEL_DO, align 8
  %9 = icmp slt i64 %7, %8
  br i1 %9, label %10, label %11

10:                                               ; preds = %2
  br label %32

11:                                               ; preds = %2
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @DNS_SERVER_FEATURE_LEVEL_DO, align 8
  %16 = icmp sge i64 %14, %15
  br i1 %16, label %17, label %29

17:                                               ; preds = %11
  %18 = load i64, i64* %4, align 8
  %19 = call i64 @DNS_SERVER_FEATURE_LEVEL_IS_TLS(i64 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %17
  %22 = load i64, i64* @DNS_SERVER_FEATURE_LEVEL_TLS_PLAIN, align 8
  br label %25

23:                                               ; preds = %17
  %24 = load i64, i64* @DNS_SERVER_FEATURE_LEVEL_EDNS0, align 8
  br label %25

25:                                               ; preds = %23, %21
  %26 = phi i64 [ %22, %21 ], [ %24, %23 ]
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  store i64 %26, i64* %28, align 8
  br label %29

29:                                               ; preds = %25, %11
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 1
  store i32 1, i32* %31, align 8
  br label %32

32:                                               ; preds = %29, %10
  ret void
}

declare dso_local i32 @assert(%struct.TYPE_4__*) #1

declare dso_local i64 @DNS_SERVER_FEATURE_LEVEL_IS_TLS(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
