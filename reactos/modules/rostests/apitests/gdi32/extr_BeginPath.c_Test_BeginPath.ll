; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/apitests/gdi32/extr_BeginPath.c_Test_BeginPath.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/apitests/gdi32/extr_BeginPath.c_Test_BeginPath.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [35 x i8] c"BeginPath(0) succeeded, ret == %d\0A\00", align 1
@ERROR_INVALID_HANDLE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"GetLastError() == %ld\0A\00", align 1
@.str.2 = private unnamed_addr constant [34 x i8] c"BeginPath(hdc) failed, ret == %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @Test_BeginPath() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = call i32 @SetLastError(i32 0)
  %4 = call i32 @BeginPath(i32 0)
  store i32 %4, i32* %2, align 4
  %5 = load i32, i32* %2, align 4
  %6 = icmp eq i32 %5, 0
  %7 = zext i1 %6 to i32
  %8 = load i32, i32* %2, align 4
  %9 = call i32 @ok(i32 %7, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %8)
  %10 = call i32 (...) @GetLastError()
  %11 = load i32, i32* @ERROR_INVALID_HANDLE, align 4
  %12 = icmp eq i32 %10, %11
  %13 = zext i1 %12 to i32
  %14 = call i32 (...) @GetLastError()
  %15 = call i32 @ok(i32 %13, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 %14)
  %16 = call i32 @CreateCompatibleDC(i32* null)
  store i32 %16, i32* %1, align 4
  %17 = call i32 @SetLastError(i32 0)
  %18 = load i32, i32* %1, align 4
  %19 = call i32 @BeginPath(i32 %18)
  store i32 %19, i32* %2, align 4
  %20 = load i32, i32* %2, align 4
  %21 = icmp eq i32 %20, 1
  %22 = zext i1 %21 to i32
  %23 = load i32, i32* %2, align 4
  %24 = call i32 @ok(i32 %22, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0), i32 %23)
  %25 = call i32 (...) @GetLastError()
  %26 = icmp eq i32 %25, 0
  %27 = zext i1 %26 to i32
  %28 = call i32 (...) @GetLastError()
  %29 = call i32 @ok(i32 %27, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 %28)
  %30 = load i32, i32* %1, align 4
  %31 = call i32 @DeleteDC(i32 %30)
  ret void
}

declare dso_local i32 @SetLastError(i32) #1

declare dso_local i32 @BeginPath(i32) #1

declare dso_local i32 @ok(i32, i8*, i32) #1

declare dso_local i32 @GetLastError(...) #1

declare dso_local i32 @CreateCompatibleDC(i32*) #1

declare dso_local i32 @DeleteDC(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
