; ModuleID = '/home/carl/AnghaBench/systemd/src/basic/extr_rlimit-util.c_setrlimit_closest_all.c'
source_filename = "/home/carl/AnghaBench/systemd/src/basic/extr_rlimit-util.c_setrlimit_closest_all.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rlimit = type { i32 }

@_RLIMIT_MAX = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @setrlimit_closest_all(%struct.rlimit** %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.rlimit**, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.rlimit** %0, %struct.rlimit*** %4, align 8
  store i32* %1, i32** %5, align 8
  %8 = load %struct.rlimit**, %struct.rlimit*** %4, align 8
  %9 = call i32 @assert(%struct.rlimit** %8)
  store i32 0, i32* %6, align 4
  br label %10

10:                                               ; preds = %41, %2
  %11 = load i32, i32* %6, align 4
  %12 = load i32, i32* @_RLIMIT_MAX, align 4
  %13 = icmp slt i32 %11, %12
  br i1 %13, label %14, label %44

14:                                               ; preds = %10
  %15 = load %struct.rlimit**, %struct.rlimit*** %4, align 8
  %16 = load i32, i32* %6, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds %struct.rlimit*, %struct.rlimit** %15, i64 %17
  %19 = load %struct.rlimit*, %struct.rlimit** %18, align 8
  %20 = icmp ne %struct.rlimit* %19, null
  br i1 %20, label %22, label %21

21:                                               ; preds = %14
  br label %41

22:                                               ; preds = %14
  %23 = load i32, i32* %6, align 4
  %24 = load %struct.rlimit**, %struct.rlimit*** %4, align 8
  %25 = load i32, i32* %6, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds %struct.rlimit*, %struct.rlimit** %24, i64 %26
  %28 = load %struct.rlimit*, %struct.rlimit** %27, align 8
  %29 = call i32 @setrlimit_closest(i32 %23, %struct.rlimit* %28)
  store i32 %29, i32* %7, align 4
  %30 = load i32, i32* %7, align 4
  %31 = icmp slt i32 %30, 0
  br i1 %31, label %32, label %40

32:                                               ; preds = %22
  %33 = load i32*, i32** %5, align 8
  %34 = icmp ne i32* %33, null
  br i1 %34, label %35, label %38

35:                                               ; preds = %32
  %36 = load i32, i32* %6, align 4
  %37 = load i32*, i32** %5, align 8
  store i32 %36, i32* %37, align 4
  br label %38

38:                                               ; preds = %35, %32
  %39 = load i32, i32* %7, align 4
  store i32 %39, i32* %3, align 4
  br label %50

40:                                               ; preds = %22
  br label %41

41:                                               ; preds = %40, %21
  %42 = load i32, i32* %6, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %6, align 4
  br label %10

44:                                               ; preds = %10
  %45 = load i32*, i32** %5, align 8
  %46 = icmp ne i32* %45, null
  br i1 %46, label %47, label %49

47:                                               ; preds = %44
  %48 = load i32*, i32** %5, align 8
  store i32 -1, i32* %48, align 4
  br label %49

49:                                               ; preds = %47, %44
  store i32 0, i32* %3, align 4
  br label %50

50:                                               ; preds = %49, %38
  %51 = load i32, i32* %3, align 4
  ret i32 %51
}

declare dso_local i32 @assert(%struct.rlimit**) #1

declare dso_local i32 @setrlimit_closest(i32, %struct.rlimit*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
