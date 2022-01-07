; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/wbemprox/extr_builtin.c_match_row.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/wbemprox/extr_builtin.c_match_row.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.table = type { i32 }
%struct.expr = type { i32 }

@FILL_STATUS_UNFILTERED = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@S_OK = common dso_local global i64 0, align 8
@FILL_STATUS_FAILED = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@FILL_STATUS_FILTERED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.table*, i32, %struct.expr*, i32*)* @match_row to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @match_row(%struct.table* %0, i32 %1, %struct.expr* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.table*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.expr*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store %struct.table* %0, %struct.table** %6, align 8
  store i32 %1, i32* %7, align 4
  store %struct.expr* %2, %struct.expr** %8, align 8
  store i32* %3, i32** %9, align 8
  %12 = load %struct.expr*, %struct.expr** %8, align 8
  %13 = icmp ne %struct.expr* %12, null
  br i1 %13, label %18, label %14

14:                                               ; preds = %4
  %15 = load i32, i32* @FILL_STATUS_UNFILTERED, align 4
  %16 = load i32*, i32** %9, align 8
  store i32 %15, i32* %16, align 4
  %17 = load i32, i32* @TRUE, align 4
  store i32 %17, i32* %5, align 4
  br label %35

18:                                               ; preds = %4
  %19 = load %struct.table*, %struct.table** %6, align 8
  %20 = load i32, i32* %7, align 4
  %21 = load %struct.expr*, %struct.expr** %8, align 8
  %22 = call i64 @eval_cond(%struct.table* %19, i32 %20, %struct.expr* %21, i64* %10, i32* %11)
  %23 = load i64, i64* @S_OK, align 8
  %24 = icmp ne i64 %22, %23
  br i1 %24, label %25, label %29

25:                                               ; preds = %18
  %26 = load i32, i32* @FILL_STATUS_FAILED, align 4
  %27 = load i32*, i32** %9, align 8
  store i32 %26, i32* %27, align 4
  %28 = load i32, i32* @FALSE, align 4
  store i32 %28, i32* %5, align 4
  br label %35

29:                                               ; preds = %18
  %30 = load i32, i32* @FILL_STATUS_FILTERED, align 4
  %31 = load i32*, i32** %9, align 8
  store i32 %30, i32* %31, align 4
  %32 = load i64, i64* %10, align 8
  %33 = icmp ne i64 %32, 0
  %34 = zext i1 %33 to i32
  store i32 %34, i32* %5, align 4
  br label %35

35:                                               ; preds = %29, %25, %14
  %36 = load i32, i32* %5, align 4
  ret i32 %36
}

declare dso_local i64 @eval_cond(%struct.table*, i32, %struct.expr*, i64*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
