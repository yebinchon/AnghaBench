; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/source/fitz/extr_filter-basic.c_next_a85d.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/source/fitz/extr_filter-basic.c_next_a85d.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i8*, i8*, i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i8*, i32, i32 }

@EOF = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"bad eod marker in a85d\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"partial final byte in a85d\00", align 1
@FZ_ERROR_GENERIC = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [23 x i8] c"bad data in a85d: '%c'\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.TYPE_4__*, i64)* @next_a85d to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @next_a85d(i32* %0, %struct.TYPE_4__* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_4__*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_5__*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store %struct.TYPE_4__* %1, %struct.TYPE_4__** %6, align 8
  store i64 %2, i64* %7, align 8
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 3
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** %15, align 8
  store %struct.TYPE_5__* %16, %struct.TYPE_5__** %8, align 8
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 0
  %19 = load i8*, i8** %18, align 8
  store i8* %19, i8** %9, align 8
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  %20 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 8
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %3
  %25 = load i32, i32* @EOF, align 4
  store i32 %25, i32* %4, align 4
  br label %223

26:                                               ; preds = %3
  %27 = load i64, i64* %7, align 8
  %28 = icmp ugt i64 %27, 8
  br i1 %28, label %29, label %30

29:                                               ; preds = %26
  store i64 8, i64* %7, align 8
  br label %30

30:                                               ; preds = %29, %26
  %31 = load i8*, i8** %9, align 8
  %32 = load i64, i64* %7, align 8
  %33 = getelementptr inbounds i8, i8* %31, i64 %32
  store i8* %33, i8** %10, align 8
  br label %34

34:                                               ; preds = %186, %30
  %35 = load i8*, i8** %9, align 8
  %36 = load i8*, i8** %10, align 8
  %37 = icmp ult i8* %35, %36
  br i1 %37, label %38, label %187

38:                                               ; preds = %34
  %39 = load i32*, i32** %5, align 8
  %40 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @fz_read_byte(i32* %39, i32 %42)
  store i32 %43, i32* %13, align 4
  %44 = load i32, i32* %13, align 4
  %45 = icmp slt i32 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %38
  br label %187

47:                                               ; preds = %38
  %48 = load i32, i32* %13, align 4
  %49 = icmp sge i32 %48, 33
  br i1 %49, label %50, label %94

50:                                               ; preds = %47
  %51 = load i32, i32* %13, align 4
  %52 = icmp sle i32 %51, 117
  br i1 %52, label %53, label %94

53:                                               ; preds = %50
  %54 = load i32, i32* %11, align 4
  %55 = icmp eq i32 %54, 4
  br i1 %55, label %56, label %85

56:                                               ; preds = %53
  %57 = load i32, i32* %12, align 4
  %58 = mul nsw i32 %57, 85
  %59 = load i32, i32* %13, align 4
  %60 = sub nsw i32 %59, 33
  %61 = add nsw i32 %58, %60
  store i32 %61, i32* %12, align 4
  %62 = load i32, i32* %12, align 4
  %63 = ashr i32 %62, 24
  %64 = and i32 %63, 255
  %65 = trunc i32 %64 to i8
  %66 = load i8*, i8** %9, align 8
  %67 = getelementptr inbounds i8, i8* %66, i32 1
  store i8* %67, i8** %9, align 8
  store i8 %65, i8* %66, align 1
  %68 = load i32, i32* %12, align 4
  %69 = ashr i32 %68, 16
  %70 = and i32 %69, 255
  %71 = trunc i32 %70 to i8
  %72 = load i8*, i8** %9, align 8
  %73 = getelementptr inbounds i8, i8* %72, i32 1
  store i8* %73, i8** %9, align 8
  store i8 %71, i8* %72, align 1
  %74 = load i32, i32* %12, align 4
  %75 = ashr i32 %74, 8
  %76 = and i32 %75, 255
  %77 = trunc i32 %76 to i8
  %78 = load i8*, i8** %9, align 8
  %79 = getelementptr inbounds i8, i8* %78, i32 1
  store i8* %79, i8** %9, align 8
  store i8 %77, i8* %78, align 1
  %80 = load i32, i32* %12, align 4
  %81 = and i32 %80, 255
  %82 = trunc i32 %81 to i8
  %83 = load i8*, i8** %9, align 8
  %84 = getelementptr inbounds i8, i8* %83, i32 1
  store i8* %84, i8** %9, align 8
  store i8 %82, i8* %83, align 1
  store i32 0, i32* %12, align 4
  store i32 0, i32* %11, align 4
  br label %93

