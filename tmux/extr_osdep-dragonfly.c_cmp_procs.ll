; ModuleID = '/home/carl/AnghaBench/tmux/extr_osdep-dragonfly.c_cmp_procs.c'
source_filename = "/home/carl/AnghaBench/tmux/extr_osdep-dragonfly.c_cmp_procs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kinfo_proc = type { i64, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.kinfo_proc* @cmp_procs(%struct.kinfo_proc* %0, %struct.kinfo_proc* %1) #0 {
  %3 = alloca %struct.kinfo_proc*, align 8
  %4 = alloca %struct.kinfo_proc*, align 8
  %5 = alloca %struct.kinfo_proc*, align 8
  store %struct.kinfo_proc* %0, %struct.kinfo_proc** %4, align 8
  store %struct.kinfo_proc* %1, %struct.kinfo_proc** %5, align 8
  %6 = load %struct.kinfo_proc*, %struct.kinfo_proc** %4, align 8
  %7 = call i64 @is_runnable(%struct.kinfo_proc* %6)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %15

9:                                                ; preds = %2
  %10 = load %struct.kinfo_proc*, %struct.kinfo_proc** %5, align 8
  %11 = call i64 @is_runnable(%struct.kinfo_proc* %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %15, label %13

13:                                               ; preds = %9
  %14 = load %struct.kinfo_proc*, %struct.kinfo_proc** %4, align 8
  store %struct.kinfo_proc* %14, %struct.kinfo_proc** %3, align 8
  br label %79

15:                                               ; preds = %9, %2
  %16 = load %struct.kinfo_proc*, %struct.kinfo_proc** %4, align 8
  %17 = call i64 @is_runnable(%struct.kinfo_proc* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %25, label %19

19:                                               ; preds = %15
  %20 = load %struct.kinfo_proc*, %struct.kinfo_proc** %5, align 8
  %21 = call i64 @is_runnable(%struct.kinfo_proc* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %19
  %24 = load %struct.kinfo_proc*, %struct.kinfo_proc** %5, align 8
  store %struct.kinfo_proc* %24, %struct.kinfo_proc** %3, align 8
  br label %79

25:                                               ; preds = %19, %15
  %26 = load %struct.kinfo_proc*, %struct.kinfo_proc** %4, align 8
  %27 = call i64 @is_stopped(%struct.kinfo_proc* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %35

29:                                               ; preds = %25
  %30 = load %struct.kinfo_proc*, %struct.kinfo_proc** %5, align 8
  %31 = call i64 @is_stopped(%struct.kinfo_proc* %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %35, label %33

33:                                               ; preds = %29
  %34 = load %struct.kinfo_proc*, %struct.kinfo_proc** %4, align 8
  store %struct.kinfo_proc* %34, %struct.kinfo_proc** %3, align 8
  br label %79

35:                                               ; preds = %29, %25
  %36 = load %struct.kinfo_proc*, %struct.kinfo_proc** %4, align 8
  %37 = call i64 @is_stopped(%struct.kinfo_proc* %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %45, label %39

39:                                               ; preds = %35
  %40 = load %struct.kinfo_proc*, %struct.kinfo_proc** %5, align 8
  %41 = call i64 @is_stopped(%struct.kinfo_proc* %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %39
  %44 = load %struct.kinfo_proc*, %struct.kinfo_proc** %5, align 8
  store %struct.kinfo_proc* %44, %struct.kinfo_proc** %3, align 8
  br label %79

45:                                               ; preds = %39, %35
  %46 = load %struct.kinfo_proc*, %struct.kinfo_proc** %4, align 8
  %47 = getelementptr inbounds %struct.kinfo_proc, %struct.kinfo_proc* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 8
  %49 = load %struct.kinfo_proc*, %struct.kinfo_proc** %5, align 8
  %50 = getelementptr inbounds %struct.kinfo_proc, %struct.kinfo_proc* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 8
  %52 = call i64 @strcmp(i32 %48, i32 %51)
  %53 = icmp slt i64 %52, 0
  br i1 %53, label %54, label %56

54:                                               ; preds = %45
  %55 = load %struct.kinfo_proc*, %struct.kinfo_proc** %4, align 8
  store %struct.kinfo_proc* %55, %struct.kinfo_proc** %3, align 8
  br label %79

56:                                               ; preds = %45
  %57 = load %struct.kinfo_proc*, %struct.kinfo_proc** %4, align 8
  %58 = getelementptr inbounds %struct.kinfo_proc, %struct.kinfo_proc* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 8
  %60 = load %struct.kinfo_proc*, %struct.kinfo_proc** %5, align 8
  %61 = getelementptr inbounds %struct.kinfo_proc, %struct.kinfo_proc* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 8
  %63 = call i64 @strcmp(i32 %59, i32 %62)
  %64 = icmp sgt i64 %63, 0
  br i1 %64, label %65, label %67

65:                                               ; preds = %56
  %66 = load %struct.kinfo_proc*, %struct.kinfo_proc** %5, align 8
  store %struct.kinfo_proc* %66, %struct.kinfo_proc** %3, align 8
  br label %79

67:                                               ; preds = %56
  %68 = load %struct.kinfo_proc*, %struct.kinfo_proc** %4, align 8
  %69 = getelementptr inbounds %struct.kinfo_proc, %struct.kinfo_proc* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = load %struct.kinfo_proc*, %struct.kinfo_proc** %5, align 8
  %72 = getelementptr inbounds %struct.kinfo_proc, %struct.kinfo_proc* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = icmp sgt i64 %70, %73
  br i1 %74, label %75, label %77

75:                                               ; preds = %67
  %76 = load %struct.kinfo_proc*, %struct.kinfo_proc** %4, align 8
  store %struct.kinfo_proc* %76, %struct.kinfo_proc** %3, align 8
  br label %79

77:                                               ; preds = %67
  %78 = load %struct.kinfo_proc*, %struct.kinfo_proc** %5, align 8
  store %struct.kinfo_proc* %78, %struct.kinfo_proc** %3, align 8
  br label %79

79:                                               ; preds = %77, %75, %65, %54, %43, %33, %23, %13
  %80 = load %struct.kinfo_proc*, %struct.kinfo_proc** %3, align 8
  ret %struct.kinfo_proc* %80
}

declare dso_local i64 @is_runnable(%struct.kinfo_proc*) #1

declare dso_local i64 @is_stopped(%struct.kinfo_proc*) #1

declare dso_local i64 @strcmp(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
