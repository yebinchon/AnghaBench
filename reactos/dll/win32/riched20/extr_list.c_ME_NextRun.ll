; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/riched20/extr_list.c_ME_NextRun.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/riched20/extr_list.c_ME_NextRun.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, %struct.TYPE_4__* }

@diTextEnd = common dso_local global i64 0, align 8
@diParagraph = common dso_local global i64 0, align 8
@FALSE = common dso_local global i32 0, align 4
@diRun = common dso_local global i64 0, align 8
@TRUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ME_NextRun(%struct.TYPE_4__** %0, %struct.TYPE_4__** %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_4__**, align 8
  %6 = alloca %struct.TYPE_4__**, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_4__*, align 8
  store %struct.TYPE_4__** %0, %struct.TYPE_4__*** %5, align 8
  store %struct.TYPE_4__** %1, %struct.TYPE_4__*** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %6, align 8
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 1
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  store %struct.TYPE_4__* %12, %struct.TYPE_4__** %8, align 8
  br label %13

13:                                               ; preds = %44, %3
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @diTextEnd, align 8
  %18 = icmp ne i64 %16, %17
  br i1 %18, label %19, label %48

19:                                               ; preds = %13
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @diParagraph, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %33

25:                                               ; preds = %19
  %26 = load i32, i32* %7, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %30, label %28

28:                                               ; preds = %25
  %29 = load i32, i32* @FALSE, align 4
  store i32 %29, i32* %4, align 4
  br label %50

30:                                               ; preds = %25
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %32 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %5, align 8
  store %struct.TYPE_4__* %31, %struct.TYPE_4__** %32, align 8
  br label %44

33:                                               ; preds = %19
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @diRun, align 8
  %38 = icmp eq i64 %36, %37
  br i1 %38, label %39, label %43

39:                                               ; preds = %33
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %41 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %6, align 8
  store %struct.TYPE_4__* %40, %struct.TYPE_4__** %41, align 8
  %42 = load i32, i32* @TRUE, align 4
  store i32 %42, i32* %4, align 4
  br label %50

43:                                               ; preds = %33
  br label %44

44:                                               ; preds = %43, %30
  %45 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 1
  %47 = load %struct.TYPE_4__*, %struct.TYPE_4__** %46, align 8
  store %struct.TYPE_4__* %47, %struct.TYPE_4__** %8, align 8
  br label %13

48:                                               ; preds = %13
  %49 = load i32, i32* @FALSE, align 4
  store i32 %49, i32* %4, align 4
  br label %50

50:                                               ; preds = %48, %39, %28
  %51 = load i32, i32* %4, align 4
  ret i32 %51
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
