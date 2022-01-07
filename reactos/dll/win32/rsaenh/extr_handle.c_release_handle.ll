; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/rsaenh/extr_handle.c_release_handle.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/rsaenh/extr_handle.c_release_handle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.handle_table = type { i32, i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 (%struct.TYPE_5__*)*, i32 }

@FALSE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"(lpTable=%p, handle=%ld)\0A\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"destroying handle %ld\0A\00", align 1
@TRUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @release_handle(%struct.handle_table* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.handle_table*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_5__*, align 8
  %9 = alloca i32, align 4
  store %struct.handle_table* %0, %struct.handle_table** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %10 = load i32, i32* %5, align 4
  %11 = call i32 @HANDLE2INDEX(i32 %10)
  store i32 %11, i32* %7, align 4
  %12 = load i32, i32* @FALSE, align 4
  store i32 %12, i32* %9, align 4
  %13 = load %struct.handle_table*, %struct.handle_table** %4, align 8
  %14 = load i32, i32* %5, align 4
  %15 = call i32 (i8*, %struct.handle_table*, ...) @TRACE(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), %struct.handle_table* %13, i32 %14)
  %16 = load %struct.handle_table*, %struct.handle_table** %4, align 8
  %17 = getelementptr inbounds %struct.handle_table, %struct.handle_table* %16, i32 0, i32 1
  %18 = call i32 @EnterCriticalSection(i32* %17)
  %19 = load %struct.handle_table*, %struct.handle_table** %4, align 8
  %20 = load i32, i32* %5, align 4
  %21 = load i32, i32* %6, align 4
  %22 = call i32 @is_valid_handle(%struct.handle_table* %19, i32 %20, i32 %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %25, label %24

24:                                               ; preds = %3
  br label %76

25:                                               ; preds = %3
  %26 = load %struct.handle_table*, %struct.handle_table** %4, align 8
  %27 = getelementptr inbounds %struct.handle_table, %struct.handle_table* %26, i32 0, i32 2
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %27, align 8
  %29 = load i32, i32* %7, align 4
  %30 = zext i32 %29 to i64
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i64 %30
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 1
  %33 = load %struct.TYPE_5__*, %struct.TYPE_5__** %32, align 8
  store %struct.TYPE_5__* %33, %struct.TYPE_5__** %8, align 8
  %34 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 1
  %36 = call i64 @InterlockedDecrement(i32* %35)
  %37 = icmp eq i64 %36, 0
  br i1 %37, label %38, label %54

38:                                               ; preds = %25
  %39 = load i32, i32* %5, align 4
  %40 = sext i32 %39 to i64
  %41 = inttoptr i64 %40 to %struct.handle_table*
  %42 = call i32 (i8*, %struct.handle_table*, ...) @TRACE(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), %struct.handle_table* %41)
  %43 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 0
  %45 = load i32 (%struct.TYPE_5__*)*, i32 (%struct.TYPE_5__*)** %44, align 8
  %46 = icmp ne i32 (%struct.TYPE_5__*)* %45, null
  br i1 %46, label %47, label %53

47:                                               ; preds = %38
  %48 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i32 0, i32 0
  %50 = load i32 (%struct.TYPE_5__*)*, i32 (%struct.TYPE_5__*)** %49, align 8
  %51 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %52 = call i32 %50(%struct.TYPE_5__* %51)
  br label %53

53:                                               ; preds = %47, %38
  br label %54

54:                                               ; preds = %53, %25
  %55 = load %struct.handle_table*, %struct.handle_table** %4, align 8
  %56 = getelementptr inbounds %struct.handle_table, %struct.handle_table* %55, i32 0, i32 2
  %57 = load %struct.TYPE_4__*, %struct.TYPE_4__** %56, align 8
  %58 = load i32, i32* %7, align 4
  %59 = zext i32 %58 to i64
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i64 %59
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 1
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %61, align 8
  %62 = load %struct.handle_table*, %struct.handle_table** %4, align 8
  %63 = getelementptr inbounds %struct.handle_table, %struct.handle_table* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = load %struct.handle_table*, %struct.handle_table** %4, align 8
  %66 = getelementptr inbounds %struct.handle_table, %struct.handle_table* %65, i32 0, i32 2
  %67 = load %struct.TYPE_4__*, %struct.TYPE_4__** %66, align 8
  %68 = load i32, i32* %7, align 4
  %69 = zext i32 %68 to i64
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i64 %69
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 0
  store i32 %64, i32* %71, align 8
  %72 = load i32, i32* %7, align 4
  %73 = load %struct.handle_table*, %struct.handle_table** %4, align 8
  %74 = getelementptr inbounds %struct.handle_table, %struct.handle_table* %73, i32 0, i32 0
  store i32 %72, i32* %74, align 8
  %75 = load i32, i32* @TRUE, align 4
  store i32 %75, i32* %9, align 4
  br label %76

76:                                               ; preds = %54, %24
  %77 = load %struct.handle_table*, %struct.handle_table** %4, align 8
  %78 = getelementptr inbounds %struct.handle_table, %struct.handle_table* %77, i32 0, i32 1
  %79 = call i32 @LeaveCriticalSection(i32* %78)
  %80 = load i32, i32* %9, align 4
  ret i32 %80
}

declare dso_local i32 @HANDLE2INDEX(i32) #1

declare dso_local i32 @TRACE(i8*, %struct.handle_table*, ...) #1

declare dso_local i32 @EnterCriticalSection(i32*) #1

declare dso_local i32 @is_valid_handle(%struct.handle_table*, i32, i32) #1

declare dso_local i64 @InterlockedDecrement(i32*) #1

declare dso_local i32 @LeaveCriticalSection(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
