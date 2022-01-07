; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/usp10/extr_indic.c_parse_vowel_syllable.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/usp10/extr_indic.c_parse_vowel_syllable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@lex_Nukta = common dso_local global i64 0, align 8
@lex_Halant = common dso_local global i64 0, align 8
@lex_ZWJ = common dso_local global i64 0, align 8
@lex_Modifier = common dso_local global i64 0, align 8
@lex_Vedic = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32, i32, i32, i64 (i32)*)* @parse_vowel_syllable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_vowel_syllable(i32* %0, i32 %1, i32 %2, i32 %3, i64 (i32)* %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64 (i32)*, align 8
  store i32* %0, i32** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i64 (i32)* %4, i64 (i32)** %10, align 8
  %11 = load i32, i32* %9, align 4
  %12 = load i32, i32* %7, align 4
  %13 = icmp ult i32 %11, %12
  br i1 %13, label %14, label %27

14:                                               ; preds = %5
  %15 = load i64 (i32)*, i64 (i32)** %10, align 8
  %16 = load i32*, i32** %6, align 8
  %17 = load i32, i32* %9, align 4
  %18 = zext i32 %17 to i64
  %19 = getelementptr inbounds i32, i32* %16, i64 %18
  %20 = load i32, i32* %19, align 4
  %21 = call i64 %15(i32 %20)
  %22 = load i64, i64* @lex_Nukta, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %27

24:                                               ; preds = %14
  %25 = load i32, i32* %9, align 4
  %26 = add i32 %25, 1
  store i32 %26, i32* %9, align 4
  br label %27

27:                                               ; preds = %24, %14, %5
  %28 = load i32, i32* %9, align 4
  %29 = load i32, i32* %7, align 4
  %30 = icmp ult i32 %28, %29
  br i1 %30, label %31, label %66

31:                                               ; preds = %27
  %32 = load i64 (i32)*, i64 (i32)** %10, align 8
  %33 = load i32*, i32** %6, align 8
  %34 = load i32, i32* %9, align 4
  %35 = zext i32 %34 to i64
  %36 = getelementptr inbounds i32, i32* %33, i64 %35
  %37 = load i32, i32* %36, align 4
  %38 = call i64 %32(i32 %37)
  %39 = call i64 @is_joiner(i64 %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %66

41:                                               ; preds = %31
  %42 = load i64 (i32)*, i64 (i32)** %10, align 8
  %43 = load i32*, i32** %6, align 8
  %44 = load i32, i32* %9, align 4
  %45 = add i32 %44, 1
  %46 = zext i32 %45 to i64
  %47 = getelementptr inbounds i32, i32* %43, i64 %46
  %48 = load i32, i32* %47, align 4
  %49 = call i64 %42(i32 %48)
  %50 = load i64, i64* @lex_Halant, align 8
  %51 = icmp eq i64 %49, %50
  br i1 %51, label %52, label %66

52:                                               ; preds = %41
  %53 = load i64 (i32)*, i64 (i32)** %10, align 8
  %54 = load i32*, i32** %6, align 8
  %55 = load i32, i32* %9, align 4
  %56 = add i32 %55, 2
  %57 = zext i32 %56 to i64
  %58 = getelementptr inbounds i32, i32* %54, i64 %57
  %59 = load i32, i32* %58, align 4
  %60 = call i64 %53(i32 %59)
  %61 = call i64 @is_consonant(i64 %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %66

63:                                               ; preds = %52
  %64 = load i32, i32* %9, align 4
  %65 = add i32 %64, 3
  store i32 %65, i32* %9, align 4
  br label %124

66:                                               ; preds = %52, %41, %31, %27
  %67 = load i32, i32* %9, align 4
  %68 = load i32, i32* %7, align 4
  %69 = icmp ult i32 %67, %68
  br i1 %69, label %70, label %94

70:                                               ; preds = %66
  %71 = load i64 (i32)*, i64 (i32)** %10, align 8
  %72 = load i32*, i32** %6, align 8
  %73 = load i32, i32* %9, align 4
  %74 = zext i32 %73 to i64
  %75 = getelementptr inbounds i32, i32* %72, i64 %74
  %76 = load i32, i32* %75, align 4
  %77 = call i64 %71(i32 %76)
  %78 = load i64, i64* @lex_Halant, align 8
  %79 = icmp eq i64 %77, %78
  br i1 %79, label %80, label %94

80:                                               ; preds = %70
  %81 = load i64 (i32)*, i64 (i32)** %10, align 8
  %82 = load i32*, i32** %6, align 8
  %83 = load i32, i32* %9, align 4
  %84 = add i32 %83, 1
  %85 = zext i32 %84 to i64
  %86 = getelementptr inbounds i32, i32* %82, i64 %85
  %87 = load i32, i32* %86, align 4
  %88 = call i64 %81(i32 %87)
  %89 = call i64 @is_consonant(i64 %88)
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %94

91:                                               ; preds = %80
  %92 = load i32, i32* %9, align 4
  %93 = add i32 %92, 2
  store i32 %93, i32* %9, align 4
  br label %123

94:                                               ; preds = %80, %70, %66
  %95 = load i32, i32* %9, align 4
  %96 = load i32, i32* %7, align 4
  %97 = icmp ult i32 %95, %96
  br i1 %97, label %98, label %122

98:                                               ; preds = %94
  %99 = load i64 (i32)*, i64 (i32)** %10, align 8
  %100 = load i32*, i32** %6, align 8
  %101 = load i32, i32* %9, align 4
  %102 = zext i32 %101 to i64
  %103 = getelementptr inbounds i32, i32* %100, i64 %102
  %104 = load i32, i32* %103, align 4
  %105 = call i64 %99(i32 %104)
  %106 = load i64, i64* @lex_ZWJ, align 8
  %107 = icmp eq i64 %105, %106
  br i1 %107, label %108, label %122

108:                                              ; preds = %98
  %109 = load i64 (i32)*, i64 (i32)** %10, align 8
  %110 = load i32*, i32** %6, align 8
  %111 = load i32, i32* %9, align 4
  %112 = add i32 %111, 1
  %113 = zext i32 %112 to i64
  %114 = getelementptr inbounds i32, i32* %110, i64 %113
  %115 = load i32, i32* %114, align 4
  %116 = call i64 %109(i32 %115)
  %117 = call i64 @is_consonant(i64 %116)
  %118 = icmp ne i64 %117, 0
  br i1 %118, label %119, label %122

119:                                              ; preds = %108
  %120 = load i32, i32* %9, align 4
  %121 = add i32 %120, 2
  store i32 %121, i32* %9, align 4
  br label %122

122:                                              ; preds = %119, %108, %98, %94
  br label %123

123:                                              ; preds = %122, %91
  br label %124

124:                                              ; preds = %123, %63
  %125 = load i32, i32* %9, align 4
  %126 = load i32, i32* %7, align 4
  %127 = icmp ult i32 %125, %126
  br i1 %127, label %128, label %193

128:                                              ; preds = %124
  %129 = load i64 (i32)*, i64 (i32)** %10, align 8
  %130 = load i32*, i32** %6, align 8
  %131 = load i32, i32* %9, align 4
  %132 = zext i32 %131 to i64
  %133 = getelementptr inbounds i32, i32* %130, i64 %132
  %134 = load i32, i32* %133, align 4
  %135 = call i64 %129(i32 %134)
  %136 = call i64 @is_matra(i64 %135)
  %137 = icmp ne i64 %136, 0
  br i1 %137, label %138, label %193

138:                                              ; preds = %128
  br label %139

139:                                              ; preds = %155, %138
  %140 = load i32, i32* %9, align 4
  %141 = load i32, i32* %7, align 4
  %142 = icmp ult i32 %140, %141
  br i1 %142, label %143, label %153

143:                                              ; preds = %139
  %144 = load i64 (i32)*, i64 (i32)** %10, align 8
  %145 = load i32*, i32** %6, align 8
  %146 = load i32, i32* %9, align 4
  %147 = zext i32 %146 to i64
  %148 = getelementptr inbounds i32, i32* %145, i64 %147
  %149 = load i32, i32* %148, align 4
  %150 = call i64 %144(i32 %149)
  %151 = call i64 @is_matra(i64 %150)
  %152 = icmp ne i64 %151, 0
  br label %153

153:                                              ; preds = %143, %139
  %154 = phi i1 [ false, %139 ], [ %152, %143 ]
  br i1 %154, label %155, label %158

155:                                              ; preds = %153
  %156 = load i32, i32* %9, align 4
  %157 = add i32 %156, 1
  store i32 %157, i32* %9, align 4
  br label %139

158:                                              ; preds = %153
  %159 = load i32, i32* %9, align 4
  %160 = load i32, i32* %7, align 4
  %161 = icmp ult i32 %159, %160
  br i1 %161, label %162, label %175

162:                                              ; preds = %158
  %163 = load i64 (i32)*, i64 (i32)** %10, align 8
  %164 = load i32*, i32** %6, align 8
  %165 = load i32, i32* %9, align 4
  %166 = zext i32 %165 to i64
  %167 = getelementptr inbounds i32, i32* %164, i64 %166
  %168 = load i32, i32* %167, align 4
  %169 = call i64 %163(i32 %168)
  %170 = load i64, i64* @lex_Nukta, align 8
  %171 = icmp eq i64 %169, %170
  br i1 %171, label %172, label %175

172:                                              ; preds = %162
  %173 = load i32, i32* %9, align 4
  %174 = add i32 %173, 1
  store i32 %174, i32* %9, align 4
  br label %175

175:                                              ; preds = %172, %162, %158
  %176 = load i32, i32* %9, align 4
  %177 = load i32, i32* %7, align 4
  %178 = icmp ult i32 %176, %177
  br i1 %178, label %179, label %192

179:                                              ; preds = %175
  %180 = load i64 (i32)*, i64 (i32)** %10, align 8
  %181 = load i32*, i32** %6, align 8
  %182 = load i32, i32* %9, align 4
  %183 = zext i32 %182 to i64
  %184 = getelementptr inbounds i32, i32* %181, i64 %183
  %185 = load i32, i32* %184, align 4
  %186 = call i64 %180(i32 %185)
  %187 = load i64, i64* @lex_Halant, align 8
  %188 = icmp eq i64 %186, %187
  br i1 %188, label %189, label %192

189:                                              ; preds = %179
  %190 = load i32, i32* %9, align 4
  %191 = add i32 %190, 1
  store i32 %191, i32* %9, align 4
  br label %192

192:                                              ; preds = %189, %179, %175
  br label %193

193:                                              ; preds = %192, %128, %124
  %194 = load i32, i32* %9, align 4
  %195 = load i32, i32* %7, align 4
  %196 = icmp ult i32 %194, %195
  br i1 %196, label %197, label %210

197:                                              ; preds = %193
  %198 = load i64 (i32)*, i64 (i32)** %10, align 8
  %199 = load i32*, i32** %6, align 8
  %200 = load i32, i32* %9, align 4
  %201 = zext i32 %200 to i64
  %202 = getelementptr inbounds i32, i32* %199, i64 %201
  %203 = load i32, i32* %202, align 4
  %204 = call i64 %198(i32 %203)
  %205 = load i64, i64* @lex_Modifier, align 8
  %206 = icmp eq i64 %204, %205
  br i1 %206, label %207, label %210

207:                                              ; preds = %197
  %208 = load i32, i32* %9, align 4
  %209 = add i32 %208, 1
  store i32 %209, i32* %9, align 4
  br label %210

210:                                              ; preds = %207, %197, %193
  %211 = load i32, i32* %9, align 4
  %212 = load i32, i32* %7, align 4
  %213 = icmp ult i32 %211, %212
  br i1 %213, label %214, label %227

214:                                              ; preds = %210
  %215 = load i64 (i32)*, i64 (i32)** %10, align 8
  %216 = load i32*, i32** %6, align 8
  %217 = load i32, i32* %9, align 4
  %218 = zext i32 %217 to i64
  %219 = getelementptr inbounds i32, i32* %216, i64 %218
  %220 = load i32, i32* %219, align 4
  %221 = call i64 %215(i32 %220)
  %222 = load i64, i64* @lex_Vedic, align 8
  %223 = icmp eq i64 %221, %222
  br i1 %223, label %224, label %227

224:                                              ; preds = %214
  %225 = load i32, i32* %9, align 4
  %226 = add i32 %225, 1
  store i32 %226, i32* %9, align 4
  br label %227

227:                                              ; preds = %224, %214, %210
  %228 = load i32, i32* %9, align 4
  ret i32 %228
}

declare dso_local i64 @is_joiner(i64) #1

declare dso_local i64 @is_consonant(i64) #1

declare dso_local i64 @is_matra(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
