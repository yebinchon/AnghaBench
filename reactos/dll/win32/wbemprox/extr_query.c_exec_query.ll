; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/wbemprox/extr_query.c_exec_query.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/wbemprox/extr_query.c_exec_query.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.query = type { i32, i32 }

@E_OUTOFMEMORY = common dso_local global i64 0, align 8
@S_OK = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @exec_query(i32* %0, i32** %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32**, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.query*, align 8
  store i32* %0, i32** %4, align 8
  store i32** %1, i32*** %5, align 8
  %8 = load i32**, i32*** %5, align 8
  store i32* null, i32** %8, align 8
  %9 = call %struct.query* (...) @create_query()
  store %struct.query* %9, %struct.query** %7, align 8
  %10 = icmp ne %struct.query* %9, null
  br i1 %10, label %13, label %11

11:                                               ; preds = %2
  %12 = load i64, i64* @E_OUTOFMEMORY, align 8
  store i64 %12, i64* %3, align 8
  br label %42

13:                                               ; preds = %2
  %14 = load i32*, i32** %4, align 8
  %15 = load %struct.query*, %struct.query** %7, align 8
  %16 = getelementptr inbounds %struct.query, %struct.query* %15, i32 0, i32 0
  %17 = load %struct.query*, %struct.query** %7, align 8
  %18 = getelementptr inbounds %struct.query, %struct.query* %17, i32 0, i32 1
  %19 = call i64 @parse_query(i32* %14, i32* %16, i32* %18)
  store i64 %19, i64* %6, align 8
  %20 = load i64, i64* %6, align 8
  %21 = load i64, i64* @S_OK, align 8
  %22 = icmp ne i64 %20, %21
  br i1 %22, label %23, label %24

23:                                               ; preds = %13
  br label %38

24:                                               ; preds = %13
  %25 = load %struct.query*, %struct.query** %7, align 8
  %26 = getelementptr inbounds %struct.query, %struct.query* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i64 @execute_view(i32 %27)
  store i64 %28, i64* %6, align 8
  %29 = load i64, i64* %6, align 8
  %30 = load i64, i64* @S_OK, align 8
  %31 = icmp ne i64 %29, %30
  br i1 %31, label %32, label %33

32:                                               ; preds = %24
  br label %38

33:                                               ; preds = %24
  %34 = load %struct.query*, %struct.query** %7, align 8
  %35 = load i32**, i32*** %5, align 8
  %36 = bitcast i32** %35 to i8**
  %37 = call i64 @EnumWbemClassObject_create(%struct.query* %34, i8** %36)
  store i64 %37, i64* %6, align 8
  br label %38

38:                                               ; preds = %33, %32, %23
  %39 = load %struct.query*, %struct.query** %7, align 8
  %40 = call i32 @release_query(%struct.query* %39)
  %41 = load i64, i64* %6, align 8
  store i64 %41, i64* %3, align 8
  br label %42

42:                                               ; preds = %38, %11
  %43 = load i64, i64* %3, align 8
  ret i64 %43
}

declare dso_local %struct.query* @create_query(...) #1

declare dso_local i64 @parse_query(i32*, i32*, i32*) #1

declare dso_local i64 @execute_view(i32) #1

declare dso_local i64 @EnumWbemClassObject_create(%struct.query*, i8**) #1

declare dso_local i32 @release_query(%struct.query*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
