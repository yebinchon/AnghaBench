; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/riched20/extr_reader.c_LookupInit.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/riched20/extr_reader.c_LookupInit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, %struct.TYPE_9__** }
%struct.TYPE_9__ = type { i32, i32* }

@rtfHashTable = common dso_local global %struct.TYPE_10__* null, align 8
@rtfKey = common dso_local global %struct.TYPE_9__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @LookupInit() #0 {
  %1 = alloca %struct.TYPE_9__*, align 8
  %2 = alloca i32, align 4
  %3 = load %struct.TYPE_10__*, %struct.TYPE_10__** @rtfHashTable, align 8
  %4 = call i32 @memset(%struct.TYPE_10__* %3, i32 0, i32 8)
  %5 = load %struct.TYPE_9__*, %struct.TYPE_9__** @rtfKey, align 8
  store %struct.TYPE_9__* %5, %struct.TYPE_9__** %1, align 8
  br label %6

6:                                                ; preds = %79, %0
  %7 = load %struct.TYPE_9__*, %struct.TYPE_9__** %1, align 8
  %8 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %7, i32 0, i32 1
  %9 = load i32*, i32** %8, align 8
  %10 = icmp ne i32* %9, null
  br i1 %10, label %11, label %82

11:                                               ; preds = %6
  %12 = load %struct.TYPE_9__*, %struct.TYPE_9__** %1, align 8
  %13 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %12, i32 0, i32 1
  %14 = load i32*, i32** %13, align 8
  %15 = call i32 @Hash(i32* %14)
  %16 = load %struct.TYPE_9__*, %struct.TYPE_9__** %1, align 8
  %17 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %16, i32 0, i32 0
  store i32 %15, i32* %17, align 8
  %18 = load %struct.TYPE_9__*, %struct.TYPE_9__** %1, align 8
  %19 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = load %struct.TYPE_9__*, %struct.TYPE_9__** @rtfKey, align 8
  %22 = call i32 @ARRAY_SIZE(%struct.TYPE_9__* %21)
  %23 = mul nsw i32 %22, 2
  %24 = srem i32 %20, %23
  store i32 %24, i32* %2, align 4
  %25 = load %struct.TYPE_10__*, %struct.TYPE_10__** @rtfHashTable, align 8
  %26 = load i32, i32* %2, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %25, i64 %27
  %29 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %39, label %32

32:                                               ; preds = %11
  %33 = call %struct.TYPE_9__** @heap_alloc(i32 8)
  %34 = load %struct.TYPE_10__*, %struct.TYPE_10__** @rtfHashTable, align 8
  %35 = load i32, i32* %2, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %34, i64 %36
  %38 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %37, i32 0, i32 1
  store %struct.TYPE_9__** %33, %struct.TYPE_9__*** %38, align 8
  br label %62

39:                                               ; preds = %11
  %40 = load %struct.TYPE_10__*, %struct.TYPE_10__** @rtfHashTable, align 8
  %41 = load i32, i32* %2, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %40, i64 %42
  %44 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %43, i32 0, i32 1
  %45 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %44, align 8
  %46 = load %struct.TYPE_10__*, %struct.TYPE_10__** @rtfHashTable, align 8
  %47 = load i32, i32* %2, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %46, i64 %48
  %50 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = add nsw i32 %51, 1
  %53 = sext i32 %52 to i64
  %54 = mul i64 8, %53
  %55 = trunc i64 %54 to i32
  %56 = call %struct.TYPE_9__** @heap_realloc(%struct.TYPE_9__** %45, i32 %55)
  %57 = load %struct.TYPE_10__*, %struct.TYPE_10__** @rtfHashTable, align 8
  %58 = load i32, i32* %2, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %57, i64 %59
  %61 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %60, i32 0, i32 1
  store %struct.TYPE_9__** %56, %struct.TYPE_9__*** %61, align 8
  br label %62

62:                                               ; preds = %39, %32
  %63 = load %struct.TYPE_9__*, %struct.TYPE_9__** %1, align 8
  %64 = load %struct.TYPE_10__*, %struct.TYPE_10__** @rtfHashTable, align 8
  %65 = load i32, i32* %2, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %64, i64 %66
  %68 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %67, i32 0, i32 1
  %69 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %68, align 8
  %70 = load %struct.TYPE_10__*, %struct.TYPE_10__** @rtfHashTable, align 8
  %71 = load i32, i32* %2, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %70, i64 %72
  %74 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %74, align 8
  %77 = sext i32 %75 to i64
  %78 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %69, i64 %77
  store %struct.TYPE_9__* %63, %struct.TYPE_9__** %78, align 8
  br label %79

79:                                               ; preds = %62
  %80 = load %struct.TYPE_9__*, %struct.TYPE_9__** %1, align 8
  %81 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %80, i32 1
  store %struct.TYPE_9__* %81, %struct.TYPE_9__** %1, align 8
  br label %6

82:                                               ; preds = %6
  ret void
}

declare dso_local i32 @memset(%struct.TYPE_10__*, i32, i32) #1

declare dso_local i32 @Hash(i32*) #1

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_9__*) #1

declare dso_local %struct.TYPE_9__** @heap_alloc(i32) #1

declare dso_local %struct.TYPE_9__** @heap_realloc(%struct.TYPE_9__**, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
