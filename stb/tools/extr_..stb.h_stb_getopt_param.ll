; ModuleID = '/home/carl/AnghaBench/stb/tools/extr_..stb.h_stb_getopt_param.c'
source_filename = "/home/carl/AnghaBench/stb/tools/extr_..stb.h_stb_getopt_param.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8** @stb_getopt_param(i32* %0, i8** %1, i8* %2) #0 {
  %4 = alloca i8**, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i8**, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8**, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8, align 1
  %16 = alloca i64, align 8
  store i32* %0, i32** %5, align 8
  store i8** %1, i8*** %6, align 8
  store i8* %2, i8** %7, align 8
  store i8** null, i8*** %8, align 8
  store i32 1, i32* %10, align 4
  store i32 1, i32* %9, align 4
  br label %17

17:                                               ; preds = %201, %3
  %18 = load i32, i32* %9, align 4
  %19 = load i32*, i32** %5, align 8
  %20 = load i32, i32* %19, align 4
  %21 = icmp slt i32 %18, %20
  br i1 %21, label %22, label %204

22:                                               ; preds = %17
  %23 = load i8**, i8*** %6, align 8
  %24 = load i32, i32* %9, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i8*, i8** %23, i64 %25
  %27 = load i8*, i8** %26, align 8
  %28 = getelementptr inbounds i8, i8* %27, i64 0
  %29 = load i8, i8* %28, align 1
  %30 = sext i8 %29 to i32
  %31 = icmp ne i32 %30, 45
  br i1 %31, label %32, label %43

32:                                               ; preds = %22
  %33 = load i8**, i8*** %6, align 8
  %34 = load i32, i32* %9, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i8*, i8** %33, i64 %35
  %37 = load i8*, i8** %36, align 8
  %38 = load i8**, i8*** %6, align 8
  %39 = load i32, i32* %10, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %10, align 4
  %41 = sext i32 %39 to i64
  %42 = getelementptr inbounds i8*, i8** %38, i64 %41
  store i8* %37, i8** %42, align 8
  br label %200

43:                                               ; preds = %22
  %44 = load i8**, i8*** %6, align 8
  %45 = load i32, i32* %9, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i8*, i8** %44, i64 %46
  %48 = load i8*, i8** %47, align 8
  %49 = getelementptr inbounds i8, i8* %48, i64 1
  %50 = load i8, i8* %49, align 1
  %51 = sext i8 %50 to i32
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %53, label %74

53:                                               ; preds = %43
  %54 = load i32, i32* %9, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %9, align 4
  br label %56

56:                                               ; preds = %61, %53
  %57 = load i32, i32* %9, align 4
  %58 = load i32*, i32** %5, align 8
  %59 = load i32, i32* %58, align 4
  %60 = icmp slt i32 %57, %59
  br i1 %60, label %61, label %73

61:                                               ; preds = %56
  %62 = load i8**, i8*** %6, align 8
  %63 = load i32, i32* %9, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %9, align 4
  %65 = sext i32 %63 to i64
  %66 = getelementptr inbounds i8*, i8** %62, i64 %65
  %67 = load i8*, i8** %66, align 8
  %68 = load i8**, i8*** %6, align 8
  %69 = load i32, i32* %10, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %10, align 4
  %71 = sext i32 %69 to i64
  %72 = getelementptr inbounds i8*, i8** %68, i64 %71
  store i8* %67, i8** %72, align 8
  br label %56

73:                                               ; preds = %56
  br label %204

74:                                               ; preds = %43
  %75 = load i8**, i8*** %6, align 8
  %76 = load i32, i32* %9, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds i8*, i8** %75, i64 %77
  %79 = load i8*, i8** %78, align 8
  %80 = getelementptr inbounds i8, i8* %79, i64 1
  %81 = load i8, i8* %80, align 1
  %82 = sext i8 %81 to i32
  %83 = icmp eq i32 %82, 45
  br i1 %83, label %84, label %93

84:                                               ; preds = %74
  %85 = load i8**, i8*** %8, align 8
  %86 = load i8**, i8*** %6, align 8
  %87 = load i32, i32* %9, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds i8*, i8** %86, i64 %88
  %90 = load i8*, i8** %89, align 8
  %91 = call i8* @stb_p_strdup(i8* %90)
  %92 = call i32 @stb_arr_push(i8** %85, i8* %91)
  br label %198

93:                                               ; preds = %74
  %94 = load i8**, i8*** %6, align 8
  %95 = load i32, i32* %9, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds i8*, i8** %94, i64 %96
  %98 = load i8*, i8** %97, align 8
  store i8* %98, i8** %12, align 8
  store i32 1, i32* %11, align 4
  br label %99

99:                                               ; preds = %194, %93
  %100 = load i8*, i8** %12, align 8
  %101 = load i32, i32* %11, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds i8, i8* %100, i64 %102
  %104 = load i8, i8* %103, align 1
  %105 = icmp ne i8 %104, 0
  br i1 %105, label %106, label %197

106:                                              ; preds = %99
  %107 = load i8*, i8** %7, align 8
  %108 = load i8*, i8** %12, align 8
  %109 = load i32, i32* %11, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds i8, i8* %108, i64 %110
  %112 = load i8, i8* %111, align 1
  %113 = call i64 @strchr(i8* %107, i8 signext %112)
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %115, label %174

115:                                              ; preds = %106
  %116 = load i8*, i8** %12, align 8
  %117 = load i32, i32* %11, align 4
  %118 = add nsw i32 %117, 1
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds i8, i8* %116, i64 %119
  store i8* %120, i8** %14, align 8
  %121 = load i8*, i8** %12, align 8
  %122 = load i32, i32* %11, align 4
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds i8, i8* %121, i64 %123
  %125 = load i8, i8* %124, align 1
  store i8 %125, i8* %15, align 1
  store i64 0, i64* %16, align 8
  %126 = load i8*, i8** %14, align 8
  %127 = load i8, i8* %126, align 1
  %128 = sext i8 %127 to i32
  %129 = icmp eq i32 %128, 0
  br i1 %129, label %130, label %147

