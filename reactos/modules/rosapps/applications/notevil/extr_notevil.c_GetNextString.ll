; ModuleID = '/home/carl/AnghaBench/reactos/modules/rosapps/applications/notevil/extr_notevil.c_GetNextString.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rosapps/applications/notevil/extr_notevil.c_GetNextString.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@RES_LAST_INDEX = common dso_local global i64 0, align 8
@RES_FIRST_INDEX = common dso_local global i64 0, align 8
@myself = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @GetNextString(i32 %0, i32 %1, i64* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64*, align 8
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i64* %2, i64** %7, align 8
  %8 = load i64, i64* @RES_LAST_INDEX, align 8
  %9 = load i64*, i64** %7, align 8
  %10 = load i64, i64* %9, align 8
  %11 = icmp eq i64 %8, %10
  br i1 %11, label %12, label %15

12:                                               ; preds = %3
  %13 = load i64, i64* @RES_FIRST_INDEX, align 8
  %14 = load i64*, i64** %7, align 8
  store i64 %13, i64* %14, align 8
  br label %19

15:                                               ; preds = %3
  %16 = load i64*, i64** %7, align 8
  %17 = load i64, i64* %16, align 8
  %18 = add nsw i64 %17, 1
  store i64 %18, i64* %16, align 8
  br label %19

19:                                               ; preds = %15, %12
  %20 = load i32, i32* @myself, align 4
  %21 = load i64*, i64** %7, align 8
  %22 = load i64, i64* %21, align 8
  %23 = load i32, i32* %5, align 4
  %24 = load i32, i32* %6, align 4
  %25 = call i32 @LoadStringW(i32 %20, i64 %22, i32 %23, i32 %24)
  %26 = load i32, i32* %4, align 4
  ret i32 %26
}

declare dso_local i32 @LoadStringW(i32, i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
