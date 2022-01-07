; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/source/fitz/extr_pixmap.c_fz_tint_pixmap.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/source/fitz/extr_pixmap.c_fz_tint_pixmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i8*, i32, i32, i32, i32, i32 }

@FZ_ERROR_GENERIC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"can only tint RGB, BGR and Gray pixmaps\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fz_tint_pixmap(i32* %0, %struct.TYPE_3__* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_3__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  %25 = load i8*, i8** %24, align 8
  store i8* %25, i8** %9, align 8
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 8
  store i32 %28, i32* %10, align 4
  %29 = load i32, i32* %7, align 4
  %30 = ashr i32 %29, 16
  %31 = and i32 %30, 255
  store i32 %31, i32* %14, align 4
  %32 = load i32, i32* %7, align 4
  %33 = ashr i32 %32, 8
  %34 = and i32 %33, 255
  store i32 %34, i32* %15, align 4
  %35 = load i32, i32* %7, align 4
  %36 = and i32 %35, 255
  store i32 %36, i32* %16, align 4
  %37 = load i32, i32* %8, align 4
  %38 = ashr i32 %37, 16
  %39 = and i32 %38, 255
  store i32 %39, i32* %17, align 4
  %40 = load i32, i32* %8, align 4
  %41 = ashr i32 %40, 8
  %42 = and i32 %41, 255
  store i32 %42, i32* %18, align 4
  %43 = load i32, i32* %8, align 4
  %44 = and i32 %43, 255
  store i32 %44, i32* %19, align 4
  %45 = load i32, i32* %17, align 4
  %46 = load i32, i32* %14, align 4
  %47 = sub nsw i32 %45, %46
  store i32 %47, i32* %20, align 4
  %48 = load i32, i32* %18, align 4
  %49 = load i32, i32* %15, align 4
  %50 = sub nsw i32 %48, %49
  store i32 %50, i32* %21, align 4
  %51 = load i32, i32* %19, align 4
  %52 = load i32, i32* %16, align 4
  %53 = sub nsw i32 %51, %52
  store i32 %53, i32* %22, align 4
  %54 = load i32*, i32** %5, align 8
  %55 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i32 0, i32 5
  %57 = load i32, i32* %56, align 8
  %58 = call i32 @fz_colorspace_type(i32* %54, i32 %57)
  switch i32 %58, label %197 [
    i32 129, label %59
    i32 130, label %121
    i32 128, label %128
  ]

59:                                               ; preds = %4
  %60 = load i32, i32* %17, align 4
  %61 = load i32, i32* %18, align 4
  %62 = add nsw i32 %60, %61
  %63 = load i32, i32* %19, align 4
  %64 = add nsw i32 %62, %63
  %65 = sdiv i32 %64, 3
  store i32 %65, i32* %18, align 4
  %66 = load i32, i32* %14, align 4
  %67 = load i32, i32* %15, align 4
  %68 = add nsw i32 %66, %67
  %69 = load i32, i32* %16, align 4
  %70 = add nsw i32 %68, %69
  %71 = sdiv i32 %70, 3
  store i32 %71, i32* %15, align 4
  %72 = load i32, i32* %18, align 4
  %73 = load i32, i32* %15, align 4
  %74 = sub nsw i32 %72, %73
  store i32 %74, i32* %21, align 4
  store i32 0, i32* %12, align 4
  br label %75

75:                                               ; preds = %117, %59
  %76 = load i32, i32* %12, align 4
  %77 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %78 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %77, i32 0, i32 2
  %79 = load i32, i32* %78, align 4
  %80 = icmp slt i32 %76, %79
  br i1 %80, label %81, label %120

81:                                               ; preds = %75
  store i32 0, i32* %11, align 4
  br label %82

82:                                               ; preds = %101, %81
  %83 = load i32, i32* %11, align 4
  %84 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %85 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %84, i32 0, i32 3
  %86 = load i32, i32* %85, align 8
  %87 = icmp slt i32 %83, %86
  br i1 %87, label %88, label %104

88:                                               ; preds = %82
  %89 = load i32, i32* %15, align 4
  %90 = load i8*, i8** %9, align 8
  %91 = load i8, i8* %90, align 1
  %92 = load i32, i32* %21, align 4
  %93 = call i32 @fz_mul255(i8 zeroext %91, i32 %92)
  %94 = add nsw i32 %89, %93
  %95 = trunc i32 %94 to i8
  %96 = load i8*, i8** %9, align 8
  store i8 %95, i8* %96, align 1
  %97 = load i32, i32* %10, align 4
  %98 = load i8*, i8** %9, align 8
  %99 = sext i32 %97 to i64
  %100 = getelementptr inbounds i8, i8* %98, i64 %99
  store i8* %100, i8** %9, align 8
  br label %101

101:                                              ; preds = %88
  %102 = load i32, i32* %11, align 4
  %103 = add nsw i32 %102, 1
  store i32 %103, i32* %11, align 4
  br label %82

104:                                              ; preds = %82
  %105 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %106 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %105, i32 0, i32 4
  %107 = load i32, i32* %106, align 4
  %108 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %109 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %108, i32 0, i32 3
  %110 = load i32, i32* %109, align 8
  %111 = load i32, i32* %10, align 4
  %112 = mul nsw i32 %110, %111
  %113 = sub nsw i32 %107, %112
  %114 = load i8*, i8** %9, align 8
  %115 = sext i32 %113 to i64
  %116 = getelementptr inbounds i8, i8* %114, i64 %115
  store i8* %116, i8** %9, align 8
  br label %117

