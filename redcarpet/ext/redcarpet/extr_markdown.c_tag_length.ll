; ModuleID = '/home/carl/AnghaBench/redcarpet/ext/redcarpet/extr_markdown.c_tag_length.c'
source_filename = "/home/carl/AnghaBench/redcarpet/ext/redcarpet/extr_markdown.c_tag_length.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MKDA_NOT_AUTOLINK = common dso_local global i32 0, align 4
@MKDA_EMAIL = common dso_local global i32 0, align 4
@MKDA_NORMAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i8*, i64, i32*)* @tag_length to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @tag_length(i8* %0, i64 %1, i32* %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store i8* %0, i8** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32* %2, i32** %7, align 8
  %10 = load i64, i64* %6, align 8
  %11 = icmp ult i64 %10, 3
  br i1 %11, label %12, label %13

12:                                               ; preds = %3
  store i64 0, i64* %4, align 8
  br label %235

13:                                               ; preds = %3
  %14 = load i8*, i8** %5, align 8
  %15 = getelementptr inbounds i8, i8* %14, i64 0
  %16 = load i8, i8* %15, align 1
  %17 = sext i8 %16 to i32
  %18 = icmp ne i32 %17, 60
  br i1 %18, label %19, label %20

19:                                               ; preds = %13
  store i64 0, i64* %4, align 8
  br label %235

20:                                               ; preds = %13
  %21 = load i8*, i8** %5, align 8
  %22 = getelementptr inbounds i8, i8* %21, i64 1
  %23 = load i8, i8* %22, align 1
  %24 = sext i8 %23 to i32
  %25 = icmp eq i32 %24, 47
  %26 = zext i1 %25 to i64
  %27 = select i1 %25, i32 2, i32 1
  %28 = sext i32 %27 to i64
  store i64 %28, i64* %8, align 8
  %29 = load i8*, i8** %5, align 8
  %30 = load i64, i64* %8, align 8
  %31 = getelementptr inbounds i8, i8* %29, i64 %30
  %32 = load i8, i8* %31, align 1
  %33 = call i64 @_isalnum(i8 signext %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %36, label %35

35:                                               ; preds = %20
  store i64 0, i64* %4, align 8
  br label %235

36:                                               ; preds = %20
  %37 = load i32, i32* @MKDA_NOT_AUTOLINK, align 4
  %38 = load i32*, i32** %7, align 8
  store i32 %37, i32* %38, align 4
  br label %39

39:                                               ; preds = %75, %36
  %40 = load i64, i64* %8, align 8
  %41 = load i64, i64* %6, align 8
  %42 = icmp ult i64 %40, %41
  br i1 %42, label %43, label %73

43:                                               ; preds = %39
  %44 = load i8*, i8** %5, align 8
  %45 = load i64, i64* %8, align 8
  %46 = getelementptr inbounds i8, i8* %44, i64 %45
  %47 = load i8, i8* %46, align 1
  %48 = call i64 @_isalnum(i8 signext %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %71, label %50

50:                                               ; preds = %43
  %51 = load i8*, i8** %5, align 8
  %52 = load i64, i64* %8, align 8
  %53 = getelementptr inbounds i8, i8* %51, i64 %52
  %54 = load i8, i8* %53, align 1
  %55 = sext i8 %54 to i32
  %56 = icmp eq i32 %55, 46
  br i1 %56, label %71, label %57

57:                                               ; preds = %50
  %58 = load i8*, i8** %5, align 8
  %59 = load i64, i64* %8, align 8
  %60 = getelementptr inbounds i8, i8* %58, i64 %59
  %61 = load i8, i8* %60, align 1
  %62 = sext i8 %61 to i32
  %63 = icmp eq i32 %62, 43
  br i1 %63, label %71, label %64

64:                                               ; preds = %57
  %65 = load i8*, i8** %5, align 8
  %66 = load i64, i64* %8, align 8
  %67 = getelementptr inbounds i8, i8* %65, i64 %66
  %68 = load i8, i8* %67, align 1
  %69 = sext i8 %68 to i32
  %70 = icmp eq i32 %69, 45
  br label %71

71:                                               ; preds = %64, %57, %50, %43
  %72 = phi i1 [ true, %57 ], [ true, %50 ], [ true, %43 ], [ %70, %64 ]
  br label %73

73:                                               ; preds = %71, %39
  %74 = phi i1 [ false, %39 ], [ %72, %71 ]
  br i1 %74, label %75, label %78

75:                                               ; preds = %73
  %76 = load i64, i64* %8, align 8
  %77 = add i64 %76, 1
  store i64 %77, i64* %8, align 8
  br label %39

78:                                               ; preds = %73
  %79 = load i64, i64* %8, align 8
  %80 = icmp ugt i64 %79, 1
  br i1 %80, label %81, label %104

81:                                               ; preds = %78
  %82 = load i8*, i8** %5, align 8
  %83 = load i64, i64* %8, align 8
  %84 = getelementptr inbounds i8, i8* %82, i64 %83
  %85 = load i8, i8* %84, align 1
  %86 = sext i8 %85 to i32
  %87 = icmp eq i32 %86, 64
  br i1 %87, label %88, label %104

88:                                               ; preds = %81
  %89 = load i8*, i8** %5, align 8
  %90 = load i64, i64* %8, align 8
  %91 = getelementptr inbounds i8, i8* %89, i64 %90
  %92 = load i64, i64* %6, align 8
  %93 = load i64, i64* %8, align 8
  %94 = sub i64 %92, %93
  %95 = call i64 @is_mail_autolink(i8* %91, i64 %94)
  store i64 %95, i64* %9, align 8
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %103

97:                                               ; preds = %88
  %98 = load i32, i32* @MKDA_EMAIL, align 4
  %99 = load i32*, i32** %7, align 8
  store i32 %98, i32* %99, align 4
  %100 = load i64, i64* %8, align 8
  %101 = load i64, i64* %9, align 8
  %102 = add i64 %100, %101
  store i64 %102, i64* %4, align 8
  br label %235

103:                                              ; preds = %88
  br label %104

104:                                              ; preds = %103, %81, %78
  %105 = load i64, i64* %8, align 8
  %106 = icmp ugt i64 %105, 2
  br i1 %106, label %107, label %119

107:                                              ; preds = %104
  %108 = load i8*, i8** %5, align 8
  %109 = load i64, i64* %8, align 8
  %110 = getelementptr inbounds i8, i8* %108, i64 %109
  %111 = load i8, i8* %110, align 1
  %112 = sext i8 %111 to i32
  %113 = icmp eq i32 %112, 58
  br i1 %113, label %114, label %119

114:                                              ; preds = %107
  %115 = load i32, i32* @MKDA_NORMAL, align 4
  %116 = load i32*, i32** %7, align 8
  store i32 %115, i32* %116, align 4
  %117 = load i64, i64* %8, align 8
  %118 = add i64 %117, 1
  store i64 %118, i64* %8, align 8
  br label %119

119:                                              ; preds = %114, %107, %104
  %120 = load i64, i64* %8, align 8
  %121 = load i64, i64* %6, align 8
  %122 = icmp uge i64 %120, %121
  br i1 %122, label %123, label %126

123:                                              ; preds = %119
  %124 = load i32, i32* @MKDA_NOT_AUTOLINK, align 4
  %125 = load i32*, i32** %7, align 8
  store i32 %124, i32* %125, align 4
  br label %210

126:                                              ; preds = %119
  %127 = load i32*, i32** %7, align 8
  %128 = load i32, i32* %127, align 4
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %130, label %209

130:                                              ; preds = %126
  %131 = load i64, i64* %8, align 8
  store i64 %131, i64* %9, align 8
  br label %132

132:                                              ; preds = %186, %130
  %133 = load i64, i64* %8, align 8
  %134 = load i64, i64* %6, align 8
  %135 = icmp ult i64 %133, %134
  br i1 %135, label %136, label %187

136:                                              ; preds = %132
  %137 = load i8*, i8** %5, align 8
  %138 = load i64, i64* %8, align 8
  %139 = getelementptr inbounds i8, i8* %137, i64 %138
  %140 = load i8, i8* %139, align 1
  %141 = sext i8 %140 to i32
  %142 = icmp eq i32 %141, 92
  br i1 %142, label %143, label %146

143:                                              ; preds = %136
  %144 = load i64, i64* %8, align 8
  %145 = add i64 %144, 2
  store i64 %145, i64* %8, align 8
  br label %186

146:                                              ; preds = %136
  %147 = load i8*, i8** %5, align 8
  %148 = load i64, i64* %8, align 8
  %149 = getelementptr inbounds i8, i8* %147, i64 %148
  %150 = load i8, i8* %149, align 1
  %151 = sext i8 %150 to i32
  %152 = icmp eq i32 %151, 62
  br i1 %152, label %181, label %153

153:                                              ; preds = %146
  %154 = load i8*, i8** %5, align 8
  %155 = load i64, i64* %8, align 8
  %156 = getelementptr inbounds i8, i8* %154, i64 %155
  %157 = load i8, i8* %156, align 1
  %158 = sext i8 %157 to i32
  %159 = icmp eq i32 %158, 39
  br i1 %159, label %181, label %160

160:                                              ; preds = %153
  %161 = load i8*, i8** %5, align 8
  %162 = load i64, i64* %8, align 8
  %163 = getelementptr inbounds i8, i8* %161, i64 %162
  %164 = load i8, i8* %163, align 1
  %165 = sext i8 %164 to i32
  %166 = icmp eq i32 %165, 34
  br i1 %166, label %181, label %167

167:                                              ; preds = %160
  %168 = load i8*, i8** %5, align 8
  %169 = load i64, i64* %8, align 8
  %170 = getelementptr inbounds i8, i8* %168, i64 %169
  %171 = load i8, i8* %170, align 1
  %172 = sext i8 %171 to i32
  %173 = icmp eq i32 %172, 32
  br i1 %173, label %181, label %174

174:                                              ; preds = %167
  %175 = load i8*, i8** %5, align 8
  %176 = load i64, i64* %8, align 8
  %177 = getelementptr inbounds i8, i8* %175, i64 %176
  %178 = load i8, i8* %177, align 1
  %179 = sext i8 %178 to i32
  %180 = icmp eq i32 %179, 10
  br i1 %180, label %181, label %182

181:                                              ; preds = %174, %167, %160, %153, %146
  br label %187

182:                                              ; preds = %174
  %183 = load i64, i64* %8, align 8
  %184 = add i64 %183, 1
  store i64 %184, i64* %8, align 8
  br label %185

185:                                              ; preds = %182
  br label %186

186:                                              ; preds = %185, %143
  br label %132

187:                                              ; preds = %181, %132
  %188 = load i64, i64* %8, align 8
  %189 = load i64, i64* %6, align 8
  %190 = icmp uge i64 %188, %189
  br i1 %190, label %191, label %192

191:                                              ; preds = %187
  store i64 0, i64* %4, align 8
  br label %235

192:                                              ; preds = %187
  %193 = load i64, i64* %8, align 8
  %194 = load i64, i64* %9, align 8
  %195 = icmp ugt i64 %193, %194
  br i1 %195, label %196, label %206

196:                                              ; preds = %192
  %197 = load i8*, i8** %5, align 8
  %198 = load i64, i64* %8, align 8
  %199 = getelementptr inbounds i8, i8* %197, i64 %198
  %200 = load i8, i8* %199, align 1
  %201 = sext i8 %200 to i32
  %202 = icmp eq i32 %201, 62
  br i1 %202, label %203, label %206

203:                                              ; preds = %196
  %204 = load i64, i64* %8, align 8
  %205 = add i64 %204, 1
  store i64 %205, i64* %4, align 8
  br label %235

206:                                              ; preds = %196, %192
  %207 = load i32, i32* @MKDA_NOT_AUTOLINK, align 4
  %208 = load i32*, i32** %7, align 8
  store i32 %207, i32* %208, align 4
  br label %209

209:                                              ; preds = %206, %126
  br label %210

210:                                              ; preds = %209, %123
  br label %211

211:                                              ; preds = %224, %210
  %212 = load i64, i64* %8, align 8
  %213 = load i64, i64* %6, align 8
  %214 = icmp ult i64 %212, %213
  br i1 %214, label %215, label %222

215:                                              ; preds = %211
  %216 = load i8*, i8** %5, align 8
  %217 = load i64, i64* %8, align 8
  %218 = getelementptr inbounds i8, i8* %216, i64 %217
  %219 = load i8, i8* %218, align 1
  %220 = sext i8 %219 to i32
  %221 = icmp ne i32 %220, 62
  br label %222

222:                                              ; preds = %215, %211
  %223 = phi i1 [ false, %211 ], [ %221, %215 ]
  br i1 %223, label %224, label %227

224:                                              ; preds = %222
  %225 = load i64, i64* %8, align 8
  %226 = add i64 %225, 1
  store i64 %226, i64* %8, align 8
  br label %211

227:                                              ; preds = %222
  %228 = load i64, i64* %8, align 8
  %229 = load i64, i64* %6, align 8
  %230 = icmp uge i64 %228, %229
  br i1 %230, label %231, label %232

231:                                              ; preds = %227
  store i64 0, i64* %4, align 8
  br label %235

232:                                              ; preds = %227
  %233 = load i64, i64* %8, align 8
  %234 = add i64 %233, 1
  store i64 %234, i64* %4, align 8
  br label %235

235:                                              ; preds = %232, %231, %203, %191, %97, %35, %19, %12
  %236 = load i64, i64* %4, align 8
  ret i64 %236
}

declare dso_local i64 @_isalnum(i8 signext) #1

declare dso_local i64 @is_mail_autolink(i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
