; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/source/fitz/extr_buffer.c_fz_append_pdf_string.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/source/fitz/extr_buffer.c_fz_append_pdf_string.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i64, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fz_append_pdf_string(i32* %0, %struct.TYPE_4__* %1, i8* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_4__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8, align 1
  store i32* %0, i32** %4, align 8
  store %struct.TYPE_4__* %1, %struct.TYPE_4__** %5, align 8
  store i8* %2, i8** %6, align 8
  store i64 2, i64* %7, align 8
  %11 = load i8*, i8** %6, align 8
  store i8* %11, i8** %8, align 8
  br label %12

12:                                               ; preds = %24, %3
  %13 = load i8*, i8** %8, align 8
  %14 = getelementptr inbounds i8, i8* %13, i32 1
  store i8* %14, i8** %8, align 8
  %15 = load i8, i8* %13, align 1
  store i8 %15, i8* %10, align 1
  %16 = sext i8 %15 to i32
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %27

18:                                               ; preds = %12
  %19 = load i8, i8* %10, align 1
  %20 = sext i8 %19 to i32
  switch i32 %20, label %24 [
    i32 10, label %21
    i32 13, label %21
    i32 9, label %21
    i32 8, label %21
    i32 12, label %21
    i32 40, label %21
    i32 41, label %21
    i32 92, label %21
  ]

21:                                               ; preds = %18, %18, %18, %18, %18, %18, %18, %18
  %22 = load i64, i64* %7, align 8
  %23 = add i64 %22, 1
  store i64 %23, i64* %7, align 8
  br label %24

24:                                               ; preds = %18, %21
  %25 = load i64, i64* %7, align 8
  %26 = add i64 %25, 1
  store i64 %26, i64* %7, align 8
  br label %12

27:                                               ; preds = %12
  br label %28

28:                                               ; preds = %38, %27
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = sub i64 %31, %34
  %36 = load i64, i64* %7, align 8
  %37 = icmp ult i64 %35, %36
  br i1 %37, label %38, label %42

38:                                               ; preds = %28
  %39 = load i32*, i32** %4, align 8
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %41 = call i32 @fz_grow_buffer(i32* %39, %struct.TYPE_4__* %40)
  br label %28

42:                                               ; preds = %28
  %43 = load i8*, i8** %6, align 8
  store i8* %43, i8** %8, align 8
  %44 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 2
  %46 = load i64, i64* %45, align 8
  %47 = inttoptr i64 %46 to i8*
  %48 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = getelementptr inbounds i8, i8* %47, i64 %50
  store i8* %51, i8** %9, align 8
  %52 = load i8*, i8** %9, align 8
  %53 = getelementptr inbounds i8, i8* %52, i32 1
  store i8* %53, i8** %9, align 8
  store i8 40, i8* %52, align 1
  br label %54

54:                                               ; preds = %107, %42
  %55 = load i8*, i8** %8, align 8
  %56 = getelementptr inbounds i8, i8* %55, i32 1
  store i8* %56, i8** %8, align 8
  %57 = load i8, i8* %55, align 1
  store i8 %57, i8* %10, align 1
  %58 = sext i8 %57 to i32
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %108

60:                                               ; preds = %54
  %61 = load i8, i8* %10, align 1
  %62 = sext i8 %61 to i32
  switch i32 %62, label %103 [
    i32 10, label %63
    i32 13, label %68
    i32 9, label %73
    i32 8, label %78
    i32 12, label %83
    i32 40, label %88
    i32 41, label %93
    i32 92, label %98
  ]

63:                                               ; preds = %60
  %64 = load i8*, i8** %9, align 8
  %65 = getelementptr inbounds i8, i8* %64, i32 1
  store i8* %65, i8** %9, align 8
  store i8 92, i8* %64, align 1
  %66 = load i8*, i8** %9, align 8
  %67 = getelementptr inbounds i8, i8* %66, i32 1
  store i8* %67, i8** %9, align 8
  store i8 110, i8* %66, align 1
  br label %107

68:                                               ; preds = %60
  %69 = load i8*, i8** %9, align 8
  %70 = getelementptr inbounds i8, i8* %69, i32 1
  store i8* %70, i8** %9, align 8
  store i8 92, i8* %69, align 1
  %71 = load i8*, i8** %9, align 8
  %72 = getelementptr inbounds i8, i8* %71, i32 1
  store i8* %72, i8** %9, align 8
  store i8 114, i8* %71, align 1
  br label %107

73:                                               ; preds = %60
  %74 = load i8*, i8** %9, align 8
  %75 = getelementptr inbounds i8, i8* %74, i32 1
  store i8* %75, i8** %9, align 8
  store i8 92, i8* %74, align 1
  %76 = load i8*, i8** %9, align 8
  %77 = getelementptr inbounds i8, i8* %76, i32 1
  store i8* %77, i8** %9, align 8
  store i8 116, i8* %76, align 1
  br label %107

78:                                               ; preds = %60
  %79 = load i8*, i8** %9, align 8
  %80 = getelementptr inbounds i8, i8* %79, i32 1
  store i8* %80, i8** %9, align 8
  store i8 92, i8* %79, align 1
  %81 = load i8*, i8** %9, align 8
  %82 = getelementptr inbounds i8, i8* %81, i32 1
  store i8* %82, i8** %9, align 8
  store i8 98, i8* %81, align 1
  br label %107

83:                                               ; preds = %60
  %84 = load i8*, i8** %9, align 8
  %85 = getelementptr inbounds i8, i8* %84, i32 1
  store i8* %85, i8** %9, align 8
  store i8 92, i8* %84, align 1
  %86 = load i8*, i8** %9, align 8
  %87 = getelementptr inbounds i8, i8* %86, i32 1
  store i8* %87, i8** %9, align 8
  store i8 102, i8* %86, align 1
  br label %107

88:                                               ; preds = %60
  %89 = load i8*, i8** %9, align 8
  %90 = getelementptr inbounds i8, i8* %89, i32 1
  store i8* %90, i8** %9, align 8
  store i8 92, i8* %89, align 1
  %91 = load i8*, i8** %9, align 8
  %92 = getelementptr inbounds i8, i8* %91, i32 1
  store i8* %92, i8** %9, align 8
  store i8 40, i8* %91, align 1
  br label %107

93:                                               ; preds = %60
  %94 = load i8*, i8** %9, align 8
  %95 = getelementptr inbounds i8, i8* %94, i32 1
  store i8* %95, i8** %9, align 8
  store i8 92, i8* %94, align 1
  %96 = load i8*, i8** %9, align 8
  %97 = getelementptr inbounds i8, i8* %96, i32 1
  store i8* %97, i8** %9, align 8
  store i8 41, i8* %96, align 1
  br label %107

98:                                               ; preds = %60
  %99 = load i8*, i8** %9, align 8
  %100 = getelementptr inbounds i8, i8* %99, i32 1
  store i8* %100, i8** %9, align 8
  store i8 92, i8* %99, align 1
  %101 = load i8*, i8** %9, align 8
  %102 = getelementptr inbounds i8, i8* %101, i32 1
  store i8* %102, i8** %9, align 8
  store i8 92, i8* %101, align 1
  br label %107

103:                                              ; preds = %60
  %104 = load i8, i8* %10, align 1
  %105 = load i8*, i8** %9, align 8
  %106 = getelementptr inbounds i8, i8* %105, i32 1
  store i8* %106, i8** %9, align 8
  store i8 %104, i8* %105, align 1
  br label %107

107:                                              ; preds = %103, %98, %93, %88, %83, %78, %73, %68, %63
  br label %54

108:                                              ; preds = %54
  %109 = load i8*, i8** %9, align 8
  store i8 41, i8* %109, align 1
  %110 = load i64, i64* %7, align 8
  %111 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %112 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %111, i32 0, i32 1
  %113 = load i64, i64* %112, align 8
  %114 = add i64 %113, %110
  store i64 %114, i64* %112, align 8
  ret void
}

declare dso_local i32 @fz_grow_buffer(i32*, %struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
