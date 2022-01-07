; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/source/pdf/extr_pdf-op-run.c_pdf_show_text.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/source/pdf/extr_pdf-op-run.c_pdf_show_text.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, %struct.TYPE_10__* }
%struct.TYPE_10__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { float, i32* }

@.str = private unnamed_addr constant [45 x i8] c"cannot draw text since font and size not set\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.TYPE_9__*, i32*)* @pdf_show_text to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pdf_show_text(i32* %0, %struct.TYPE_9__* %1, i32* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_9__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_10__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  store i32* %0, i32** %4, align 8
  store %struct.TYPE_9__* %1, %struct.TYPE_9__** %5, align 8
  store i32* %2, i32** %6, align 8
  %12 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %13 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %12, i32 0, i32 1
  %14 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %15 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %16 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %14, i64 %18
  store %struct.TYPE_10__* %19, %struct.TYPE_10__** %7, align 8
  %20 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %21 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %21, i32 0, i32 1
  %23 = load i32*, i32** %22, align 8
  store i32* %23, i32** %8, align 8
  %24 = load i32*, i32** %8, align 8
  %25 = icmp ne i32* %24, null
  br i1 %25, label %29, label %26

26:                                               ; preds = %3
  %27 = load i32*, i32** %4, align 8
  %28 = call i32 @fz_warn(i32* %27, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0))
  br label %98

29:                                               ; preds = %3
  %30 = load i32*, i32** %4, align 8
  %31 = load i32*, i32** %6, align 8
  %32 = call i64 @pdf_is_array(i32* %30, i32* %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %81

34:                                               ; preds = %29
  %35 = load i32*, i32** %4, align 8
  %36 = load i32*, i32** %6, align 8
  %37 = call i32 @pdf_array_len(i32* %35, i32* %36)
  store i32 %37, i32* %10, align 4
  store i32 0, i32* %9, align 4
  br label %38

38:                                               ; preds = %77, %34
  %39 = load i32, i32* %9, align 4
  %40 = load i32, i32* %10, align 4
  %41 = icmp slt i32 %39, %40
  br i1 %41, label %42, label %80

42:                                               ; preds = %38
  %43 = load i32*, i32** %4, align 8
  %44 = load i32*, i32** %6, align 8
  %45 = load i32, i32* %9, align 4
  %46 = call i32* @pdf_array_get(i32* %43, i32* %44, i32 %45)
  store i32* %46, i32** %11, align 8
  %47 = load i32*, i32** %4, align 8
  %48 = load i32*, i32** %11, align 8
  %49 = call i64 @pdf_is_string(i32* %47, i32* %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %62

51:                                               ; preds = %42
  %52 = load i32*, i32** %4, align 8
  %53 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %54 = load i32*, i32** %4, align 8
  %55 = load i32*, i32** %11, align 8
  %56 = call i64 @pdf_to_str_buf(i32* %54, i32* %55)
  %57 = inttoptr i64 %56 to i8*
  %58 = load i32*, i32** %4, align 8
  %59 = load i32*, i32** %11, align 8
  %60 = call i32 @pdf_to_str_len(i32* %58, i32* %59)
  %61 = call i32 @show_string(i32* %52, %struct.TYPE_9__* %53, i8* %57, i32 %60)
  br label %76

62:                                               ; preds = %42
  %63 = load i32*, i32** %4, align 8
  %64 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %65 = load i32*, i32** %4, align 8
  %66 = load i32*, i32** %11, align 8
  %67 = call float @pdf_to_real(i32* %65, i32* %66)
  %68 = fneg float %67
  %69 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %70 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %70, i32 0, i32 0
  %72 = load float, float* %71, align 8
  %73 = fmul float %68, %72
  %74 = fmul float %73, 0x3F50624DE0000000
  %75 = call i32 @pdf_show_space(i32* %63, %struct.TYPE_9__* %64, float %74)
  br label %76

76:                                               ; preds = %62, %51
  br label %77

77:                                               ; preds = %76
  %78 = load i32, i32* %9, align 4
  %79 = add nsw i32 %78, 1
  store i32 %79, i32* %9, align 4
  br label %38

80:                                               ; preds = %38
  br label %98

81:                                               ; preds = %29
  %82 = load i32*, i32** %4, align 8
  %83 = load i32*, i32** %6, align 8
  %84 = call i64 @pdf_is_string(i32* %82, i32* %83)
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %97

86:                                               ; preds = %81
  %87 = load i32*, i32** %4, align 8
  %88 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %89 = load i32*, i32** %4, align 8
  %90 = load i32*, i32** %6, align 8
  %91 = call i64 @pdf_to_str_buf(i32* %89, i32* %90)
  %92 = inttoptr i64 %91 to i8*
  %93 = load i32*, i32** %4, align 8
  %94 = load i32*, i32** %6, align 8
  %95 = call i32 @pdf_to_str_len(i32* %93, i32* %94)
  %96 = call i32 @pdf_show_string(i32* %87, %struct.TYPE_9__* %88, i8* %92, i32 %95)
  br label %97

97:                                               ; preds = %86, %81
  br label %98

98:                                               ; preds = %26, %97, %80
  ret void
}

declare dso_local i32 @fz_warn(i32*, i8*) #1

declare dso_local i64 @pdf_is_array(i32*, i32*) #1

declare dso_local i32 @pdf_array_len(i32*, i32*) #1

declare dso_local i32* @pdf_array_get(i32*, i32*, i32) #1

declare dso_local i64 @pdf_is_string(i32*, i32*) #1

declare dso_local i32 @show_string(i32*, %struct.TYPE_9__*, i8*, i32) #1

declare dso_local i64 @pdf_to_str_buf(i32*, i32*) #1

declare dso_local i32 @pdf_to_str_len(i32*, i32*) #1

declare dso_local i32 @pdf_show_space(i32*, %struct.TYPE_9__*, float) #1

declare dso_local float @pdf_to_real(i32*, i32*) #1

declare dso_local i32 @pdf_show_string(i32*, %struct.TYPE_9__*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
