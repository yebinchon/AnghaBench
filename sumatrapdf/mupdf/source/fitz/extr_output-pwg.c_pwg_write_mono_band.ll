; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/source/fitz/extr_output-pwg.c_pwg_write_mono_band.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/source/fitz/extr_output-pwg.c_pwg_write_mono_band.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*, i32, i32, i32, i8*)* @pwg_write_mono_band to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pwg_write_mono_band(i32* %0, i32* %1, i32 %2, i32 %3, i32 %4, i8* %5) #0 {
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca %struct.TYPE_4__*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i8*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  store i32* %0, i32** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i8* %5, i8** %12, align 8
  %24 = load i32*, i32** %8, align 8
  %25 = bitcast i32* %24 to %struct.TYPE_4__*
  store %struct.TYPE_4__* %25, %struct.TYPE_4__** %13, align 8
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 2
  %29 = load i32*, i32** %28, align 8
  store i32* %29, i32** %14, align 8
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  store i32 %33, i32* %15, align 4
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  store i32 %37, i32* %16, align 4
  %38 = load i8*, i8** %12, align 8
  store i8* %38, i8** %17, align 8
  %39 = load i32, i32* %15, align 4
  %40 = add nsw i32 %39, 7
  %41 = sdiv i32 %40, 8
  store i32 %41, i32* %20, align 4
  store i32 0, i32* %18, align 4
  br label %42

42:                                               ; preds = %207, %6
  %43 = load i32, i32* %18, align 4
  %44 = load i32, i32* %11, align 4
  %45 = icmp slt i32 %43, %44
  br i1 %45, label %46, label %219

46:                                               ; preds = %42
  %47 = load i8*, i8** %17, align 8
  %48 = load i8*, i8** %12, align 8
  %49 = load i32, i32* %18, align 4
  %50 = load i32, i32* %9, align 4
  %51 = mul nsw i32 %49, %50
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i8, i8* %48, i64 %52
  %54 = icmp eq i8* %47, %53
  %55 = zext i1 %54 to i32
  %56 = call i32 @assert(i32 %55)
  store i32 1, i32* %21, align 4
  br label %57

57:                                               ; preds = %81, %46
  %58 = load i32, i32* %21, align 4
  %59 = icmp slt i32 %58, 256
  br i1 %59, label %60, label %66

60:                                               ; preds = %57
  %61 = load i32, i32* %18, align 4
  %62 = load i32, i32* %21, align 4
  %63 = add nsw i32 %61, %62
  %64 = load i32, i32* %16, align 4
  %65 = icmp slt i32 %63, %64
  br label %66

66:                                               ; preds = %60, %57
  %67 = phi i1 [ false, %57 ], [ %65, %60 ]
  br i1 %67, label %68, label %84

68:                                               ; preds = %66
  %69 = load i8*, i8** %17, align 8
  %70 = load i8*, i8** %17, align 8
  %71 = load i32, i32* %21, align 4
  %72 = load i32, i32* %9, align 4
  %73 = mul nsw i32 %71, %72
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds i8, i8* %70, i64 %74
  %76 = load i32, i32* %20, align 4
  %77 = call i64 @memcmp(i8* %69, i8* %75, i32 %76)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %80

79:                                               ; preds = %68
  br label %84

80:                                               ; preds = %68
  br label %81

81:                                               ; preds = %80
  %82 = load i32, i32* %21, align 4
  %83 = add nsw i32 %82, 1
  store i32 %83, i32* %21, align 4
  br label %57

84:                                               ; preds = %79, %66
  %85 = load i32*, i32** %7, align 8
  %86 = load i32*, i32** %14, align 8
  %87 = load i32, i32* %21, align 4
  %88 = sub nsw i32 %87, 1
  %89 = call i32 @fz_write_byte(i32* %85, i32* %86, i32 %88)
  store i32 0, i32* %19, align 4
  br label %90

90:                                               ; preds = %206, %84
  %91 = load i32, i32* %19, align 4
  %92 = load i32, i32* %20, align 4
  %93 = icmp slt i32 %91, %92
  br i1 %93, label %94, label %207

94:                                               ; preds = %90
  %95 = load i8*, i8** %17, align 8
  %96 = load i8*, i8** %12, align 8
  %97 = load i32, i32* %18, align 4
  %98 = load i32, i32* %9, align 4
  %99 = mul nsw i32 %97, %98
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds i8, i8* %96, i64 %100
  %102 = load i32, i32* %19, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds i8, i8* %101, i64 %103
  %105 = icmp eq i8* %95, %104
  %106 = zext i1 %105 to i32
  %107 = call i32 @assert(i32 %106)
  store i32 1, i32* %22, align 4
  br label %108

108:                                              ; preds = %136, %94
  %109 = load i32, i32* %22, align 4
  %110 = icmp slt i32 %109, 128
  br i1 %110, label %111, label %117

111:                                              ; preds = %108
  %112 = load i32, i32* %19, align 4
  %113 = load i32, i32* %22, align 4
  %114 = add nsw i32 %112, %113
  %115 = load i32, i32* %20, align 4
  %116 = icmp slt i32 %114, %115
  br label %117

117:                                              ; preds = %111, %108
  %118 = phi i1 [ false, %108 ], [ %116, %111 ]
  br i1 %118, label %119, label %139

