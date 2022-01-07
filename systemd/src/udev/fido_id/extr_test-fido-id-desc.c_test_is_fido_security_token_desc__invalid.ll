; ModuleID = '/home/carl/AnghaBench/systemd/src/udev/fido_id/extr_test-fido-id-desc.c_test_is_fido_security_token_desc__invalid.c'
source_filename = "/home/carl/AnghaBench/systemd/src/udev/fido_id/extr_test-fido-id-desc.c_test_is_fido_security_token_desc__invalid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@test_is_fido_security_token_desc__invalid.INVALID_HID_DESC_1 = internal constant [1 x i32] [i32 1], align 4
@test_is_fido_security_token_desc__invalid.INVALID_HID_DESC_2 = internal constant [2 x i32] [i32 2, i32 1], align 4
@test_is_fido_security_token_desc__invalid.INVALID_HID_DESC_3 = internal constant [4 x i32] [i32 3, i32 1, i32 2, i32 3], align 16
@test_is_fido_security_token_desc__invalid.INVALID_HID_DESC_4 = internal constant [1 x i32] [i32 254], align 4
@test_is_fido_security_token_desc__invalid.INVALID_HID_DESC_5 = internal constant [5 x i32] [i32 7, i32 1, i32 2, i32 3, i32 4], align 16
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_is_fido_security_token_desc__invalid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_is_fido_security_token_desc__invalid() #0 {
  %1 = call i64 @is_fido_security_token_desc(i32* getelementptr inbounds ([1 x i32], [1 x i32]* @test_is_fido_security_token_desc__invalid.INVALID_HID_DESC_1, i64 0, i64 0), i32 4)
  %2 = icmp slt i64 %1, 0
  %3 = zext i1 %2 to i32
  %4 = call i32 @assert_se(i32 %3)
  %5 = call i64 @is_fido_security_token_desc(i32* getelementptr inbounds ([2 x i32], [2 x i32]* @test_is_fido_security_token_desc__invalid.INVALID_HID_DESC_2, i64 0, i64 0), i32 8)
  %6 = icmp slt i64 %5, 0
  %7 = zext i1 %6 to i32
  %8 = call i32 @assert_se(i32 %7)
  %9 = call i64 @is_fido_security_token_desc(i32* getelementptr inbounds ([4 x i32], [4 x i32]* @test_is_fido_security_token_desc__invalid.INVALID_HID_DESC_3, i64 0, i64 0), i32 16)
  %10 = icmp slt i64 %9, 0
  %11 = zext i1 %10 to i32
  %12 = call i32 @assert_se(i32 %11)
  %13 = call i64 @is_fido_security_token_desc(i32* getelementptr inbounds ([1 x i32], [1 x i32]* @test_is_fido_security_token_desc__invalid.INVALID_HID_DESC_4, i64 0, i64 0), i32 4)
  %14 = icmp slt i64 %13, 0
  %15 = zext i1 %14 to i32
  %16 = call i32 @assert_se(i32 %15)
  %17 = call i64 @is_fido_security_token_desc(i32* getelementptr inbounds ([5 x i32], [5 x i32]* @test_is_fido_security_token_desc__invalid.INVALID_HID_DESC_5, i64 0, i64 0), i32 20)
  %18 = icmp slt i64 %17, 0
  %19 = zext i1 %18 to i32
  %20 = call i32 @assert_se(i32 %19)
  ret void
}

declare dso_local i32 @assert_se(i32) #1

declare dso_local i64 @is_fido_security_token_desc(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
