; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/uxtheme/extr_msstyles.c_MSSTYLES_AddClass.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/uxtheme/extr_msstyles.c_MSSTYLES_AddClass.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32*, i32*, %struct.TYPE_9__*, i32, i32, i32 }
%struct.TYPE_8__ = type { %struct.TYPE_9__*, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_9__* (%struct.TYPE_8__*, i32, i32)* @MSSTYLES_AddClass to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_9__* @MSSTYLES_AddClass(%struct.TYPE_8__* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_9__*, align 8
  %5 = alloca %struct.TYPE_8__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_9__*, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %9 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %10 = load i32, i32* %6, align 4
  %11 = load i32, i32* %7, align 4
  %12 = call %struct.TYPE_9__* @MSSTYLES_FindClass(%struct.TYPE_8__* %9, i32 %10, i32 %11)
  store %struct.TYPE_9__* %12, %struct.TYPE_9__** %8, align 8
  %13 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %14 = icmp ne %struct.TYPE_9__* %13, null
  br i1 %14, label %15, label %17

15:                                               ; preds = %3
  %16 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  store %struct.TYPE_9__* %16, %struct.TYPE_9__** %4, align 8
  br label %48

17:                                               ; preds = %3
  %18 = call i32 (...) @GetProcessHeap()
  %19 = call %struct.TYPE_9__* @HeapAlloc(i32 %18, i32 0, i32 4)
  store %struct.TYPE_9__* %19, %struct.TYPE_9__** %8, align 8
  %20 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %21 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 8
  %23 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %24 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %23, i32 0, i32 5
  store i32 %22, i32* %24, align 8
  %25 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %26 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %25, i32 0, i32 4
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* %6, align 4
  %29 = call i32 @lstrcpyW(i32 %27, i32 %28)
  %30 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %31 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %30, i32 0, i32 3
  %32 = load i32, i32* %31, align 8
  %33 = load i32, i32* %7, align 4
  %34 = call i32 @lstrcpyW(i32 %32, i32 %33)
  %35 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %36 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %35, i32 0, i32 0
  %37 = load %struct.TYPE_9__*, %struct.TYPE_9__** %36, align 8
  %38 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %39 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %38, i32 0, i32 2
  store %struct.TYPE_9__* %37, %struct.TYPE_9__** %39, align 8
  %40 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %41 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %40, i32 0, i32 1
  store i32* null, i32** %41, align 8
  %42 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %43 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %42, i32 0, i32 0
  store i32* null, i32** %43, align 8
  %44 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %45 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %46 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %45, i32 0, i32 0
  store %struct.TYPE_9__* %44, %struct.TYPE_9__** %46, align 8
  %47 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  store %struct.TYPE_9__* %47, %struct.TYPE_9__** %4, align 8
  br label %48

48:                                               ; preds = %17, %15
  %49 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  ret %struct.TYPE_9__* %49
}

declare dso_local %struct.TYPE_9__* @MSSTYLES_FindClass(%struct.TYPE_8__*, i32, i32) #1

declare dso_local %struct.TYPE_9__* @HeapAlloc(i32, i32, i32) #1

declare dso_local i32 @GetProcessHeap(...) #1

declare dso_local i32 @lstrcpyW(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
