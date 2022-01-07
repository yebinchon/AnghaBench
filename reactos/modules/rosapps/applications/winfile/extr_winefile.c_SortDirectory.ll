; ModuleID = '/home/carl/AnghaBench/reactos/modules/rosapps/applications/winfile/extr_winefile.c_SortDirectory.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rosapps/applications/winfile/extr_winefile.c_SortDirectory.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_6__*, %struct.TYPE_6__* }

@sortFunctions = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_6__*, i64)* @SortDirectory to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @SortDirectory(%struct.TYPE_6__* %0, i64 %1) #0 {
  %3 = alloca %struct.TYPE_6__*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.TYPE_6__*, align 8
  %6 = alloca %struct.TYPE_6__**, align 8
  %7 = alloca %struct.TYPE_6__**, align 8
  %8 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %3, align 8
  store i64 %1, i64* %4, align 8
  store i32 0, i32* %8, align 4
  %9 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %10 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 1
  %11 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  store %struct.TYPE_6__* %11, %struct.TYPE_6__** %5, align 8
  br label %12

12:                                               ; preds = %18, %2
  %13 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %14 = icmp ne %struct.TYPE_6__* %13, null
  br i1 %14, label %15, label %22

15:                                               ; preds = %12
  %16 = load i32, i32* %8, align 4
  %17 = add nsw i32 %16, 1
  store i32 %17, i32* %8, align 4
  br label %18

18:                                               ; preds = %15
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 0
  %21 = load %struct.TYPE_6__*, %struct.TYPE_6__** %20, align 8
  store %struct.TYPE_6__* %21, %struct.TYPE_6__** %5, align 8
  br label %12

22:                                               ; preds = %12
  %23 = load i32, i32* %8, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %83

25:                                               ; preds = %22
  %26 = call i32 (...) @GetProcessHeap()
  %27 = load i32, i32* %8, align 4
  %28 = sext i32 %27 to i64
  %29 = mul i64 %28, 8
  %30 = trunc i64 %29 to i32
  %31 = call %struct.TYPE_6__** @HeapAlloc(i32 %26, i32 0, i32 %30)
  store %struct.TYPE_6__** %31, %struct.TYPE_6__*** %6, align 8
  %32 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %6, align 8
  store %struct.TYPE_6__** %32, %struct.TYPE_6__*** %7, align 8
  %33 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 1
  %35 = load %struct.TYPE_6__*, %struct.TYPE_6__** %34, align 8
  store %struct.TYPE_6__* %35, %struct.TYPE_6__** %5, align 8
  br label %36

36:                                               ; preds = %43, %25
  %37 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %38 = icmp ne %struct.TYPE_6__* %37, null
  br i1 %38, label %39, label %47

39:                                               ; preds = %36
  %40 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %41 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %7, align 8
  %42 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %41, i32 1
  store %struct.TYPE_6__** %42, %struct.TYPE_6__*** %7, align 8
  store %struct.TYPE_6__* %40, %struct.TYPE_6__** %41, align 8
  br label %43

43:                                               ; preds = %39
  %44 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 0
  %46 = load %struct.TYPE_6__*, %struct.TYPE_6__** %45, align 8
  store %struct.TYPE_6__* %46, %struct.TYPE_6__** %5, align 8
  br label %36

47:                                               ; preds = %36
  %48 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %6, align 8
  %49 = load i32, i32* %8, align 4
  %50 = load i32*, i32** @sortFunctions, align 8
  %51 = load i64, i64* %4, align 8
  %52 = getelementptr inbounds i32, i32* %50, i64 %51
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @qsort(%struct.TYPE_6__** %48, i32 %49, i32 8, i32 %53)
  %55 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %6, align 8
  %56 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %55, i64 0
  %57 = load %struct.TYPE_6__*, %struct.TYPE_6__** %56, align 8
  %58 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i32 0, i32 1
  store %struct.TYPE_6__* %57, %struct.TYPE_6__** %59, align 8
  %60 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %6, align 8
  store %struct.TYPE_6__** %60, %struct.TYPE_6__*** %7, align 8
  br label %61

61:                                               ; preds = %73, %47
  %62 = load i32, i32* %8, align 4
  %63 = add nsw i32 %62, -1
  store i32 %63, i32* %8, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %76

65:                                               ; preds = %61
  %66 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %7, align 8
  %67 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %66, i64 1
  %68 = load %struct.TYPE_6__*, %struct.TYPE_6__** %67, align 8
  %69 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %7, align 8
  %70 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %69, i64 0
  %71 = load %struct.TYPE_6__*, %struct.TYPE_6__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %71, i32 0, i32 0
  store %struct.TYPE_6__* %68, %struct.TYPE_6__** %72, align 8
  br label %73

73:                                               ; preds = %65
  %74 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %7, align 8
  %75 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %74, i32 1
  store %struct.TYPE_6__** %75, %struct.TYPE_6__*** %7, align 8
  br label %61

76:                                               ; preds = %61
  %77 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %7, align 8
  %78 = load %struct.TYPE_6__*, %struct.TYPE_6__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %78, i32 0, i32 0
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %79, align 8
  %80 = call i32 (...) @GetProcessHeap()
  %81 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %6, align 8
  %82 = call i32 @HeapFree(i32 %80, i32 0, %struct.TYPE_6__** %81)
  br label %83

83:                                               ; preds = %76, %22
  ret void
}

declare dso_local %struct.TYPE_6__** @HeapAlloc(i32, i32, i32) #1

declare dso_local i32 @GetProcessHeap(...) #1

declare dso_local i32 @qsort(%struct.TYPE_6__**, i32, i32, i32) #1

declare dso_local i32 @HeapFree(i32, i32, %struct.TYPE_6__**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
