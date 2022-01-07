; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/wbemprox/extr_builtin.c_find_sid_str.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/wbemprox/extr_builtin.c_find_sid_str.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.expr = type { i64, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32*, %struct.TYPE_5__*, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i64, %struct.expr*, %struct.expr* }

@EXPR_COMPLEX = common dso_local global i64 0, align 8
@OP_EQ = common dso_local global i64 0, align 8
@EXPR_PROPVAL = common dso_local global i64 0, align 8
@EXPR_SVAL = common dso_local global i64 0, align 8
@prop_sidW = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.expr*)* @find_sid_str to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @find_sid_str(%struct.expr* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca %struct.expr*, align 8
  %4 = alloca %struct.expr*, align 8
  %5 = alloca %struct.expr*, align 8
  %6 = alloca i32*, align 8
  store %struct.expr* %0, %struct.expr** %3, align 8
  store i32* null, i32** %6, align 8
  %7 = load %struct.expr*, %struct.expr** %3, align 8
  %8 = icmp ne %struct.expr* %7, null
  br i1 %8, label %9, label %23

9:                                                ; preds = %1
  %10 = load %struct.expr*, %struct.expr** %3, align 8
  %11 = getelementptr inbounds %struct.expr, %struct.expr* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @EXPR_COMPLEX, align 8
  %14 = icmp ne i64 %12, %13
  br i1 %14, label %23, label %15

15:                                               ; preds = %9
  %16 = load %struct.expr*, %struct.expr** %3, align 8
  %17 = getelementptr inbounds %struct.expr, %struct.expr* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 2
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @OP_EQ, align 8
  %22 = icmp ne i64 %20, %21
  br i1 %22, label %23, label %24

23:                                               ; preds = %15, %9, %1
  store i32* null, i32** %2, align 8
  br label %91

24:                                               ; preds = %15
  %25 = load %struct.expr*, %struct.expr** %3, align 8
  %26 = getelementptr inbounds %struct.expr, %struct.expr* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 2
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 2
  %29 = load %struct.expr*, %struct.expr** %28, align 8
  store %struct.expr* %29, %struct.expr** %4, align 8
  %30 = load %struct.expr*, %struct.expr** %3, align 8
  %31 = getelementptr inbounds %struct.expr, %struct.expr* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 2
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 1
  %34 = load %struct.expr*, %struct.expr** %33, align 8
  store %struct.expr* %34, %struct.expr** %5, align 8
  %35 = load %struct.expr*, %struct.expr** %4, align 8
  %36 = getelementptr inbounds %struct.expr, %struct.expr* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @EXPR_PROPVAL, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %40, label %61

40:                                               ; preds = %24
  %41 = load %struct.expr*, %struct.expr** %5, align 8
  %42 = getelementptr inbounds %struct.expr, %struct.expr* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* @EXPR_SVAL, align 8
  %45 = icmp eq i64 %43, %44
  br i1 %45, label %46, label %61

46:                                               ; preds = %40
  %47 = load %struct.expr*, %struct.expr** %4, align 8
  %48 = getelementptr inbounds %struct.expr, %struct.expr* %47, i32 0, i32 1
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 1
  %50 = load %struct.TYPE_5__*, %struct.TYPE_5__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* @prop_sidW, align 4
  %54 = call i32 @strcmpiW(i32 %52, i32 %53)
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %61, label %56

56:                                               ; preds = %46
  %57 = load %struct.expr*, %struct.expr** %5, align 8
  %58 = getelementptr inbounds %struct.expr, %struct.expr* %57, i32 0, i32 1
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i32 0, i32 0
  %60 = load i32*, i32** %59, align 8
  store i32* %60, i32** %6, align 8
  br label %89

61:                                               ; preds = %46, %40, %24
  %62 = load %struct.expr*, %struct.expr** %4, align 8
  %63 = getelementptr inbounds %struct.expr, %struct.expr* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = load i64, i64* @EXPR_SVAL, align 8
  %66 = icmp eq i64 %64, %65
  br i1 %66, label %67, label %88

67:                                               ; preds = %61
  %68 = load %struct.expr*, %struct.expr** %5, align 8
  %69 = getelementptr inbounds %struct.expr, %struct.expr* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = load i64, i64* @EXPR_PROPVAL, align 8
  %72 = icmp eq i64 %70, %71
  br i1 %72, label %73, label %88

73:                                               ; preds = %67
  %74 = load %struct.expr*, %struct.expr** %5, align 8
  %75 = getelementptr inbounds %struct.expr, %struct.expr* %74, i32 0, i32 1
  %76 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %75, i32 0, i32 1
  %77 = load %struct.TYPE_5__*, %struct.TYPE_5__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = load i32, i32* @prop_sidW, align 4
  %81 = call i32 @strcmpiW(i32 %79, i32 %80)
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %88, label %83

83:                                               ; preds = %73
  %84 = load %struct.expr*, %struct.expr** %4, align 8
  %85 = getelementptr inbounds %struct.expr, %struct.expr* %84, i32 0, i32 1
  %86 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %85, i32 0, i32 0
  %87 = load i32*, i32** %86, align 8
  store i32* %87, i32** %6, align 8
  br label %88

88:                                               ; preds = %83, %73, %67, %61
  br label %89

89:                                               ; preds = %88, %56
  %90 = load i32*, i32** %6, align 8
  store i32* %90, i32** %2, align 8
  br label %91

91:                                               ; preds = %89, %23
  %92 = load i32*, i32** %2, align 8
  ret i32* %92
}

declare dso_local i32 @strcmpiW(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
