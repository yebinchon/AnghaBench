; ModuleID = '/home/carl/AnghaBench/redis/src/extr_sparkline.c_sparklineSequenceAddSample.c'
source_filename = "/home/carl/AnghaBench/redis/src/extr_sparkline.c_sparklineSequenceAddSample.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sequence = type { i32, double, double, i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { double, i8* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sparklineSequenceAddSample(%struct.sequence* %0, double %1, i8* %2) #0 {
  %4 = alloca %struct.sequence*, align 8
  %5 = alloca double, align 8
  %6 = alloca i8*, align 8
  store %struct.sequence* %0, %struct.sequence** %4, align 8
  store double %1, double* %5, align 8
  store i8* %2, i8** %6, align 8
  %7 = load i8*, i8** %6, align 8
  %8 = icmp eq i8* %7, null
  br i1 %8, label %15, label %9

9:                                                ; preds = %3
  %10 = load i8*, i8** %6, align 8
  %11 = getelementptr inbounds i8, i8* %10, i64 0
  %12 = load i8, i8* %11, align 1
  %13 = sext i8 %12 to i32
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %9, %3
  br label %19

16:                                               ; preds = %9
  %17 = load i8*, i8** %6, align 8
  %18 = call i8* @zstrdup(i8* %17)
  br label %19

19:                                               ; preds = %16, %15
  %20 = phi i8* [ null, %15 ], [ %18, %16 ]
  store i8* %20, i8** %6, align 8
  %21 = load %struct.sequence*, %struct.sequence** %4, align 8
  %22 = getelementptr inbounds %struct.sequence, %struct.sequence* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %31

25:                                               ; preds = %19
  %26 = load double, double* %5, align 8
  %27 = load %struct.sequence*, %struct.sequence** %4, align 8
  %28 = getelementptr inbounds %struct.sequence, %struct.sequence* %27, i32 0, i32 2
  store double %26, double* %28, align 8
  %29 = load %struct.sequence*, %struct.sequence** %4, align 8
  %30 = getelementptr inbounds %struct.sequence, %struct.sequence* %29, i32 0, i32 1
  store double %26, double* %30, align 8
  br label %53

31:                                               ; preds = %19
  %32 = load double, double* %5, align 8
  %33 = load %struct.sequence*, %struct.sequence** %4, align 8
  %34 = getelementptr inbounds %struct.sequence, %struct.sequence* %33, i32 0, i32 1
  %35 = load double, double* %34, align 8
  %36 = fcmp olt double %32, %35
  br i1 %36, label %37, label %41

37:                                               ; preds = %31
  %38 = load double, double* %5, align 8
  %39 = load %struct.sequence*, %struct.sequence** %4, align 8
  %40 = getelementptr inbounds %struct.sequence, %struct.sequence* %39, i32 0, i32 1
  store double %38, double* %40, align 8
  br label %52

41:                                               ; preds = %31
  %42 = load double, double* %5, align 8
  %43 = load %struct.sequence*, %struct.sequence** %4, align 8
  %44 = getelementptr inbounds %struct.sequence, %struct.sequence* %43, i32 0, i32 2
  %45 = load double, double* %44, align 8
  %46 = fcmp ogt double %42, %45
  br i1 %46, label %47, label %51

47:                                               ; preds = %41
  %48 = load double, double* %5, align 8
  %49 = load %struct.sequence*, %struct.sequence** %4, align 8
  %50 = getelementptr inbounds %struct.sequence, %struct.sequence* %49, i32 0, i32 2
  store double %48, double* %50, align 8
  br label %51

51:                                               ; preds = %47, %41
  br label %52

52:                                               ; preds = %51, %37
  br label %53

53:                                               ; preds = %52, %25
  %54 = load %struct.sequence*, %struct.sequence** %4, align 8
  %55 = getelementptr inbounds %struct.sequence, %struct.sequence* %54, i32 0, i32 4
  %56 = load %struct.TYPE_3__*, %struct.TYPE_3__** %55, align 8
  %57 = load %struct.sequence*, %struct.sequence** %4, align 8
  %58 = getelementptr inbounds %struct.sequence, %struct.sequence* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = add nsw i32 %59, 1
  %61 = sext i32 %60 to i64
  %62 = mul i64 4, %61
  %63 = trunc i64 %62 to i32
  %64 = call %struct.TYPE_3__* @zrealloc(%struct.TYPE_3__* %56, i32 %63)
  %65 = load %struct.sequence*, %struct.sequence** %4, align 8
  %66 = getelementptr inbounds %struct.sequence, %struct.sequence* %65, i32 0, i32 4
  store %struct.TYPE_3__* %64, %struct.TYPE_3__** %66, align 8
  %67 = load double, double* %5, align 8
  %68 = load %struct.sequence*, %struct.sequence** %4, align 8
  %69 = getelementptr inbounds %struct.sequence, %struct.sequence* %68, i32 0, i32 4
  %70 = load %struct.TYPE_3__*, %struct.TYPE_3__** %69, align 8
  %71 = load %struct.sequence*, %struct.sequence** %4, align 8
  %72 = getelementptr inbounds %struct.sequence, %struct.sequence* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %70, i64 %74
  %76 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %75, i32 0, i32 0
  store double %67, double* %76, align 8
  %77 = load i8*, i8** %6, align 8
  %78 = load %struct.sequence*, %struct.sequence** %4, align 8
  %79 = getelementptr inbounds %struct.sequence, %struct.sequence* %78, i32 0, i32 4
  %80 = load %struct.TYPE_3__*, %struct.TYPE_3__** %79, align 8
  %81 = load %struct.sequence*, %struct.sequence** %4, align 8
  %82 = getelementptr inbounds %struct.sequence, %struct.sequence* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %80, i64 %84
  %86 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %85, i32 0, i32 1
  store i8* %77, i8** %86, align 8
  %87 = load %struct.sequence*, %struct.sequence** %4, align 8
  %88 = getelementptr inbounds %struct.sequence, %struct.sequence* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = add nsw i32 %89, 1
  store i32 %90, i32* %88, align 8
  %91 = load i8*, i8** %6, align 8
  %92 = icmp ne i8* %91, null
  br i1 %92, label %93, label %98

93:                                               ; preds = %53
  %94 = load %struct.sequence*, %struct.sequence** %4, align 8
  %95 = getelementptr inbounds %struct.sequence, %struct.sequence* %94, i32 0, i32 3
  %96 = load i32, i32* %95, align 8
  %97 = add nsw i32 %96, 1
  store i32 %97, i32* %95, align 8
  br label %98

98:                                               ; preds = %93, %53
  ret void
}

declare dso_local i8* @zstrdup(i8*) #1

declare dso_local %struct.TYPE_3__* @zrealloc(%struct.TYPE_3__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
