; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/rpcrt4/extr_cstub.c_release_delegating_vtbl.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/rpcrt4/extr_cstub.c_release_delegating_vtbl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64 }

@delegating_vtbl_section = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"ref now %d\0A\00", align 1
@current_vtbl = common dso_local global %struct.TYPE_4__* null, align 8
@.str.1 = private unnamed_addr constant [39 x i8] c"... and we're not current so free'ing\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @release_delegating_vtbl(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca %struct.TYPE_4__*, align 8
  store i32* %0, i32** %2, align 8
  %4 = load i32*, i32** %2, align 8
  %5 = getelementptr inbounds i32, i32* %4, i64 -1
  %6 = bitcast i32* %5 to %struct.TYPE_4__*
  store %struct.TYPE_4__* %6, %struct.TYPE_4__** %3, align 8
  %7 = call i32 @EnterCriticalSection(i32* @delegating_vtbl_section)
  %8 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = add nsw i64 %10, -1
  store i64 %11, i64* %9, align 8
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i64 %14)
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp eq i64 %18, 0
  br i1 %19, label %20, label %29

20:                                               ; preds = %1
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** @current_vtbl, align 8
  %23 = icmp ne %struct.TYPE_4__* %21, %22
  br i1 %23, label %24, label %29

24:                                               ; preds = %20
  %25 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0))
  %26 = call i32 (...) @GetProcessHeap()
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %28 = call i32 @HeapFree(i32 %26, i32 0, %struct.TYPE_4__* %27)
  br label %29

29:                                               ; preds = %24, %20, %1
  %30 = call i32 @LeaveCriticalSection(i32* @delegating_vtbl_section)
  ret void
}

declare dso_local i32 @EnterCriticalSection(i32*) #1

declare dso_local i32 @TRACE(i8*, ...) #1

declare dso_local i32 @HeapFree(i32, i32, %struct.TYPE_4__*) #1

declare dso_local i32 @GetProcessHeap(...) #1

declare dso_local i32 @LeaveCriticalSection(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
