; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/source/fitz/extr_output-pwg.c_pwg_write_band.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/source/fitz/extr_output-pwg.c_pwg_write_band.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32, i32, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*, i32, i32, i32, i8*)* @pwg_write_band to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pwg_write_band(i32* %0, i32* %1, i32 %2, i32 %3, i32 %4, i8* %5) #0 {
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
  %24 = alloca i32, align 4
  store i32* %0, i32** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i8* %5, i8** %12, align 8
  %25 = load i32*, i32** %8, align 8
  %26 = bitcast i32* %25 to %struct.TYPE_4__*
  store %struct.TYPE_4__* %26, %struct.TYPE_4__** %13, align 8
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 3
  %30 = load i32*, i32** %29, align 8
  store i32* %30, i32** %14, align 8
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  store i32 %34, i32* %15, align 4
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  store i32 %38, i32* %16, align 4
  %39 = load i8*, i8** %12, align 8
  store i8* %39, i8** %17, align 8
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 8
  store i32 %43, i32* %18, align 4
  %44 = load i32, i32* %15, align 4
  %45 = load i32, i32* %18, align 4
  %46 = mul nsw i32 %44, %45
  store i32 %46, i32* %19, align 4
  store i32 0, i32* %20, align 4
  br label %47

47:                                               ; preds = %225, %6
  %48 = load i32, i32* %20, align 4
  %49 = load i32, i32* %16, align 4
  %50 = icmp slt i32 %48, %49
  br i1 %50, label %51, label %236

51:                                               ; preds = %47
  %52 = load i8*, i8** %17, align 8
  %53 = load i8*, i8** %12, align 8
  %54 = load i32, i32* %20, align 4
  %55 = load i32, i32* %9, align 4
  %56 = mul nsw i32 %54, %55
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i8, i8* %53, i64 %57
  %59 = icmp eq i8* %52, %58
  %60 = zext i1 %59 to i32
  %61 = call i32 @assert(i32 %60)
  store i32 1, i32* %22, align 4
  br label %62

62:                                               ; preds = %86, %51
  %63 = load i32, i32* %22, align 4
  %64 = icmp slt i32 %63, 256
  br i1 %64, label %65, label %71

65:                                               ; preds = %62
  %66 = load i32, i32* %20, align 4
  %67 = load i32, i32* %22, align 4
  %68 = add nsw i32 %66, %67
  %69 = load i32, i32* %16, align 4
  %70 = icmp slt i32 %68, %69
  br label %71

71:                                               ; preds = %65, %62
  %72 = phi i1 [ false, %62 ], [ %70, %65 ]
  br i1 %72, label %73, label %89

73:                                               ; preds = %71
  %74 = load i8*, i8** %17, align 8
  %75 = load i8*, i8** %17, align 8
  %76 = load i32, i32* %22, align 4
  %77 = load i32, i32* %9, align 4
  %78 = mul nsw i32 %76, %77
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds i8, i8* %75, i64 %79
  %81 = load i32, i32* %19, align 4
  %82 = call i64 @memcmp(i8* %74, i8* %80, i32 %81)
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %85

84:                                               ; preds = %73
  br label %89

85:                                               ; preds = %73
  br label %86

86:                                               ; preds = %85
  %87 = load i32, i32* %22, align 4
  %88 = add nsw i32 %87, 1
  store i32 %88, i32* %22, align 4
  br label %62

89:                                               ; preds = %84, %71
  %90 = load i32*, i32** %7, align 8
  %91 = load i32*, i32** %14, align 8
  %92 = load i32, i32* %22, align 4
  %93 = sub nsw i32 %92, 1
  %94 = call i32 @fz_write_byte(i32* %90, i32* %91, i32 %93)
  store i32 0, i32* %21, align 4
  br label %95

95:                                               ; preds = %224, %89
  %96 = load i32, i32* %21, align 4
  %97 = load i32, i32* %15, align 4
  %98 = icmp slt i32 %96, %97
  br i1 %98, label %99, label %225

99:                                               ; preds = %95
  %100 = load i8*, i8** %17, align 8
  %101 = load i8*, i8** %12, align 8
  %102 = load i32, i32* %20, align 4
  %103 = load i32, i32* %9, align 4
  %104 = mul nsw i32 %102, %103
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds i8, i8* %101, i64 %105
  %107 = load i32, i32* %21, align 4
  %108 = load i32, i32* %18, align 4
  %109 = mul nsw i32 %107, %108
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds i8, i8* %106, i64 %110
  %112 = icmp eq i8* %100, %111
  %113 = zext i1 %112 to i32
  %114 = call i32 @assert(i32 %113)
  store i32 1, i32* %23, align 4
  br label %115

115:                                              ; preds = %145, %99
  %116 = load i32, i32* %23, align 4
  %117 = icmp slt i32 %116, 128
  br i1 %117, label %118, label %124

118:                                              ; preds = %115
  %119 = load i32, i32* %21, align 4
  %120 = load i32, i32* %23, align 4
  %121 = add nsw i32 %119, %120
  %122 = load i32, i32* %15, align 4
  %123 = icmp slt i32 %121, %122
  br label %124

124:                                              ; preds = %118, %115
  %125 = phi i1 [ false, %115 ], [ %123, %118 ]
  br i1 %125, label %126, label %148

126:                                              ; preds = %124
  %127 = load i8*, i8** %17, align 8
  %128 = load i32, i32* %23, align 4
  %129 = sub nsw i32 %128, 1
  %130 = load i32, i32* %18, align 4
  %131 = mul nsw i32 %129, %130
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds i8, i8* %127, i64 %132
  %134 = load i8*, i8** %17, align 8
  %135 = load i32, i32* %23, align 4
  %136 = load i32, i32* %18, align 4
  %137 = mul nsw i32 %135, %136
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds i8, i8* %134, i64 %138
  %140 = load i32, i32* %18, align 4
  %141 = call i64 @memcmp(i8* %133, i8* %139, i32 %140)
  %142 = icmp eq i64 %141, 0
  br i1 %142, label %143, label %144

