; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/lcms2/testbed/extr_testcms2.c_DumpToneCurve.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/lcms2/testbed/extr_testcms2.c_DumpToneCurve.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32* }

@.str = private unnamed_addr constant [17 x i8] c"NUMBER_OF_FIELDS\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"NUMBER_OF_SETS\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"SAMPLE_ID\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"VALUE\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"%u\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"0x%x\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @DumpToneCurve(%struct.TYPE_3__* %0, i8* %1) #0 {
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca [30 x i8], align 16
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %3, align 8
  store i8* %1, i8** %4, align 8
  %8 = call i32 (...) @DbgThread()
  %9 = call i32 @cmsIT8Alloc(i32 %8)
  store i32 %9, i32* %5, align 4
  %10 = call i32 (...) @DbgThread()
  %11 = load i32, i32* %5, align 4
  %12 = call i32 @cmsIT8SetPropertyDbl(i32 %10, i32 %11, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 2)
  %13 = call i32 (...) @DbgThread()
  %14 = load i32, i32* %5, align 4
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = call i32 @cmsIT8SetPropertyDbl(i32 %13, i32 %14, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i32 %17)
  %19 = call i32 (...) @DbgThread()
  %20 = load i32, i32* %5, align 4
  %21 = call i32 @cmsIT8SetDataFormat(i32 %19, i32 %20, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0))
  %22 = call i32 (...) @DbgThread()
  %23 = load i32, i32* %5, align 4
  %24 = call i32 @cmsIT8SetDataFormat(i32 %22, i32 %23, i32 1, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0))
  store i32 0, i32* %6, align 4
  br label %25

25:                                               ; preds = %54, %2
  %26 = load i32, i32* %6, align 4
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = icmp slt i32 %26, %29
  br i1 %30, label %31, label %57

31:                                               ; preds = %25
  %32 = getelementptr inbounds [30 x i8], [30 x i8]* %7, i64 0, i64 0
  %33 = load i32, i32* %6, align 4
  %34 = call i32 @sprintf(i8* %32, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i32 %33)
  %35 = call i32 (...) @DbgThread()
  %36 = load i32, i32* %5, align 4
  %37 = load i32, i32* %6, align 4
  %38 = getelementptr inbounds [30 x i8], [30 x i8]* %7, i64 0, i64 0
  %39 = call i32 @cmsIT8SetDataRowCol(i32 %35, i32 %36, i32 %37, i32 0, i8* %38)
  %40 = getelementptr inbounds [30 x i8], [30 x i8]* %7, i64 0, i64 0
  %41 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 1
  %43 = load i32*, i32** %42, align 8
  %44 = load i32, i32* %6, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i32, i32* %43, i64 %45
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @sprintf(i8* %40, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i32 %47)
  %49 = call i32 (...) @DbgThread()
  %50 = load i32, i32* %5, align 4
  %51 = load i32, i32* %6, align 4
  %52 = getelementptr inbounds [30 x i8], [30 x i8]* %7, i64 0, i64 0
  %53 = call i32 @cmsIT8SetDataRowCol(i32 %49, i32 %50, i32 %51, i32 1, i8* %52)
  br label %54

54:                                               ; preds = %31
  %55 = load i32, i32* %6, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %6, align 4
  br label %25

57:                                               ; preds = %25
  %58 = call i32 (...) @DbgThread()
  %59 = load i32, i32* %5, align 4
  %60 = load i8*, i8** %4, align 8
  %61 = call i32 @cmsIT8SaveToFile(i32 %58, i32 %59, i8* %60)
  %62 = call i32 (...) @DbgThread()
  %63 = load i32, i32* %5, align 4
  %64 = call i32 @cmsIT8Free(i32 %62, i32 %63)
  ret void
}

declare dso_local i32 @cmsIT8Alloc(i32) #1

declare dso_local i32 @DbgThread(...) #1

declare dso_local i32 @cmsIT8SetPropertyDbl(i32, i32, i8*, i32) #1

declare dso_local i32 @cmsIT8SetDataFormat(i32, i32, i32, i8*) #1

declare dso_local i32 @sprintf(i8*, i8*, i32) #1

declare dso_local i32 @cmsIT8SetDataRowCol(i32, i32, i32, i32, i8*) #1

declare dso_local i32 @cmsIT8SaveToFile(i32, i32, i8*) #1

declare dso_local i32 @cmsIT8Free(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
