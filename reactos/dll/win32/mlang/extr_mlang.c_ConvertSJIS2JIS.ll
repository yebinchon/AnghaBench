; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/mlang/extr_mlang.c_ConvertSJIS2JIS.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/mlang/extr_mlang.c_ConvertSJIS2JIS.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FALSE = common dso_local global i64 0, align 8
@TRUE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i64, i8*)* @ConvertSJIS2JIS to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ConvertSJIS2JIS(i32* %0, i64 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8, align 1
  %11 = alloca i8, align 1
  %12 = alloca i64, align 8
  store i32* %0, i32** %5, align 8
  store i64 %1, i64* %6, align 8
  store i8* %2, i8** %7, align 8
  store i64 0, i64* %8, align 8
  store i32 0, i32* %9, align 4
  %13 = load i64, i64* @FALSE, align 8
  store i64 %13, i64* %12, align 8
  br label %14

14:                                               ; preds = %194, %3
  %15 = load i64, i64* %8, align 8
  %16 = load i64, i64* %6, align 8
  %17 = icmp ult i64 %15, %16
  br i1 %17, label %18, label %197

18:                                               ; preds = %14
  %19 = load i32*, i32** %5, align 8
  %20 = load i64, i64* %8, align 8
  %21 = getelementptr inbounds i32, i32* %19, i64 %20
  %22 = load i32, i32* %21, align 4
  %23 = and i32 %22, 255
  %24 = trunc i32 %23 to i8
  store i8 %24, i8* %11, align 1
  %25 = load i8, i8* %11, align 1
  %26 = zext i8 %25 to i32
  %27 = icmp eq i32 %26, 10
  br i1 %27, label %32, label %28

28:                                               ; preds = %18
  %29 = load i8, i8* %11, align 1
  %30 = zext i8 %29 to i32
  %31 = icmp eq i32 %30, 13
  br i1 %31, label %32, label %58

32:                                               ; preds = %28, %18
  %33 = load i64, i64* %12, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %44

35:                                               ; preds = %32
  %36 = load i64, i64* @FALSE, align 8
  store i64 %36, i64* %12, align 8
  %37 = load i8*, i8** %7, align 8
  %38 = load i32, i32* %9, align 4
  %39 = call i64 @exit_shift(i8* %37, i32 %38)
  %40 = load i32, i32* %9, align 4
  %41 = sext i32 %40 to i64
  %42 = add nsw i64 %41, %39
  %43 = trunc i64 %42 to i32
  store i32 %43, i32* %9, align 4
  br label %44

44:                                               ; preds = %35, %32
  %45 = load i8*, i8** %7, align 8
  %46 = icmp ne i8* %45, null
  br i1 %46, label %47, label %54

47:                                               ; preds = %44
  %48 = load i8, i8* %11, align 1
  %49 = load i8*, i8** %7, align 8
  %50 = load i32, i32* %9, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %9, align 4
  %52 = sext i32 %50 to i64
  %53 = getelementptr inbounds i8, i8* %49, i64 %52
  store i8 %48, i8* %53, align 1
  br label %57

54:                                               ; preds = %44
  %55 = load i32, i32* %9, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %9, align 4
  br label %57

57:                                               ; preds = %54, %47
  br label %194

58:                                               ; preds = %28
  %59 = load i8, i8* %11, align 1
  %60 = call i64 @SJIS1(i8 zeroext %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %113

62:                                               ; preds = %58
  %63 = load i64, i64* %8, align 8
  %64 = add i64 %63, 1
  store i64 %64, i64* %8, align 8
  %65 = load i64, i64* %8, align 8
  %66 = load i64, i64* %6, align 8
  %67 = icmp uge i64 %65, %66
  br i1 %67, label %68, label %69

68:                                               ; preds = %62
  store i32 0, i32* %4, align 4
  br label %210

69:                                               ; preds = %62
  %70 = load i32*, i32** %5, align 8
  %71 = load i64, i64* %8, align 8
  %72 = getelementptr inbounds i32, i32* %70, i64 %71
  %73 = load i32, i32* %72, align 4
  %74 = and i32 %73, 255
  %75 = trunc i32 %74 to i8
  store i8 %75, i8* %10, align 1
  %76 = load i8, i8* %10, align 1
  %77 = call i64 @SJIS2(i8 zeroext %76)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %93

79:                                               ; preds = %69
  %80 = call i32 @sjis2jis(i8* %11, i8* %10)
  %81 = load i64, i64* %12, align 8
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %92, label %83

83:                                               ; preds = %79
  %84 = load i64, i64* @TRUE, align 8
  store i64 %84, i64* %12, align 8
  %85 = load i8*, i8** %7, align 8
  %86 = load i32, i32* %9, align 4
  %87 = call i64 @enter_shift(i8* %85, i32 %86)
  %88 = load i32, i32* %9, align 4
  %89 = sext i32 %88 to i64
  %90 = add nsw i64 %89, %87
  %91 = trunc i64 %90 to i32
  store i32 %91, i32* %9, align 4
  br label %92

92:                                               ; preds = %83, %79
  br label %93

93:                                               ; preds = %92, %69
  %94 = load i8*, i8** %7, align 8
  %95 = icmp ne i8* %94, null
  br i1 %95, label %96, label %109

96:                                               ; preds = %93
  %97 = load i8, i8* %11, align 1
  %98 = load i8*, i8** %7, align 8
  %99 = load i32, i32* %9, align 4
  %100 = add nsw i32 %99, 1
  store i32 %100, i32* %9, align 4
  %101 = sext i32 %99 to i64
  %102 = getelementptr inbounds i8, i8* %98, i64 %101
  store i8 %97, i8* %102, align 1
  %103 = load i8, i8* %10, align 1
  %104 = load i8*, i8** %7, align 8
  %105 = load i32, i32* %9, align 4
  %106 = add nsw i32 %105, 1
  store i32 %106, i32* %9, align 4
  %107 = sext i32 %105 to i64
  %108 = getelementptr inbounds i8, i8* %104, i64 %107
  store i8 %103, i8* %108, align 1
  br label %112

109:                                              ; preds = %93
  %110 = load i32, i32* %9, align 4
  %111 = add nsw i32 %110, 2
  store i32 %111, i32* %9, align 4
  br label %112

112:                                              ; preds = %109, %96
  br label %193

113:                                              ; preds = %58
  %114 = load i8, i8* %11, align 1
  %115 = call i64 @HANKATA(i8 zeroext %114)
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %117, label %166

117:                                              ; preds = %113
  %118 = load i64, i64* %8, align 8
  %119 = add i64 %118, 1
  %120 = load i64, i64* %6, align 8
  %121 = icmp uge i64 %119, %120
  br i1 %121, label %122, label %123

122:                                              ; preds = %117
  store i32 0, i32* %4, align 4
  br label %210

123:                                              ; preds = %117
  %124 = load i32*, i32** %5, align 8
  %125 = load i64, i64* %8, align 8
  %126 = add i64 %125, 1
  %127 = getelementptr inbounds i32, i32* %124, i64 %126
  %128 = load i32, i32* %127, align 4
  %129 = and i32 %128, 255
  %130 = trunc i32 %129 to i8
  store i8 %130, i8* %10, align 1
  %131 = call i64 @han2zen(i8* %11, i8* %10)
  %132 = load i64, i64* %8, align 8
  %133 = add i64 %132, %131
  store i64 %133, i64* %8, align 8
  %134 = call i32 @sjis2jis(i8* %11, i8* %10)
  %135 = load i64, i64* %12, align 8
  %136 = icmp ne i64 %135, 0
  br i1 %136, label %146, label %137

137:                                              ; preds = %123
  %138 = load i64, i64* @TRUE, align 8
  store i64 %138, i64* %12, align 8
  %139 = load i8*, i8** %7, align 8
  %140 = load i32, i32* %9, align 4
  %141 = call i64 @enter_shift(i8* %139, i32 %140)
  %142 = load i32, i32* %9, align 4
  %143 = sext i32 %142 to i64
  %144 = add nsw i64 %143, %141
  %145 = trunc i64 %144 to i32
  store i32 %145, i32* %9, align 4
  br label %146

146:                                              ; preds = %137, %123
  %147 = load i8*, i8** %7, align 8
  %148 = icmp ne i8* %147, null
  br i1 %148, label %149, label %162

149:                                              ; preds = %146
  %150 = load i8, i8* %11, align 1
  %151 = load i8*, i8** %7, align 8
  %152 = load i32, i32* %9, align 4
  %153 = add nsw i32 %152, 1
  store i32 %153, i32* %9, align 4
  %154 = sext i32 %152 to i64
  %155 = getelementptr inbounds i8, i8* %151, i64 %154
  store i8 %150, i8* %155, align 1
  %156 = load i8, i8* %10, align 1
  %157 = load i8*, i8** %7, align 8
  %158 = load i32, i32* %9, align 4
  %159 = add nsw i32 %158, 1
  store i32 %159, i32* %9, align 4
  %160 = sext i32 %158 to i64
  %161 = getelementptr inbounds i8, i8* %157, i64 %160
  store i8 %156, i8* %161, align 1
  br label %165

162:                                              ; preds = %146
  %163 = load i32, i32* %9, align 4
  %164 = add nsw i32 %163, 2
  store i32 %164, i32* %9, align 4
  br label %165

165:                                              ; preds = %162, %149
  br label %192

166:                                              ; preds = %113
  %167 = load i64, i64* %12, align 8
  %168 = icmp ne i64 %167, 0
  br i1 %168, label %169, label %178

169:                                              ; preds = %166
  %170 = load i64, i64* @FALSE, align 8
  store i64 %170, i64* %12, align 8
  %171 = load i8*, i8** %7, align 8
  %172 = load i32, i32* %9, align 4
  %173 = call i64 @exit_shift(i8* %171, i32 %172)
  %174 = load i32, i32* %9, align 4
  %175 = sext i32 %174 to i64
  %176 = add nsw i64 %175, %173
  %177 = trunc i64 %176 to i32
  store i32 %177, i32* %9, align 4
  br label %178

178:                                              ; preds = %169, %166
  %179 = load i8*, i8** %7, align 8
  %180 = icmp ne i8* %179, null
  br i1 %180, label %181, label %188

181:                                              ; preds = %178
  %182 = load i8, i8* %11, align 1
  %183 = load i8*, i8** %7, align 8
  %184 = load i32, i32* %9, align 4
  %185 = add nsw i32 %184, 1
  store i32 %185, i32* %9, align 4
  %186 = sext i32 %184 to i64
  %187 = getelementptr inbounds i8, i8* %183, i64 %186
  store i8 %182, i8* %187, align 1
  br label %191

188:                                              ; preds = %178
  %189 = load i32, i32* %9, align 4
  %190 = add nsw i32 %189, 1
  store i32 %190, i32* %9, align 4
  br label %191

191:                                              ; preds = %188, %181
  br label %192

192:                                              ; preds = %191, %165
  br label %193

193:                                              ; preds = %192, %112
  br label %194

194:                                              ; preds = %193, %57
  %195 = load i64, i64* %8, align 8
  %196 = add i64 %195, 1
  store i64 %196, i64* %8, align 8
  br label %14

197:                                              ; preds = %14
  %198 = load i64, i64* %12, align 8
  %199 = icmp ne i64 %198, 0
  br i1 %199, label %200, label %208

200:                                              ; preds = %197
  %201 = load i8*, i8** %7, align 8
  %202 = load i32, i32* %9, align 4
  %203 = call i64 @exit_shift(i8* %201, i32 %202)
  %204 = load i32, i32* %9, align 4
  %205 = sext i32 %204 to i64
  %206 = add nsw i64 %205, %203
  %207 = trunc i64 %206 to i32
  store i32 %207, i32* %9, align 4
  br label %208

208:                                              ; preds = %200, %197
  %209 = load i32, i32* %9, align 4
  store i32 %209, i32* %4, align 4
  br label %210

210:                                              ; preds = %208, %122, %68
  %211 = load i32, i32* %4, align 4
  ret i32 %211
}

declare dso_local i64 @exit_shift(i8*, i32) #1

declare dso_local i64 @SJIS1(i8 zeroext) #1

declare dso_local i64 @SJIS2(i8 zeroext) #1

declare dso_local i32 @sjis2jis(i8*, i8*) #1

declare dso_local i64 @enter_shift(i8*, i32) #1

declare dso_local i64 @HANKATA(i8 zeroext) #1

declare dso_local i64 @han2zen(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
