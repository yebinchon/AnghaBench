; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/winhttp/extr_handle.c_alloc_handle.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/winhttp/extr_handle.c_alloc_handle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32*, i32 }

@handle_cs = common dso_local global i32 0, align 4
@max_handles = common dso_local global i32 0, align 4
@HANDLE_CHUNK_SIZE = common dso_local global i32 0, align 4
@handles = common dso_local global %struct.TYPE_9__** null, align 8
@next_handle = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"handle isn't free but should be\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @alloc_handle(%struct.TYPE_9__* %0) #0 {
  %2 = alloca %struct.TYPE_9__*, align 8
  %3 = alloca %struct.TYPE_9__**, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %2, align 8
  %6 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %7 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %6, i32 0, i32 1
  %8 = call i32 @list_init(i32* %7)
  %9 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %10 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %9, i32 0, i32 0
  store i32* null, i32** %10, align 8
  %11 = call i32 @EnterCriticalSection(i32* @handle_cs)
  %12 = load i32, i32* @max_handles, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %26, label %14

14:                                               ; preds = %1
  %15 = load i32, i32* @HANDLE_CHUNK_SIZE, align 4
  store i32 %15, i32* %5, align 4
  %16 = load i32, i32* %5, align 4
  %17 = sext i32 %16 to i64
  %18 = mul i64 4, %17
  %19 = trunc i64 %18 to i32
  %20 = call %struct.TYPE_9__** @heap_alloc_zero(i32 %19)
  store %struct.TYPE_9__** %20, %struct.TYPE_9__*** %3, align 8
  %21 = icmp ne %struct.TYPE_9__** %20, null
  br i1 %21, label %23, label %22

22:                                               ; preds = %14
  br label %84

23:                                               ; preds = %14
  %24 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %3, align 8
  store %struct.TYPE_9__** %24, %struct.TYPE_9__*** @handles, align 8
  %25 = load i32, i32* %5, align 4
  store i32 %25, i32* @max_handles, align 4
  br label %26

26:                                               ; preds = %23, %1
  %27 = load i32, i32* @max_handles, align 4
  %28 = load i32, i32* @next_handle, align 4
  %29 = icmp eq i32 %27, %28
  br i1 %29, label %30, label %44

30:                                               ; preds = %26
  %31 = load i32, i32* @max_handles, align 4
  %32 = mul nsw i32 %31, 2
  store i32 %32, i32* %5, align 4
  %33 = load %struct.TYPE_9__**, %struct.TYPE_9__*** @handles, align 8
  %34 = load i32, i32* %5, align 4
  %35 = sext i32 %34 to i64
  %36 = mul i64 4, %35
  %37 = trunc i64 %36 to i32
  %38 = call %struct.TYPE_9__** @heap_realloc_zero(%struct.TYPE_9__** %33, i32 %37)
  store %struct.TYPE_9__** %38, %struct.TYPE_9__*** %3, align 8
  %39 = icmp ne %struct.TYPE_9__** %38, null
  br i1 %39, label %41, label %40

40:                                               ; preds = %30
  br label %84

41:                                               ; preds = %30
  %42 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %3, align 8
  store %struct.TYPE_9__** %42, %struct.TYPE_9__*** @handles, align 8
  %43 = load i32, i32* %5, align 4
  store i32 %43, i32* @max_handles, align 4
  br label %44

44:                                               ; preds = %41, %26
  %45 = load i32, i32* @next_handle, align 4
  store i32 %45, i32* %4, align 4
  %46 = load %struct.TYPE_9__**, %struct.TYPE_9__*** @handles, align 8
  %47 = load i32, i32* %4, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %46, i64 %48
  %50 = load %struct.TYPE_9__*, %struct.TYPE_9__** %49, align 8
  %51 = icmp ne %struct.TYPE_9__* %50, null
  br i1 %51, label %52, label %54

52:                                               ; preds = %44
  %53 = call i32 @ERR(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  br label %54

54:                                               ; preds = %52, %44
  %55 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %56 = call %struct.TYPE_9__* @addref_object(%struct.TYPE_9__* %55)
  %57 = load %struct.TYPE_9__**, %struct.TYPE_9__*** @handles, align 8
  %58 = load i32, i32* %4, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %57, i64 %59
  store %struct.TYPE_9__* %56, %struct.TYPE_9__** %60, align 8
  %61 = load i32, i32* %4, align 4
  %62 = add nsw i32 %61, 1
  %63 = sext i32 %62 to i64
  %64 = inttoptr i64 %63 to i32*
  %65 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %66 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %65, i32 0, i32 0
  store i32* %64, i32** %66, align 8
  br label %67

67:                                               ; preds = %80, %54
  %68 = load i32, i32* @next_handle, align 4
  %69 = load i32, i32* @max_handles, align 4
  %70 = icmp slt i32 %68, %69
  br i1 %70, label %71, label %78

71:                                               ; preds = %67
  %72 = load %struct.TYPE_9__**, %struct.TYPE_9__*** @handles, align 8
  %73 = load i32, i32* @next_handle, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %72, i64 %74
  %76 = load %struct.TYPE_9__*, %struct.TYPE_9__** %75, align 8
  %77 = icmp ne %struct.TYPE_9__* %76, null
  br label %78

78:                                               ; preds = %71, %67
  %79 = phi i1 [ false, %67 ], [ %77, %71 ]
  br i1 %79, label %80, label %83

80:                                               ; preds = %78
  %81 = load i32, i32* @next_handle, align 4
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* @next_handle, align 4
  br label %67

83:                                               ; preds = %78
  br label %84

84:                                               ; preds = %83, %40, %22
  %85 = call i32 @LeaveCriticalSection(i32* @handle_cs)
  %86 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %87 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %86, i32 0, i32 0
  %88 = load i32*, i32** %87, align 8
  ret i32* %88
}

declare dso_local i32 @list_init(i32*) #1

declare dso_local i32 @EnterCriticalSection(i32*) #1

declare dso_local %struct.TYPE_9__** @heap_alloc_zero(i32) #1

declare dso_local %struct.TYPE_9__** @heap_realloc_zero(%struct.TYPE_9__**, i32) #1

declare dso_local i32 @ERR(i8*) #1

declare dso_local %struct.TYPE_9__* @addref_object(%struct.TYPE_9__*) #1

declare dso_local i32 @LeaveCriticalSection(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
