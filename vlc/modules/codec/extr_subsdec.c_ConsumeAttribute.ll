; ModuleID = '/home/carl/AnghaBench/vlc/modules/codec/extr_subsdec.c_ConsumeAttribute.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/codec/extr_subsdec.c_ConsumeAttribute.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8**, i8**)* @ConsumeAttribute to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @ConsumeAttribute(i8** %0, i8** %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8**, align 8
  %5 = alloca i8**, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8, align 1
  store i8** %0, i8*** %4, align 8
  store i8** %1, i8*** %5, align 8
  %10 = load i8**, i8*** %4, align 8
  %11 = load i8*, i8** %10, align 8
  store i8* %11, i8** %6, align 8
  %12 = load i8**, i8*** %5, align 8
  store i8* null, i8** %12, align 8
  br label %13

13:                                               ; preds = %18, %2
  %14 = load i8*, i8** %6, align 8
  %15 = load i8, i8* %14, align 1
  %16 = sext i8 %15 to i32
  %17 = icmp eq i32 %16, 32
  br i1 %17, label %18, label %21

18:                                               ; preds = %13
  %19 = load i8*, i8** %6, align 8
  %20 = getelementptr inbounds i8, i8* %19, i32 1
  store i8* %20, i8** %6, align 8
  br label %13

21:                                               ; preds = %13
  store i64 0, i64* %8, align 8
  br label %22

22:                                               ; preds = %34, %21
  %23 = load i8*, i8** %6, align 8
  %24 = load i8, i8* %23, align 1
  %25 = sext i8 %24 to i32
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %32

27:                                               ; preds = %22
  %28 = load i8*, i8** %6, align 8
  %29 = load i8, i8* %28, align 1
  %30 = call i64 @isalpha(i8 signext %29)
  %31 = icmp ne i64 %30, 0
  br label %32

32:                                               ; preds = %27, %22
  %33 = phi i1 [ false, %22 ], [ %31, %27 ]
  br i1 %33, label %34, label %39

34:                                               ; preds = %32
  %35 = load i8*, i8** %6, align 8
  %36 = getelementptr inbounds i8, i8* %35, i32 1
  store i8* %36, i8** %6, align 8
  %37 = load i64, i64* %8, align 8
  %38 = add i64 %37, 1
  store i64 %38, i64* %8, align 8
  br label %22

39:                                               ; preds = %32
  %40 = load i8*, i8** %6, align 8
  %41 = load i8, i8* %40, align 1
  %42 = icmp ne i8 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %39
  %44 = load i64, i64* %8, align 8
  %45 = icmp eq i64 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %43, %39
  store i8* null, i8** %3, align 8
  br label %234

