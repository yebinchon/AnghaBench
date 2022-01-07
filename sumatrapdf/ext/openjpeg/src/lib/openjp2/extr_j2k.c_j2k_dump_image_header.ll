; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/openjpeg/src/lib/openjp2/extr_j2k.c_j2k_dump_image_header.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/openjpeg/src/lib/openjp2/extr_j2k.c_j2k_dump_image_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32, i32, i32, i32* }

@stdout = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [37 x i8] c"[DEV] Dump an image_header struct {\0A\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"Image info {\0A\00", align 1
@.str.2 = private unnamed_addr constant [17 x i8] c"%s x0=%d, y0=%d\0A\00", align 1
@.str.3 = private unnamed_addr constant [17 x i8] c"%s x1=%d, y1=%d\0A\00", align 1
@.str.4 = private unnamed_addr constant [16 x i8] c"%s numcomps=%d\0A\00", align 1
@.str.5 = private unnamed_addr constant [20 x i8] c"%s\09 component %d {\0A\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"%s}\0A\00", align 1
@.str.7 = private unnamed_addr constant [3 x i8] c"}\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @j2k_dump_image_header(%struct.TYPE_3__* %0, i64 %1, i32* %2) #0 {
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32*, align 8
  %7 = alloca [2 x i8], align 1
  %8 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %4, align 8
  store i64 %1, i64* %5, align 8
  store i32* %2, i32** %6, align 8
  %9 = load i64, i64* %5, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %15

11:                                               ; preds = %3
  %12 = load i32*, i32** @stdout, align 8
  %13 = call i32 (i32*, i8*, ...) @fprintf(i32* %12, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  %14 = getelementptr inbounds [2 x i8], [2 x i8]* %7, i64 0, i64 0
  store i8 0, i8* %14, align 1
  br label %20

15:                                               ; preds = %3
  %16 = load i32*, i32** %6, align 8
  %17 = call i32 (i32*, i8*, ...) @fprintf(i32* %16, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0))
  %18 = getelementptr inbounds [2 x i8], [2 x i8]* %7, i64 0, i64 0
  store i8 9, i8* %18, align 1
  %19 = getelementptr inbounds [2 x i8], [2 x i8]* %7, i64 0, i64 1
  store i8 0, i8* %19, align 1
  br label %20

20:                                               ; preds = %15, %11
  %21 = load i32*, i32** %6, align 8
  %22 = getelementptr inbounds [2 x i8], [2 x i8]* %7, i64 0, i64 0
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = call i32 (i32*, i8*, ...) @fprintf(i32* %21, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0), i8* %22, i32 %25, i32 %28)
  %30 = load i32*, i32** %6, align 8
  %31 = getelementptr inbounds [2 x i8], [2 x i8]* %7, i64 0, i64 0
  %32 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 8
  %35 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 3
  %37 = load i32, i32* %36, align 4
  %38 = call i32 (i32*, i8*, ...) @fprintf(i32* %30, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0), i8* %31, i32 %34, i32 %37)
  %39 = load i32*, i32** %6, align 8
  %40 = getelementptr inbounds [2 x i8], [2 x i8]* %7, i64 0, i64 0
  %41 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 4
  %43 = load i32, i32* %42, align 8
  %44 = call i32 (i32*, i8*, ...) @fprintf(i32* %39, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0), i8* %40, i32 %43)
  %45 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 5
  %47 = load i32*, i32** %46, align 8
  %48 = icmp ne i32* %47, null
  br i1 %48, label %49, label %77

49:                                               ; preds = %20
  store i32 0, i32* %8, align 4
  br label %50

50:                                               ; preds = %73, %49
  %51 = load i32, i32* %8, align 4
  %52 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 4
  %54 = load i32, i32* %53, align 8
  %55 = icmp slt i32 %51, %54
  br i1 %55, label %56, label %76

56:                                               ; preds = %50
  %57 = load i32*, i32** %6, align 8
  %58 = getelementptr inbounds [2 x i8], [2 x i8]* %7, i64 0, i64 0
  %59 = load i32, i32* %8, align 4
  %60 = call i32 (i32*, i8*, ...) @fprintf(i32* %57, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.5, i64 0, i64 0), i8* %58, i32 %59)
  %61 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %61, i32 0, i32 5
  %63 = load i32*, i32** %62, align 8
  %64 = load i32, i32* %8, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i32, i32* %63, i64 %65
  %67 = load i64, i64* %5, align 8
  %68 = load i32*, i32** %6, align 8
  %69 = call i32 @j2k_dump_image_comp_header(i32* %66, i64 %67, i32* %68)
  %70 = load i32*, i32** %6, align 8
  %71 = getelementptr inbounds [2 x i8], [2 x i8]* %7, i64 0, i64 0
  %72 = call i32 (i32*, i8*, ...) @fprintf(i32* %70, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0), i8* %71)
  br label %73

73:                                               ; preds = %56
  %74 = load i32, i32* %8, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %8, align 4
  br label %50

76:                                               ; preds = %50
  br label %77

77:                                               ; preds = %76, %20
  %78 = load i32*, i32** %6, align 8
  %79 = call i32 (i32*, i8*, ...) @fprintf(i32* %78, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i64 0, i64 0))
  ret void
}

declare dso_local i32 @fprintf(i32*, i8*, ...) #1

declare dso_local i32 @j2k_dump_image_comp_header(i32*, i64, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
