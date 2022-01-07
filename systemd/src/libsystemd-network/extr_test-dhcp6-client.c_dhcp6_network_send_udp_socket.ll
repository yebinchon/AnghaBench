; ModuleID = '/home/carl/AnghaBench/systemd/src/libsystemd-network/extr_test-dhcp6-client.c_dhcp6_network_send_udp_socket.c'
source_filename = "/home/carl/AnghaBench/systemd/src/libsystemd-network/extr_test-dhcp6-client.c_dhcp6_network_send_udp_socket.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.in6_addr = type { i32 }
%struct.TYPE_7__ = type { i32 }

@IN6ADDR_ALL_DHCP6_RELAY_AGENTS_AND_SERVERS_INIT = common dso_local global %struct.in6_addr zeroinitializer, align 4
@test_dhcp_fd = common dso_local global i32* null, align 8
@test_client_message_num = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dhcp6_network_send_udp_socket(i32 %0, %struct.in6_addr* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.in6_addr*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.in6_addr, align 4
  %10 = alloca %struct.TYPE_7__*, align 8
  store i32 %0, i32* %5, align 4
  store %struct.in6_addr* %1, %struct.in6_addr** %6, align 8
  store i8* %2, i8** %7, align 8
  store i64 %3, i64* %8, align 8
  %11 = bitcast %struct.in6_addr* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %11, i8* align 4 bitcast (%struct.in6_addr* @IN6ADDR_ALL_DHCP6_RELAY_AGENTS_AND_SERVERS_INIT to i8*), i64 4, i1 false)
  %12 = load i32, i32* %5, align 4
  %13 = load i32*, i32** @test_dhcp_fd, align 8
  %14 = getelementptr inbounds i32, i32* %13, i64 0
  %15 = load i32, i32* %14, align 4
  %16 = icmp eq i32 %12, %15
  %17 = zext i1 %16 to i32
  %18 = call i32 @assert_se(i32 %17)
  %19 = load %struct.in6_addr*, %struct.in6_addr** %6, align 8
  %20 = ptrtoint %struct.in6_addr* %19 to i32
  %21 = call i32 @assert_se(i32 %20)
  %22 = load i8*, i8** %7, align 8
  %23 = ptrtoint i8* %22 to i32
  %24 = call i32 @assert_se(i32 %23)
  %25 = load i64, i64* %8, align 8
  %26 = icmp ugt i64 %25, 8
  %27 = zext i1 %26 to i32
  %28 = call i32 @assert_se(i32 %27)
  %29 = load %struct.in6_addr*, %struct.in6_addr** %6, align 8
  %30 = call i32 @IN6_ARE_ADDR_EQUAL(%struct.in6_addr* %29, %struct.in6_addr* %9)
  %31 = call i32 @assert_se(i32 %30)
  %32 = load i8*, i8** %7, align 8
  %33 = bitcast i8* %32 to %struct.TYPE_7__*
  store %struct.TYPE_7__* %33, %struct.TYPE_7__** %10, align 8
  %34 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %35 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = and i32 %36, 16777215
  %38 = call i32 @assert_se(i32 %37)
  %39 = load i32, i32* @test_client_message_num, align 4
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %49

41:                                               ; preds = %4
  %42 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %43 = load i64, i64* %8, align 8
  %44 = call i32 @test_client_verify_information_request(%struct.TYPE_7__* %42, i64 %43)
  %45 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %46 = call i32 @test_client_send_reply(%struct.TYPE_7__* %45)
  %47 = load i32, i32* @test_client_message_num, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* @test_client_message_num, align 4
  br label %73

49:                                               ; preds = %4
  %50 = load i32, i32* @test_client_message_num, align 4
  %51 = icmp eq i32 %50, 1
  br i1 %51, label %52, label %60

52:                                               ; preds = %49
  %53 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %54 = load i64, i64* %8, align 8
  %55 = call i32 @test_client_verify_solicit(%struct.TYPE_7__* %53, i64 %54)
  %56 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %57 = call i32 @test_client_send_advertise(%struct.TYPE_7__* %56)
  %58 = load i32, i32* @test_client_message_num, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* @test_client_message_num, align 4
  br label %72

60:                                               ; preds = %49
  %61 = load i32, i32* @test_client_message_num, align 4
  %62 = icmp eq i32 %61, 2
  br i1 %62, label %63, label %71

63:                                               ; preds = %60
  %64 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %65 = load i64, i64* %8, align 8
  %66 = call i32 @test_client_verify_request(%struct.TYPE_7__* %64, i64 %65)
  %67 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %68 = call i32 @test_client_send_reply(%struct.TYPE_7__* %67)
  %69 = load i32, i32* @test_client_message_num, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* @test_client_message_num, align 4
  br label %71

71:                                               ; preds = %63, %60
  br label %72

72:                                               ; preds = %71, %52
  br label %73

73:                                               ; preds = %72, %41
  %74 = load i64, i64* %8, align 8
  %75 = trunc i64 %74 to i32
  ret i32 %75
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @assert_se(i32) #2

declare dso_local i32 @IN6_ARE_ADDR_EQUAL(%struct.in6_addr*, %struct.in6_addr*) #2

declare dso_local i32 @test_client_verify_information_request(%struct.TYPE_7__*, i64) #2

declare dso_local i32 @test_client_send_reply(%struct.TYPE_7__*) #2

declare dso_local i32 @test_client_verify_solicit(%struct.TYPE_7__*, i64) #2

declare dso_local i32 @test_client_send_advertise(%struct.TYPE_7__*) #2

declare dso_local i32 @test_client_verify_request(%struct.TYPE_7__*, i64) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
