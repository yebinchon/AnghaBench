; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/source/fitz/extr_filter-jbig2.c_next_jbig2d.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/source/fitz/extr_filter-jbig2.c_next_jbig2d.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i8*, i8*, i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i8*, i32, %struct.TYPE_7__*, i32, i32 }
%struct.TYPE_7__ = type { i8*, i32, i32 }

@FZ_ERROR_GENERIC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"cannot decode jbig2 image\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"cannot complete jbig2 image\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"no jbig2 image decoded\00", align 1
@EOF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.TYPE_5__*, i64)* @next_jbig2d to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @next_jbig2d(i32* %0, %struct.TYPE_5__* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_5__*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_6__*, align 8
  %9 = alloca [4096 x i8], align 16
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  store i32* %0, i32** %5, align 8
  store %struct.TYPE_5__* %1, %struct.TYPE_5__** %6, align 8
  store i64 %2, i64* %7, align 8
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 3
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** %18, align 8
  store %struct.TYPE_6__* %19, %struct.TYPE_6__** %8, align 8
  %20 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 0
  %22 = load i8*, i8** %21, align 8
  store i8* %22, i8** %10, align 8
  %23 = load i8*, i8** %10, align 8
  store i8* %23, i8** %11, align 8
  %24 = load i64, i64* %7, align 8
  %25 = icmp ugt i64 %24, 8
  br i1 %25, label %26, label %27

26:                                               ; preds = %3
  store i64 8, i64* %7, align 8
  br label %27

27:                                               ; preds = %26, %3
  %28 = load i8*, i8** %10, align 8
  %29 = load i64, i64* %7, align 8
  %30 = getelementptr inbounds i8, i8* %28, i64 %29
  store i8* %30, i8** %12, align 8
  %31 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 2
  %33 = load %struct.TYPE_7__*, %struct.TYPE_7__** %32, align 8
  %34 = icmp ne %struct.TYPE_7__* %33, null
  br i1 %34, label %85, label %35

35:                                               ; preds = %27
  br label %36

36:                                               ; preds = %35, %58
  %37 = load i32*, i32** %5, align 8
  %38 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 4
  %40 = load i32, i32* %39, align 4
  %41 = getelementptr inbounds [4096 x i8], [4096 x i8]* %9, i64 0, i64 0
  %42 = call i64 @fz_read(i32* %37, i32 %40, i8* %41, i32 4096)
  store i64 %42, i64* %16, align 8
  %43 = load i64, i64* %16, align 8
  %44 = icmp eq i64 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %36
  br label %59

46:                                               ; preds = %36
  %47 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 3
  %49 = load i32, i32* %48, align 8
  %50 = getelementptr inbounds [4096 x i8], [4096 x i8]* %9, i64 0, i64 0
  %51 = load i64, i64* %16, align 8
  %52 = call i64 @jbig2_data_in(i32 %49, i8* %50, i64 %51)
  %53 = icmp slt i64 %52, 0
  br i1 %53, label %54, label %58

54:                                               ; preds = %46
  %55 = load i32*, i32** %5, align 8
  %56 = load i32, i32* @FZ_ERROR_GENERIC, align 4
  %57 = call i32 @fz_throw(i32* %55, i32 %56, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  br label %58

58:                                               ; preds = %54, %46
  br label %36

59:                                               ; preds = %45
  %60 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i32 0, i32 3
  %62 = load i32, i32* %61, align 8
  %63 = call i64 @jbig2_complete_page(i32 %62)
  %64 = icmp slt i64 %63, 0
  br i1 %64, label %65, label %69

65:                                               ; preds = %59
  %66 = load i32*, i32** %5, align 8
  %67 = load i32, i32* @FZ_ERROR_GENERIC, align 4
  %68 = call i32 @fz_throw(i32* %66, i32 %67, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  br label %69

69:                                               ; preds = %65, %59
  %70 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %71 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %70, i32 0, i32 3
  %72 = load i32, i32* %71, align 8
  %73 = call %struct.TYPE_7__* @jbig2_page_out(i32 %72)
  %74 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %75 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %74, i32 0, i32 2
  store %struct.TYPE_7__* %73, %struct.TYPE_7__** %75, align 8
  %76 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %77 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %76, i32 0, i32 2
  %78 = load %struct.TYPE_7__*, %struct.TYPE_7__** %77, align 8
  %79 = icmp ne %struct.TYPE_7__* %78, null
  br i1 %79, label %84, label %80

80:                                               ; preds = %69
  %81 = load i32*, i32** %5, align 8
  %82 = load i32, i32* @FZ_ERROR_GENERIC, align 4
  %83 = call i32 @fz_throw(i32* %81, i32 %82, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0))
  br label %84

84:                                               ; preds = %80, %69
  br label %85

85:                                               ; preds = %84, %27
  %86 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %87 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %86, i32 0, i32 2
  %88 = load %struct.TYPE_7__*, %struct.TYPE_7__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %88, i32 0, i32 0
  %90 = load i8*, i8** %89, align 8
  store i8* %90, i8** %13, align 8
  %91 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %92 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %91, i32 0, i32 2
  %93 = load %struct.TYPE_7__*, %struct.TYPE_7__** %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 8
  %96 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %97 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %96, i32 0, i32 2
  %98 = load %struct.TYPE_7__*, %struct.TYPE_7__** %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %98, i32 0, i32 2
  %100 = load i32, i32* %99, align 4
  %101 = mul nsw i32 %95, %100
  store i32 %101, i32* %15, align 4
  %102 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %103 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 8
  store i32 %104, i32* %14, align 4
  br label %105

105:                                              ; preds = %115, %85
  %106 = load i8*, i8** %11, align 8
  %107 = load i8*, i8** %12, align 8
  %108 = icmp ult i8* %106, %107
  br i1 %108, label %109, label %113

109:                                              ; preds = %105
  %110 = load i32, i32* %14, align 4
  %111 = load i32, i32* %15, align 4
  %112 = icmp slt i32 %110, %111
  br label %113

113:                                              ; preds = %109, %105
  %114 = phi i1 [ false, %105 ], [ %112, %109 ]
  br i1 %114, label %115, label %127

115:                                              ; preds = %113
  %116 = load i8*, i8** %13, align 8
  %117 = load i32, i32* %14, align 4
  %118 = add nsw i32 %117, 1
  store i32 %118, i32* %14, align 4
  %119 = sext i32 %117 to i64
  %120 = getelementptr inbounds i8, i8* %116, i64 %119
  %121 = load i8, i8* %120, align 1
  %122 = zext i8 %121 to i32
  %123 = xor i32 %122, 255
  %124 = trunc i32 %123 to i8
  %125 = load i8*, i8** %11, align 8
  %126 = getelementptr inbounds i8, i8* %125, i32 1
  store i8* %126, i8** %11, align 8
  store i8 %124, i8* %125, align 1
  br label %105

127:                                              ; preds = %113
  %128 = load i32, i32* %14, align 4
  %129 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %130 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %129, i32 0, i32 1
  store i32 %128, i32* %130, align 8
  %131 = load i8*, i8** %10, align 8
  %132 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %133 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %132, i32 0, i32 0
  store i8* %131, i8** %133, align 8
  %134 = load i8*, i8** %11, align 8
  %135 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %136 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %135, i32 0, i32 1
  store i8* %134, i8** %136, align 8
  %137 = load i8*, i8** %11, align 8
  %138 = load i8*, i8** %10, align 8
  %139 = icmp eq i8* %137, %138
  br i1 %139, label %140, label %142

140:                                              ; preds = %127
  %141 = load i32, i32* @EOF, align 4
  store i32 %141, i32* %4, align 4
  br label %160

142:                                              ; preds = %127
  %143 = load i8*, i8** %11, align 8
  %144 = load i8*, i8** %10, align 8
  %145 = ptrtoint i8* %143 to i64
  %146 = ptrtoint i8* %144 to i64
  %147 = sub i64 %145, %146
  %148 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %149 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %148, i32 0, i32 2
  %150 = load i32, i32* %149, align 8
  %151 = sext i32 %150 to i64
  %152 = add nsw i64 %151, %147
  %153 = trunc i64 %152 to i32
  store i32 %153, i32* %149, align 8
  %154 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %155 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %154, i32 0, i32 0
  %156 = load i8*, i8** %155, align 8
  %157 = getelementptr inbounds i8, i8* %156, i32 1
  store i8* %157, i8** %155, align 8
  %158 = load i8, i8* %156, align 1
  %159 = zext i8 %158 to i32
  store i32 %159, i32* %4, align 4
  br label %160

160:                                              ; preds = %142, %140
  %161 = load i32, i32* %4, align 4
  ret i32 %161
}

declare dso_local i64 @fz_read(i32*, i32, i8*, i32) #1

declare dso_local i64 @jbig2_data_in(i32, i8*, i64) #1

declare dso_local i32 @fz_throw(i32*, i32, i8*) #1

declare dso_local i64 @jbig2_complete_page(i32) #1

declare dso_local %struct.TYPE_7__* @jbig2_page_out(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
