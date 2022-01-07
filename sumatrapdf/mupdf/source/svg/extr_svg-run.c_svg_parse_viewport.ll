; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/source/svg/extr_svg-run.c_svg_parse_viewport.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/source/svg/extr_svg-run.c_svg_parse_viewport.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i8*, i32, i8* }

@.str = private unnamed_addr constant [6 x i8] c"width\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"height\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @svg_parse_viewport(i32* %0, i32* %1, i32* %2, %struct.TYPE_3__* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_3__*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  store %struct.TYPE_3__* %3, %struct.TYPE_3__** %8, align 8
  %11 = load i32*, i32** %7, align 8
  %12 = call i8* @fz_xml_att(i32* %11, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  store i8* %12, i8** %9, align 8
  %13 = load i32*, i32** %7, align 8
  %14 = call i8* @fz_xml_att(i32* %13, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  store i8* %14, i8** %10, align 8
  %15 = load i8*, i8** %9, align 8
  %16 = icmp ne i8* %15, null
  br i1 %16, label %17, label %28

17:                                               ; preds = %4
  %18 = load i8*, i8** %9, align 8
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 3
  %21 = load i32, i32* %20, align 8
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = call i8* @svg_parse_length(i8* %18, i32 %21, i32 %24)
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 4
  store i8* %25, i8** %27, align 8
  br label %28

28:                                               ; preds = %17, %4
  %29 = load i8*, i8** %10, align 8
  %30 = icmp ne i8* %29, null
  br i1 %30, label %31, label %42

31:                                               ; preds = %28
  %32 = load i8*, i8** %10, align 8
  %33 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = call i8* @svg_parse_length(i8* %32, i32 %35, i32 %38)
  %40 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 2
  store i8* %39, i8** %41, align 8
  br label %42

42:                                               ; preds = %31, %28
  ret void
}

declare dso_local i8* @fz_xml_att(i32*, i8*) #1

declare dso_local i8* @svg_parse_length(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
