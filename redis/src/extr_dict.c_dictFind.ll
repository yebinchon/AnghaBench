; ModuleID = '/home/carl/AnghaBench/redis/src/extr_dict.c_dictFind.c'
source_filename = "/home/carl/AnghaBench/redis/src/extr_dict.c_dictFind.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i8*, %struct.TYPE_11__* }
%struct.TYPE_12__ = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i64, i32, %struct.TYPE_11__** }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_11__* @dictFind(%struct.TYPE_12__* %0, i8* %1) #0 {
  %3 = alloca %struct.TYPE_11__*, align 8
  %4 = alloca %struct.TYPE_12__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.TYPE_11__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %4, align 8
  store i8* %1, i8** %5, align 8
  %10 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %11 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %10, i32 0, i32 0
  %12 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %12, i64 0
  %14 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %16, i32 0, i32 0
  %18 = load %struct.TYPE_10__*, %struct.TYPE_10__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %18, i64 1
  %20 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = add nsw i64 %15, %21
  %23 = icmp eq i64 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %2
  store %struct.TYPE_11__* null, %struct.TYPE_11__** %3, align 8
  br label %95

25:                                               ; preds = %2
  %26 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %27 = call i64 @dictIsRehashing(%struct.TYPE_12__* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %25
  %30 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %31 = call i32 @_dictRehashStep(%struct.TYPE_12__* %30)
  br label %32

32:                                               ; preds = %29, %25
  %33 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %34 = load i8*, i8** %5, align 8
  %35 = call i32 @dictHashKey(%struct.TYPE_12__* %33, i8* %34)
  store i32 %35, i32* %7, align 4
  store i32 0, i32* %9, align 4
  br label %36

36:                                               ; preds = %91, %32
  %37 = load i32, i32* %9, align 4
  %38 = icmp sle i32 %37, 1
  br i1 %38, label %39, label %94

39:                                               ; preds = %36
  %40 = load i32, i32* %7, align 4
  %41 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %42 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %41, i32 0, i32 0
  %43 = load %struct.TYPE_10__*, %struct.TYPE_10__** %42, align 8
  %44 = load i32, i32* %9, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %43, i64 %45
  %47 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 8
  %49 = and i32 %40, %48
  store i32 %49, i32* %8, align 4
  %50 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %51 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %50, i32 0, i32 0
  %52 = load %struct.TYPE_10__*, %struct.TYPE_10__** %51, align 8
  %53 = load i32, i32* %9, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %52, i64 %54
  %56 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %55, i32 0, i32 2
  %57 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %56, align 8
  %58 = load i32, i32* %8, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %57, i64 %59
  %61 = load %struct.TYPE_11__*, %struct.TYPE_11__** %60, align 8
  store %struct.TYPE_11__* %61, %struct.TYPE_11__** %6, align 8
  br label %62

62:                                               ; preds = %81, %39
  %63 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %64 = icmp ne %struct.TYPE_11__* %63, null
  br i1 %64, label %65, label %85

65:                                               ; preds = %62
  %66 = load i8*, i8** %5, align 8
  %67 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %68 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %67, i32 0, i32 0
  %69 = load i8*, i8** %68, align 8
  %70 = icmp eq i8* %66, %69
  br i1 %70, label %79, label %71

71:                                               ; preds = %65
  %72 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %73 = load i8*, i8** %5, align 8
  %74 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %75 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %74, i32 0, i32 0
  %76 = load i8*, i8** %75, align 8
  %77 = call i64 @dictCompareKeys(%struct.TYPE_12__* %72, i8* %73, i8* %76)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %81

79:                                               ; preds = %71, %65
  %80 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  store %struct.TYPE_11__* %80, %struct.TYPE_11__** %3, align 8
  br label %95

81:                                               ; preds = %71
  %82 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %83 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %82, i32 0, i32 1
  %84 = load %struct.TYPE_11__*, %struct.TYPE_11__** %83, align 8
  store %struct.TYPE_11__* %84, %struct.TYPE_11__** %6, align 8
  br label %62

85:                                               ; preds = %62
  %86 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %87 = call i64 @dictIsRehashing(%struct.TYPE_12__* %86)
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %90, label %89

89:                                               ; preds = %85
  store %struct.TYPE_11__* null, %struct.TYPE_11__** %3, align 8
  br label %95

90:                                               ; preds = %85
  br label %91

91:                                               ; preds = %90
  %92 = load i32, i32* %9, align 4
  %93 = add nsw i32 %92, 1
  store i32 %93, i32* %9, align 4
  br label %36

94:                                               ; preds = %36
  store %struct.TYPE_11__* null, %struct.TYPE_11__** %3, align 8
  br label %95

95:                                               ; preds = %94, %89, %79, %24
  %96 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  ret %struct.TYPE_11__* %96
}

declare dso_local i64 @dictIsRehashing(%struct.TYPE_12__*) #1

declare dso_local i32 @_dictRehashStep(%struct.TYPE_12__*) #1

declare dso_local i32 @dictHashKey(%struct.TYPE_12__*, i8*) #1

declare dso_local i64 @dictCompareKeys(%struct.TYPE_12__*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
