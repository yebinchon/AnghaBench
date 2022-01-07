; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/wbemprox/extr_query.c_put_propval.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/wbemprox/extr_query.c_put_propval.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.view = type { i64*, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }

@S_OK = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [40 x i8] c"no support for creating new properties\0A\00", align 1
@WBEM_E_FAILED = common dso_local global i64 0, align 8
@COL_FLAG_DYNAMIC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @put_propval(%struct.view* %0, i64 %1, i32* %2, i32* %3, i32 %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca %struct.view*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  store %struct.view* %0, %struct.view** %7, align 8
  store i64 %1, i64* %8, align 8
  store i32* %2, i32** %9, align 8
  store i32* %3, i32** %10, align 8
  store i32 %4, i32* %11, align 4
  %16 = load %struct.view*, %struct.view** %7, align 8
  %17 = getelementptr inbounds %struct.view, %struct.view* %16, i32 0, i32 0
  %18 = load i64*, i64** %17, align 8
  %19 = load i64, i64* %8, align 8
  %20 = getelementptr inbounds i64, i64* %18, i64 %19
  %21 = load i64, i64* %20, align 8
  store i64 %21, i64* %14, align 8
  %22 = load %struct.view*, %struct.view** %7, align 8
  %23 = getelementptr inbounds %struct.view, %struct.view* %22, i32 0, i32 1
  %24 = load %struct.TYPE_6__*, %struct.TYPE_6__** %23, align 8
  %25 = load i32*, i32** %9, align 8
  %26 = call i64 @get_column_index(%struct.TYPE_6__* %24, i32* %25, i64* %13)
  store i64 %26, i64* %12, align 8
  %27 = load i64, i64* %12, align 8
  %28 = load i64, i64* @S_OK, align 8
  %29 = icmp ne i64 %27, %28
  br i1 %29, label %30, label %33

30:                                               ; preds = %5
  %31 = call i32 @FIXME(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0))
  %32 = load i64, i64* @WBEM_E_FAILED, align 8
  store i64 %32, i64* %6, align 8
  br label %72

33:                                               ; preds = %5
  %34 = load %struct.view*, %struct.view** %7, align 8
  %35 = getelementptr inbounds %struct.view, %struct.view* %34, i32 0, i32 1
  %36 = load %struct.TYPE_6__*, %struct.TYPE_6__** %35, align 8
  %37 = load i64, i64* %13, align 8
  %38 = call i64 @is_method(%struct.TYPE_6__* %36, i64 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %53, label %40

40:                                               ; preds = %33
  %41 = load %struct.view*, %struct.view** %7, align 8
  %42 = getelementptr inbounds %struct.view, %struct.view* %41, i32 0, i32 1
  %43 = load %struct.TYPE_6__*, %struct.TYPE_6__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 0
  %45 = load %struct.TYPE_5__*, %struct.TYPE_5__** %44, align 8
  %46 = load i64, i64* %13, align 8
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i64 %46
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* @COL_FLAG_DYNAMIC, align 4
  %51 = and i32 %49, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %55, label %53

53:                                               ; preds = %40, %33
  %54 = load i64, i64* @WBEM_E_FAILED, align 8
  store i64 %54, i64* %6, align 8
  br label %72

55:                                               ; preds = %40
  %56 = load i32*, i32** %10, align 8
  %57 = call i64 @to_longlong(i32* %56, i32* %15, i32* %11)
  store i64 %57, i64* %12, align 8
  %58 = load i64, i64* %12, align 8
  %59 = load i64, i64* @S_OK, align 8
  %60 = icmp ne i64 %58, %59
  br i1 %60, label %61, label %63

61:                                               ; preds = %55
  %62 = load i64, i64* %12, align 8
  store i64 %62, i64* %6, align 8
  br label %72

63:                                               ; preds = %55
  %64 = load %struct.view*, %struct.view** %7, align 8
  %65 = getelementptr inbounds %struct.view, %struct.view* %64, i32 0, i32 1
  %66 = load %struct.TYPE_6__*, %struct.TYPE_6__** %65, align 8
  %67 = load i64, i64* %14, align 8
  %68 = load i64, i64* %13, align 8
  %69 = load i32, i32* %15, align 4
  %70 = load i32, i32* %11, align 4
  %71 = call i64 @set_value(%struct.TYPE_6__* %66, i64 %67, i64 %68, i32 %69, i32 %70)
  store i64 %71, i64* %6, align 8
  br label %72

72:                                               ; preds = %63, %61, %53, %30
  %73 = load i64, i64* %6, align 8
  ret i64 %73
}

declare dso_local i64 @get_column_index(%struct.TYPE_6__*, i32*, i64*) #1

declare dso_local i32 @FIXME(i8*) #1

declare dso_local i64 @is_method(%struct.TYPE_6__*, i64) #1

declare dso_local i64 @to_longlong(i32*, i32*, i32*) #1

declare dso_local i64 @set_value(%struct.TYPE_6__*, i64, i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
