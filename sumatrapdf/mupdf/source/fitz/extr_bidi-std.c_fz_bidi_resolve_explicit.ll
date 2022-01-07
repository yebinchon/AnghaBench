; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/source/fitz/extr_bidi-std.c_fz_bidi_resolve_explicit.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/source/fitz/extr_bidi-std.c_fz_bidi_resolve_explicit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@BIDI_LEVEL_MAX = common dso_local global i64 0, align 8
@BDI_BN = common dso_local global i32 0, align 4
@BDI_N = common dso_local global i32 0, align 4
@BDI_L = common dso_local global i32 0, align 4
@BDI_R = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @fz_bidi_resolve_explicit(i64 %0, i32 %1, i32* %2, i64* %3, i64 %4, i64 %5) #0 {
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store i64 %0, i64* %7, align 8
  store i32 %1, i32* %8, align 4
  store i32* %2, i32** %9, align 8
  store i64* %3, i64** %10, align 8
  store i64 %4, i64* %11, align 8
  store i64 %5, i64* %12, align 8
  %16 = load i64, i64* %12, align 8
  %17 = trunc i64 %16 to i32
  store i32 %17, i32* %14, align 4
  %18 = load i64, i64* %12, align 8
  %19 = icmp sge i64 %18, 0
  br i1 %19, label %20, label %27

20:                                               ; preds = %6
  %21 = load i64, i64* %7, align 8
  %22 = icmp sge i64 %21, 0
  br i1 %22, label %23, label %27

23:                                               ; preds = %20
  %24 = load i64, i64* %7, align 8
  %25 = load i64, i64* @BIDI_LEVEL_MAX, align 8
  %26 = icmp sle i64 %24, %25
  br label %27

27:                                               ; preds = %23, %20, %6
  %28 = phi i1 [ false, %20 ], [ false, %6 ], [ %26, %23 ]
  %29 = zext i1 %28 to i32
  %30 = call i32 @assert(i32 %29)
  store i64 0, i64* %13, align 8
  br label %31

31:                                               ; preds = %187, %27
  %32 = load i64, i64* %13, align 8
  %33 = load i64, i64* %11, align 8
  %34 = icmp ult i64 %32, %33
  br i1 %34, label %35, label %190

35:                                               ; preds = %31
  %36 = load i32*, i32** %9, align 8
  %37 = load i64, i64* %13, align 8
  %38 = getelementptr inbounds i32, i32* %36, i64 %37
  %39 = load i32, i32* %38, align 4
  store i32 %39, i32* %15, align 4
  %40 = load i32, i32* %15, align 4
  switch i32 %40, label %164 [
    i32 131, label %41
    i32 132, label %41
    i32 128, label %93
    i32 129, label %93
    i32 130, label %145
  ]

41:                                               ; preds = %35, %35
  %42 = load i64, i64* %12, align 8
  %43 = add nsw i64 %42, 1
  store i64 %43, i64* %12, align 8
  %44 = load i64, i64* %7, align 8
  %45 = call i64 @greater_even(i64 %44)
  %46 = load i64, i64* @BIDI_LEVEL_MAX, align 8
  %47 = icmp sle i64 %45, %46
  br i1 %47, label %48, label %88

48:                                               ; preds = %41
  %49 = load i64, i64* %7, align 8
  %50 = call i64 @greater_even(i64 %49)
  %51 = load i64*, i64** %10, align 8
  %52 = load i64, i64* %13, align 8
  %53 = getelementptr inbounds i64, i64* %51, i64 %52
  store i64 %50, i64* %53, align 8
  %54 = load i32, i32* @BDI_BN, align 4
  %55 = load i32*, i32** %9, align 8
  %56 = load i64, i64* %13, align 8
  %57 = getelementptr inbounds i32, i32* %55, i64 %56
  store i32 %54, i32* %57, align 4
  %58 = load i64*, i64** %10, align 8
  %59 = load i64, i64* %13, align 8
  %60 = getelementptr inbounds i64, i64* %58, i64 %59
  %61 = load i64, i64* %60, align 8
  %62 = load i32, i32* %15, align 4
  %63 = icmp eq i32 %62, 132
  br i1 %63, label %64, label %66

