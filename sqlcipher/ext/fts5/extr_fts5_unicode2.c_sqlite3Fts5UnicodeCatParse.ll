; ModuleID = '/home/carl/AnghaBench/sqlcipher/ext/fts5/extr_fts5_unicode2.c_sqlite3Fts5UnicodeCatParse.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/ext/fts5/extr_fts5_unicode2.c_sqlite3Fts5UnicodeCatParse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sqlite3Fts5UnicodeCatParse(i8* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  store i8* %0, i8** %4, align 8
  store i32* %1, i32** %5, align 8
  %6 = load i32*, i32** %5, align 8
  %7 = getelementptr inbounds i32, i32* %6, i64 0
  store i32 1, i32* %7, align 4
  %8 = load i8*, i8** %4, align 8
  %9 = getelementptr inbounds i8, i8* %8, i64 0
  %10 = load i8, i8* %9, align 1
  %11 = sext i8 %10 to i32
  switch i32 %11, label %223 [
    i32 67, label %12
    i32 76, label %45
    i32 77, label %83
    i32 78, label %106
    i32 80, label %129
    i32 83, label %172
    i32 90, label %200
  ]

12:                                               ; preds = %2
  %13 = load i8*, i8** %4, align 8
  %14 = getelementptr inbounds i8, i8* %13, i64 1
  %15 = load i8, i8* %14, align 1
  %16 = sext i8 %15 to i32
  switch i32 %16, label %43 [
    i32 99, label %17
    i32 102, label %20
    i32 110, label %23
    i32 115, label %26
    i32 111, label %29
    i32 42, label %32
  ]

17:                                               ; preds = %12
  %18 = load i32*, i32** %5, align 8
  %19 = getelementptr inbounds i32, i32* %18, i64 1
  store i32 1, i32* %19, align 4
  br label %44

20:                                               ; preds = %12
  %21 = load i32*, i32** %5, align 8
  %22 = getelementptr inbounds i32, i32* %21, i64 2
  store i32 1, i32* %22, align 4
  br label %44

23:                                               ; preds = %12
  %24 = load i32*, i32** %5, align 8
  %25 = getelementptr inbounds i32, i32* %24, i64 3
  store i32 1, i32* %25, align 4
  br label %44

26:                                               ; preds = %12
  %27 = load i32*, i32** %5, align 8
  %28 = getelementptr inbounds i32, i32* %27, i64 4
  store i32 1, i32* %28, align 4
  br label %44

29:                                               ; preds = %12
  %30 = load i32*, i32** %5, align 8
  %31 = getelementptr inbounds i32, i32* %30, i64 31
  store i32 1, i32* %31, align 4
  br label %44

32:                                               ; preds = %12
  %33 = load i32*, i32** %5, align 8
  %34 = getelementptr inbounds i32, i32* %33, i64 1
  store i32 1, i32* %34, align 4
  %35 = load i32*, i32** %5, align 8
  %36 = getelementptr inbounds i32, i32* %35, i64 2
  store i32 1, i32* %36, align 4
  %37 = load i32*, i32** %5, align 8
  %38 = getelementptr inbounds i32, i32* %37, i64 3
  store i32 1, i32* %38, align 4
  %39 = load i32*, i32** %5, align 8
  %40 = getelementptr inbounds i32, i32* %39, i64 4
  store i32 1, i32* %40, align 4
  %41 = load i32*, i32** %5, align 8
  %42 = getelementptr inbounds i32, i32* %41, i64 31
  store i32 1, i32* %42, align 4
  br label %44

43:                                               ; preds = %12
  store i32 1, i32* %3, align 4
  br label %224

44:                                               ; preds = %32, %29, %26, %23, %20, %17
  br label %223

45:                                               ; preds = %2
  %46 = load i8*, i8** %4, align 8
  %47 = getelementptr inbounds i8, i8* %46, i64 1
  %48 = load i8, i8* %47, align 1
  %49 = sext i8 %48 to i32
  switch i32 %49, label %81 [
    i32 108, label %50
    i32 109, label %53
    i32 111, label %56
    i32 116, label %59
    i32 117, label %62
    i32 67, label %65
    i32 42, label %68
  ]

50:                                               ; preds = %45
  %51 = load i32*, i32** %5, align 8
  %52 = getelementptr inbounds i32, i32* %51, i64 5
  store i32 1, i32* %52, align 4
  br label %82

