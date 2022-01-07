; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/msi/extr_sql.tab.c_swap_columns.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/msi/extr_sql.tab.c_swap_columns.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_4__* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_4__**, %struct.TYPE_4__*, i32)* @swap_columns to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @swap_columns(%struct.TYPE_4__** %0, %struct.TYPE_4__* %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_4__**, align 8
  %5 = alloca %struct.TYPE_4__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_4__*, align 8
  %8 = alloca %struct.TYPE_4__*, align 8
  %9 = alloca %struct.TYPE_4__*, align 8
  %10 = alloca %struct.TYPE_4__*, align 8
  %11 = alloca i32, align 4
  store %struct.TYPE_4__** %0, %struct.TYPE_4__*** %4, align 8
  store %struct.TYPE_4__* %1, %struct.TYPE_4__** %5, align 8
  store i32 %2, i32* %6, align 4
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %7, align 8
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %8, align 8
  store i32 0, i32* %11, align 4
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %9, align 8
  %12 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %4, align 8
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  store %struct.TYPE_4__* %13, %struct.TYPE_4__** %10, align 8
  br label %14

14:                                               ; preds = %38, %3
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %16 = icmp ne %struct.TYPE_4__* %15, null
  br i1 %16, label %17, label %42

17:                                               ; preds = %14
  %18 = load i32, i32* %11, align 4
  %19 = add nsw i32 %18, 1
  store i32 %19, i32* %11, align 4
  %20 = load i32, i32* %6, align 4
  %21 = icmp eq i32 %18, %20
  br i1 %21, label %22, label %24

22:                                               ; preds = %17
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  store %struct.TYPE_4__* %23, %struct.TYPE_4__** %9, align 8
  br label %30

24:                                               ; preds = %17
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %26 = icmp ne %struct.TYPE_4__* %25, null
  br i1 %26, label %29, label %27

27:                                               ; preds = %24
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  store %struct.TYPE_4__* %28, %struct.TYPE_4__** %8, align 8
  br label %29

29:                                               ; preds = %27, %24
  br label %30

30:                                               ; preds = %29, %22
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** %32, align 8
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %35 = icmp eq %struct.TYPE_4__* %33, %34
  br i1 %35, label %36, label %38

36:                                               ; preds = %30
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  store %struct.TYPE_4__* %37, %struct.TYPE_4__** %7, align 8
  br label %38

38:                                               ; preds = %36, %30
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 0
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** %40, align 8
  store %struct.TYPE_4__* %41, %struct.TYPE_4__** %10, align 8
  br label %14

42:                                               ; preds = %14
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %44 = icmp ne %struct.TYPE_4__* %43, null
  br i1 %44, label %45, label %49

45:                                               ; preds = %42
  %46 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %47 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 0
  store %struct.TYPE_4__* %46, %struct.TYPE_4__** %48, align 8
  br label %49

49:                                               ; preds = %45, %42
  %50 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %51 = icmp ne %struct.TYPE_4__* %50, null
  br i1 %51, label %52, label %56

52:                                               ; preds = %49
  %53 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %54 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 0
  store %struct.TYPE_4__* %53, %struct.TYPE_4__** %55, align 8
  br label %56

56:                                               ; preds = %52, %49
  %57 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 0
  %59 = load %struct.TYPE_4__*, %struct.TYPE_4__** %58, align 8
  store %struct.TYPE_4__* %59, %struct.TYPE_4__** %10, align 8
  %60 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 0
  %62 = load %struct.TYPE_4__*, %struct.TYPE_4__** %61, align 8
  %63 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 0
  store %struct.TYPE_4__* %62, %struct.TYPE_4__** %64, align 8
  %65 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %66 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 0
  store %struct.TYPE_4__* %65, %struct.TYPE_4__** %67, align 8
  %68 = load i32, i32* %6, align 4
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %70, label %73

70:                                               ; preds = %56
  %71 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %72 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %4, align 8
  store %struct.TYPE_4__* %71, %struct.TYPE_4__** %72, align 8
  br label %73

73:                                               ; preds = %70, %56
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
