; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/source/fitz/extr_pixmap.c_fz_clear_pixmap_rect_with_value.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/source/fitz/extr_pixmap.c_fz_clear_pixmap_rect_with_value.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i8*, i32, i32, i32, i32 }
%struct.TYPE_9__ = type { i32, i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fz_clear_pixmap_rect_with_value(i32* %0, %struct.TYPE_8__* %1, i32 %2, i64 %3, i64 %4) #0 {
  %6 = alloca %struct.TYPE_9__, align 4
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_8__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.TYPE_9__, align 4
  %17 = alloca i8*, align 8
  %18 = alloca i8*, align 8
  %19 = bitcast %struct.TYPE_9__* %6 to { i64, i64 }*
  %20 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %19, i32 0, i32 0
  store i64 %3, i64* %20, align 4
  %21 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %19, i32 0, i32 1
  store i64 %4, i64* %21, align 4
  store i32* %0, i32** %7, align 8
  store %struct.TYPE_8__* %1, %struct.TYPE_8__** %8, align 8
  store i32 %2, i32* %9, align 4
  %22 = load i32*, i32** %7, align 8
  %23 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %24 = call i32 @fz_pixmap_bbox(i32* %22, %struct.TYPE_8__* %23)
  %25 = bitcast %struct.TYPE_9__* %6 to { i64, i64 }*
  %26 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 4
  %28 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %25, i32 0, i32 1
  %29 = load i64, i64* %28, align 4
  %30 = call { i64, i64 } @fz_intersect_irect(i64 %27, i64 %29, i32 %24)
  %31 = bitcast %struct.TYPE_9__* %16 to { i64, i64 }*
  %32 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %31, i32 0, i32 0
  %33 = extractvalue { i64, i64 } %30, 0
  store i64 %33, i64* %32, align 4
  %34 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %31, i32 0, i32 1
  %35 = extractvalue { i64, i64 } %30, 1
  store i64 %35, i64* %34, align 4
  %36 = bitcast %struct.TYPE_9__* %6 to i8*
  %37 = bitcast %struct.TYPE_9__* %16 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %36, i8* align 4 %37, i64 16, i1 false)
  %38 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %6, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %6, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = sub nsw i32 %39, %41
  store i32 %42, i32* %13, align 4
  %43 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %6, i32 0, i32 2
  %44 = load i32, i32* %43, align 4
  %45 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %6, i32 0, i32 3
  %46 = load i32, i32* %45, align 4
  %47 = sub nsw i32 %44, %46
  store i32 %47, i32* %12, align 4
  %48 = load i32, i32* %13, align 4
  %49 = icmp sle i32 %48, 0
  br i1 %49, label %53, label %50

50:                                               ; preds = %5
  %51 = load i32, i32* %12, align 4
  %52 = icmp sle i32 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %50, %5
  br label %183

54:                                               ; preds = %50
  %55 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %56 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  store i32 %57, i32* %15, align 4
  %58 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %59 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %58, i32 0, i32 1
  %60 = load i8*, i8** %59, align 8
  %61 = load i32, i32* %15, align 4
  %62 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %6, i32 0, i32 3
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %65 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %64, i32 0, i32 2
  %66 = load i32, i32* %65, align 8
  %67 = sub nsw i32 %63, %66
  %68 = mul nsw i32 %61, %67
  %69 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %70 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %69, i32 0, i32 3
  %71 = load i32, i32* %70, align 4
  %72 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %6, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %75 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %74, i32 0, i32 4
  %76 = load i32, i32* %75, align 8
  %77 = sub nsw i32 %73, %76
  %78 = mul nsw i32 %71, %77
  %79 = add nsw i32 %68, %78
  %80 = zext i32 %79 to i64
  %81 = getelementptr inbounds i8, i8* %60, i64 %80
  store i8* %81, i8** %10, align 8
  %82 = load i32*, i32** %7, align 8
  %83 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %84 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %83, i32 0, i32 5
  %85 = load i32, i32* %84, align 4
  %86 = call i32 @fz_colorspace_n(i32* %82, i32 %85)
  %87 = icmp eq i32 %86, 4
  br i1 %87, label %88, label %123

88:                                               ; preds = %54
  %89 = load i32, i32* %9, align 4
  %90 = sub nsw i32 255, %89
  store i32 %90, i32* %9, align 4
  br label %91

91:                                               ; preds = %118, %88
  %92 = load i8*, i8** %10, align 8
  store i8* %92, i8** %17, align 8
  store i32 0, i32* %11, align 4
  br label %93

93:                                               ; preds = %110, %91
  %94 = load i32, i32* %11, align 4
  %95 = load i32, i32* %13, align 4
  %96 = icmp slt i32 %94, %95
  br i1 %96, label %97, label %113

