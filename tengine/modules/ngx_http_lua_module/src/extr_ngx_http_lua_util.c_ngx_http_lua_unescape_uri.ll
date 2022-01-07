; ModuleID = '/home/carl/AnghaBench/tengine/modules/ngx_http_lua_module/src/extr_ngx_http_lua_util.c_ngx_http_lua_unescape_uri.c'
source_filename = "/home/carl/AnghaBench/tengine/modules/ngx_http_lua_module/src/extr_ngx_http_lua_util.c_ngx_http_lua_unescape_uri.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@NGX_UNESCAPE_URI = common dso_local global i32 0, align 4
@NGX_UNESCAPE_REDIRECT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ngx_http_lua_unescape_uri(i8** %0, i8** %1, i64 %2, i32 %3) #0 {
  %5 = alloca i8**, align 8
  %6 = alloca i8**, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8, align 1
  %12 = alloca i8, align 1
  %13 = alloca i8, align 1
  %14 = alloca i32, align 4
  store i8** %0, i8*** %5, align 8
  store i8** %1, i8*** %6, align 8
  store i64 %2, i64* %7, align 8
  store i32 %3, i32* %8, align 4
  %15 = load i8**, i8*** %5, align 8
  %16 = load i8*, i8** %15, align 8
  store i8* %16, i8** %9, align 8
  %17 = load i8**, i8*** %6, align 8
  %18 = load i8*, i8** %17, align 8
  store i8* %18, i8** %10, align 8
  store i32 0, i32* %14, align 4
  store i8 0, i8* %13, align 1
  br label %19

19:                                               ; preds = %225, %4
  %20 = load i64, i64* %7, align 8
  %21 = add i64 %20, -1
  store i64 %21, i64* %7, align 8
  %22 = icmp ne i64 %20, 0
  br i1 %22, label %23, label %226

23:                                               ; preds = %19
  %24 = load i8*, i8** %10, align 8
  %25 = getelementptr inbounds i8, i8* %24, i32 1
  store i8* %25, i8** %10, align 8
  %26 = load i8, i8* %24, align 1
  store i8 %26, i8* %11, align 1
  %27 = load i32, i32* %14, align 4
  switch i32 %27, label %225 [
    i32 0, label %28
    i32 1, label %59
    i32 2, label %94
  ]

28:                                               ; preds = %23
  %29 = load i8, i8* %11, align 1
  %30 = sext i8 %29 to i32
  %31 = icmp eq i32 %30, 63
  br i1 %31, label %32, label %43

32:                                               ; preds = %28
  %33 = load i32, i32* %8, align 4
  %34 = load i32, i32* @NGX_UNESCAPE_URI, align 4
  %35 = load i32, i32* @NGX_UNESCAPE_REDIRECT, align 4
  %36 = or i32 %34, %35
  %37 = and i32 %33, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %43

39:                                               ; preds = %32
  %40 = load i8, i8* %11, align 1
  %41 = load i8*, i8** %9, align 8
  %42 = getelementptr inbounds i8, i8* %41, i32 1
  store i8* %42, i8** %9, align 8
  store i8 %40, i8* %41, align 1
  br label %227

43:                                               ; preds = %32, %28
  %44 = load i8, i8* %11, align 1
  %45 = sext i8 %44 to i32
  %46 = icmp eq i32 %45, 37
  br i1 %46, label %47, label %48

47:                                               ; preds = %43
  store i32 1, i32* %14, align 4
  br label %225

48:                                               ; preds = %43
  %49 = load i8, i8* %11, align 1
  %50 = sext i8 %49 to i32
  %51 = icmp eq i32 %50, 43
  br i1 %51, label %52, label %55

52:                                               ; preds = %48
  %53 = load i8*, i8** %9, align 8
  %54 = getelementptr inbounds i8, i8* %53, i32 1
  store i8* %54, i8** %9, align 8
  store i8 32, i8* %53, align 1
  br label %225

55:                                               ; preds = %48
  %56 = load i8, i8* %11, align 1
  %57 = load i8*, i8** %9, align 8
  %58 = getelementptr inbounds i8, i8* %57, i32 1
  store i8* %58, i8** %9, align 8
  store i8 %56, i8* %57, align 1
  br label %225

59:                                               ; preds = %23
  %60 = load i8, i8* %11, align 1
  %61 = sext i8 %60 to i32
  %62 = icmp sge i32 %61, 48
  br i1 %62, label %63, label %72

63:                                               ; preds = %59
  %64 = load i8, i8* %11, align 1
  %65 = sext i8 %64 to i32
  %66 = icmp sle i32 %65, 57
  br i1 %66, label %67, label %72

67:                                               ; preds = %63
  %68 = load i8, i8* %11, align 1
  %69 = sext i8 %68 to i32
  %70 = sub nsw i32 %69, 48
  %71 = trunc i32 %70 to i8
  store i8 %71, i8* %13, align 1
  store i32 2, i32* %14, align 4
  br label %225

