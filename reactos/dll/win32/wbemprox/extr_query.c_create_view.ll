; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/wbemprox/extr_query.c_create_view.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/wbemprox/extr_query.c_create_view.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.property = type { i32 }
%struct.expr = type { i32 }
%struct.view = type { i64, i32*, %struct.expr*, i32, %struct.property* }

@E_OUTOFMEMORY = common dso_local global i32 0, align 4
@S_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @create_view(%struct.property* %0, i32* %1, %struct.expr* %2, %struct.view** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.property*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.expr*, align 8
  %9 = alloca %struct.view**, align 8
  %10 = alloca %struct.view*, align 8
  store %struct.property* %0, %struct.property** %6, align 8
  store i32* %1, i32** %7, align 8
  store %struct.expr* %2, %struct.expr** %8, align 8
  store %struct.view** %3, %struct.view*** %9, align 8
  %11 = call %struct.view* @heap_alloc(i32 40)
  store %struct.view* %11, %struct.view** %10, align 8
  %12 = load %struct.view*, %struct.view** %10, align 8
  %13 = icmp ne %struct.view* %12, null
  br i1 %13, label %16, label %14

14:                                               ; preds = %4
  %15 = load i32, i32* @E_OUTOFMEMORY, align 4
  store i32 %15, i32* %5, align 4
  br label %34

16:                                               ; preds = %4
  %17 = load %struct.property*, %struct.property** %6, align 8
  %18 = load %struct.view*, %struct.view** %10, align 8
  %19 = getelementptr inbounds %struct.view, %struct.view* %18, i32 0, i32 4
  store %struct.property* %17, %struct.property** %19, align 8
  %20 = load i32*, i32** %7, align 8
  %21 = call i32 @grab_table(i32* %20)
  %22 = load %struct.view*, %struct.view** %10, align 8
  %23 = getelementptr inbounds %struct.view, %struct.view* %22, i32 0, i32 3
  store i32 %21, i32* %23, align 8
  %24 = load %struct.expr*, %struct.expr** %8, align 8
  %25 = load %struct.view*, %struct.view** %10, align 8
  %26 = getelementptr inbounds %struct.view, %struct.view* %25, i32 0, i32 2
  store %struct.expr* %24, %struct.expr** %26, align 8
  %27 = load %struct.view*, %struct.view** %10, align 8
  %28 = getelementptr inbounds %struct.view, %struct.view* %27, i32 0, i32 1
  store i32* null, i32** %28, align 8
  %29 = load %struct.view*, %struct.view** %10, align 8
  %30 = getelementptr inbounds %struct.view, %struct.view* %29, i32 0, i32 0
  store i64 0, i64* %30, align 8
  %31 = load %struct.view*, %struct.view** %10, align 8
  %32 = load %struct.view**, %struct.view*** %9, align 8
  store %struct.view* %31, %struct.view** %32, align 8
  %33 = load i32, i32* @S_OK, align 4
  store i32 %33, i32* %5, align 4
  br label %34

34:                                               ; preds = %16, %14
  %35 = load i32, i32* %5, align 4
  ret i32 %35
}

declare dso_local %struct.view* @heap_alloc(i32) #1

declare dso_local i32 @grab_table(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
