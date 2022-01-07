; ModuleID = '/home/carl/AnghaBench/streem/src/extr_value.c_strm_inspect.c'
source_filename = "/home/carl/AnghaBench/streem/src/extr_value.c_strm_inspect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@STRM_NG = common dso_local global i64 0, align 8
@strm_str_null = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @strm_inspect(i32 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %17 = load i32, i32* %3, align 4
  %18 = call i64 @strm_string_p(i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %27

20:                                               ; preds = %1
  %21 = load i32, i32* %3, align 4
  %22 = call i64 @strm_value_str(i32 %21)
  store i64 %22, i64* %4, align 8
  %23 = load i64, i64* %4, align 8
  %24 = load i64, i64* %4, align 8
  %25 = call i32 @str_dump_len(i64 %24)
  %26 = call i64 @str_dump(i64 %23, i32 %25)
  store i64 %26, i64* %2, align 8
  br label %244

27:                                               ; preds = %1
  %28 = load i32, i32* %3, align 4
  %29 = call i64 @strm_array_p(i32 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %241

31:                                               ; preds = %27
  %32 = load i32, i32* %3, align 4
  %33 = call i32* @strm_ary_ns(i32 %32)
  store i32* %33, i32** %5, align 8
  %34 = call i8* @malloc(i32 32)
  store i8* %34, i8** %6, align 8
  store i32 0, i32* %8, align 4
  store i32 32, i32* %9, align 4
  %35 = load i32, i32* %3, align 4
  %36 = call i64 @strm_value_ary(i32 %35)
  store i64 %36, i64* %10, align 8
  %37 = load i8*, i8** %6, align 8
  %38 = icmp eq i8* %37, null
  br i1 %38, label %39, label %41

39:                                               ; preds = %31
  %40 = load i64, i64* @STRM_NG, align 8
  store i64 %40, i64* %2, align 8
  br label %244

41:                                               ; preds = %31
  %42 = load i8*, i8** %6, align 8
  %43 = load i32, i32* %8, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %8, align 4
  %45 = sext i32 %43 to i64
  %46 = getelementptr inbounds i8, i8* %42, i64 %45
  store i8 91, i8* %46, align 1
  %47 = load i32*, i32** %5, align 8
  %48 = icmp ne i32* %47, null
  br i1 %48, label %49, label %106

49:                                               ; preds = %41
  %50 = load i32*, i32** %5, align 8
  %51 = call i64 @strm_ns_name(i32* %50)
  store i64 %51, i64* %11, align 8
  %52 = load i64, i64* %11, align 8
  %53 = call i32 @strm_str_len(i64 %52)
  store i32 %53, i32* %12, align 4
  %54 = load i64, i64* %11, align 8
  %55 = load i64, i64* @strm_str_null, align 8
  %56 = icmp ne i64 %54, %55
  br i1 %56, label %57, label %105

57:                                               ; preds = %49
  %58 = load i8*, i8** %6, align 8
  %59 = load i32, i32* %8, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %8, align 4
  %61 = sext i32 %59 to i64
  %62 = getelementptr inbounds i8, i8* %58, i64 %61
  store i8 64, i8* %62, align 1
  %63 = load i32, i32* %8, align 4
  %64 = load i32, i32* %12, align 4
  %65 = add nsw i32 %63, %64
  %66 = add nsw i32 %65, 2
  %67 = load i32, i32* %9, align 4
  %68 = icmp sgt i32 %66, %67
  br i1 %68, label %69, label %83

69:                                               ; preds = %57
  %70 = load i32, i32* %9, align 4
  %71 = mul nsw i32 %70, 2
  store i32 %71, i32* %9, align 4
  %72 = load i8*, i8** %6, align 8
  %73 = load i32, i32* %9, align 4
  %74 = call i8* @realloc(i8* %72, i32 %73)
  store i8* %74, i8** %13, align 8
  %75 = load i8*, i8** %13, align 8
  %76 = icmp eq i8* %75, null
  br i1 %76, label %77, label %81

77:                                               ; preds = %69
  %78 = load i8*, i8** %6, align 8
  %79 = call i32 @free(i8* %78)
  %80 = load i64, i64* @STRM_NG, align 8
  store i64 %80, i64* %2, align 8
  br label %244

81:                                               ; preds = %69
  %82 = load i8*, i8** %13, align 8
  store i8* %82, i8** %6, align 8
  br label %83

83:                                               ; preds = %81, %57
  %84 = load i8*, i8** %6, align 8
  %85 = load i32, i32* %8, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds i8, i8* %84, i64 %86
  %88 = load i64, i64* %11, align 8
  %89 = call i32 @strm_str_ptr(i64 %88)
  %90 = load i32, i32* %12, align 4
  %91 = call i32 @memcpy(i8* %87, i32 %89, i32 %90)
  %92 = load i32, i32* %12, align 4
  %93 = load i32, i32* %8, align 4
  %94 = add nsw i32 %93, %92
  store i32 %94, i32* %8, align 4
  %95 = load i64, i64* %10, align 8
  %96 = call i32 @strm_ary_len(i64 %95)
  %97 = icmp sgt i32 %96, 0
  br i1 %97, label %98, label %104

98:                                               ; preds = %83
  %99 = load i8*, i8** %6, align 8
  %100 = load i32, i32* %8, align 4
  %101 = add nsw i32 %100, 1
  store i32 %101, i32* %8, align 4
  %102 = sext i32 %100 to i64
  %103 = getelementptr inbounds i8, i8* %99, i64 %102
  store i8 32, i8* %103, align 1
  br label %104

104:                                              ; preds = %98, %83
  br label %105

105:                                              ; preds = %104, %49
  br label %106

106:                                              ; preds = %105, %41
  store i32 0, i32* %7, align 4
  br label %107

107:                                              ; preds = %229, %106
  %108 = load i32, i32* %7, align 4
  %109 = load i64, i64* %10, align 8
  %110 = call i32 @strm_ary_len(i64 %109)
  %111 = icmp slt i32 %108, %110
  br i1 %111, label %112, label %232

112:                                              ; preds = %107
  %113 = load i64, i64* %10, align 8
  %114 = call i32* @strm_ary_ptr(i64 %113)
  %115 = load i32, i32* %7, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds i32, i32* %114, i64 %116
  %118 = load i32, i32* %117, align 4
  %119 = call i64 @strm_inspect(i32 %118)
  store i64 %119, i64* %14, align 8
  %120 = load i64, i64* %10, align 8
  %121 = call i64 @strm_ary_headers(i64 %120)
  %122 = icmp ne i64 %121, 0
  br i1 %122, label %123, label %142

123:                                              ; preds = %112
  %124 = load i64, i64* %10, align 8
  %125 = call i64 @strm_ary_headers(i64 %124)
  %126 = call i32* @strm_ary_ptr(i64 %125)
  %127 = load i32, i32* %7, align 4
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds i32, i32* %126, i64 %128
  %130 = load i32, i32* %129, align 4
  %131 = call i64 @strm_string_p(i32 %130)
  %132 = icmp ne i64 %131, 0
  br i1 %132, label %133, label %142

133:                                              ; preds = %123
  %134 = load i64, i64* %10, align 8
  %135 = call i64 @strm_ary_headers(i64 %134)
  %136 = call i32* @strm_ary_ptr(i64 %135)
  %137 = load i32, i32* %7, align 4
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds i32, i32* %136, i64 %138
  %140 = load i32, i32* %139, align 4
  %141 = call i64 @strm_value_str(i32 %140)
  br label %144

142:                                              ; preds = %123, %112
  %143 = load i64, i64* @strm_str_null, align 8
  br label %144

144:                                              ; preds = %142, %133
  %145 = phi i64 [ %141, %133 ], [ %143, %142 ]
  store i64 %145, i64* %15, align 8
  %146 = load i64, i64* %15, align 8
  %147 = icmp ne i64 %146, 0
  br i1 %147, label %148, label %152

148:                                              ; preds = %144
  %149 = load i64, i64* %15, align 8
  %150 = call i32 @strm_str_len(i64 %149)
  %151 = add nsw i32 %150, 1
  br label %153

152:                                              ; preds = %144
  br label %153

153:                                              ; preds = %152, %148
  %154 = phi i32 [ %151, %148 ], [ 0, %152 ]
  %155 = load i64, i64* %14, align 8
  %156 = call i32 @strm_str_len(i64 %155)
  %157 = add nsw i32 %154, %156
  %158 = add nsw i32 %157, 3
  store i32 %158, i32* %16, align 4
  %159 = load i32, i32* %8, align 4
  %160 = load i32, i32* %16, align 4
  %161 = add nsw i32 %159, %160
  %162 = load i32, i32* %9, align 4
  %163 = icmp sgt i32 %161, %162
  br i1 %163, label %164, label %170

164:                                              ; preds = %153
  %165 = load i32, i32* %9, align 4
  %166 = mul nsw i32 %165, 2
  store i32 %166, i32* %9, align 4
  %167 = load i8*, i8** %6, align 8
  %168 = load i32, i32* %9, align 4
  %169 = call i8* @realloc(i8* %167, i32 %168)
  store i8* %169, i8** %6, align 8
  br label %170

170:                                              ; preds = %164, %153
  %171 = load i32, i32* %7, align 4
  %172 = icmp sgt i32 %171, 0
  br i1 %172, label %173, label %184

173:                                              ; preds = %170
  %174 = load i8*, i8** %6, align 8
  %175 = load i32, i32* %8, align 4
  %176 = add nsw i32 %175, 1
  store i32 %176, i32* %8, align 4
  %177 = sext i32 %175 to i64
  %178 = getelementptr inbounds i8, i8* %174, i64 %177
  store i8 44, i8* %178, align 1
  %179 = load i8*, i8** %6, align 8
  %180 = load i32, i32* %8, align 4
  %181 = add nsw i32 %180, 1
  store i32 %181, i32* %8, align 4
  %182 = sext i32 %180 to i64
  %183 = getelementptr inbounds i8, i8* %179, i64 %182
  store i8 32, i8* %183, align 1
  br label %184

184:                                              ; preds = %173, %170
  %185 = load i64, i64* %15, align 8
  %186 = icmp ne i64 %185, 0
  br i1 %186, label %187, label %215

187:                                              ; preds = %184
  %188 = load i64, i64* %15, align 8
  %189 = call i32 @str_symbol_p(i64 %188)
  %190 = icmp ne i32 %189, 0
  br i1 %190, label %196, label %191

191:                                              ; preds = %187
  %192 = load i64, i64* %15, align 8
  %193 = load i64, i64* %15, align 8
  %194 = call i32 @str_dump_len(i64 %193)
  %195 = call i64 @str_dump(i64 %192, i32 %194)
  store i64 %195, i64* %15, align 8
  br label %196

196:                                              ; preds = %191, %187
  %197 = load i8*, i8** %6, align 8
  %198 = load i32, i32* %8, align 4
  %199 = sext i32 %198 to i64
  %200 = getelementptr inbounds i8, i8* %197, i64 %199
  %201 = load i64, i64* %15, align 8
  %202 = call i32 @strm_str_ptr(i64 %201)
  %203 = load i64, i64* %15, align 8
  %204 = call i32 @strm_str_len(i64 %203)
  %205 = call i32 @memcpy(i8* %200, i32 %202, i32 %204)
  %206 = load i64, i64* %15, align 8
  %207 = call i32 @strm_str_len(i64 %206)
  %208 = load i32, i32* %8, align 4
  %209 = add nsw i32 %208, %207
  store i32 %209, i32* %8, align 4
  %210 = load i8*, i8** %6, align 8
  %211 = load i32, i32* %8, align 4
  %212 = add nsw i32 %211, 1
  store i32 %212, i32* %8, align 4
  %213 = sext i32 %211 to i64
  %214 = getelementptr inbounds i8, i8* %210, i64 %213
  store i8 58, i8* %214, align 1
  br label %215

215:                                              ; preds = %196, %184
  %216 = load i8*, i8** %6, align 8
  %217 = load i32, i32* %8, align 4
  %218 = sext i32 %217 to i64
  %219 = getelementptr inbounds i8, i8* %216, i64 %218
  %220 = load i64, i64* %14, align 8
  %221 = call i32 @strm_str_ptr(i64 %220)
  %222 = load i64, i64* %14, align 8
  %223 = call i32 @strm_str_len(i64 %222)
  %224 = call i32 @memcpy(i8* %219, i32 %221, i32 %223)
  %225 = load i64, i64* %14, align 8
  %226 = call i32 @strm_str_len(i64 %225)
  %227 = load i32, i32* %8, align 4
  %228 = add nsw i32 %227, %226
  store i32 %228, i32* %8, align 4
  br label %229

229:                                              ; preds = %215
  %230 = load i32, i32* %7, align 4
  %231 = add nsw i32 %230, 1
  store i32 %231, i32* %7, align 4
  br label %107

232:                                              ; preds = %107
  %233 = load i8*, i8** %6, align 8
  %234 = load i32, i32* %8, align 4
  %235 = add nsw i32 %234, 1
  store i32 %235, i32* %8, align 4
  %236 = sext i32 %234 to i64
  %237 = getelementptr inbounds i8, i8* %233, i64 %236
  store i8 93, i8* %237, align 1
  %238 = load i8*, i8** %6, align 8
  %239 = load i32, i32* %8, align 4
  %240 = call i64 @strm_str_new(i8* %238, i32 %239)
  store i64 %240, i64* %2, align 8
  br label %244

241:                                              ; preds = %27
  %242 = load i32, i32* %3, align 4
  %243 = call i64 @strm_to_str(i32 %242)
  store i64 %243, i64* %2, align 8
  br label %244

244:                                              ; preds = %241, %232, %77, %39, %20
  %245 = load i64, i64* %2, align 8
  ret i64 %245
}

declare dso_local i64 @strm_string_p(i32) #1

declare dso_local i64 @strm_value_str(i32) #1

declare dso_local i64 @str_dump(i64, i32) #1

declare dso_local i32 @str_dump_len(i64) #1

declare dso_local i64 @strm_array_p(i32) #1

declare dso_local i32* @strm_ary_ns(i32) #1

declare dso_local i8* @malloc(i32) #1

declare dso_local i64 @strm_value_ary(i32) #1

declare dso_local i64 @strm_ns_name(i32*) #1

declare dso_local i32 @strm_str_len(i64) #1

declare dso_local i8* @realloc(i8*, i32) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @memcpy(i8*, i32, i32) #1

declare dso_local i32 @strm_str_ptr(i64) #1

declare dso_local i32 @strm_ary_len(i64) #1

declare dso_local i32* @strm_ary_ptr(i64) #1

declare dso_local i64 @strm_ary_headers(i64) #1

declare dso_local i32 @str_symbol_p(i64) #1

declare dso_local i64 @strm_str_new(i8*, i32) #1

declare dso_local i64 @strm_to_str(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
