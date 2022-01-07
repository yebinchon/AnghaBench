; ModuleID = '/home/carl/AnghaBench/tmux/extr_osdep-netbsd.c_cmp_procs.c'
source_filename = "/home/carl/AnghaBench/tmux/extr_osdep-netbsd.c_cmp_procs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kinfo_proc2 = type { i64, i64, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.kinfo_proc2* @cmp_procs(%struct.kinfo_proc2* %0, %struct.kinfo_proc2* %1) #0 {
  %3 = alloca %struct.kinfo_proc2*, align 8
  %4 = alloca %struct.kinfo_proc2*, align 8
  %5 = alloca %struct.kinfo_proc2*, align 8
  store %struct.kinfo_proc2* %0, %struct.kinfo_proc2** %4, align 8
  store %struct.kinfo_proc2* %1, %struct.kinfo_proc2** %5, align 8
  %6 = load %struct.kinfo_proc2*, %struct.kinfo_proc2** %4, align 8
  %7 = call i64 @is_runnable(%struct.kinfo_proc2* %6)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %15

9:                                                ; preds = %2
  %10 = load %struct.kinfo_proc2*, %struct.kinfo_proc2** %5, align 8
  %11 = call i64 @is_runnable(%struct.kinfo_proc2* %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %15, label %13

13:                                               ; preds = %9
  %14 = load %struct.kinfo_proc2*, %struct.kinfo_proc2** %4, align 8
  store %struct.kinfo_proc2* %14, %struct.kinfo_proc2** %3, align 8
  br label %97

15:                                               ; preds = %9, %2
  %16 = load %struct.kinfo_proc2*, %struct.kinfo_proc2** %4, align 8
  %17 = call i64 @is_runnable(%struct.kinfo_proc2* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %25, label %19

19:                                               ; preds = %15
  %20 = load %struct.kinfo_proc2*, %struct.kinfo_proc2** %5, align 8
  %21 = call i64 @is_runnable(%struct.kinfo_proc2* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %19
  %24 = load %struct.kinfo_proc2*, %struct.kinfo_proc2** %5, align 8
  store %struct.kinfo_proc2* %24, %struct.kinfo_proc2** %3, align 8
  br label %97

25:                                               ; preds = %19, %15
  %26 = load %struct.kinfo_proc2*, %struct.kinfo_proc2** %4, align 8
  %27 = call i64 @is_stopped(%struct.kinfo_proc2* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %35

29:                                               ; preds = %25
  %30 = load %struct.kinfo_proc2*, %struct.kinfo_proc2** %5, align 8
  %31 = call i64 @is_stopped(%struct.kinfo_proc2* %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %35, label %33

33:                                               ; preds = %29
  %34 = load %struct.kinfo_proc2*, %struct.kinfo_proc2** %4, align 8
  store %struct.kinfo_proc2* %34, %struct.kinfo_proc2** %3, align 8
  br label %97

35:                                               ; preds = %29, %25
  %36 = load %struct.kinfo_proc2*, %struct.kinfo_proc2** %4, align 8
  %37 = call i64 @is_stopped(%struct.kinfo_proc2* %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %45, label %39

39:                                               ; preds = %35
  %40 = load %struct.kinfo_proc2*, %struct.kinfo_proc2** %5, align 8
  %41 = call i64 @is_stopped(%struct.kinfo_proc2* %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %39
  %44 = load %struct.kinfo_proc2*, %struct.kinfo_proc2** %5, align 8
  store %struct.kinfo_proc2* %44, %struct.kinfo_proc2** %3, align 8
  br label %97

45:                                               ; preds = %39, %35
  %46 = load %struct.kinfo_proc2*, %struct.kinfo_proc2** %4, align 8
  %47 = getelementptr inbounds %struct.kinfo_proc2, %struct.kinfo_proc2* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load %struct.kinfo_proc2*, %struct.kinfo_proc2** %5, align 8
  %50 = getelementptr inbounds %struct.kinfo_proc2, %struct.kinfo_proc2* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = icmp sgt i64 %48, %51
  br i1 %52, label %53, label %55

53:                                               ; preds = %45
  %54 = load %struct.kinfo_proc2*, %struct.kinfo_proc2** %4, align 8
  store %struct.kinfo_proc2* %54, %struct.kinfo_proc2** %3, align 8
  br label %97

55:                                               ; preds = %45
  %56 = load %struct.kinfo_proc2*, %struct.kinfo_proc2** %4, align 8
  %57 = getelementptr inbounds %struct.kinfo_proc2, %struct.kinfo_proc2* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = load %struct.kinfo_proc2*, %struct.kinfo_proc2** %5, align 8
  %60 = getelementptr inbounds %struct.kinfo_proc2, %struct.kinfo_proc2* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = icmp slt i64 %58, %61
  br i1 %62, label %63, label %65

63:                                               ; preds = %55
  %64 = load %struct.kinfo_proc2*, %struct.kinfo_proc2** %5, align 8
  store %struct.kinfo_proc2* %64, %struct.kinfo_proc2** %3, align 8
  br label %97

65:                                               ; preds = %55
  %66 = load %struct.kinfo_proc2*, %struct.kinfo_proc2** %4, align 8
  %67 = getelementptr inbounds %struct.kinfo_proc2, %struct.kinfo_proc2* %66, i32 0, i32 1
  %68 = load i64, i64* %67, align 8
  %69 = load %struct.kinfo_proc2*, %struct.kinfo_proc2** %5, align 8
  %70 = getelementptr inbounds %struct.kinfo_proc2, %struct.kinfo_proc2* %69, i32 0, i32 1
  %71 = load i64, i64* %70, align 8
  %72 = icmp slt i64 %68, %71
  br i1 %72, label %73, label %75

73:                                               ; preds = %65
  %74 = load %struct.kinfo_proc2*, %struct.kinfo_proc2** %4, align 8
  store %struct.kinfo_proc2* %74, %struct.kinfo_proc2** %3, align 8
  br label %97

75:                                               ; preds = %65
  %76 = load %struct.kinfo_proc2*, %struct.kinfo_proc2** %4, align 8
  %77 = getelementptr inbounds %struct.kinfo_proc2, %struct.kinfo_proc2* %76, i32 0, i32 1
  %78 = load i64, i64* %77, align 8
  %79 = load %struct.kinfo_proc2*, %struct.kinfo_proc2** %5, align 8
  %80 = getelementptr inbounds %struct.kinfo_proc2, %struct.kinfo_proc2* %79, i32 0, i32 1
  %81 = load i64, i64* %80, align 8
  %82 = icmp sgt i64 %78, %81
  br i1 %82, label %83, label %85

83:                                               ; preds = %75
  %84 = load %struct.kinfo_proc2*, %struct.kinfo_proc2** %5, align 8
  store %struct.kinfo_proc2* %84, %struct.kinfo_proc2** %3, align 8
  br label %97

85:                                               ; preds = %75
  %86 = load %struct.kinfo_proc2*, %struct.kinfo_proc2** %4, align 8
  %87 = getelementptr inbounds %struct.kinfo_proc2, %struct.kinfo_proc2* %86, i32 0, i32 2
  %88 = load i64, i64* %87, align 8
  %89 = load %struct.kinfo_proc2*, %struct.kinfo_proc2** %5, align 8
  %90 = getelementptr inbounds %struct.kinfo_proc2, %struct.kinfo_proc2* %89, i32 0, i32 2
  %91 = load i64, i64* %90, align 8
  %92 = icmp sgt i64 %88, %91
  br i1 %92, label %93, label %95

93:                                               ; preds = %85
  %94 = load %struct.kinfo_proc2*, %struct.kinfo_proc2** %4, align 8
  store %struct.kinfo_proc2* %94, %struct.kinfo_proc2** %3, align 8
  br label %97

95:                                               ; preds = %85
  %96 = load %struct.kinfo_proc2*, %struct.kinfo_proc2** %5, align 8
  store %struct.kinfo_proc2* %96, %struct.kinfo_proc2** %3, align 8
  br label %97

97:                                               ; preds = %95, %93, %83, %73, %63, %53, %43, %33, %23, %13
  %98 = load %struct.kinfo_proc2*, %struct.kinfo_proc2** %3, align 8
  ret %struct.kinfo_proc2* %98
}

declare dso_local i64 @is_runnable(%struct.kinfo_proc2*) #1

declare dso_local i64 @is_stopped(%struct.kinfo_proc2*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
