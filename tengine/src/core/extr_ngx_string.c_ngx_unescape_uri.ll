; ModuleID = '/home/carl/AnghaBench/tengine/src/core/extr_ngx_string.c_ngx_unescape_uri.c'
source_filename = "/home/carl/AnghaBench/tengine/src/core/extr_ngx_string.c_ngx_unescape_uri.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@NGX_UNESCAPE_URI = common dso_local global i32 0, align 4
@NGX_UNESCAPE_REDIRECT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ngx_unescape_uri(i8** %0, i8** %1, i64 %2, i32 %3) #0 {
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

19:                                               ; preds = %218, %4
  %20 = load i64, i64* %7, align 8
  %21 = add i64 %20, -1
  store i64 %21, i64* %7, align 8
  %22 = icmp ne i64 %20, 0
  br i1 %22, label %23, label %219

23:                                               ; preds = %19
  %24 = load i8*, i8** %10, align 8
  %25 = getelementptr inbounds i8, i8* %24, i32 1
  store i8* %25, i8** %10, align 8
  %26 = load i8, i8* %24, align 1
  store i8 %26, i8* %11, align 1
  %27 = load i32, i32* %14, align 4
  switch i32 %27, label %218 [
    i32 0, label %28
    i32 1, label %52
    i32 2, label %87
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
  br label %220

43:                                               ; preds = %32, %28
  %44 = load i8, i8* %11, align 1
  %45 = sext i8 %44 to i32
  %46 = icmp eq i32 %45, 37
  br i1 %46, label %47, label %48

47:                                               ; preds = %43
  store i32 1, i32* %14, align 4
  br label %218

48:                                               ; preds = %43
  %49 = load i8, i8* %11, align 1
  %50 = load i8*, i8** %9, align 8
  %51 = getelementptr inbounds i8, i8* %50, i32 1
  store i8* %51, i8** %9, align 8
  store i8 %49, i8* %50, align 1
  br label %218

52:                                               ; preds = %23
  %53 = load i8, i8* %11, align 1
  %54 = sext i8 %53 to i32
  %55 = icmp sge i32 %54, 48
  br i1 %55, label %56, label %65

56:                                               ; preds = %52
  %57 = load i8, i8* %11, align 1
  %58 = sext i8 %57 to i32
  %59 = icmp sle i32 %58, 57
  br i1 %59, label %60, label %65

60:                                               ; preds = %56
  %61 = load i8, i8* %11, align 1
  %62 = sext i8 %61 to i32
  %63 = sub nsw i32 %62, 48
  %64 = trunc i32 %63 to i8
  store i8 %64, i8* %13, align 1
  store i32 2, i32* %14, align 4
  br label %218

65:                                               ; preds = %56, %52
  %66 = load i8, i8* %11, align 1
  %67 = sext i8 %66 to i32
  %68 = or i32 %67, 32
  %69 = trunc i32 %68 to i8
  store i8 %69, i8* %12, align 1
  %70 = load i8, i8* %12, align 1
  %71 = sext i8 %70 to i32
  %72 = icmp sge i32 %71, 97
  br i1 %72, label %73, label %83

73:                                               ; preds = %65
  %74 = load i8, i8* %12, align 1
  %75 = sext i8 %74 to i32
  %76 = icmp sle i32 %75, 102
  br i1 %76, label %77, label %83

77:                                               ; preds = %73
  %78 = load i8, i8* %12, align 1
  %79 = sext i8 %78 to i32
  %80 = sub nsw i32 %79, 97
  %81 = add nsw i32 %80, 10
  %82 = trunc i32 %81 to i8
  store i8 %82, i8* %13, align 1
  store i32 2, i32* %14, align 4
  br label %218

83:                                               ; preds = %73, %65
  store i32 0, i32* %14, align 4
  %84 = load i8, i8* %11, align 1
  %85 = load i8*, i8** %9, align 8
  %86 = getelementptr inbounds i8, i8* %85, i32 1
  store i8* %86, i8** %9, align 8
  store i8 %84, i8* %85, align 1
  br label %218

87:                                               ; preds = %23
  store i32 0, i32* %14, align 4
  %88 = load i8, i8* %11, align 1
  %89 = sext i8 %88 to i32
  %90 = icmp sge i32 %89, 48
  br i1 %90, label %91, label %137

91:                                               ; preds = %87
  %92 = load i8, i8* %11, align 1
  %93 = sext i8 %92 to i32
  %94 = icmp sle i32 %93, 57
  br i1 %94, label %95, label %137

95:                                               ; preds = %91
  %96 = load i8, i8* %13, align 1
  %97 = sext i8 %96 to i32
  %98 = shl i32 %97, 4
  %99 = load i8, i8* %11, align 1
  %100 = sext i8 %99 to i32
  %101 = sub nsw i32 %100, 48
  %102 = add nsw i32 %98, %101
  %103 = trunc i32 %102 to i8
  store i8 %103, i8* %11, align 1
  %104 = load i32, i32* %8, align 4
  %105 = load i32, i32* @NGX_UNESCAPE_REDIRECT, align 4
  %106 = and i32 %104, %105
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %133

108:                                              ; preds = %95
  %109 = load i8, i8* %11, align 1
  %110 = sext i8 %109 to i32
  %111 = icmp sgt i32 %110, 37
  br i1 %111, label %112, label %120

112:                                              ; preds = %108
  %113 = load i8, i8* %11, align 1
  %114 = sext i8 %113 to i32
  %115 = icmp slt i32 %114, 127
  br i1 %115, label %116, label %120

116:                                              ; preds = %112
  %117 = load i8, i8* %11, align 1
  %118 = load i8*, i8** %9, align 8
  %119 = getelementptr inbounds i8, i8* %118, i32 1
  store i8* %119, i8** %9, align 8
  store i8 %117, i8* %118, align 1
  br label %218

120:                                              ; preds = %112, %108
  %121 = load i8*, i8** %9, align 8
  %122 = getelementptr inbounds i8, i8* %121, i32 1
  store i8* %122, i8** %9, align 8
  store i8 37, i8* %121, align 1
  %123 = load i8*, i8** %10, align 8
  %124 = getelementptr inbounds i8, i8* %123, i64 -2
  %125 = load i8, i8* %124, align 1
  %126 = load i8*, i8** %9, align 8
  %127 = getelementptr inbounds i8, i8* %126, i32 1
  store i8* %127, i8** %9, align 8
  store i8 %125, i8* %126, align 1
  %128 = load i8*, i8** %10, align 8
  %129 = getelementptr inbounds i8, i8* %128, i64 -1
  %130 = load i8, i8* %129, align 1
  %131 = load i8*, i8** %9, align 8
  %132 = getelementptr inbounds i8, i8* %131, i32 1
  store i8* %132, i8** %9, align 8
  store i8 %130, i8* %131, align 1
  br label %218

133:                                              ; preds = %95
  %134 = load i8, i8* %11, align 1
  %135 = load i8*, i8** %9, align 8
  %136 = getelementptr inbounds i8, i8* %135, i32 1
  store i8* %136, i8** %9, align 8
  store i8 %134, i8* %135, align 1
  br label %218

137:                                              ; preds = %91, %87
  %138 = load i8, i8* %11, align 1
  %139 = sext i8 %138 to i32
  %140 = or i32 %139, 32
  %141 = trunc i32 %140 to i8
  store i8 %141, i8* %12, align 1
  %142 = load i8, i8* %12, align 1
  %143 = sext i8 %142 to i32
  %144 = icmp sge i32 %143, 97
  br i1 %144, label %145, label %217

145:                                              ; preds = %137
  %146 = load i8, i8* %12, align 1
  %147 = sext i8 %146 to i32
  %148 = icmp sle i32 %147, 102
  br i1 %148, label %149, label %217

149:                                              ; preds = %145
  %150 = load i8, i8* %13, align 1
  %151 = sext i8 %150 to i32
  %152 = shl i32 %151, 4
  %153 = load i8, i8* %12, align 1
  %154 = sext i8 %153 to i32
  %155 = sub nsw i32 %154, 97
  %156 = add nsw i32 %152, %155
  %157 = add nsw i32 %156, 10
  %158 = trunc i32 %157 to i8
  store i8 %158, i8* %11, align 1
  %159 = load i32, i32* %8, align 4
  %160 = load i32, i32* @NGX_UNESCAPE_URI, align 4
  %161 = and i32 %159, %160
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %163, label %175

163:                                              ; preds = %149
  %164 = load i8, i8* %11, align 1
  %165 = sext i8 %164 to i32
  %166 = icmp eq i32 %165, 63
  br i1 %166, label %167, label %171

167:                                              ; preds = %163
  %168 = load i8, i8* %11, align 1
  %169 = load i8*, i8** %9, align 8
  %170 = getelementptr inbounds i8, i8* %169, i32 1
  store i8* %170, i8** %9, align 8
  store i8 %168, i8* %169, align 1
  br label %220

171:                                              ; preds = %163
  %172 = load i8, i8* %11, align 1
  %173 = load i8*, i8** %9, align 8
  %174 = getelementptr inbounds i8, i8* %173, i32 1
  store i8* %174, i8** %9, align 8
  store i8 %172, i8* %173, align 1
  br label %218

175:                                              ; preds = %149
  %176 = load i32, i32* %8, align 4
  %177 = load i32, i32* @NGX_UNESCAPE_REDIRECT, align 4
  %178 = and i32 %176, %177
  %179 = icmp ne i32 %178, 0
  br i1 %179, label %180, label %213

180:                                              ; preds = %175
  %181 = load i8, i8* %11, align 1
  %182 = sext i8 %181 to i32
  %183 = icmp eq i32 %182, 63
  br i1 %183, label %184, label %188

184:                                              ; preds = %180
  %185 = load i8, i8* %11, align 1
  %186 = load i8*, i8** %9, align 8
  %187 = getelementptr inbounds i8, i8* %186, i32 1
  store i8* %187, i8** %9, align 8
  store i8 %185, i8* %186, align 1
  br label %220

188:                                              ; preds = %180
  %189 = load i8, i8* %11, align 1
  %190 = sext i8 %189 to i32
  %191 = icmp sgt i32 %190, 37
  br i1 %191, label %192, label %200

192:                                              ; preds = %188
  %193 = load i8, i8* %11, align 1
  %194 = sext i8 %193 to i32
  %195 = icmp slt i32 %194, 127
  br i1 %195, label %196, label %200

196:                                              ; preds = %192
  %197 = load i8, i8* %11, align 1
  %198 = load i8*, i8** %9, align 8
  %199 = getelementptr inbounds i8, i8* %198, i32 1
  store i8* %199, i8** %9, align 8
  store i8 %197, i8* %198, align 1
  br label %218

200:                                              ; preds = %192, %188
  %201 = load i8*, i8** %9, align 8
  %202 = getelementptr inbounds i8, i8* %201, i32 1
  store i8* %202, i8** %9, align 8
  store i8 37, i8* %201, align 1
  %203 = load i8*, i8** %10, align 8
  %204 = getelementptr inbounds i8, i8* %203, i64 -2
  %205 = load i8, i8* %204, align 1
  %206 = load i8*, i8** %9, align 8
  %207 = getelementptr inbounds i8, i8* %206, i32 1
  store i8* %207, i8** %9, align 8
  store i8 %205, i8* %206, align 1
  %208 = load i8*, i8** %10, align 8
  %209 = getelementptr inbounds i8, i8* %208, i64 -1
  %210 = load i8, i8* %209, align 1
  %211 = load i8*, i8** %9, align 8
  %212 = getelementptr inbounds i8, i8* %211, i32 1
  store i8* %212, i8** %9, align 8
  store i8 %210, i8* %211, align 1
  br label %218

213:                                              ; preds = %175
  %214 = load i8, i8* %11, align 1
  %215 = load i8*, i8** %9, align 8
  %216 = getelementptr inbounds i8, i8* %215, i32 1
  store i8* %216, i8** %9, align 8
  store i8 %214, i8* %215, align 1
  br label %218

217:                                              ; preds = %145, %137
  br label %218

218:                                              ; preds = %23, %217, %213, %200, %196, %171, %133, %120, %116, %83, %77, %60, %48, %47
  br label %19

219:                                              ; preds = %19
  br label %220

220:                                              ; preds = %219, %184, %167, %39
  %221 = load i8*, i8** %9, align 8
  %222 = load i8**, i8*** %5, align 8
  store i8* %221, i8** %222, align 8
  %223 = load i8*, i8** %10, align 8
  %224 = load i8**, i8*** %6, align 8
  store i8* %223, i8** %224, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
