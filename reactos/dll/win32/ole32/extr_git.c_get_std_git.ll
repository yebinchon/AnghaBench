; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/ole32/extr_git.c_get_std_git.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/ole32/extr_git.c_get_std_git.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, %struct.TYPE_7__, i32 }
%struct.TYPE_7__ = type { i32* }

@std_git = common dso_local global i32* null, align 8
@StdGlobalInterfaceTableImpl_Vtbl = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"Created the GIT at %p\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @get_std_git() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca %struct.TYPE_6__*, align 8
  %3 = load i32*, i32** @std_git, align 8
  %4 = icmp ne i32* %3, null
  br i1 %4, label %32, label %5

5:                                                ; preds = %0
  %6 = call i32 (...) @GetProcessHeap()
  %7 = call %struct.TYPE_6__* @HeapAlloc(i32 %6, i32 0, i32 24)
  store %struct.TYPE_6__* %7, %struct.TYPE_6__** %2, align 8
  %8 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %9 = icmp ne %struct.TYPE_6__* %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %5
  store i32* null, i32** %1, align 8
  br label %34

11:                                               ; preds = %5
  %12 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 1
  %14 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i32 0, i32 0
  store i32* @StdGlobalInterfaceTableImpl_Vtbl, i32** %14, align 8
  %15 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 2
  %17 = call i32 @list_init(i32* %16)
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 0
  store i32 61696, i32* %19, align 8
  %20 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 1
  %22 = call i64 @InterlockedCompareExchangePointer(i8** bitcast (i32** @std_git to i8**), %struct.TYPE_7__* %21, i32* null)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %28

24:                                               ; preds = %11
  %25 = call i32 (...) @GetProcessHeap()
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %27 = call i32 @HeapFree(i32 %25, i32 0, %struct.TYPE_6__* %26)
  br label %31

28:                                               ; preds = %11
  %29 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %30 = call i32 @TRACE(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), %struct.TYPE_6__* %29)
  br label %31

31:                                               ; preds = %28, %24
  br label %32

32:                                               ; preds = %31, %0
  %33 = load i32*, i32** @std_git, align 8
  store i32* %33, i32** %1, align 8
  br label %34

34:                                               ; preds = %32, %10
  %35 = load i32*, i32** %1, align 8
  ret i32* %35
}

declare dso_local %struct.TYPE_6__* @HeapAlloc(i32, i32, i32) #1

declare dso_local i32 @GetProcessHeap(...) #1

declare dso_local i32 @list_init(i32*) #1

declare dso_local i64 @InterlockedCompareExchangePointer(i8**, %struct.TYPE_7__*, i32*) #1

declare dso_local i32 @HeapFree(i32, i32, %struct.TYPE_6__*) #1

declare dso_local i32 @TRACE(i8*, %struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
