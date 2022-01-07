; ModuleID = '/home/carl/AnghaBench/systemd/src/resolve/extr_resolved-dns-stub.c_dns_stub_query_complete.c'
source_filename = "/home/carl/AnghaBench/systemd/src/resolve/extr_resolved-dns-stub.c_dns_stub_query_complete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32, %struct.TYPE_12__*, i32, i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [33 x i8] c"Failed to build reply packet: %m\00", align 1
@ELOOP = common dso_local global i32 0, align 4
@DNS_RCODE_SERVFAIL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"Failed to process CNAME: %m\00", align 1
@DNS_QUERY_RESTARTED = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [34 x i8] c"Failed to finish reply packet: %m\00", align 1
@DNS_RCODE_NXDOMAIN = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [17 x i8] c"Impossible state\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_12__*)* @dns_stub_query_complete to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dns_stub_query_complete(%struct.TYPE_12__* %0) #0 {
  %2 = alloca %struct.TYPE_12__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %2, align 8
  %5 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %6 = call i32 @assert(%struct.TYPE_12__* %5)
  %7 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %8 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %7, i32 0, i32 1
  %9 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %10 = call i32 @assert(%struct.TYPE_12__* %9)
  %11 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %12 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  switch i32 %13, label %158 [
    i32 130, label %14
    i32 132, label %114
    i32 137, label %130
    i32 129, label %144
    i32 142, label %144
    i32 136, label %145
    i32 139, label %145
    i32 140, label %145
    i32 143, label %145
    i32 141, label %145
    i32 135, label %145
    i32 131, label %145
    i32 138, label %145
    i32 134, label %157
    i32 133, label %157
    i32 128, label %157
  ]

