; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/mujs/extr_jsproperty.c_jsV_resizearray.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/mujs/extr_jsproperty.c_jsV_resizearray.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32, %struct.TYPE_10__ }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @jsV_resizearray(i32* %0, %struct.TYPE_11__* %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_11__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca [32 x i8], align 16
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_11__*, align 8
  store i32* %0, i32** %4, align 8
  store %struct.TYPE_11__* %1, %struct.TYPE_11__** %5, align 8
  store i32 %2, i32* %6, align 4
  %11 = load i32, i32* %6, align 4
  %12 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %13 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %12, i32 0, i32 1
  %14 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = icmp slt i32 %11, %16
  br i1 %17, label %18, label %83

18:                                               ; preds = %3
  %19 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %20 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %25 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = mul nsw i32 %26, 2
  %28 = icmp sgt i32 %23, %27
  br i1 %28, label %29, label %61

29:                                               ; preds = %18
  %30 = load i32*, i32** %4, align 8
  %31 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %32 = call %struct.TYPE_11__* @jsV_newiterator(i32* %30, %struct.TYPE_11__* %31, i32 1)
  store %struct.TYPE_11__* %32, %struct.TYPE_11__** %10, align 8
  br label %33

33:                                               ; preds = %59, %29
  %34 = load i32*, i32** %4, align 8
  %35 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %36 = call i8* @jsV_nextiterator(i32* %34, %struct.TYPE_11__* %35)
  store i8* %36, i8** %8, align 8
  %37 = icmp ne i8* %36, null
  br i1 %37, label %38, label %60

38:                                               ; preds = %33
  %39 = load i32*, i32** %4, align 8
  %40 = load i8*, i8** %8, align 8
  %41 = call i32 @jsV_stringtonumber(i32* %39, i8* %40)
  %42 = call i32 @jsV_numbertointeger(i32 %41)
  store i32 %42, i32* %9, align 4
  %43 = load i32, i32* %9, align 4
  %44 = load i32, i32* %6, align 4
  %45 = icmp sge i32 %43, %44
  br i1 %45, label %46, label %59

46:                                               ; preds = %38
  %47 = load i8*, i8** %8, align 8
  %48 = load i32*, i32** %4, align 8
  %49 = getelementptr inbounds [32 x i8], [32 x i8]* %7, i64 0, i64 0
  %50 = load i32, i32* %9, align 4
  %51 = call i32 @jsV_numbertostring(i32* %48, i8* %49, i32 %50)
  %52 = call i32 @strcmp(i8* %47, i32 %51)
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %59, label %54

54:                                               ; preds = %46
  %55 = load i32*, i32** %4, align 8
  %56 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %57 = load i8*, i8** %8, align 8
  %58 = call i32 @jsV_delproperty(i32* %55, %struct.TYPE_11__* %56, i8* %57)
  br label %59

59:                                               ; preds = %54, %46, %38
  br label %33

60:                                               ; preds = %33
  br label %82

61:                                               ; preds = %18
  %62 = load i32, i32* %6, align 4
  store i32 %62, i32* %9, align 4
  br label %63

63:                                               ; preds = %78, %61
  %64 = load i32, i32* %9, align 4
  %65 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %66 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %65, i32 0, i32 1
  %67 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = icmp slt i32 %64, %69
  br i1 %70, label %71, label %81

71:                                               ; preds = %63
  %72 = load i32*, i32** %4, align 8
  %73 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %74 = getelementptr inbounds [32 x i8], [32 x i8]* %7, i64 0, i64 0
  %75 = load i32, i32* %9, align 4
  %76 = call i8* @js_itoa(i8* %74, i32 %75)
  %77 = call i32 @jsV_delproperty(i32* %72, %struct.TYPE_11__* %73, i8* %76)
  br label %78

78:                                               ; preds = %71
  %79 = load i32, i32* %9, align 4
  %80 = add nsw i32 %79, 1
  store i32 %80, i32* %9, align 4
  br label %63

81:                                               ; preds = %63
  br label %82

82:                                               ; preds = %81, %60
  br label %83

83:                                               ; preds = %82, %3
  %84 = load i32, i32* %6, align 4
  %85 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %86 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %85, i32 0, i32 1
  %87 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %87, i32 0, i32 0
  store i32 %84, i32* %88, align 4
  ret void
}

declare dso_local %struct.TYPE_11__* @jsV_newiterator(i32*, %struct.TYPE_11__*, i32) #1

declare dso_local i8* @jsV_nextiterator(i32*, %struct.TYPE_11__*) #1

declare dso_local i32 @jsV_numbertointeger(i32) #1

declare dso_local i32 @jsV_stringtonumber(i32*, i8*) #1

declare dso_local i32 @strcmp(i8*, i32) #1

declare dso_local i32 @jsV_numbertostring(i32*, i8*, i32) #1

declare dso_local i32 @jsV_delproperty(i32*, %struct.TYPE_11__*, i8*) #1

declare dso_local i8* @js_itoa(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
