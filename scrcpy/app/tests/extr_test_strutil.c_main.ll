; ModuleID = '/home/carl/AnghaBench/scrcpy/app/tests/extr_test_strutil.c_main.c'
source_filename = "/home/carl/AnghaBench/scrcpy/app/tests/extr_test_strutil.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  %2 = call i32 (...) @test_xstrncpy_simple()
  %3 = call i32 (...) @test_xstrncpy_just_fit()
  %4 = call i32 (...) @test_xstrncpy_truncated()
  %5 = call i32 (...) @test_xstrjoin_simple()
  %6 = call i32 (...) @test_xstrjoin_just_fit()
  %7 = call i32 (...) @test_xstrjoin_truncated_in_token()
  %8 = call i32 (...) @test_xstrjoin_truncated_before_sep()
  %9 = call i32 (...) @test_xstrjoin_truncated_after_sep()
  %10 = call i32 (...) @test_utf8_truncate()
  ret i32 0
}

declare dso_local i32 @test_xstrncpy_simple(...) #1

declare dso_local i32 @test_xstrncpy_just_fit(...) #1

declare dso_local i32 @test_xstrncpy_truncated(...) #1

declare dso_local i32 @test_xstrjoin_simple(...) #1

declare dso_local i32 @test_xstrjoin_just_fit(...) #1

declare dso_local i32 @test_xstrjoin_truncated_in_token(...) #1

declare dso_local i32 @test_xstrjoin_truncated_before_sep(...) #1

declare dso_local i32 @test_xstrjoin_truncated_after_sep(...) #1

declare dso_local i32 @test_utf8_truncate(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