14:                                               ; preds = %1
  %15 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %16 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %15, i32 0, i32 5
  %17 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %18 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %17, i32 0, i32 1
  %19 = load %struct.TYPE_12__*, %struct.TYPE_12__** %18, align 8
  %20 = call i32 @DNS_PACKET_PAYLOAD_SIZE_MAX(%struct.TYPE_12__* %19)
  %21 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %22 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %21, i32 0, i32 8
  %23 = load i32, i32* %22, align 8
  %24 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %25 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %24, i32 0, i32 7
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @dns_stub_make_reply_packet(i32* %16, i32 %20, i32 %23, i32 %26, i32* %4)
  store i32 %27, i32* %3, align 4
  %28 = load i32, i32* %3, align 4
  %29 = icmp slt i32 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %14
  %31 = load i32, i32* %3, align 4
  %32 = call i32 @log_debug_errno(i32 %31, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  br label %160

33:                                               ; preds = %14
  %34 = load i32, i32* %4, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %67, label %36

36:                                               ; preds = %33
  %37 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %38 = call i32 @dns_query_process_cname(%struct.TYPE_12__* %37)
  store i32 %38, i32* %3, align 4
  %39 = load i32, i32* %3, align 4
  %40 = load i32, i32* @ELOOP, align 4
  %41 = sub nsw i32 0, %40
  %42 = icmp eq i32 %39, %41
  br i1 %42, label %43, label %55

43:                                               ; preds = %36
  %44 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %45 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %44, i32 0, i32 3
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %48 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 8
  %50 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %51 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %50, i32 0, i32 1
  %52 = load %struct.TYPE_12__*, %struct.TYPE_12__** %51, align 8
  %53 = load i32, i32* @DNS_RCODE_SERVFAIL, align 4
  %54 = call i32 @dns_stub_send_failure(i32 %46, i32 %49, %struct.TYPE_12__* %52, i32 %53, i32 0)
  br label %160

55:                                               ; preds = %36
  %56 = load i32, i32* %3, align 4
  %57 = icmp slt i32 %56, 0
  br i1 %57, label %58, label %61

58:                                               ; preds = %55
  %59 = load i32, i32* %3, align 4
  %60 = call i32 @log_debug_errno(i32 %59, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  br label %160

61:                                               ; preds = %55
  %62 = load i32, i32* %3, align 4
  %63 = load i32, i32* @DNS_QUERY_RESTARTED, align 4
  %64 = icmp eq i32 %62, %63
  br i1 %64, label %65, label %66

65:                                               ; preds = %61
  br label %163

66:                                               ; preds = %61
  br label %67

67:                                               ; preds = %66, %33
  %68 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %69 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %68, i32 0, i32 5
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %72 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %71, i32 0, i32 1
  %73 = load %struct.TYPE_12__*, %struct.TYPE_12__** %72, align 8
  %74 = call i32 @DNS_PACKET_ID(%struct.TYPE_12__* %73)
  %75 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %76 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %75, i32 0, i32 4
  %77 = load i32, i32* %76, align 8
  %78 = load i32, i32* %4, align 4
  %79 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %80 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %79, i32 0, i32 1
  %81 = load %struct.TYPE_12__*, %struct.TYPE_12__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %81, i32 0, i32 6
  %83 = load i32, i32* %82, align 8
  %84 = icmp ne i32 %83, 0
  %85 = xor i1 %84, true
  %86 = xor i1 %85, true
  %87 = zext i1 %86 to i32
  %88 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %89 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %88, i32 0, i32 1
  %90 = load %struct.TYPE_12__*, %struct.TYPE_12__** %89, align 8
  %91 = call i32 @DNS_PACKET_DO(%struct.TYPE_12__* %90)
  %92 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %93 = call i32 @dns_query_fully_authenticated(%struct.TYPE_12__* %92)
  %94 = call i32 @dns_stub_finish_reply_packet(i32 %70, i32 %74, i32 %77, i32 %78, i32 %87, i32 %91, i32 %93)
  store i32 %94, i32* %3, align 4
  %95 = load i32, i32* %3, align 4
  %96 = icmp slt i32 %95, 0
  br i1 %96, label %97, label %100

97:                                               ; preds = %67
  %98 = load i32, i32* %3, align 4
  %99 = call i32 @log_debug_errno(i32 %98, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0))
  br label %160

100:                                              ; preds = %67
  %101 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %102 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %101, i32 0, i32 3
  %103 = load i32, i32* %102, align 4
  %104 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %105 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %104, i32 0, i32 2
  %106 = load i32, i32* %105, align 8
  %107 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %108 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %107, i32 0, i32 1
  %109 = load %struct.TYPE_12__*, %struct.TYPE_12__** %108, align 8
  %110 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %111 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %110, i32 0, i32 5
  %112 = load i32, i32* %111, align 4
  %113 = call i32 @dns_stub_send(i32 %103, i32 %106, %struct.TYPE_12__* %109, i32 %112)
  br label %160

114:                                              ; preds = %1
  %115 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %116 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %115, i32 0, i32 3
  %117 = load i32, i32* %116, align 4
  %118 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %119 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %118, i32 0, i32 2
  %120 = load i32, i32* %119, align 8
  %121 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %122 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %121, i32 0, i32 1
  %123 = load %struct.TYPE_12__*, %struct.TYPE_12__** %122, align 8
  %124 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %125 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %124, i32 0, i32 4
  %126 = load i32, i32* %125, align 8
  %127 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %128 = call i32 @dns_query_fully_authenticated(%struct.TYPE_12__* %127)
  %129 = call i32 @dns_stub_send_failure(i32 %117, i32 %120, %struct.TYPE_12__* %123, i32 %126, i32 %128)
  br label %160

130:                                              ; preds = %1
  %131 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %132 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %131, i32 0, i32 3
  %133 = load i32, i32* %132, align 4
  %134 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %135 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %134, i32 0, i32 2
  %136 = load i32, i32* %135, align 8
  %137 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %138 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %137, i32 0, i32 1
  %139 = load %struct.TYPE_12__*, %struct.TYPE_12__** %138, align 8
  %140 = load i32, i32* @DNS_RCODE_NXDOMAIN, align 4
  %141 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %142 = call i32 @dns_query_fully_authenticated(%struct.TYPE_12__* %141)
  %143 = call i32 @dns_stub_send_failure(i32 %133, i32 %136, %struct.TYPE_12__* %139, i32 %140, i32 %142)
  br label %160

144:                                              ; preds = %1, %1
  br label %160

145:                                              ; preds = %1, %1, %1, %1, %1, %1, %1, %1
  %146 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %147 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %146, i32 0, i32 3
  %148 = load i32, i32* %147, align 4
  %149 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %150 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %149, i32 0, i32 2
  %151 = load i32, i32* %150, align 8
  %152 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %153 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %152, i32 0, i32 1
  %154 = load %struct.TYPE_12__*, %struct.TYPE_12__** %153, align 8
  %155 = load i32, i32* @DNS_RCODE_SERVFAIL, align 4
  %156 = call i32 @dns_stub_send_failure(i32 %148, i32 %151, %struct.TYPE_12__* %154, i32 %155, i32 0)
  br label %160

157:                                              ; preds = %1, %1, %1
  br label %158

158:                                              ; preds = %1, %157
  %159 = call i32 @assert_not_reached(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0))
  br label %160

160:                                              ; preds = %158, %145, %144, %130, %114, %100, %97, %58, %43, %30
  %161 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %162 = call i32 @dns_query_free(%struct.TYPE_12__* %161)
  br label %163

163:                                              ; preds = %160, %65
  ret void
}

declare dso_local i32 @assert(%struct.TYPE_12__*) #1

declare dso_local i32 @dns_stub_make_reply_packet(i32*, i32, i32, i32, i32*) #1

declare dso_local i32 @DNS_PACKET_PAYLOAD_SIZE_MAX(%struct.TYPE_12__*) #1

declare dso_local i32 @log_debug_errno(i32, i8*) #1

declare dso_local i32 @dns_query_process_cname(%struct.TYPE_12__*) #1

declare dso_local i32 @dns_stub_send_failure(i32, i32, %struct.TYPE_12__*, i32, i32) #1

declare dso_local i32 @dns_stub_finish_reply_packet(i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @DNS_PACKET_ID(%struct.TYPE_12__*) #1

declare dso_local i32 @DNS_PACKET_DO(%struct.TYPE_12__*) #1

declare dso_local i32 @dns_query_fully_authenticated(%struct.TYPE_12__*) #1

declare dso_local i32 @dns_stub_send(i32, i32, %struct.TYPE_12__*, i32) #1

declare dso_local i32 @assert_not_reached(i8*) #1

declare dso_local i32 @dns_query_free(%struct.TYPE_12__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
