; ModuleID = '/home/carl/AnghaBench/sqlcipher/tool/extr_lemon.c_Rule_sort.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/tool/extr_lemon.c_Rule_sort.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rule = type { %struct.rule* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.rule* (%struct.rule*)* @Rule_sort to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.rule* @Rule_sort(%struct.rule* %0) #0 {
  %2 = alloca %struct.rule*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.rule*, align 8
  %5 = alloca [32 x %struct.rule*], align 16
  store %struct.rule* %0, %struct.rule** %2, align 8
  %6 = getelementptr inbounds [32 x %struct.rule*], [32 x %struct.rule*]* %5, i64 0, i64 0
  %7 = call i32 @memset(%struct.rule** %6, i32 0, i32 256)
  br label %8

8:                                                ; preds = %42, %1
  %9 = load %struct.rule*, %struct.rule** %2, align 8
  %10 = icmp ne %struct.rule* %9, null
  br i1 %10, label %11, label %48

11:                                               ; preds = %8
  %12 = load %struct.rule*, %struct.rule** %2, align 8
  %13 = getelementptr inbounds %struct.rule, %struct.rule* %12, i32 0, i32 0
  %14 = load %struct.rule*, %struct.rule** %13, align 8
  store %struct.rule* %14, %struct.rule** %4, align 8
  %15 = load %struct.rule*, %struct.rule** %2, align 8
  %16 = getelementptr inbounds %struct.rule, %struct.rule* %15, i32 0, i32 0
  store %struct.rule* null, %struct.rule** %16, align 8
  store i32 0, i32* %3, align 4
  br label %17

17:                                               ; preds = %39, %11
  %18 = load i32, i32* %3, align 4
  %19 = sext i32 %18 to i64
  %20 = icmp ult i64 %19, 32
  br i1 %20, label %21, label %27

21:                                               ; preds = %17
  %22 = load i32, i32* %3, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds [32 x %struct.rule*], [32 x %struct.rule*]* %5, i64 0, i64 %23
  %25 = load %struct.rule*, %struct.rule** %24, align 8
  %26 = icmp ne %struct.rule* %25, null
  br label %27

27:                                               ; preds = %21, %17
  %28 = phi i1 [ false, %17 ], [ %26, %21 ]
  br i1 %28, label %29, label %42

29:                                               ; preds = %27
  %30 = load i32, i32* %3, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds [32 x %struct.rule*], [32 x %struct.rule*]* %5, i64 0, i64 %31
  %33 = load %struct.rule*, %struct.rule** %32, align 8
  %34 = load %struct.rule*, %struct.rule** %2, align 8
  %35 = call %struct.rule* @Rule_merge(%struct.rule* %33, %struct.rule* %34)
  store %struct.rule* %35, %struct.rule** %2, align 8
  %36 = load i32, i32* %3, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds [32 x %struct.rule*], [32 x %struct.rule*]* %5, i64 0, i64 %37
  store %struct.rule* null, %struct.rule** %38, align 8
  br label %39

39:                                               ; preds = %29
  %40 = load i32, i32* %3, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %3, align 4
  br label %17

42:                                               ; preds = %27
  %43 = load %struct.rule*, %struct.rule** %2, align 8
  %44 = load i32, i32* %3, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds [32 x %struct.rule*], [32 x %struct.rule*]* %5, i64 0, i64 %45
  store %struct.rule* %43, %struct.rule** %46, align 8
  %47 = load %struct.rule*, %struct.rule** %4, align 8
  store %struct.rule* %47, %struct.rule** %2, align 8
  br label %8

48:                                               ; preds = %8
  store %struct.rule* null, %struct.rule** %2, align 8
  store i32 0, i32* %3, align 4
  br label %49

49:                                               ; preds = %60, %48
  %50 = load i32, i32* %3, align 4
  %51 = sext i32 %50 to i64
  %52 = icmp ult i64 %51, 32
  br i1 %52, label %53, label %63

53:                                               ; preds = %49
  %54 = load i32, i32* %3, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds [32 x %struct.rule*], [32 x %struct.rule*]* %5, i64 0, i64 %55
  %57 = load %struct.rule*, %struct.rule** %56, align 8
  %58 = load %struct.rule*, %struct.rule** %2, align 8
  %59 = call %struct.rule* @Rule_merge(%struct.rule* %57, %struct.rule* %58)
  store %struct.rule* %59, %struct.rule** %2, align 8
  br label %60

60:                                               ; preds = %53
  %61 = load i32, i32* %3, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %3, align 4
  br label %49

63:                                               ; preds = %49
  %64 = load %struct.rule*, %struct.rule** %2, align 8
  ret %struct.rule* %64
}

declare dso_local i32 @memset(%struct.rule**, i32, i32) #1

declare dso_local %struct.rule* @Rule_merge(%struct.rule*, %struct.rule*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
