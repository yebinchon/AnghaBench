; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/wbemprox/extr_wql.tab.c_yysyntax_error.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/wbemprox/extr_wql.tab.c_yysyntax_error.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@YY_NULL = common dso_local global i8* null, align 8
@yytname = common dso_local global i8** null, align 8
@YYEMPTY = common dso_local global i32 0, align 4
@yypact = common dso_local global i32* null, align 8
@YYLAST = common dso_local global i32 0, align 4
@YYNTOKENS = common dso_local global i32 0, align 4
@yycheck = common dso_local global i32* null, align 8
@YYTERROR = common dso_local global i32 0, align 4
@yytable = common dso_local global i32* null, align 8
@YYSTACK_ALLOC_MAXIMUM = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [13 x i8] c"syntax error\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"syntax error, unexpected %s\00", align 1
@.str.2 = private unnamed_addr constant [42 x i8] c"syntax error, unexpected %s, expecting %s\00", align 1
@.str.3 = private unnamed_addr constant [48 x i8] c"syntax error, unexpected %s, expecting %s or %s\00", align 1
@.str.4 = private unnamed_addr constant [54 x i8] c"syntax error, unexpected %s, expecting %s or %s or %s\00", align 1
@.str.5 = private unnamed_addr constant [60 x i8] c"syntax error, unexpected %s, expecting %s or %s or %s or %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64*, i8**, i64*, i32)* @yysyntax_error to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @yysyntax_error(i64* %0, i8** %1, i64* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i64*, align 8
  %7 = alloca i8**, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i8*, align 8
  %13 = alloca [5 x i8*], align 16
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  %22 = alloca i8*, align 8
  %23 = alloca i32, align 4
  store i64* %0, i64** %6, align 8
  store i8** %1, i8*** %7, align 8
  store i64* %2, i64** %8, align 8
  store i32 %3, i32* %9, align 4
  %24 = load i8*, i8** @YY_NULL, align 8
  %25 = load i8**, i8*** @yytname, align 8
  %26 = load i32, i32* %9, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i8*, i8** %25, i64 %27
  %29 = load i8*, i8** %28, align 8
  %30 = call i64 @yytnamerr(i8* %24, i8* %29)
  store i64 %30, i64* %10, align 8
  %31 = load i64, i64* %10, align 8
  store i64 %31, i64* %11, align 8
  %32 = load i8*, i8** @YY_NULL, align 8
  store i8* %32, i8** %12, align 8
  store i32 0, i32* %14, align 4
  %33 = load i32, i32* %9, align 4
  %34 = load i32, i32* @YYEMPTY, align 4
  %35 = icmp ne i32 %33, %34
  br i1 %35, label %36, label %145

36:                                               ; preds = %4
  %37 = load i32*, i32** @yypact, align 8
  %38 = load i64*, i64** %8, align 8
  %39 = load i64, i64* %38, align 8
  %40 = getelementptr inbounds i32, i32* %37, i64 %39
  %41 = load i32, i32* %40, align 4
  store i32 %41, i32* %15, align 4
  %42 = load i8**, i8*** @yytname, align 8
  %43 = load i32, i32* %9, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i8*, i8** %42, i64 %44
  %46 = load i8*, i8** %45, align 8
  %47 = load i32, i32* %14, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %14, align 4
  %49 = sext i32 %47 to i64
  %50 = getelementptr inbounds [5 x i8*], [5 x i8*]* %13, i64 0, i64 %49
  store i8* %46, i8** %50, align 8
  %51 = load i32, i32* %15, align 4
  %52 = call i32 @yypact_value_is_default(i32 %51)
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %144, label %54

54:                                               ; preds = %36
  %55 = load i32, i32* %15, align 4
  %56 = icmp slt i32 %55, 0
  br i1 %56, label %57, label %60

57:                                               ; preds = %54
  %58 = load i32, i32* %15, align 4
  %59 = sub nsw i32 0, %58
  br label %61

60:                                               ; preds = %54
  br label %61

