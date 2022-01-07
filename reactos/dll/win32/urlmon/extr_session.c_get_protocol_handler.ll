; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/urlmon/extr_session.c_get_protocol_handler.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/urlmon/extr_session.c_get_protocol_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32* }

@session_cs = common dso_local global i32 0, align 4
@S_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @get_protocol_handler(i32* %0, i32* %1, i32** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32**, align 8
  %8 = alloca %struct.TYPE_3__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32** %2, i32*** %7, align 8
  %11 = load i32**, i32*** %7, align 8
  store i32* null, i32** %11, align 8
  %12 = load i32*, i32** %5, align 8
  %13 = call i32 @IUri_GetSchemeName(i32* %12, i32* %9)
  store i32 %13, i32* %10, align 4
  %14 = load i32, i32* %10, align 4
  %15 = call i64 @FAILED(i32 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %3
  %18 = load i32, i32* %10, align 4
  store i32 %18, i32* %4, align 4
  br label %60

19:                                               ; preds = %3
  %20 = call i32 @EnterCriticalSection(i32* @session_cs)
  %21 = load i32, i32* %9, align 4
  %22 = call %struct.TYPE_3__* @find_name_space(i32 %21)
  store %struct.TYPE_3__* %22, %struct.TYPE_3__** %8, align 8
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %24 = icmp ne %struct.TYPE_3__* %23, null
  br i1 %24, label %25, label %41

25:                                               ; preds = %19
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 1
  %28 = load i32*, i32** %27, align 8
  %29 = load i32**, i32*** %7, align 8
  store i32* %28, i32** %29, align 8
  %30 = load i32**, i32*** %7, align 8
  %31 = load i32*, i32** %30, align 8
  %32 = call i32 @IClassFactory_AddRef(i32* %31)
  %33 = load i32*, i32** %6, align 8
  %34 = icmp ne i32* %33, null
  br i1 %34, label %35, label %40

35:                                               ; preds = %25
  %36 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = load i32*, i32** %6, align 8
  store i32 %38, i32* %39, align 4
  br label %40

40:                                               ; preds = %35, %25
  br label %41

41:                                               ; preds = %40, %19
  %42 = call i32 @LeaveCriticalSection(i32* @session_cs)
  %43 = load i32**, i32*** %7, align 8
  %44 = load i32*, i32** %43, align 8
  %45 = icmp ne i32* %44, null
  br i1 %45, label %46, label %48

46:                                               ; preds = %41
  %47 = load i32, i32* @S_OK, align 4
  br label %55

48:                                               ; preds = %41
  %49 = load i32, i32* %9, align 4
  %50 = load i32, i32* %9, align 4
  %51 = call i32 @SysStringLen(i32 %50)
  %52 = load i32*, i32** %6, align 8
  %53 = load i32**, i32*** %7, align 8
  %54 = call i32 @get_protocol_cf(i32 %49, i32 %51, i32* %52, i32** %53)
  br label %55

55:                                               ; preds = %48, %46
  %56 = phi i32 [ %47, %46 ], [ %54, %48 ]
  store i32 %56, i32* %10, align 4
  %57 = load i32, i32* %9, align 4
  %58 = call i32 @SysFreeString(i32 %57)
  %59 = load i32, i32* %10, align 4
  store i32 %59, i32* %4, align 4
  br label %60

60:                                               ; preds = %55, %17
  %61 = load i32, i32* %4, align 4
  ret i32 %61
}

declare dso_local i32 @IUri_GetSchemeName(i32*, i32*) #1

declare dso_local i64 @FAILED(i32) #1

declare dso_local i32 @EnterCriticalSection(i32*) #1

declare dso_local %struct.TYPE_3__* @find_name_space(i32) #1

declare dso_local i32 @IClassFactory_AddRef(i32*) #1

declare dso_local i32 @LeaveCriticalSection(i32*) #1

declare dso_local i32 @get_protocol_cf(i32, i32, i32*, i32**) #1

declare dso_local i32 @SysStringLen(i32) #1

declare dso_local i32 @SysFreeString(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
