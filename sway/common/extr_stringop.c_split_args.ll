; ModuleID = '/home/carl/AnghaBench/sway/common/extr_stringop.c_split_args.c'
source_filename = "/home/carl/AnghaBench/sway/common/extr_stringop.c_split_args.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@whitespace = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8** @split_args(i8* %0, i32* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8**, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  store i32* %1, i32** %4, align 8
  %14 = load i32*, i32** %4, align 8
  store i32 0, i32* %14, align 4
  store i32 2, i32* %5, align 4
  %15 = load i32, i32* %5, align 4
  %16 = sext i32 %15 to i64
  %17 = mul i64 8, %16
  %18 = trunc i64 %17 to i32
  %19 = call i8* @malloc(i32 %18)
  %20 = bitcast i8* %19 to i8**
  store i8** %20, i8*** %6, align 8
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  %21 = load i8*, i8** %3, align 8
  store i8* %21, i8** %12, align 8
  %22 = load i8*, i8** %3, align 8
  %23 = icmp ne i8* %22, null
  br i1 %23, label %24, label %211

24:                                               ; preds = %2
  br label %25

25:                                               ; preds = %209, %152, %24
  %26 = load i8*, i8** %3, align 8
  %27 = load i8, i8* %26, align 1
  %28 = icmp ne i8 %27, 0
  br i1 %28, label %29, label %210

29:                                               ; preds = %25
  %30 = load i32, i32* %7, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %39, label %32

32:                                               ; preds = %29
  %33 = load i8*, i8** %12, align 8
  %34 = load i32, i32* @whitespace, align 4
  %35 = call i32 @strspn(i8* %33, i32 %34)
  %36 = load i8*, i8** %12, align 8
  %37 = sext i32 %35 to i64
  %38 = getelementptr inbounds i8, i8* %36, i64 %37
  store i8* %38, i8** %12, align 8
  store i8* %38, i8** %3, align 8
  store i32 1, i32* %7, align 4
  br label %39

39:                                               ; preds = %32, %29
  %40 = load i8*, i8** %12, align 8
  %41 = load i8, i8* %40, align 1
  %42 = sext i8 %41 to i32
  %43 = icmp eq i32 %42, 34
  br i1 %43, label %44, label %55

44:                                               ; preds = %39
  %45 = load i32, i32* %9, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %55, label %47

47:                                               ; preds = %44
  %48 = load i32, i32* %11, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %55, label %50

50:                                               ; preds = %47
  %51 = load i32, i32* %8, align 4
  %52 = icmp ne i32 %51, 0
  %53 = xor i1 %52, true
  %54 = zext i1 %53 to i32
  store i32 %54, i32* %8, align 4
  br label %146

55:                                               ; preds = %47, %44, %39
  %56 = load i8*, i8** %12, align 8
  %57 = load i8, i8* %56, align 1
  %58 = sext i8 %57 to i32
  %59 = icmp eq i32 %58, 39
  br i1 %59, label %60, label %71

60:                                               ; preds = %55
  %61 = load i32, i32* %8, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %71, label %63

63:                                               ; preds = %60
  %64 = load i32, i32* %11, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %71, label %66

66:                                               ; preds = %63
  %67 = load i32, i32* %9, align 4
  %68 = icmp ne i32 %67, 0
  %69 = xor i1 %68, true
  %70 = zext i1 %69 to i32
  store i32 %70, i32* %9, align 4
  br label %145

71:                                               ; preds = %63, %60, %55
  %72 = load i8*, i8** %12, align 8
  %73 = load i8, i8* %72, align 1
  %74 = sext i8 %73 to i32
  %75 = icmp eq i32 %74, 91
  br i1 %75, label %76, label %89

76:                                               ; preds = %71
  %77 = load i32, i32* %8, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %89, label %79

79:                                               ; preds = %76
  %80 = load i32, i32* %9, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %89, label %82

82:                                               ; preds = %79
  %83 = load i32, i32* %10, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %89, label %85

85:                                               ; preds = %82
  %86 = load i32, i32* %11, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %89, label %88

88:                                               ; preds = %85
  store i32 1, i32* %10, align 4
  br label %144

89:                                               ; preds = %85, %82, %79, %76, %71
  %90 = load i8*, i8** %12, align 8
  %91 = load i8, i8* %90, align 1
  %92 = sext i8 %91 to i32
  %93 = icmp eq i32 %92, 93
  br i1 %93, label %94, label %107

94:                                               ; preds = %89
  %95 = load i32, i32* %8, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %107, label %97

97:                                               ; preds = %94
  %98 = load i32, i32* %9, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %107, label %100

100:                                              ; preds = %97
  %101 = load i32, i32* %10, align 4
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %107

103:                                              ; preds = %100
  %104 = load i32, i32* %11, align 4
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %107, label %106

106:                                              ; preds = %103
  store i32 0, i32* %10, align 4
  br label %143

107:                                              ; preds = %103, %100, %97, %94, %89
  %108 = load i8*, i8** %12, align 8
  %109 = load i8, i8* %108, align 1
  %110 = sext i8 %109 to i32
  %111 = icmp eq i32 %110, 92
  br i1 %111, label %112, label %117

112:                                              ; preds = %107
  %113 = load i32, i32* %11, align 4
  %114 = icmp ne i32 %113, 0
  %115 = xor i1 %114, true
  %116 = zext i1 %115 to i32
  store i32 %116, i32* %11, align 4
  br label %142

117:                                              ; preds = %107
  %118 = load i8*, i8** %12, align 8
  %119 = load i8, i8* %118, align 1
  %120 = sext i8 %119 to i32
  %121 = icmp eq i32 %120, 0
  br i1 %121, label %140, label %122

