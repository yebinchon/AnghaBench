; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/msi/extr_sql.tab.c_EXPR_sval.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/msi/extr_sql.tab.c_EXPR_sval.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.expr = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.sql_str = type { i32 }

@EXPR_SVAL = common dso_local global i32 0, align 4
@ERROR_SUCCESS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.expr* (i8*, %struct.sql_str*)* @EXPR_sval to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.expr* @EXPR_sval(i8* %0, %struct.sql_str* %1) #0 {
  %3 = alloca %struct.expr*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.sql_str*, align 8
  %6 = alloca %struct.expr*, align 8
  store i8* %0, i8** %4, align 8
  store %struct.sql_str* %1, %struct.sql_str** %5, align 8
  %7 = load i8*, i8** %4, align 8
  %8 = call %struct.expr* @parser_alloc(i8* %7, i32 8)
  store %struct.expr* %8, %struct.expr** %6, align 8
  %9 = load %struct.expr*, %struct.expr** %6, align 8
  %10 = icmp ne %struct.expr* %9, null
  br i1 %10, label %11, label %25

11:                                               ; preds = %2
  %12 = load i32, i32* @EXPR_SVAL, align 4
  %13 = load %struct.expr*, %struct.expr** %6, align 8
  %14 = getelementptr inbounds %struct.expr, %struct.expr* %13, i32 0, i32 1
  store i32 %12, i32* %14, align 4
  %15 = load i8*, i8** %4, align 8
  %16 = load %struct.sql_str*, %struct.sql_str** %5, align 8
  %17 = load %struct.expr*, %struct.expr** %6, align 8
  %18 = getelementptr inbounds %struct.expr, %struct.expr* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = call i64 @SQL_getstring(i8* %15, %struct.sql_str* %16, i32* %19)
  %21 = load i64, i64* @ERROR_SUCCESS, align 8
  %22 = icmp ne i64 %20, %21
  br i1 %22, label %23, label %24

23:                                               ; preds = %11
  store %struct.expr* null, %struct.expr** %3, align 8
  br label %27

24:                                               ; preds = %11
  br label %25

25:                                               ; preds = %24, %2
  %26 = load %struct.expr*, %struct.expr** %6, align 8
  store %struct.expr* %26, %struct.expr** %3, align 8
  br label %27

27:                                               ; preds = %25, %23
  %28 = load %struct.expr*, %struct.expr** %3, align 8
  ret %struct.expr* %28
}

declare dso_local %struct.expr* @parser_alloc(i8*, i32) #1

declare dso_local i64 @SQL_getstring(i8*, %struct.sql_str*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