47:                                               ; preds = %43
  %48 = load i64, i64* %8, align 8
  %49 = add i64 %48, 1
  %50 = call i8* @malloc(i64 %49)
  store i8* %50, i8** %7, align 8
  %51 = load i8*, i8** %7, align 8
  %52 = icmp ne i8* %51, null
  %53 = xor i1 %52, true
  %54 = zext i1 %53 to i32
  %55 = call i64 @unlikely(i32 %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %47
  store i8* null, i8** %3, align 8
  br label %234

58:                                               ; preds = %47
  %59 = load i8*, i8** %7, align 8
  %60 = load i8*, i8** %6, align 8
  %61 = load i64, i64* %8, align 8
  %62 = sub i64 0, %61
  %63 = getelementptr inbounds i8, i8* %60, i64 %62
  %64 = load i64, i64* %8, align 8
  %65 = call i32 @strncpy(i8* %59, i8* %63, i64 %64)
  %66 = load i8*, i8** %7, align 8
  %67 = load i64, i64* %8, align 8
  %68 = getelementptr inbounds i8, i8* %66, i64 %67
  store i8 0, i8* %68, align 1
  br label %69

69:                                               ; preds = %81, %58
  %70 = load i8*, i8** %6, align 8
  %71 = load i8, i8* %70, align 1
  %72 = sext i8 %71 to i32
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %79

74:                                               ; preds = %69
  %75 = load i8*, i8** %6, align 8
  %76 = load i8, i8* %75, align 1
  %77 = sext i8 %76 to i32
  %78 = icmp ne i32 %77, 61
  br label %79

79:                                               ; preds = %74, %69
  %80 = phi i1 [ false, %69 ], [ %78, %74 ]
  br i1 %80, label %81, label %84

81:                                               ; preds = %79
  %82 = load i8*, i8** %6, align 8
  %83 = getelementptr inbounds i8, i8* %82, i32 1
  store i8* %83, i8** %6, align 8
  br label %69

84:                                               ; preds = %79
  %85 = load i8*, i8** %6, align 8
  %86 = load i8, i8* %85, align 1
  %87 = icmp ne i8 %86, 0
  br i1 %87, label %92, label %88

88:                                               ; preds = %84
  %89 = load i8*, i8** %6, align 8
  %90 = load i8**, i8*** %4, align 8
  store i8* %89, i8** %90, align 8
  %91 = load i8*, i8** %7, align 8
  store i8* %91, i8** %3, align 8
  br label %234

92:                                               ; preds = %84
  %93 = load i8*, i8** %6, align 8
  %94 = getelementptr inbounds i8, i8* %93, i32 1
  store i8* %94, i8** %6, align 8
  br label %95

95:                                               ; preds = %107, %92
  %96 = load i8*, i8** %6, align 8
  %97 = load i8, i8* %96, align 1
  %98 = sext i8 %97 to i32
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %105

100:                                              ; preds = %95
  %101 = load i8*, i8** %6, align 8
  %102 = load i8, i8* %101, align 1
  %103 = call i64 @isspace(i8 signext %102)
  %104 = icmp ne i64 %103, 0
  br label %105

105:                                              ; preds = %100, %95
  %106 = phi i1 [ false, %95 ], [ %104, %100 ]
  br i1 %106, label %107, label %110

107:                                              ; preds = %105
  %108 = load i8*, i8** %6, align 8
  %109 = getelementptr inbounds i8, i8* %108, i32 1
  store i8* %109, i8** %6, align 8
  br label %95

110:                                              ; preds = %105
  %111 = load i8*, i8** %6, align 8
  %112 = load i8, i8* %111, align 1
  %113 = sext i8 %112 to i32
  %114 = icmp eq i32 %113, 39
  br i1 %114, label %120, label %115

115:                                              ; preds = %110
  %116 = load i8*, i8** %6, align 8
  %117 = load i8, i8* %116, align 1
  %118 = sext i8 %117 to i32
  %119 = icmp eq i32 %118, 34
  br i1 %119, label %120, label %125

120:                                              ; preds = %115, %110
  %121 = load i8*, i8** %6, align 8
  %122 = load i8, i8* %121, align 1
  store i8 %122, i8* %9, align 1
  %123 = load i8*, i8** %6, align 8
  %124 = getelementptr inbounds i8, i8* %123, i32 1
  store i8* %124, i8** %6, align 8
  br label %126

125:                                              ; preds = %115
  store i8 0, i8* %9, align 1
  br label %126

126:                                              ; preds = %125, %120
  br label %127

127:                                              ; preds = %139, %126
  %128 = load i8*, i8** %6, align 8
  %129 = load i8, i8* %128, align 1
  %130 = sext i8 %129 to i32
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %137

132:                                              ; preds = %127
  %133 = load i8*, i8** %6, align 8
  %134 = load i8, i8* %133, align 1
  %135 = call i64 @isspace(i8 signext %134)
  %136 = icmp ne i64 %135, 0
  br label %137

137:                                              ; preds = %132, %127
  %138 = phi i1 [ false, %127 ], [ %136, %132 ]
  br i1 %138, label %139, label %142

139:                                              ; preds = %137
  %140 = load i8*, i8** %6, align 8
  %141 = getelementptr inbounds i8, i8* %140, i32 1
  store i8* %141, i8** %6, align 8
  br label %127

142:                                              ; preds = %137
  store i64 0, i64* %8, align 8
  br label %143

143:                                              ; preds = %181, %142
  %144 = load i8*, i8** %6, align 8
  %145 = load i8, i8* %144, align 1
  %146 = sext i8 %145 to i32
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %148, label %179

148:                                              ; preds = %143
  %149 = load i8, i8* %9, align 1
  %150 = sext i8 %149 to i32
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %152, label %159

152:                                              ; preds = %148
  %153 = load i8*, i8** %6, align 8
  %154 = load i8, i8* %153, align 1
  %155 = sext i8 %154 to i32
  %156 = load i8, i8* %9, align 1
  %157 = sext i8 %156 to i32
  %158 = icmp ne i32 %155, %157
  br i1 %158, label %177, label %159

159:                                              ; preds = %152, %148
  %160 = load i8, i8* %9, align 1
  %161 = sext i8 %160 to i32
  %162 = icmp eq i32 %161, 0
  br i1 %162, label %163, label %175

163:                                              ; preds = %159
  %164 = load i8*, i8** %6, align 8
  %165 = load i8, i8* %164, align 1
  %166 = call i64 @isspace(i8 signext %165)
  %167 = icmp ne i64 %166, 0
  br i1 %167, label %173, label %168

168:                                              ; preds = %163
  %169 = load i8*, i8** %6, align 8
  %170 = load i8, i8* %169, align 1
  %171 = sext i8 %170 to i32
  %172 = icmp ne i32 %171, 62
  br label %173

173:                                              ; preds = %168, %163
  %174 = phi i1 [ false, %163 ], [ %172, %168 ]
  br label %175

175:                                              ; preds = %173, %159
  %176 = phi i1 [ false, %159 ], [ %174, %173 ]
  br label %177

177:                                              ; preds = %175, %152
  %178 = phi i1 [ true, %152 ], [ %176, %175 ]
  br label %179

179:                                              ; preds = %177, %143
  %180 = phi i1 [ false, %143 ], [ %178, %177 ]
  br i1 %180, label %181, label %186

181:                                              ; preds = %179
  %182 = load i8*, i8** %6, align 8
  %183 = getelementptr inbounds i8, i8* %182, i32 1
  store i8* %183, i8** %6, align 8
  %184 = load i64, i64* %8, align 8
  %185 = add i64 %184, 1
  store i64 %185, i64* %8, align 8
  br label %143

186:                                              ; preds = %179
  %187 = load i64, i64* %8, align 8
  %188 = icmp eq i64 %187, 0
  br i1 %188, label %189, label %193

189:                                              ; preds = %186
  %190 = load i8*, i8** %6, align 8
  %191 = load i8**, i8*** %4, align 8
  store i8* %190, i8** %191, align 8
  %192 = load i8*, i8** %7, align 8
  store i8* %192, i8** %3, align 8
  br label %234

193:                                              ; preds = %186
  %194 = load i64, i64* %8, align 8
  %195 = add i64 %194, 1
  %196 = call i8* @malloc(i64 %195)
  %197 = load i8**, i8*** %5, align 8
  store i8* %196, i8** %197, align 8
  %198 = icmp ne i8* %196, null
  %199 = xor i1 %198, true
  %200 = zext i1 %199 to i32
  %201 = call i64 @unlikely(i32 %200)
  %202 = icmp ne i64 %201, 0
  br i1 %202, label %203, label %206

203:                                              ; preds = %193
  %204 = load i8*, i8** %7, align 8
  %205 = call i32 @free(i8* %204)
  store i8* null, i8** %3, align 8
  br label %234

206:                                              ; preds = %193
  %207 = load i8**, i8*** %5, align 8
  %208 = load i8*, i8** %207, align 8
  %209 = load i8*, i8** %6, align 8
  %210 = load i64, i64* %8, align 8
  %211 = sub i64 0, %210
  %212 = getelementptr inbounds i8, i8* %209, i64 %211
  %213 = load i64, i64* %8, align 8
  %214 = call i32 @strncpy(i8* %208, i8* %212, i64 %213)
  %215 = load i8**, i8*** %5, align 8
  %216 = load i8*, i8** %215, align 8
  %217 = load i64, i64* %8, align 8
  %218 = getelementptr inbounds i8, i8* %216, i64 %217
  store i8 0, i8* %218, align 1
  %219 = load i8, i8* %9, align 1
  %220 = sext i8 %219 to i32
  %221 = icmp ne i32 %220, 0
  br i1 %221, label %222, label %230

222:                                              ; preds = %206
  %223 = load i8*, i8** %6, align 8
  %224 = load i8, i8* %223, align 1
  %225 = sext i8 %224 to i32
  %226 = icmp ne i32 %225, 0
  br i1 %226, label %227, label %230

227:                                              ; preds = %222
  %228 = load i8*, i8** %6, align 8
  %229 = getelementptr inbounds i8, i8* %228, i32 1
  store i8* %229, i8** %6, align 8
  br label %230

230:                                              ; preds = %227, %222, %206
  %231 = load i8*, i8** %6, align 8
  %232 = load i8**, i8*** %4, align 8
  store i8* %231, i8** %232, align 8
  %233 = load i8*, i8** %7, align 8
  store i8* %233, i8** %3, align 8
  br label %234

234:                                              ; preds = %230, %203, %189, %88, %57, %46
  %235 = load i8*, i8** %3, align 8
  ret i8* %235
}

declare dso_local i64 @isalpha(i8 signext) #1

declare dso_local i8* @malloc(i64) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @strncpy(i8*, i8*, i64) #1

declare dso_local i64 @isspace(i8 signext) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
