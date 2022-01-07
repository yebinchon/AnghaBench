; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/source/fitz/extr_load-tiff.c_tiff_paste_tile.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/source/fitz/extr_load-tiff.c_tiff_paste_tile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tiff = type { i32, i32, i32, i32, i32, i8*, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.tiff*, i8*, i32, i32)* @tiff_paste_tile to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tiff_paste_tile(i32* %0, %struct.tiff* %1, i8* %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca %struct.tiff*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  store i32* %0, i32** %6, align 8
  store %struct.tiff* %1, %struct.tiff** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  store i32 0, i32* %12, align 4
  br label %16

16:                                               ; preds = %228, %5
  %17 = load i32, i32* %12, align 4
  %18 = load %struct.tiff*, %struct.tiff** %7, align 8
  %19 = getelementptr inbounds %struct.tiff, %struct.tiff* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = icmp ult i32 %17, %20
  br i1 %21, label %22, label %30

22:                                               ; preds = %16
  %23 = load i32, i32* %9, align 4
  %24 = load i32, i32* %12, align 4
  %25 = add i32 %23, %24
  %26 = load %struct.tiff*, %struct.tiff** %7, align 8
  %27 = getelementptr inbounds %struct.tiff, %struct.tiff* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = icmp ult i32 %25, %28
  br label %30

30:                                               ; preds = %22, %16
  %31 = phi i1 [ false, %16 ], [ %29, %22 ]
  br i1 %31, label %32, label %231

32:                                               ; preds = %30
  store i32 0, i32* %11, align 4
  br label %33

33:                                               ; preds = %224, %32
  %34 = load i32, i32* %11, align 4
  %35 = load %struct.tiff*, %struct.tiff** %7, align 8
  %36 = getelementptr inbounds %struct.tiff, %struct.tiff* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 8
  %38 = icmp ult i32 %34, %37
  br i1 %38, label %39, label %47

39:                                               ; preds = %33
  %40 = load i32, i32* %10, align 4
  %41 = load i32, i32* %11, align 4
  %42 = add i32 %40, %41
  %43 = load %struct.tiff*, %struct.tiff** %7, align 8
  %44 = getelementptr inbounds %struct.tiff, %struct.tiff* %43, i32 0, i32 3
  %45 = load i32, i32* %44, align 4
  %46 = icmp ult i32 %42, %45
  br label %47

47:                                               ; preds = %39, %33
  %48 = phi i1 [ false, %33 ], [ %46, %39 ]
  br i1 %48, label %49, label %227

49:                                               ; preds = %47
  store i32 0, i32* %13, align 4
  br label %50

50:                                               ; preds = %220, %49
  %51 = load i32, i32* %13, align 4
  %52 = load %struct.tiff*, %struct.tiff** %7, align 8
  %53 = getelementptr inbounds %struct.tiff, %struct.tiff* %52, i32 0, i32 4
  %54 = load i32, i32* %53, align 8
  %55 = icmp ult i32 %51, %54
  br i1 %55, label %56, label %223

56:                                               ; preds = %50
  %57 = load %struct.tiff*, %struct.tiff** %7, align 8
  %58 = getelementptr inbounds %struct.tiff, %struct.tiff* %57, i32 0, i32 5
  %59 = load i8*, i8** %58, align 8
  store i8* %59, i8** %14, align 8
  %60 = load i32, i32* %9, align 4
  %61 = load i32, i32* %12, align 4
  %62 = add i32 %60, %61
  %63 = load %struct.tiff*, %struct.tiff** %7, align 8
  %64 = getelementptr inbounds %struct.tiff, %struct.tiff* %63, i32 0, i32 6
  %65 = load i32, i32* %64, align 8
  %66 = mul i32 %62, %65
  %67 = load i8*, i8** %14, align 8
  %68 = zext i32 %66 to i64
  %69 = getelementptr inbounds i8, i8* %67, i64 %68
  store i8* %69, i8** %14, align 8
  %70 = load i32, i32* %10, align 4
  %71 = load i32, i32* %11, align 4
  %72 = add i32 %70, %71
  %73 = load %struct.tiff*, %struct.tiff** %7, align 8
  %74 = getelementptr inbounds %struct.tiff, %struct.tiff* %73, i32 0, i32 4
  %75 = load i32, i32* %74, align 8
  %76 = mul i32 %72, %75
  %77 = load i32, i32* %13, align 4
  %78 = add i32 %76, %77
  %79 = load %struct.tiff*, %struct.tiff** %7, align 8
  %80 = getelementptr inbounds %struct.tiff, %struct.tiff* %79, i32 0, i32 7
  %81 = load i32, i32* %80, align 4
  %82 = mul i32 %78, %81
  %83 = add i32 %82, 7
  %84 = udiv i32 %83, 8
  %85 = load i8*, i8** %14, align 8
  %86 = zext i32 %84 to i64
  %87 = getelementptr inbounds i8, i8* %85, i64 %86
  store i8* %87, i8** %14, align 8
  %88 = load i8*, i8** %8, align 8
  store i8* %88, i8** %15, align 8
  %89 = load i32, i32* %12, align 4
  %90 = load %struct.tiff*, %struct.tiff** %7, align 8
  %91 = getelementptr inbounds %struct.tiff, %struct.tiff* %90, i32 0, i32 8
  %92 = load i32, i32* %91, align 8
  %93 = mul i32 %89, %92
  %94 = load i8*, i8** %15, align 8
  %95 = zext i32 %93 to i64
  %96 = getelementptr inbounds i8, i8* %94, i64 %95
  store i8* %96, i8** %15, align 8
  %97 = load i32, i32* %11, align 4
  %98 = load %struct.tiff*, %struct.tiff** %7, align 8
  %99 = getelementptr inbounds %struct.tiff, %struct.tiff* %98, i32 0, i32 4
  %100 = load i32, i32* %99, align 8
  %101 = mul i32 %97, %100
  %102 = load i32, i32* %13, align 4
  %103 = add i32 %101, %102
  %104 = load %struct.tiff*, %struct.tiff** %7, align 8
  %105 = getelementptr inbounds %struct.tiff, %struct.tiff* %104, i32 0, i32 7
  %106 = load i32, i32* %105, align 4
  %107 = mul i32 %103, %106
  %108 = add i32 %107, 7
  %109 = udiv i32 %108, 8
  %110 = load i8*, i8** %15, align 8
  %111 = zext i32 %109 to i64
  %112 = getelementptr inbounds i8, i8* %110, i64 %111
  store i8* %112, i8** %15, align 8
  %113 = load %struct.tiff*, %struct.tiff** %7, align 8
  %114 = getelementptr inbounds %struct.tiff, %struct.tiff* %113, i32 0, i32 7
  %115 = load i32, i32* %114, align 4
  switch i32 %115, label %219 [
    i32 1, label %116
    i32 2, label %133
    i32 4, label %150
    i32 8, label %167
    i32 16, label %171
    i32 24, label %182
    i32 32, label %198
  ]

116:                                              ; preds = %56
  %117 = load i8*, i8** %15, align 8
  %118 = load i8, i8* %117, align 1
  %119 = zext i8 %118 to i32
  %120 = load i32, i32* %10, align 4
  %121 = load i32, i32* %11, align 4
  %122 = add i32 %120, %121
  %123 = urem i32 %122, 8
  %124 = mul i32 1, %123
  %125 = sub i32 7, %124
  %126 = ashr i32 %119, %125
  %127 = and i32 %126, 1
  %128 = load i8*, i8** %14, align 8
  %129 = load i8, i8* %128, align 1
  %130 = zext i8 %129 to i32
  %131 = or i32 %130, %127
  %132 = trunc i32 %131 to i8
  store i8 %132, i8* %128, align 1
  br label %219

133:                                              ; preds = %56
  %134 = load i8*, i8** %15, align 8
  %135 = load i8, i8* %134, align 1
  %136 = zext i8 %135 to i32
  %137 = load i32, i32* %10, align 4
  %138 = load i32, i32* %11, align 4
  %139 = add i32 %137, %138
  %140 = urem i32 %139, 4
  %141 = mul i32 2, %140
  %142 = sub i32 6, %141
  %143 = ashr i32 %136, %142
  %144 = and i32 %143, 3
  %145 = load i8*, i8** %14, align 8
  %146 = load i8, i8* %145, align 1
  %147 = zext i8 %146 to i32
  %148 = or i32 %147, %144
  %149 = trunc i32 %148 to i8
  store i8 %149, i8* %145, align 1
  br label %219

150:                                              ; preds = %56
  %151 = load i8*, i8** %15, align 8
  %152 = load i8, i8* %151, align 1
  %153 = zext i8 %152 to i32
  %154 = load i32, i32* %10, align 4
  %155 = load i32, i32* %11, align 4
  %156 = add i32 %154, %155
  %157 = urem i32 %156, 2
  %158 = mul i32 4, %157
  %159 = sub i32 4, %158
  %160 = ashr i32 %153, %159
  %161 = and i32 %160, 15
  %162 = load i8*, i8** %14, align 8
  %163 = load i8, i8* %162, align 1
  %164 = zext i8 %163 to i32
  %165 = or i32 %164, %161
  %166 = trunc i32 %165 to i8
  store i8 %166, i8* %162, align 1
  br label %219

167:                                              ; preds = %56
  %168 = load i8*, i8** %15, align 8
  %169 = load i8, i8* %168, align 1
  %170 = load i8*, i8** %14, align 8
  store i8 %169, i8* %170, align 1
  br label %219

171:                                              ; preds = %56
  %172 = load i8*, i8** %15, align 8
  %173 = getelementptr inbounds i8, i8* %172, i64 0
  %174 = load i8, i8* %173, align 1
  %175 = load i8*, i8** %14, align 8
  %176 = getelementptr inbounds i8, i8* %175, i64 0
  store i8 %174, i8* %176, align 1
  %177 = load i8*, i8** %15, align 8
  %178 = getelementptr inbounds i8, i8* %177, i64 1
  %179 = load i8, i8* %178, align 1
  %180 = load i8*, i8** %14, align 8
  %181 = getelementptr inbounds i8, i8* %180, i64 1
  store i8 %179, i8* %181, align 1
  br label %219

182:                                              ; preds = %56
  %183 = load i8*, i8** %15, align 8
  %184 = getelementptr inbounds i8, i8* %183, i64 0
  %185 = load i8, i8* %184, align 1
  %186 = load i8*, i8** %14, align 8
  %187 = getelementptr inbounds i8, i8* %186, i64 0
  store i8 %185, i8* %187, align 1
  %188 = load i8*, i8** %15, align 8
  %189 = getelementptr inbounds i8, i8* %188, i64 1
  %190 = load i8, i8* %189, align 1
  %191 = load i8*, i8** %14, align 8
  %192 = getelementptr inbounds i8, i8* %191, i64 1
  store i8 %190, i8* %192, align 1
  %193 = load i8*, i8** %15, align 8
  %194 = getelementptr inbounds i8, i8* %193, i64 2
  %195 = load i8, i8* %194, align 1
  %196 = load i8*, i8** %14, align 8
  %197 = getelementptr inbounds i8, i8* %196, i64 2
  store i8 %195, i8* %197, align 1
  br label %219

198:                                              ; preds = %56
  %199 = load i8*, i8** %15, align 8
  %200 = getelementptr inbounds i8, i8* %199, i64 0
  %201 = load i8, i8* %200, align 1
  %202 = load i8*, i8** %14, align 8
  %203 = getelementptr inbounds i8, i8* %202, i64 0
  store i8 %201, i8* %203, align 1
  %204 = load i8*, i8** %15, align 8
  %205 = getelementptr inbounds i8, i8* %204, i64 1
  %206 = load i8, i8* %205, align 1
  %207 = load i8*, i8** %14, align 8
  %208 = getelementptr inbounds i8, i8* %207, i64 1
  store i8 %206, i8* %208, align 1
  %209 = load i8*, i8** %15, align 8
  %210 = getelementptr inbounds i8, i8* %209, i64 2
  %211 = load i8, i8* %210, align 1
  %212 = load i8*, i8** %14, align 8
  %213 = getelementptr inbounds i8, i8* %212, i64 2
  store i8 %211, i8* %213, align 1
  %214 = load i8*, i8** %15, align 8
  %215 = getelementptr inbounds i8, i8* %214, i64 3
  %216 = load i8, i8* %215, align 1
  %217 = load i8*, i8** %14, align 8
  %218 = getelementptr inbounds i8, i8* %217, i64 3
  store i8 %216, i8* %218, align 1
  br label %219

219:                                              ; preds = %56, %198, %182, %171, %167, %150, %133, %116
  br label %220

220:                                              ; preds = %219
  %221 = load i32, i32* %13, align 4
  %222 = add i32 %221, 1
  store i32 %222, i32* %13, align 4
  br label %50

223:                                              ; preds = %50
  br label %224

224:                                              ; preds = %223
  %225 = load i32, i32* %11, align 4
  %226 = add i32 %225, 1
  store i32 %226, i32* %11, align 4
  br label %33

227:                                              ; preds = %47
  br label %228

228:                                              ; preds = %227
  %229 = load i32, i32* %12, align 4
  %230 = add i32 %229, 1
  store i32 %230, i32* %12, align 4
  br label %16

231:                                              ; preds = %30
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
