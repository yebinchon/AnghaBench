; ModuleID = '/home/carl/AnghaBench/systemd/src/resolve/extr_resolved-dns-transaction.c_dns_transaction_process_dnssec.c'
source_filename = "/home/carl/AnghaBench/systemd/src/resolve/extr_resolved-dns-transaction.c_dns_transaction_process_dnssec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i64, i64, i64, i32, i32, %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i64 }

@EBADMSG = common dso_local global i32 0, align 4
@DNS_TRANSACTION_INVALID_REPLY = common dso_local global i32 0, align 4
@DNSSEC_INCOMPATIBLE_SERVER = common dso_local global i64 0, align 8
@DNSSEC_YES = common dso_local global i64 0, align 8
@DNS_TRANSACTION_DNSSEC_FAILED = common dso_local global i32 0, align 4
@_DNSSEC_RESULT_INVALID = common dso_local global i32 0, align 4
@DNSSEC_VALIDATED = common dso_local global i32 0, align 4
@DNSSEC_UNSIGNED = common dso_local global i32 0, align 4
@DNS_RCODE_SUCCESS = common dso_local global i64 0, align 8
@DNS_TRANSACTION_SUCCESS = common dso_local global i32 0, align 4
@DNS_TRANSACTION_RCODE_FAILURE = common dso_local global i32 0, align 4
@DNS_TRANSACTION_ERRNO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_11__*)* @dns_transaction_process_dnssec to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dns_transaction_process_dnssec(%struct.TYPE_11__* %0) #0 {
  %2 = alloca %struct.TYPE_11__*, align 8
  %3 = alloca i32, align 4
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %2, align 8
  %4 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %5 = call i32 @assert(%struct.TYPE_11__* %4)
  %6 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %7 = call i32 @dns_transaction_dnssec_ready(%struct.TYPE_11__* %6)
  store i32 %7, i32* %3, align 4
  %8 = load i32, i32* %3, align 4
  %9 = icmp slt i32 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %1
  br label %112

11:                                               ; preds = %1
  %12 = load i32, i32* %3, align 4
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %11
  br label %120

15:                                               ; preds = %11
  %16 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %17 = call i32 @dns_transaction_maybe_restart(%struct.TYPE_11__* %16)
  store i32 %17, i32* %3, align 4
  %18 = load i32, i32* %3, align 4
  %19 = icmp slt i32 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %15
  br label %112

21:                                               ; preds = %15
  %22 = load i32, i32* %3, align 4
  %23 = icmp sgt i32 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %21
  br label %120

25:                                               ; preds = %21
  %26 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %27 = call i32 @dns_transaction_validate_dnssec(%struct.TYPE_11__* %26)
  store i32 %27, i32* %3, align 4
  %28 = load i32, i32* %3, align 4
  %29 = load i32, i32* @EBADMSG, align 4
  %30 = sub nsw i32 0, %29
  %31 = icmp eq i32 %28, %30
  br i1 %31, label %32, label %36

32:                                               ; preds = %25
  %33 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %34 = load i32, i32* @DNS_TRANSACTION_INVALID_REPLY, align 4
  %35 = call i32 @dns_transaction_complete(%struct.TYPE_11__* %33, i32 %34)
  br label %120

36:                                               ; preds = %25
  %37 = load i32, i32* %3, align 4
  %38 = icmp slt i32 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %36
  br label %112

40:                                               ; preds = %36
  %41 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %42 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* @DNSSEC_INCOMPATIBLE_SERVER, align 8
  %45 = icmp eq i64 %43, %44
  br i1 %45, label %46, label %70

46:                                               ; preds = %40
  %47 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %48 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %47, i32 0, i32 5
  %49 = load %struct.TYPE_12__*, %struct.TYPE_12__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* @DNSSEC_YES, align 8
  %53 = icmp eq i64 %51, %52
  br i1 %53, label %54, label %70

54:                                               ; preds = %46
  %55 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %56 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %55, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
  %58 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %59 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %58, i32 0, i32 5
  %60 = load %struct.TYPE_12__*, %struct.TYPE_12__** %59, align 8
  %61 = call i64 @dns_scope_get_n_dns_servers(%struct.TYPE_12__* %60)
  %62 = icmp slt i64 %57, %61
  br i1 %62, label %63, label %66

