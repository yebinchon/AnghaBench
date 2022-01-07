; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/source/fitz/extr_bidi-std.c_fz_bidi_resolve_weak.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/source/fitz/extr_bidi-std.c_fz_bidi_resolve_weak.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@xr = common dso_local global i32 0, align 4
@xl = common dso_local global i32 0, align 4
@BDI_BN = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [28 x i8] c"error: pcls[%zu] > BN (%d)\0A\00", align 1
@action_weak = common dso_local global i32** null, align 8
@XX = common dso_local global i64 0, align 8
@IX = common dso_local global i32 0, align 4
@state_weak = common dso_local global i32** null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fz_bidi_resolve_weak(i32* %0, i32 %1, i64* %2, i32* %3, i64 %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  %18 = alloca i64, align 8
  %19 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i32 %1, i32* %7, align 4
  store i64* %2, i64** %8, align 8
  store i32* %3, i32** %9, align 8
  store i64 %4, i64* %10, align 8
  %20 = load i32, i32* %7, align 4
  %21 = call i64 @odd(i32 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %5
  %24 = load i32, i32* @xr, align 4
  br label %27

25:                                               ; preds = %5
  %26 = load i32, i32* @xl, align 4
  br label %27

27:                                               ; preds = %25, %23
  %28 = phi i32 [ %24, %23 ], [ %26, %25 ]
  store i32 %28, i32* %11, align 4
  %29 = load i32, i32* %7, align 4
  store i32 %29, i32* %17, align 4
  store i64 0, i64* %18, align 8
  store i64 0, i64* %13, align 8
  br label %30

30:                                               ; preds = %191, %27
  %31 = load i64, i64* %13, align 8
  %32 = load i64, i64* %10, align 8
  %33 = icmp ult i64 %31, %32
  br i1 %33, label %34, label %194

34:                                               ; preds = %30
  %35 = load i64*, i64** %8, align 8
  %36 = load i64, i64* %13, align 8
  %37 = getelementptr inbounds i64, i64* %35, i64 %36
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @BDI_BN, align 8
  %40 = icmp sgt i64 %38, %39
  br i1 %40, label %41, label %49

41:                                               ; preds = %34
  %42 = load i32*, i32** %6, align 8
  %43 = load i64, i64* %13, align 8
  %44 = load i64*, i64** %8, align 8
  %45 = load i64, i64* %13, align 8
  %46 = getelementptr inbounds i64, i64* %44, i64 %45
  %47 = load i64, i64* %46, align 8
  %48 = call i32 @fz_warn(i32* %42, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i64 %43, i64 %47)
  br label %49

49:                                               ; preds = %41, %34
  %50 = load i64*, i64** %8, align 8
  %51 = load i64, i64* %13, align 8
  %52 = getelementptr inbounds i64, i64* %50, i64 %51
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* @BDI_BN, align 8
  %55 = icmp eq i64 %53, %54
  br i1 %55, label %56, label %131

56:                                               ; preds = %49
  %57 = load i32, i32* %17, align 4
  %58 = load i32*, i32** %9, align 8
  %59 = load i64, i64* %13, align 8
  %60 = getelementptr inbounds i32, i32* %58, i64 %59
  store i32 %57, i32* %60, align 4
  %61 = load i64, i64* %13, align 8
  %62 = add i64 %61, 1
  %63 = load i64, i64* %10, align 8
  %64 = icmp eq i64 %62, %63
  br i1 %64, label %65, label %75

65:                                               ; preds = %56
  %66 = load i32, i32* %17, align 4
  %67 = load i32, i32* %7, align 4
  %68 = icmp ne i32 %66, %67
  br i1 %68, label %69, label %75

69:                                               ; preds = %65
  %70 = load i32, i32* %17, align 4
  %71 = call i64 @embedding_direction(i32 %70)
  %72 = load i64*, i64** %8, align 8
  %73 = load i64, i64* %13, align 8
  %74 = getelementptr inbounds i64, i64* %72, i64 %73
  store i64 %71, i64* %74, align 8
  br label %130

75:                                               ; preds = %65, %56
  %76 = load i64, i64* %13, align 8
  %77 = add i64 %76, 1
  %78 = load i64, i64* %10, align 8
  %79 = icmp ult i64 %77, %78
  br i1 %79, label %80, label %122

80:                                               ; preds = %75
  %81 = load i32, i32* %17, align 4
  %82 = load i32*, i32** %9, align 8
  %83 = load i64, i64* %13, align 8
  %84 = add i64 %83, 1
  %85 = getelementptr inbounds i32, i32* %82, i64 %84
  %86 = load i32, i32* %85, align 4
  %87 = icmp ne i32 %81, %86
  br i1 %87, label %88, label %122

88:                                               ; preds = %80
  %89 = load i64*, i64** %8, align 8
  %90 = load i64, i64* %13, align 8
  %91 = add i64 %90, 1
  %92 = getelementptr inbounds i64, i64* %89, i64 %91
  %93 = load i64, i64* %92, align 8
  %94 = load i64, i64* @BDI_BN, align 8
  %95 = icmp ne i64 %93, %94
  br i1 %95, label %96, label %122

96:                                               ; preds = %88
  %97 = load i32*, i32** %9, align 8
  %98 = load i64, i64* %13, align 8
  %99 = add i64 %98, 1
  %100 = getelementptr inbounds i32, i32* %97, i64 %99
  %101 = load i32, i32* %100, align 4
  store i32 %101, i32* %19, align 4
  %102 = load i32, i32* %17, align 4
  %103 = load i32, i32* %19, align 4
  %104 = icmp sgt i32 %102, %103
  br i1 %104, label %105, label %107

105:                                              ; preds = %96
  %106 = load i32, i32* %17, align 4
  store i32 %106, i32* %19, align 4
  br label %107

107:                                              ; preds = %105, %96
  %108 = load i32, i32* %19, align 4
  %109 = load i32*, i32** %9, align 8
  %110 = load i64, i64* %13, align 8
  %111 = getelementptr inbounds i32, i32* %109, i64 %110
  store i32 %108, i32* %111, align 4
  %112 = load i32, i32* %19, align 4
  %113 = call i64 @embedding_direction(i32 %112)
  %114 = load i64*, i64** %8, align 8
  %115 = load i64, i64* %13, align 8
  %116 = getelementptr inbounds i64, i64* %114, i64 %115
  store i64 %113, i64* %116, align 8
  %117 = load i32*, i32** %9, align 8
  %118 = load i64, i64* %13, align 8
  %119 = add i64 %118, 1
  %120 = getelementptr inbounds i32, i32* %117, i64 %119
  %121 = load i32, i32* %120, align 4
  store i32 %121, i32* %17, align 4
  br label %129

122:                                              ; preds = %88, %80, %75
  %123 = load i64, i64* %18, align 8
  %124 = icmp ne i64 %123, 0
  br i1 %124, label %125, label %128

125:                                              ; preds = %122
  %126 = load i64, i64* %18, align 8
  %127 = add i64 %126, 1
  store i64 %127, i64* %18, align 8
  br label %128

128:                                              ; preds = %125, %122
  br label %191

129:                                              ; preds = %107
  br label %130

130:                                              ; preds = %129, %69
  br label %131

131:                                              ; preds = %130, %49
  %132 = load i64*, i64** %8, align 8
  %133 = load i64, i64* %13, align 8
  %134 = getelementptr inbounds i64, i64* %132, i64 %133
  %135 = load i64, i64* %134, align 8
  %136 = load i64, i64* @BDI_BN, align 8
  %137 = icmp sle i64 %135, %136
  %138 = zext i1 %137 to i32
  %139 = call i32 @assert(i32 %138)
  %140 = load i64*, i64** %8, align 8
  %141 = load i64, i64* %13, align 8
  %142 = getelementptr inbounds i64, i64* %140, i64 %141
  %143 = load i64, i64* %142, align 8
  store i64 %143, i64* %12, align 8
  %144 = load i32**, i32*** @action_weak, align 8
  %145 = load i32, i32* %11, align 4
  %146 = sext i32 %145 to i64
  %147 = getelementptr inbounds i32*, i32** %144, i64 %146
  %148 = load i32*, i32** %147, align 8
  %149 = load i64, i64* %12, align 8
  %150 = getelementptr inbounds i32, i32* %148, i64 %149
  %151 = load i32, i32* %150, align 4
  store i32 %151, i32* %14, align 4
  %152 = load i32, i32* %14, align 4
  %153 = call i64 @get_deferred_type(i32 %152)
  store i64 %153, i64* %15, align 8
  %154 = load i64, i64* %15, align 8
  %155 = load i64, i64* @XX, align 8
  %156 = icmp ne i64 %154, %155
  br i1 %156, label %157, label %163

157:                                              ; preds = %131
  %158 = load i64*, i64** %8, align 8
  %159 = load i64, i64* %18, align 8
  %160 = load i64, i64* %13, align 8
  %161 = load i64, i64* %15, align 8
  %162 = call i32 @set_deferred_run(i64* %158, i64 %159, i64 %160, i64 %161)
  store i64 0, i64* %18, align 8
  br label %163

163:                                              ; preds = %157, %131
  %164 = load i32, i32* %14, align 4
  %165 = call i64 @get_resolved_type(i32 %164)
  store i64 %165, i64* %16, align 8
  %166 = load i64, i64* %16, align 8
  %167 = load i64, i64* @XX, align 8
  %168 = icmp ne i64 %166, %167
  br i1 %168, label %169, label %174

169:                                              ; preds = %163
  %170 = load i64, i64* %16, align 8
  %171 = load i64*, i64** %8, align 8
  %172 = load i64, i64* %13, align 8
  %173 = getelementptr inbounds i64, i64* %171, i64 %172
  store i64 %170, i64* %173, align 8
  br label %174

174:                                              ; preds = %169, %163
  %175 = load i32, i32* @IX, align 4
  %176 = load i32, i32* %14, align 4
  %177 = and i32 %175, %176
  %178 = icmp ne i32 %177, 0
  br i1 %178, label %179, label %182

179:                                              ; preds = %174
  %180 = load i64, i64* %18, align 8
  %181 = add i64 %180, 1
  store i64 %181, i64* %18, align 8
  br label %182

182:                                              ; preds = %179, %174
  %183 = load i32**, i32*** @state_weak, align 8
  %184 = load i32, i32* %11, align 4
  %185 = sext i32 %184 to i64
  %186 = getelementptr inbounds i32*, i32** %183, i64 %185
  %187 = load i32*, i32** %186, align 8
  %188 = load i64, i64* %12, align 8
  %189 = getelementptr inbounds i32, i32* %187, i64 %188
  %190 = load i32, i32* %189, align 4
  store i32 %190, i32* %11, align 4
  br label %191

191:                                              ; preds = %182, %128
  %192 = load i64, i64* %13, align 8
  %193 = add i64 %192, 1
  store i64 %193, i64* %13, align 8
  br label %30

194:                                              ; preds = %30
  %195 = load i32, i32* %17, align 4
  %196 = call i64 @embedding_direction(i32 %195)
  store i64 %196, i64* %12, align 8
  %197 = load i32**, i32*** @action_weak, align 8
  %198 = load i32, i32* %11, align 4
  %199 = sext i32 %198 to i64
  %200 = getelementptr inbounds i32*, i32** %197, i64 %199
  %201 = load i32*, i32** %200, align 8
  %202 = load i64, i64* %12, align 8
  %203 = getelementptr inbounds i32, i32* %201, i64 %202
  %204 = load i32, i32* %203, align 4
  %205 = call i64 @get_deferred_type(i32 %204)
  store i64 %205, i64* %15, align 8
  %206 = load i64, i64* %15, align 8
  %207 = load i64, i64* @XX, align 8
  %208 = icmp ne i64 %206, %207
  br i1 %208, label %209, label %215

209:                                              ; preds = %194
  %210 = load i64*, i64** %8, align 8
  %211 = load i64, i64* %18, align 8
  %212 = load i64, i64* %13, align 8
  %213 = load i64, i64* %15, align 8
  %214 = call i32 @set_deferred_run(i64* %210, i64 %211, i64 %212, i64 %213)
  br label %215

215:                                              ; preds = %209, %194
  ret void
}

declare dso_local i64 @odd(i32) #1

declare dso_local i32 @fz_warn(i32*, i8*, i64, i64) #1

declare dso_local i64 @embedding_direction(i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @get_deferred_type(i32) #1

declare dso_local i32 @set_deferred_run(i64*, i64, i64, i64) #1

declare dso_local i64 @get_resolved_type(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