61:                                               ; preds = %60, %57
  %62 = phi i32 [ %59, %57 ], [ 0, %60 ]
  store i32 %62, i32* %16, align 4
  %63 = load i32, i32* @YYLAST, align 4
  %64 = load i32, i32* %15, align 4
  %65 = sub nsw i32 %63, %64
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %17, align 4
  %67 = load i32, i32* %17, align 4
  %68 = load i32, i32* @YYNTOKENS, align 4
  %69 = icmp slt i32 %67, %68
  br i1 %69, label %70, label %72

70:                                               ; preds = %61
  %71 = load i32, i32* %17, align 4
  br label %74

72:                                               ; preds = %61
  %73 = load i32, i32* @YYNTOKENS, align 4
  br label %74

74:                                               ; preds = %72, %70
  %75 = phi i32 [ %71, %70 ], [ %73, %72 ]
  store i32 %75, i32* %18, align 4
  %76 = load i32, i32* %16, align 4
  store i32 %76, i32* %19, align 4
  br label %77

77:                                               ; preds = %140, %74
  %78 = load i32, i32* %19, align 4
  %79 = load i32, i32* %18, align 4
  %80 = icmp slt i32 %78, %79
  br i1 %80, label %81, label %143

81:                                               ; preds = %77
  %82 = load i32*, i32** @yycheck, align 8
  %83 = load i32, i32* %19, align 4
  %84 = load i32, i32* %15, align 4
  %85 = add nsw i32 %83, %84
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds i32, i32* %82, i64 %86
  %88 = load i32, i32* %87, align 4
  %89 = load i32, i32* %19, align 4
  %90 = icmp eq i32 %88, %89
  br i1 %90, label %91, label %139

91:                                               ; preds = %81
  %92 = load i32, i32* %19, align 4
  %93 = load i32, i32* @YYTERROR, align 4
  %94 = icmp ne i32 %92, %93
  br i1 %94, label %95, label %139

95:                                               ; preds = %91
  %96 = load i32*, i32** @yytable, align 8
  %97 = load i32, i32* %19, align 4
  %98 = load i32, i32* %15, align 4
  %99 = add nsw i32 %97, %98
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds i32, i32* %96, i64 %100
  %102 = load i32, i32* %101, align 4
  %103 = call i32 @yytable_value_is_error(i32 %102)
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %139, label %105

105:                                              ; preds = %95
  %106 = load i32, i32* %14, align 4
  %107 = icmp eq i32 %106, 5
  br i1 %107, label %108, label %110

108:                                              ; preds = %105
  store i32 1, i32* %14, align 4
  %109 = load i64, i64* %10, align 8
  store i64 %109, i64* %11, align 8
  br label %143

110:                                              ; preds = %105
  %111 = load i8**, i8*** @yytname, align 8
  %112 = load i32, i32* %19, align 4
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds i8*, i8** %111, i64 %113
  %115 = load i8*, i8** %114, align 8
  %116 = load i32, i32* %14, align 4
  %117 = add nsw i32 %116, 1
  store i32 %117, i32* %14, align 4
  %118 = sext i32 %116 to i64
  %119 = getelementptr inbounds [5 x i8*], [5 x i8*]* %13, i64 0, i64 %118
  store i8* %115, i8** %119, align 8
  %120 = load i64, i64* %11, align 8
  %121 = load i8*, i8** @YY_NULL, align 8
  %122 = load i8**, i8*** @yytname, align 8
  %123 = load i32, i32* %19, align 4
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds i8*, i8** %122, i64 %124
  %126 = load i8*, i8** %125, align 8
  %127 = call i64 @yytnamerr(i8* %121, i8* %126)
  %128 = add nsw i64 %120, %127
  store i64 %128, i64* %20, align 8
  %129 = load i64, i64* %11, align 8
  %130 = load i64, i64* %20, align 8
  %131 = icmp sle i64 %129, %130
  br i1 %131, label %132, label %136

132:                                              ; preds = %110
  %133 = load i64, i64* %20, align 8
  %134 = load i64, i64* @YYSTACK_ALLOC_MAXIMUM, align 8
  %135 = icmp sle i64 %133, %134
  br i1 %135, label %137, label %136