117:                                              ; preds = %104
  %118 = load i32, i32* %12, align 4
  %119 = add nsw i32 %118, 1
  store i32 %119, i32* %12, align 4
  br label %75

120:                                              ; preds = %75
  br label %201

121:                                              ; preds = %4
  %122 = load i32, i32* %20, align 4
  store i32 %122, i32* %13, align 4
  %123 = load i32, i32* %22, align 4
  store i32 %123, i32* %20, align 4
  %124 = load i32, i32* %13, align 4
  store i32 %124, i32* %22, align 4
  %125 = load i32, i32* %14, align 4
  store i32 %125, i32* %13, align 4
  %126 = load i32, i32* %16, align 4
  store i32 %126, i32* %14, align 4
  %127 = load i32, i32* %13, align 4
  store i32 %127, i32* %16, align 4
  br label %128

128:                                              ; preds = %4, %121
  store i32 0, i32* %12, align 4
  br label %129

129:                                              ; preds = %193, %128
  %130 = load i32, i32* %12, align 4
  %131 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %132 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %131, i32 0, i32 2
  %133 = load i32, i32* %132, align 4
  %134 = icmp slt i32 %130, %133
  br i1 %134, label %135, label %196

135:                                              ; preds = %129
  store i32 0, i32* %11, align 4
  br label %136

136:                                              ; preds = %177, %135
  %137 = load i32, i32* %11, align 4
  %138 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %139 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %138, i32 0, i32 3
  %140 = load i32, i32* %139, align 8
  %141 = icmp slt i32 %137, %140
  br i1 %141, label %142, label %180

142:                                              ; preds = %136
  %143 = load i32, i32* %14, align 4
  %144 = load i8*, i8** %9, align 8
  %145 = getelementptr inbounds i8, i8* %144, i64 0
  %146 = load i8, i8* %145, align 1
  %147 = load i32, i32* %20, align 4
  %148 = call i32 @fz_mul255(i8 zeroext %146, i32 %147)
  %149 = add nsw i32 %143, %148
  %150 = trunc i32 %149 to i8
  %151 = load i8*, i8** %9, align 8
  %152 = getelementptr inbounds i8, i8* %151, i64 0
  store i8 %150, i8* %152, align 1
  %153 = load i32, i32* %15, align 4
  %154 = load i8*, i8** %9, align 8
  %155 = getelementptr inbounds i8, i8* %154, i64 1
  %156 = load i8, i8* %155, align 1
  %157 = load i32, i32* %21, align 4
  %158 = call i32 @fz_mul255(i8 zeroext %156, i32 %157)
  %159 = add nsw i32 %153, %158
  %160 = trunc i32 %159 to i8
  %161 = load i8*, i8** %9, align 8
  %162 = getelementptr inbounds i8, i8* %161, i64 1
  store i8 %160, i8* %162, align 1
  %163 = load i32, i32* %16, align 4
  %164 = load i8*, i8** %9, align 8
  %165 = getelementptr inbounds i8, i8* %164, i64 2
  %166 = load i8, i8* %165, align 1
  %167 = load i32, i32* %22, align 4
  %168 = call i32 @fz_mul255(i8 zeroext %166, i32 %167)
  %169 = add nsw i32 %163, %168
  %170 = trunc i32 %169 to i8
  %171 = load i8*, i8** %9, align 8
  %172 = getelementptr inbounds i8, i8* %171, i64 2
  store i8 %170, i8* %172, align 1
  %173 = load i32, i32* %10, align 4
  %174 = load i8*, i8** %9, align 8
  %175 = sext i32 %173 to i64
  %176 = getelementptr inbounds i8, i8* %174, i64 %175
  store i8* %176, i8** %9, align 8
  br label %177

177:                                              ; preds = %142
  %178 = load i32, i32* %11, align 4
  %179 = add nsw i32 %178, 1
  store i32 %179, i32* %11, align 4
  br label %136

180:                                              ; preds = %136
  %181 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %182 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %181, i32 0, i32 4
  %183 = load i32, i32* %182, align 4
  %184 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %185 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %184, i32 0, i32 3
  %186 = load i32, i32* %185, align 8
  %187 = load i32, i32* %10, align 4
  %188 = mul nsw i32 %186, %187
  %189 = sub nsw i32 %183, %188
  %190 = load i8*, i8** %9, align 8
  %191 = sext i32 %189 to i64
  %192 = getelementptr inbounds i8, i8* %190, i64 %191
  store i8* %192, i8** %9, align 8
  br label %193

193:                                              ; preds = %180
  %194 = load i32, i32* %12, align 4
  %195 = add nsw i32 %194, 1
  store i32 %195, i32* %12, align 4
  br label %129

196:                                              ; preds = %129
  br label %201

197:                                              ; preds = %4
  %198 = load i32*, i32** %5, align 8
  %199 = load i32, i32* @FZ_ERROR_GENERIC, align 4
  %200 = call i32 @fz_throw(i32* %198, i32 %199, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0))
  br label %201

201:                                              ; preds = %197, %196, %120
  ret void
}

declare dso_local i32 @fz_colorspace_type(i32*, i32) #1

declare dso_local i32 @fz_mul255(i8 zeroext, i32) #1

declare dso_local i32 @fz_throw(i32*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
