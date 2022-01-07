; ModuleID = '/home/carl/AnghaBench/reactos/win32ss/gdi/ntgdi/extr_bezier.c_GDI_Bezier.c'
source_filename = "/home/carl/AnghaBench/reactos/win32ss/gdi/ntgdi/extr_bezier.c_GDI_Bezier.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i8*, i8* }

@BEZIER_INITBUFSIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"Invalid no. of points %d\0A\00", align 1
@PagedPool = common dso_local global i32 0, align 4
@TAG_BEZIER = common dso_local global i32 0, align 4
@BEZIERMAXDEPTH = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [20 x i8] c"Produced %d points\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_9__* @GDI_Bezier(%struct.TYPE_9__* %0, i32 %1, i32* %2) #0 {
  %4 = alloca %struct.TYPE_9__*, align 8
  %5 = alloca %struct.TYPE_9__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_9__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca [4 x %struct.TYPE_9__], align 16
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  %13 = load i32, i32* @BEZIER_INITBUFSIZE, align 4
  store i32 %13, i32* %10, align 4
  %14 = load i32, i32* %6, align 4
  %15 = icmp eq i32 %14, 1
  br i1 %15, label %21, label %16

16:                                               ; preds = %3
  %17 = load i32, i32* %6, align 4
  %18 = sub nsw i32 %17, 1
  %19 = srem i32 %18, 3
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %16, %3
  %22 = load i32, i32* %6, align 4
  %23 = call i32 @DPRINT1(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %22)
  store %struct.TYPE_9__* null, %struct.TYPE_9__** %4, align 8
  br label %91

24:                                               ; preds = %16
  %25 = load i32*, i32** %7, align 8
  store i32 0, i32* %25, align 4
  %26 = load i32, i32* @PagedPool, align 4
  %27 = load i32, i32* %10, align 4
  %28 = sext i32 %27 to i64
  %29 = mul i64 %28, 16
  %30 = trunc i64 %29 to i32
  %31 = load i32, i32* @TAG_BEZIER, align 4
  %32 = call %struct.TYPE_9__* @ExAllocatePoolWithTag(i32 %26, i32 %30, i32 %31)
  store %struct.TYPE_9__* %32, %struct.TYPE_9__** %8, align 8
  %33 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %34 = icmp ne %struct.TYPE_9__* %33, null
  br i1 %34, label %36, label %35

35:                                               ; preds = %24
  store %struct.TYPE_9__* null, %struct.TYPE_9__** %4, align 8
  br label %91

36:                                               ; preds = %24
  store i32 0, i32* %9, align 4
  br label %37

37:                                               ; preds = %83, %36
  %38 = load i32, i32* %9, align 4
  %39 = load i32, i32* %6, align 4
  %40 = sub nsw i32 %39, 1
  %41 = sdiv i32 %40, 3
  %42 = icmp slt i32 %38, %41
  br i1 %42, label %43, label %86

43:                                               ; preds = %37
  %44 = getelementptr inbounds [4 x %struct.TYPE_9__], [4 x %struct.TYPE_9__]* %12, i64 0, i64 0
  %45 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %46 = load i32, i32* %9, align 4
  %47 = mul nsw i32 %46, 3
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %45, i64 %48
  %50 = call i32 @memcpy(%struct.TYPE_9__* %44, %struct.TYPE_9__* %49, i32 64)
  store i32 0, i32* %11, align 4
  br label %51

51:                                               ; preds = %75, %43
  %52 = load i32, i32* %11, align 4
  %53 = icmp slt i32 %52, 4
  br i1 %53, label %54, label %78

54:                                               ; preds = %51
  %55 = load i32, i32* %11, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds [4 x %struct.TYPE_9__], [4 x %struct.TYPE_9__]* %12, i64 0, i64 %56
  %58 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %57, i32 0, i32 1
  %59 = load i8*, i8** %58, align 8
  %60 = call i8* @BEZIERSHIFTUP(i8* %59)
  %61 = load i32, i32* %11, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds [4 x %struct.TYPE_9__], [4 x %struct.TYPE_9__]* %12, i64 0, i64 %62
  %64 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %63, i32 0, i32 1
  store i8* %60, i8** %64, align 8
  %65 = load i32, i32* %11, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds [4 x %struct.TYPE_9__], [4 x %struct.TYPE_9__]* %12, i64 0, i64 %66
  %68 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %67, i32 0, i32 0
  %69 = load i8*, i8** %68, align 16
  %70 = call i8* @BEZIERSHIFTUP(i8* %69)
  %71 = load i32, i32* %11, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds [4 x %struct.TYPE_9__], [4 x %struct.TYPE_9__]* %12, i64 0, i64 %72
  %74 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %73, i32 0, i32 0
  store i8* %70, i8** %74, align 16
  br label %75

75:                                               ; preds = %54
  %76 = load i32, i32* %11, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %11, align 4
  br label %51

78:                                               ; preds = %51
  %79 = getelementptr inbounds [4 x %struct.TYPE_9__], [4 x %struct.TYPE_9__]* %12, i64 0, i64 0
  %80 = load i32*, i32** %7, align 8
  %81 = load i32, i32* @BEZIERMAXDEPTH, align 4
  %82 = call i32 @GDI_InternalBezier(%struct.TYPE_9__* %79, %struct.TYPE_9__** %8, i32* %10, i32* %80, i32 %81)
  br label %83

83:                                               ; preds = %78
  %84 = load i32, i32* %9, align 4
  %85 = add nsw i32 %84, 1
  store i32 %85, i32* %9, align 4
  br label %37

86:                                               ; preds = %37
  %87 = load i32*, i32** %7, align 8
  %88 = load i32, i32* %87, align 4
  %89 = call i32 @DPRINT(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i32 %88)
  %90 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  store %struct.TYPE_9__* %90, %struct.TYPE_9__** %4, align 8
  br label %91

91:                                               ; preds = %86, %35, %21
  %92 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  ret %struct.TYPE_9__* %92
}

declare dso_local i32 @DPRINT1(i8*, i32) #1

declare dso_local %struct.TYPE_9__* @ExAllocatePoolWithTag(i32, i32, i32) #1

declare dso_local i32 @memcpy(%struct.TYPE_9__*, %struct.TYPE_9__*, i32) #1

declare dso_local i8* @BEZIERSHIFTUP(i8*) #1

declare dso_local i32 @GDI_InternalBezier(%struct.TYPE_9__*, %struct.TYPE_9__**, i32*, i32*, i32) #1

declare dso_local i32 @DPRINT(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
