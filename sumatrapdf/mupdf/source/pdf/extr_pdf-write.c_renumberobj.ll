; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/source/pdf/extr_pdf-write.c_renumberobj.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/source/pdf/extr_pdf-write.c_renumberobj.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64* }

@PDF_NULL = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*, %struct.TYPE_3__*, i32*)* @renumberobj to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @renumberobj(i32* %0, i32* %1, %struct.TYPE_3__* %2, i32* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_3__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32*, align 8
  %17 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store %struct.TYPE_3__* %2, %struct.TYPE_3__** %7, align 8
  store i32* %3, i32** %8, align 8
  %18 = load i32*, i32** %5, align 8
  %19 = load i32*, i32** %6, align 8
  %20 = call i32 @pdf_xref_len(i32* %18, i32* %19)
  store i32 %20, i32* %10, align 4
  %21 = load i32*, i32** %5, align 8
  %22 = load i32*, i32** %8, align 8
  %23 = call i64 @pdf_is_dict(i32* %21, i32* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %94

25:                                               ; preds = %4
  %26 = load i32*, i32** %5, align 8
  %27 = load i32*, i32** %8, align 8
  %28 = call i32 @pdf_dict_len(i32* %26, i32* %27)
  store i32 %28, i32* %11, align 4
  store i32 0, i32* %9, align 4
  br label %29

29:                                               ; preds = %90, %25
  %30 = load i32, i32* %9, align 4
  %31 = load i32, i32* %11, align 4
  %32 = icmp slt i32 %30, %31
  br i1 %32, label %33, label %93

33:                                               ; preds = %29
  %34 = load i32*, i32** %5, align 8
  %35 = load i32*, i32** %8, align 8
  %36 = load i32, i32* %9, align 4
  %37 = call i32* @pdf_dict_get_key(i32* %34, i32* %35, i32 %36)
  store i32* %37, i32** %12, align 8
  %38 = load i32*, i32** %5, align 8
  %39 = load i32*, i32** %8, align 8
  %40 = load i32, i32* %9, align 4
  %41 = call i32* @pdf_dict_get_val(i32* %38, i32* %39, i32 %40)
  store i32* %41, i32** %13, align 8
  %42 = load i32*, i32** %5, align 8
  %43 = load i32*, i32** %13, align 8
  %44 = call i64 @pdf_is_indirect(i32* %42, i32* %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %84

46:                                               ; preds = %33
  %47 = load i32*, i32** %5, align 8
  %48 = load i32*, i32** %13, align 8
  %49 = call i32 @pdf_to_num(i32* %47, i32* %48)
  store i32 %49, i32* %14, align 4
  %50 = load i32, i32* %14, align 4
  %51 = load i32, i32* %10, align 4
  %52 = icmp sge i32 %50, %51
  br i1 %52, label %65, label %53

53:                                               ; preds = %46
  %54 = load i32, i32* %14, align 4
  %55 = icmp sle i32 %54, 0
  br i1 %55, label %65, label %56

56:                                               ; preds = %53
  %57 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i32 0, i32 0
  %59 = load i64*, i64** %58, align 8
  %60 = load i32, i32* %14, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i64, i64* %59, i64 %61
  %63 = load i64, i64* %62, align 8
  %64 = icmp eq i64 %63, 0
  br i1 %64, label %65, label %67

65:                                               ; preds = %56, %53, %46
  %66 = load i32*, i32** @PDF_NULL, align 8
  store i32* %66, i32** %13, align 8
  br label %78

67:                                               ; preds = %56
  %68 = load i32*, i32** %5, align 8
  %69 = load i32*, i32** %6, align 8
  %70 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %71 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %70, i32 0, i32 0
  %72 = load i64*, i64** %71, align 8
  %73 = load i32, i32* %14, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds i64, i64* %72, i64 %74
  %76 = load i64, i64* %75, align 8
  %77 = call i32* @pdf_new_indirect(i32* %68, i32* %69, i64 %76, i32 0)
  store i32* %77, i32** %13, align 8
  br label %78

78:                                               ; preds = %67, %65
  %79 = load i32*, i32** %5, align 8
  %80 = load i32*, i32** %8, align 8
  %81 = load i32*, i32** %12, align 8
  %82 = load i32*, i32** %13, align 8
  %83 = call i32 @pdf_dict_put_drop(i32* %79, i32* %80, i32* %81, i32* %82)
  br label %89

84:                                               ; preds = %33
  %85 = load i32*, i32** %5, align 8
  %86 = load i32*, i32** %6, align 8
  %87 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %88 = load i32*, i32** %13, align 8
  call void @renumberobj(i32* %85, i32* %86, %struct.TYPE_3__* %87, i32* %88)
  br label %89

89:                                               ; preds = %84, %78
  br label %90

90:                                               ; preds = %89
  %91 = load i32, i32* %9, align 4
  %92 = add nsw i32 %91, 1
  store i32 %92, i32* %9, align 4
  br label %29

93:                                               ; preds = %29
  br label %165

94:                                               ; preds = %4
  %95 = load i32*, i32** %5, align 8
  %96 = load i32*, i32** %8, align 8
  %97 = call i64 @pdf_is_array(i32* %95, i32* %96)
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %164

99:                                               ; preds = %94
  %100 = load i32*, i32** %5, align 8
  %101 = load i32*, i32** %8, align 8
  %102 = call i32 @pdf_array_len(i32* %100, i32* %101)
  store i32 %102, i32* %15, align 4
  store i32 0, i32* %9, align 4
  br label %103

103:                                              ; preds = %160, %99
  %104 = load i32, i32* %9, align 4
  %105 = load i32, i32* %15, align 4
  %106 = icmp slt i32 %104, %105
  br i1 %106, label %107, label %163

107:                                              ; preds = %103
  %108 = load i32*, i32** %5, align 8
  %109 = load i32*, i32** %8, align 8
  %110 = load i32, i32* %9, align 4
  %111 = call i32* @pdf_array_get(i32* %108, i32* %109, i32 %110)
  store i32* %111, i32** %16, align 8
  %112 = load i32*, i32** %5, align 8
  %113 = load i32*, i32** %16, align 8
  %114 = call i64 @pdf_is_indirect(i32* %112, i32* %113)
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %116, label %154

116:                                              ; preds = %107
  %117 = load i32*, i32** %5, align 8
  %118 = load i32*, i32** %16, align 8
  %119 = call i32 @pdf_to_num(i32* %117, i32* %118)
  store i32 %119, i32* %17, align 4
  %120 = load i32, i32* %17, align 4
  %121 = load i32, i32* %10, align 4
  %122 = icmp sge i32 %120, %121
  br i1 %122, label %135, label %123

123:                                              ; preds = %116
  %124 = load i32, i32* %17, align 4
  %125 = icmp sle i32 %124, 0
  br i1 %125, label %135, label %126

126:                                              ; preds = %123
  %127 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %128 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %127, i32 0, i32 0
  %129 = load i64*, i64** %128, align 8
  %130 = load i32, i32* %17, align 4
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds i64, i64* %129, i64 %131
  %133 = load i64, i64* %132, align 8
  %134 = icmp eq i64 %133, 0
  br i1 %134, label %135, label %137

135:                                              ; preds = %126, %123, %116
  %136 = load i32*, i32** @PDF_NULL, align 8
  store i32* %136, i32** %16, align 8
  br label %148

137:                                              ; preds = %126
  %138 = load i32*, i32** %5, align 8
  %139 = load i32*, i32** %6, align 8
  %140 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %141 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %140, i32 0, i32 0
  %142 = load i64*, i64** %141, align 8
  %143 = load i32, i32* %17, align 4
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds i64, i64* %142, i64 %144
  %146 = load i64, i64* %145, align 8
  %147 = call i32* @pdf_new_indirect(i32* %138, i32* %139, i64 %146, i32 0)
  store i32* %147, i32** %16, align 8
  br label %148

148:                                              ; preds = %137, %135
  %149 = load i32*, i32** %5, align 8
  %150 = load i32*, i32** %8, align 8
  %151 = load i32, i32* %9, align 4
  %152 = load i32*, i32** %16, align 8
  %153 = call i32 @pdf_array_put_drop(i32* %149, i32* %150, i32 %151, i32* %152)
  br label %159

154:                                              ; preds = %107
  %155 = load i32*, i32** %5, align 8
  %156 = load i32*, i32** %6, align 8
  %157 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %158 = load i32*, i32** %16, align 8
  call void @renumberobj(i32* %155, i32* %156, %struct.TYPE_3__* %157, i32* %158)
  br label %159

159:                                              ; preds = %154, %148
  br label %160

160:                                              ; preds = %159
  %161 = load i32, i32* %9, align 4
  %162 = add nsw i32 %161, 1
  store i32 %162, i32* %9, align 4
  br label %103

163:                                              ; preds = %103
  br label %164

164:                                              ; preds = %163, %94
  br label %165

165:                                              ; preds = %164, %93
  ret void
}

declare dso_local i32 @pdf_xref_len(i32*, i32*) #1

declare dso_local i64 @pdf_is_dict(i32*, i32*) #1

declare dso_local i32 @pdf_dict_len(i32*, i32*) #1

declare dso_local i32* @pdf_dict_get_key(i32*, i32*, i32) #1

declare dso_local i32* @pdf_dict_get_val(i32*, i32*, i32) #1

declare dso_local i64 @pdf_is_indirect(i32*, i32*) #1

declare dso_local i32 @pdf_to_num(i32*, i32*) #1

declare dso_local i32* @pdf_new_indirect(i32*, i32*, i64, i32) #1

declare dso_local i32 @pdf_dict_put_drop(i32*, i32*, i32*, i32*) #1

declare dso_local i64 @pdf_is_array(i32*, i32*) #1

declare dso_local i32 @pdf_array_len(i32*, i32*) #1

declare dso_local i32* @pdf_array_get(i32*, i32*, i32) #1

declare dso_local i32 @pdf_array_put_drop(i32*, i32*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
