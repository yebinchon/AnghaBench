; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/source/pdf/extr_pdf-lex.c_lex_number.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/source/pdf/extr_pdf-lex.c_lex_number.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i8*, i32, i32, i32 }

@PDF_TOK_ERROR = common dso_local global i32 0, align 4
@PDF_TOK_REAL = common dso_local global i32 0, align 4
@PDF_TOK_INT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, %struct.TYPE_3__*, i32)* @lex_number to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lex_number(i32* %0, i32* %1, %struct.TYPE_3__* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_3__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i32* %1, i32** %7, align 8
  store %struct.TYPE_3__* %2, %struct.TYPE_3__** %8, align 8
  store i32 %3, i32* %9, align 4
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = load i8*, i8** %16, align 8
  store i8* %17, i8** %10, align 8
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = load i8*, i8** %19, align 8
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 8
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i8, i8* %20, i64 %24
  %26 = getelementptr inbounds i8, i8* %25, i64 -1
  store i8* %26, i8** %11, align 8
  %27 = load i32, i32* %9, align 4
  %28 = icmp eq i32 %27, 46
  br i1 %28, label %29, label %31

29:                                               ; preds = %4
  %30 = load i8*, i8** %10, align 8
  br label %32

31:                                               ; preds = %4
  br label %32

32:                                               ; preds = %31, %29
  %33 = phi i8* [ %30, %29 ], [ null, %31 ]
  store i8* %33, i8** %12, align 8
  %34 = load i32, i32* %9, align 4
  %35 = icmp eq i32 %34, 45
  %36 = zext i1 %35 to i32
  store i32 %36, i32* %13, align 4
  store i32 0, i32* %14, align 4
  %37 = load i32, i32* %9, align 4
  %38 = trunc i32 %37 to i8
  %39 = load i8*, i8** %10, align 8
  %40 = getelementptr inbounds i8, i8* %39, i32 1
  store i8* %40, i8** %10, align 8
  store i8 %38, i8* %39, align 1
  %41 = load i32*, i32** %6, align 8
  %42 = load i32*, i32** %7, align 8
  %43 = call i32 @lex_byte(i32* %41, i32* %42)
  store i32 %43, i32* %9, align 4
  %44 = load i32, i32* %13, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %55

46:                                               ; preds = %32
  br label %47

47:                                               ; preds = %50, %46
  %48 = load i32, i32* %9, align 4
  %49 = icmp eq i32 %48, 45
  br i1 %49, label %50, label %54

50:                                               ; preds = %47
  %51 = load i32*, i32** %6, align 8
  %52 = load i32*, i32** %7, align 8
  %53 = call i32 @lex_byte(i32* %51, i32* %52)
  store i32 %53, i32* %9, align 4
  br label %47

54:                                               ; preds = %47
  br label %55

55:                                               ; preds = %54, %32
  br label %56

56:                                               ; preds = %87, %55
  %57 = load i8*, i8** %10, align 8
  %58 = load i8*, i8** %11, align 8
  %59 = icmp ult i8* %57, %58
  br i1 %59, label %60, label %91

60:                                               ; preds = %56
  %61 = load i32, i32* %9, align 4
  switch i32 %61, label %82 [
    i32 129, label %62
    i32 130, label %62
    i32 131, label %66
    i32 46, label %67
    i32 128, label %77
  ]

62:                                               ; preds = %60, %60
  %63 = load i32*, i32** %6, align 8
  %64 = load i32*, i32** %7, align 8
  %65 = call i32 @fz_unread_byte(i32* %63, i32* %64)
  br label %92

66:                                               ; preds = %60
  br label %92

67:                                               ; preds = %60
  %68 = load i8*, i8** %12, align 8
  %69 = icmp ne i8* %68, null
  br i1 %69, label %70, label %71

70:                                               ; preds = %67
  store i32 1, i32* %14, align 4
  br label %71

71:                                               ; preds = %70, %67
  %72 = load i8*, i8** %10, align 8
  store i8* %72, i8** %12, align 8
  %73 = load i32, i32* %9, align 4
  %74 = trunc i32 %73 to i8
  %75 = load i8*, i8** %10, align 8
  %76 = getelementptr inbounds i8, i8* %75, i32 1
  store i8* %76, i8** %10, align 8
  store i8 %74, i8* %75, align 1
  br label %87

77:                                               ; preds = %60
  %78 = load i32, i32* %9, align 4
  %79 = trunc i32 %78 to i8
  %80 = load i8*, i8** %10, align 8
  %81 = getelementptr inbounds i8, i8* %80, i32 1
  store i8* %81, i8** %10, align 8
  store i8 %79, i8* %80, align 1
  br label %87

82:                                               ; preds = %60
  store i32 1, i32* %14, align 4
  %83 = load i32, i32* %9, align 4
  %84 = trunc i32 %83 to i8
  %85 = load i8*, i8** %10, align 8
  %86 = getelementptr inbounds i8, i8* %85, i32 1
  store i8* %86, i8** %10, align 8
  store i8 %84, i8* %85, align 1
  br label %87

87:                                               ; preds = %82, %77, %71
  %88 = load i32*, i32** %6, align 8
  %89 = load i32*, i32** %7, align 8
  %90 = call i32 @lex_byte(i32* %88, i32* %89)
  store i32 %90, i32* %9, align 4
  br label %56

91:                                               ; preds = %56
  br label %92

92:                                               ; preds = %91, %66, %62
  %93 = load i8*, i8** %10, align 8
  store i8 0, i8* %93, align 1
  %94 = load i32, i32* %14, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %98

96:                                               ; preds = %92
  %97 = load i32, i32* @PDF_TOK_ERROR, align 4
  store i32 %97, i32* %5, align 4
  br label %137

98:                                               ; preds = %92
  %99 = load i8*, i8** %12, align 8
  %100 = icmp ne i8* %99, null
  br i1 %100, label %101, label %129

101:                                              ; preds = %98
  %102 = load i32, i32* %13, align 4
  %103 = icmp sgt i32 %102, 1
  br i1 %103, label %113, label %104

104:                                              ; preds = %101
  %105 = load i8*, i8** %12, align 8
  %106 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %107 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %106, i32 0, i32 0
  %108 = load i8*, i8** %107, align 8
  %109 = ptrtoint i8* %105 to i64
  %110 = ptrtoint i8* %108 to i64
  %111 = sub i64 %109, %110
  %112 = icmp sge i64 %111, 10
  br i1 %112, label %113, label %120

113:                                              ; preds = %104, %101
  %114 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %115 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %114, i32 0, i32 0
  %116 = load i8*, i8** %115, align 8
  %117 = call i32 @acrobat_compatible_atof(i8* %116)
  %118 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %119 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %118, i32 0, i32 3
  store i32 %117, i32* %119, align 8
  br label %127

120:                                              ; preds = %104
  %121 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %122 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %121, i32 0, i32 0
  %123 = load i8*, i8** %122, align 8
  %124 = call i32 @fz_atof(i8* %123)
  %125 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %126 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %125, i32 0, i32 3
  store i32 %124, i32* %126, align 8
  br label %127

127:                                              ; preds = %120, %113
  %128 = load i32, i32* @PDF_TOK_REAL, align 4
  store i32 %128, i32* %5, align 4
  br label %137

129:                                              ; preds = %98
  %130 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %131 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %130, i32 0, i32 0
  %132 = load i8*, i8** %131, align 8
  %133 = call i32 @fast_atoi(i8* %132)
  %134 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %135 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %134, i32 0, i32 2
  store i32 %133, i32* %135, align 4
  %136 = load i32, i32* @PDF_TOK_INT, align 4
  store i32 %136, i32* %5, align 4
  br label %137

137:                                              ; preds = %129, %127, %96
  %138 = load i32, i32* %5, align 4
  ret i32 %138
}

declare dso_local i32 @lex_byte(i32*, i32*) #1

declare dso_local i32 @fz_unread_byte(i32*, i32*) #1

declare dso_local i32 @acrobat_compatible_atof(i8*) #1

declare dso_local i32 @fz_atof(i8*) #1

declare dso_local i32 @fast_atoi(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
