; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/wbemprox/extr_wql.tab.c_expr_propval.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/wbemprox/extr_wql.tab.c_expr_propval.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.expr = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { %struct.property* }
%struct.parser = type { i32 }
%struct.property = type { i32 }

@EXPR_PROPVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.expr* (%struct.parser*, %struct.property*)* @expr_propval to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.expr* @expr_propval(%struct.parser* %0, %struct.property* %1) #0 {
  %3 = alloca %struct.parser*, align 8
  %4 = alloca %struct.property*, align 8
  %5 = alloca %struct.expr*, align 8
  store %struct.parser* %0, %struct.parser** %3, align 8
  store %struct.property* %1, %struct.property** %4, align 8
  %6 = load %struct.parser*, %struct.parser** %3, align 8
  %7 = call %struct.expr* @alloc_mem(%struct.parser* %6, i32 16)
  store %struct.expr* %7, %struct.expr** %5, align 8
  %8 = load %struct.expr*, %struct.expr** %5, align 8
  %9 = icmp ne %struct.expr* %8, null
  br i1 %9, label %10, label %18

10:                                               ; preds = %2
  %11 = load i32, i32* @EXPR_PROPVAL, align 4
  %12 = load %struct.expr*, %struct.expr** %5, align 8
  %13 = getelementptr inbounds %struct.expr, %struct.expr* %12, i32 0, i32 1
  store i32 %11, i32* %13, align 8
  %14 = load %struct.property*, %struct.property** %4, align 8
  %15 = load %struct.expr*, %struct.expr** %5, align 8
  %16 = getelementptr inbounds %struct.expr, %struct.expr* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  store %struct.property* %14, %struct.property** %17, align 8
  br label %18

18:                                               ; preds = %10, %2
  %19 = load %struct.expr*, %struct.expr** %5, align 8
  ret %struct.expr* %19
}

declare dso_local %struct.expr* @alloc_mem(%struct.parser*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
