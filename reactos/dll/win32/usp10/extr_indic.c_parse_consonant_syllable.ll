; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/usp10/extr_indic.c_parse_consonant_syllable.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/usp10/extr_indic.c_parse_consonant_syllable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@lex_Nukta = common dso_local global i64 0, align 8
@lex_Anudatta = common dso_local global i64 0, align 8
@lex_Halant = common dso_local global i64 0, align 8
@lex_Modifier = common dso_local global i64 0, align 8
@lex_Vedic = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32, i32, i32*, i32, i64 (i32)*)* @parse_consonant_syllable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_consonant_syllable(i32* %0, i32 %1, i32 %2, i32* %3, i32 %4, i64 (i32)* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64 (i32)*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store i32* %0, i32** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32* %3, i32** %11, align 8
  store i32 %4, i32* %12, align 4
  store i64 (i32)* %5, i64 (i32)** %13, align 8
  store i32 0, i32* %15, align 4
  br label %16

16:                                               ; preds = %30, %6
  %17 = load i32*, i32** %8, align 8
  %18 = load i32, i32* %9, align 4
  %19 = load i32, i32* %10, align 4
  %20 = load i32, i32* %12, align 4
  %21 = load i64 (i32)*, i64 (i32)** %13, align 8
  %22 = call i32 @consonant_header(i32* %17, i32 %18, i32 %19, i32 %20, i64 (i32)* %21)
  store i32 %22, i32* %14, align 4
  %23 = load i32, i32* %14, align 4
  %24 = icmp ne i32 %23, -1
  br i1 %24, label %25, label %29

25:                                               ; preds = %16
  %26 = load i32, i32* %14, align 4
  store i32 %26, i32* %12, align 4
  %27 = load i32, i32* %15, align 4
  %28 = add nsw i32 %27, 1
  store i32 %28, i32* %15, align 4
  br label %29

29:                                               ; preds = %25, %16
  br label %30

30:                                               ; preds = %29
  %31 = load i32, i32* %14, align 4
  %32 = icmp ne i32 %31, -1
  br i1 %32, label %16, label %33

33:                                               ; preds = %30
  %34 = load i32, i32* %15, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %46, label %36

36:                                               ; preds = %33
  %37 = load i64 (i32)*, i64 (i32)** %13, align 8
  %38 = load i32*, i32** %8, align 8
  %39 = load i32, i32* %12, align 4
  %40 = zext i32 %39 to i64
  %41 = getelementptr inbounds i32, i32* %38, i64 %40
  %42 = load i32, i32* %41, align 4
  %43 = call i64 %37(i32 %42)
  %44 = call i64 @is_consonant(i64 %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %51

46:                                               ; preds = %36, %33
  %47 = load i32, i32* %12, align 4
  %48 = load i32*, i32** %11, align 8
  store i32 %47, i32* %48, align 4
  %49 = load i32, i32* %12, align 4
  %50 = add i32 %49, 1
  store i32 %50, i32* %12, align 4
  br label %52

51:                                               ; preds = %36
  store i32 -1, i32* %7, align 4
  br label %216

52:                                               ; preds = %46
  %53 = load i32, i32* %12, align 4
  %54 = load i32, i32* %9, align 4
  %55 = icmp ult i32 %53, %54
  br i1 %55, label %56, label %69

56:                                               ; preds = %52
  %57 = load i64 (i32)*, i64 (i32)** %13, align 8
  %58 = load i32*, i32** %8, align 8
  %59 = load i32, i32* %12, align 4
  %60 = zext i32 %59 to i64
  %61 = getelementptr inbounds i32, i32* %58, i64 %60
  %62 = load i32, i32* %61, align 4
  %63 = call i64 %57(i32 %62)
  %64 = load i64, i64* @lex_Nukta, align 8
  %65 = icmp eq i64 %63, %64
  br i1 %65, label %66, label %69

66:                                               ; preds = %56
  %67 = load i32, i32* %12, align 4
  %68 = add i32 %67, 1
  store i32 %68, i32* %12, align 4
  br label %69

69:                                               ; preds = %66, %56, %52
  %70 = load i32, i32* %12, align 4
  %71 = load i32, i32* %9, align 4
  %72 = icmp ult i32 %70, %71
  br i1 %72, label %73, label %86

73:                                               ; preds = %69
  %74 = load i64 (i32)*, i64 (i32)** %13, align 8
  %75 = load i32*, i32** %8, align 8
  %76 = load i32, i32* %12, align 4
  %77 = zext i32 %76 to i64
  %78 = getelementptr inbounds i32, i32* %75, i64 %77
  %79 = load i32, i32* %78, align 4
  %80 = call i64 %74(i32 %79)
  %81 = load i64, i64* @lex_Anudatta, align 8
  %82 = icmp eq i64 %80, %81
  br i1 %82, label %83, label %86

83:                                               ; preds = %73
  %84 = load i32, i32* %12, align 4
  %85 = add i32 %84, 1
  store i32 %85, i32* %12, align 4
  br label %86

86:                                               ; preds = %83, %73, %69
  %87 = load i32, i32* %12, align 4
  %88 = load i32, i32* %9, align 4
  %89 = icmp ult i32 %87, %88
  br i1 %89, label %90, label %120

90:                                               ; preds = %86
  %91 = load i64 (i32)*, i64 (i32)** %13, align 8
  %92 = load i32*, i32** %8, align 8
  %93 = load i32, i32* %12, align 4
  %94 = zext i32 %93 to i64
  %95 = getelementptr inbounds i32, i32* %92, i64 %94
  %96 = load i32, i32* %95, align 4
  %97 = call i64 %91(i32 %96)
  %98 = load i64, i64* @lex_Halant, align 8
  %99 = icmp eq i64 %97, %98
  br i1 %99, label %100, label %120

100:                                              ; preds = %90
  %101 = load i32, i32* %12, align 4
  %102 = add i32 %101, 1
  store i32 %102, i32* %12, align 4
  %103 = load i32, i32* %12, align 4
  %104 = load i32, i32* %9, align 4
  %105 = icmp ult i32 %103, %104
  br i1 %105, label %106, label %119

106:                                              ; preds = %100
  %107 = load i64 (i32)*, i64 (i32)** %13, align 8
  %108 = load i32*, i32** %8, align 8
  %109 = load i32, i32* %12, align 4
  %110 = zext i32 %109 to i64
  %111 = getelementptr inbounds i32, i32* %108, i64 %110
  %112 = load i32, i32* %111, align 4
  %113 = call i64 %107(i32 %112)
  %114 = call i64 @is_joiner(i64 %113)
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %116, label %119

116:                                              ; preds = %106
  %117 = load i32, i32* %12, align 4
  %118 = add i32 %117, 1
  store i32 %118, i32* %12, align 4
  br label %119

119:                                              ; preds = %116, %106, %100
  br label %180

120:                                              ; preds = %90, %86
  %121 = load i32, i32* %12, align 4
  %122 = load i32, i32* %9, align 4
  %123 = icmp ult i32 %121, %122
  br i1 %123, label %124, label %179

124:                                              ; preds = %120
  br label %125

125:                                              ; preds = %141, %124
  %126 = load i32, i32* %12, align 4
  %127 = load i32, i32* %9, align 4
  %128 = icmp ult i32 %126, %127
  br i1 %128, label %129, label %139

129:                                              ; preds = %125
  %130 = load i64 (i32)*, i64 (i32)** %13, align 8
  %131 = load i32*, i32** %8, align 8
  %132 = load i32, i32* %12, align 4
  %133 = zext i32 %132 to i64
  %134 = getelementptr inbounds i32, i32* %131, i64 %133
  %135 = load i32, i32* %134, align 4
  %136 = call i64 %130(i32 %135)
  %137 = call i64 @is_matra(i64 %136)
  %138 = icmp ne i64 %137, 0
  br label %139

139:                                              ; preds = %129, %125
  %140 = phi i1 [ false, %125 ], [ %138, %129 ]
  br i1 %140, label %141, label %144

141:                                              ; preds = %139
  %142 = load i32, i32* %12, align 4
  %143 = add i32 %142, 1
  store i32 %143, i32* %12, align 4
  br label %125

144:                                              ; preds = %139
  %145 = load i32, i32* %12, align 4
  %146 = load i32, i32* %9, align 4
  %147 = icmp ult i32 %145, %146
  br i1 %147, label %148, label %161

148:                                              ; preds = %144
  %149 = load i64 (i32)*, i64 (i32)** %13, align 8
  %150 = load i32*, i32** %8, align 8
  %151 = load i32, i32* %12, align 4
  %152 = zext i32 %151 to i64
  %153 = getelementptr inbounds i32, i32* %150, i64 %152
  %154 = load i32, i32* %153, align 4
  %155 = call i64 %149(i32 %154)
  %156 = load i64, i64* @lex_Nukta, align 8
  %157 = icmp eq i64 %155, %156
  br i1 %157, label %158, label %161

158:                                              ; preds = %148
  %159 = load i32, i32* %12, align 4
  %160 = add i32 %159, 1
  store i32 %160, i32* %12, align 4
  br label %161

161:                                              ; preds = %158, %148, %144
  %162 = load i32, i32* %12, align 4
  %163 = load i32, i32* %9, align 4
  %164 = icmp ult i32 %162, %163
  br i1 %164, label %165, label %178

165:                                              ; preds = %161
  %166 = load i64 (i32)*, i64 (i32)** %13, align 8
  %167 = load i32*, i32** %8, align 8
  %168 = load i32, i32* %12, align 4
  %169 = zext i32 %168 to i64
  %170 = getelementptr inbounds i32, i32* %167, i64 %169
  %171 = load i32, i32* %170, align 4
  %172 = call i64 %166(i32 %171)
  %173 = load i64, i64* @lex_Halant, align 8
  %174 = icmp eq i64 %172, %173
  br i1 %174, label %175, label %178

175:                                              ; preds = %165
  %176 = load i32, i32* %12, align 4
  %177 = add i32 %176, 1
  store i32 %177, i32* %12, align 4
  br label %178

178:                                              ; preds = %175, %165, %161
  br label %179

179:                                              ; preds = %178, %120
  br label %180

180:                                              ; preds = %179, %119
  %181 = load i32, i32* %12, align 4
  %182 = load i32, i32* %9, align 4
  %183 = icmp ult i32 %181, %182
  br i1 %183, label %184, label %197

184:                                              ; preds = %180
  %185 = load i64 (i32)*, i64 (i32)** %13, align 8
  %186 = load i32*, i32** %8, align 8
  %187 = load i32, i32* %12, align 4
  %188 = zext i32 %187 to i64
  %189 = getelementptr inbounds i32, i32* %186, i64 %188
  %190 = load i32, i32* %189, align 4
  %191 = call i64 %185(i32 %190)
  %192 = load i64, i64* @lex_Modifier, align 8
  %193 = icmp eq i64 %191, %192
  br i1 %193, label %194, label %197

194:                                              ; preds = %184
  %195 = load i32, i32* %12, align 4
  %196 = add i32 %195, 1
  store i32 %196, i32* %12, align 4
  br label %197

197:                                              ; preds = %194, %184, %180
  %198 = load i32, i32* %12, align 4
  %199 = load i32, i32* %9, align 4
  %200 = icmp ult i32 %198, %199
  br i1 %200, label %201, label %214

201:                                              ; preds = %197
  %202 = load i64 (i32)*, i64 (i32)** %13, align 8
  %203 = load i32*, i32** %8, align 8
  %204 = load i32, i32* %12, align 4
  %205 = zext i32 %204 to i64
  %206 = getelementptr inbounds i32, i32* %203, i64 %205
  %207 = load i32, i32* %206, align 4
  %208 = call i64 %202(i32 %207)
  %209 = load i64, i64* @lex_Vedic, align 8
  %210 = icmp eq i64 %208, %209
  br i1 %210, label %211, label %214

211:                                              ; preds = %201
  %212 = load i32, i32* %12, align 4
  %213 = add i32 %212, 1
  store i32 %213, i32* %12, align 4
  br label %214

214:                                              ; preds = %211, %201, %197
  %215 = load i32, i32* %12, align 4
  store i32 %215, i32* %7, align 4
  br label %216

216:                                              ; preds = %214, %51
  %217 = load i32, i32* %7, align 4
  ret i32 %217
}

declare dso_local i32 @consonant_header(i32*, i32, i32, i32, i64 (i32)*) #1

declare dso_local i64 @is_consonant(i64) #1

declare dso_local i64 @is_joiner(i64) #1

declare dso_local i64 @is_matra(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
