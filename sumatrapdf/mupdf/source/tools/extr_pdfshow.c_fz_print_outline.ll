; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/source/tools/extr_pdfshow.c_fz_print_outline.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/source/tools/extr_pdfshow.c_fz_print_outline.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { %struct.TYPE_3__*, %struct.TYPE_3__*, i32, i32, i64 }

@.str = private unnamed_addr constant [7 x i8] c"%q\09%s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*, %struct.TYPE_3__*, i32)* @fz_print_outline to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fz_print_outline(i32* %0, i32* %1, %struct.TYPE_3__* %2, i32 %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_3__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store %struct.TYPE_3__* %2, %struct.TYPE_3__** %7, align 8
  store i32 %3, i32* %8, align 4
  br label %10

10:                                               ; preds = %67, %4
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %12 = icmp ne %struct.TYPE_3__* %11, null
  br i1 %12, label %13, label %71

13:                                               ; preds = %10
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 1
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** %15, align 8
  %17 = icmp ne %struct.TYPE_3__* %16, null
  br i1 %17, label %18, label %29

18:                                               ; preds = %13
  %19 = load i32*, i32** %5, align 8
  %20 = load i32*, i32** %6, align 8
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 4
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  %25 = zext i1 %24 to i64
  %26 = select i1 %24, i32 45, i32 43
  %27 = trunc i32 %26 to i8
  %28 = call i32 @fz_write_byte(i32* %19, i32* %20, i8 signext %27)
  br label %33

29:                                               ; preds = %13
  %30 = load i32*, i32** %5, align 8
  %31 = load i32*, i32** %6, align 8
  %32 = call i32 @fz_write_byte(i32* %30, i32* %31, i8 signext 124)
  br label %33

33:                                               ; preds = %29, %18
  store i32 0, i32* %9, align 4
  br label %34

34:                                               ; preds = %42, %33
  %35 = load i32, i32* %9, align 4
  %36 = load i32, i32* %8, align 4
  %37 = icmp slt i32 %35, %36
  br i1 %37, label %38, label %45

38:                                               ; preds = %34
  %39 = load i32*, i32** %5, align 8
  %40 = load i32*, i32** %6, align 8
  %41 = call i32 @fz_write_byte(i32* %39, i32* %40, i8 signext 9)
  br label %42

42:                                               ; preds = %38
  %43 = load i32, i32* %9, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %9, align 4
  br label %34

45:                                               ; preds = %34
  %46 = load i32*, i32** %5, align 8
  %47 = load i32*, i32** %6, align 8
  %48 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 3
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 8
  %54 = call i32 @fz_write_printf(i32* %46, i32* %47, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 %50, i32 %53)
  %55 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i32 0, i32 1
  %57 = load %struct.TYPE_3__*, %struct.TYPE_3__** %56, align 8
  %58 = icmp ne %struct.TYPE_3__* %57, null
  br i1 %58, label %59, label %67

59:                                               ; preds = %45
  %60 = load i32*, i32** %5, align 8
  %61 = load i32*, i32** %6, align 8
  %62 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %62, i32 0, i32 1
  %64 = load %struct.TYPE_3__*, %struct.TYPE_3__** %63, align 8
  %65 = load i32, i32* %8, align 4
  %66 = add nsw i32 %65, 1
  call void @fz_print_outline(i32* %60, i32* %61, %struct.TYPE_3__* %64, i32 %66)
  br label %67

67:                                               ; preds = %59, %45
  %68 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %69 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %68, i32 0, i32 0
  %70 = load %struct.TYPE_3__*, %struct.TYPE_3__** %69, align 8
  store %struct.TYPE_3__* %70, %struct.TYPE_3__** %7, align 8
  br label %10

71:                                               ; preds = %10
  ret void
}

declare dso_local i32 @fz_write_byte(i32*, i32*, i8 signext) #1

declare dso_local i32 @fz_write_printf(i32*, i32*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
