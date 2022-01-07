; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/oleaut32/extr_typelib.c_WMSFT_free_file.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/oleaut32/extr_typelib.c_WMSFT_free_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_22__ = type { %struct.TYPE_21__, %struct.TYPE_20__, %struct.TYPE_19__, %struct.TYPE_18__, %struct.TYPE_17__, %struct.TYPE_31__, %struct.TYPE_30__, %struct.TYPE_29__, %struct.TYPE_28__, %struct.TYPE_27__, %struct.TYPE_26__, %struct.TYPE_25__, %struct.TYPE_24__, %struct.TYPE_23__ }
%struct.TYPE_21__ = type { i32 }
%struct.TYPE_20__ = type { i32 }
%struct.TYPE_19__ = type { i32 }
%struct.TYPE_18__ = type { i32 }
%struct.TYPE_17__ = type { i32 }
%struct.TYPE_31__ = type { i32 }
%struct.TYPE_30__ = type { i32 }
%struct.TYPE_29__ = type { i32 }
%struct.TYPE_28__ = type { i32 }
%struct.TYPE_27__ = type { i32 }
%struct.TYPE_26__ = type { i32 }
%struct.TYPE_25__ = type { i32 }
%struct.TYPE_24__ = type { i32 }
%struct.TYPE_23__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_22__*)* @WMSFT_free_file to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @WMSFT_free_file(%struct.TYPE_22__* %0) #0 {
  %2 = alloca %struct.TYPE_22__*, align 8
  store %struct.TYPE_22__* %0, %struct.TYPE_22__** %2, align 8
  %3 = call i32 (...) @GetProcessHeap()
  %4 = load %struct.TYPE_22__*, %struct.TYPE_22__** %2, align 8
  %5 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %4, i32 0, i32 13
  %6 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = call i32 @HeapFree(i32 %3, i32 0, i32 %7)
  %9 = call i32 (...) @GetProcessHeap()
  %10 = load %struct.TYPE_22__*, %struct.TYPE_22__** %2, align 8
  %11 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %10, i32 0, i32 12
  %12 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @HeapFree(i32 %9, i32 0, i32 %13)
  %15 = call i32 (...) @GetProcessHeap()
  %16 = load %struct.TYPE_22__*, %struct.TYPE_22__** %2, align 8
  %17 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %16, i32 0, i32 11
  %18 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @HeapFree(i32 %15, i32 0, i32 %19)
  %21 = call i32 (...) @GetProcessHeap()
  %22 = load %struct.TYPE_22__*, %struct.TYPE_22__** %2, align 8
  %23 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %22, i32 0, i32 10
  %24 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @HeapFree(i32 %21, i32 0, i32 %25)
  %27 = call i32 (...) @GetProcessHeap()
  %28 = load %struct.TYPE_22__*, %struct.TYPE_22__** %2, align 8
  %29 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %28, i32 0, i32 9
  %30 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @HeapFree(i32 %27, i32 0, i32 %31)
  %33 = call i32 (...) @GetProcessHeap()
  %34 = load %struct.TYPE_22__*, %struct.TYPE_22__** %2, align 8
  %35 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %34, i32 0, i32 8
  %36 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @HeapFree(i32 %33, i32 0, i32 %37)
  %39 = call i32 (...) @GetProcessHeap()
  %40 = load %struct.TYPE_22__*, %struct.TYPE_22__** %2, align 8
  %41 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %40, i32 0, i32 7
  %42 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @HeapFree(i32 %39, i32 0, i32 %43)
  %45 = call i32 (...) @GetProcessHeap()
  %46 = load %struct.TYPE_22__*, %struct.TYPE_22__** %2, align 8
  %47 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %46, i32 0, i32 6
  %48 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @HeapFree(i32 %45, i32 0, i32 %49)
  %51 = call i32 (...) @GetProcessHeap()
  %52 = load %struct.TYPE_22__*, %struct.TYPE_22__** %2, align 8
  %53 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %52, i32 0, i32 5
  %54 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @HeapFree(i32 %51, i32 0, i32 %55)
  %57 = call i32 (...) @GetProcessHeap()
  %58 = load %struct.TYPE_22__*, %struct.TYPE_22__** %2, align 8
  %59 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %58, i32 0, i32 4
  %60 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @HeapFree(i32 %57, i32 0, i32 %61)
  %63 = call i32 (...) @GetProcessHeap()
  %64 = load %struct.TYPE_22__*, %struct.TYPE_22__** %2, align 8
  %65 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %64, i32 0, i32 3
  %66 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @HeapFree(i32 %63, i32 0, i32 %67)
  %69 = call i32 (...) @GetProcessHeap()
  %70 = load %struct.TYPE_22__*, %struct.TYPE_22__** %2, align 8
  %71 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %70, i32 0, i32 2
  %72 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @HeapFree(i32 %69, i32 0, i32 %73)
  %75 = call i32 (...) @GetProcessHeap()
  %76 = load %struct.TYPE_22__*, %struct.TYPE_22__** %2, align 8
  %77 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %76, i32 0, i32 1
  %78 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = call i32 @HeapFree(i32 %75, i32 0, i32 %79)
  %81 = call i32 (...) @GetProcessHeap()
  %82 = load %struct.TYPE_22__*, %struct.TYPE_22__** %2, align 8
  %83 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = call i32 @HeapFree(i32 %81, i32 0, i32 %85)
  ret void
}

declare dso_local i32 @HeapFree(i32, i32, i32) #1

declare dso_local i32 @GetProcessHeap(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
