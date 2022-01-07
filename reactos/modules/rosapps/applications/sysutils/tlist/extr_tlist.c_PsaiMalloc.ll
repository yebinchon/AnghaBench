; ModuleID = '/home/carl/AnghaBench/reactos/modules/rosapps/applications/sysutils/tlist/extr_tlist.c_PsaiMalloc.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rosapps/applications/sysutils/tlist/extr_tlist.c_PsaiMalloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MEM_COMMIT = common dso_local global i32 0, align 4
@PAGE_READWRITE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @PsaiMalloc(i32 %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8* null, i8** %4, align 8
  %6 = call i32 (...) @NtCurrentProcess()
  %7 = load i32, i32* @MEM_COMMIT, align 4
  %8 = load i32, i32* @PAGE_READWRITE, align 4
  %9 = call i32 @NtAllocateVirtualMemory(i32 %6, i8** %4, i32 0, i32* %3, i32 %7, i32 %8)
  store i32 %9, i32* %5, align 4
  %10 = load i32, i32* %5, align 4
  %11 = call i64 @NT_SUCCESS(i32 %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %1
  %14 = load i8*, i8** %4, align 8
  store i8* %14, i8** %2, align 8
  br label %16

15:                                               ; preds = %1
  store i8* null, i8** %2, align 8
  br label %16

16:                                               ; preds = %15, %13
  %17 = load i8*, i8** %2, align 8
  ret i8* %17
}

declare dso_local i32 @NtAllocateVirtualMemory(i32, i8**, i32, i32*, i32, i32) #1

declare dso_local i32 @NtCurrentProcess(...) #1

declare dso_local i64 @NT_SUCCESS(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
