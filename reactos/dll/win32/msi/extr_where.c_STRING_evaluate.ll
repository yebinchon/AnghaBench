; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/msi/extr_where.c_STRING_evaluate.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/msi/extr_where.c_STRING_evaluate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }
%struct.expr = type { i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32*, i32 }

@ERROR_SUCCESS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"Invalid expression type\0A\00", align 1
@ERROR_FUNCTION_FAILED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_7__*, i32*, %struct.expr*, i32*, i32**)* @STRING_evaluate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @STRING_evaluate(%struct.TYPE_7__* %0, i32* %1, %struct.expr* %2, i32* %3, i32** %4) #0 {
  %6 = alloca %struct.TYPE_7__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.expr*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32**, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %6, align 8
  store i32* %1, i32** %7, align 8
  store %struct.expr* %2, %struct.expr** %8, align 8
  store i32* %3, i32** %9, align 8
  store i32** %4, i32*** %10, align 8
  store i32 0, i32* %11, align 4
  %13 = load i32, i32* @ERROR_SUCCESS, align 4
  store i32 %13, i32* %12, align 4
  %14 = load %struct.expr*, %struct.expr** %8, align 8
  %15 = getelementptr inbounds %struct.expr, %struct.expr* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  switch i32 %16, label %52 [
    i32 130, label %17
    i32 129, label %38
    i32 128, label %44
  ]

17:                                               ; preds = %5
  %18 = load %struct.expr*, %struct.expr** %8, align 8
  %19 = getelementptr inbounds %struct.expr, %struct.expr* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 1
  %21 = load i32*, i32** %7, align 8
  %22 = call i32 @expr_fetch_value(i32* %20, i32* %21, i32* %11)
  store i32 %22, i32* %12, align 4
  %23 = load i32, i32* %12, align 4
  %24 = load i32, i32* @ERROR_SUCCESS, align 4
  %25 = icmp eq i32 %23, %24
  br i1 %25, label %26, label %35

26:                                               ; preds = %17
  %27 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %27, i32 0, i32 1
  %29 = load %struct.TYPE_5__*, %struct.TYPE_5__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* %11, align 4
  %33 = call i32* @msi_string_lookup(i32 %31, i32 %32, i32* null)
  %34 = load i32**, i32*** %10, align 8
  store i32* %33, i32** %34, align 8
  br label %37

35:                                               ; preds = %17
  %36 = load i32**, i32*** %10, align 8
  store i32* null, i32** %36, align 8
  br label %37

37:                                               ; preds = %35, %26
  br label %56

38:                                               ; preds = %5
  %39 = load %struct.expr*, %struct.expr** %8, align 8
  %40 = getelementptr inbounds %struct.expr, %struct.expr* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 0
  %42 = load i32*, i32** %41, align 8
  %43 = load i32**, i32*** %10, align 8
  store i32* %42, i32** %43, align 8
  br label %56

44:                                               ; preds = %5
  %45 = load i32*, i32** %9, align 8
  %46 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %47 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %47, align 8
  %50 = call i32* @MSI_RecordGetString(i32* %45, i32 %49)
  %51 = load i32**, i32*** %10, align 8
  store i32* %50, i32** %51, align 8
  br label %56

52:                                               ; preds = %5
  %53 = call i32 @ERR(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %54 = load i32, i32* @ERROR_FUNCTION_FAILED, align 4
  store i32 %54, i32* %12, align 4
  %55 = load i32**, i32*** %10, align 8
  store i32* null, i32** %55, align 8
  br label %56

56:                                               ; preds = %52, %44, %38, %37
  %57 = load i32, i32* %12, align 4
  ret i32 %57
}

declare dso_local i32 @expr_fetch_value(i32*, i32*, i32*) #1

declare dso_local i32* @msi_string_lookup(i32, i32, i32*) #1

declare dso_local i32* @MSI_RecordGetString(i32*, i32) #1

declare dso_local i32 @ERR(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
