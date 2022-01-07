; ModuleID = '/home/carl/AnghaBench/systemd/src/resolve/extr_resolved-dns-transaction.c_dns_transaction_emit_udp.c'
source_filename = "/home/carl/AnghaBench/systemd/src/resolve/extr_resolved-dns-transaction.c_dns_transaction_emit_udp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i64, i64, i32, %struct.TYPE_15__*, i32, i32, %struct.TYPE_12__* }
%struct.TYPE_15__ = type { i64, %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_12__ = type { i32 }

@DNS_PROTOCOL_DNS = common dso_local global i64 0, align 8
@DNS_SERVER_FEATURE_LEVEL_UDP = common dso_local global i64 0, align 8
@EAGAIN = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@EPOLLIN = common dso_local global i32 0, align 4
@on_dns_packet = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"dns-transaction-udp\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_14__*)* @dns_transaction_emit_udp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dns_transaction_emit_udp(%struct.TYPE_14__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_14__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %3, align 8
  %6 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %7 = call i32 @assert(%struct.TYPE_14__* %6)
  %8 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %9 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %8, i32 0, i32 3
  %10 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @DNS_PROTOCOL_DNS, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %15, label %122

15:                                               ; preds = %1
  %16 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %17 = call i32 @dns_transaction_pick_server(%struct.TYPE_14__* %16)
  store i32 %17, i32* %4, align 4
  %18 = load i32, i32* %4, align 4
  %19 = icmp slt i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %15
  %21 = load i32, i32* %4, align 4
  store i32 %21, i32* %2, align 4
  br label %144

22:                                               ; preds = %15
  %23 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %24 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @DNS_SERVER_FEATURE_LEVEL_UDP, align 8
  %27 = icmp slt i64 %25, %26
  br i1 %27, label %34, label %28

28:                                               ; preds = %22
  %29 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %30 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = call i64 @DNS_SERVER_FEATURE_LEVEL_IS_TLS(i64 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %28, %22
  %35 = load i32, i32* @EAGAIN, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %2, align 4
  br label %144

37:                                               ; preds = %28
  %38 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %39 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %38, i32 0, i32 4
  %40 = load i32, i32* %39, align 8
  %41 = call i32 @dns_server_dnssec_supported(i32 %40)
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %54, label %43

43:                                               ; preds = %37
  %44 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %45 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %44, i32 0, i32 6
  %46 = load %struct.TYPE_12__*, %struct.TYPE_12__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = call i64 @dns_type_is_dnssec(i32 %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %54

51:                                               ; preds = %43
  %52 = load i32, i32* @EOPNOTSUPP, align 4
  %53 = sub nsw i32 0, %52
  store i32 %53, i32* %2, align 4
  br label %144

54:                                               ; preds = %43, %37
  %55 = load i32, i32* %4, align 4
  %56 = icmp sgt i32 %55, 0
  br i1 %56, label %62, label %57

57:                                               ; preds = %54
  %58 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %59 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %58, i32 0, i32 1
  %60 = load i64, i64* %59, align 8
  %61 = icmp slt i64 %60, 0
  br i1 %61, label %62, label %106

62:                                               ; preds = %57, %54
  %63 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %64 = call i32 @dns_transaction_close_connection(%struct.TYPE_14__* %63)
  %65 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %66 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %65, i32 0, i32 3
  %67 = load %struct.TYPE_15__*, %struct.TYPE_15__** %66, align 8
  %68 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %69 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %68, i32 0, i32 4
  %70 = load i32, i32* %69, align 8
  %71 = call i32 @dns_scope_socket_udp(%struct.TYPE_15__* %67, i32 %70, i32 53)
  store i32 %71, i32* %5, align 4
  %72 = load i32, i32* %5, align 4
  %73 = icmp slt i32 %72, 0
  br i1 %73, label %74, label %76

74:                                               ; preds = %62
  %75 = load i32, i32* %5, align 4
  store i32 %75, i32* %2, align 4
  br label %144

76:                                               ; preds = %62
  %77 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %78 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %77, i32 0, i32 3
  %79 = load %struct.TYPE_15__*, %struct.TYPE_15__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %79, i32 0, i32 1
  %81 = load %struct.TYPE_13__*, %struct.TYPE_13__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %85 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %84, i32 0, i32 5
  %86 = load i32, i32* %5, align 4
  %87 = load i32, i32* @EPOLLIN, align 4
  %88 = load i32, i32* @on_dns_packet, align 4
  %89 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %90 = call i32 @sd_event_add_io(i32 %83, i32* %85, i32 %86, i32 %87, i32 %88, %struct.TYPE_14__* %89)
  store i32 %90, i32* %4, align 4
  %91 = load i32, i32* %4, align 4
  %92 = icmp slt i32 %91, 0
  br i1 %92, label %93, label %97

93:                                               ; preds = %76
  %94 = load i32, i32* %5, align 4
  %95 = call i32 @safe_close(i32 %94)
  %96 = load i32, i32* %4, align 4
  store i32 %96, i32* %2, align 4
  br label %144

97:                                               ; preds = %76
  %98 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %99 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %98, i32 0, i32 5
  %100 = load i32, i32* %99, align 4
  %101 = call i32 @sd_event_source_set_description(i32 %100, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %102 = load i32, i32* %5, align 4
  %103 = sext i32 %102 to i64
  %104 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %105 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %104, i32 0, i32 1
  store i64 %103, i64* %105, align 8
  br label %106

106:                                              ; preds = %97, %57
  %107 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %108 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %107, i32 0, i32 4
  %109 = load i32, i32* %108, align 8
  %110 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %111 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %110, i32 0, i32 2
  %112 = load i32, i32* %111, align 8
  %113 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %114 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %113, i32 0, i32 0
  %115 = load i64, i64* %114, align 8
  %116 = call i32 @dns_server_adjust_opt(i32 %109, i32 %112, i64 %115)
  store i32 %116, i32* %4, align 4
  %117 = load i32, i32* %4, align 4
  %118 = icmp slt i32 %117, 0
  br i1 %118, label %119, label %121

119:                                              ; preds = %106
  %120 = load i32, i32* %4, align 4
  store i32 %120, i32* %2, align 4
  br label %144

121:                                              ; preds = %106
  br label %125

122:                                              ; preds = %1
  %123 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %124 = call i32 @dns_transaction_close_connection(%struct.TYPE_14__* %123)
  br label %125

125:                                              ; preds = %122, %121
  %126 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %127 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %126, i32 0, i32 3
  %128 = load %struct.TYPE_15__*, %struct.TYPE_15__** %127, align 8
  %129 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %130 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %129, i32 0, i32 1
  %131 = load i64, i64* %130, align 8
  %132 = trunc i64 %131 to i32
  %133 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %134 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %133, i32 0, i32 2
  %135 = load i32, i32* %134, align 8
  %136 = call i32 @dns_scope_emit_udp(%struct.TYPE_15__* %128, i32 %132, i32 %135)
  store i32 %136, i32* %4, align 4
  %137 = load i32, i32* %4, align 4
  %138 = icmp slt i32 %137, 0
  br i1 %138, label %139, label %141

139:                                              ; preds = %125
  %140 = load i32, i32* %4, align 4
  store i32 %140, i32* %2, align 4
  br label %144

141:                                              ; preds = %125
  %142 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %143 = call i32 @dns_transaction_reset_answer(%struct.TYPE_14__* %142)
  store i32 0, i32* %2, align 4
  br label %144

144:                                              ; preds = %141, %139, %119, %93, %74, %51, %34, %20
  %145 = load i32, i32* %2, align 4
  ret i32 %145
}

declare dso_local i32 @assert(%struct.TYPE_14__*) #1

declare dso_local i32 @dns_transaction_pick_server(%struct.TYPE_14__*) #1

declare dso_local i64 @DNS_SERVER_FEATURE_LEVEL_IS_TLS(i64) #1

declare dso_local i32 @dns_server_dnssec_supported(i32) #1

declare dso_local i64 @dns_type_is_dnssec(i32) #1

declare dso_local i32 @dns_transaction_close_connection(%struct.TYPE_14__*) #1

declare dso_local i32 @dns_scope_socket_udp(%struct.TYPE_15__*, i32, i32) #1

declare dso_local i32 @sd_event_add_io(i32, i32*, i32, i32, i32, %struct.TYPE_14__*) #1

declare dso_local i32 @safe_close(i32) #1

declare dso_local i32 @sd_event_source_set_description(i32, i8*) #1

declare dso_local i32 @dns_server_adjust_opt(i32, i32, i64) #1

declare dso_local i32 @dns_scope_emit_udp(%struct.TYPE_15__*, i32, i32) #1

declare dso_local i32 @dns_transaction_reset_answer(%struct.TYPE_14__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
