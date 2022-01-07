; ModuleID = '/home/carl/AnghaBench/xhyve/src/vmm/extr_vmm_callout.c_callout_insert.c'
source_filename = "/home/carl/AnghaBench/xhyve/src/vmm/extr_vmm_callout.c_callout_insert.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.callout = type { i32, %struct.callout*, %struct.callout* }

@callout_queue = common dso_local global %struct.callout* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.callout*)* @callout_insert to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @callout_insert(%struct.callout* %0) #0 {
  %2 = alloca %struct.callout*, align 8
  %3 = alloca %struct.callout*, align 8
  store %struct.callout* %0, %struct.callout** %2, align 8
  %4 = load %struct.callout*, %struct.callout** @callout_queue, align 8
  store %struct.callout* %4, %struct.callout** %3, align 8
  %5 = load %struct.callout*, %struct.callout** %3, align 8
  %6 = icmp ne %struct.callout* %5, null
  br i1 %6, label %15, label %7

7:                                                ; preds = %1
  %8 = load %struct.callout*, %struct.callout** %2, align 8
  store %struct.callout* %8, %struct.callout** @callout_queue, align 8
  %9 = load %struct.callout*, %struct.callout** %2, align 8
  %10 = getelementptr inbounds %struct.callout, %struct.callout* %9, i32 0, i32 2
  store %struct.callout* null, %struct.callout** %10, align 8
  %11 = load %struct.callout*, %struct.callout** %2, align 8
  %12 = getelementptr inbounds %struct.callout, %struct.callout* %11, i32 0, i32 1
  store %struct.callout* null, %struct.callout** %12, align 8
  %13 = load %struct.callout*, %struct.callout** %2, align 8
  %14 = getelementptr inbounds %struct.callout, %struct.callout* %13, i32 0, i32 0
  store i32 1, i32* %14, align 8
  br label %79

