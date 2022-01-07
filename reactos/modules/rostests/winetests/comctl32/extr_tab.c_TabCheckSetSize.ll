; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/comctl32/extr_tab.c_TabCheckSetSize.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/comctl32/extr_tab.c_TabCheckSetSize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@TCM_SETITEMSIZE = common dso_local global i32 0, align 4
@winetest_interactive = common dso_local global i64 0, align 8
@RDW_UPDATENOW = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i64, i64, i64, i64, i8*, i32)* @TabCheckSetSize to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @TabCheckSetSize(i32 %0, i64 %1, i64 %2, i64 %3, i64 %4, i8* %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  store i32 %0, i32* %8, align 4
  store i64 %1, i64* %9, align 8
  store i64 %2, i64* %10, align 8
  store i64 %3, i64* %11, align 8
  store i64 %4, i64* %12, align 8
  store i8* %5, i8** %13, align 8
  store i32 %6, i32* %14, align 4
  %15 = load i32, i32* %8, align 4
  %16 = load i32, i32* @TCM_SETITEMSIZE, align 4
  %17 = load i64, i64* %9, align 8
  %18 = icmp sge i64 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %7
  %20 = load i64, i64* %9, align 8
  br label %22

21:                                               ; preds = %7
  br label %22

22:                                               ; preds = %21, %19
  %23 = phi i64 [ %20, %19 ], [ 0, %21 ]
  %24 = load i64, i64* %10, align 8
  %25 = icmp sge i64 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %22
  %27 = load i64, i64* %10, align 8
  br label %29

28:                                               ; preds = %22
  br label %29

29:                                               ; preds = %28, %26
  %30 = phi i64 [ %27, %26 ], [ 0, %28 ]
  %31 = call i32 @MAKELPARAM(i64 %23, i64 %30)
  %32 = call i32 @SendMessageA(i32 %15, i32 %16, i32 0, i32 %31)
  %33 = load i64, i64* @winetest_interactive, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %39

35:                                               ; preds = %29
  %36 = load i32, i32* %8, align 4
  %37 = load i32, i32* @RDW_UPDATENOW, align 4
  %38 = call i32 @RedrawWindow(i32 %36, i32* null, i32 0, i32 %37)
  br label %39

39:                                               ; preds = %35, %29
  %40 = load i32, i32* %8, align 4
  %41 = load i64, i64* %11, align 8
  %42 = load i64, i64* %12, align 8
  %43 = load i8*, i8** %13, align 8
  %44 = load i32, i32* %14, align 4
  %45 = call i32 @CheckSize(i32 %40, i64 %41, i64 %42, i8* %43, i32 %44)
  ret void
}

declare dso_local i32 @SendMessageA(i32, i32, i32, i32) #1

declare dso_local i32 @MAKELPARAM(i64, i64) #1

declare dso_local i32 @RedrawWindow(i32, i32*, i32, i32) #1

declare dso_local i32 @CheckSize(i32, i64, i64, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
