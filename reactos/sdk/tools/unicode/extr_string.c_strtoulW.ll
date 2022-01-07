; ModuleID = '/home/carl/AnghaBench/reactos/sdk/tools/unicode/extr_string.c_strtoulW.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/tools/unicode/extr_string.c_strtoulW.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ULONG_MAX = common dso_local global i64 0, align 8
@ERANGE = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @strtoulW(i8* %0, i8** %1, i32 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8**, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8, align 1
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i8** %1, i8*** %6, align 8
  store i32 %2, i32* %7, align 4
  %17 = load i32, i32* %7, align 4
  %18 = icmp slt i32 %17, 0
  br i1 %18, label %25, label %19

19:                                               ; preds = %3
  %20 = load i32, i32* %7, align 4
  %21 = icmp eq i32 %20, 1
  br i1 %21, label %25, label %22

22:                                               ; preds = %19
  %23 = load i32, i32* %7, align 4
  %24 = icmp sgt i32 %23, 36
  br i1 %24, label %25, label %26

25:                                               ; preds = %22, %19, %3
  store i64 0, i64* %4, align 8
  br label %231

26:                                               ; preds = %22
  %27 = load i8*, i8** %5, align 8
  store i8* %27, i8** %12, align 8
  store i8* %27, i8** %14, align 8
  br label %28

28:                                               ; preds = %33, %26
  %29 = load i8*, i8** %12, align 8
  %30 = load i8, i8* %29, align 1
  %31 = call i64 @isspaceW(i8 signext %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %28
  %34 = load i8*, i8** %12, align 8
  %35 = getelementptr inbounds i8, i8* %34, i32 1
  store i8* %35, i8** %12, align 8
  br label %28

36:                                               ; preds = %28
  %37 = load i8*, i8** %12, align 8
  %38 = load i8, i8* %37, align 1
  %39 = icmp ne i8 %38, 0
  br i1 %39, label %41, label %40

40:                                               ; preds = %36
  br label %199

41:                                               ; preds = %36
  store i32 0, i32* %8, align 4
  %42 = load i8*, i8** %12, align 8
  %43 = load i8, i8* %42, align 1
  %44 = sext i8 %43 to i32
  %45 = icmp eq i32 %44, 45
  br i1 %45, label %46, label %49

46:                                               ; preds = %41
  store i32 1, i32* %8, align 4
  %47 = load i8*, i8** %12, align 8
  %48 = getelementptr inbounds i8, i8* %47, i32 1
  store i8* %48, i8** %12, align 8
  br label %58

49:                                               ; preds = %41
  %50 = load i8*, i8** %12, align 8
  %51 = load i8, i8* %50, align 1
  %52 = sext i8 %51 to i32
  %53 = icmp eq i32 %52, 43
  br i1 %53, label %54, label %57

54:                                               ; preds = %49
  %55 = load i8*, i8** %12, align 8
  %56 = getelementptr inbounds i8, i8* %55, i32 1
  store i8* %56, i8** %12, align 8
  br label %57

57:                                               ; preds = %54, %49
  br label %58

58:                                               ; preds = %57, %46
  %59 = load i8*, i8** %12, align 8
  %60 = load i8, i8* %59, align 1
  %61 = sext i8 %60 to i32
  %62 = icmp eq i32 %61, 48
  br i1 %62, label %63, label %85

63:                                               ; preds = %58
  %64 = load i32, i32* %7, align 4
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %69, label %66

66:                                               ; preds = %63
  %67 = load i32, i32* %7, align 4
  %68 = icmp eq i32 %67, 16
  br i1 %68, label %69, label %79

69:                                               ; preds = %66, %63
  %70 = load i8*, i8** %12, align 8
  %71 = getelementptr inbounds i8, i8* %70, i64 1
  %72 = load i8, i8* %71, align 1
  %73 = call signext i8 @toupperW(i8 signext %72)
  %74 = sext i8 %73 to i32
  %75 = icmp eq i32 %74, 88
  br i1 %75, label %76, label %79

76:                                               ; preds = %69
  %77 = load i8*, i8** %12, align 8
  %78 = getelementptr inbounds i8, i8* %77, i64 2
  store i8* %78, i8** %12, align 8
  store i32 16, i32* %7, align 4
  br label %84

79:                                               ; preds = %69, %66
  %80 = load i32, i32* %7, align 4
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %82, label %83

82:                                               ; preds = %79
  store i32 8, i32* %7, align 4
  br label %83

83:                                               ; preds = %82, %79
  br label %84

84:                                               ; preds = %83, %76
  br label %90

85:                                               ; preds = %58
  %86 = load i32, i32* %7, align 4
  %87 = icmp eq i32 %86, 0
  br i1 %87, label %88, label %89

88:                                               ; preds = %85
  store i32 10, i32* %7, align 4
  br label %89

89:                                               ; preds = %88, %85
  br label %90

90:                                               ; preds = %89, %84
  %91 = load i8*, i8** %12, align 8
  store i8* %91, i8** %14, align 8
  store i8* null, i8** %15, align 8
  %92 = load i64, i64* @ULONG_MAX, align 8
  %93 = load i32, i32* %7, align 4
  %94 = sext i32 %93 to i64
  %95 = udiv i64 %92, %94
  store i64 %95, i64* %9, align 8
  %96 = load i64, i64* @ULONG_MAX, align 8
  %97 = load i32, i32* %7, align 4
  %98 = sext i32 %97 to i64
  %99 = urem i64 %96, %98
  %100 = trunc i64 %99 to i32
  store i32 %100, i32* %10, align 4
  store i32 0, i32* %16, align 4
  store i64 0, i64* %11, align 8
  %101 = load i8*, i8** %12, align 8
  %102 = load i8, i8* %101, align 1
  store i8 %102, i8* %13, align 1
  br label %103

103:                                              ; preds = %168, %90
  %104 = load i8, i8* %13, align 1
  %105 = sext i8 %104 to i32
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %172

107:                                              ; preds = %103
  %108 = load i8*, i8** %12, align 8
  %109 = load i8*, i8** %15, align 8
  %110 = icmp eq i8* %108, %109
  br i1 %110, label %111, label %112

111:                                              ; preds = %107
  br label %172

112:                                              ; preds = %107
  %113 = load i8, i8* %13, align 1
  %114 = sext i8 %113 to i32
  %115 = icmp sge i32 %114, 48
  br i1 %115, label %116, label %125

116:                                              ; preds = %112
  %117 = load i8, i8* %13, align 1
  %118 = sext i8 %117 to i32
  %119 = icmp sle i32 %118, 57
  br i1 %119, label %120, label %125

120:                                              ; preds = %116
  %121 = load i8, i8* %13, align 1
  %122 = sext i8 %121 to i32
  %123 = sub nsw i32 %122, 48
  %124 = trunc i32 %123 to i8
  store i8 %124, i8* %13, align 1
  br label %138

125:                                              ; preds = %116, %112
  %126 = load i8, i8* %13, align 1
  %127 = call i64 @isalphaW(i8 signext %126)
  %128 = icmp ne i64 %127, 0
  br i1 %128, label %129, label %136

129:                                              ; preds = %125
  %130 = load i8, i8* %13, align 1
  %131 = call signext i8 @toupperW(i8 signext %130)
  %132 = sext i8 %131 to i32
  %133 = sub nsw i32 %132, 65
  %134 = add nsw i32 %133, 10
  %135 = trunc i32 %134 to i8
  store i8 %135, i8* %13, align 1
  br label %137

136:                                              ; preds = %125
  br label %172

137:                                              ; preds = %129
  br label %138

138:                                              ; preds = %137, %120
  %139 = load i8, i8* %13, align 1
  %140 = sext i8 %139 to i32
  %141 = load i32, i32* %7, align 4
  %142 = icmp sge i32 %140, %141
  br i1 %142, label %143, label %144

143:                                              ; preds = %138
  br label %172

144:                                              ; preds = %138
  %145 = load i64, i64* %11, align 8
  %146 = load i64, i64* %9, align 8
  %147 = icmp ugt i64 %145, %146
  br i1 %147, label %157, label %148

148:                                              ; preds = %144
  %149 = load i64, i64* %11, align 8
  %150 = load i64, i64* %9, align 8
  %151 = icmp eq i64 %149, %150
  br i1 %151, label %152, label %158

152:                                              ; preds = %148
  %153 = load i8, i8* %13, align 1
  %154 = sext i8 %153 to i32
  %155 = load i32, i32* %10, align 4
  %156 = icmp ugt i32 %154, %155
  br i1 %156, label %157, label %158

157:                                              ; preds = %152, %144
  store i32 1, i32* %16, align 4
  br label %167

158:                                              ; preds = %152, %148
  %159 = load i32, i32* %7, align 4
  %160 = sext i32 %159 to i64
  %161 = load i64, i64* %11, align 8
  %162 = mul i64 %161, %160
  store i64 %162, i64* %11, align 8
  %163 = load i8, i8* %13, align 1
  %164 = sext i8 %163 to i64
  %165 = load i64, i64* %11, align 8
  %166 = add i64 %165, %164
  store i64 %166, i64* %11, align 8
  br label %167

167:                                              ; preds = %158, %157
  br label %168

168:                                              ; preds = %167
  %169 = load i8*, i8** %12, align 8
  %170 = getelementptr inbounds i8, i8* %169, i32 1
  store i8* %170, i8** %12, align 8
  %171 = load i8, i8* %170, align 1
  store i8 %171, i8* %13, align 1
  br label %103

172:                                              ; preds = %143, %136, %111, %103
  %173 = load i8*, i8** %12, align 8
  %174 = load i8*, i8** %14, align 8
  %175 = icmp eq i8* %173, %174
  br i1 %175, label %176, label %177

176:                                              ; preds = %172
  br label %199

177:                                              ; preds = %172
  %178 = load i8**, i8*** %6, align 8
  %179 = icmp ne i8** %178, null
  br i1 %179, label %180, label %183

180:                                              ; preds = %177
  %181 = load i8*, i8** %12, align 8
  %182 = load i8**, i8*** %6, align 8
  store i8* %181, i8** %182, align 8
  br label %183

183:                                              ; preds = %180, %177
  %184 = load i32, i32* %16, align 4
  %185 = icmp ne i32 %184, 0
  br i1 %185, label %186, label %189

186:                                              ; preds = %183
  %187 = load i32, i32* @ERANGE, align 4
  store i32 %187, i32* @errno, align 4
  %188 = load i64, i64* @ULONG_MAX, align 8
  store i64 %188, i64* %4, align 8
  br label %231

189:                                              ; preds = %183
  %190 = load i32, i32* %8, align 4
  %191 = icmp ne i32 %190, 0
  br i1 %191, label %192, label %195

192:                                              ; preds = %189
  %193 = load i64, i64* %11, align 8
  %194 = sub i64 0, %193
  br label %197

195:                                              ; preds = %189
  %196 = load i64, i64* %11, align 8
  br label %197

197:                                              ; preds = %195, %192
  %198 = phi i64 [ %194, %192 ], [ %196, %195 ]
  store i64 %198, i64* %4, align 8
  br label %231

199:                                              ; preds = %176, %40
  %200 = load i8**, i8*** %6, align 8
  %201 = icmp ne i8** %200, null
  br i1 %201, label %202, label %230

202:                                              ; preds = %199
  %203 = load i8*, i8** %14, align 8
  %204 = load i8*, i8** %5, align 8
  %205 = ptrtoint i8* %203 to i64
  %206 = ptrtoint i8* %204 to i64
  %207 = sub i64 %205, %206
  %208 = icmp sge i64 %207, 2
  br i1 %208, label %209, label %226

209:                                              ; preds = %202
  %210 = load i8*, i8** %14, align 8
  %211 = getelementptr inbounds i8, i8* %210, i64 -1
  %212 = load i8, i8* %211, align 1
  %213 = call signext i8 @toupperW(i8 signext %212)
  %214 = sext i8 %213 to i32
  %215 = icmp eq i32 %214, 88
  br i1 %215, label %216, label %226

216:                                              ; preds = %209
  %217 = load i8*, i8** %14, align 8
  %218 = getelementptr inbounds i8, i8* %217, i64 -2
  %219 = load i8, i8* %218, align 1
  %220 = sext i8 %219 to i32
  %221 = icmp eq i32 %220, 48
  br i1 %221, label %222, label %226

222:                                              ; preds = %216
  %223 = load i8*, i8** %14, align 8
  %224 = getelementptr inbounds i8, i8* %223, i64 -1
  %225 = load i8**, i8*** %6, align 8
  store i8* %224, i8** %225, align 8
  br label %229

226:                                              ; preds = %216, %209, %202
  %227 = load i8*, i8** %5, align 8
  %228 = load i8**, i8*** %6, align 8
  store i8* %227, i8** %228, align 8
  br label %229

229:                                              ; preds = %226, %222
  br label %230

230:                                              ; preds = %229, %199
  store i64 0, i64* %4, align 8
  br label %231

231:                                              ; preds = %230, %197, %186, %25
  %232 = load i64, i64* %4, align 8
  ret i64 %232
}

declare dso_local i64 @isspaceW(i8 signext) #1

declare dso_local signext i8 @toupperW(i8 signext) #1

declare dso_local i64 @isalphaW(i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
