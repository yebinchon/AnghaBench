; ModuleID = '/home/carl/AnghaBench/systemd/src/test/extr_test-dns-domain.c_main.c'
source_filename = "/home/carl/AnghaBench/systemd/src/test/extr_test-dns-domain.c_main.c"
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
  %8 = call i32 (...) @test_dns_label_unescape()
  %9 = call i32 (...) @test_dns_label_unescape_suffix()
  %10 = call i32 (...) @test_dns_label_escape()
  %11 = call i32 (...) @test_dns_name_normalize()
  %12 = call i32 (...) @test_dns_name_equal()
  %13 = call i32 (...) @test_dns_name_endswith()
  %14 = call i32 (...) @test_dns_name_startswith()
  %15 = call i32 (...) @test_dns_name_between()
  %16 = call i32 (...) @test_dns_name_is_root()
  %17 = call i32 (...) @test_dns_name_is_single_label()
  %18 = call i32 (...) @test_dns_name_reverse()
  %19 = call i32 (...) @test_dns_name_concat()
  %20 = call i32 (...) @test_dns_name_is_valid()
  %21 = call i32 (...) @test_dns_name_to_wire_format()
  %22 = call i32 (...) @test_dns_service_name_is_valid()
  %23 = call i32 (...) @test_dns_srv_type_is_valid()
  %24 = call i32 (...) @test_dnssd_srv_type_is_valid()
  %25 = call i32 (...) @test_dns_service_join()
  %26 = call i32 (...) @test_dns_service_split()
  %27 = call i32 (...) @test_dns_name_change_suffix()
  %28 = call i32 (...) @test_dns_name_suffix()
  %29 = call i32 (...) @test_dns_name_count_labels()
  %30 = call i32 (...) @test_dns_name_equal_skip()
  %31 = call i32 (...) @test_dns_name_compare_func()
  %32 = call i32 (...) @test_dns_name_common_suffix()
  %33 = call i32 (...) @test_dns_name_apply_idna()
  %34 = call i32 (...) @test_dns_name_is_valid_or_address()
  ret i32 0
}

declare dso_local i32 @test_setup_logging(i32) #1

declare dso_local i32 @test_dns_label_unescape(...) #1

declare dso_local i32 @test_dns_label_unescape_suffix(...) #1

declare dso_local i32 @test_dns_label_escape(...) #1

declare dso_local i32 @test_dns_name_normalize(...) #1

declare dso_local i32 @test_dns_name_equal(...) #1

declare dso_local i32 @test_dns_name_endswith(...) #1

declare dso_local i32 @test_dns_name_startswith(...) #1

declare dso_local i32 @test_dns_name_between(...) #1

declare dso_local i32 @test_dns_name_is_root(...) #1

declare dso_local i32 @test_dns_name_is_single_label(...) #1

declare dso_local i32 @test_dns_name_reverse(...) #1

declare dso_local i32 @test_dns_name_concat(...) #1

declare dso_local i32 @test_dns_name_is_valid(...) #1

declare dso_local i32 @test_dns_name_to_wire_format(...) #1

declare dso_local i32 @test_dns_service_name_is_valid(...) #1

declare dso_local i32 @test_dns_srv_type_is_valid(...) #1

declare dso_local i32 @test_dnssd_srv_type_is_valid(...) #1

declare dso_local i32 @test_dns_service_join(...) #1

declare dso_local i32 @test_dns_service_split(...) #1

declare dso_local i32 @test_dns_name_change_suffix(...) #1

declare dso_local i32 @test_dns_name_suffix(...) #1

declare dso_local i32 @test_dns_name_count_labels(...) #1

declare dso_local i32 @test_dns_name_equal_skip(...) #1

declare dso_local i32 @test_dns_name_compare_func(...) #1

declare dso_local i32 @test_dns_name_common_suffix(...) #1

declare dso_local i32 @test_dns_name_apply_idna(...) #1

declare dso_local i32 @test_dns_name_is_valid_or_address(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