119:                                              ; preds = %117
  %120 = load i8*, i8** %17, align 8
  %121 = load i32, i32* %22, align 4
  %122 = sub nsw i32 %121, 1
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds i8, i8* %120, i64 %123
  %125 = load i8, i8* %124, align 1
  %126 = zext i8 %125 to i32
  %127 = load i8*, i8** %17, align 8
  %128 = load i32, i32* %22, align 4
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds i8, i8* %127, i64 %129
  %131 = load i8, i8* %130, align 1
  %132 = zext i8 %131 to i32
  %133 = icmp eq i32 %126, %132
  br i1 %133, label %134, label %135

134:                                              ; preds = %119
  br label %139

135:                                              ; preds = %119
  br label %136

136:                                              ; preds = %135
  %137 = load i32, i32* %22, align 4
  %138 = add nsw i32 %137, 1
  store i32 %138, i32* %22, align 4
  br label %108

139:                                              ; preds = %134, %117
  %140 = load i32, i32* %22, align 4
  %141 = icmp eq i32 %140, 1
  br i1 %141, label %142, label %188

142:                                              ; preds = %139
  store i32 1, i32* %23, align 4
  br label %143

143:                                              ; preds = %168, %142
  %144 = load i32, i32* %23, align 4
  %145 = icmp slt i32 %144, 128
  br i1 %145, label %146, label %152

146:                                              ; preds = %143
  %147 = load i32, i32* %19, align 4
  %148 = load i32, i32* %23, align 4
  %149 = add nsw i32 %147, %148
  %150 = load i32, i32* %20, align 4
  %151 = icmp slt i32 %149, %150
  br label %152

152:                                              ; preds = %146, %143
  %153 = phi i1 [ false, %143 ], [ %151, %146 ]
  br i1 %153, label %154, label %171

154:                                              ; preds = %152
  %155 = load i8*, i8** %17, align 8
  %156 = getelementptr inbounds i8, i8* %155, i64 0
  %157 = load i8, i8* %156, align 1
  %158 = zext i8 %157 to i32
  %159 = load i8*, i8** %17, align 8
  %160 = load i32, i32* %23, align 4
  %161 = sext i32 %160 to i64
  %162 = getelementptr inbounds i8, i8* %159, i64 %161
  %163 = load i8, i8* %162, align 1
  %164 = zext i8 %163 to i32
  %165 = icmp ne i32 %158, %164
  br i1 %165, label %166, label %167

166:                                              ; preds = %154
  br label %171

167:                                              ; preds = %154
  br label %168

168:                                              ; preds = %167
  %169 = load i32, i32* %23, align 4
  %170 = add nsw i32 %169, 1
  store i32 %170, i32* %23, align 4
  br label %143

171:                                              ; preds = %166, %152
  %172 = load i32*, i32** %7, align 8
  %173 = load i32*, i32** %14, align 8
  %174 = load i32, i32* %23, align 4
  %175 = sub nsw i32 %174, 1
  %176 = call i32 @fz_write_byte(i32* %172, i32* %173, i32 %175)
  %177 = load i32*, i32** %7, align 8
  %178 = load i32*, i32** %14, align 8
  %179 = load i8*, i8** %17, align 8
  %180 = call i32 @fz_write_data(i32* %177, i32* %178, i8* %179, i32 1)
  %181 = load i32, i32* %23, align 4
  %182 = load i8*, i8** %17, align 8
  %183 = sext i32 %181 to i64
  %184 = getelementptr inbounds i8, i8* %182, i64 %183
  store i8* %184, i8** %17, align 8
  %185 = load i32, i32* %23, align 4
  %186 = load i32, i32* %19, align 4
  %187 = add nsw i32 %186, %185
  store i32 %187, i32* %19, align 4
  br label %206

188:                                              ; preds = %139
  %189 = load i32*, i32** %7, align 8
  %190 = load i32*, i32** %14, align 8
  %191 = load i32, i32* %22, align 4
  %192 = sub nsw i32 257, %191
  %193 = call i32 @fz_write_byte(i32* %189, i32* %190, i32 %192)
  %194 = load i32*, i32** %7, align 8
  %195 = load i32*, i32** %14, align 8
  %196 = load i8*, i8** %17, align 8
  %197 = load i32, i32* %22, align 4
  %198 = call i32 @fz_write_data(i32* %194, i32* %195, i8* %196, i32 %197)
  %199 = load i32, i32* %22, align 4
  %200 = load i8*, i8** %17, align 8
  %201 = sext i32 %199 to i64
  %202 = getelementptr inbounds i8, i8* %200, i64 %201
  store i8* %202, i8** %17, align 8
  %203 = load i32, i32* %22, align 4
  %204 = load i32, i32* %19, align 4
  %205 = add nsw i32 %204, %203
  store i32 %205, i32* %19, align 4
  br label %206

206:                                              ; preds = %188, %171
  br label %90

207:                                              ; preds = %90
  %208 = load i32, i32* %9, align 4
  %209 = load i32, i32* %21, align 4
  %210 = mul nsw i32 %208, %209
  %211 = load i32, i32* %20, align 4
  %212 = sub nsw i32 %210, %211
  %213 = load i8*, i8** %17, align 8
  %214 = sext i32 %212 to i64
  %215 = getelementptr inbounds i8, i8* %213, i64 %214
  store i8* %215, i8** %17, align 8
  %216 = load i32, i32* %21, align 4
  %217 = load i32, i32* %18, align 4
  %218 = add nsw i32 %217, %216
  store i32 %218, i32* %18, align 4
  br label %42

219:                                              ; preds = %42
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @memcmp(i8*, i8*, i32) #1

declare dso_local i32 @fz_write_byte(i32*, i32*, i32) #1

declare dso_local i32 @fz_write_data(i32*, i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