85:                                               ; preds = %53
  %86 = load i32, i32* %12, align 4
  %87 = mul nsw i32 %86, 85
  %88 = load i32, i32* %13, align 4
  %89 = sub nsw i32 %88, 33
  %90 = add nsw i32 %87, %89
  store i32 %90, i32* %12, align 4
  %91 = load i32, i32* %11, align 4
  %92 = add nsw i32 %91, 1
  store i32 %92, i32* %11, align 4
  br label %93

93:                                               ; preds = %85, %56
  br label %186

94:                                               ; preds = %50, %47
  %95 = load i32, i32* %13, align 4
  %96 = icmp eq i32 %95, 122
  br i1 %96, label %97, label %109

97:                                               ; preds = %94
  %98 = load i32, i32* %11, align 4
  %99 = icmp eq i32 %98, 0
  br i1 %99, label %100, label %109

100:                                              ; preds = %97
  %101 = load i8*, i8** %9, align 8
  %102 = getelementptr inbounds i8, i8* %101, i32 1
  store i8* %102, i8** %9, align 8
  store i8 0, i8* %101, align 1
  %103 = load i8*, i8** %9, align 8
  %104 = getelementptr inbounds i8, i8* %103, i32 1
  store i8* %104, i8** %9, align 8
  store i8 0, i8* %103, align 1
  %105 = load i8*, i8** %9, align 8
  %106 = getelementptr inbounds i8, i8* %105, i32 1
  store i8* %106, i8** %9, align 8
  store i8 0, i8* %105, align 1
  %107 = load i8*, i8** %9, align 8
  %108 = getelementptr inbounds i8, i8* %107, i32 1
  store i8* %108, i8** %9, align 8
  store i8 0, i8* %107, align 1
  br label %185

109:                                              ; preds = %97, %94
  %110 = load i32, i32* %13, align 4
  %111 = icmp eq i32 %110, 126
  br i1 %111, label %112, label %174

112:                                              ; preds = %109
  %113 = load i32*, i32** %5, align 8
  %114 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %115 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %114, i32 0, i32 2
  %116 = load i32, i32* %115, align 4
  %117 = call i32 @fz_read_byte(i32* %113, i32 %116)
  store i32 %117, i32* %13, align 4
  %118 = load i32, i32* %13, align 4
  %119 = icmp ne i32 %118, 62
  br i1 %119, label %120, label %123

