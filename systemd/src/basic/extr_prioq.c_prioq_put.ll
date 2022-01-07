; ModuleID = '/home/carl/AnghaBench/systemd/src/basic/extr_prioq.c_prioq_put.c'
source_filename = "/home/carl/AnghaBench/systemd/src/basic/extr_prioq.c_prioq_put.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32, %struct.prioq_item* }
%struct.prioq_item = type { i32*, i8* }

@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @prioq_put(%struct.TYPE_5__* %0, i8* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_5__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.prioq_item*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.prioq_item*, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32* %2, i32** %7, align 8
  %12 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %13 = call i32 @assert(%struct.TYPE_5__* %12)
  %14 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = icmp uge i32 %16, %19
  br i1 %20, label %21, label %45

21:                                               ; preds = %3
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = add i32 %24, 1
  %26 = mul i32 %25, 2
  %27 = call i32 @MAX(i32 %26, i32 16)
  store i32 %27, i32* %10, align 4
  %28 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 2
  %30 = load %struct.prioq_item*, %struct.prioq_item** %29, align 8
  %31 = load i32, i32* %10, align 4
  %32 = call %struct.prioq_item* @reallocarray(%struct.prioq_item* %30, i32 %31, i32 16)
  store %struct.prioq_item* %32, %struct.prioq_item** %11, align 8
  %33 = load %struct.prioq_item*, %struct.prioq_item** %11, align 8
  %34 = icmp ne %struct.prioq_item* %33, null
  br i1 %34, label %38, label %35

35:                                               ; preds = %21
  %36 = load i32, i32* @ENOMEM, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %4, align 4
  br label %71

38:                                               ; preds = %21
  %39 = load %struct.prioq_item*, %struct.prioq_item** %11, align 8
  %40 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 2
  store %struct.prioq_item* %39, %struct.prioq_item** %41, align 8
  %42 = load i32, i32* %10, align 4
  %43 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 1
  store i32 %42, i32* %44, align 4
  br label %45

45:                                               ; preds = %38, %3
  %46 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = add i32 %48, 1
  store i32 %49, i32* %47, align 8
  store i32 %48, i32* %9, align 4
  %50 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i32 0, i32 2
  %52 = load %struct.prioq_item*, %struct.prioq_item** %51, align 8
  %53 = load i32, i32* %9, align 4
  %54 = zext i32 %53 to i64
  %55 = getelementptr inbounds %struct.prioq_item, %struct.prioq_item* %52, i64 %54
  store %struct.prioq_item* %55, %struct.prioq_item** %8, align 8
  %56 = load i8*, i8** %6, align 8
  %57 = load %struct.prioq_item*, %struct.prioq_item** %8, align 8
  %58 = getelementptr inbounds %struct.prioq_item, %struct.prioq_item* %57, i32 0, i32 1
  store i8* %56, i8** %58, align 8
  %59 = load i32*, i32** %7, align 8
  %60 = load %struct.prioq_item*, %struct.prioq_item** %8, align 8
  %61 = getelementptr inbounds %struct.prioq_item, %struct.prioq_item* %60, i32 0, i32 0
  store i32* %59, i32** %61, align 8
  %62 = load i32*, i32** %7, align 8
  %63 = icmp ne i32* %62, null
  br i1 %63, label %64, label %67

64:                                               ; preds = %45
  %65 = load i32, i32* %9, align 4
  %66 = load i32*, i32** %7, align 8
  store i32 %65, i32* %66, align 4
  br label %67

67:                                               ; preds = %64, %45
  %68 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %69 = load i32, i32* %9, align 4
  %70 = call i32 @shuffle_up(%struct.TYPE_5__* %68, i32 %69)
  store i32 0, i32* %4, align 4
  br label %71

71:                                               ; preds = %67, %35
  %72 = load i32, i32* %4, align 4
  ret i32 %72
}

declare dso_local i32 @assert(%struct.TYPE_5__*) #1

declare dso_local i32 @MAX(i32, i32) #1

declare dso_local %struct.prioq_item* @reallocarray(%struct.prioq_item*, i32, i32) #1

declare dso_local i32 @shuffle_up(%struct.TYPE_5__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
