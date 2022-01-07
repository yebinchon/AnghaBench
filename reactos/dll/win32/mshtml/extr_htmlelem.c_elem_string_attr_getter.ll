; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/mshtml/extr_htmlelem.c_elem_string_attr_getter.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/mshtml/extr_htmlelem.c_elem_string_attr_getter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@S_OK = common dso_local global i32 0, align 4
@E_FAIL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"%s: returning %s\0A\00", align 1
@E_OUTOFMEMORY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @elem_string_attr_getter(%struct.TYPE_3__* %0, i64* %1, i32 %2, i32** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_3__*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32**, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %6, align 8
  store i64* %1, i64** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32** %3, i32*** %9, align 8
  %14 = load i32, i32* @S_OK, align 4
  store i32 %14, i32* %13, align 4
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i64*, i64** %7, align 8
  %19 = call i32 @get_elem_attr_value(i32 %17, i64* %18, i32* %11, i64** %10)
  store i32 %19, i32* %12, align 4
  %20 = load i32, i32* %12, align 4
  %21 = call i64 @NS_FAILED(i32 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %4
  %24 = load i32, i32* @E_FAIL, align 4
  store i32 %24, i32* %5, align 4
  br label %52

25:                                               ; preds = %4
  %26 = load i64*, i64** %7, align 8
  %27 = call i32 @debugstr_w(i64* %26)
  %28 = load i64*, i64** %10, align 8
  %29 = call i32 @debugstr_w(i64* %28)
  %30 = call i32 @TRACE(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 %27, i32 %29)
  %31 = load i64*, i64** %10, align 8
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %37, label %34

34:                                               ; preds = %25
  %35 = load i32, i32* %8, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %47, label %37

37:                                               ; preds = %34, %25
  %38 = load i64*, i64** %10, align 8
  %39 = call i32* @SysAllocString(i64* %38)
  %40 = load i32**, i32*** %9, align 8
  store i32* %39, i32** %40, align 8
  %41 = load i32**, i32*** %9, align 8
  %42 = load i32*, i32** %41, align 8
  %43 = icmp ne i32* %42, null
  br i1 %43, label %46, label %44

44:                                               ; preds = %37
  %45 = load i32, i32* @E_OUTOFMEMORY, align 4
  store i32 %45, i32* %13, align 4
  br label %46

46:                                               ; preds = %44, %37
  br label %49

47:                                               ; preds = %34
  %48 = load i32**, i32*** %9, align 8
  store i32* null, i32** %48, align 8
  br label %49

49:                                               ; preds = %47, %46
  %50 = call i32 @nsAString_Finish(i32* %11)
  %51 = load i32, i32* %13, align 4
  store i32 %51, i32* %5, align 4
  br label %52

52:                                               ; preds = %49, %23
  %53 = load i32, i32* %5, align 4
  ret i32 %53
}

declare dso_local i32 @get_elem_attr_value(i32, i64*, i32*, i64**) #1

declare dso_local i64 @NS_FAILED(i32) #1

declare dso_local i32 @TRACE(i8*, i32, i32) #1

declare dso_local i32 @debugstr_w(i64*) #1

declare dso_local i32* @SysAllocString(i64*) #1

declare dso_local i32 @nsAString_Finish(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
