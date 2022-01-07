; ModuleID = '/home/carl/AnghaBench/systemd/src/resolve/extr_resolved-dns-server.c_dns_server_packet_received.c'
source_filename = "/home/carl/AnghaBench/systemd/src/resolve/extr_resolved-dns-server.c_dns_server_packet_received.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64, i64, i64, i64, i64, i64, i64 }

@IPPROTO_UDP = common dso_local global i32 0, align 4
@IPPROTO_TCP = common dso_local global i32 0, align 4
@DNS_SERVER_FEATURE_LEVEL_TCP = common dso_local global i64 0, align 8
@DNS_SERVER_FEATURE_LEVEL_DO = common dso_local global i64 0, align 8
@DNS_SERVER_FEATURE_LEVEL_TLS_PLAIN = common dso_local global i64 0, align 8
@DNS_SERVER_FEATURE_LEVEL_EDNS0 = common dso_local global i64 0, align 8
@DNS_SERVER_FEATURE_LEVEL_LARGE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dns_server_packet_received(%struct.TYPE_5__* %0, i32 %1, i64 %2, i64 %3) #0 {
  %5 = alloca %struct.TYPE_5__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i64 %2, i64* %7, align 8
  store i64 %3, i64* %8, align 8
  %9 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %10 = call i32 @assert(%struct.TYPE_5__* %9)
  %11 = load i32, i32* %6, align 4
  %12 = load i32, i32* @IPPROTO_UDP, align 4
  %13 = icmp eq i32 %11, %12
  br i1 %13, label %14, label %24

14:                                               ; preds = %4
  %15 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 4
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* %7, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %23

20:                                               ; preds = %14
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 6
  store i64 0, i64* %22, align 8
  br label %23

23:                                               ; preds = %20, %14
  br label %55

24:                                               ; preds = %4
  %25 = load i32, i32* %6, align 4
  %26 = load i32, i32* @IPPROTO_TCP, align 4
  %27 = icmp eq i32 %25, %26
  br i1 %27, label %28, label %54

28:                                               ; preds = %24
  %29 = load i64, i64* %7, align 8
  %30 = call i64 @DNS_SERVER_FEATURE_LEVEL_IS_TLS(i64 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %42

32:                                               ; preds = %28
  %33 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 4
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* %7, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %38, label %41

38:                                               ; preds = %32
  %39 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 5
  store i64 0, i64* %40, align 8
  br label %41

41:                                               ; preds = %38, %32
  br label %53

42:                                               ; preds = %28
  %43 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 4
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* %7, align 8
  %47 = icmp eq i64 %45, %46
  br i1 %47, label %48, label %51

48:                                               ; preds = %42
  %49 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 3
  store i64 0, i64* %50, align 8
  br label %51

51:                                               ; preds = %48, %42
  %52 = load i64, i64* @DNS_SERVER_FEATURE_LEVEL_TCP, align 8
  store i64 %52, i64* %7, align 8
  br label %53

53:                                               ; preds = %51, %41
  br label %54

54:                                               ; preds = %53, %24
  br label %55

55:                                               ; preds = %54, %23
  %56 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %57 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %56, i32 0, i32 2
  %58 = load i64, i64* %57, align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %74

60:                                               ; preds = %55
  %61 = load i64, i64* %7, align 8
  %62 = load i64, i64* @DNS_SERVER_FEATURE_LEVEL_DO, align 8
  %63 = icmp sge i64 %61, %62
  br i1 %63, label %64, label %74

64:                                               ; preds = %60
  %65 = load i64, i64* %7, align 8
  %66 = call i64 @DNS_SERVER_FEATURE_LEVEL_IS_TLS(i64 %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %70

68:                                               ; preds = %64
  %69 = load i64, i64* @DNS_SERVER_FEATURE_LEVEL_TLS_PLAIN, align 8
  br label %72

70:                                               ; preds = %64
  %71 = load i64, i64* @DNS_SERVER_FEATURE_LEVEL_EDNS0, align 8
  br label %72

72:                                               ; preds = %70, %68
  %73 = phi i64 [ %69, %68 ], [ %71, %70 ]
  store i64 %73, i64* %7, align 8
  br label %74

74:                                               ; preds = %72, %60, %55
  %75 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %76 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %75, i32 0, i32 1
  %77 = load i64, i64* %76, align 8
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %86

79:                                               ; preds = %74
  %80 = load i64, i64* %7, align 8
  %81 = load i64, i64* @DNS_SERVER_FEATURE_LEVEL_EDNS0, align 8
  %82 = icmp sge i64 %80, %81
  br i1 %82, label %83, label %86

83:                                               ; preds = %79
  %84 = load i64, i64* @DNS_SERVER_FEATURE_LEVEL_EDNS0, align 8
  %85 = sub nsw i64 %84, 1
  store i64 %85, i64* %7, align 8
  br label %86

86:                                               ; preds = %83, %79, %74
  %87 = load i64, i64* %7, align 8
  %88 = load i64, i64* @DNS_SERVER_FEATURE_LEVEL_LARGE, align 8
  %89 = icmp eq i64 %87, %88
  br i1 %89, label %90, label %93

90:                                               ; preds = %86
  %91 = load i64, i64* @DNS_SERVER_FEATURE_LEVEL_LARGE, align 8
  %92 = sub nsw i64 %91, 1
  store i64 %92, i64* %7, align 8
  br label %93

93:                                               ; preds = %90, %86
  %94 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %95 = load i64, i64* %7, align 8
  %96 = call i32 @dns_server_verified(%struct.TYPE_5__* %94, i64 %95)
  %97 = load i32, i32* %6, align 4
  %98 = load i32, i32* @IPPROTO_UDP, align 4
  %99 = icmp eq i32 %97, %98
  br i1 %99, label %100, label %110

100:                                              ; preds = %93
  %101 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %102 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %101, i32 0, i32 0
  %103 = load i64, i64* %102, align 8
  %104 = load i64, i64* %8, align 8
  %105 = icmp ult i64 %103, %104
  br i1 %105, label %106, label %110

106:                                              ; preds = %100
  %107 = load i64, i64* %8, align 8
  %108 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %109 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %108, i32 0, i32 0
  store i64 %107, i64* %109, align 8
  br label %110

110:                                              ; preds = %106, %100, %93
  ret void
}

declare dso_local i32 @assert(%struct.TYPE_5__*) #1

declare dso_local i64 @DNS_SERVER_FEATURE_LEVEL_IS_TLS(i64) #1

declare dso_local i32 @dns_server_verified(%struct.TYPE_5__*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
