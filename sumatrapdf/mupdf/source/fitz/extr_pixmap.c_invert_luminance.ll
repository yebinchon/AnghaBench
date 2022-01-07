; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/source/fitz/extr_pixmap.c_invert_luminance.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/source/fitz/extr_pixmap.c_invert_luminance.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FZ_COLORSPACE_RGB = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i8*)* @invert_luminance to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @invert_luminance(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %14 = load i32, i32* %3, align 4
  %15 = load i32, i32* @FZ_COLORSPACE_RGB, align 4
  %16 = icmp eq i32 %14, %15
  br i1 %16, label %17, label %30

17:                                               ; preds = %2
  %18 = load i8*, i8** %4, align 8
  %19 = getelementptr inbounds i8, i8* %18, i64 0
  %20 = load i8, i8* %19, align 1
  %21 = zext i8 %20 to i32
  store i32 %21, i32* %5, align 4
  %22 = load i8*, i8** %4, align 8
  %23 = getelementptr inbounds i8, i8* %22, i64 1
  %24 = load i8, i8* %23, align 1
  %25 = zext i8 %24 to i32
  store i32 %25, i32* %6, align 4
  %26 = load i8*, i8** %4, align 8
  %27 = getelementptr inbounds i8, i8* %26, i64 2
  %28 = load i8, i8* %27, align 1
  %29 = zext i8 %28 to i32
  store i32 %29, i32* %7, align 4
  br label %43

30:                                               ; preds = %2
  %31 = load i8*, i8** %4, align 8
  %32 = getelementptr inbounds i8, i8* %31, i64 2
  %33 = load i8, i8* %32, align 1
  %34 = zext i8 %33 to i32
  store i32 %34, i32* %5, align 4
  %35 = load i8*, i8** %4, align 8
  %36 = getelementptr inbounds i8, i8* %35, i64 1
  %37 = load i8, i8* %36, align 1
  %38 = zext i8 %37 to i32
  store i32 %38, i32* %6, align 4
  %39 = load i8*, i8** %4, align 8
  %40 = getelementptr inbounds i8, i8* %39, i64 0
  %41 = load i8, i8* %40, align 1
  %42 = zext i8 %41 to i32
  store i32 %42, i32* %7, align 4
  br label %43

43:                                               ; preds = %30, %17
  %44 = load i32, i32* %5, align 4
  %45 = mul nsw i32 66, %44
  %46 = load i32, i32* %6, align 4
  %47 = mul nsw i32 129, %46
  %48 = add nsw i32 %45, %47
  %49 = load i32, i32* %7, align 4
  %50 = mul nsw i32 25, %49
  %51 = add nsw i32 %48, %50
  %52 = add nsw i32 %51, 128
  %53 = ashr i32 %52, 8
  %54 = add nsw i32 %53, 16
  store i32 %54, i32* %8, align 4
  %55 = load i32, i32* %5, align 4
  %56 = mul nsw i32 -38, %55
  %57 = load i32, i32* %6, align 4
  %58 = mul nsw i32 74, %57
  %59 = sub nsw i32 %56, %58
  %60 = load i32, i32* %7, align 4
  %61 = mul nsw i32 112, %60
  %62 = add nsw i32 %59, %61
  %63 = add nsw i32 %62, 128
  %64 = ashr i32 %63, 8
  %65 = add nsw i32 %64, 128
  store i32 %65, i32* %9, align 4
  %66 = load i32, i32* %5, align 4
  %67 = mul nsw i32 112, %66
  %68 = load i32, i32* %6, align 4
  %69 = mul nsw i32 94, %68
  %70 = sub nsw i32 %67, %69
  %71 = load i32, i32* %7, align 4
  %72 = mul nsw i32 18, %71
  %73 = sub nsw i32 %70, %72
  %74 = add nsw i32 %73, 128
  %75 = ashr i32 %74, 8
  %76 = add nsw i32 %75, 128
  store i32 %76, i32* %10, align 4
  %77 = load i32, i32* %8, align 4
  %78 = sub nsw i32 255, %77
  store i32 %78, i32* %8, align 4
  %79 = load i32, i32* %8, align 4
  %80 = sub nsw i32 %79, 16
  store i32 %80, i32* %11, align 4
  %81 = load i32, i32* %9, align 4
  %82 = sub nsw i32 %81, 128
  store i32 %82, i32* %12, align 4
  %83 = load i32, i32* %10, align 4
  %84 = sub nsw i32 %83, 128
  store i32 %84, i32* %13, align 4
  %85 = load i32, i32* %11, align 4
  %86 = mul nsw i32 298, %85
  %87 = load i32, i32* %13, align 4
  %88 = mul nsw i32 409, %87
  %89 = add nsw i32 %86, %88
  %90 = add nsw i32 %89, 128
  %91 = ashr i32 %90, 8
  store i32 %91, i32* %5, align 4
  %92 = load i32, i32* %11, align 4
  %93 = mul nsw i32 298, %92
  %94 = load i32, i32* %12, align 4
  %95 = mul nsw i32 100, %94
  %96 = sub nsw i32 %93, %95
  %97 = load i32, i32* %13, align 4
  %98 = mul nsw i32 208, %97
  %99 = sub nsw i32 %96, %98
  %100 = add nsw i32 %99, 128
  %101 = ashr i32 %100, 8
  store i32 %101, i32* %6, align 4
  %102 = load i32, i32* %11, align 4
  %103 = mul nsw i32 298, %102
  %104 = load i32, i32* %12, align 4
  %105 = mul nsw i32 516, %104
  %106 = add nsw i32 %103, %105
  %107 = add nsw i32 %106, 128
  %108 = ashr i32 %107, 8
  store i32 %108, i32* %7, align 4
  %109 = load i32, i32* %3, align 4
  %110 = load i32, i32* @FZ_COLORSPACE_RGB, align 4
  %111 = icmp eq i32 %109, %110
  br i1 %111, label %112, label %161

112:                                              ; preds = %43
  %113 = load i32, i32* %5, align 4
  %114 = icmp sgt i32 %113, 255
  br i1 %114, label %115, label %116

115:                                              ; preds = %112
  br label %124

116:                                              ; preds = %112
  %117 = load i32, i32* %5, align 4
  %118 = icmp slt i32 %117, 0
  br i1 %118, label %119, label %120

119:                                              ; preds = %116
  br label %122

120:                                              ; preds = %116
  %121 = load i32, i32* %5, align 4
  br label %122

122:                                              ; preds = %120, %119
  %123 = phi i32 [ 0, %119 ], [ %121, %120 ]
  br label %124

124:                                              ; preds = %122, %115
  %125 = phi i32 [ 255, %115 ], [ %123, %122 ]
  %126 = trunc i32 %125 to i8
  %127 = load i8*, i8** %4, align 8
  %128 = getelementptr inbounds i8, i8* %127, i64 0
  store i8 %126, i8* %128, align 1
  %129 = load i32, i32* %6, align 4
  %130 = icmp sgt i32 %129, 255
  br i1 %130, label %131, label %132

131:                                              ; preds = %124
  br label %140

132:                                              ; preds = %124
  %133 = load i32, i32* %6, align 4
  %134 = icmp slt i32 %133, 0
  br i1 %134, label %135, label %136

135:                                              ; preds = %132
  br label %138

136:                                              ; preds = %132
  %137 = load i32, i32* %6, align 4
  br label %138

138:                                              ; preds = %136, %135
  %139 = phi i32 [ 0, %135 ], [ %137, %136 ]
  br label %140

140:                                              ; preds = %138, %131
  %141 = phi i32 [ 255, %131 ], [ %139, %138 ]
  %142 = trunc i32 %141 to i8
  %143 = load i8*, i8** %4, align 8
  %144 = getelementptr inbounds i8, i8* %143, i64 1
  store i8 %142, i8* %144, align 1
  %145 = load i32, i32* %7, align 4
  %146 = icmp sgt i32 %145, 255
  br i1 %146, label %147, label %148

147:                                              ; preds = %140
  br label %156

148:                                              ; preds = %140
  %149 = load i32, i32* %7, align 4
  %150 = icmp slt i32 %149, 0
  br i1 %150, label %151, label %152

151:                                              ; preds = %148
  br label %154

152:                                              ; preds = %148
  %153 = load i32, i32* %7, align 4
  br label %154

154:                                              ; preds = %152, %151
  %155 = phi i32 [ 0, %151 ], [ %153, %152 ]
  br label %156

156:                                              ; preds = %154, %147
  %157 = phi i32 [ 255, %147 ], [ %155, %154 ]
  %158 = trunc i32 %157 to i8
  %159 = load i8*, i8** %4, align 8
  %160 = getelementptr inbounds i8, i8* %159, i64 2
  store i8 %158, i8* %160, align 1
  br label %210

161:                                              ; preds = %43
  %162 = load i32, i32* %5, align 4
  %163 = icmp sgt i32 %162, 255
  br i1 %163, label %164, label %165

164:                                              ; preds = %161
  br label %173

165:                                              ; preds = %161
  %166 = load i32, i32* %5, align 4
  %167 = icmp slt i32 %166, 0
  br i1 %167, label %168, label %169

168:                                              ; preds = %165
  br label %171

169:                                              ; preds = %165
  %170 = load i32, i32* %5, align 4
  br label %171

171:                                              ; preds = %169, %168
  %172 = phi i32 [ 0, %168 ], [ %170, %169 ]
  br label %173

173:                                              ; preds = %171, %164
  %174 = phi i32 [ 255, %164 ], [ %172, %171 ]
  %175 = trunc i32 %174 to i8
  %176 = load i8*, i8** %4, align 8
  %177 = getelementptr inbounds i8, i8* %176, i64 2
  store i8 %175, i8* %177, align 1
  %178 = load i32, i32* %6, align 4
  %179 = icmp sgt i32 %178, 255
  br i1 %179, label %180, label %181

180:                                              ; preds = %173
  br label %189

181:                                              ; preds = %173
  %182 = load i32, i32* %6, align 4
  %183 = icmp slt i32 %182, 0
  br i1 %183, label %184, label %185

184:                                              ; preds = %181
  br label %187

185:                                              ; preds = %181
  %186 = load i32, i32* %6, align 4
  br label %187

187:                                              ; preds = %185, %184
  %188 = phi i32 [ 0, %184 ], [ %186, %185 ]
  br label %189

189:                                              ; preds = %187, %180
  %190 = phi i32 [ 255, %180 ], [ %188, %187 ]
  %191 = trunc i32 %190 to i8
  %192 = load i8*, i8** %4, align 8
  %193 = getelementptr inbounds i8, i8* %192, i64 1
  store i8 %191, i8* %193, align 1
  %194 = load i32, i32* %7, align 4
  %195 = icmp sgt i32 %194, 255
  br i1 %195, label %196, label %197

196:                                              ; preds = %189
  br label %205

197:                                              ; preds = %189
  %198 = load i32, i32* %7, align 4
  %199 = icmp slt i32 %198, 0
  br i1 %199, label %200, label %201

200:                                              ; preds = %197
  br label %203

201:                                              ; preds = %197
  %202 = load i32, i32* %7, align 4
  br label %203

203:                                              ; preds = %201, %200
  %204 = phi i32 [ 0, %200 ], [ %202, %201 ]
  br label %205

205:                                              ; preds = %203, %196
  %206 = phi i32 [ 255, %196 ], [ %204, %203 ]
  %207 = trunc i32 %206 to i8
  %208 = load i8*, i8** %4, align 8
  %209 = getelementptr inbounds i8, i8* %208, i64 0
  store i8 %207, i8* %209, align 1
  br label %210

210:                                              ; preds = %205, %156
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
