; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/openjpeg/src/lib/openjp2/extr_j2k.c_j2k_dump_image_comp_header.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/openjpeg/src/lib/openjp2/extr_j2k.c_j2k_dump_image_comp_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32, i32 }

@stdout = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [42 x i8] c"[DEV] Dump an image_comp_header struct {\0A\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"%s dx=%d, dy=%d\0A\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"%s prec=%d\0A\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"%s sgnd=%d\0A\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"}\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @j2k_dump_image_comp_header(%struct.TYPE_3__* %0, i64 %1, i32* %2) #0 {
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32*, align 8
  %7 = alloca [3 x i8], align 1
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %4, align 8
  store i64 %1, i64* %5, align 8
  store i32* %2, i32** %6, align 8
  %8 = load i64, i64* %5, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %14

10:                                               ; preds = %3
  %11 = load i32*, i32** @stdout, align 8
  %12 = call i32 (i32*, i8*, ...) @fprintf(i32* %11, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0))
  %13 = getelementptr inbounds [3 x i8], [3 x i8]* %7, i64 0, i64 0
  store i8 0, i8* %13, align 1
  br label %18

14:                                               ; preds = %3
  %15 = getelementptr inbounds [3 x i8], [3 x i8]* %7, i64 0, i64 0
  store i8 9, i8* %15, align 1
  %16 = getelementptr inbounds [3 x i8], [3 x i8]* %7, i64 0, i64 1
  store i8 9, i8* %16, align 1
  %17 = getelementptr inbounds [3 x i8], [3 x i8]* %7, i64 0, i64 2
  store i8 0, i8* %17, align 1
  br label %18

18:                                               ; preds = %14, %10
  %19 = load i32*, i32** %6, align 8
  %20 = getelementptr inbounds [3 x i8], [3 x i8]* %7, i64 0, i64 0
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = call i32 (i32*, i8*, ...) @fprintf(i32* %19, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i8* %20, i32 %23, i32 %26)
  %28 = load i32*, i32** %6, align 8
  %29 = getelementptr inbounds [3 x i8], [3 x i8]* %7, i64 0, i64 0
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 4
  %33 = call i32 (i32*, i8*, ...) @fprintf(i32* %28, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i8* %29, i32 %32)
  %34 = load i32*, i32** %6, align 8
  %35 = getelementptr inbounds [3 x i8], [3 x i8]* %7, i64 0, i64 0
  %36 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 3
  %38 = load i32, i32* %37, align 4
  %39 = call i32 (i32*, i8*, ...) @fprintf(i32* %34, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0), i8* %35, i32 %38)
  %40 = load i64, i64* %5, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %18
  %43 = load i32*, i32** %6, align 8
  %44 = call i32 (i32*, i8*, ...) @fprintf(i32* %43, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0))
  br label %45

45:                                               ; preds = %42, %18
  ret void
}

declare dso_local i32 @fprintf(i32*, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
