; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/apitests/win32nt/ntuser/extr_NtUserCallOneParam.c_Test_OneParamRoutine_CreateEmptyCurObject.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/apitests/win32nt/ntuser/extr_NtUserCallOneParam.c_Test_OneParamRoutine_CreateEmptyCurObject.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@_ONEPARAM_ROUTINE_CREATEEMPTYCUROBJECT = common dso_local global i32 0, align 4
@TRUE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @Test_OneParamRoutine_CreateEmptyCurObject() #0 {
  %1 = alloca i32*, align 8
  %2 = load i32, i32* @_ONEPARAM_ROUTINE_CREATEEMPTYCUROBJECT, align 4
  %3 = call i64 @NtUserCallOneParam(i32 0, i32 %2)
  %4 = inttoptr i64 %3 to i32*
  store i32* %4, i32** %1, align 8
  %5 = load i32*, i32** %1, align 8
  %6 = icmp ne i32* %5, null
  %7 = zext i1 %6 to i32
  %8 = call i32 @TEST(i32 %7)
  %9 = load i32*, i32** %1, align 8
  %10 = call i64 @NtUserDestroyCursor(i32* %9, i32 0)
  %11 = load i64, i64* @TRUE, align 8
  %12 = icmp eq i64 %10, %11
  %13 = zext i1 %12 to i32
  %14 = call i32 @TEST(i32 %13)
  %15 = load i32, i32* @_ONEPARAM_ROUTINE_CREATEEMPTYCUROBJECT, align 4
  %16 = call i64 @NtUserCallOneParam(i32 -559038737, i32 %15)
  %17 = inttoptr i64 %16 to i32*
  store i32* %17, i32** %1, align 8
  %18 = load i32*, i32** %1, align 8
  %19 = icmp ne i32* %18, null
  %20 = zext i1 %19 to i32
  %21 = call i32 @TEST(i32 %20)
  %22 = load i32*, i32** %1, align 8
  %23 = call i64 @NtUserDestroyCursor(i32* %22, i32 -1163005939)
  %24 = load i64, i64* @TRUE, align 8
  %25 = icmp eq i64 %23, %24
  %26 = zext i1 %25 to i32
  %27 = call i32 @TEST(i32 %26)
  ret void
}

declare dso_local i64 @NtUserCallOneParam(i32, i32) #1

declare dso_local i32 @TEST(i32) #1

declare dso_local i64 @NtUserDestroyCursor(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
