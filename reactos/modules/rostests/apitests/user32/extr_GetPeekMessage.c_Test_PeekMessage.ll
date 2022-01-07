; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/apitests/user32/extr_GetPeekMessage.c_Test_PeekMessage.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/apitests/user32/extr_GetPeekMessage.c_Test_PeekMessage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@DNS_ERROR_RCODE_NXRRSET = common dso_local global i32 0, align 4
@PM_NOREMOVE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@ERROR_INVALID_WINDOW_HANDLE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [22 x i8] c"GetLastError() = %lu\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @Test_PeekMessage(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %4 = load i32, i32* @DNS_ERROR_RCODE_NXRRSET, align 4
  %5 = call i32 @SetLastError(i32 %4)
  %6 = load i32, i32* %2, align 4
  %7 = load i32, i32* @PM_NOREMOVE, align 4
  %8 = call i64 @PeekMessage(i32* %3, i32 %6, i32 0, i32 0, i32 %7)
  %9 = icmp eq i64 %8, 0
  %10 = zext i1 %9 to i32
  %11 = call i32 (i32, i8*, ...) @ok(i32 %10, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %12 = call i64 (...) @GetLastError()
  %13 = load i64, i64* @ERROR_INVALID_WINDOW_HANDLE, align 8
  %14 = icmp eq i64 %12, %13
  %15 = zext i1 %14 to i32
  %16 = call i64 (...) @GetLastError()
  %17 = call i32 (i32, i8*, ...) @ok(i32 %15, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i64 %16)
  ret void
}

declare dso_local i32 @SetLastError(i32) #1

declare dso_local i32 @ok(i32, i8*, ...) #1

declare dso_local i64 @PeekMessage(i32*, i32, i32, i32, i32) #1

declare dso_local i64 @GetLastError(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