72:                                               ; preds = %63, %59
  %73 = load i8, i8* %11, align 1
  %74 = sext i8 %73 to i32
  %75 = or i32 %74, 32
  %76 = trunc i32 %75 to i8
  store i8 %76, i8* %12, align 1
  %77 = load i8, i8* %12, align 1
  %78 = sext i8 %77 to i32
  %79 = icmp sge i32 %78, 97
  br i1 %79, label %80, label %90

80:                                               ; preds = %72
  %81 = load i8, i8* %12, align 1
  %82 = sext i8 %81 to i32
  %83 = icmp sle i32 %82, 102
  br i1 %83, label %84, label %90

84:                                               ; preds = %80
  %85 = load i8, i8* %12, align 1
  %86 = sext i8 %85 to i32
  %87 = sub nsw i32 %86, 97
  %88 = add nsw i32 %87, 10
  %89 = trunc i32 %88 to i8
  store i8 %89, i8* %13, align 1
  store i32 2, i32* %14, align 4
  br label %225

90:                                               ; preds = %80, %72
  store i32 0, i32* %14, align 4
  %91 = load i8, i8* %11, align 1
  %92 = load i8*, i8** %9, align 8
  %93 = getelementptr inbounds i8, i8* %92, i32 1
  store i8* %93, i8** %9, align 8
  store i8 %91, i8* %92, align 1
  br label %225

94:                                               ; preds = %23
  store i32 0, i32* %14, align 4
  %95 = load i8, i8* %11, align 1
  %96 = sext i8 %95 to i32
  %97 = icmp sge i32 %96, 48
  br i1 %97, label %98, label %144

98:                                               ; preds = %94
  %99 = load i8, i8* %11, align 1
  %100 = sext i8 %99 to i32
  %101 = icmp sle i32 %100, 57
  br i1 %101, label %102, label %144

102:                                              ; preds = %98
  %103 = load i8, i8* %13, align 1
  %104 = sext i8 %103 to i32
  %105 = shl i32 %104, 4
  %106 = load i8, i8* %11, align 1
  %107 = sext i8 %106 to i32
  %108 = add nsw i32 %105, %107
  %109 = sub nsw i32 %108, 48
  %110 = trunc i32 %109 to i8
  store i8 %110, i8* %11, align 1
  %111 = load i32, i32* %8, align 4
  %112 = load i32, i32* @NGX_UNESCAPE_REDIRECT, align 4
  %113 = and i32 %111, %112
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %140

115:                                              ; preds = %102
  %116 = load i8, i8* %11, align 1
  %117 = sext i8 %116 to i32
  %118 = icmp sgt i32 %117, 37
  br i1 %118, label %119, label %127

119:                                              ; preds = %115
  %120 = load i8, i8* %11, align 1
  %121 = sext i8 %120 to i32
  %122 = icmp slt i32 %121, 127
  br i1 %122, label %123, label %127

123:                                              ; preds = %119
  %124 = load i8, i8* %11, align 1
  %125 = load i8*, i8** %9, align 8
  %126 = getelementptr inbounds i8, i8* %125, i32 1
  store i8* %126, i8** %9, align 8
  store i8 %124, i8* %125, align 1
  br label %225

127:                                              ; preds = %119, %115
  %128 = load i8*, i8** %9, align 8
  %129 = getelementptr inbounds i8, i8* %128, i32 1
  store i8* %129, i8** %9, align 8
  store i8 37, i8* %128, align 1
  %130 = load i8*, i8** %10, align 8
  %131 = getelementptr inbounds i8, i8* %130, i64 -2
  %132 = load i8, i8* %131, align 1
  %133 = load i8*, i8** %9, align 8
  %134 = getelementptr inbounds i8, i8* %133, i32 1
  store i8* %134, i8** %9, align 8
  store i8 %132, i8* %133, align 1
  %135 = load i8*, i8** %10, align 8
  %136 = getelementptr inbounds i8, i8* %135, i64 -1
  %137 = load i8, i8* %136, align 1
  %138 = load i8*, i8** %9, align 8
  %139 = getelementptr inbounds i8, i8* %138, i32 1
  store i8* %139, i8** %9, align 8
  store i8 %137, i8* %138, align 1
  br label %225

140:                                              ; preds = %102
  %141 = load i8, i8* %11, align 1
  %142 = load i8*, i8** %9, align 8
  %143 = getelementptr inbounds i8, i8* %142, i32 1
  store i8* %143, i8** %9, align 8
  store i8 %141, i8* %142, align 1
  br label %225

144:                                              ; preds = %98, %94
  %145 = load i8, i8* %11, align 1
  %146 = sext i8 %145 to i32
  %147 = or i32 %146, 32
  %148 = trunc i32 %147 to i8
  store i8 %148, i8* %12, align 1
  %149 = load i8, i8* %12, align 1
  %150 = sext i8 %149 to i32
  %151 = icmp sge i32 %150, 97
  br i1 %151, label %152, label %224

152:                                              ; preds = %144
  %153 = load i8, i8* %12, align 1
  %154 = sext i8 %153 to i32
  %155 = icmp sle i32 %154, 102
  br i1 %155, label %156, label %224

