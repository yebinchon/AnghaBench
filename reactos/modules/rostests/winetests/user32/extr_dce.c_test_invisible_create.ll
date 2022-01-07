; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/user32/extr_dce.c_test_invisible_create.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/user32/extr_dce.c_test_invisible_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [12 x i8] c"owndc_class\00", align 1
@WS_OVERLAPPED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"expected owndc dcs to match\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_invisible_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_invisible_create() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = load i32, i32* @WS_OVERLAPPED, align 4
  %5 = call i32 @GetModuleHandleA(i32 0)
  %6 = call i32 @CreateWindowA(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32* null, i32 %4, i32 0, i32 200, i32 100, i32 100, i32 0, i32 0, i32 %5, i32* null)
  store i32 %6, i32* %1, align 4
  %7 = load i32, i32* %1, align 4
  %8 = call i64 @GetDC(i32 %7)
  store i64 %8, i64* %2, align 8
  %9 = load i32, i32* %1, align 4
  %10 = call i64 @GetDC(i32 %9)
  store i64 %10, i64* %3, align 8
  %11 = load i64, i64* %2, align 8
  %12 = load i64, i64* %3, align 8
  %13 = icmp eq i64 %11, %12
  %14 = zext i1 %13 to i32
  %15 = call i32 @ok(i32 %14, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  %16 = load i32, i32* %1, align 4
  %17 = load i64, i64* %3, align 8
  %18 = call i32 @ReleaseDC(i32 %16, i64 %17)
  %19 = load i32, i32* %1, align 4
  %20 = load i64, i64* %2, align 8
  %21 = call i32 @ReleaseDC(i32 %19, i64 %20)
  %22 = load i32, i32* %1, align 4
  %23 = call i32 @DestroyWindow(i32 %22)
  ret void
}

declare dso_local i32 @CreateWindowA(i8*, i32*, i32, i32, i32, i32, i32, i32, i32, i32, i32*) #1

declare dso_local i32 @GetModuleHandleA(i32) #1

declare dso_local i64 @GetDC(i32) #1

declare dso_local i32 @ok(i32, i8*) #1

declare dso_local i32 @ReleaseDC(i32, i64) #1

declare dso_local i32 @DestroyWindow(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