136:                                              ; preds = %132, %110
  store i32 2, i32* %5, align 4
  br label %250

137:                                              ; preds = %132
  %138 = load i64, i64* %20, align 8
  store i64 %138, i64* %11, align 8
  br label %139

139:                                              ; preds = %137, %95, %91, %81
  br label %140

140:                                              ; preds = %139
  %141 = load i32, i32* %19, align 4
  %142 = add nsw i32 %141, 1
  store i32 %142, i32* %19, align 4
  br label %77

143:                                              ; preds = %108, %77
  br label %144

144:                                              ; preds = %143, %36
  br label %145

145:                                              ; preds = %144, %4
  %146 = load i32, i32* %14, align 4
  switch i32 %146, label %171 [
    i32 0, label %147
    i32 1, label %151
    i32 2, label %155
    i32 3, label %159
    i32 4, label %163
    i32 5, label %167
  ]

147:                                              ; preds = %145
  %148 = call i32 @YY_(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  %149 = sext i32 %148 to i64
  %150 = inttoptr i64 %149 to i8*
  store i8* %150, i8** %12, align 8
  br label %171

151:                                              ; preds = %145
  %152 = call i32 @YY_(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  %153 = sext i32 %152 to i64
  %154 = inttoptr i64 %153 to i8*
  store i8* %154, i8** %12, align 8
  br label %171

155:                                              ; preds = %145
  %156 = call i32 @YY_(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.2, i64 0, i64 0))
  %157 = sext i32 %156 to i64
  %158 = inttoptr i64 %157 to i8*
  store i8* %158, i8** %12, align 8
  br label %171

159:                                              ; preds = %145
  %160 = call i32 @YY_(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.3, i64 0, i64 0))
  %161 = sext i32 %160 to i64
  %162 = inttoptr i64 %161 to i8*
  store i8* %162, i8** %12, align 8
  br label %171

163:                                              ; preds = %145
  %164 = call i32 @YY_(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.4, i64 0, i64 0))
  %165 = sext i32 %164 to i64
  %166 = inttoptr i64 %165 to i8*
  store i8* %166, i8** %12, align 8
  br label %171

167:                                              ; preds = %145
  %168 = call i32 @YY_(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.5, i64 0, i64 0))
  %169 = sext i32 %168 to i64
  %170 = inttoptr i64 %169 to i8*
  store i8* %170, i8** %12, align 8
  br label %171

171:                                              ; preds = %145, %167, %163, %159, %155, %151, %147
  %172 = load i64, i64* %11, align 8
  %173 = load i8*, i8** %12, align 8
  %174 = call i64 @yystrlen(i8* %173)
  %175 = add nsw i64 %172, %174
  store i64 %175, i64* %21, align 8
  %176 = load i64, i64* %11, align 8
  %177 = load i64, i64* %21, align 8
  %178 = icmp sle i64 %176, %177
  br i1 %178, label %179, label %183

179:                                              ; preds = %171
  %180 = load i64, i64* %21, align 8
  %181 = load i64, i64* @YYSTACK_ALLOC_MAXIMUM, align 8
  %182 = icmp sle i64 %180, %181
  br i1 %182, label %184, label %183

183:                                              ; preds = %179, %171
  store i32 2, i32* %5, align 4
  br label %250

184:                                              ; preds = %179
  %185 = load i64, i64* %21, align 8
  store i64 %185, i64* %11, align 8
  %186 = load i64*, i64** %6, align 8
  %187 = load i64, i64* %186, align 8
  %188 = load i64, i64* %11, align 8
  %189 = icmp slt i64 %187, %188
  br i1 %189, label %190, label %207

190:                                              ; preds = %184
  %191 = load i64, i64* %11, align 8
  %192 = mul nsw i64 2, %191
  %193 = load i64*, i64** %6, align 8
  store i64 %192, i64* %193, align 8
  %194 = load i64, i64* %11, align 8
  %195 = load i64*, i64** %6, align 8
  %196 = load i64, i64* %195, align 8
  %197 = icmp sle i64 %194, %196
  br i1 %197, label %198, label %203

