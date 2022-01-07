; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/source/fitz/extr_bidi-std.c_fz_bidi_resolve_neutrals.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/source/fitz/extr_bidi-std.c_fz_bidi_resolve_neutrals.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@r = common dso_local global i32 0, align 4
@l = common dso_local global i32 0, align 4
@BDI_BN = common dso_local global i64 0, align 8
@action_neutrals = common dso_local global i32** null, align 8
@BDI_N = common dso_local global i64 0, align 8
@In = common dso_local global i32 0, align 4
@state_neutrals = common dso_local global i32** null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fz_bidi_resolve_neutrals(i32 %0, i64* %1, i32* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i64*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  store i32 %0, i32* %5, align 4
  store i64* %1, i64** %6, align 8
  store i32* %2, i32** %7, align 8
  store i64 %3, i64* %8, align 8
  %17 = load i32, i32* %5, align 4
  %18 = call i64 @odd(i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %4
  %21 = load i32, i32* @r, align 4
  br label %24

22:                                               ; preds = %4
  %23 = load i32, i32* @l, align 4
  br label %24

24:                                               ; preds = %22, %20
  %25 = phi i32 [ %21, %20 ], [ %23, %22 ]
  store i32 %25, i32* %9, align 4
  store i64 0, i64* %13, align 8
  %26 = load i32, i32* %5, align 4
  store i32 %26, i32* %14, align 4
  store i64 0, i64* %11, align 8
  br label %27

27:                                               ; preds = %109, %24
  %28 = load i64, i64* %11, align 8
  %29 = load i64, i64* %8, align 8
  %30 = icmp ult i64 %28, %29
  br i1 %30, label %31, label %112

31:                                               ; preds = %27
  %32 = load i64*, i64** %6, align 8
  %33 = load i64, i64* %11, align 8
  %34 = getelementptr inbounds i64, i64* %32, i64 %33
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @BDI_BN, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %38, label %45

38:                                               ; preds = %31
  %39 = load i64, i64* %13, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %38
  %42 = load i64, i64* %13, align 8
  %43 = add i64 %42, 1
  store i64 %43, i64* %13, align 8
  br label %44

44:                                               ; preds = %41, %38
  br label %109

45:                                               ; preds = %31
  %46 = load i64*, i64** %6, align 8
  %47 = load i64, i64* %11, align 8
  %48 = getelementptr inbounds i64, i64* %46, i64 %47
  %49 = load i64, i64* %48, align 8
  %50 = icmp slt i64 %49, 5
  %51 = zext i1 %50 to i32
  %52 = call i32 @assert(i32 %51)
  %53 = load i64*, i64** %6, align 8
  %54 = load i64, i64* %11, align 8
  %55 = getelementptr inbounds i64, i64* %53, i64 %54
  %56 = load i64, i64* %55, align 8
  store i64 %56, i64* %10, align 8
  %57 = load i32**, i32*** @action_neutrals, align 8
  %58 = load i32, i32* %9, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i32*, i32** %57, i64 %59
  %61 = load i32*, i32** %60, align 8
  %62 = load i64, i64* %10, align 8
  %63 = getelementptr inbounds i32, i32* %61, i64 %62
  %64 = load i32, i32* %63, align 4
  store i32 %64, i32* %15, align 4
  %65 = load i32, i32* %15, align 4
  %66 = load i32, i32* %14, align 4
  %67 = call i64 @get_deferred_neutrals(i32 %65, i32 %66)
  store i64 %67, i64* %12, align 8
  %68 = load i64, i64* %12, align 8
  %69 = load i64, i64* @BDI_N, align 8
  %70 = icmp ne i64 %68, %69
  br i1 %70, label %71, label %77

71:                                               ; preds = %45
  %72 = load i64*, i64** %6, align 8
  %73 = load i64, i64* %13, align 8
  %74 = load i64, i64* %11, align 8
  %75 = load i64, i64* %12, align 8
  %76 = call i32 @set_deferred_run(i64* %72, i64 %73, i64 %74, i64 %75)
  store i64 0, i64* %13, align 8
  br label %77

77:                                               ; preds = %71, %45
  %78 = load i32, i32* %15, align 4
  %79 = call i64 @get_resolved_neutrals(i32 %78)
  store i64 %79, i64* %16, align 8
  %80 = load i64, i64* %16, align 8
  %81 = load i64, i64* @BDI_N, align 8
  %82 = icmp ne i64 %80, %81
  br i1 %82, label %83, label %88

83:                                               ; preds = %77
  %84 = load i64, i64* %16, align 8
  %85 = load i64*, i64** %6, align 8
  %86 = load i64, i64* %11, align 8
  %87 = getelementptr inbounds i64, i64* %85, i64 %86
  store i64 %84, i64* %87, align 8
  br label %88

88:                                               ; preds = %83, %77
  %89 = load i32, i32* @In, align 4
  %90 = load i32, i32* %15, align 4
  %91 = and i32 %89, %90
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %96

93:                                               ; preds = %88
  %94 = load i64, i64* %13, align 8
  %95 = add i64 %94, 1
  store i64 %95, i64* %13, align 8
  br label %96

96:                                               ; preds = %93, %88
  %97 = load i32**, i32*** @state_neutrals, align 8
  %98 = load i32, i32* %9, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds i32*, i32** %97, i64 %99
  %101 = load i32*, i32** %100, align 8
  %102 = load i64, i64* %10, align 8
  %103 = getelementptr inbounds i32, i32* %101, i64 %102
  %104 = load i32, i32* %103, align 4
  store i32 %104, i32* %9, align 4
  %105 = load i32*, i32** %7, align 8
  %106 = load i64, i64* %11, align 8
  %107 = getelementptr inbounds i32, i32* %105, i64 %106
  %108 = load i32, i32* %107, align 4
  store i32 %108, i32* %14, align 4
  br label %109

109:                                              ; preds = %96, %44
  %110 = load i64, i64* %11, align 8
  %111 = add i64 %110, 1
  store i64 %111, i64* %11, align 8
  br label %27

112:                                              ; preds = %27
  %113 = load i32, i32* %14, align 4
  %114 = call i64 @embedding_direction(i32 %113)
  store i64 %114, i64* %10, align 8
  %115 = load i32**, i32*** @action_neutrals, align 8
  %116 = load i32, i32* %9, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds i32*, i32** %115, i64 %117
  %119 = load i32*, i32** %118, align 8
  %120 = load i64, i64* %10, align 8
  %121 = getelementptr inbounds i32, i32* %119, i64 %120
  %122 = load i32, i32* %121, align 4
  %123 = load i32, i32* %14, align 4
  %124 = call i64 @get_deferred_neutrals(i32 %122, i32 %123)
  store i64 %124, i64* %12, align 8
  %125 = load i64, i64* %12, align 8
  %126 = load i64, i64* @BDI_N, align 8
  %127 = icmp ne i64 %125, %126
  br i1 %127, label %128, label %134

128:                                              ; preds = %112
  %129 = load i64*, i64** %6, align 8
  %130 = load i64, i64* %13, align 8
  %131 = load i64, i64* %11, align 8
  %132 = load i64, i64* %12, align 8
  %133 = call i32 @set_deferred_run(i64* %129, i64 %130, i64 %131, i64 %132)
  br label %134

134:                                              ; preds = %128, %112
  ret void
}

declare dso_local i64 @odd(i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @get_deferred_neutrals(i32, i32) #1

declare dso_local i32 @set_deferred_run(i64*, i64, i64, i64) #1

declare dso_local i64 @get_resolved_neutrals(i32) #1

declare dso_local i64 @embedding_direction(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
