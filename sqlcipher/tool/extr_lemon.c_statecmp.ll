; ModuleID = '/home/carl/AnghaBench/sqlcipher/tool/extr_lemon.c_statecmp.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/tool/extr_lemon.c_statecmp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.config = type { i32, %struct.TYPE_2__*, %struct.config* }
%struct.TYPE_2__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @statecmp(%struct.config* %0, %struct.config* %1) #0 {
  %3 = alloca %struct.config*, align 8
  %4 = alloca %struct.config*, align 8
  %5 = alloca i32, align 4
  store %struct.config* %0, %struct.config** %3, align 8
  store %struct.config* %1, %struct.config** %4, align 8
  store i32 0, i32* %5, align 4
  br label %6

6:                                                ; preds = %40, %2
  %7 = load i32, i32* %5, align 4
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %15

9:                                                ; preds = %6
  %10 = load %struct.config*, %struct.config** %3, align 8
  %11 = icmp ne %struct.config* %10, null
  br i1 %11, label %12, label %15

12:                                               ; preds = %9
  %13 = load %struct.config*, %struct.config** %4, align 8
  %14 = icmp ne %struct.config* %13, null
  br label %15

15:                                               ; preds = %12, %9, %6
  %16 = phi i1 [ false, %9 ], [ false, %6 ], [ %14, %12 ]
  br i1 %16, label %17, label %47

17:                                               ; preds = %15
  %18 = load %struct.config*, %struct.config** %3, align 8
  %19 = getelementptr inbounds %struct.config, %struct.config* %18, i32 0, i32 1
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.config*, %struct.config** %4, align 8
  %24 = getelementptr inbounds %struct.config, %struct.config* %23, i32 0, i32 1
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = sub nsw i32 %22, %27
  store i32 %28, i32* %5, align 4
  %29 = load i32, i32* %5, align 4
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %39

31:                                               ; preds = %17
  %32 = load %struct.config*, %struct.config** %3, align 8
  %33 = getelementptr inbounds %struct.config, %struct.config* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = load %struct.config*, %struct.config** %4, align 8
  %36 = getelementptr inbounds %struct.config, %struct.config* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = sub nsw i32 %34, %37
  store i32 %38, i32* %5, align 4
  br label %39

39:                                               ; preds = %31, %17
  br label %40

40:                                               ; preds = %39
  %41 = load %struct.config*, %struct.config** %3, align 8
  %42 = getelementptr inbounds %struct.config, %struct.config* %41, i32 0, i32 2
  %43 = load %struct.config*, %struct.config** %42, align 8
  store %struct.config* %43, %struct.config** %3, align 8
  %44 = load %struct.config*, %struct.config** %4, align 8
  %45 = getelementptr inbounds %struct.config, %struct.config* %44, i32 0, i32 2
  %46 = load %struct.config*, %struct.config** %45, align 8
  store %struct.config* %46, %struct.config** %4, align 8
  br label %6

47:                                               ; preds = %15
  %48 = load i32, i32* %5, align 4
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %50, label %59

50:                                               ; preds = %47
  %51 = load %struct.config*, %struct.config** %3, align 8
  %52 = icmp ne %struct.config* %51, null
  br i1 %52, label %53, label %54

53:                                               ; preds = %50
  store i32 1, i32* %5, align 4
  br label %54

54:                                               ; preds = %53, %50
  %55 = load %struct.config*, %struct.config** %4, align 8
  %56 = icmp ne %struct.config* %55, null
  br i1 %56, label %57, label %58

57:                                               ; preds = %54
  store i32 -1, i32* %5, align 4
  br label %58

58:                                               ; preds = %57, %54
  br label %59

59:                                               ; preds = %58, %47
  %60 = load i32, i32* %5, align 4
  ret i32 %60
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