120:                                              ; preds = %112
  %121 = load i32*, i32** %5, align 8
  %122 = call i32 @fz_warn(i32* %121, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  br label %123

123:                                              ; preds = %120, %112
  %124 = load i32, i32* %11, align 4
  switch i32 %124, label %171 [
    i32 0, label %125
    i32 1, label %126
    i32 2, label %129
    i32 3, label %138
    i32 4, label %152
  ]

125:                                              ; preds = %123
  br label %171

126:                                              ; preds = %123
  %127 = load i32*, i32** %5, align 8
  %128 = call i32 @fz_warn(i32* %127, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  br label %171

129:                                              ; preds = %123
  %130 = load i32, i32* %12, align 4
  %131 = mul nsw i32 %130, 614125
  %132 = add nsw i32 %131, 16777215
  store i32 %132, i32* %12, align 4
  %133 = load i32, i32* %12, align 4
  %134 = ashr i32 %133, 24
  %135 = trunc i32 %134 to i8
  %136 = load i8*, i8** %9, align 8
  %137 = getelementptr inbounds i8, i8* %136, i32 1
  store i8* %137, i8** %9, align 8
  store i8 %135, i8* %136, align 1
  br label %171

138:                                              ; preds = %123
  %139 = load i32, i32* %12, align 4
  %140 = mul nsw i32 %139, 7225
  %141 = add nsw i32 %140, 65535
  store i32 %141, i32* %12, align 4
  %142 = load i32, i32* %12, align 4
  %143 = ashr i32 %142, 24
  %144 = trunc i32 %143 to i8
  %145 = load i8*, i8** %9, align 8
  %146 = getelementptr inbounds i8, i8* %145, i32 1
  store i8* %146, i8** %9, align 8
  store i8 %144, i8* %145, align 1
  %147 = load i32, i32* %12, align 4
  %148 = ashr i32 %147, 16
  %149 = trunc i32 %148 to i8
  %150 = load i8*, i8** %9, align 8
  %151 = getelementptr inbounds i8, i8* %150, i32 1
  store i8* %151, i8** %9, align 8
  store i8 %149, i8* %150, align 1
  br label %171

152:                                              ; preds = %123
  %153 = load i32, i32* %12, align 4
  %154 = mul nsw i32 %153, 85
  %155 = add nsw i32 %154, 255
  store i32 %155, i32* %12, align 4
  %156 = load i32, i32* %12, align 4
  %157 = ashr i32 %156, 24
  %158 = trunc i32 %157 to i8
  %159 = load i8*, i8** %9, align 8
  %160 = getelementptr inbounds i8, i8* %159, i32 1
  store i8* %160, i8** %9, align 8
  store i8 %158, i8* %159, align 1
  %161 = load i32, i32* %12, align 4
  %162 = ashr i32 %161, 16
  %163 = trunc i32 %162 to i8
  %164 = load i8*, i8** %9, align 8
  %165 = getelementptr inbounds i8, i8* %164, i32 1
  store i8* %165, i8** %9, align 8
  store i8 %163, i8* %164, align 1
  %166 = load i32, i32* %12, align 4
  %167 = ashr i32 %166, 8
  %168 = trunc i32 %167 to i8
  %169 = load i8*, i8** %9, align 8
  %170 = getelementptr inbounds i8, i8* %169, i32 1
  store i8* %170, i8** %9, align 8
  store i8 %168, i8* %169, align 1
  br label %171

171:                                              ; preds = %123, %152, %138, %129, %126, %125
  %172 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %173 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %172, i32 0, i32 1
  store i32 1, i32* %173, align 8
  br label %187

174:                                              ; preds = %109
  %175 = load i32, i32* %13, align 4
  %176 = call i32 @iswhite(i32 %175)
  %177 = icmp ne i32 %176, 0
  br i1 %177, label %183, label %178

178:                                              ; preds = %174
  %179 = load i32*, i32** %5, align 8
  %180 = load i32, i32* @FZ_ERROR_GENERIC, align 4
  %181 = load i32, i32* %13, align 4
  %182 = call i32 @fz_throw(i32* %179, i32 %180, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0), i32 %181)
  br label %183

183:                                              ; preds = %178, %174
  br label %184

184:                                              ; preds = %183
  br label %185

185:                                              ; preds = %184, %100
  br label %186

186:                                              ; preds = %185, %93
  br label %34

187:                                              ; preds = %171, %46, %34
  %188 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %189 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %188, i32 0, i32 0
  %190 = load i8*, i8** %189, align 8
  %191 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %192 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %191, i32 0, i32 0
  store i8* %190, i8** %192, align 8
  %193 = load i8*, i8** %9, align 8
  %194 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %195 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %194, i32 0, i32 1
  store i8* %193, i8** %195, align 8
  %196 = load i8*, i8** %9, align 8
  %197 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %198 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %197, i32 0, i32 0
  %199 = load i8*, i8** %198, align 8
  %200 = ptrtoint i8* %196 to i64
  %201 = ptrtoint i8* %199 to i64
  %202 = sub i64 %200, %201
  %203 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %204 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %203, i32 0, i32 2
  %205 = load i32, i32* %204, align 8
  %206 = sext i32 %205 to i64
  %207 = add nsw i64 %206, %202
  %208 = trunc i64 %207 to i32
  store i32 %208, i32* %204, align 8
  %209 = load i8*, i8** %9, align 8
  %210 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %211 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %210, i32 0, i32 0
  %212 = load i8*, i8** %211, align 8
  %213 = icmp eq i8* %209, %212
  br i1 %213, label %214, label %216

214:                                              ; preds = %187
  %215 = load i32, i32* @EOF, align 4
  store i32 %215, i32* %4, align 4
  br label %223

216:                                              ; preds = %187
  %217 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %218 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %217, i32 0, i32 0
  %219 = load i8*, i8** %218, align 8
  %220 = getelementptr inbounds i8, i8* %219, i32 1
  store i8* %220, i8** %218, align 8
  %221 = load i8, i8* %219, align 1
  %222 = zext i8 %221 to i32
  store i32 %222, i32* %4, align 4
  br label %223

223:                                              ; preds = %216, %214, %24
  %224 = load i32, i32* %4, align 4
  ret i32 %224
}

declare dso_local i32 @fz_read_byte(i32*, i32) #1

declare dso_local i32 @fz_warn(i32*, i8*) #1

declare dso_local i32 @iswhite(i32) #1

declare dso_local i32 @fz_throw(i32*, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