53:                                               ; preds = %45
  %54 = load i32*, i32** %5, align 8
  %55 = getelementptr inbounds i32, i32* %54, i64 6
  store i32 1, i32* %55, align 4
  br label %82

56:                                               ; preds = %45
  %57 = load i32*, i32** %5, align 8
  %58 = getelementptr inbounds i32, i32* %57, i64 7
  store i32 1, i32* %58, align 4
  br label %82

59:                                               ; preds = %45
  %60 = load i32*, i32** %5, align 8
  %61 = getelementptr inbounds i32, i32* %60, i64 8
  store i32 1, i32* %61, align 4
  br label %82

62:                                               ; preds = %45
  %63 = load i32*, i32** %5, align 8
  %64 = getelementptr inbounds i32, i32* %63, i64 9
  store i32 1, i32* %64, align 4
  br label %82

65:                                               ; preds = %45
  %66 = load i32*, i32** %5, align 8
  %67 = getelementptr inbounds i32, i32* %66, i64 30
  store i32 1, i32* %67, align 4
  br label %82

68:                                               ; preds = %45
  %69 = load i32*, i32** %5, align 8
  %70 = getelementptr inbounds i32, i32* %69, i64 5
  store i32 1, i32* %70, align 4
  %71 = load i32*, i32** %5, align 8
  %72 = getelementptr inbounds i32, i32* %71, i64 6
  store i32 1, i32* %72, align 4
  %73 = load i32*, i32** %5, align 8
  %74 = getelementptr inbounds i32, i32* %73, i64 7
  store i32 1, i32* %74, align 4
  %75 = load i32*, i32** %5, align 8
  %76 = getelementptr inbounds i32, i32* %75, i64 8
  store i32 1, i32* %76, align 4
  %77 = load i32*, i32** %5, align 8
  %78 = getelementptr inbounds i32, i32* %77, i64 9
  store i32 1, i32* %78, align 4
  %79 = load i32*, i32** %5, align 8
  %80 = getelementptr inbounds i32, i32* %79, i64 30
  store i32 1, i32* %80, align 4
  br label %82

81:                                               ; preds = %45
  store i32 1, i32* %3, align 4
  br label %224

82:                                               ; preds = %68, %65, %62, %59, %56, %53, %50
  br label %223

83:                                               ; preds = %2
  %84 = load i8*, i8** %4, align 8
  %85 = getelementptr inbounds i8, i8* %84, i64 1
  %86 = load i8, i8* %85, align 1
  %87 = sext i8 %86 to i32
  switch i32 %87, label %104 [
    i32 99, label %88
    i32 101, label %91
    i32 110, label %94
    i32 42, label %97
  ]

88:                                               ; preds = %83
  %89 = load i32*, i32** %5, align 8
  %90 = getelementptr inbounds i32, i32* %89, i64 10
  store i32 1, i32* %90, align 4
  br label %105

91:                                               ; preds = %83
  %92 = load i32*, i32** %5, align 8
  %93 = getelementptr inbounds i32, i32* %92, i64 11
  store i32 1, i32* %93, align 4
  br label %105

94:                                               ; preds = %83
  %95 = load i32*, i32** %5, align 8
  %96 = getelementptr inbounds i32, i32* %95, i64 12
  store i32 1, i32* %96, align 4
  br label %105

97:                                               ; preds = %83
  %98 = load i32*, i32** %5, align 8
  %99 = getelementptr inbounds i32, i32* %98, i64 10
  store i32 1, i32* %99, align 4
  %100 = load i32*, i32** %5, align 8
  %101 = getelementptr inbounds i32, i32* %100, i64 11
  store i32 1, i32* %101, align 4
  %102 = load i32*, i32** %5, align 8
  %103 = getelementptr inbounds i32, i32* %102, i64 12
  store i32 1, i32* %103, align 4
  br label %105

104:                                              ; preds = %83
  store i32 1, i32* %3, align 4
  br label %224

105:                                              ; preds = %97, %94, %91, %88
  br label %223

106:                                              ; preds = %2
  %107 = load i8*, i8** %4, align 8
  %108 = getelementptr inbounds i8, i8* %107, i64 1
  %109 = load i8, i8* %108, align 1
  %110 = sext i8 %109 to i32
  switch i32 %110, label %127 [
    i32 100, label %111
    i32 108, label %114
    i32 111, label %117
    i32 42, label %120
  ]

