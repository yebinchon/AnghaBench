; ModuleID = '/home/carl/AnghaBench/sqlcipher/tool/extr_lemon.c_Configtable_clear.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/tool/extr_lemon.c_Configtable_clear.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i64*, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.config* }
%struct.config = type opaque

@x4a = common dso_local global %struct.TYPE_4__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @Configtable_clear(i32 (%struct.config*)* %0) #0 {
  %2 = alloca i32 (%struct.config*)*, align 8
  %3 = alloca i32, align 4
  store i32 (%struct.config*)* %0, i32 (%struct.config*)** %2, align 8
  %4 = load %struct.TYPE_4__*, %struct.TYPE_4__** @x4a, align 8
  %5 = icmp eq %struct.TYPE_4__* %4, null
  br i1 %5, label %11, label %6

6:                                                ; preds = %1
  %7 = load %struct.TYPE_4__*, %struct.TYPE_4__** @x4a, align 8
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %6, %1
  br label %57

12:                                               ; preds = %6
  %13 = load i32 (%struct.config*)*, i32 (%struct.config*)** %2, align 8
  %14 = icmp ne i32 (%struct.config*)* %13, null
  br i1 %14, label %15, label %37

15:                                               ; preds = %12
  store i32 0, i32* %3, align 4
  br label %16

16:                                               ; preds = %33, %15
  %17 = load i32, i32* %3, align 4
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** @x4a, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = icmp slt i32 %17, %20
  br i1 %21, label %22, label %36

22:                                               ; preds = %16
  %23 = load i32 (%struct.config*)*, i32 (%struct.config*)** %2, align 8
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** @x4a, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 3
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %25, align 8
  %27 = load i32, i32* %3, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i64 %28
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 0
  %31 = load %struct.config*, %struct.config** %30, align 8
  %32 = call i32 %23(%struct.config* %31)
  br label %33

33:                                               ; preds = %22
  %34 = load i32, i32* %3, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %3, align 4
  br label %16

36:                                               ; preds = %16
  br label %37

37:                                               ; preds = %36, %12
  store i32 0, i32* %3, align 4
  br label %38

38:                                               ; preds = %51, %37
  %39 = load i32, i32* %3, align 4
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** @x4a, align 8
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = icmp slt i32 %39, %42
  br i1 %43, label %44, label %54

44:                                               ; preds = %38
  %45 = load %struct.TYPE_4__*, %struct.TYPE_4__** @x4a, align 8
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 2
  %47 = load i64*, i64** %46, align 8
  %48 = load i32, i32* %3, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i64, i64* %47, i64 %49
  store i64 0, i64* %50, align 8
  br label %51

51:                                               ; preds = %44
  %52 = load i32, i32* %3, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %3, align 4
  br label %38

54:                                               ; preds = %38
  %55 = load %struct.TYPE_4__*, %struct.TYPE_4__** @x4a, align 8
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 0
  store i32 0, i32* %56, align 8
  br label %57

57:                                               ; preds = %54, %11
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
