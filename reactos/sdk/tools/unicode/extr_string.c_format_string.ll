; ModuleID = '/home/carl/AnghaBench/reactos/sdk/tools/unicode/extr_string.c_format_string.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/tools/unicode/extr_string.c_format_string.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32*, i64, i8*, i32*, i32)* @format_string to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @format_string(i32* %0, i64 %1, i8* %2, i32* %3, i32 %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i64 %1, i64* %7, align 8
  store i8* %2, i8** %8, align 8
  store i32* %3, i32** %9, align 8
  store i32 %4, i32* %10, align 4
  store i64 0, i64* %11, align 8
  store i32 0, i32* %13, align 4
  store i32 0, i32* %14, align 4
  store i32 0, i32* %15, align 4
  %16 = load i8*, i8** %8, align 8
  %17 = load i8, i8* %16, align 1
  %18 = sext i8 %17 to i32
  %19 = icmp eq i32 %18, 37
  %20 = zext i1 %19 to i32
  %21 = call i32 @assert(i32 %20)
  %22 = load i8*, i8** %8, align 8
  %23 = getelementptr inbounds i8, i8* %22, i32 1
  store i8* %23, i8** %8, align 8
  br label %24

24:                                               ; preds = %57, %5
  %25 = load i8*, i8** %8, align 8
  %26 = load i8, i8* %25, align 1
  %27 = sext i8 %26 to i32
  %28 = icmp eq i32 %27, 48
  br i1 %28, label %49, label %29

29:                                               ; preds = %24
  %30 = load i8*, i8** %8, align 8
  %31 = load i8, i8* %30, align 1
  %32 = sext i8 %31 to i32
  %33 = icmp eq i32 %32, 43
  br i1 %33, label %49, label %34

34:                                               ; preds = %29
  %35 = load i8*, i8** %8, align 8
  %36 = load i8, i8* %35, align 1
  %37 = sext i8 %36 to i32
  %38 = icmp eq i32 %37, 45
  br i1 %38, label %49, label %39

39:                                               ; preds = %34
  %40 = load i8*, i8** %8, align 8
  %41 = load i8, i8* %40, align 1
  %42 = sext i8 %41 to i32
  %43 = icmp eq i32 %42, 32
  br i1 %43, label %49, label %44

44:                                               ; preds = %39
  %45 = load i8*, i8** %8, align 8
  %46 = load i8, i8* %45, align 1
  %47 = sext i8 %46 to i32
  %48 = icmp eq i32 %47, 35
  br label %49

49:                                               ; preds = %44, %39, %34, %29, %24
  %50 = phi i1 [ true, %39 ], [ true, %34 ], [ true, %29 ], [ true, %24 ], [ %48, %44 ]
  br i1 %50, label %51, label %60

51:                                               ; preds = %49
  %52 = load i8*, i8** %8, align 8
  %53 = load i8, i8* %52, align 1
  %54 = sext i8 %53 to i32
  %55 = icmp eq i32 %54, 45
  br i1 %55, label %56, label %57

56:                                               ; preds = %51
  store i32 1, i32* %13, align 4
  br label %57

57:                                               ; preds = %56, %51
  %58 = load i8*, i8** %8, align 8
  %59 = getelementptr inbounds i8, i8* %58, i32 1
  store i8* %59, i8** %8, align 8
  br label %24

60:                                               ; preds = %49
  br label %61

