; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/libjpeg-turbo/extr_tjunittest.c_initBuf.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/libjpeg-turbo/extr_tjunittest.c_initBuf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@tjRedOffset = common dso_local global i32* null, align 8
@tjGreenOffset = common dso_local global i32* null, align 8
@tjBlueOffset = common dso_local global i32* null, align 8
@tjPixelSize = common dso_local global i32* null, align 8
@TJPF_GRAY = common dso_local global i32 0, align 4
@TJFLAG_BOTTOMUP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @initBuf(i8* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %19 = load i32*, i32** @tjRedOffset, align 8
  %20 = load i32, i32* %9, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds i32, i32* %19, i64 %21
  %23 = load i32, i32* %22, align 4
  store i32 %23, i32* %11, align 4
  %24 = load i32*, i32** @tjGreenOffset, align 8
  %25 = load i32, i32* %9, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i32, i32* %24, i64 %26
  %28 = load i32, i32* %27, align 4
  store i32 %28, i32* %12, align 4
  %29 = load i32*, i32** @tjBlueOffset, align 8
  %30 = load i32, i32* %9, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i32, i32* %29, i64 %31
  %33 = load i32, i32* %32, align 4
  store i32 %33, i32* %13, align 4
  %34 = load i32*, i32** @tjPixelSize, align 8
  %35 = load i32, i32* %9, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i32, i32* %34, i64 %36
  %38 = load i32, i32* %37, align 4
  store i32 %38, i32* %14, align 4
  store i32 16, i32* %18, align 4
  %39 = load i8*, i8** %6, align 8
  %40 = load i32, i32* %7, align 4
  %41 = load i32, i32* %8, align 4
  %42 = mul nsw i32 %40, %41
  %43 = load i32, i32* %14, align 4
  %44 = mul nsw i32 %42, %43
  %45 = call i32 @memset(i8* %39, i32 0, i32 %44)
  %46 = load i32, i32* %9, align 4
  %47 = load i32, i32* @TJPF_GRAY, align 4
  %48 = icmp eq i32 %46, %47
  br i1 %48, label %49, label %118

49:                                               ; preds = %5
  store i32 0, i32* %16, align 4
  br label %50

50:                                               ; preds = %114, %49
  %51 = load i32, i32* %16, align 4
  %52 = load i32, i32* %8, align 4
  %53 = icmp slt i32 %51, %52
  br i1 %53, label %54, label %117

54:                                               ; preds = %50
  store i32 0, i32* %17, align 4
  br label %55

55:                                               ; preds = %110, %54
  %56 = load i32, i32* %17, align 4
  %57 = load i32, i32* %7, align 4
  %58 = icmp slt i32 %56, %57
  br i1 %58, label %59, label %113

59:                                               ; preds = %55
  %60 = load i32, i32* %10, align 4
  %61 = load i32, i32* @TJFLAG_BOTTOMUP, align 4
  %62 = and i32 %60, %61
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %73

64:                                               ; preds = %59
  %65 = load i32, i32* %8, align 4
  %66 = load i32, i32* %16, align 4
  %67 = sub nsw i32 %65, %66
  %68 = sub nsw i32 %67, 1
  %69 = load i32, i32* %7, align 4
  %70 = mul nsw i32 %68, %69
  %71 = load i32, i32* %17, align 4
  %72 = add nsw i32 %70, %71
  store i32 %72, i32* %15, align 4
  br label %79

73:                                               ; preds = %59
  %74 = load i32, i32* %16, align 4
  %75 = load i32, i32* %7, align 4
  %76 = mul nsw i32 %74, %75
  %77 = load i32, i32* %17, align 4
  %78 = add nsw i32 %76, %77
  store i32 %78, i32* %15, align 4
  br label %79

79:                                               ; preds = %73, %64
  %80 = load i32, i32* %16, align 4
  %81 = sdiv i32 %80, 8
  %82 = load i32, i32* %17, align 4
  %83 = sdiv i32 %82, 8
  %84 = add nsw i32 %81, %83
  %85 = srem i32 %84, 2
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %87, label %98

87:                                               ; preds = %79
  %88 = load i32, i32* %16, align 4
  %89 = load i32, i32* %18, align 4
  %90 = icmp slt i32 %88, %89
  %91 = zext i1 %90 to i64
  %92 = select i1 %90, i32 255, i32 0
  %93 = trunc i32 %92 to i8
  %94 = load i8*, i8** %6, align 8
  %95 = load i32, i32* %15, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds i8, i8* %94, i64 %96
  store i8 %93, i8* %97, align 1
  br label %109

98:                                               ; preds = %79
  %99 = load i32, i32* %16, align 4
  %100 = load i32, i32* %18, align 4
  %101 = icmp slt i32 %99, %100
  %102 = zext i1 %101 to i64
  %103 = select i1 %101, i32 76, i32 226
  %104 = trunc i32 %103 to i8
  %105 = load i8*, i8** %6, align 8
  %106 = load i32, i32* %15, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds i8, i8* %105, i64 %107
  store i8 %104, i8* %108, align 1
  br label %109

109:                                              ; preds = %98, %87
  br label %110

110:                                              ; preds = %109
  %111 = load i32, i32* %17, align 4
  %112 = add nsw i32 %111, 1
  store i32 %112, i32* %17, align 4
  br label %55

113:                                              ; preds = %55
  br label %114

114:                                              ; preds = %113
  %115 = load i32, i32* %16, align 4
  %116 = add nsw i32 %115, 1
  store i32 %116, i32* %16, align 4
  br label %50

117:                                              ; preds = %50
  br label %217

118:                                              ; preds = %5
  store i32 0, i32* %16, align 4
  br label %119

119:                                              ; preds = %213, %118
  %120 = load i32, i32* %16, align 4
  %121 = load i32, i32* %8, align 4
  %122 = icmp slt i32 %120, %121
  br i1 %122, label %123, label %216

123:                                              ; preds = %119
  store i32 0, i32* %17, align 4
  br label %124

124:                                              ; preds = %209, %123
  %125 = load i32, i32* %17, align 4
  %126 = load i32, i32* %7, align 4
  %127 = icmp slt i32 %125, %126
  br i1 %127, label %128, label %212

128:                                              ; preds = %124
  %129 = load i32, i32* %10, align 4
  %130 = load i32, i32* @TJFLAG_BOTTOMUP, align 4
  %131 = and i32 %129, %130
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %142

133:                                              ; preds = %128
  %134 = load i32, i32* %8, align 4
  %135 = load i32, i32* %16, align 4
  %136 = sub nsw i32 %134, %135
  %137 = sub nsw i32 %136, 1
  %138 = load i32, i32* %7, align 4
  %139 = mul nsw i32 %137, %138
  %140 = load i32, i32* %17, align 4
  %141 = add nsw i32 %139, %140
  store i32 %141, i32* %15, align 4
  br label %148

142:                                              ; preds = %128
  %143 = load i32, i32* %16, align 4
  %144 = load i32, i32* %7, align 4
  %145 = mul nsw i32 %143, %144
  %146 = load i32, i32* %17, align 4
  %147 = add nsw i32 %145, %146
  store i32 %147, i32* %15, align 4
  br label %148

148:                                              ; preds = %142, %133
  %149 = load i32, i32* %16, align 4
  %150 = sdiv i32 %149, 8
  %151 = load i32, i32* %17, align 4
  %152 = sdiv i32 %151, 8
  %153 = add nsw i32 %150, %152
  %154 = srem i32 %153, 2
  %155 = icmp eq i32 %154, 0
  br i1 %155, label %156, label %186

156:                                              ; preds = %148
  %157 = load i32, i32* %16, align 4
  %158 = load i32, i32* %18, align 4
  %159 = icmp slt i32 %157, %158
  br i1 %159, label %160, label %185

160:                                              ; preds = %156
  %161 = load i8*, i8** %6, align 8
  %162 = load i32, i32* %15, align 4
  %163 = load i32, i32* %14, align 4
  %164 = mul nsw i32 %162, %163
  %165 = load i32, i32* %11, align 4
  %166 = add nsw i32 %164, %165
  %167 = sext i32 %166 to i64
  %168 = getelementptr inbounds i8, i8* %161, i64 %167
  store i8 -1, i8* %168, align 1
  %169 = load i8*, i8** %6, align 8
  %170 = load i32, i32* %15, align 4
  %171 = load i32, i32* %14, align 4
  %172 = mul nsw i32 %170, %171
  %173 = load i32, i32* %12, align 4
  %174 = add nsw i32 %172, %173
  %175 = sext i32 %174 to i64
  %176 = getelementptr inbounds i8, i8* %169, i64 %175
  store i8 -1, i8* %176, align 1
  %177 = load i8*, i8** %6, align 8
  %178 = load i32, i32* %15, align 4
  %179 = load i32, i32* %14, align 4
  %180 = mul nsw i32 %178, %179
  %181 = load i32, i32* %13, align 4
  %182 = add nsw i32 %180, %181
  %183 = sext i32 %182 to i64
  %184 = getelementptr inbounds i8, i8* %177, i64 %183
  store i8 -1, i8* %184, align 1
  br label %185

185:                                              ; preds = %160, %156
  br label %208

186:                                              ; preds = %148
  %187 = load i8*, i8** %6, align 8
  %188 = load i32, i32* %15, align 4
  %189 = load i32, i32* %14, align 4
  %190 = mul nsw i32 %188, %189
  %191 = load i32, i32* %11, align 4
  %192 = add nsw i32 %190, %191
  %193 = sext i32 %192 to i64
  %194 = getelementptr inbounds i8, i8* %187, i64 %193
  store i8 -1, i8* %194, align 1
  %195 = load i32, i32* %16, align 4
  %196 = load i32, i32* %18, align 4
  %197 = icmp sge i32 %195, %196
  br i1 %197, label %198, label %207

198:                                              ; preds = %186
  %199 = load i8*, i8** %6, align 8
  %200 = load i32, i32* %15, align 4
  %201 = load i32, i32* %14, align 4
  %202 = mul nsw i32 %200, %201
  %203 = load i32, i32* %12, align 4
  %204 = add nsw i32 %202, %203
  %205 = sext i32 %204 to i64
  %206 = getelementptr inbounds i8, i8* %199, i64 %205
  store i8 -1, i8* %206, align 1
  br label %207

207:                                              ; preds = %198, %186
  br label %208

208:                                              ; preds = %207, %185
  br label %209

209:                                              ; preds = %208
  %210 = load i32, i32* %17, align 4
  %211 = add nsw i32 %210, 1
  store i32 %211, i32* %17, align 4
  br label %124

212:                                              ; preds = %124
  br label %213

213:                                              ; preds = %212
  %214 = load i32, i32* %16, align 4
  %215 = add nsw i32 %214, 1
  store i32 %215, i32* %16, align 4
  br label %119

216:                                              ; preds = %119
  br label %217

217:                                              ; preds = %216, %117
  ret void
}

declare dso_local i32 @memset(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
