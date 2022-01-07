; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/rsaenh/extr_handle.c_alloc_handle.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/rsaenh/extr_handle.c_alloc_handle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.handle_table = type { i64, i64, i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i64, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }

@FALSE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"(lpTable=%p, lpObject=%p, lpHandle=%p)\0A\00", align 1
@INVALID_HANDLE_VALUE = common dso_local global i64 0, align 8
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.handle_table*, %struct.TYPE_6__*, i64*)* @alloc_handle to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @alloc_handle(%struct.handle_table* %0, %struct.TYPE_6__* %1, i64* %2) #0 {
  %4 = alloca %struct.handle_table*, align 8
  %5 = alloca %struct.TYPE_6__*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i32, align 4
  store %struct.handle_table* %0, %struct.handle_table** %4, align 8
  store %struct.TYPE_6__* %1, %struct.TYPE_6__** %5, align 8
  store i64* %2, i64** %6, align 8
  %8 = load i32, i32* @FALSE, align 4
  store i32 %8, i32* %7, align 4
  %9 = load %struct.handle_table*, %struct.handle_table** %4, align 8
  %10 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %11 = load i64*, i64** %6, align 8
  %12 = call i32 @TRACE(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), %struct.handle_table* %9, %struct.TYPE_6__* %10, i64* %11)
  %13 = load %struct.handle_table*, %struct.handle_table** %4, align 8
  %14 = getelementptr inbounds %struct.handle_table, %struct.handle_table* %13, i32 0, i32 2
  %15 = call i32 @EnterCriticalSection(i32* %14)
  %16 = load %struct.handle_table*, %struct.handle_table** %4, align 8
  %17 = getelementptr inbounds %struct.handle_table, %struct.handle_table* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load %struct.handle_table*, %struct.handle_table** %4, align 8
  %20 = getelementptr inbounds %struct.handle_table, %struct.handle_table* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = icmp uge i64 %18, %21
  br i1 %22, label %23, label %31

23:                                               ; preds = %3
  %24 = load %struct.handle_table*, %struct.handle_table** %4, align 8
  %25 = call i32 @grow_handle_table(%struct.handle_table* %24)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %30, label %27

27:                                               ; preds = %23
  %28 = load i64, i64* @INVALID_HANDLE_VALUE, align 8
  %29 = load i64*, i64** %6, align 8
  store i64 %28, i64* %29, align 8
  br label %61

30:                                               ; preds = %23
  br label %31

31:                                               ; preds = %30, %3
  %32 = load %struct.handle_table*, %struct.handle_table** %4, align 8
  %33 = getelementptr inbounds %struct.handle_table, %struct.handle_table* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = call i64 @INDEX2HANDLE(i64 %34)
  %36 = load i64*, i64** %6, align 8
  store i64 %35, i64* %36, align 8
  %37 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %38 = load %struct.handle_table*, %struct.handle_table** %4, align 8
  %39 = getelementptr inbounds %struct.handle_table, %struct.handle_table* %38, i32 0, i32 3
  %40 = load %struct.TYPE_5__*, %struct.TYPE_5__** %39, align 8
  %41 = load %struct.handle_table*, %struct.handle_table** %4, align 8
  %42 = getelementptr inbounds %struct.handle_table, %struct.handle_table* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i64 %43
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 1
  store %struct.TYPE_6__* %37, %struct.TYPE_6__** %45, align 8
  %46 = load %struct.handle_table*, %struct.handle_table** %4, align 8
  %47 = getelementptr inbounds %struct.handle_table, %struct.handle_table* %46, i32 0, i32 3
  %48 = load %struct.TYPE_5__*, %struct.TYPE_5__** %47, align 8
  %49 = load %struct.handle_table*, %struct.handle_table** %4, align 8
  %50 = getelementptr inbounds %struct.handle_table, %struct.handle_table* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i64 %51
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = load %struct.handle_table*, %struct.handle_table** %4, align 8
  %56 = getelementptr inbounds %struct.handle_table, %struct.handle_table* %55, i32 0, i32 0
  store i64 %54, i64* %56, align 8
  %57 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i32 0, i32 0
  %59 = call i32 @InterlockedIncrement(i32* %58)
  %60 = load i32, i32* @TRUE, align 4
  store i32 %60, i32* %7, align 4
  br label %61

61:                                               ; preds = %31, %27
  %62 = load %struct.handle_table*, %struct.handle_table** %4, align 8
  %63 = getelementptr inbounds %struct.handle_table, %struct.handle_table* %62, i32 0, i32 2
  %64 = call i32 @LeaveCriticalSection(i32* %63)
  %65 = load i32, i32* %7, align 4
  ret i32 %65
}

declare dso_local i32 @TRACE(i8*, %struct.handle_table*, %struct.TYPE_6__*, i64*) #1

declare dso_local i32 @EnterCriticalSection(i32*) #1

declare dso_local i32 @grow_handle_table(%struct.handle_table*) #1

declare dso_local i64 @INDEX2HANDLE(i64) #1

declare dso_local i32 @InterlockedIncrement(i32*) #1

declare dso_local i32 @LeaveCriticalSection(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
