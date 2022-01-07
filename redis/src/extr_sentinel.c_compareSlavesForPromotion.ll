; ModuleID = '/home/carl/AnghaBench/redis/src/extr_sentinel.c_compareSlavesForPromotion.c'
source_filename = "/home/carl/AnghaBench/redis/src/extr_sentinel.c_compareSlavesForPromotion.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i64, i8* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @compareSlavesForPromotion(i8* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.TYPE_2__**, align 8
  %7 = alloca %struct.TYPE_2__**, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  %10 = load i8*, i8** %4, align 8
  %11 = bitcast i8* %10 to %struct.TYPE_2__**
  store %struct.TYPE_2__** %11, %struct.TYPE_2__*** %6, align 8
  %12 = load i8*, i8** %5, align 8
  %13 = bitcast i8* %12 to %struct.TYPE_2__**
  store %struct.TYPE_2__** %13, %struct.TYPE_2__*** %7, align 8
  %14 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %6, align 8
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %7, align 8
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %17, %21
  br i1 %22, label %23, label %34

23:                                               ; preds = %2
  %24 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %6, align 8
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %7, align 8
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = sub nsw i64 %27, %31
  %33 = trunc i64 %32 to i32
  store i32 %33, i32* %3, align 4
  br label %86

34:                                               ; preds = %2
  %35 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %6, align 8
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %7, align 8
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = icmp sgt i64 %38, %42
  br i1 %43, label %44, label %45

44:                                               ; preds = %34
  store i32 -1, i32* %3, align 4
  br label %86

45:                                               ; preds = %34
  %46 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %6, align 8
  %47 = load %struct.TYPE_2__*, %struct.TYPE_2__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %7, align 8
  %51 = load %struct.TYPE_2__*, %struct.TYPE_2__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 1
  %53 = load i64, i64* %52, align 8
  %54 = icmp slt i64 %49, %53
  br i1 %54, label %55, label %56

55:                                               ; preds = %45
  store i32 1, i32* %3, align 4
  br label %86

56:                                               ; preds = %45
  br label %57

57:                                               ; preds = %56
  %58 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %6, align 8
  %59 = load %struct.TYPE_2__*, %struct.TYPE_2__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 2
  %61 = load i8*, i8** %60, align 8
  store i8* %61, i8** %8, align 8
  %62 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %7, align 8
  %63 = load %struct.TYPE_2__*, %struct.TYPE_2__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 2
  %65 = load i8*, i8** %64, align 8
  store i8* %65, i8** %9, align 8
  %66 = load i8*, i8** %8, align 8
  %67 = icmp eq i8* %66, null
  br i1 %67, label %68, label %72

68:                                               ; preds = %57
  %69 = load i8*, i8** %9, align 8
  %70 = icmp eq i8* %69, null
  br i1 %70, label %71, label %72

71:                                               ; preds = %68
  store i32 0, i32* %3, align 4
  br label %86

72:                                               ; preds = %68, %57
  %73 = load i8*, i8** %8, align 8
  %74 = icmp eq i8* %73, null
  br i1 %74, label %75, label %76

75:                                               ; preds = %72
  store i32 1, i32* %3, align 4
  br label %86

76:                                               ; preds = %72
  %77 = load i8*, i8** %9, align 8
  %78 = icmp eq i8* %77, null
  br i1 %78, label %79, label %80

79:                                               ; preds = %76
  store i32 -1, i32* %3, align 4
  br label %86

80:                                               ; preds = %76
  br label %81

81:                                               ; preds = %80
  br label %82

82:                                               ; preds = %81
  %83 = load i8*, i8** %8, align 8
  %84 = load i8*, i8** %9, align 8
  %85 = call i32 @strcasecmp(i8* %83, i8* %84)
  store i32 %85, i32* %3, align 4
  br label %86

86:                                               ; preds = %82, %79, %75, %71, %55, %44, %23
  %87 = load i32, i32* %3, align 4
  ret i32 %87
}

declare dso_local i32 @strcasecmp(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
