; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/source/pdf/extr_pdf-xref.c_pdf_read_new_xref_section.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/source/pdf/extr_pdf-xref.c_pdf_read_new_xref_section.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { float, i32, i32, i32 }

@PDF_MAX_OBJECT_NUMBER = common dso_local global i32 0, align 4
@FZ_ERROR_GENERIC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [48 x i8] c"xref subsection object numbers are out of range\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"truncated xref stream\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.TYPE_7__*, i32*, i32, i32, i32, i32, i32)* @pdf_read_new_xref_section to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pdf_read_new_xref_section(i32* %0, %struct.TYPE_7__* %1, i32* %2, i32 %3, i32 %4, i32 %5, i32 %6, i32 %7) #0 {
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_7__*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.TYPE_6__*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca %struct.TYPE_6__*, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  store i32* %0, i32** %9, align 8
  store %struct.TYPE_7__* %1, %struct.TYPE_7__** %10, align 8
  store i32* %2, i32** %11, align 8
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  store i32 %7, i32* %16, align 4
  %25 = load i32, i32* %12, align 4
  %26 = icmp slt i32 %25, 0
  br i1 %26, label %45, label %27

27:                                               ; preds = %8
  %28 = load i32, i32* %12, align 4
  %29 = load i32, i32* @PDF_MAX_OBJECT_NUMBER, align 4
  %30 = icmp sgt i32 %28, %29
  br i1 %30, label %45, label %31

31:                                               ; preds = %27
  %32 = load i32, i32* %13, align 4
  %33 = icmp slt i32 %32, 0
  br i1 %33, label %45, label %34

34:                                               ; preds = %31
  %35 = load i32, i32* %13, align 4
  %36 = load i32, i32* @PDF_MAX_OBJECT_NUMBER, align 4
  %37 = icmp sgt i32 %35, %36
  br i1 %37, label %45, label %38

38:                                               ; preds = %34
  %39 = load i32, i32* %12, align 4
  %40 = load i32, i32* %13, align 4
  %41 = add nsw i32 %39, %40
  %42 = sub nsw i32 %41, 1
  %43 = load i32, i32* @PDF_MAX_OBJECT_NUMBER, align 4
  %44 = icmp sgt i32 %42, %43
  br i1 %44, label %45, label %49

45:                                               ; preds = %38, %34, %31, %27, %8
  %46 = load i32*, i32** %9, align 8
  %47 = load i32, i32* @FZ_ERROR_GENERIC, align 4
  %48 = call i32 @fz_throw(i32* %46, i32 %47, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0))
  br label %49

49:                                               ; preds = %45, %38
  %50 = load i32*, i32** %9, align 8
  %51 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %52 = load i32, i32* %12, align 4
  %53 = load i32, i32* %13, align 4
  %54 = call %struct.TYPE_6__* @pdf_xref_find_subsection(i32* %50, %struct.TYPE_7__* %51, i32 %52, i32 %53)
  store %struct.TYPE_6__* %54, %struct.TYPE_6__** %17, align 8
  %55 = load i32, i32* %12, align 4
  store i32 %55, i32* %18, align 4
  br label %56

56:                                               ; preds = %176, %49
  %57 = load i32, i32* %18, align 4
  %58 = load i32, i32* %12, align 4
  %59 = load i32, i32* %13, align 4
  %60 = add nsw i32 %58, %59
  %61 = icmp slt i32 %57, %60
  br i1 %61, label %62, label %179

62:                                               ; preds = %56
  %63 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  %64 = load i32, i32* %18, align 4
  %65 = load i32, i32* %12, align 4
  %66 = sub nsw i32 %64, %65
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %63, i64 %67
  store %struct.TYPE_6__* %68, %struct.TYPE_6__** %20, align 8
  store i32 0, i32* %21, align 4
  store i32 0, i32* %22, align 4
  store i32 0, i32* %23, align 4
  %69 = load i32*, i32** %9, align 8
  %70 = load i32*, i32** %11, align 8
  %71 = call i64 @fz_is_eof(i32* %69, i32* %70)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %77

