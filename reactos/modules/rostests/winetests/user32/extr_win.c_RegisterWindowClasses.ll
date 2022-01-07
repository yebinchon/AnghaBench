; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/user32/extr_win.c_RegisterWindowClasses.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/user32/extr_win.c_RegisterWindowClasses.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32*, i8*, i8*, i64, i8*, i64, i64, i32, i8* }
%struct.TYPE_6__ = type { i8*, i32*, i8*, i8*, i64, i8*, i64, i64, i32, i8* }

@CS_DBLCLKS = common dso_local global i8* null, align 8
@main_window_procA = common dso_local global i32 0, align 4
@IDC_ARROW = common dso_local global i64 0, align 8
@WHITE_BRUSH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"MainWindowClass\00", align 1
@FALSE = common dso_local global i32 0, align 4
@main_window_procW = common dso_local global i32 0, align 4
@mainclassW = common dso_local global i32 0, align 4
@tool_window_procA = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [16 x i8] c"ToolWindowClass\00", align 1
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @RegisterWindowClasses to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @RegisterWindowClasses() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.TYPE_5__, align 8
  %3 = alloca %struct.TYPE_6__, align 8
  %4 = load i8*, i8** @CS_DBLCLKS, align 8
  %5 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %3, i32 0, i32 9
  store i8* %4, i8** %5, align 8
  %6 = load i32, i32* @main_window_procA, align 4
  %7 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %3, i32 0, i32 8
  store i32 %6, i32* %7, align 8
  %8 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %3, i32 0, i32 7
  store i64 0, i64* %8, align 8
  %9 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %3, i32 0, i32 6
  store i64 0, i64* %9, align 8
  %10 = call i8* @GetModuleHandleA(i32 0)
  %11 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %3, i32 0, i32 5
  store i8* %10, i8** %11, align 8
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %3, i32 0, i32 4
  store i64 0, i64* %12, align 8
  %13 = load i64, i64* @IDC_ARROW, align 8
  %14 = trunc i64 %13 to i32
  %15 = call i8* @LoadCursorA(i32 0, i32 %14)
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %3, i32 0, i32 3
  store i8* %15, i8** %16, align 8
  %17 = load i32, i32* @WHITE_BRUSH, align 4
  %18 = call i8* @GetStockObject(i32 %17)
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %3, i32 0, i32 2
  store i8* %18, i8** %19, align 8
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %3, i32 0, i32 1
  store i32* null, i32** %20, align 8
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %3, i32 0, i32 0
  store i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i8** %21, align 8
  %22 = call i32 @RegisterClassA(%struct.TYPE_6__* %3)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %26, label %24

24:                                               ; preds = %0
  %25 = load i32, i32* @FALSE, align 4
  store i32 %25, i32* %1, align 4
  br label %74

26:                                               ; preds = %0
  %27 = load i8*, i8** @CS_DBLCLKS, align 8
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %2, i32 0, i32 9
  store i8* %27, i8** %28, align 8
  %29 = load i32, i32* @main_window_procW, align 4
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %2, i32 0, i32 8
  store i32 %29, i32* %30, align 8
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %2, i32 0, i32 7
  store i64 0, i64* %31, align 8
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %2, i32 0, i32 6
  store i64 0, i64* %32, align 8
  %33 = call i8* @GetModuleHandleA(i32 0)
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %2, i32 0, i32 5
  store i8* %33, i8** %34, align 8
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %2, i32 0, i32 4
  store i64 0, i64* %35, align 8
  %36 = load i64, i64* @IDC_ARROW, align 8
  %37 = trunc i64 %36 to i32
  %38 = call i8* @LoadCursorA(i32 0, i32 %37)
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %2, i32 0, i32 3
  store i8* %38, i8** %39, align 8
  %40 = load i32, i32* @WHITE_BRUSH, align 4
  %41 = call i8* @GetStockObject(i32 %40)
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %2, i32 0, i32 2
  store i8* %41, i8** %42, align 8
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %2, i32 0, i32 1
  store i32* null, i32** %43, align 8
  %44 = load i32, i32* @mainclassW, align 4
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %2, i32 0, i32 0
  store i32 %44, i32* %45, align 8
  %46 = call i32 @RegisterClassW(%struct.TYPE_5__* %2)
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %50, label %48

48:                                               ; preds = %26
  %49 = load i32, i32* @FALSE, align 4
  store i32 %49, i32* %1, align 4
  br label %74

50:                                               ; preds = %26
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %3, i32 0, i32 9
  store i8* null, i8** %51, align 8
  %52 = load i32, i32* @tool_window_procA, align 4
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %3, i32 0, i32 8
  store i32 %52, i32* %53, align 8
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %3, i32 0, i32 7
  store i64 0, i64* %54, align 8
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %3, i32 0, i32 6
  store i64 0, i64* %55, align 8
  %56 = call i8* @GetModuleHandleA(i32 0)
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %3, i32 0, i32 5
  store i8* %56, i8** %57, align 8
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %3, i32 0, i32 4
  store i64 0, i64* %58, align 8
  %59 = load i64, i64* @IDC_ARROW, align 8
  %60 = trunc i64 %59 to i32
  %61 = call i8* @LoadCursorA(i32 0, i32 %60)
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %3, i32 0, i32 3
  store i8* %61, i8** %62, align 8
  %63 = load i32, i32* @WHITE_BRUSH, align 4
  %64 = call i8* @GetStockObject(i32 %63)
  %65 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %3, i32 0, i32 2
  store i8* %64, i8** %65, align 8
  %66 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %3, i32 0, i32 1
  store i32* null, i32** %66, align 8
  %67 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %3, i32 0, i32 0
  store i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i8** %67, align 8
  %68 = call i32 @RegisterClassA(%struct.TYPE_6__* %3)
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %72, label %70

70:                                               ; preds = %50
  %71 = load i32, i32* @FALSE, align 4
  store i32 %71, i32* %1, align 4
  br label %74

72:                                               ; preds = %50
  %73 = load i32, i32* @TRUE, align 4
  store i32 %73, i32* %1, align 4
  br label %74

74:                                               ; preds = %72, %70, %48, %24
  %75 = load i32, i32* %1, align 4
  ret i32 %75
}

declare dso_local i8* @GetModuleHandleA(i32) #1

declare dso_local i8* @LoadCursorA(i32, i32) #1

declare dso_local i8* @GetStockObject(i32) #1

declare dso_local i32 @RegisterClassA(%struct.TYPE_6__*) #1

declare dso_local i32 @RegisterClassW(%struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
