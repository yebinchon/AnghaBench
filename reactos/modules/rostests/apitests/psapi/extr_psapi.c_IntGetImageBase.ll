; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/apitests/psapi/extr_psapi.c_IntGetImageBase.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/apitests/psapi/extr_psapi.c_IntGetImageBase.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i32 }

@TH32CS_SNAPMODULE = common dso_local global i32 0, align 4
@INVALID_HANDLE_VALUE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32)* @IntGetImageBase to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @IntGetImageBase(i32 %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca %struct.TYPE_4__, align 4
  store i32 %0, i32* %3, align 4
  %6 = load i32, i32* @TH32CS_SNAPMODULE, align 4
  %7 = call i64 @CreateToolhelp32Snapshot(i32 %6, i32 0)
  store i64 %7, i64* %4, align 8
  %8 = load i64, i64* %4, align 8
  %9 = load i64, i64* @INVALID_HANDLE_VALUE, align 8
  %10 = icmp eq i64 %8, %9
  br i1 %10, label %11, label %12

11:                                               ; preds = %1
  store i32* null, i32** %2, align 8
  br label %42

12:                                               ; preds = %1
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i32 0, i32 0
  store i32 12, i32* %13, align 4
  %14 = load i64, i64* %4, align 8
  %15 = call i32 @Module32First(i64 %14, %struct.TYPE_4__* %5)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %20, label %17

17:                                               ; preds = %12
  %18 = load i64, i64* %4, align 8
  %19 = call i32 @CloseHandle(i64 %18)
  store i32* null, i32** %2, align 8
  br label %42

20:                                               ; preds = %12
  br label %21

21:                                               ; preds = %35, %20
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i32 0, i32 2
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* %3, align 4
  %25 = call i64 @lstrcmpiA(i32 %23, i32 %24)
  %26 = icmp eq i64 %25, 0
  br i1 %26, label %27, label %34

27:                                               ; preds = %21
  %28 = load i64, i64* %4, align 8
  %29 = call i32 @CloseHandle(i64 %28)
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = sext i32 %31 to i64
  %33 = inttoptr i64 %32 to i32*
  store i32* %33, i32** %2, align 8
  br label %42

34:                                               ; preds = %21
  br label %35

35:                                               ; preds = %34
  %36 = load i64, i64* %4, align 8
  %37 = call i64 @Module32Next(i64 %36, %struct.TYPE_4__* %5)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %21, label %39

39:                                               ; preds = %35
  %40 = load i64, i64* %4, align 8
  %41 = call i32 @CloseHandle(i64 %40)
  store i32* null, i32** %2, align 8
  br label %42

42:                                               ; preds = %39, %27, %17, %11
  %43 = load i32*, i32** %2, align 8
  ret i32* %43
}

declare dso_local i64 @CreateToolhelp32Snapshot(i32, i32) #1

declare dso_local i32 @Module32First(i64, %struct.TYPE_4__*) #1

declare dso_local i32 @CloseHandle(i64) #1

declare dso_local i64 @lstrcmpiA(i32, i32) #1

declare dso_local i64 @Module32Next(i64, %struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
