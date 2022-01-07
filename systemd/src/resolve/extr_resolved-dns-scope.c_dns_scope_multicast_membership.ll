; ModuleID = '/home/carl/AnghaBench/systemd/src/resolve/extr_resolved-dns-scope.c_dns_scope_multicast_membership.c'
source_filename = "/home/carl/AnghaBench/systemd/src/resolve/extr_resolved-dns-scope.c_dns_scope_multicast_membership.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i64, i32, i32, %struct.TYPE_4__* }
%struct.in_addr = type { i32 }
%struct.in6_addr = type { i32 }
%struct.ip_mreqn = type { i32, %struct.in6_addr, i32, %struct.in_addr }
%struct.ipv6_mreq = type { i32, %struct.in6_addr, i32, %struct.in_addr }

@AF_INET = common dso_local global i64 0, align 8
@DNS_PROTOCOL_LLMNR = common dso_local global i64 0, align 8
@IPPROTO_IP = common dso_local global i32 0, align 4
@IP_DROP_MEMBERSHIP = common dso_local global i32 0, align 4
@IP_ADD_MEMBERSHIP = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@AF_INET6 = common dso_local global i64 0, align 8
@IPPROTO_IPV6 = common dso_local global i32 0, align 4
@IPV6_DROP_MEMBERSHIP = common dso_local global i32 0, align 4
@IPV6_ADD_MEMBERSHIP = common dso_local global i32 0, align 4
@EAFNOSUPPORT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_4__*, i32, i32, i32)* @dns_scope_multicast_membership to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dns_scope_multicast_membership(%struct.TYPE_4__* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.in_addr, align 4
  %7 = alloca %struct.in6_addr, align 4
  %8 = alloca %struct.TYPE_4__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.ip_mreqn, align 4
  %12 = alloca %struct.ipv6_mreq, align 4
  %13 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %6, i32 0, i32 0
  store i32 %2, i32* %13, align 4
  %14 = getelementptr inbounds %struct.in6_addr, %struct.in6_addr* %7, i32 0, i32 0
  store i32 %3, i32* %14, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %8, align 8
  store i32 %1, i32* %9, align 4
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %16 = call i32 @assert(%struct.TYPE_4__* %15)
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 4
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %18, align 8
  %20 = call i32 @assert(%struct.TYPE_4__* %19)
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @AF_INET, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %86

26:                                               ; preds = %4
  %27 = getelementptr inbounds %struct.ip_mreqn, %struct.ip_mreqn* %11, i32 0, i32 0
  store i32 0, i32* %27, align 4
  %28 = getelementptr inbounds %struct.ip_mreqn, %struct.ip_mreqn* %11, i32 0, i32 1
  %29 = bitcast %struct.in6_addr* %28 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %29, i8 0, i64 4, i1 false)
  %30 = getelementptr inbounds %struct.ip_mreqn, %struct.ip_mreqn* %11, i32 0, i32 2
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 4
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 3
  %35 = load i32, i32* %34, align 4
  store i32 %35, i32* %30, align 4
  %36 = getelementptr inbounds %struct.ip_mreqn, %struct.ip_mreqn* %11, i32 0, i32 3
  %37 = bitcast %struct.in_addr* %36 to i8*
  %38 = bitcast %struct.in_addr* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %37, i8* align 4 %38, i64 4, i1 false)
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @DNS_PROTOCOL_LLMNR, align 8
  %43 = icmp eq i64 %41, %42
  br i1 %43, label %44, label %49

44:                                               ; preds = %26
  %45 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 8
  %48 = call i32 @manager_llmnr_ipv4_udp_fd(i32 %47)
  store i32 %48, i32* %10, align 4
  br label %54

49:                                               ; preds = %26
  %50 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 8
  %53 = call i32 @manager_mdns_ipv4_fd(i32 %52)
  store i32 %53, i32* %10, align 4
  br label %54

54:                                               ; preds = %49, %44
  %55 = load i32, i32* %10, align 4
  %56 = icmp slt i32 %55, 0
  br i1 %56, label %57, label %59

57:                                               ; preds = %54
  %58 = load i32, i32* %10, align 4
  store i32 %58, i32* %5, align 4
  br label %155

59:                                               ; preds = %54
  %60 = load i32, i32* %9, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %68

62:                                               ; preds = %59
  %63 = load i32, i32* %10, align 4
  %64 = load i32, i32* @IPPROTO_IP, align 4
  %65 = load i32, i32* @IP_DROP_MEMBERSHIP, align 4
  %66 = bitcast %struct.ip_mreqn* %11 to %struct.ipv6_mreq*
  %67 = call i64 @setsockopt(i32 %63, i32 %64, i32 %65, %struct.ipv6_mreq* %66, i32 16)
  br label %68

68:                                               ; preds = %62, %59
  %69 = load i32, i32* %10, align 4
  %70 = load i32, i32* @IPPROTO_IP, align 4
  %71 = load i32, i32* %9, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %75

73:                                               ; preds = %68
  %74 = load i32, i32* @IP_ADD_MEMBERSHIP, align 4
  br label %77

75:                                               ; preds = %68
  %76 = load i32, i32* @IP_DROP_MEMBERSHIP, align 4
  br label %77

77:                                               ; preds = %75, %73
  %78 = phi i32 [ %74, %73 ], [ %76, %75 ]
  %79 = bitcast %struct.ip_mreqn* %11 to %struct.ipv6_mreq*
  %80 = call i64 @setsockopt(i32 %69, i32 %70, i32 %78, %struct.ipv6_mreq* %79, i32 16)
  %81 = icmp slt i64 %80, 0
  br i1 %81, label %82, label %85