64:                                               ; preds = %48
  %65 = load i32, i32* @BDI_N, align 4
  br label %68

66:                                               ; preds = %48
  %67 = load i32, i32* @BDI_L, align 4
  br label %68

68:                                               ; preds = %66, %64
  %69 = phi i32 [ %65, %64 ], [ %67, %66 ]
  %70 = load i32*, i32** %9, align 8
  %71 = load i64, i64* %13, align 8
  %72 = add i64 %71, 1
  %73 = getelementptr inbounds i32, i32* %70, i64 %72
  %74 = load i64*, i64** %10, align 8
  %75 = load i64, i64* %13, align 8
  %76 = add i64 %75, 1
  %77 = getelementptr inbounds i64, i64* %74, i64 %76
  %78 = load i64, i64* %11, align 8
  %79 = load i64, i64* %13, align 8
  %80 = add i64 %79, 1
  %81 = sub i64 %78, %80
  %82 = load i64, i64* %12, align 8
  %83 = call i64 @fz_bidi_resolve_explicit(i64 %61, i32 %69, i32* %73, i64* %77, i64 %81, i64 %82)
  %84 = load i64, i64* %13, align 8
  %85 = add i64 %84, %83
  store i64 %85, i64* %13, align 8
  %86 = load i64, i64* %12, align 8
  %87 = add nsw i64 %86, -1
  store i64 %87, i64* %12, align 8
  br label %187

88:                                               ; preds = %41
  %89 = load i32, i32* @BDI_BN, align 4
  %90 = load i32*, i32** %9, align 8
  %91 = load i64, i64* %13, align 8
  %92 = getelementptr inbounds i32, i32* %90, i64 %91
  store i32 %89, i32* %92, align 4
  store i32 %89, i32* %15, align 4
  br label %164

93:                                               ; preds = %35, %35
  %94 = load i64, i64* %12, align 8
  %95 = add nsw i64 %94, 1
  store i64 %95, i64* %12, align 8
  %96 = load i64, i64* %7, align 8
  %97 = call i64 @greater_odd(i64 %96)
  %98 = load i64, i64* @BIDI_LEVEL_MAX, align 8
  %99 = icmp sle i64 %97, %98
  br i1 %99, label %100, label %140

100:                                              ; preds = %93
  %101 = load i64, i64* %7, align 8
  %102 = call i64 @greater_odd(i64 %101)
  %103 = load i64*, i64** %10, align 8
  %104 = load i64, i64* %13, align 8
  %105 = getelementptr inbounds i64, i64* %103, i64 %104
  store i64 %102, i64* %105, align 8
  %106 = load i32, i32* @BDI_BN, align 4
  %107 = load i32*, i32** %9, align 8
  %108 = load i64, i64* %13, align 8
  %109 = getelementptr inbounds i32, i32* %107, i64 %108
  store i32 %106, i32* %109, align 4
  %110 = load i64*, i64** %10, align 8
  %111 = load i64, i64* %13, align 8
  %112 = getelementptr inbounds i64, i64* %110, i64 %111
  %113 = load i64, i64* %112, align 8
  %114 = load i32, i32* %15, align 4
  %115 = icmp eq i32 %114, 129
  br i1 %115, label %116, label %118

116:                                              ; preds = %100
  %117 = load i32, i32* @BDI_N, align 4
  br label %120

118:                                              ; preds = %100
  %119 = load i32, i32* @BDI_R, align 4
  br label %120

