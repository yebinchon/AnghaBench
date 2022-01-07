; ModuleID = '/home/carl/AnghaBench/systemd/src/test/extr_test-socket-util.c_main.c'
source_filename = "/home/carl/AnghaBench/systemd/src/test/extr_test-socket-util.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@LOG_DEBUG = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %6 = load i32, i32* @LOG_DEBUG, align 4
  %7 = call i32 @test_setup_logging(i32 %6)
  %8 = call i32 (...) @test_ifname_valid()
  %9 = call i32 (...) @test_socket_address_parse()
  %10 = call i32 (...) @test_socket_print_unix()
  %11 = call i32 (...) @test_socket_address_parse_netlink()
  %12 = call i32 (...) @test_socket_address_equal()
  %13 = call i32 (...) @test_socket_address_get_path()
  %14 = call i32 (...) @test_socket_address_is()
  %15 = call i32 (...) @test_socket_address_is_netlink()
  %16 = call i32 (...) @test_in_addr_is_null()
  %17 = call i32 (...) @test_in_addr_prefix_intersect()
  %18 = call i32 (...) @test_in_addr_prefix_next()
  %19 = call i32 (...) @test_in_addr_to_string()
  %20 = call i32 (...) @test_in_addr_ifindex_to_string()
  %21 = call i32 (...) @test_in_addr_ifindex_from_string_auto()
  %22 = call i32 (...) @test_sockaddr_equal()
  %23 = call i32 (...) @test_sockaddr_un_len()
  %24 = call i32 (...) @test_in_addr_is_multicast()
  %25 = call i32 (...) @test_getpeercred_getpeergroups()
  %26 = call i32 (...) @test_passfd_read()
  %27 = call i32 (...) @test_passfd_contents_read()
  %28 = call i32 (...) @test_receive_nopassfd()
  %29 = call i32 (...) @test_send_nodata_nofd()
  %30 = call i32 (...) @test_send_emptydata()
  %31 = call i32 (...) @test_flush_accept()
  ret i32 0
}

declare dso_local i32 @test_setup_logging(i32) #1

declare dso_local i32 @test_ifname_valid(...) #1

declare dso_local i32 @test_socket_address_parse(...) #1

declare dso_local i32 @test_socket_print_unix(...) #1

declare dso_local i32 @test_socket_address_parse_netlink(...) #1

declare dso_local i32 @test_socket_address_equal(...) #1

declare dso_local i32 @test_socket_address_get_path(...) #1

declare dso_local i32 @test_socket_address_is(...) #1

declare dso_local i32 @test_socket_address_is_netlink(...) #1

declare dso_local i32 @test_in_addr_is_null(...) #1

declare dso_local i32 @test_in_addr_prefix_intersect(...) #1

declare dso_local i32 @test_in_addr_prefix_next(...) #1

declare dso_local i32 @test_in_addr_to_string(...) #1

declare dso_local i32 @test_in_addr_ifindex_to_string(...) #1

declare dso_local i32 @test_in_addr_ifindex_from_string_auto(...) #1

declare dso_local i32 @test_sockaddr_equal(...) #1

declare dso_local i32 @test_sockaddr_un_len(...) #1

declare dso_local i32 @test_in_addr_is_multicast(...) #1

declare dso_local i32 @test_getpeercred_getpeergroups(...) #1

declare dso_local i32 @test_passfd_read(...) #1

declare dso_local i32 @test_passfd_contents_read(...) #1

declare dso_local i32 @test_receive_nopassfd(...) #1

declare dso_local i32 @test_send_nodata_nofd(...) #1

declare dso_local i32 @test_send_emptydata(...) #1

declare dso_local i32 @test_flush_accept(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
