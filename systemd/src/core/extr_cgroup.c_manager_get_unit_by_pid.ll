; ModuleID = '/home/carl/AnghaBench/systemd/src/core/extr_cgroup.c_manager_get_unit_by_pid.c'
source_filename = "/home/carl/AnghaBench/systemd/src/core/extr_cgroup.c_manager_get_unit_by_pid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32 }

@SPECIAL_INIT_SCOPE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32***** @manager_get_unit_by_pid(%struct.TYPE_5__* %0, i32 %1) #0 {
  %3 = alloca i32*****, align 8
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*****, align 8
  %7 = alloca i32******, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %9 = call i32 @assert(%struct.TYPE_5__* %8)
  %10 = load i32, i32* %5, align 4
  %11 = call i32 @pid_is_valid(i32 %10)
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %2
  store i32***** null, i32****** %3, align 8
  br label %59

14:                                               ; preds = %2
  %15 = load i32, i32* %5, align 4
  %16 = call i32 (...) @getpid_cached()
  %17 = icmp eq i32 %15, %16
  br i1 %17, label %18, label %24

18:                                               ; preds = %14
  %19 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @SPECIAL_INIT_SCOPE, align 4
  %23 = call i32***** @hashmap_get(i32 %21, i32 %22)
  store i32***** %23, i32****** %3, align 8
  br label %59

24:                                               ; preds = %14
  %25 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %26 = load i32, i32* %5, align 4
  %27 = call i32***** @manager_get_unit_by_pid_cgroup(%struct.TYPE_5__* %25, i32 %26)
  store i32***** %27, i32****** %6, align 8
  %28 = load i32*****, i32****** %6, align 8
  %29 = icmp ne i32***** %28, null
  br i1 %29, label %30, label %32

30:                                               ; preds = %24
  %31 = load i32*****, i32****** %6, align 8
  store i32***** %31, i32****** %3, align 8
  br label %59

32:                                               ; preds = %24
  %33 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* %5, align 4
  %37 = call i32 @PID_TO_PTR(i32 %36)
  %38 = call i32***** @hashmap_get(i32 %35, i32 %37)
  store i32***** %38, i32****** %6, align 8
  %39 = load i32*****, i32****** %6, align 8
  %40 = icmp ne i32***** %39, null
  br i1 %40, label %41, label %43

41:                                               ; preds = %32
  %42 = load i32*****, i32****** %6, align 8
  store i32***** %42, i32****** %3, align 8
  br label %59

43:                                               ; preds = %32
  %44 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* %5, align 4
  %48 = sub nsw i32 0, %47
  %49 = call i32 @PID_TO_PTR(i32 %48)
  %50 = call i32***** @hashmap_get(i32 %46, i32 %49)
  %51 = bitcast i32***** %50 to i32******
  store i32****** %51, i32******* %7, align 8
  %52 = load i32******, i32******* %7, align 8
  %53 = icmp ne i32****** %52, null
  br i1 %53, label %54, label %58

54:                                               ; preds = %43
  %55 = load i32******, i32******* %7, align 8
  %56 = getelementptr inbounds i32*****, i32****** %55, i64 0
  %57 = load i32*****, i32****** %56, align 8
  store i32***** %57, i32****** %3, align 8
  br label %59

58:                                               ; preds = %43
  store i32***** null, i32****** %3, align 8
  br label %59

59:                                               ; preds = %58, %54, %41, %30, %18, %13
  %60 = load i32*****, i32****** %3, align 8
  ret i32***** %60
}

declare dso_local i32 @assert(%struct.TYPE_5__*) #1

declare dso_local i32 @pid_is_valid(i32) #1

declare dso_local i32 @getpid_cached(...) #1

declare dso_local i32***** @hashmap_get(i32, i32) #1

declare dso_local i32***** @manager_get_unit_by_pid_cgroup(%struct.TYPE_5__*, i32) #1

declare dso_local i32 @PID_TO_PTR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
