; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/mshtml/extr_pluginhost.c_invoke_plugin_prop.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/mshtml/extr_pluginhost.c_invoke_plugin_prop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64, i32*, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }

@.str = private unnamed_addr constant [21 x i8] c"Called with no disp\0A\00", align 1
@E_UNEXPECTED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [17 x i8] c"Insecure object\0A\00", align 1
@E_FAIL = common dso_local global i32 0, align 4
@MSHTML_DISPID_CUSTOM_MIN = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [12 x i8] c"Invalid id\0A\00", align 1
@IID_NULL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @invoke_plugin_prop(%struct.TYPE_6__* %0, i64 %1, i32 %2, i32 %3, i32* %4, i32* %5, i32* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_6__*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca %struct.TYPE_5__*, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %9, align 8
  store i64 %1, i64* %10, align 8
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store i32* %4, i32** %13, align 8
  store i32* %5, i32** %14, align 8
  store i32* %6, i32** %15, align 8
  %17 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 2
  %19 = load %struct.TYPE_5__*, %struct.TYPE_5__** %18, align 8
  store %struct.TYPE_5__* %19, %struct.TYPE_5__** %16, align 8
  %20 = load %struct.TYPE_5__*, %struct.TYPE_5__** %16, align 8
  %21 = icmp ne %struct.TYPE_5__* %20, null
  br i1 %21, label %22, label %27

22:                                               ; preds = %7
  %23 = load %struct.TYPE_5__*, %struct.TYPE_5__** %16, align 8
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %30, label %27

27:                                               ; preds = %22, %7
  %28 = call i32 @FIXME(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %29 = load i32, i32* @E_UNEXPECTED, align 4
  store i32 %29, i32* %8, align 4
  br label %70

30:                                               ; preds = %22
  %31 = load %struct.TYPE_5__*, %struct.TYPE_5__** %16, align 8
  %32 = call i32 @check_script_safety(%struct.TYPE_5__* %31)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %37, label %34

34:                                               ; preds = %30
  %35 = call i32 @FIXME(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  %36 = load i32, i32* @E_FAIL, align 4
  store i32 %36, i32* %8, align 4
  br label %70

37:                                               ; preds = %30
  %38 = load i64, i64* %10, align 8
  %39 = load i64, i64* @MSHTML_DISPID_CUSTOM_MIN, align 8
  %40 = icmp slt i64 %38, %39
  br i1 %40, label %49, label %41

41:                                               ; preds = %37
  %42 = load i64, i64* %10, align 8
  %43 = load i64, i64* @MSHTML_DISPID_CUSTOM_MIN, align 8
  %44 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = add nsw i64 %43, %46
  %48 = icmp sgt i64 %42, %47
  br i1 %48, label %49, label %52

49:                                               ; preds = %41, %37
  %50 = call i32 @ERR(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0))
  %51 = load i32, i32* @E_FAIL, align 4
  store i32 %51, i32* %8, align 4
  br label %70

52:                                               ; preds = %41
  %53 = load %struct.TYPE_5__*, %struct.TYPE_5__** %16, align 8
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 1
  %58 = load i32*, i32** %57, align 8
  %59 = load i64, i64* %10, align 8
  %60 = load i64, i64* @MSHTML_DISPID_CUSTOM_MIN, align 8
  %61 = sub nsw i64 %59, %60
  %62 = getelementptr inbounds i32, i32* %58, i64 %61
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* %11, align 4
  %65 = load i32, i32* %12, align 4
  %66 = load i32*, i32** %13, align 8
  %67 = load i32*, i32** %14, align 8
  %68 = load i32*, i32** %15, align 8
  %69 = call i32 @IDispatch_Invoke(i32 %55, i32 %63, i32* @IID_NULL, i32 %64, i32 %65, i32* %66, i32* %67, i32* %68, i32* null)
  store i32 %69, i32* %8, align 4
  br label %70

70:                                               ; preds = %52, %49, %34, %27
  %71 = load i32, i32* %8, align 4
  ret i32 %71
}

declare dso_local i32 @FIXME(i8*) #1

declare dso_local i32 @check_script_safety(%struct.TYPE_5__*) #1

declare dso_local i32 @ERR(i8*) #1

declare dso_local i32 @IDispatch_Invoke(i32, i32, i32*, i32, i32, i32*, i32*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