61:                                               ; preds = %66, %60
  %62 = load i8*, i8** %8, align 8
  %63 = load i8, i8* %62, align 1
  %64 = call i64 @isdigit(i8 signext %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %75

66:                                               ; preds = %61
  %67 = load i32, i32* %14, align 4
  %68 = mul nsw i32 %67, 10
  %69 = load i8*, i8** %8, align 8
  %70 = getelementptr inbounds i8, i8* %69, i32 1
  store i8* %70, i8** %8, align 8
  %71 = load i8, i8* %69, align 1
  %72 = sext i8 %71 to i32
  %73 = add nsw i32 %68, %72
  %74 = sub nsw i32 %73, 48
  store i32 %74, i32* %14, align 4
  br label %61

75:                                               ; preds = %61
  %76 = load i32, i32* %10, align 4
  %77 = icmp eq i32 %76, -1
  br i1 %77, label %78, label %81

78:                                               ; preds = %75
  %79 = load i32*, i32** %9, align 8
  %80 = call i32 @strlenW(i32* %79)
  store i32 %80, i32* %10, align 4
  br label %81

81:                                               ; preds = %78, %75
  %82 = load i8*, i8** %8, align 8
  %83 = load i8, i8* %82, align 1
  %84 = sext i8 %83 to i32
  %85 = icmp eq i32 %84, 46
  br i1 %85, label %86, label %110

86:                                               ; preds = %81
  %87 = load i8*, i8** %8, align 8
  %88 = getelementptr inbounds i8, i8* %87, i32 1
  store i8* %88, i8** %8, align 8
  br label %89

89:                                               ; preds = %94, %86
  %90 = load i8*, i8** %8, align 8
  %91 = load i8, i8* %90, align 1
  %92 = call i64 @isdigit(i8 signext %91)
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %103

94:                                               ; preds = %89
  %95 = load i32, i32* %15, align 4
  %96 = mul nsw i32 %95, 10
  %97 = load i8*, i8** %8, align 8
  %98 = getelementptr inbounds i8, i8* %97, i32 1
  store i8* %98, i8** %8, align 8
  %99 = load i8, i8* %97, align 1
  %100 = sext i8 %99 to i32
  %101 = add nsw i32 %96, %100
  %102 = sub nsw i32 %101, 48
  store i32 %102, i32* %15, align 4
  br label %89

103:                                              ; preds = %89
  %104 = load i32, i32* %15, align 4
  %105 = load i32, i32* %10, align 4
  %106 = icmp sgt i32 %104, %105
  br i1 %106, label %107, label %109

107:                                              ; preds = %103
  %108 = load i32, i32* %10, align 4
  store i32 %108, i32* %15, align 4
  br label %109

109:                                              ; preds = %107, %103
  br label %112

110:                                              ; preds = %81
  %111 = load i32, i32* %10, align 4
  store i32 %111, i32* %15, align 4
  br label %112

112:                                              ; preds = %110, %109
  %113 = load i8*, i8** %8, align 8
  %114 = load i8, i8* %113, align 1
  %115 = sext i8 %114 to i32
  %116 = icmp eq i32 %115, 104
  br i1 %116, label %122, label %117

117:                                              ; preds = %112
  %118 = load i8*, i8** %8, align 8
  %119 = load i8, i8* %118, align 1
  %120 = sext i8 %119 to i32
  %121 = icmp eq i32 %120, 108
  br i1 %121, label %122, label %125

122:                                              ; preds = %117, %112
  %123 = load i8*, i8** %8, align 8
  %124 = getelementptr inbounds i8, i8* %123, i32 1
  store i8* %124, i8** %8, align 8
  br label %125

125:                                              ; preds = %122, %117
  %126 = load i8*, i8** %8, align 8
  %127 = load i8, i8* %126, align 1
  %128 = sext i8 %127 to i32
  %129 = icmp eq i32 %128, 115
  %130 = zext i1 %129 to i32
  %131 = call i32 @assert(i32 %130)
  %132 = load i32, i32* %13, align 4
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %158, label %134

134:                                              ; preds = %125
  %135 = load i32, i32* %14, align 4
  %136 = load i32, i32* %15, align 4
  %137 = icmp sgt i32 %135, %136
  br i1 %137, label %138, label %158

138:                                              ; preds = %134
  store i32 0, i32* %12, align 4
  br label %139

139:                                              ; preds = %154, %138
  %140 = load i32, i32* %12, align 4
  %141 = load i32, i32* %14, align 4
  %142 = load i32, i32* %15, align 4
  %143 = sub nsw i32 %141, %142
  %144 = icmp slt i32 %140, %143
  br i1 %144, label %145, label %157

145:                                              ; preds = %139
  %146 = load i64, i64* %11, align 8
  %147 = add i64 %146, 1
  store i64 %147, i64* %11, align 8
  %148 = load i64, i64* %7, align 8
  %149 = icmp ult i64 %146, %148
  br i1 %149, label %150, label %153

150:                                              ; preds = %145
  %151 = load i32*, i32** %6, align 8
  %152 = getelementptr inbounds i32, i32* %151, i32 1
  store i32* %152, i32** %6, align 8
  store i32 32, i32* %151, align 4
  br label %153

153:                                              ; preds = %150, %145
  br label %154

154:                                              ; preds = %153
  %155 = load i32, i32* %12, align 4
  %156 = add nsw i32 %155, 1
  store i32 %156, i32* %12, align 4
  br label %139

157:                                              ; preds = %139
  br label %158

158:                                              ; preds = %157, %134, %125
  %159 = load i64, i64* %11, align 8
  %160 = load i64, i64* %7, align 8
  %161 = icmp ult i64 %159, %160
  br i1 %161, label %162, label %174

162:                                              ; preds = %158
  %163 = load i32*, i32** %6, align 8
  %164 = load i32*, i32** %9, align 8
  %165 = load i32, i32* %15, align 4
  %166 = load i64, i64* %7, align 8
  %167 = load i64, i64* %11, align 8
  %168 = sub i64 %166, %167
  %169 = call i32 @min(i32 %165, i64 %168)
  %170 = sext i32 %169 to i64
  %171 = mul i64 %170, 4
  %172 = trunc i64 %171 to i32
  %173 = call i32 @memcpy(i32* %163, i32* %164, i32 %172)
  br label %174

174:                                              ; preds = %162, %158
  %175 = load i32, i32* %15, align 4
  %176 = sext i32 %175 to i64
  %177 = load i64, i64* %11, align 8
  %178 = add i64 %177, %176
  store i64 %178, i64* %11, align 8
  %179 = load i32, i32* %15, align 4
  %180 = load i32*, i32** %6, align 8
  %181 = sext i32 %179 to i64
  %182 = getelementptr inbounds i32, i32* %180, i64 %181
  store i32* %182, i32** %6, align 8
  %183 = load i32, i32* %13, align 4
  %184 = icmp ne i32 %183, 0
  br i1 %184, label %185, label %209

185:                                              ; preds = %174
  %186 = load i32, i32* %14, align 4
  %187 = load i32, i32* %15, align 4
  %188 = icmp sgt i32 %186, %187
  br i1 %188, label %189, label %209

189:                                              ; preds = %185
  store i32 0, i32* %12, align 4
  br label %190

190:                                              ; preds = %205, %189
  %191 = load i32, i32* %12, align 4
  %192 = load i32, i32* %14, align 4
  %193 = load i32, i32* %15, align 4
  %194 = sub nsw i32 %192, %193
  %195 = icmp slt i32 %191, %194
  br i1 %195, label %196, label %208

196:                                              ; preds = %190
  %197 = load i64, i64* %11, align 8
  %198 = add i64 %197, 1
  store i64 %198, i64* %11, align 8
  %199 = load i64, i64* %7, align 8
  %200 = icmp ult i64 %197, %199
  br i1 %200, label %201, label %204

201:                                              ; preds = %196
  %202 = load i32*, i32** %6, align 8
  %203 = getelementptr inbounds i32, i32* %202, i32 1
  store i32* %203, i32** %6, align 8
  store i32 32, i32* %202, align 4
  br label %204

204:                                              ; preds = %201, %196
  br label %205

205:                                              ; preds = %204
  %206 = load i32, i32* %12, align 4
  %207 = add nsw i32 %206, 1
  store i32 %207, i32* %12, align 4
  br label %190

208:                                              ; preds = %190
  br label %209

209:                                              ; preds = %208, %185, %174
  %210 = load i64, i64* %11, align 8
  ret i64 %210
}

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @isdigit(i8 signext) #1

declare dso_local i32 @strlenW(i32*) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @min(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
