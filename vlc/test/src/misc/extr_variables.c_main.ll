; ModuleID = '/home/carl/AnghaBench/vlc/test/src/misc/extr_variables.c_main.c'
source_filename = "/home/carl/AnghaBench/vlc/test/src/misc/extr_variables.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [28 x i8] c"Testing the core variables\0A\00", align 1
@test_defaults_nargs = common dso_local global i32 0, align 4
@test_defaults_args = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32*, align 8
  store i32 0, i32* %1, align 4
  %3 = call i32 (...) @test_init()
  %4 = call i32 @test_log(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %5 = load i32, i32* @test_defaults_nargs, align 4
  %6 = load i32, i32* @test_defaults_args, align 4
  %7 = call i32* @libvlc_new(i32 %5, i32 %6)
  store i32* %7, i32** %2, align 8
  %8 = load i32*, i32** %2, align 8
  %9 = icmp ne i32* %8, null
  %10 = zext i1 %9 to i32
  %11 = call i32 @assert(i32 %10)
  %12 = load i32*, i32** %2, align 8
  %13 = call i32 @test_variables(i32* %12)
  %14 = load i32*, i32** %2, align 8
  %15 = call i32 @libvlc_release(i32* %14)
  ret i32 0
}

declare dso_local i32 @test_init(...) #1

declare dso_local i32 @test_log(i8*) #1

declare dso_local i32* @libvlc_new(i32, i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @test_variables(i32*) #1

declare dso_local i32 @libvlc_release(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