143:                                              ; preds = %126
  br label %148

144:                                              ; preds = %126
  br label %145

145:                                              ; preds = %144
  %146 = load i32, i32* %23, align 4
  %147 = add nsw i32 %146, 1
  store i32 %147, i32* %23, align 4
  br label %115

148:                                              ; preds = %143, %124
  %149 = load i32, i32* %23, align 4
  %150 = icmp eq i32 %149, 1
  br i1 %150, label %151, label %199

151:                                              ; preds = %148
  store i32 1, i32* %24, align 4
  br label %152

152:                                              ; preds = %176, %151
  %153 = load i32, i32* %24, align 4
  %154 = icmp slt i32 %153, 128
  br i1 %154, label %155, label %161

155:                                              ; preds = %152
  %156 = load i32, i32* %21, align 4
  %157 = load i32, i32* %24, align 4
  %158 = add nsw i32 %156, %157
  %159 = load i32, i32* %15, align 4
  %160 = icmp slt i32 %158, %159
  br label %161

161:                                              ; preds = %155, %152
  %162 = phi i1 [ false, %152 ], [ %160, %155 ]
  br i1 %162, label %163, label %179

163:                                              ; preds = %161
  %164 = load i8*, i8** %17, align 8
  %165 = load i8*, i8** %17, align 8
  %166 = load i32, i32* %24, align 4
  %167 = load i32, i32* %18, align 4
  %168 = mul nsw i32 %166, %167
  %169 = sext i32 %168 to i64
  %170 = getelementptr inbounds i8, i8* %165, i64 %169
  %171 = load i32, i32* %18, align 4
  %172 = call i64 @memcmp(i8* %164, i8* %170, i32 %171)
  %173 = icmp ne i64 %172, 0
  br i1 %173, label %174, label %175

174:                                              ; preds = %163
  br label %179

175:                                              ; preds = %163
  br label %176

176:                                              ; preds = %175
  %177 = load i32, i32* %24, align 4
  %178 = add nsw i32 %177, 1
  store i32 %178, i32* %24, align 4
  br label %152

179:                                              ; preds = %174, %161
  %180 = load i32*, i32** %7, align 8
  %181 = load i32*, i32** %14, align 8
  %182 = load i32, i32* %24, align 4
  %183 = sub nsw i32 %182, 1
  %184 = call i32 @fz_write_byte(i32* %180, i32* %181, i32 %183)
  %185 = load i32*, i32** %7, align 8
  %186 = load i32*, i32** %14, align 8
  %187 = load i8*, i8** %17, align 8
  %188 = load i32, i32* %18, align 4
  %189 = call i32 @fz_write_data(i32* %185, i32* %186, i8* %187, i32 %188)
  %190 = load i32, i32* %18, align 4
  %191 = load i32, i32* %24, align 4
  %192 = mul nsw i32 %190, %191
  %193 = load i8*, i8** %17, align 8
  %194 = sext i32 %192 to i64
  %195 = getelementptr inbounds i8, i8* %193, i64 %194
  store i8* %195, i8** %17, align 8
  %196 = load i32, i32* %24, align 4
  %197 = load i32, i32* %21, align 4
  %198 = add nsw i32 %197, %196
  store i32 %198, i32* %21, align 4
  br label %224

199:                                              ; preds = %148
  %200 = load i32*, i32** %7, align 8
  %201 = load i32*, i32** %14, align 8
  %202 = load i32, i32* %23, align 4
  %203 = sub nsw i32 257, %202
  %204 = call i32 @fz_write_byte(i32* %200, i32* %201, i32 %203)
  %205 = load i32, i32* %23, align 4
  %206 = load i32, i32* %21, align 4
  %207 = add nsw i32 %206, %205
  store i32 %207, i32* %21, align 4
  br label %208

208:                                              ; preds = %211, %199
  %209 = load i32, i32* %23, align 4
  %210 = icmp sgt i32 %209, 0
  br i1 %210, label %211, label %223

211:                                              ; preds = %208
  %212 = load i32*, i32** %7, align 8
  %213 = load i32*, i32** %14, align 8
  %214 = load i8*, i8** %17, align 8
  %215 = load i32, i32* %18, align 4
  %216 = call i32 @fz_write_data(i32* %212, i32* %213, i8* %214, i32 %215)
  %217 = load i32, i32* %18, align 4
  %218 = load i8*, i8** %17, align 8
  %219 = sext i32 %217 to i64
  %220 = getelementptr inbounds i8, i8* %218, i64 %219
  store i8* %220, i8** %17, align 8
  %221 = load i32, i32* %23, align 4
  %222 = add nsw i32 %221, -1
  store i32 %222, i32* %23, align 4
  br label %208

223:                                              ; preds = %208
  br label %224

224:                                              ; preds = %223, %179
  br label %95

225:                                              ; preds = %95
  %226 = load i32, i32* %9, align 4
  %227 = load i32, i32* %22, align 4
  %228 = sub nsw i32 %227, 1
  %229 = mul nsw i32 %226, %228
  %230 = load i8*, i8** %17, align 8
  %231 = sext i32 %229 to i64
  %232 = getelementptr inbounds i8, i8* %230, i64 %231
  store i8* %232, i8** %17, align 8
  %233 = load i32, i32* %22, align 4
  %234 = load i32, i32* %20, align 4
  %235 = add nsw i32 %234, %233
  store i32 %235, i32* %20, align 4
  br label %47

236:                                              ; preds = %47
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