63:                                               ; preds = %54
  %64 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %65 = call i32 @dns_transaction_retry(%struct.TYPE_11__* %64, i32 1)
  br label %120

66:                                               ; preds = %54
  %67 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %68 = load i32, i32* @DNS_TRANSACTION_DNSSEC_FAILED, align 4
  %69 = call i32 @dns_transaction_complete(%struct.TYPE_11__* %67, i32 %68)
  br label %120

70:                                               ; preds = %46, %40
  %71 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %72 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = load i32, i32* @_DNSSEC_RESULT_INVALID, align 4
  %75 = load i32, i32* @DNSSEC_VALIDATED, align 4
  %76 = load i32, i32* @DNSSEC_UNSIGNED, align 4
  %77 = load i64, i64* @DNSSEC_INCOMPATIBLE_SERVER, align 8
  %78 = call i32 @IN_SET(i64 %73, i32 %74, i32 %75, i32 %76, i64 %77)
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %84, label %80

80:                                               ; preds = %70
  %81 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %82 = load i32, i32* @DNS_TRANSACTION_DNSSEC_FAILED, align 4
  %83 = call i32 @dns_transaction_complete(%struct.TYPE_11__* %81, i32 %82)
  br label %120

84:                                               ; preds = %70
  %85 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %86 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = load i64, i64* @DNSSEC_INCOMPATIBLE_SERVER, align 8
  %89 = icmp eq i64 %87, %88
  br i1 %89, label %90, label %95

90:                                               ; preds = %84
  %91 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %92 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %91, i32 0, i32 4
  %93 = load i32, i32* %92, align 4
  %94 = call i32 @dns_server_warn_downgrade(i32 %93)
  br label %95

95:                                               ; preds = %90, %84
  %96 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %97 = call i32 @dns_transaction_cache_answer(%struct.TYPE_11__* %96)
  %98 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %99 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %98, i32 0, i32 2
  %100 = load i64, i64* %99, align 8
  %101 = load i64, i64* @DNS_RCODE_SUCCESS, align 8
  %102 = icmp eq i64 %100, %101
  br i1 %102, label %103, label %107

103:                                              ; preds = %95
  %104 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %105 = load i32, i32* @DNS_TRANSACTION_SUCCESS, align 4
  %106 = call i32 @dns_transaction_complete(%struct.TYPE_11__* %104, i32 %105)
  br label %111

107:                                              ; preds = %95
  %108 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %109 = load i32, i32* @DNS_TRANSACTION_RCODE_FAILURE, align 4
  %110 = call i32 @dns_transaction_complete(%struct.TYPE_11__* %108, i32 %109)
  br label %111

111:                                              ; preds = %107, %103
  br label %120

112:                                              ; preds = %39, %20, %10
  %113 = load i32, i32* %3, align 4
  %114 = sub nsw i32 0, %113
  %115 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %116 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %115, i32 0, i32 3
  store i32 %114, i32* %116, align 8
  %117 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %118 = load i32, i32* @DNS_TRANSACTION_ERRNO, align 4
  %119 = call i32 @dns_transaction_complete(%struct.TYPE_11__* %117, i32 %118)
  br label %120

120:                                              ; preds = %112, %111, %80, %66, %63, %32, %24, %14
  ret void
}

declare dso_local i32 @assert(%struct.TYPE_11__*) #1

declare dso_local i32 @dns_transaction_dnssec_ready(%struct.TYPE_11__*) #1

declare dso_local i32 @dns_transaction_maybe_restart(%struct.TYPE_11__*) #1

declare dso_local i32 @dns_transaction_validate_dnssec(%struct.TYPE_11__*) #1

declare dso_local i32 @dns_transaction_complete(%struct.TYPE_11__*, i32) #1

declare dso_local i64 @dns_scope_get_n_dns_servers(%struct.TYPE_12__*) #1

declare dso_local i32 @dns_transaction_retry(%struct.TYPE_11__*, i32) #1

declare dso_local i32 @IN_SET(i64, i32, i32, i32, i64) #1

declare dso_local i32 @dns_server_warn_downgrade(i32) #1

declare dso_local i32 @dns_transaction_cache_answer(%struct.TYPE_11__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