120:                                              ; preds = %118, %116
  %121 = phi i32 [ %117, %116 ], [ %119, %118 ]
  %122 = load i32*, i32** %9, align 8
  %123 = load i64, i64* %13, align 8
  %124 = add i64 %123, 1
  %125 = getelementptr inbounds i32, i32* %122, i64 %124
  %126 = load i64*, i64** %10, align 8
  %127 = load i64, i64* %13, align 8
  %128 = add i64 %127, 1
  %129 = getelementptr inbounds i64, i64* %126, i64 %128
  %130 = load i64, i64* %11, align 8
  %131 = load i64, i64* %13, align 8
  %132 = add i64 %131, 1
  %133 = sub i64 %130, %132
  %134 = load i64, i64* %12, align 8
  %135 = call i64 @fz_bidi_resolve_explicit(i64 %113, i32 %121, i32* %125, i64* %129, i64 %133, i64 %134)
  %136 = load i64, i64* %13, align 8
  %137 = add i64 %136, %135
  store i64 %137, i64* %13, align 8
  %138 = load i64, i64* %12, align 8
  %139 = add nsw i64 %138, -1
  store i64 %139, i64* %12, align 8
  br label %187

140:                                              ; preds = %93
  %141 = load i32, i32* @BDI_BN, align 4
  %142 = load i32*, i32** %9, align 8
  %143 = load i64, i64* %13, align 8
  %144 = getelementptr inbounds i32, i32* %142, i64 %143
  store i32 %141, i32* %144, align 4
  store i32 %141, i32* %15, align 4
  br label %164

145:                                              ; preds = %35
  %146 = load i32, i32* @BDI_BN, align 4
  %147 = load i32*, i32** %9, align 8
  %148 = load i64, i64* %13, align 8
  %149 = getelementptr inbounds i32, i32* %147, i64 %148
  store i32 %146, i32* %149, align 4
  store i32 %146, i32* %15, align 4
  %150 = load i64, i64* %12, align 8
  %151 = icmp ne i64 %150, 0
  br i1 %151, label %152, label %163

152:                                              ; preds = %145
  %153 = load i32, i32* %14, align 4
  %154 = sext i32 %153 to i64
  %155 = load i64, i64* %12, align 8
  %156 = icmp slt i64 %154, %155
  br i1 %156, label %157, label %160

157:                                              ; preds = %152
  %158 = load i64, i64* %12, align 8
  %159 = add nsw i64 %158, -1
  store i64 %159, i64* %12, align 8
  br label %162

160:                                              ; preds = %152
  %161 = load i64, i64* %13, align 8
  store i64 %161, i64* %11, align 8
  br label %162

162:                                              ; preds = %160, %157
  br label %163

163:                                              ; preds = %162, %145
  br label %164

164:                                              ; preds = %35, %163, %140, %88
  %165 = load i32, i32* %8, align 4
  %166 = load i32, i32* @BDI_N, align 4
  %167 = icmp ne i32 %165, %166
  br i1 %167, label %168, label %170

168:                                              ; preds = %164
  %169 = load i32, i32* %8, align 4
  store i32 %169, i32* %15, align 4
  br label %170

170:                                              ; preds = %168, %164
  %171 = load i64, i64* %7, align 8
  %172 = load i64*, i64** %10, align 8
  %173 = load i64, i64* %13, align 8
  %174 = getelementptr inbounds i64, i64* %172, i64 %173
  store i64 %171, i64* %174, align 8
  %175 = load i32*, i32** %9, align 8
  %176 = load i64, i64* %13, align 8
  %177 = getelementptr inbounds i32, i32* %175, i64 %176
  %178 = load i32, i32* %177, align 4
  %179 = load i32, i32* @BDI_BN, align 4
  %180 = icmp ne i32 %178, %179
  br i1 %180, label %181, label %186

181:                                              ; preds = %170
  %182 = load i32, i32* %15, align 4
  %183 = load i32*, i32** %9, align 8
  %184 = load i64, i64* %13, align 8
  %185 = getelementptr inbounds i32, i32* %183, i64 %184
  store i32 %182, i32* %185, align 4
  br label %186

186:                                              ; preds = %181, %170
  br label %187

187:                                              ; preds = %186, %120, %68
  %188 = load i64, i64* %13, align 8
  %189 = add i64 %188, 1
  store i64 %189, i64* %13, align 8
  br label %31

190:                                              ; preds = %31
  %191 = load i64, i64* %13, align 8
  ret i64 %191
}

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @greater_even(i64) #1

declare dso_local i64 @greater_odd(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
