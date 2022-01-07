; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/secur32/extr_negotiate.c_cleanup_buffers.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/secur32/extr_negotiate.c_cleanup_buffers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sspi_data = type { %struct.TYPE_2__*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, %struct.TYPE_2__*, %struct.TYPE_2__* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sspi_data*)* @cleanup_buffers to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cleanup_buffers(%struct.sspi_data* %0) #0 {
  %2 = alloca %struct.sspi_data*, align 8
  %3 = alloca i32, align 4
  store %struct.sspi_data* %0, %struct.sspi_data** %2, align 8
  %4 = load %struct.sspi_data*, %struct.sspi_data** %2, align 8
  %5 = getelementptr inbounds %struct.sspi_data, %struct.sspi_data* %4, i32 0, i32 1
  %6 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %7 = icmp ne %struct.TYPE_2__* %6, null
  br i1 %7, label %8, label %46

8:                                                ; preds = %1
  store i32 0, i32* %3, align 4
  br label %9

9:                                                ; preds = %30, %8
  %10 = load i32, i32* %3, align 4
  %11 = load %struct.sspi_data*, %struct.sspi_data** %2, align 8
  %12 = getelementptr inbounds %struct.sspi_data, %struct.sspi_data* %11, i32 0, i32 1
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = icmp ult i32 %10, %15
  br i1 %16, label %17, label %33

17:                                               ; preds = %9
  %18 = call i32 (...) @GetProcessHeap()
  %19 = load %struct.sspi_data*, %struct.sspi_data** %2, align 8
  %20 = getelementptr inbounds %struct.sspi_data, %struct.sspi_data* %19, i32 0, i32 1
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 1
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = load i32, i32* %3, align 4
  %25 = zext i32 %24 to i64
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i64 %25
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 2
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** %27, align 8
  %29 = call i32 @HeapFree(i32 %18, i32 0, %struct.TYPE_2__* %28)
  br label %30

30:                                               ; preds = %17
  %31 = load i32, i32* %3, align 4
  %32 = add i32 %31, 1
  store i32 %32, i32* %3, align 4
  br label %9

33:                                               ; preds = %9
  %34 = call i32 (...) @GetProcessHeap()
  %35 = load %struct.sspi_data*, %struct.sspi_data** %2, align 8
  %36 = getelementptr inbounds %struct.sspi_data, %struct.sspi_data* %35, i32 0, i32 1
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 1
  %39 = load %struct.TYPE_2__*, %struct.TYPE_2__** %38, align 8
  %40 = call i32 @HeapFree(i32 %34, i32 0, %struct.TYPE_2__* %39)
  %41 = call i32 (...) @GetProcessHeap()
  %42 = load %struct.sspi_data*, %struct.sspi_data** %2, align 8
  %43 = getelementptr inbounds %struct.sspi_data, %struct.sspi_data* %42, i32 0, i32 1
  %44 = load %struct.TYPE_2__*, %struct.TYPE_2__** %43, align 8
  %45 = call i32 @HeapFree(i32 %41, i32 0, %struct.TYPE_2__* %44)
  br label %46

46:                                               ; preds = %33, %1
  %47 = load %struct.sspi_data*, %struct.sspi_data** %2, align 8
  %48 = getelementptr inbounds %struct.sspi_data, %struct.sspi_data* %47, i32 0, i32 0
  %49 = load %struct.TYPE_2__*, %struct.TYPE_2__** %48, align 8
  %50 = icmp ne %struct.TYPE_2__* %49, null
  br i1 %50, label %51, label %89

51:                                               ; preds = %46
  store i32 0, i32* %3, align 4
  br label %52

52:                                               ; preds = %73, %51
  %53 = load i32, i32* %3, align 4
  %54 = load %struct.sspi_data*, %struct.sspi_data** %2, align 8
  %55 = getelementptr inbounds %struct.sspi_data, %struct.sspi_data* %54, i32 0, i32 0
  %56 = load %struct.TYPE_2__*, %struct.TYPE_2__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = icmp ult i32 %53, %58
  br i1 %59, label %60, label %76

60:                                               ; preds = %52
  %61 = call i32 (...) @GetProcessHeap()
  %62 = load %struct.sspi_data*, %struct.sspi_data** %2, align 8
  %63 = getelementptr inbounds %struct.sspi_data, %struct.sspi_data* %62, i32 0, i32 0
  %64 = load %struct.TYPE_2__*, %struct.TYPE_2__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 1
  %66 = load %struct.TYPE_2__*, %struct.TYPE_2__** %65, align 8
  %67 = load i32, i32* %3, align 4
  %68 = zext i32 %67 to i64
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i64 %68
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i32 0, i32 2
  %71 = load %struct.TYPE_2__*, %struct.TYPE_2__** %70, align 8
  %72 = call i32 @HeapFree(i32 %61, i32 0, %struct.TYPE_2__* %71)
  br label %73

73:                                               ; preds = %60
  %74 = load i32, i32* %3, align 4
  %75 = add i32 %74, 1
  store i32 %75, i32* %3, align 4
  br label %52

76:                                               ; preds = %52
  %77 = call i32 (...) @GetProcessHeap()
  %78 = load %struct.sspi_data*, %struct.sspi_data** %2, align 8
  %79 = getelementptr inbounds %struct.sspi_data, %struct.sspi_data* %78, i32 0, i32 0
  %80 = load %struct.TYPE_2__*, %struct.TYPE_2__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %80, i32 0, i32 1
  %82 = load %struct.TYPE_2__*, %struct.TYPE_2__** %81, align 8
  %83 = call i32 @HeapFree(i32 %77, i32 0, %struct.TYPE_2__* %82)
  %84 = call i32 (...) @GetProcessHeap()
  %85 = load %struct.sspi_data*, %struct.sspi_data** %2, align 8
  %86 = getelementptr inbounds %struct.sspi_data, %struct.sspi_data* %85, i32 0, i32 0
  %87 = load %struct.TYPE_2__*, %struct.TYPE_2__** %86, align 8
  %88 = call i32 @HeapFree(i32 %84, i32 0, %struct.TYPE_2__* %87)
  br label %89

89:                                               ; preds = %76, %46
  ret void
}

declare dso_local i32 @HeapFree(i32, i32, %struct.TYPE_2__*) #1

declare dso_local i32 @GetProcessHeap(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