130:                                              ; preds = %115
  %131 = load i32, i32* %9, align 4
  %132 = load i32*, i32** %5, align 8
  %133 = load i32, i32* %132, align 4
  %134 = sub nsw i32 %133, 1
  %135 = icmp eq i32 %131, %134
  br i1 %135, label %136, label %140

136:                                              ; preds = %130
  %137 = load i32*, i32** %5, align 8
  store i32 0, i32* %137, align 4
  %138 = load i8**, i8*** %8, align 8
  %139 = call i32 @stb_getopt_free(i8** %138)
  store i8** null, i8*** %4, align 8
  br label %210

140:                                              ; preds = %130
  %141 = load i8**, i8*** %6, align 8
  %142 = load i32, i32* %9, align 4
  %143 = add nsw i32 %142, 1
  store i32 %143, i32* %9, align 4
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds i8*, i8** %141, i64 %144
  %146 = load i8*, i8** %145, align 8
  store i8* %146, i8** %14, align 8
  br label %153

147:                                              ; preds = %115
  %148 = load i8*, i8** %14, align 8
  %149 = call i64 @strlen(i8* %148)
  %150 = trunc i64 %149 to i32
  %151 = load i32, i32* %11, align 4
  %152 = add nsw i32 %151, %150
  store i32 %152, i32* %11, align 4
  br label %153

153:                                              ; preds = %147, %140
  %154 = load i8*, i8** %14, align 8
  %155 = call i64 @strlen(i8* %154)
  store i64 %155, i64* %16, align 8
  %156 = load i64, i64* %16, align 8
  %157 = add i64 %156, 2
  %158 = trunc i64 %157 to i32
  %159 = call i64 @malloc(i32 %158)
  %160 = inttoptr i64 %159 to i8*
  store i8* %160, i8** %13, align 8
  %161 = load i8*, i8** %13, align 8
  %162 = icmp ne i8* %161, null
  br i1 %162, label %164, label %163

163:                                              ; preds = %153
  store i8** null, i8*** %4, align 8
  br label %210

164:                                              ; preds = %153
  %165 = load i8, i8* %15, align 1
  %166 = load i8*, i8** %13, align 8
  %167 = getelementptr inbounds i8, i8* %166, i64 0
  store i8 %165, i8* %167, align 1
  %168 = load i8*, i8** %13, align 8
  %169 = getelementptr inbounds i8, i8* %168, i64 1
  %170 = load i64, i64* %16, align 8
  %171 = add i64 %170, 2
  %172 = load i8*, i8** %14, align 8
  %173 = call i32 @stb_p_strcpy_s(i8* %169, i64 %171, i8* %172)
  br label %190

174:                                              ; preds = %106
  %175 = call i64 @malloc(i32 2)
  %176 = inttoptr i64 %175 to i8*
  store i8* %176, i8** %13, align 8
  %177 = load i8*, i8** %13, align 8
  %178 = icmp ne i8* %177, null
  br i1 %178, label %180, label %179

179:                                              ; preds = %174
  store i8** null, i8*** %4, align 8
  br label %210

180:                                              ; preds = %174
  %181 = load i8*, i8** %12, align 8
  %182 = load i32, i32* %11, align 4
  %183 = sext i32 %182 to i64
  %184 = getelementptr inbounds i8, i8* %181, i64 %183
  %185 = load i8, i8* %184, align 1
  %186 = load i8*, i8** %13, align 8
  %187 = getelementptr inbounds i8, i8* %186, i64 0
  store i8 %185, i8* %187, align 1
  %188 = load i8*, i8** %13, align 8
  %189 = getelementptr inbounds i8, i8* %188, i64 1
  store i8 0, i8* %189, align 1
  br label %190

190:                                              ; preds = %180, %164
  %191 = load i8**, i8*** %8, align 8
  %192 = load i8*, i8** %13, align 8
  %193 = call i32 @stb_arr_push(i8** %191, i8* %192)
  br label %194

194:                                              ; preds = %190
  %195 = load i32, i32* %11, align 4
  %196 = add nsw i32 %195, 1
  store i32 %196, i32* %11, align 4
  br label %99

197:                                              ; preds = %99
  br label %198

198:                                              ; preds = %197, %84
  br label %199

199:                                              ; preds = %198
  br label %200

200:                                              ; preds = %199, %32
  br label %201

201:                                              ; preds = %200
  %202 = load i32, i32* %9, align 4
  %203 = add nsw i32 %202, 1
  store i32 %203, i32* %9, align 4
  br label %17

204:                                              ; preds = %73, %17
  %205 = load i8**, i8*** %8, align 8
  %206 = call i32 @stb_arr_push(i8** %205, i8* null)
  %207 = load i32, i32* %10, align 4
  %208 = load i32*, i32** %5, align 8
  store i32 %207, i32* %208, align 4
  %209 = load i8**, i8*** %8, align 8
  store i8** %209, i8*** %4, align 8
  br label %210

210:                                              ; preds = %204, %179, %163, %136
  %211 = load i8**, i8*** %4, align 8
  ret i8** %211
}

declare dso_local i32 @stb_arr_push(i8**, i8*) #1

declare dso_local i8* @stb_p_strdup(i8*) #1

declare dso_local i64 @strchr(i8*, i8 signext) #1

declare dso_local i32 @stb_getopt_free(i8**) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i64 @malloc(i32) #1

declare dso_local i32 @stb_p_strcpy_s(i8*, i64, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
