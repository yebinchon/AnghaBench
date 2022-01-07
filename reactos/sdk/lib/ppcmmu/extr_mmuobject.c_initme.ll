; ModuleID = '/home/carl/AnghaBench/reactos/sdk/lib/ppcmmu/extr_mmuobject.c_initme.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/lib/ppcmmu/extr_mmuobject.c_initme.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@HTABSIZ = common dso_local global i32 0, align 4
@HTABORG = common dso_local global i64 0, align 8
@TakeException = common dso_local global i64 0, align 8
@callback = common dso_local global i64* null, align 8
@fpenable = common dso_local global i64 0, align 8
@ignore = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @initme() #0 {
  %1 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  br label %2

2:                                                ; preds = %15, %0
  %3 = load i32, i32* %1, align 4
  %4 = sext i32 %3 to i64
  %5 = load i32, i32* @HTABSIZ, align 4
  %6 = sext i32 %5 to i64
  %7 = udiv i64 %6, 4
  %8 = icmp ult i64 %4, %7
  br i1 %8, label %9, label %18

9:                                                ; preds = %2
  %10 = load i64, i64* @HTABORG, align 8
  %11 = inttoptr i64 %10 to i32*
  %12 = load i32, i32* %1, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds i32, i32* %11, i64 %13
  store i32 0, i32* %14, align 4
  br label %15

15:                                               ; preds = %9
  %16 = load i32, i32* %1, align 4
  %17 = add nsw i32 %16, 1
  store i32 %17, i32* %1, align 4
  br label %2

18:                                               ; preds = %2
  store i32 0, i32* %1, align 4
  br label %19

19:                                               ; preds = %34, %18
  %20 = load i32, i32* %1, align 4
  %21 = icmp slt i32 %20, 30
  br i1 %21, label %22, label %37

22:                                               ; preds = %19
  %23 = load i64, i64* @TakeException, align 8
  %24 = load i64*, i64** @callback, align 8
  %25 = load i32, i32* %1, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i64, i64* %24, i64 %26
  store i64 %23, i64* %27, align 8
  %28 = load i32, i32* %1, align 4
  %29 = icmp ne i32 %28, 1
  br i1 %29, label %30, label %33

30:                                               ; preds = %22
  %31 = load i32, i32* %1, align 4
  %32 = call i32 @copy_trap_handler(i32 %31)
  br label %33

33:                                               ; preds = %30, %22
  br label %34

34:                                               ; preds = %33
  %35 = load i32, i32* %1, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %1, align 4
  br label %19

37:                                               ; preds = %19
  %38 = load i64*, i64** @callback, align 8
  %39 = getelementptr inbounds i64, i64* %38, i64 5
  store i64 0, i64* %39, align 8
  %40 = load i64, i64* @TakeException, align 8
  %41 = load i64*, i64** @callback, align 8
  %42 = getelementptr inbounds i64, i64* %41, i64 6
  store i64 %40, i64* %42, align 8
  %43 = load i64, i64* @fpenable, align 8
  %44 = load i64*, i64** @callback, align 8
  %45 = getelementptr inbounds i64, i64* %44, i64 8
  store i64 %43, i64* %45, align 8
  %46 = load i64, i64* @ignore, align 8
  %47 = load i64*, i64** @callback, align 8
  %48 = getelementptr inbounds i64, i64* %47, i64 9
  store i64 %46, i64* %48, align 8
  %49 = load i64, i64* @TakeException, align 8
  %50 = load i64*, i64** @callback, align 8
  %51 = getelementptr inbounds i64, i64* %50, i64 32
  store i64 %49, i64* %51, align 8
  ret void
}

declare dso_local i32 @copy_trap_handler(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