97:                                               ; preds = %93
  %98 = load i8*, i8** %17, align 8
  %99 = getelementptr inbounds i8, i8* %98, i32 1
  store i8* %99, i8** %17, align 8
  store i8 0, i8* %98, align 1
  %100 = load i8*, i8** %17, align 8
  %101 = getelementptr inbounds i8, i8* %100, i32 1
  store i8* %101, i8** %17, align 8
  store i8 0, i8* %100, align 1
  %102 = load i8*, i8** %17, align 8
  %103 = getelementptr inbounds i8, i8* %102, i32 1
  store i8* %103, i8** %17, align 8
  store i8 0, i8* %102, align 1
  %104 = load i32, i32* %9, align 4
  %105 = trunc i32 %104 to i8
  %106 = load i8*, i8** %17, align 8
  %107 = getelementptr inbounds i8, i8* %106, i32 1
  store i8* %107, i8** %17, align 8
  store i8 %105, i8* %106, align 1
  %108 = load i8*, i8** %17, align 8
  %109 = getelementptr inbounds i8, i8* %108, i32 1
  store i8* %109, i8** %17, align 8
  store i8 -1, i8* %108, align 1
  br label %110

110:                                              ; preds = %97
  %111 = load i32, i32* %11, align 4
  %112 = add nsw i32 %111, 1
  store i32 %112, i32* %11, align 4
  br label %93

113:                                              ; preds = %93
  %114 = load i32, i32* %15, align 4
  %115 = load i8*, i8** %10, align 8
  %116 = sext i32 %114 to i64
  %117 = getelementptr inbounds i8, i8* %115, i64 %116
  store i8* %117, i8** %10, align 8
  br label %118

118:                                              ; preds = %113
  %119 = load i32, i32* %12, align 4
  %120 = add nsw i32 %119, -1
  store i32 %120, i32* %12, align 4
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %91, label %122

122:                                              ; preds = %118
  br label %183

123:                                              ; preds = %54
  %124 = load i32, i32* %9, align 4
  %125 = icmp eq i32 %124, 255
  br i1 %125, label %126, label %144

126:                                              ; preds = %123
  br label %127

127:                                              ; preds = %139, %126
  %128 = load i8*, i8** %10, align 8
  %129 = load i32, i32* %13, align 4
  %130 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %131 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %130, i32 0, i32 3
  %132 = load i32, i32* %131, align 4
  %133 = mul nsw i32 %129, %132
  %134 = call i32 @memset(i8* %128, i32 255, i32 %133)
  %135 = load i32, i32* %15, align 4
  %136 = load i8*, i8** %10, align 8
  %137 = sext i32 %135 to i64
  %138 = getelementptr inbounds i8, i8* %136, i64 %137
  store i8* %138, i8** %10, align 8
  br label %139

139:                                              ; preds = %127
  %140 = load i32, i32* %12, align 4
  %141 = add nsw i32 %140, -1
  store i32 %141, i32* %12, align 4
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %127, label %143

143:                                              ; preds = %139
  br label %183

144:                                              ; preds = %123
  br label %145

145:                                              ; preds = %178, %144
  %146 = load i8*, i8** %10, align 8
  store i8* %146, i8** %18, align 8
  store i32 0, i32* %11, align 4
  br label %147

147:                                              ; preds = %170, %145
  %148 = load i32, i32* %11, align 4
  %149 = load i32, i32* %13, align 4
  %150 = icmp slt i32 %148, %149
  br i1 %150, label %151, label %173

151:                                              ; preds = %147
  store i32 0, i32* %14, align 4
  br label %152

152:                                              ; preds = %164, %151
  %153 = load i32, i32* %14, align 4
  %154 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %155 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %154, i32 0, i32 3
  %156 = load i32, i32* %155, align 4
  %157 = sub nsw i32 %156, 1
  %158 = icmp slt i32 %153, %157
  br i1 %158, label %159, label %167

159:                                              ; preds = %152
  %160 = load i32, i32* %9, align 4
  %161 = trunc i32 %160 to i8
  %162 = load i8*, i8** %18, align 8
  %163 = getelementptr inbounds i8, i8* %162, i32 1
  store i8* %163, i8** %18, align 8
  store i8 %161, i8* %162, align 1
  br label %164

164:                                              ; preds = %159
  %165 = load i32, i32* %14, align 4
  %166 = add nsw i32 %165, 1
  store i32 %166, i32* %14, align 4
  br label %152

167:                                              ; preds = %152
  %168 = load i8*, i8** %18, align 8
  %169 = getelementptr inbounds i8, i8* %168, i32 1
  store i8* %169, i8** %18, align 8
  store i8 -1, i8* %168, align 1
  br label %170

170:                                              ; preds = %167
  %171 = load i32, i32* %11, align 4
  %172 = add nsw i32 %171, 1
  store i32 %172, i32* %11, align 4
  br label %147

173:                                              ; preds = %147
  %174 = load i32, i32* %15, align 4
  %175 = load i8*, i8** %10, align 8
  %176 = sext i32 %174 to i64
  %177 = getelementptr inbounds i8, i8* %175, i64 %176
  store i8* %177, i8** %10, align 8
  br label %178

178:                                              ; preds = %173
  %179 = load i32, i32* %12, align 4
  %180 = add nsw i32 %179, -1
  store i32 %180, i32* %12, align 4
  %181 = icmp ne i32 %180, 0
  br i1 %181, label %145, label %182

182:                                              ; preds = %178
  br label %183

183:                                              ; preds = %53, %122, %182, %143
  ret void
}

declare dso_local { i64, i64 } @fz_intersect_irect(i64, i64, i32) #1

declare dso_local i32 @fz_pixmap_bbox(i32*, %struct.TYPE_8__*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @fz_colorspace_n(i32*, i32) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
