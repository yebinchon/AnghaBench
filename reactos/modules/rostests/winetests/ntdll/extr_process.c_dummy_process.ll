; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/ntdll/extr_process.c_dummy_process.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/ntdll/extr_process.c_dummy_process.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@EVENT_ALL_ACCESS = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [5 x i8] c"test\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @dummy_process to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dummy_process(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %4 = load i32, i32* @EVENT_ALL_ACCESS, align 4
  %5 = load i32, i32* @FALSE, align 4
  %6 = load i8*, i8** %2, align 8
  %7 = call i32 @OpenEventA(i32 %4, i32 %5, i8* %6)
  store i32 %7, i32* %3, align 4
  br label %8

8:                                                ; preds = %11, %1
  %9 = load i64, i64* @TRUE, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %16

11:                                               ; preds = %8
  %12 = load i32, i32* %3, align 4
  %13 = call i32 @SetEvent(i32 %12)
  %14 = call i32 @OutputDebugStringA(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %15 = call i32 @Sleep(i32 5)
  br label %8

16:                                               ; preds = %8
  ret void
}

declare dso_local i32 @OpenEventA(i32, i32, i8*) #1

declare dso_local i32 @SetEvent(i32) #1

declare dso_local i32 @OutputDebugStringA(i8*) #1

declare dso_local i32 @Sleep(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
