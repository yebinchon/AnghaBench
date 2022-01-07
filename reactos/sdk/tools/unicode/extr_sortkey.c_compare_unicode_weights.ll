; ModuleID = '/home/carl/AnghaBench/reactos/sdk/tools/unicode/extr_sortkey.c_compare_unicode_weights.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/tools/unicode/extr_sortkey.c_compare_unicode_weights.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@NORM_IGNORESYMBOLS = common dso_local global i32 0, align 4
@C1_PUNCT = common dso_local global i32 0, align 4
@C1_SPACE = common dso_local global i32 0, align 4
@SORT_STRINGSORT = common dso_local global i32 0, align 4
@collation_table = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*, i32, i8*, i32)* @compare_unicode_weights to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @compare_unicode_weights(i32 %0, i8* %1, i32 %2, i8* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store i32 %0, i32* %7, align 4
  store i8* %1, i8** %8, align 8
  store i32 %2, i32* %9, align 4
  store i8* %3, i8** %10, align 8
  store i32 %4, i32* %11, align 4
  br label %16

16:                                               ; preds = %173, %103, %87, %60, %5
  %17 = load i32, i32* %9, align 4
  %18 = icmp sgt i32 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %16
  %20 = load i32, i32* %11, align 4
  %21 = icmp sgt i32 %20, 0
  br label %22

22:                                               ; preds = %19, %16
  %23 = phi i1 [ false, %16 ], [ %21, %19 ]
  br i1 %23, label %24, label %182

24:                                               ; preds = %22
  %25 = load i32, i32* %7, align 4
  %26 = load i32, i32* @NORM_IGNORESYMBOLS, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %62

29:                                               ; preds = %24
  store i32 0, i32* %15, align 4
  %30 = load i8*, i8** %8, align 8
  %31 = load i8, i8* %30, align 1
  %32 = call i32 @get_char_typeW(i8 signext %31)
  %33 = load i32, i32* @C1_PUNCT, align 4
  %34 = load i32, i32* @C1_SPACE, align 4
  %35 = or i32 %33, %34
  %36 = and i32 %32, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %43

38:                                               ; preds = %29
  %39 = load i8*, i8** %8, align 8
  %40 = getelementptr inbounds i8, i8* %39, i32 1
  store i8* %40, i8** %8, align 8
  %41 = load i32, i32* %9, align 4
  %42 = add nsw i32 %41, -1
  store i32 %42, i32* %9, align 4
  store i32 1, i32* %15, align 4
  br label %43

43:                                               ; preds = %38, %29
  %44 = load i8*, i8** %10, align 8
  %45 = load i8, i8* %44, align 1
  %46 = call i32 @get_char_typeW(i8 signext %45)
  %47 = load i32, i32* @C1_PUNCT, align 4
  %48 = load i32, i32* @C1_SPACE, align 4
  %49 = or i32 %47, %48
  %50 = and i32 %46, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %57

52:                                               ; preds = %43
  %53 = load i8*, i8** %10, align 8
  %54 = getelementptr inbounds i8, i8* %53, i32 1
  store i8* %54, i8** %10, align 8
  %55 = load i32, i32* %11, align 4
  %56 = add nsw i32 %55, -1
  store i32 %56, i32* %11, align 4
  store i32 1, i32* %15, align 4
  br label %57

57:                                               ; preds = %52, %43
  %58 = load i32, i32* %15, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %57
  br label %16

61:                                               ; preds = %57
  br label %62

62:                                               ; preds = %61, %24
  %63 = load i32, i32* %7, align 4
  %64 = load i32, i32* @SORT_STRINGSORT, align 4
  %65 = and i32 %63, %64
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %110, label %67

67:                                               ; preds = %62
  %68 = load i8*, i8** %8, align 8
  %69 = load i8, i8* %68, align 1
  %70 = sext i8 %69 to i32
  %71 = icmp eq i32 %70, 45
  br i1 %71, label %77, label %72

72:                                               ; preds = %67
  %73 = load i8*, i8** %8, align 8
  %74 = load i8, i8* %73, align 1
  %75 = sext i8 %74 to i32
  %76 = icmp eq i32 %75, 39
  br i1 %76, label %77, label %93

77:                                               ; preds = %72, %67
  %78 = load i8*, i8** %10, align 8
  %79 = load i8, i8* %78, align 1
  %80 = sext i8 %79 to i32
  %81 = icmp ne i32 %80, 45
  br i1 %81, label %82, label %92

82:                                               ; preds = %77
  %83 = load i8*, i8** %10, align 8
  %84 = load i8, i8* %83, align 1
  %85 = sext i8 %84 to i32
  %86 = icmp ne i32 %85, 39
  br i1 %86, label %87, label %92

87:                                               ; preds = %82
  %88 = load i8*, i8** %8, align 8
  %89 = getelementptr inbounds i8, i8* %88, i32 1
  store i8* %89, i8** %8, align 8
  %90 = load i32, i32* %9, align 4
  %91 = add nsw i32 %90, -1
  store i32 %91, i32* %9, align 4
  br label %16

92:                                               ; preds = %82, %77
  br label %109

93:                                               ; preds = %72
  %94 = load i8*, i8** %10, align 8
  %95 = load i8, i8* %94, align 1
  %96 = sext i8 %95 to i32
  %97 = icmp eq i32 %96, 45
  br i1 %97, label %103, label %98

98:                                               ; preds = %93
  %99 = load i8*, i8** %10, align 8
  %100 = load i8, i8* %99, align 1
  %101 = sext i8 %100 to i32
  %102 = icmp eq i32 %101, 39
  br i1 %102, label %103, label %108

103:                                              ; preds = %98, %93
  %104 = load i8*, i8** %10, align 8
  %105 = getelementptr inbounds i8, i8* %104, i32 1
  store i8* %105, i8** %10, align 8
  %106 = load i32, i32* %11, align 4
  %107 = add nsw i32 %106, -1
  store i32 %107, i32* %11, align 4
  br label %16

108:                                              ; preds = %98
  br label %109

109:                                              ; preds = %108, %92
  br label %110

110:                                              ; preds = %109, %62
  %111 = load i8*, i8** @collation_table, align 8
  %112 = load i8*, i8** @collation_table, align 8
  %113 = load i8*, i8** %8, align 8
  %114 = load i8, i8* %113, align 1
  %115 = sext i8 %114 to i32
  %116 = ashr i32 %115, 8
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds i8, i8* %112, i64 %117
  %119 = load i8, i8* %118, align 1
  %120 = sext i8 %119 to i32
  %121 = load i8*, i8** %8, align 8
  %122 = load i8, i8* %121, align 1
  %123 = sext i8 %122 to i32
  %124 = and i32 %123, 255
  %125 = add nsw i32 %120, %124
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds i8, i8* %111, i64 %126
  %128 = load i8, i8* %127, align 1
  %129 = sext i8 %128 to i32
  store i32 %129, i32* %12, align 4
  %130 = load i8*, i8** @collation_table, align 8
  %131 = load i8*, i8** @collation_table, align 8
  %132 = load i8*, i8** %10, align 8
  %133 = load i8, i8* %132, align 1
  %134 = sext i8 %133 to i32
  %135 = ashr i32 %134, 8
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds i8, i8* %131, i64 %136
  %138 = load i8, i8* %137, align 1
  %139 = sext i8 %138 to i32
  %140 = load i8*, i8** %10, align 8
  %141 = load i8, i8* %140, align 1
  %142 = sext i8 %141 to i32
  %143 = and i32 %142, 255
  %144 = add nsw i32 %139, %143
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds i8, i8* %130, i64 %145
  %147 = load i8, i8* %146, align 1
  %148 = sext i8 %147 to i32
  store i32 %148, i32* %13, align 4
  %149 = load i32, i32* %12, align 4
  %150 = icmp ne i32 %149, -1
  br i1 %150, label %151, label %160

151:                                              ; preds = %110
  %152 = load i32, i32* %13, align 4
  %153 = icmp ne i32 %152, -1
  br i1 %153, label %154, label %160

154:                                              ; preds = %151
  %155 = load i32, i32* %12, align 4
  %156 = lshr i32 %155, 16
  %157 = load i32, i32* %13, align 4
  %158 = lshr i32 %157, 16
  %159 = sub i32 %156, %158
  store i32 %159, i32* %14, align 4
  br label %168

160:                                              ; preds = %151, %110
  %161 = load i8*, i8** %8, align 8
  %162 = load i8, i8* %161, align 1
  %163 = sext i8 %162 to i32
  %164 = load i8*, i8** %10, align 8
  %165 = load i8, i8* %164, align 1
  %166 = sext i8 %165 to i32
  %167 = sub nsw i32 %163, %166
  store i32 %167, i32* %14, align 4
  br label %168

168:                                              ; preds = %160, %154
  %169 = load i32, i32* %14, align 4
  %170 = icmp ne i32 %169, 0
  br i1 %170, label %171, label %173

171:                                              ; preds = %168
  %172 = load i32, i32* %14, align 4
  store i32 %172, i32* %6, align 4
  br label %218

173:                                              ; preds = %168
  %174 = load i8*, i8** %8, align 8
  %175 = getelementptr inbounds i8, i8* %174, i32 1
  store i8* %175, i8** %8, align 8
  %176 = load i8*, i8** %10, align 8
  %177 = getelementptr inbounds i8, i8* %176, i32 1
  store i8* %177, i8** %10, align 8
  %178 = load i32, i32* %9, align 4
  %179 = add nsw i32 %178, -1
  store i32 %179, i32* %9, align 4
  %180 = load i32, i32* %11, align 4
  %181 = add nsw i32 %180, -1
  store i32 %181, i32* %11, align 4
  br label %16

182:                                              ; preds = %22
  br label %183

183:                                              ; preds = %193, %182
  %184 = load i32, i32* %9, align 4
  %185 = icmp ne i32 %184, 0
  br i1 %185, label %186, label %191

186:                                              ; preds = %183
  %187 = load i8*, i8** %8, align 8
  %188 = load i8, i8* %187, align 1
  %189 = icmp ne i8 %188, 0
  %190 = xor i1 %189, true
  br label %191

191:                                              ; preds = %186, %183
  %192 = phi i1 [ false, %183 ], [ %190, %186 ]
  br i1 %192, label %193, label %198

193:                                              ; preds = %191
  %194 = load i8*, i8** %8, align 8
  %195 = getelementptr inbounds i8, i8* %194, i32 1
  store i8* %195, i8** %8, align 8
  %196 = load i32, i32* %9, align 4
  %197 = add nsw i32 %196, -1
  store i32 %197, i32* %9, align 4
  br label %183

198:                                              ; preds = %191
  br label %199

199:                                              ; preds = %209, %198
  %200 = load i32, i32* %11, align 4
  %201 = icmp ne i32 %200, 0
  br i1 %201, label %202, label %207

202:                                              ; preds = %199
  %203 = load i8*, i8** %10, align 8
  %204 = load i8, i8* %203, align 1
  %205 = icmp ne i8 %204, 0
  %206 = xor i1 %205, true
  br label %207

207:                                              ; preds = %202, %199
  %208 = phi i1 [ false, %199 ], [ %206, %202 ]
  br i1 %208, label %209, label %214

209:                                              ; preds = %207
  %210 = load i8*, i8** %10, align 8
  %211 = getelementptr inbounds i8, i8* %210, i32 1
  store i8* %211, i8** %10, align 8
  %212 = load i32, i32* %11, align 4
  %213 = add nsw i32 %212, -1
  store i32 %213, i32* %11, align 4
  br label %199

214:                                              ; preds = %207
  %215 = load i32, i32* %9, align 4
  %216 = load i32, i32* %11, align 4
  %217 = sub nsw i32 %215, %216
  store i32 %217, i32* %6, align 4
  br label %218

218:                                              ; preds = %214, %171
  %219 = load i32, i32* %6, align 4
  ret i32 %219
}

declare dso_local i32 @get_char_typeW(i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
