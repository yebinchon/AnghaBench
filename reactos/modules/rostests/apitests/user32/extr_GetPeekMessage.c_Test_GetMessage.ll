; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/apitests/user32/extr_GetPeekMessage.c_Test_GetMessage.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/apitests/user32/extr_GetPeekMessage.c_Test_GetMessage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@DNS_ERROR_RCODE_NXRRSET = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@ERROR_INVALID_WINDOW_HANDLE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [22 x i8] c"GetLastError() = %lu\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @Test_GetMessage(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %4 = load i32, i32* @DNS_ERROR_RCODE_NXRRSET, align 4
  %5 = call i32 @SetLastError(i32 %4)
  %6 = load i32, i32* %2, align 4
  %7 = call i32 @GetMessage(i32* %3, i32 %6, i32 0, i32 0)
  %8 = icmp eq i32 %7, -1
  %9 = zext i1 %8 to i32
  %10 = call i32 (i32, i8*, ...) @ok(i32 %9, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %11 = call i64 (...) @GetLastError()
  %12 = load i64, i64* @ERROR_INVALID_WINDOW_HANDLE, align 8
  %13 = icmp eq i64 %11, %12
  %14 = zext i1 %13 to i32
  %15 = call i64 (...) @GetLastError()
  %16 = call i32 (i32, i8*, ...) @ok(i32 %14, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i64 %15)
  ret void
}

declare dso_local i32 @SetLastError(i32) #1

declare dso_local i32 @ok(i32, i8*, ...) #1

declare dso_local i32 @GetMessage(i32*, i32, i32, i32) #1

declare dso_local i64 @GetLastError(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