73:                                               ; preds = %62
  %74 = load i32*, i32** %9, align 8
  %75 = load i32, i32* @FZ_ERROR_GENERIC, align 4
  %76 = call i32 @fz_throw(i32* %74, i32 %75, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  br label %77

77:                                               ; preds = %73, %62
  store i32 0, i32* %19, align 4
  br label %78

78:                                               ; preds = %89, %77
  %79 = load i32, i32* %19, align 4
  %80 = load i32, i32* %14, align 4
  %81 = icmp slt i32 %79, %80
  br i1 %81, label %82, label %92

82:                                               ; preds = %78
  %83 = load i32, i32* %21, align 4
  %84 = shl i32 %83, 8
  %85 = load i32*, i32** %9, align 8
  %86 = load i32*, i32** %11, align 8
  %87 = call i32 @fz_read_byte(i32* %85, i32* %86)
  %88 = add nsw i32 %84, %87
  store i32 %88, i32* %21, align 4
  br label %89

89:                                               ; preds = %82
  %90 = load i32, i32* %19, align 4
  %91 = add nsw i32 %90, 1
  store i32 %91, i32* %19, align 4
  br label %78

92:                                               ; preds = %78
  store i32 0, i32* %19, align 4
  br label %93

93:                                               ; preds = %104, %92
  %94 = load i32, i32* %19, align 4
  %95 = load i32, i32* %15, align 4
  %96 = icmp slt i32 %94, %95
  br i1 %96, label %97, label %107

97:                                               ; preds = %93
  %98 = load i32, i32* %22, align 4
  %99 = shl i32 %98, 8
  %100 = load i32*, i32** %9, align 8
  %101 = load i32*, i32** %11, align 8
  %102 = call i32 @fz_read_byte(i32* %100, i32* %101)
  %103 = add nsw i32 %99, %102
  store i32 %103, i32* %22, align 4
  br label %104

104:                                              ; preds = %97
  %105 = load i32, i32* %19, align 4
  %106 = add nsw i32 %105, 1
  store i32 %106, i32* %19, align 4
  br label %93

107:                                              ; preds = %93
  store i32 0, i32* %19, align 4
  br label %108

108:                                              ; preds = %119, %107
  %109 = load i32, i32* %19, align 4
  %110 = load i32, i32* %16, align 4
  %111 = icmp slt i32 %109, %110
  br i1 %111, label %112, label %122

112:                                              ; preds = %108
  %113 = load i32, i32* %23, align 4
  %114 = shl i32 %113, 8
  %115 = load i32*, i32** %9, align 8
  %116 = load i32*, i32** %11, align 8
  %117 = call i32 @fz_read_byte(i32* %115, i32* %116)
  %118 = add nsw i32 %114, %117
  store i32 %118, i32* %23, align 4
  br label %119

119:                                              ; preds = %112
  %120 = load i32, i32* %19, align 4
  %121 = add nsw i32 %120, 1
  store i32 %121, i32* %19, align 4
  br label %108

122:                                              ; preds = %108
  %123 = load %struct.TYPE_6__*, %struct.TYPE_6__** %20, align 8
  %124 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %123, i32 0, i32 0
  %125 = load float, float* %124, align 4
  %126 = fcmp une float %125, 0.000000e+00
  br i1 %126, label %175, label %127

127:                                              ; preds = %122
  %128 = load i32, i32* %14, align 4
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %130, label %132

130:                                              ; preds = %127
  %131 = load i32, i32* %21, align 4
  br label %133

132:                                              ; preds = %127
  br label %133

133:                                              ; preds = %132, %130
  %134 = phi i32 [ %131, %130 ], [ 1, %132 ]
  store i32 %134, i32* %24, align 4
  %135 = load i32, i32* %24, align 4
  %136 = icmp eq i32 %135, 0
  br i1 %136, label %137, label %138

137:                                              ; preds = %133
  br label %149

138:                                              ; preds = %133
  %139 = load i32, i32* %24, align 4
  %140 = icmp eq i32 %139, 1
  br i1 %140, label %141, label %142

141:                                              ; preds = %138
  br label %147

142:                                              ; preds = %138
  %143 = load i32, i32* %24, align 4
  %144 = icmp eq i32 %143, 2
  %145 = zext i1 %144 to i64
  %146 = select i1 %144, i32 111, i32 0
  br label %147

147:                                              ; preds = %142, %141
  %148 = phi i32 [ 110, %141 ], [ %146, %142 ]
  br label %149

149:                                              ; preds = %147, %137
  %150 = phi i32 [ 102, %137 ], [ %148, %147 ]
  %151 = sitofp i32 %150 to float
  %152 = load %struct.TYPE_6__*, %struct.TYPE_6__** %20, align 8
  %153 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %152, i32 0, i32 0
  store float %151, float* %153, align 4
  %154 = load i32, i32* %15, align 4
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %156, label %158

156:                                              ; preds = %149
  %157 = load i32, i32* %22, align 4
  br label %159

158:                                              ; preds = %149
  br label %159

159:                                              ; preds = %158, %156
  %160 = phi i32 [ %157, %156 ], [ 0, %158 ]
  %161 = load %struct.TYPE_6__*, %struct.TYPE_6__** %20, align 8
  %162 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %161, i32 0, i32 1
  store i32 %160, i32* %162, align 4
  %163 = load i32, i32* %16, align 4
  %164 = icmp ne i32 %163, 0
  br i1 %164, label %165, label %167

165:                                              ; preds = %159
  %166 = load i32, i32* %23, align 4
  br label %168

167:                                              ; preds = %159
  br label %168

168:                                              ; preds = %167, %165
  %169 = phi i32 [ %166, %165 ], [ 0, %167 ]
  %170 = load %struct.TYPE_6__*, %struct.TYPE_6__** %20, align 8
  %171 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %170, i32 0, i32 2
  store i32 %169, i32* %171, align 4
  %172 = load i32, i32* %18, align 4
  %173 = load %struct.TYPE_6__*, %struct.TYPE_6__** %20, align 8
  %174 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %173, i32 0, i32 3
  store i32 %172, i32* %174, align 4
  br label %175

175:                                              ; preds = %168, %122
  br label %176

176:                                              ; preds = %175
  %177 = load i32, i32* %18, align 4
  %178 = add nsw i32 %177, 1
  store i32 %178, i32* %18, align 4
  br label %56

179:                                              ; preds = %56
  %180 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %181 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %180, i32 0, i32 0
  store i32 1, i32* %181, align 4
  ret void
}

declare dso_local i32 @fz_throw(i32*, i32, i8*) #1

declare dso_local %struct.TYPE_6__* @pdf_xref_find_subsection(i32*, %struct.TYPE_7__*, i32, i32) #1

declare dso_local i64 @fz_is_eof(i32*, i32*) #1

declare dso_local i32 @fz_read_byte(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