198:                                              ; preds = %190
  %199 = load i64*, i64** %6, align 8
  %200 = load i64, i64* %199, align 8
  %201 = load i64, i64* @YYSTACK_ALLOC_MAXIMUM, align 8
  %202 = icmp sle i64 %200, %201
  br i1 %202, label %206, label %203

203:                                              ; preds = %198, %190
  %204 = load i64, i64* @YYSTACK_ALLOC_MAXIMUM, align 8
  %205 = load i64*, i64** %6, align 8
  store i64 %204, i64* %205, align 8
  br label %206

206:                                              ; preds = %203, %198
  store i32 1, i32* %5, align 4
  br label %250

207:                                              ; preds = %184
  %208 = load i8**, i8*** %7, align 8
  %209 = load i8*, i8** %208, align 8
  store i8* %209, i8** %22, align 8
  store i32 0, i32* %23, align 4
  br label %210

210:                                              ; preds = %248, %207
  %211 = load i8*, i8** %12, align 8
  %212 = load i8, i8* %211, align 1
  %213 = load i8*, i8** %22, align 8
  store i8 %212, i8* %213, align 1
  %214 = sext i8 %212 to i32
  %215 = icmp ne i32 %214, 0
  br i1 %215, label %216, label %249

216:                                              ; preds = %210
  %217 = load i8*, i8** %22, align 8
  %218 = load i8, i8* %217, align 1
  %219 = sext i8 %218 to i32
  %220 = icmp eq i32 %219, 37
  br i1 %220, label %221, label %243

221:                                              ; preds = %216
  %222 = load i8*, i8** %12, align 8
  %223 = getelementptr inbounds i8, i8* %222, i64 1
  %224 = load i8, i8* %223, align 1
  %225 = sext i8 %224 to i32
  %226 = icmp eq i32 %225, 115
  br i1 %226, label %227, label %243

227:                                              ; preds = %221
  %228 = load i32, i32* %23, align 4
  %229 = load i32, i32* %14, align 4
  %230 = icmp slt i32 %228, %229
  br i1 %230, label %231, label %243

231:                                              ; preds = %227
  %232 = load i8*, i8** %22, align 8
  %233 = load i32, i32* %23, align 4
  %234 = add nsw i32 %233, 1
  store i32 %234, i32* %23, align 4
  %235 = sext i32 %233 to i64
  %236 = getelementptr inbounds [5 x i8*], [5 x i8*]* %13, i64 0, i64 %235
  %237 = load i8*, i8** %236, align 8
  %238 = call i64 @yytnamerr(i8* %232, i8* %237)
  %239 = load i8*, i8** %22, align 8
  %240 = getelementptr inbounds i8, i8* %239, i64 %238
  store i8* %240, i8** %22, align 8
  %241 = load i8*, i8** %12, align 8
  %242 = getelementptr inbounds i8, i8* %241, i64 2
  store i8* %242, i8** %12, align 8
  br label %248

243:                                              ; preds = %227, %221, %216
  %244 = load i8*, i8** %22, align 8
  %245 = getelementptr inbounds i8, i8* %244, i32 1
  store i8* %245, i8** %22, align 8
  %246 = load i8*, i8** %12, align 8
  %247 = getelementptr inbounds i8, i8* %246, i32 1
  store i8* %247, i8** %12, align 8
  br label %248

248:                                              ; preds = %243, %231
  br label %210

249:                                              ; preds = %210
  store i32 0, i32* %5, align 4
  br label %250

250:                                              ; preds = %249, %206, %183, %136
  %251 = load i32, i32* %5, align 4
  ret i32 %251
}

declare dso_local i64 @yytnamerr(i8*, i8*) #1

declare dso_local i32 @yypact_value_is_default(i32) #1

declare dso_local i32 @yytable_value_is_error(i32) #1

declare dso_local i32 @YY_(i8*) #1

declare dso_local i64 @yystrlen(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
