; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/mujs/extr_jsarray.c_Ap_splice.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/mujs/extr_jsarray.c_Ap_splice.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*)* @Ap_splice to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @Ap_splice(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca double, align 8
  store i32* %0, i32** %2, align 8
  %10 = load i32*, i32** %2, align 8
  %11 = call i32 @js_gettop(i32* %10)
  store i32 %11, i32* %3, align 4
  %12 = load i32*, i32** %2, align 8
  %13 = call i32 @js_newarray(i32* %12)
  %14 = load i32*, i32** %2, align 8
  %15 = call i32 @js_getlength(i32* %14, i32 0)
  store i32 %15, i32* %4, align 4
  %16 = load i32*, i32** %2, align 8
  %17 = call double @js_tointeger(i32* %16, i32 1)
  store double %17, double* %9, align 8
  %18 = load double, double* %9, align 8
  %19 = fcmp olt double %18, 0.000000e+00
  br i1 %19, label %20, label %25

20:                                               ; preds = %1
  %21 = load double, double* %9, align 8
  %22 = load i32, i32* %4, align 4
  %23 = sitofp i32 %22 to double
  %24 = fadd double %21, %23
  store double %24, double* %9, align 8
  br label %25

25:                                               ; preds = %20, %1
  %26 = load double, double* %9, align 8
  %27 = fcmp olt double %26, 0.000000e+00
  br i1 %27, label %28, label %29

28:                                               ; preds = %25
  br label %41

29:                                               ; preds = %25
  %30 = load double, double* %9, align 8
  %31 = load i32, i32* %4, align 4
  %32 = sitofp i32 %31 to double
  %33 = fcmp ogt double %30, %32
  br i1 %33, label %34, label %37

34:                                               ; preds = %29
  %35 = load i32, i32* %4, align 4
  %36 = sitofp i32 %35 to double
  br label %39

37:                                               ; preds = %29
  %38 = load double, double* %9, align 8
  br label %39

39:                                               ; preds = %37, %34
  %40 = phi double [ %36, %34 ], [ %38, %37 ]
  br label %41

41:                                               ; preds = %39, %28
  %42 = phi double [ 0.000000e+00, %28 ], [ %40, %39 ]
  %43 = fptosi double %42 to i32
  store i32 %43, i32* %5, align 4
  %44 = load i32*, i32** %2, align 8
  %45 = call double @js_tointeger(i32* %44, i32 2)
  store double %45, double* %9, align 8
  %46 = load double, double* %9, align 8
  %47 = fcmp olt double %46, 0.000000e+00
  br i1 %47, label %48, label %49

48:                                               ; preds = %41
  br label %65

49:                                               ; preds = %41
  %50 = load double, double* %9, align 8
  %51 = load i32, i32* %4, align 4
  %52 = load i32, i32* %5, align 4
  %53 = sub nsw i32 %51, %52
  %54 = sitofp i32 %53 to double
  %55 = fcmp ogt double %50, %54
  br i1 %55, label %56, label %61

56:                                               ; preds = %49
  %57 = load i32, i32* %4, align 4
  %58 = load i32, i32* %5, align 4
  %59 = sub nsw i32 %57, %58
  %60 = sitofp i32 %59 to double
  br label %63

61:                                               ; preds = %49
  %62 = load double, double* %9, align 8
  br label %63

63:                                               ; preds = %61, %56
  %64 = phi double [ %60, %56 ], [ %62, %61 ]
  br label %65

65:                                               ; preds = %63, %48
  %66 = phi double [ 0.000000e+00, %48 ], [ %64, %63 ]
  %67 = fptosi double %66 to i32
  store i32 %67, i32* %6, align 4
  store i32 0, i32* %8, align 4
  br label %68

68:                                               ; preds = %84, %65
  %69 = load i32, i32* %8, align 4
  %70 = load i32, i32* %6, align 4
  %71 = icmp slt i32 %69, %70
  br i1 %71, label %72, label %87

72:                                               ; preds = %68
  %73 = load i32*, i32** %2, align 8
  %74 = load i32, i32* %5, align 4
  %75 = load i32, i32* %8, align 4
  %76 = add nsw i32 %74, %75
  %77 = call i64 @js_hasindex(i32* %73, i32 0, i32 %76)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %83

79:                                               ; preds = %72
  %80 = load i32*, i32** %2, align 8
  %81 = load i32, i32* %8, align 4
  %82 = call i32 @js_setindex(i32* %80, i32 -2, i32 %81)
  br label %83

83:                                               ; preds = %79, %72
  br label %84

84:                                               ; preds = %83
  %85 = load i32, i32* %8, align 4
  %86 = add nsw i32 %85, 1
  store i32 %86, i32* %8, align 4
  br label %68

87:                                               ; preds = %68
  %88 = load i32*, i32** %2, align 8
  %89 = load i32, i32* %6, align 4
  %90 = call i32 @js_setlength(i32* %88, i32 -1, i32 %89)
  %91 = load i32, i32* %3, align 4
  %92 = sub nsw i32 %91, 3
  store i32 %92, i32* %7, align 4
  %93 = load i32, i32* %7, align 4
  %94 = load i32, i32* %6, align 4
  %95 = icmp slt i32 %93, %94
  br i1 %95, label %96, label %146

96:                                               ; preds = %87
  %97 = load i32, i32* %5, align 4
  store i32 %97, i32* %8, align 4
  br label %98

98:                                               ; preds = %124, %96
  %99 = load i32, i32* %8, align 4
  %100 = load i32, i32* %4, align 4
  %101 = load i32, i32* %6, align 4
  %102 = sub nsw i32 %100, %101
  %103 = icmp slt i32 %99, %102
  br i1 %103, label %104, label %127

104:                                              ; preds = %98
  %105 = load i32*, i32** %2, align 8
  %106 = load i32, i32* %8, align 4
  %107 = load i32, i32* %6, align 4
  %108 = add nsw i32 %106, %107
  %109 = call i64 @js_hasindex(i32* %105, i32 0, i32 %108)
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %111, label %117

111:                                              ; preds = %104
  %112 = load i32*, i32** %2, align 8
  %113 = load i32, i32* %8, align 4
  %114 = load i32, i32* %7, align 4
  %115 = add nsw i32 %113, %114
  %116 = call i32 @js_setindex(i32* %112, i32 0, i32 %115)
  br label %123

117:                                              ; preds = %104
  %118 = load i32*, i32** %2, align 8
  %119 = load i32, i32* %8, align 4
  %120 = load i32, i32* %7, align 4
  %121 = add nsw i32 %119, %120
  %122 = call i32 @js_delindex(i32* %118, i32 0, i32 %121)
  br label %123

123:                                              ; preds = %117, %111
  br label %124

124:                                              ; preds = %123
  %125 = load i32, i32* %8, align 4
  %126 = add nsw i32 %125, 1
  store i32 %126, i32* %8, align 4
  br label %98

127:                                              ; preds = %98
  %128 = load i32, i32* %4, align 4
  store i32 %128, i32* %8, align 4
  br label %129

129:                                              ; preds = %142, %127
  %130 = load i32, i32* %8, align 4
  %131 = load i32, i32* %4, align 4
  %132 = load i32, i32* %6, align 4
  %133 = sub nsw i32 %131, %132
  %134 = load i32, i32* %7, align 4
  %135 = add nsw i32 %133, %134
  %136 = icmp sgt i32 %130, %135
  br i1 %136, label %137, label %145

137:                                              ; preds = %129
  %138 = load i32*, i32** %2, align 8
  %139 = load i32, i32* %8, align 4
  %140 = sub nsw i32 %139, 1
  %141 = call i32 @js_delindex(i32* %138, i32 0, i32 %140)
  br label %142

142:                                              ; preds = %137
  %143 = load i32, i32* %8, align 4
  %144 = add nsw i32 %143, -1
  store i32 %144, i32* %8, align 4
  br label %129

145:                                              ; preds = %129
  br label %186

146:                                              ; preds = %87
  %147 = load i32, i32* %7, align 4
  %148 = load i32, i32* %6, align 4
  %149 = icmp sgt i32 %147, %148
  br i1 %149, label %150, label %185

150:                                              ; preds = %146
  %151 = load i32, i32* %4, align 4
  %152 = load i32, i32* %6, align 4
  %153 = sub nsw i32 %151, %152
  store i32 %153, i32* %8, align 4
  br label %154

154:                                              ; preds = %181, %150
  %155 = load i32, i32* %8, align 4
  %156 = load i32, i32* %5, align 4
  %157 = icmp sgt i32 %155, %156
  br i1 %157, label %158, label %184

158:                                              ; preds = %154
  %159 = load i32*, i32** %2, align 8
  %160 = load i32, i32* %8, align 4
  %161 = load i32, i32* %6, align 4
  %162 = add nsw i32 %160, %161
  %163 = sub nsw i32 %162, 1
  %164 = call i64 @js_hasindex(i32* %159, i32 0, i32 %163)
  %165 = icmp ne i64 %164, 0
  br i1 %165, label %166, label %173

166:                                              ; preds = %158
  %167 = load i32*, i32** %2, align 8
  %168 = load i32, i32* %8, align 4
  %169 = load i32, i32* %7, align 4
  %170 = add nsw i32 %168, %169
  %171 = sub nsw i32 %170, 1
  %172 = call i32 @js_setindex(i32* %167, i32 0, i32 %171)
  br label %180

173:                                              ; preds = %158
  %174 = load i32*, i32** %2, align 8
  %175 = load i32, i32* %8, align 4
  %176 = load i32, i32* %7, align 4
  %177 = add nsw i32 %175, %176
  %178 = sub nsw i32 %177, 1
  %179 = call i32 @js_delindex(i32* %174, i32 0, i32 %178)
  br label %180

180:                                              ; preds = %173, %166
  br label %181

181:                                              ; preds = %180
  %182 = load i32, i32* %8, align 4
  %183 = add nsw i32 %182, -1
  store i32 %183, i32* %8, align 4
  br label %154

184:                                              ; preds = %154
  br label %185

185:                                              ; preds = %184, %146
  br label %186

186:                                              ; preds = %185, %145
  store i32 0, i32* %8, align 4
  br label %187

187:                                              ; preds = %201, %186
  %188 = load i32, i32* %8, align 4
  %189 = load i32, i32* %7, align 4
  %190 = icmp slt i32 %188, %189
  br i1 %190, label %191, label %204

191:                                              ; preds = %187
  %192 = load i32*, i32** %2, align 8
  %193 = load i32, i32* %8, align 4
  %194 = add nsw i32 3, %193
  %195 = call i32 @js_copy(i32* %192, i32 %194)
  %196 = load i32*, i32** %2, align 8
  %197 = load i32, i32* %5, align 4
  %198 = load i32, i32* %8, align 4
  %199 = add nsw i32 %197, %198
  %200 = call i32 @js_setindex(i32* %196, i32 0, i32 %199)
  br label %201

201:                                              ; preds = %191
  %202 = load i32, i32* %8, align 4
  %203 = add nsw i32 %202, 1
  store i32 %203, i32* %8, align 4
  br label %187

204:                                              ; preds = %187
  %205 = load i32*, i32** %2, align 8
  %206 = load i32, i32* %4, align 4
  %207 = load i32, i32* %6, align 4
  %208 = sub nsw i32 %206, %207
  %209 = load i32, i32* %7, align 4
  %210 = add nsw i32 %208, %209
  %211 = call i32 @js_setlength(i32* %205, i32 0, i32 %210)
  ret void
}

declare dso_local i32 @js_gettop(i32*) #1

declare dso_local i32 @js_newarray(i32*) #1

declare dso_local i32 @js_getlength(i32*, i32) #1

declare dso_local double @js_tointeger(i32*, i32) #1

declare dso_local i64 @js_hasindex(i32*, i32, i32) #1

declare dso_local i32 @js_setindex(i32*, i32, i32) #1

declare dso_local i32 @js_setlength(i32*, i32, i32) #1

declare dso_local i32 @js_delindex(i32*, i32, i32) #1

declare dso_local i32 @js_copy(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
