; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/msi/extr_sql.tab.c_EXPR_complex.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/msi/extr_sql.tab.c_EXPR_complex.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.expr = type { %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.expr*, i32, %struct.expr* }

@EXPR_COMPLEX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.expr* (i8*, %struct.expr*, i32, %struct.expr*)* @EXPR_complex to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.expr* @EXPR_complex(i8* %0, %struct.expr* %1, i32 %2, %struct.expr* %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca %struct.expr*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.expr*, align 8
  %9 = alloca %struct.expr*, align 8
  store i8* %0, i8** %5, align 8
  store %struct.expr* %1, %struct.expr** %6, align 8
  store i32 %2, i32* %7, align 4
  store %struct.expr* %3, %struct.expr** %8, align 8
  %10 = load i8*, i8** %5, align 8
  %11 = call %struct.expr* @parser_alloc(i8* %10, i32 32)
  store %struct.expr* %11, %struct.expr** %9, align 8
  %12 = load %struct.expr*, %struct.expr** %9, align 8
  %13 = icmp ne %struct.expr* %12, null
  br i1 %13, label %14, label %33

14:                                               ; preds = %4
  %15 = load i32, i32* @EXPR_COMPLEX, align 4
  %16 = load %struct.expr*, %struct.expr** %9, align 8
  %17 = getelementptr inbounds %struct.expr, %struct.expr* %16, i32 0, i32 1
  store i32 %15, i32* %17, align 8
  %18 = load %struct.expr*, %struct.expr** %6, align 8
  %19 = load %struct.expr*, %struct.expr** %9, align 8
  %20 = getelementptr inbounds %struct.expr, %struct.expr* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 2
  store %struct.expr* %18, %struct.expr** %22, align 8
  %23 = load i32, i32* %7, align 4
  %24 = load %struct.expr*, %struct.expr** %9, align 8
  %25 = getelementptr inbounds %struct.expr, %struct.expr* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 1
  store i32 %23, i32* %27, align 8
  %28 = load %struct.expr*, %struct.expr** %8, align 8
  %29 = load %struct.expr*, %struct.expr** %9, align 8
  %30 = getelementptr inbounds %struct.expr, %struct.expr* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 0
  store %struct.expr* %28, %struct.expr** %32, align 8
  br label %33

33:                                               ; preds = %14, %4
  %34 = load %struct.expr*, %struct.expr** %9, align 8
  ret %struct.expr* %34
}

declare dso_local %struct.expr* @parser_alloc(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
