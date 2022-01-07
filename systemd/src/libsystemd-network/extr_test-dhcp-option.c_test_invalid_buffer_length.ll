; ModuleID = '/home/carl/AnghaBench/systemd/src/libsystemd-network/extr_test-dhcp-option.c_test_invalid_buffer_length.c'
source_filename = "/home/carl/AnghaBench/systemd/src/libsystemd-network/extr_test-dhcp-option.c_test_invalid_buffer_length.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_invalid_buffer_length to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_invalid_buffer_length() #0 {
  %1 = alloca i32, align 4
  %2 = call i32 @dhcp_option_parse(i32* %1, i32 0, i32* null, i32* null, i32* null)
  %3 = load i32, i32* @EINVAL, align 4
  %4 = sub nsw i32 0, %3
  %5 = icmp eq i32 %2, %4
  %6 = zext i1 %5 to i32
  %7 = call i32 @assert_se(i32 %6)
  %8 = call i32 @dhcp_option_parse(i32* %1, i32 3, i32* null, i32* null, i32* null)
  %9 = load i32, i32* @EINVAL, align 4
  %10 = sub nsw i32 0, %9
  %11 = icmp eq i32 %8, %10
  %12 = zext i1 %11 to i32
  %13 = call i32 @assert_se(i32 %12)
  ret void
}

declare dso_local i32 @assert_se(i32) #1

declare dso_local i32 @dhcp_option_parse(i32*, i32, i32*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
