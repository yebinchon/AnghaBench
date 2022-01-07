; ModuleID = '/home/carl/AnghaBench/reactos/modules/rosapps/applications/sysutils/utils/pice/module/extr_hardware.c_PutChar.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rosapps/applications/sysutils/utils/pice/module/extr_hardware.c_PutChar.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @PutChar(i64* %0, i64 %1, i64 %2) #0 {
  %4 = alloca i64*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store i64* %0, i64** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  %8 = call i32 (...) @Acquire_Output_Lock()
  store i64 0, i64* %7, align 8
  br label %9

9:                                                ; preds = %40, %3
  %10 = load i64*, i64** %4, align 8
  %11 = load i64, i64* %7, align 8
  %12 = getelementptr inbounds i64, i64* %10, i64 %11
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %43

15:                                               ; preds = %9
  %16 = load i64*, i64** %4, align 8
  %17 = load i64, i64* %7, align 8
  %18 = getelementptr inbounds i64, i64* %16, i64 %17
  %19 = load i64, i64* %18, align 8
  %20 = trunc i64 %19 to i32
  %21 = icmp sge i32 %20, 32
  br i1 %21, label %22, label %39

22:                                               ; preds = %15
  %23 = load i64*, i64** %4, align 8
  %24 = load i64, i64* %7, align 8
  %25 = getelementptr inbounds i64, i64* %23, i64 %24
  %26 = load i64, i64* %25, align 8
  %27 = trunc i64 %26 to i32
  %28 = icmp slt i32 %27, 128
  br i1 %28, label %29, label %39

29:                                               ; preds = %22
  %30 = load i64, i64* %5, align 8
  %31 = load i64, i64* %7, align 8
  %32 = add i64 %30, %31
  %33 = load i64, i64* %6, align 8
  %34 = load i64*, i64** %4, align 8
  %35 = load i64, i64* %7, align 8
  %36 = getelementptr inbounds i64, i64* %34, i64 %35
  %37 = load i64, i64* %36, align 8
  %38 = call i32 @PrintGraf(i64 %32, i64 %33, i64 %37)
  br label %39

39:                                               ; preds = %29, %22, %15
  br label %40

40:                                               ; preds = %39
  %41 = load i64, i64* %7, align 8
  %42 = add i64 %41, 1
  store i64 %42, i64* %7, align 8
  br label %9

43:                                               ; preds = %9
  %44 = call i32 (...) @Flush()
  %45 = call i32 (...) @Release_Output_Lock()
  ret void
}

declare dso_local i32 @Acquire_Output_Lock(...) #1

declare dso_local i32 @PrintGraf(i64, i64, i64) #1

declare dso_local i32 @Flush(...) #1

declare dso_local i32 @Release_Output_Lock(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
