; ModuleID = '/home/carl/AnghaBench/systemd/src/resolve/extr_resolved-dns-question.c_dns_question_is_equal.c'
source_filename = "/home/carl/AnghaBench/systemd/src/resolve/extr_resolved-dns-question.c_dns_question_is_equal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64, i32* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dns_question_is_equal(%struct.TYPE_5__* %0, %struct.TYPE_5__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca %struct.TYPE_5__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %4, align 8
  store %struct.TYPE_5__* %1, %struct.TYPE_5__** %5, align 8
  %8 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %9 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %10 = icmp eq %struct.TYPE_5__* %8, %9
  br i1 %10, label %11, label %12

11:                                               ; preds = %2
  store i32 1, i32* %3, align 4
  br label %84

12:                                               ; preds = %2
  %13 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %14 = icmp ne %struct.TYPE_5__* %13, null
  br i1 %14, label %26, label %15

15:                                               ; preds = %12
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %17 = icmp ne %struct.TYPE_5__* %16, null
  br i1 %17, label %18, label %23

18:                                               ; preds = %15
  %19 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp eq i64 %21, 0
  br label %23

23:                                               ; preds = %18, %15
  %24 = phi i1 [ true, %15 ], [ %22, %18 ]
  %25 = zext i1 %24 to i32
  store i32 %25, i32* %3, align 4
  br label %84

26:                                               ; preds = %12
  %27 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %28 = icmp ne %struct.TYPE_5__* %27, null
  br i1 %28, label %35, label %29

29:                                               ; preds = %26
  %30 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = icmp eq i64 %32, 0
  %34 = zext i1 %33 to i32
  store i32 %34, i32* %3, align 4
  br label %84

35:                                               ; preds = %26
  store i64 0, i64* %6, align 8
  br label %36

36:                                               ; preds = %56, %35
  %37 = load i64, i64* %6, align 8
  %38 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = icmp ult i64 %37, %40
  br i1 %41, label %42, label %59

42:                                               ; preds = %36
  %43 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %44 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 1
  %46 = load i32*, i32** %45, align 8
  %47 = load i64, i64* %6, align 8
  %48 = getelementptr inbounds i32, i32* %46, i64 %47
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @dns_question_contains(%struct.TYPE_5__* %43, i32 %49)
  store i32 %50, i32* %7, align 4
  %51 = load i32, i32* %7, align 4
  %52 = icmp sle i32 %51, 0
  br i1 %52, label %53, label %55

53:                                               ; preds = %42
  %54 = load i32, i32* %7, align 4
  store i32 %54, i32* %3, align 4
  br label %84

55:                                               ; preds = %42
  br label %56

56:                                               ; preds = %55
  %57 = load i64, i64* %6, align 8
  %58 = add i64 %57, 1
  store i64 %58, i64* %6, align 8
  br label %36

59:                                               ; preds = %36
  store i64 0, i64* %6, align 8
  br label %60

60:                                               ; preds = %80, %59
  %61 = load i64, i64* %6, align 8
  %62 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %63 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = icmp ult i64 %61, %64
  br i1 %65, label %66, label %83

66:                                               ; preds = %60
  %67 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %68 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %69 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %68, i32 0, i32 1
  %70 = load i32*, i32** %69, align 8
  %71 = load i64, i64* %6, align 8
  %72 = getelementptr inbounds i32, i32* %70, i64 %71
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @dns_question_contains(%struct.TYPE_5__* %67, i32 %73)
  store i32 %74, i32* %7, align 4
  %75 = load i32, i32* %7, align 4
  %76 = icmp sle i32 %75, 0
  br i1 %76, label %77, label %79

77:                                               ; preds = %66
  %78 = load i32, i32* %7, align 4
  store i32 %78, i32* %3, align 4
  br label %84

79:                                               ; preds = %66
  br label %80

80:                                               ; preds = %79
  %81 = load i64, i64* %6, align 8
  %82 = add i64 %81, 1
  store i64 %82, i64* %6, align 8
  br label %60

83:                                               ; preds = %60
  store i32 1, i32* %3, align 4
  br label %84

84:                                               ; preds = %83, %77, %53, %29, %23, %11
  %85 = load i32, i32* %3, align 4
  ret i32 %85
}

declare dso_local i32 @dns_question_contains(%struct.TYPE_5__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
