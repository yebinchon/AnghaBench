; ModuleID = '/home/carl/AnghaBench/systemd/src/basic/extr_rlimit-util.c_rlimit_free_all.c'
source_filename = "/home/carl/AnghaBench/systemd/src/basic/extr_rlimit-util.c_rlimit_free_all.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rlimit = type { i32 }

@_RLIMIT_MAX = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rlimit_free_all(%struct.rlimit** %0) #0 {
  %2 = alloca %struct.rlimit**, align 8
  %3 = alloca i32, align 4
  store %struct.rlimit** %0, %struct.rlimit*** %2, align 8
  %4 = load %struct.rlimit**, %struct.rlimit*** %2, align 8
  %5 = icmp ne %struct.rlimit** %4, null
  br i1 %5, label %7, label %6

6:                                                ; preds = %1
  br label %26

7:                                                ; preds = %1
  store i32 0, i32* %3, align 4
  br label %8

8:                                                ; preds = %23, %7
  %9 = load i32, i32* %3, align 4
  %10 = load i32, i32* @_RLIMIT_MAX, align 4
  %11 = icmp slt i32 %9, %10
  br i1 %11, label %12, label %26

12:                                               ; preds = %8
  %13 = load %struct.rlimit**, %struct.rlimit*** %2, align 8
  %14 = load i32, i32* %3, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds %struct.rlimit*, %struct.rlimit** %13, i64 %15
  %17 = load %struct.rlimit*, %struct.rlimit** %16, align 8
  %18 = call %struct.rlimit* @mfree(%struct.rlimit* %17)
  %19 = load %struct.rlimit**, %struct.rlimit*** %2, align 8
  %20 = load i32, i32* %3, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.rlimit*, %struct.rlimit** %19, i64 %21
  store %struct.rlimit* %18, %struct.rlimit** %22, align 8
  br label %23

23:                                               ; preds = %12
  %24 = load i32, i32* %3, align 4
  %25 = add nsw i32 %24, 1
  store i32 %25, i32* %3, align 4
  br label %8

26:                                               ; preds = %6, %8
  ret void
}

declare dso_local %struct.rlimit* @mfree(%struct.rlimit*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
