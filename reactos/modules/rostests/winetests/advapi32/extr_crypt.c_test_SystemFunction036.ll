; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/advapi32/extr_crypt.c_test_SystemFunction036.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/advapi32/extr_crypt.c_test_SystemFunction036.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@TRUE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [51 x i8] c"Expected SystemFunction036 to return TRUE, got %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_SystemFunction036 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_SystemFunction036() #0 {
  %1 = alloca i64, align 8
  %2 = alloca i32, align 4
  %3 = call i64 @pSystemFunction036(i32* null, i32 0)
  store i64 %3, i64* %1, align 8
  %4 = load i64, i64* %1, align 8
  %5 = load i64, i64* @TRUE, align 8
  %6 = icmp eq i64 %4, %5
  %7 = zext i1 %6 to i32
  %8 = load i64, i64* %1, align 8
  %9 = call i32 @ok(i32 %7, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0), i64 %8)
  %10 = call i64 @pSystemFunction036(i32* %2, i32 0)
  store i64 %10, i64* %1, align 8
  %11 = load i64, i64* %1, align 8
  %12 = load i64, i64* @TRUE, align 8
  %13 = icmp eq i64 %11, %12
  %14 = zext i1 %13 to i32
  %15 = load i64, i64* %1, align 8
  %16 = call i32 @ok(i32 %14, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0), i64 %15)
  %17 = call i64 @pSystemFunction036(i32* %2, i32 4)
  store i64 %17, i64* %1, align 8
  %18 = load i64, i64* %1, align 8
  %19 = load i64, i64* @TRUE, align 8
  %20 = icmp eq i64 %18, %19
  %21 = zext i1 %20 to i32
  %22 = load i64, i64* %1, align 8
  %23 = call i32 @ok(i32 %21, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0), i64 %22)
  ret void
}

declare dso_local i64 @pSystemFunction036(i32*, i32) #1

declare dso_local i32 @ok(i32, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
