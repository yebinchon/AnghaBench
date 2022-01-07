; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/msi/extr_where.c_reorder_check.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/msi/extr_where.c_reorder_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.expr = type { i32, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__, %struct.TYPE_6__ }
%struct.TYPE_7__ = type { %struct.expr*, %struct.expr* }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32* }

@JOIN_TO_CONST_EXPR = common dso_local global i32 0, align 4
@CONST_EXPR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"Unknown expr type: %i\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.expr*, i32**, i32, i32**)* @reorder_check to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @reorder_check(%struct.expr* %0, i32** %1, i32 %2, i32** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.expr*, align 8
  %7 = alloca i32**, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32**, align 8
  %10 = alloca i32, align 4
  store %struct.expr* %0, %struct.expr** %6, align 8
  store i32** %1, i32*** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32** %3, i32*** %9, align 8
  store i32 0, i32* %10, align 4
  %11 = load %struct.expr*, %struct.expr** %6, align 8
  %12 = getelementptr inbounds %struct.expr, %struct.expr* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  switch i32 %13, label %86 [
    i32 128, label %14
    i32 131, label %14
    i32 129, label %14
    i32 136, label %15
    i32 135, label %15
    i32 134, label %15
    i32 132, label %36
    i32 133, label %36
    i32 130, label %46
  ]

14:                                               ; preds = %4, %4, %4
  store i32 0, i32* %5, align 4
  br label %92

15:                                               ; preds = %4, %4, %4
  %16 = load i32**, i32*** %7, align 8
  %17 = load %struct.expr*, %struct.expr** %6, align 8
  %18 = getelementptr inbounds %struct.expr, %struct.expr* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 0
  %22 = load i32*, i32** %21, align 8
  %23 = call i32 @in_array(i32** %16, i32* %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %15
  %26 = load i32, i32* @JOIN_TO_CONST_EXPR, align 4
  store i32 %26, i32* %5, align 4
  br label %92

27:                                               ; preds = %15
  %28 = load %struct.expr*, %struct.expr** %6, align 8
  %29 = getelementptr inbounds %struct.expr, %struct.expr* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 0
  %33 = load i32*, i32** %32, align 8
  %34 = load i32**, i32*** %9, align 8
  store i32* %33, i32** %34, align 8
  %35 = load i32, i32* @CONST_EXPR, align 4
  store i32 %35, i32* %5, align 4
  br label %92

36:                                               ; preds = %4, %4
  %37 = load %struct.expr*, %struct.expr** %6, align 8
  %38 = getelementptr inbounds %struct.expr, %struct.expr* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %39, i32 0, i32 1
  %41 = load %struct.expr*, %struct.expr** %40, align 8
  %42 = load i32**, i32*** %7, align 8
  %43 = load i32, i32* %8, align 4
  %44 = load i32**, i32*** %9, align 8
  %45 = call i32 @reorder_check(%struct.expr* %41, i32** %42, i32 %43, i32** %44)
  store i32 %45, i32* %10, align 4
  br label %46

46:                                               ; preds = %4, %36
  %47 = load %struct.expr*, %struct.expr** %6, align 8
  %48 = getelementptr inbounds %struct.expr, %struct.expr* %47, i32 0, i32 1
  %49 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %49, i32 0, i32 0
  %51 = load %struct.expr*, %struct.expr** %50, align 8
  %52 = load i32**, i32*** %7, align 8
  %53 = load i32, i32* %8, align 4
  %54 = load i32**, i32*** %9, align 8
  %55 = call i32 @reorder_check(%struct.expr* %51, i32** %52, i32 %53, i32** %54)
  %56 = load i32, i32* %10, align 4
  %57 = add nsw i32 %56, %55
  store i32 %57, i32* %10, align 4
  %58 = load i32, i32* %10, align 4
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %46
  store i32 0, i32* %5, align 4
  br label %92

61:                                               ; preds = %46
  %62 = load i32, i32* %10, align 4
  %63 = load i32, i32* @CONST_EXPR, align 4
  %64 = icmp eq i32 %62, %63
  br i1 %64, label %65, label %70

65:                                               ; preds = %61
  %66 = load i32**, i32*** %7, align 8
  %67 = load i32**, i32*** %9, align 8
  %68 = load i32*, i32** %67, align 8
  %69 = call i32 @add_to_array(i32** %66, i32* %68)
  br label %70

70:                                               ; preds = %65, %61
  %71 = load i32, i32* %8, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %84

73:                                               ; preds = %70
  %74 = load i32, i32* %10, align 4
  %75 = load i32, i32* @JOIN_TO_CONST_EXPR, align 4
  %76 = load i32, i32* @CONST_EXPR, align 4
  %77 = add nsw i32 %75, %76
  %78 = icmp eq i32 %74, %77
  br i1 %78, label %79, label %84

79:                                               ; preds = %73
  %80 = load i32**, i32*** %7, align 8
  %81 = load i32**, i32*** %9, align 8
  %82 = load i32*, i32** %81, align 8
  %83 = call i32 @add_to_array(i32** %80, i32* %82)
  br label %84

84:                                               ; preds = %79, %73, %70
  %85 = load i32, i32* %10, align 4
  store i32 %85, i32* %5, align 4
  br label %92

86:                                               ; preds = %4
  %87 = load %struct.expr*, %struct.expr** %6, align 8
  %88 = getelementptr inbounds %struct.expr, %struct.expr* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = call i32 @ERR(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %89)
  %91 = call i32 @assert(i32 0)
  store i32 16777216, i32* %5, align 4
  br label %92

92:                                               ; preds = %86, %84, %60, %27, %25, %14
  %93 = load i32, i32* %5, align 4
  ret i32 %93
}

declare dso_local i32 @in_array(i32**, i32*) #1

declare dso_local i32 @add_to_array(i32**, i32*) #1

declare dso_local i32 @ERR(i8*, i32) #1

declare dso_local i32 @assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
