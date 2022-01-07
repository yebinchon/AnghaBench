; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/apitests/advapi32/extr_CreateService.c_DestroyService.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/apitests/advapi32/extr_CreateService.c_DestroyService.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@DNS_ERROR_RCODE_NXRRSET = common dso_local global i64 0, align 8
@TRUE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [40 x i8] c"DeleteService returned %ld, expected 1\0A\00", align 1
@ERROR_SUCCESS = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [38 x i8] c"DeleteService GetLastError()=0x%08lx\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @DestroyService to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @DestroyService(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  store i32 %0, i32* %2, align 4
  %4 = load i32, i32* %2, align 4
  %5 = icmp ne i32 %4, 0
  br i1 %5, label %7, label %6

6:                                                ; preds = %1
  br label %32

7:                                                ; preds = %1
  %8 = load i64, i64* @DNS_ERROR_RCODE_NXRRSET, align 8
  %9 = call i32 @SetLastError(i64 %8)
  %10 = load i32, i32* %2, align 4
  %11 = call i64 @DeleteService(i32 %10)
  store i64 %11, i64* %3, align 8
  %12 = load i64, i64* %3, align 8
  %13 = load i64, i64* @TRUE, align 8
  %14 = icmp eq i64 %12, %13
  %15 = zext i1 %14 to i32
  %16 = load i64, i64* %3, align 8
  %17 = call i32 @ok(i32 %15, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i64 %16)
  %18 = call i64 (...) @GetLastError()
  %19 = load i64, i64* @DNS_ERROR_RCODE_NXRRSET, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %25, label %21

21:                                               ; preds = %7
  %22 = call i64 (...) @GetLastError()
  %23 = load i64, i64* @ERROR_SUCCESS, align 8
  %24 = icmp eq i64 %22, %23
  br label %25

25:                                               ; preds = %21, %7
  %26 = phi i1 [ true, %7 ], [ %24, %21 ]
  %27 = zext i1 %26 to i32
  %28 = call i64 (...) @GetLastError()
  %29 = call i32 @ok(i32 %27, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0), i64 %28)
  %30 = load i32, i32* %2, align 4
  %31 = call i32 @CloseServiceHandle(i32 %30)
  br label %32

32:                                               ; preds = %25, %6
  ret void
}

declare dso_local i32 @SetLastError(i64) #1

declare dso_local i64 @DeleteService(i32) #1

declare dso_local i32 @ok(i32, i8*, i64) #1

declare dso_local i64 @GetLastError(...) #1

declare dso_local i32 @CloseServiceHandle(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
