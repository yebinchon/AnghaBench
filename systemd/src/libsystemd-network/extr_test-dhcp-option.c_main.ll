; ModuleID = '/home/carl/AnghaBench/systemd/src/libsystemd-network/extr_test-dhcp-option.c_main.c'
source_filename = "/home/carl/AnghaBench/systemd/src/libsystemd-network/extr_test-dhcp-option.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@option_tests = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %7 = call i32 (...) @test_invalid_buffer_length()
  %8 = call i32 (...) @test_message_init()
  %9 = call i32 @test_options(i32* null)
  store i32 0, i32* %6, align 4
  br label %10

10:                                               ; preds = %21, %2
  %11 = load i32, i32* %6, align 4
  %12 = load i32*, i32** @option_tests, align 8
  %13 = call i32 @ELEMENTSOF(i32* %12)
  %14 = icmp ult i32 %11, %13
  br i1 %14, label %15, label %24

15:                                               ; preds = %10
  %16 = load i32*, i32** @option_tests, align 8
  %17 = load i32, i32* %6, align 4
  %18 = zext i32 %17 to i64
  %19 = getelementptr inbounds i32, i32* %16, i64 %18
  %20 = call i32 @test_options(i32* %19)
  br label %21

21:                                               ; preds = %15
  %22 = load i32, i32* %6, align 4
  %23 = add i32 %22, 1
  store i32 %23, i32* %6, align 4
  br label %10

24:                                               ; preds = %10
  %25 = call i32 (...) @test_option_set()
  ret i32 0
}

declare dso_local i32 @test_invalid_buffer_length(...) #1

declare dso_local i32 @test_message_init(...) #1

declare dso_local i32 @test_options(i32*) #1

declare dso_local i32 @ELEMENTSOF(i32*) #1

declare dso_local i32 @test_option_set(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