156:                                              ; preds = %152
  %157 = load i8, i8* %13, align 1
  %158 = sext i8 %157 to i32
  %159 = shl i32 %158, 4
  %160 = load i8, i8* %12, align 1
  %161 = sext i8 %160 to i32
  %162 = add nsw i32 %159, %161
  %163 = sub nsw i32 %162, 97
  %164 = add nsw i32 %163, 10
  %165 = trunc i32 %164 to i8
  store i8 %165, i8* %11, align 1
  %166 = load i32, i32* %8, align 4
  %167 = load i32, i32* @NGX_UNESCAPE_URI, align 4
  %168 = and i32 %166, %167
  %169 = icmp ne i32 %168, 0
  br i1 %169, label %170, label %182

170:                                              ; preds = %156
  %171 = load i8, i8* %11, align 1
  %172 = sext i8 %171 to i32
  %173 = icmp eq i32 %172, 63
  br i1 %173, label %174, label %178

174:                                              ; preds = %170
  %175 = load i8, i8* %11, align 1
  %176 = load i8*, i8** %9, align 8
  %177 = getelementptr inbounds i8, i8* %176, i32 1
  store i8* %177, i8** %9, align 8
  store i8 %175, i8* %176, align 1
  br label %227

178:                                              ; preds = %170
  %179 = load i8, i8* %11, align 1
  %180 = load i8*, i8** %9, align 8
  %181 = getelementptr inbounds i8, i8* %180, i32 1
  store i8* %181, i8** %9, align 8
  store i8 %179, i8* %180, align 1
  br label %225

182:                                              ; preds = %156
  %183 = load i32, i32* %8, align 4
  %184 = load i32, i32* @NGX_UNESCAPE_REDIRECT, align 4
  %185 = and i32 %183, %184
  %186 = icmp ne i32 %185, 0
  br i1 %186, label %187, label %220

187:                                              ; preds = %182
  %188 = load i8, i8* %11, align 1
  %189 = sext i8 %188 to i32
  %190 = icmp eq i32 %189, 63
  br i1 %190, label %191, label %195

191:                                              ; preds = %187
  %192 = load i8, i8* %11, align 1
  %193 = load i8*, i8** %9, align 8
  %194 = getelementptr inbounds i8, i8* %193, i32 1
  store i8* %194, i8** %9, align 8
  store i8 %192, i8* %193, align 1
  br label %227

195:                                              ; preds = %187
  %196 = load i8, i8* %11, align 1
  %197 = sext i8 %196 to i32
  %198 = icmp sgt i32 %197, 37
  br i1 %198, label %199, label %207

199:                                              ; preds = %195
  %200 = load i8, i8* %11, align 1
  %201 = sext i8 %200 to i32
  %202 = icmp slt i32 %201, 127
  br i1 %202, label %203, label %207

203:                                              ; preds = %199
  %204 = load i8, i8* %11, align 1
  %205 = load i8*, i8** %9, align 8
  %206 = getelementptr inbounds i8, i8* %205, i32 1
  store i8* %206, i8** %9, align 8
  store i8 %204, i8* %205, align 1
  br label %225

207:                                              ; preds = %199, %195
  %208 = load i8*, i8** %9, align 8
  %209 = getelementptr inbounds i8, i8* %208, i32 1
  store i8* %209, i8** %9, align 8
  store i8 37, i8* %208, align 1
  %210 = load i8*, i8** %10, align 8
  %211 = getelementptr inbounds i8, i8* %210, i64 -2
  %212 = load i8, i8* %211, align 1
  %213 = load i8*, i8** %9, align 8
  %214 = getelementptr inbounds i8, i8* %213, i32 1
  store i8* %214, i8** %9, align 8
  store i8 %212, i8* %213, align 1
  %215 = load i8*, i8** %10, align 8
  %216 = getelementptr inbounds i8, i8* %215, i64 -1
  %217 = load i8, i8* %216, align 1
  %218 = load i8*, i8** %9, align 8
  %219 = getelementptr inbounds i8, i8* %218, i32 1
  store i8* %219, i8** %9, align 8
  store i8 %217, i8* %218, align 1
  br label %225

220:                                              ; preds = %182
  %221 = load i8, i8* %11, align 1
  %222 = load i8*, i8** %9, align 8
  %223 = getelementptr inbounds i8, i8* %222, i32 1
  store i8* %223, i8** %9, align 8
  store i8 %221, i8* %222, align 1
  br label %225

224:                                              ; preds = %152, %144
  br label %225

225:                                              ; preds = %23, %224, %220, %207, %203, %178, %140, %127, %123, %90, %84, %67, %55, %52, %47
  br label %19

226:                                              ; preds = %19
  br label %227

227:                                              ; preds = %226, %191, %174, %39
  %228 = load i8*, i8** %9, align 8
  %229 = load i8**, i8*** %5, align 8
  store i8* %228, i8** %229, align 8
  %230 = load i8*, i8** %10, align 8
  %231 = load i8**, i8*** %6, align 8
  store i8* %230, i8** %231, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
