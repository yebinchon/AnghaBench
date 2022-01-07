; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/uxtheme/extr_msstyles.c_MSSTYLES_AddProperty.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/uxtheme/extr_msstyles.c_MSSTYLES_AddProperty.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32, %struct.TYPE_8__*, i32, i32, i32 }
%struct.TYPE_9__ = type { %struct.TYPE_8__*, i64, i64 }

@PO_STATE = common dso_local global i32 0, align 4
@PO_PART = common dso_local global i32 0, align 4
@PO_GLOBAL = common dso_local global i32 0, align 4
@PO_CLASS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_8__* (%struct.TYPE_9__*, i32, i32, i32, i32, i64)* @MSSTYLES_AddProperty to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_8__* @MSSTYLES_AddProperty(%struct.TYPE_9__* %0, i32 %1, i32 %2, i32 %3, i32 %4, i64 %5) #0 {
  %7 = alloca %struct.TYPE_8__*, align 8
  %8 = alloca %struct.TYPE_9__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca %struct.TYPE_8__*, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i64 %5, i64* %13, align 8
  %15 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %16 = load i32, i32* %9, align 4
  %17 = load i32, i32* %10, align 4
  %18 = call %struct.TYPE_8__* @MSSTYLES_PSFindProperty(%struct.TYPE_9__* %15, i32 %16, i32 %17)
  store %struct.TYPE_8__* %18, %struct.TYPE_8__** %14, align 8
  %19 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %20 = icmp ne %struct.TYPE_8__* %19, null
  br i1 %20, label %21, label %23

21:                                               ; preds = %6
  %22 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  store %struct.TYPE_8__* %22, %struct.TYPE_8__** %7, align 8
  br label %78

23:                                               ; preds = %6
  %24 = call i32 (...) @GetProcessHeap()
  %25 = call %struct.TYPE_8__* @HeapAlloc(i32 %24, i32 0, i32 4)
  store %struct.TYPE_8__* %25, %struct.TYPE_8__** %14, align 8
  %26 = load i32, i32* %9, align 4
  %27 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %28 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %27, i32 0, i32 0
  store i32 %26, i32* %28, align 8
  %29 = load i32, i32* %10, align 4
  %30 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %31 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %30, i32 0, i32 1
  store i32 %29, i32* %31, align 4
  %32 = load i32, i32* %11, align 4
  %33 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %34 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %33, i32 0, i32 5
  store i32 %32, i32* %34, align 8
  %35 = load i32, i32* %12, align 4
  %36 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %37 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %36, i32 0, i32 4
  store i32 %35, i32* %37, align 4
  %38 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %39 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %38, i32 0, i32 2
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %46

42:                                               ; preds = %23
  %43 = load i32, i32* @PO_STATE, align 4
  %44 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %45 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %44, i32 0, i32 3
  store i32 %43, i32* %45, align 8
  br label %68

46:                                               ; preds = %23
  %47 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %48 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %55

51:                                               ; preds = %46
  %52 = load i32, i32* @PO_PART, align 4
  %53 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %54 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %53, i32 0, i32 3
  store i32 %52, i32* %54, align 8
  br label %67

55:                                               ; preds = %46
  %56 = load i64, i64* %13, align 8
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %62

58:                                               ; preds = %55
  %59 = load i32, i32* @PO_GLOBAL, align 4
  %60 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %61 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %60, i32 0, i32 3
  store i32 %59, i32* %61, align 8
  br label %66

62:                                               ; preds = %55
  %63 = load i32, i32* @PO_CLASS, align 4
  %64 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %65 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %64, i32 0, i32 3
  store i32 %63, i32* %65, align 8
  br label %66

66:                                               ; preds = %62, %58
  br label %67

67:                                               ; preds = %66, %51
  br label %68

68:                                               ; preds = %67, %42
  %69 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %70 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %69, i32 0, i32 0
  %71 = load %struct.TYPE_8__*, %struct.TYPE_8__** %70, align 8
  %72 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %73 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %72, i32 0, i32 2
  store %struct.TYPE_8__* %71, %struct.TYPE_8__** %73, align 8
  %74 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %75 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %76 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %75, i32 0, i32 0
  store %struct.TYPE_8__* %74, %struct.TYPE_8__** %76, align 8
  %77 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  store %struct.TYPE_8__* %77, %struct.TYPE_8__** %7, align 8
  br label %78

78:                                               ; preds = %68, %21
  %79 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  ret %struct.TYPE_8__* %79
}

declare dso_local %struct.TYPE_8__* @MSSTYLES_PSFindProperty(%struct.TYPE_9__*, i32, i32) #1

declare dso_local %struct.TYPE_8__* @HeapAlloc(i32, i32, i32) #1

declare dso_local i32 @GetProcessHeap(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