111:                                              ; preds = %106
  %112 = load i32*, i32** %5, align 8
  %113 = getelementptr inbounds i32, i32* %112, i64 13
  store i32 1, i32* %113, align 4
  br label %128

114:                                              ; preds = %106
  %115 = load i32*, i32** %5, align 8
  %116 = getelementptr inbounds i32, i32* %115, i64 14
  store i32 1, i32* %116, align 4
  br label %128

117:                                              ; preds = %106
  %118 = load i32*, i32** %5, align 8
  %119 = getelementptr inbounds i32, i32* %118, i64 15
  store i32 1, i32* %119, align 4
  br label %128

120:                                              ; preds = %106
  %121 = load i32*, i32** %5, align 8
  %122 = getelementptr inbounds i32, i32* %121, i64 13
  store i32 1, i32* %122, align 4
  %123 = load i32*, i32** %5, align 8
  %124 = getelementptr inbounds i32, i32* %123, i64 14
  store i32 1, i32* %124, align 4
  %125 = load i32*, i32** %5, align 8
  %126 = getelementptr inbounds i32, i32* %125, i64 15
  store i32 1, i32* %126, align 4
  br label %128

127:                                              ; preds = %106
  store i32 1, i32* %3, align 4
  br label %224

128:                                              ; preds = %120, %117, %114, %111
  br label %223

129:                                              ; preds = %2
  %130 = load i8*, i8** %4, align 8
  %131 = getelementptr inbounds i8, i8* %130, i64 1
  %132 = load i8, i8* %131, align 1
  %133 = sext i8 %132 to i32
  switch i32 %133, label %170 [
    i32 99, label %134
    i32 100, label %137
    i32 101, label %140
    i32 102, label %143
    i32 105, label %146
    i32 111, label %149
    i32 115, label %152
    i32 42, label %155
  ]

134:                                              ; preds = %129
  %135 = load i32*, i32** %5, align 8
  %136 = getelementptr inbounds i32, i32* %135, i64 16
  store i32 1, i32* %136, align 4
  br label %171

137:                                              ; preds = %129
  %138 = load i32*, i32** %5, align 8
  %139 = getelementptr inbounds i32, i32* %138, i64 17
  store i32 1, i32* %139, align 4
  br label %171

140:                                              ; preds = %129
  %141 = load i32*, i32** %5, align 8
  %142 = getelementptr inbounds i32, i32* %141, i64 18
  store i32 1, i32* %142, align 4
  br label %171

143:                                              ; preds = %129
  %144 = load i32*, i32** %5, align 8
  %145 = getelementptr inbounds i32, i32* %144, i64 19
  store i32 1, i32* %145, align 4
  br label %171

146:                                              ; preds = %129
  %147 = load i32*, i32** %5, align 8
  %148 = getelementptr inbounds i32, i32* %147, i64 20
  store i32 1, i32* %148, align 4
  br label %171

149:                                              ; preds = %129
  %150 = load i32*, i32** %5, align 8
  %151 = getelementptr inbounds i32, i32* %150, i64 21
  store i32 1, i32* %151, align 4
  br label %171

152:                                              ; preds = %129
  %153 = load i32*, i32** %5, align 8
  %154 = getelementptr inbounds i32, i32* %153, i64 22
  store i32 1, i32* %154, align 4
  br label %171

155:                                              ; preds = %129
  %156 = load i32*, i32** %5, align 8
  %157 = getelementptr inbounds i32, i32* %156, i64 16
  store i32 1, i32* %157, align 4
  %158 = load i32*, i32** %5, align 8
  %159 = getelementptr inbounds i32, i32* %158, i64 17
  store i32 1, i32* %159, align 4
  %160 = load i32*, i32** %5, align 8
  %161 = getelementptr inbounds i32, i32* %160, i64 18
  store i32 1, i32* %161, align 4
  %162 = load i32*, i32** %5, align 8
  %163 = getelementptr inbounds i32, i32* %162, i64 19
  store i32 1, i32* %163, align 4
  %164 = load i32*, i32** %5, align 8
  %165 = getelementptr inbounds i32, i32* %164, i64 20
  store i32 1, i32* %165, align 4
  %166 = load i32*, i32** %5, align 8
  %167 = getelementptr inbounds i32, i32* %166, i64 21
  store i32 1, i32* %167, align 4
  %168 = load i32*, i32** %5, align 8
  %169 = getelementptr inbounds i32, i32* %168, i64 22
  store i32 1, i32* %169, align 4
  br label %171

