; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/wbemprox/extr_wql.tab.c_expr_unary.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/wbemprox/extr_wql.tab.c_expr_unary.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.parser = type { i32 }
%struct.expr = type { %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32*, i32, %struct.expr* }

@EXPR_UNARY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.expr* (%struct.parser*, %struct.expr*, i32)* @expr_unary to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.expr* @expr_unary(%struct.parser* %0, %struct.expr* %1, i32 %2) #0 {
  %4 = alloca %struct.parser*, align 8
  %5 = alloca %struct.expr*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.expr*, align 8
  store %struct.parser* %0, %struct.parser** %4, align 8
  store %struct.expr* %1, %struct.expr** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load %struct.parser*, %struct.parser** %4, align 8
  %9 = call %struct.expr* @alloc_mem(%struct.parser* %8, i32 32)
  store %struct.expr* %9, %struct.expr** %7, align 8
  %10 = load %struct.expr*, %struct.expr** %7, align 8
  %11 = icmp ne %struct.expr* %10, null
  br i1 %11, label %12, label %30

12:                                               ; preds = %3
  %13 = load i32, i32* @EXPR_UNARY, align 4
  %14 = load %struct.expr*, %struct.expr** %7, align 8
  %15 = getelementptr inbounds %struct.expr, %struct.expr* %14, i32 0, i32 1
  store i32 %13, i32* %15, align 8
  %16 = load %struct.expr*, %struct.expr** %5, align 8
  %17 = load %struct.expr*, %struct.expr** %7, align 8
  %18 = getelementptr inbounds %struct.expr, %struct.expr* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 2
  store %struct.expr* %16, %struct.expr** %20, align 8
  %21 = load i32, i32* %6, align 4
  %22 = load %struct.expr*, %struct.expr** %7, align 8
  %23 = getelementptr inbounds %struct.expr, %struct.expr* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 1
  store i32 %21, i32* %25, align 8
  %26 = load %struct.expr*, %struct.expr** %7, align 8
  %27 = getelementptr inbounds %struct.expr, %struct.expr* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 0
  store i32* null, i32** %29, align 8
  br label %30

30:                                               ; preds = %12, %3
  %31 = load %struct.expr*, %struct.expr** %7, align 8
  ret %struct.expr* %31
}

declare dso_local %struct.expr* @alloc_mem(%struct.parser*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
