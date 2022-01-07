; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/source/pdf/extr_pdf-xref.c_pdf_read_start_xref.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/source/pdf/extr_pdf-xref.c_pdf_read_start_xref.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i64 }

@SEEK_END = common dso_local global i32 0, align 4
@SEEK_SET = common dso_local global i32 0, align 4
@FZ_ERROR_GENERIC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"cannot find startxref\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"startxref\00", align 1
@INT64_MAX = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [20 x i8] c"startxref too large\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.TYPE_3__*)* @pdf_read_start_xref to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pdf_read_start_xref(i32* %0, %struct.TYPE_3__* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca [1024 x i8], align 16
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store i32* %0, i32** %3, align 8
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %4, align 8
  %9 = load i32*, i32** %3, align 8
  %10 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* @SEEK_END, align 4
  %14 = call i32 @fz_seek(i32* %9, i32 %12, i64 0, i32 %13)
  %15 = load i32*, i32** %3, align 8
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = call i64 @fz_tell(i32* %15, i32 %18)
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 2
  store i64 %19, i64* %21, align 8
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 2
  %24 = load i64, i64* %23, align 8
  %25 = sub nsw i64 %24, 1024
  %26 = call i64 @fz_maxi64(i32 0, i64 %25)
  store i64 %26, i64* %8, align 8
  %27 = load i32*, i32** %3, align 8
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = load i64, i64* %8, align 8
  %32 = load i32, i32* @SEEK_SET, align 4
  %33 = call i32 @fz_seek(i32* %27, i32 %30, i64 %31, i32 %32)
  %34 = load i32*, i32** %3, align 8
  %35 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = getelementptr inbounds [1024 x i8], [1024 x i8]* %5, i64 0, i64 0
  %39 = call i64 @fz_read(i32* %34, i32 %37, i8* %38, i32 1024)
  store i64 %39, i64* %7, align 8
  %40 = load i64, i64* %7, align 8
  %41 = icmp ult i64 %40, 9
  br i1 %41, label %42, label %46

42:                                               ; preds = %2
  %43 = load i32*, i32** %3, align 8
  %44 = load i32, i32* @FZ_ERROR_GENERIC, align 4
  %45 = call i32 @fz_throw(i32* %43, i32 %44, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  br label %46

46:                                               ; preds = %42, %2
  %47 = load i64, i64* %7, align 8
  %48 = sub i64 %47, 9
  store i64 %48, i64* %6, align 8
  br label %49

49:                                               ; preds = %121, %46
  %50 = getelementptr inbounds [1024 x i8], [1024 x i8]* %5, i64 0, i64 0
  %51 = load i64, i64* %6, align 8
  %52 = getelementptr inbounds i8, i8* %50, i64 %51
  %53 = call i64 @memcmp(i8* %52, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i32 9)
  %54 = icmp eq i64 %53, 0
  br i1 %54, label %55, label %120

55:                                               ; preds = %49
  %56 = load i64, i64* %6, align 8
  %57 = add i64 %56, 9
  store i64 %57, i64* %6, align 8
  br label %58

58:                                               ; preds = %70, %55
  %59 = load i64, i64* %6, align 8
  %60 = load i64, i64* %7, align 8
  %61 = icmp ult i64 %59, %60
  br i1 %61, label %62, label %68

62:                                               ; preds = %58
  %63 = load i64, i64* %6, align 8
  %64 = getelementptr inbounds [1024 x i8], [1024 x i8]* %5, i64 0, i64 %63
  %65 = load i8, i8* %64, align 1
  %66 = call i64 @iswhite(i8 zeroext %65)
  %67 = icmp ne i64 %66, 0
  br label %68

68:                                               ; preds = %62, %58
  %69 = phi i1 [ false, %58 ], [ %67, %62 ]
  br i1 %69, label %70, label %73

70:                                               ; preds = %68
  %71 = load i64, i64* %6, align 8
  %72 = add i64 %71, 1
  store i64 %72, i64* %6, align 8
  br label %58

73:                                               ; preds = %68
  %74 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %75 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %74, i32 0, i32 0
  store i32 0, i32* %75, align 8
  br label %76

76:                                               ; preds = %99, %73
  %77 = load i64, i64* %6, align 8
  %78 = load i64, i64* %7, align 8
  %79 = icmp ult i64 %77, %78
  br i1 %79, label %80, label %86

80:                                               ; preds = %76
  %81 = load i64, i64* %6, align 8
  %82 = getelementptr inbounds [1024 x i8], [1024 x i8]* %5, i64 0, i64 %81
  %83 = load i8, i8* %82, align 1
  %84 = call i64 @isdigit(i8 zeroext %83)
  %85 = icmp ne i64 %84, 0
  br label %86

86:                                               ; preds = %80, %76
  %87 = phi i1 [ false, %76 ], [ %85, %80 ]
  br i1 %87, label %88, label %113

88:                                               ; preds = %86
  %89 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %90 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = load i32, i32* @INT64_MAX, align 4
  %93 = sdiv i32 %92, 10
  %94 = icmp sge i32 %91, %93
  br i1 %94, label %95, label %99

95:                                               ; preds = %88
  %96 = load i32*, i32** %3, align 8
  %97 = load i32, i32* @FZ_ERROR_GENERIC, align 4
  %98 = call i32 @fz_throw(i32* %96, i32 %97, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0))
  br label %99

99:                                               ; preds = %95, %88
  %100 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %101 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  %103 = mul nsw i32 %102, 10
  %104 = load i64, i64* %6, align 8
  %105 = add i64 %104, 1
  store i64 %105, i64* %6, align 8
  %106 = getelementptr inbounds [1024 x i8], [1024 x i8]* %5, i64 0, i64 %104
  %107 = load i8, i8* %106, align 1
  %108 = zext i8 %107 to i32
  %109 = sub nsw i32 %108, 48
  %110 = add nsw i32 %103, %109
  %111 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %112 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %111, i32 0, i32 0
  store i32 %110, i32* %112, align 8
  br label %76

113:                                              ; preds = %86
  %114 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %115 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 8
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %119

118:                                              ; preds = %113
  br label %129

119:                                              ; preds = %113
  br label %125

120:                                              ; preds = %49
  br label %121

121:                                              ; preds = %120
  %122 = load i64, i64* %6, align 8
  %123 = add i64 %122, -1
  store i64 %123, i64* %6, align 8
  %124 = icmp ugt i64 %122, 0
  br i1 %124, label %49, label %125

125:                                              ; preds = %121, %119
  %126 = load i32*, i32** %3, align 8
  %127 = load i32, i32* @FZ_ERROR_GENERIC, align 4
  %128 = call i32 @fz_throw(i32* %126, i32 %127, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  br label %129

129:                                              ; preds = %125, %118
  ret void
}

declare dso_local i32 @fz_seek(i32*, i32, i64, i32) #1

declare dso_local i64 @fz_tell(i32*, i32) #1

declare dso_local i64 @fz_maxi64(i32, i64) #1

declare dso_local i64 @fz_read(i32*, i32, i8*, i32) #1

declare dso_local i32 @fz_throw(i32*, i32, i8*) #1

declare dso_local i64 @memcmp(i8*, i8*, i32) #1

declare dso_local i64 @iswhite(i8 zeroext) #1

declare dso_local i64 @isdigit(i8 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