122:                                              ; preds = %117
  %123 = load i32, i32* %8, align 4
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %141, label %125

125:                                              ; preds = %122
  %126 = load i32, i32* %9, align 4
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %141, label %128

128:                                              ; preds = %125
  %129 = load i32, i32* %10, align 4
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %141, label %131

131:                                              ; preds = %128
  %132 = load i32, i32* %11, align 4
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %141, label %134

134:                                              ; preds = %131
  %135 = load i32, i32* @whitespace, align 4
  %136 = load i8*, i8** %12, align 8
  %137 = load i8, i8* %136, align 1
  %138 = call i64 @strchr(i32 %135, i8 signext %137)
  %139 = icmp ne i64 %138, 0
  br i1 %139, label %140, label %141

140:                                              ; preds = %134, %117
  br label %155

141:                                              ; preds = %134, %131, %128, %125, %122
  br label %142

142:                                              ; preds = %141, %112
  br label %143

143:                                              ; preds = %142, %106
  br label %144

144:                                              ; preds = %143, %88
  br label %145

145:                                              ; preds = %144, %66
  br label %146

146:                                              ; preds = %145, %50
  %147 = load i8*, i8** %12, align 8
  %148 = load i8, i8* %147, align 1
  %149 = sext i8 %148 to i32
  %150 = icmp ne i32 %149, 92
  br i1 %150, label %151, label %152

151:                                              ; preds = %146
  store i32 0, i32* %11, align 4
  br label %152

152:                                              ; preds = %151, %146
  %153 = load i8*, i8** %12, align 8
  %154 = getelementptr inbounds i8, i8* %153, i32 1
  store i8* %154, i8** %12, align 8
  br label %25

155:                                              ; preds = %140
  %156 = load i8*, i8** %12, align 8
  %157 = load i8*, i8** %3, align 8
  %158 = ptrtoint i8* %156 to i64
  %159 = ptrtoint i8* %157 to i64
  %160 = sub i64 %158, %159
  %161 = icmp sgt i64 %160, 0
  br i1 %161, label %162, label %209

162:                                              ; preds = %155
  %163 = load i8*, i8** %12, align 8
  %164 = load i8*, i8** %3, align 8
  %165 = ptrtoint i8* %163 to i64
  %166 = ptrtoint i8* %164 to i64
  %167 = sub i64 %165, %166
  %168 = add nsw i64 %167, 1
  %169 = trunc i64 %168 to i32
  %170 = call i8* @malloc(i32 %169)
  store i8* %170, i8** %13, align 8
  %171 = load i8*, i8** %13, align 8
  %172 = load i8*, i8** %3, align 8
  %173 = load i8*, i8** %12, align 8
  %174 = load i8*, i8** %3, align 8
  %175 = ptrtoint i8* %173 to i64
  %176 = ptrtoint i8* %174 to i64
  %177 = sub i64 %175, %176
  %178 = add nsw i64 %177, 1
  %179 = trunc i64 %178 to i32
  %180 = call i32 @strncpy(i8* %171, i8* %172, i32 %179)
  %181 = load i8*, i8** %13, align 8
  %182 = load i8*, i8** %12, align 8
  %183 = load i8*, i8** %3, align 8
  %184 = ptrtoint i8* %182 to i64
  %185 = ptrtoint i8* %183 to i64
  %186 = sub i64 %184, %185
  %187 = getelementptr inbounds i8, i8* %181, i64 %186
  store i8 0, i8* %187, align 1
  %188 = load i8*, i8** %13, align 8
  %189 = load i8**, i8*** %6, align 8
  %190 = load i32*, i32** %4, align 8
  %191 = load i32, i32* %190, align 4
  %192 = sext i32 %191 to i64
  %193 = getelementptr inbounds i8*, i8** %189, i64 %192
  store i8* %188, i8** %193, align 8
  %194 = load i32*, i32** %4, align 8
  %195 = load i32, i32* %194, align 4
  %196 = add nsw i32 %195, 1
  store i32 %196, i32* %194, align 4
  %197 = add nsw i32 %196, 1
  %198 = load i32, i32* %5, align 4
  %199 = icmp eq i32 %197, %198
  br i1 %199, label %200, label %208

200:                                              ; preds = %162
  %201 = load i8**, i8*** %6, align 8
  %202 = load i32, i32* %5, align 4
  %203 = mul nsw i32 %202, 2
  store i32 %203, i32* %5, align 4
  %204 = sext i32 %203 to i64
  %205 = mul i64 %204, 8
  %206 = trunc i64 %205 to i32
  %207 = call i8** @realloc(i8** %201, i32 %206)
  store i8** %207, i8*** %6, align 8
  br label %208

208:                                              ; preds = %200, %162
  br label %209

209:                                              ; preds = %208, %155
  store i32 0, i32* %7, align 4
  store i32 0, i32* %11, align 4
  br label %25

210:                                              ; preds = %25
  br label %211

211:                                              ; preds = %210, %2
  %212 = load i8**, i8*** %6, align 8
  %213 = load i32*, i32** %4, align 8
  %214 = load i32, i32* %213, align 4
  %215 = sext i32 %214 to i64
  %216 = getelementptr inbounds i8*, i8** %212, i64 %215
  store i8* null, i8** %216, align 8
  %217 = load i8**, i8*** %6, align 8
  ret i8** %217
}

declare dso_local i8* @malloc(i32) #1

declare dso_local i32 @strspn(i8*, i32) #1

declare dso_local i64 @strchr(i32, i8 signext) #1

declare dso_local i32 @strncpy(i8*, i8*, i32) #1

declare dso_local i8** @realloc(i8**, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