170:                                              ; preds = %129
  store i32 1, i32* %3, align 4
  br label %224

171:                                              ; preds = %155, %152, %149, %146, %143, %140, %137, %134
  br label %223

172:                                              ; preds = %2
  %173 = load i8*, i8** %4, align 8
  %174 = getelementptr inbounds i8, i8* %173, i64 1
  %175 = load i8, i8* %174, align 1
  %176 = sext i8 %175 to i32
  switch i32 %176, label %198 [
    i32 99, label %177
    i32 107, label %180
    i32 109, label %183
    i32 111, label %186
    i32 42, label %189
  ]

177:                                              ; preds = %172
  %178 = load i32*, i32** %5, align 8
  %179 = getelementptr inbounds i32, i32* %178, i64 23
  store i32 1, i32* %179, align 4
  br label %199

180:                                              ; preds = %172
  %181 = load i32*, i32** %5, align 8
  %182 = getelementptr inbounds i32, i32* %181, i64 24
  store i32 1, i32* %182, align 4
  br label %199

183:                                              ; preds = %172
  %184 = load i32*, i32** %5, align 8
  %185 = getelementptr inbounds i32, i32* %184, i64 25
  store i32 1, i32* %185, align 4
  br label %199

186:                                              ; preds = %172
  %187 = load i32*, i32** %5, align 8
  %188 = getelementptr inbounds i32, i32* %187, i64 26
  store i32 1, i32* %188, align 4
  br label %199

189:                                              ; preds = %172
  %190 = load i32*, i32** %5, align 8
  %191 = getelementptr inbounds i32, i32* %190, i64 23
  store i32 1, i32* %191, align 4
  %192 = load i32*, i32** %5, align 8
  %193 = getelementptr inbounds i32, i32* %192, i64 24
  store i32 1, i32* %193, align 4
  %194 = load i32*, i32** %5, align 8
  %195 = getelementptr inbounds i32, i32* %194, i64 25
  store i32 1, i32* %195, align 4
  %196 = load i32*, i32** %5, align 8
  %197 = getelementptr inbounds i32, i32* %196, i64 26
  store i32 1, i32* %197, align 4
  br label %199

198:                                              ; preds = %172
  store i32 1, i32* %3, align 4
  br label %224

199:                                              ; preds = %189, %186, %183, %180, %177
  br label %223

200:                                              ; preds = %2
  %201 = load i8*, i8** %4, align 8
  %202 = getelementptr inbounds i8, i8* %201, i64 1
  %203 = load i8, i8* %202, align 1
  %204 = sext i8 %203 to i32
  switch i32 %204, label %221 [
    i32 108, label %205
    i32 112, label %208
    i32 115, label %211
    i32 42, label %214
  ]

205:                                              ; preds = %200
  %206 = load i32*, i32** %5, align 8
  %207 = getelementptr inbounds i32, i32* %206, i64 27
  store i32 1, i32* %207, align 4
  br label %222

208:                                              ; preds = %200
  %209 = load i32*, i32** %5, align 8
  %210 = getelementptr inbounds i32, i32* %209, i64 28
  store i32 1, i32* %210, align 4
  br label %222

211:                                              ; preds = %200
  %212 = load i32*, i32** %5, align 8
  %213 = getelementptr inbounds i32, i32* %212, i64 29
  store i32 1, i32* %213, align 4
  br label %222

214:                                              ; preds = %200
  %215 = load i32*, i32** %5, align 8
  %216 = getelementptr inbounds i32, i32* %215, i64 27
  store i32 1, i32* %216, align 4
  %217 = load i32*, i32** %5, align 8
  %218 = getelementptr inbounds i32, i32* %217, i64 28
  store i32 1, i32* %218, align 4
  %219 = load i32*, i32** %5, align 8
  %220 = getelementptr inbounds i32, i32* %219, i64 29
  store i32 1, i32* %220, align 4
  br label %222

221:                                              ; preds = %200
  store i32 1, i32* %3, align 4
  br label %224

222:                                              ; preds = %214, %211, %208, %205
  br label %223

223:                                              ; preds = %2, %222, %199, %171, %128, %105, %82, %44
  store i32 0, i32* %3, align 4
  br label %224

224:                                              ; preds = %223, %221, %198, %170, %127, %104, %81, %43
  %225 = load i32, i32* %3, align 4
  ret i32 %225
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