82:                                               ; preds = %77
  %83 = load i32, i32* @errno, align 4
  %84 = sub nsw i32 0, %83
  store i32 %84, i32* %5, align 4
  br label %155

85:                                               ; preds = %77
  br label %154

86:                                               ; preds = %4
  %87 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %88 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = load i64, i64* @AF_INET6, align 8
  %91 = icmp eq i64 %89, %90
  br i1 %91, label %92, label %150

92:                                               ; preds = %86
  %93 = getelementptr inbounds %struct.ipv6_mreq, %struct.ipv6_mreq* %12, i32 0, i32 0
  %94 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %95 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %94, i32 0, i32 4
  %96 = load %struct.TYPE_4__*, %struct.TYPE_4__** %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %96, i32 0, i32 3
  %98 = load i32, i32* %97, align 4
  store i32 %98, i32* %93, align 4
  %99 = getelementptr inbounds %struct.ipv6_mreq, %struct.ipv6_mreq* %12, i32 0, i32 1
  %100 = bitcast %struct.in6_addr* %99 to i8*
  %101 = bitcast %struct.in6_addr* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %100, i8* align 4 %101, i64 4, i1 false)
  %102 = getelementptr inbounds %struct.ipv6_mreq, %struct.ipv6_mreq* %12, i32 0, i32 2
  store i32 0, i32* %102, align 4
  %103 = getelementptr inbounds %struct.ipv6_mreq, %struct.ipv6_mreq* %12, i32 0, i32 3
  %104 = bitcast %struct.in_addr* %103 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %104, i8 0, i64 4, i1 false)
  %105 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %106 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %105, i32 0, i32 1
  %107 = load i64, i64* %106, align 8
  %108 = load i64, i64* @DNS_PROTOCOL_LLMNR, align 8
  %109 = icmp eq i64 %107, %108
  br i1 %109, label %110, label %115

110:                                              ; preds = %92
  %111 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %112 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %111, i32 0, i32 2
  %113 = load i32, i32* %112, align 8
  %114 = call i32 @manager_llmnr_ipv6_udp_fd(i32 %113)
  store i32 %114, i32* %10, align 4
  br label %120

115:                                              ; preds = %92
  %116 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %117 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %116, i32 0, i32 2
  %118 = load i32, i32* %117, align 8
  %119 = call i32 @manager_mdns_ipv6_fd(i32 %118)
  store i32 %119, i32* %10, align 4
  br label %120

120:                                              ; preds = %115, %110
  %121 = load i32, i32* %10, align 4
  %122 = icmp slt i32 %121, 0
  br i1 %122, label %123, label %125

123:                                              ; preds = %120
  %124 = load i32, i32* %10, align 4
  store i32 %124, i32* %5, align 4
  br label %155

125:                                              ; preds = %120
  %126 = load i32, i32* %9, align 4
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %133

128:                                              ; preds = %125
  %129 = load i32, i32* %10, align 4
  %130 = load i32, i32* @IPPROTO_IPV6, align 4
  %131 = load i32, i32* @IPV6_DROP_MEMBERSHIP, align 4
  %132 = call i64 @setsockopt(i32 %129, i32 %130, i32 %131, %struct.ipv6_mreq* %12, i32 16)
  br label %133

133:                                              ; preds = %128, %125
  %134 = load i32, i32* %10, align 4
  %135 = load i32, i32* @IPPROTO_IPV6, align 4
  %136 = load i32, i32* %9, align 4
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %138, label %140

138:                                              ; preds = %133
  %139 = load i32, i32* @IPV6_ADD_MEMBERSHIP, align 4
  br label %142

140:                                              ; preds = %133
  %141 = load i32, i32* @IPV6_DROP_MEMBERSHIP, align 4
  br label %142

142:                                              ; preds = %140, %138
  %143 = phi i32 [ %139, %138 ], [ %141, %140 ]
  %144 = call i64 @setsockopt(i32 %134, i32 %135, i32 %143, %struct.ipv6_mreq* %12, i32 16)
  %145 = icmp slt i64 %144, 0
  br i1 %145, label %146, label %149

146:                                              ; preds = %142
  %147 = load i32, i32* @errno, align 4
  %148 = sub nsw i32 0, %147
  store i32 %148, i32* %5, align 4
  br label %155

149:                                              ; preds = %142
  br label %153

150:                                              ; preds = %86
  %151 = load i32, i32* @EAFNOSUPPORT, align 4
  %152 = sub nsw i32 0, %151
  store i32 %152, i32* %5, align 4
  br label %155

153:                                              ; preds = %149
  br label %154

154:                                              ; preds = %153, %85
  store i32 0, i32* %5, align 4
  br label %155

155:                                              ; preds = %154, %150, %146, %123, %82, %57
  %156 = load i32, i32* %5, align 4
  ret i32 %156
}

declare dso_local i32 @assert(%struct.TYPE_4__*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @manager_llmnr_ipv4_udp_fd(i32) #1

declare dso_local i32 @manager_mdns_ipv4_fd(i32) #1

declare dso_local i64 @setsockopt(i32, i32, i32, %struct.ipv6_mreq*, i32) #1

declare dso_local i32 @manager_llmnr_ipv6_udp_fd(i32) #1

declare dso_local i32 @manager_mdns_ipv6_fd(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