15:                                               ; preds = %1
  %16 = load %struct.callout*, %struct.callout** %2, align 8
  %17 = load %struct.callout*, %struct.callout** %3, align 8
  %18 = call i64 @callout_cmp(%struct.callout* %16, %struct.callout* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %32

20:                                               ; preds = %15
  %21 = load %struct.callout*, %struct.callout** %2, align 8
  %22 = load %struct.callout*, %struct.callout** %3, align 8
  %23 = getelementptr inbounds %struct.callout, %struct.callout* %22, i32 0, i32 2
  store %struct.callout* %21, %struct.callout** %23, align 8
  %24 = load %struct.callout*, %struct.callout** %2, align 8
  %25 = getelementptr inbounds %struct.callout, %struct.callout* %24, i32 0, i32 2
  store %struct.callout* null, %struct.callout** %25, align 8
  %26 = load %struct.callout*, %struct.callout** %3, align 8
  %27 = load %struct.callout*, %struct.callout** %2, align 8
  %28 = getelementptr inbounds %struct.callout, %struct.callout* %27, i32 0, i32 1
  store %struct.callout* %26, %struct.callout** %28, align 8
  %29 = load %struct.callout*, %struct.callout** %2, align 8
  store %struct.callout* %29, %struct.callout** @callout_queue, align 8
  %30 = load %struct.callout*, %struct.callout** %2, align 8
  %31 = getelementptr inbounds %struct.callout, %struct.callout* %30, i32 0, i32 0
  store i32 1, i32* %31, align 8
  br label %79

32:                                               ; preds = %15
  br label %33

33:                                               ; preds = %64, %32
  %34 = load %struct.callout*, %struct.callout** %3, align 8
  %35 = getelementptr inbounds %struct.callout, %struct.callout* %34, i32 0, i32 1
  %36 = load %struct.callout*, %struct.callout** %35, align 8
  %37 = icmp ne %struct.callout* %36, null
  br i1 %37, label %38, label %68

38:                                               ; preds = %33
  %39 = load %struct.callout*, %struct.callout** %2, align 8
  %40 = load %struct.callout*, %struct.callout** %3, align 8
  %41 = getelementptr inbounds %struct.callout, %struct.callout* %40, i32 0, i32 1
  %42 = load %struct.callout*, %struct.callout** %41, align 8
  %43 = call i64 @callout_cmp(%struct.callout* %39, %struct.callout* %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %64

45:                                               ; preds = %38
  %46 = load %struct.callout*, %struct.callout** %3, align 8
  %47 = load %struct.callout*, %struct.callout** %2, align 8
  %48 = getelementptr inbounds %struct.callout, %struct.callout* %47, i32 0, i32 2
  store %struct.callout* %46, %struct.callout** %48, align 8
  %49 = load %struct.callout*, %struct.callout** %3, align 8
  %50 = getelementptr inbounds %struct.callout, %struct.callout* %49, i32 0, i32 1
  %51 = load %struct.callout*, %struct.callout** %50, align 8
  %52 = load %struct.callout*, %struct.callout** %2, align 8
  %53 = getelementptr inbounds %struct.callout, %struct.callout* %52, i32 0, i32 1
  store %struct.callout* %51, %struct.callout** %53, align 8
  %54 = load %struct.callout*, %struct.callout** %2, align 8
  %55 = load %struct.callout*, %struct.callout** %3, align 8
  %56 = getelementptr inbounds %struct.callout, %struct.callout* %55, i32 0, i32 1
  %57 = load %struct.callout*, %struct.callout** %56, align 8
  %58 = getelementptr inbounds %struct.callout, %struct.callout* %57, i32 0, i32 2
  store %struct.callout* %54, %struct.callout** %58, align 8
  %59 = load %struct.callout*, %struct.callout** %2, align 8
  %60 = load %struct.callout*, %struct.callout** %3, align 8
  %61 = getelementptr inbounds %struct.callout, %struct.callout* %60, i32 0, i32 1
  store %struct.callout* %59, %struct.callout** %61, align 8
  %62 = load %struct.callout*, %struct.callout** %2, align 8
  %63 = getelementptr inbounds %struct.callout, %struct.callout* %62, i32 0, i32 0
  store i32 1, i32* %63, align 8
  br label %79

64:                                               ; preds = %38
  %65 = load %struct.callout*, %struct.callout** %3, align 8
  %66 = getelementptr inbounds %struct.callout, %struct.callout* %65, i32 0, i32 1
  %67 = load %struct.callout*, %struct.callout** %66, align 8
  store %struct.callout* %67, %struct.callout** %3, align 8
  br label %33

68:                                               ; preds = %33
  %69 = load %struct.callout*, %struct.callout** %3, align 8
  %70 = load %struct.callout*, %struct.callout** %2, align 8
  %71 = getelementptr inbounds %struct.callout, %struct.callout* %70, i32 0, i32 2
  store %struct.callout* %69, %struct.callout** %71, align 8
  %72 = load %struct.callout*, %struct.callout** %2, align 8
  %73 = getelementptr inbounds %struct.callout, %struct.callout* %72, i32 0, i32 1
  store %struct.callout* null, %struct.callout** %73, align 8
  %74 = load %struct.callout*, %struct.callout** %2, align 8
  %75 = load %struct.callout*, %struct.callout** %3, align 8
  %76 = getelementptr inbounds %struct.callout, %struct.callout* %75, i32 0, i32 1
  store %struct.callout* %74, %struct.callout** %76, align 8
  %77 = load %struct.callout*, %struct.callout** %2, align 8
  %78 = getelementptr inbounds %struct.callout, %struct.callout* %77, i32 0, i32 0
  store i32 1, i32* %78, align 8
  br label %79

79:                                               ; preds = %68, %45, %20, %7
  ret void
}

declare dso_local i64 @callout_cmp(%struct.callout*, %struct.callout*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
