; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/jbig2dec/extr_jbig2_mmr.c_jbig2_decode_halftone_mmr.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/jbig2dec/extr_jbig2_mmr.c_jbig2_decode_halftone_mmr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i64, i64, i32, i32* }
%struct.TYPE_7__ = type { i32, i32, i64 }

@JBIG2_SEVERITY_WARNING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"failed to decode halftone mmr line\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @jbig2_decode_halftone_mmr(i32* %0, i32* %1, i32* %2, i64 %3, %struct.TYPE_8__* %4, i64* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.TYPE_8__*, align 8
  %13 = alloca i64*, align 8
  %14 = alloca %struct.TYPE_7__, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i64, align 8
  %19 = alloca i32, align 4
  %20 = alloca i64, align 8
  %21 = alloca i32, align 4
  store i32* %0, i32** %8, align 8
  store i32* %1, i32** %9, align 8
  store i32* %2, i32** %10, align 8
  store i64 %3, i64* %11, align 8
  store %struct.TYPE_8__* %4, %struct.TYPE_8__** %12, align 8
  store i64* %5, i64** %13, align 8
  %22 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %23 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  store i64 %24, i64* %15, align 8
  %25 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %26 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %25, i32 0, i32 3
  %27 = load i32*, i32** %26, align 8
  store i32* %27, i32** %16, align 8
  store i32* null, i32** %17, align 8
  store i32 0, i32* %19, align 4
  store i64 4097, i64* %20, align 8
  store i32 0, i32* %21, align 4
  %28 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %29 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 8
  %31 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %32 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = load i32*, i32** %10, align 8
  %35 = load i64, i64* %11, align 8
  %36 = call i32 @jbig2_decode_mmr_init(%struct.TYPE_7__* %14, i32 %30, i64 %33, i32* %34, i64 %35)
  store i64 0, i64* %18, align 8
  br label %37

37:                                               ; preds = %67, %6
  %38 = load i32, i32* %21, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %46, label %40

40:                                               ; preds = %37
  %41 = load i64, i64* %18, align 8
  %42 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %43 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = icmp slt i64 %41, %44
  br label %46

46:                                               ; preds = %40, %37
  %47 = phi i1 [ false, %37 ], [ %45, %40 ]
  br i1 %47, label %48, label %70

48:                                               ; preds = %46
  %49 = load i32*, i32** %16, align 8
  %50 = load i64, i64* %15, align 8
  %51 = call i32 @memset(i32* %49, i32 0, i64 %50)
  %52 = load i32*, i32** %8, align 8
  %53 = load i32*, i32** %17, align 8
  %54 = load i32*, i32** %16, align 8
  %55 = call i32 @jbig2_decode_mmr_line(i32* %52, %struct.TYPE_7__* %14, i32* %53, i32* %54, i32* %21)
  store i32 %55, i32* %19, align 4
  %56 = load i32, i32* %19, align 4
  %57 = icmp slt i32 %56, 0
  br i1 %57, label %58, label %62

58:                                               ; preds = %48
  %59 = load i32*, i32** %8, align 8
  %60 = load i32, i32* @JBIG2_SEVERITY_WARNING, align 4
  %61 = call i32 @jbig2_error(i32* %59, i32 %60, i32 -1, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  store i32 %61, i32* %7, align 4
  br label %116

62:                                               ; preds = %48
  %63 = load i32*, i32** %16, align 8
  store i32* %63, i32** %17, align 8
  %64 = load i64, i64* %15, align 8
  %65 = load i32*, i32** %16, align 8
  %66 = getelementptr inbounds i32, i32* %65, i64 %64
  store i32* %66, i32** %16, align 8
  br label %67

67:                                               ; preds = %62
  %68 = load i64, i64* %18, align 8
  %69 = add nsw i64 %68, 1
  store i64 %69, i64* %18, align 8
  br label %37

70:                                               ; preds = %46
  %71 = load i32, i32* %21, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %89

73:                                               ; preds = %70
  %74 = load i64, i64* %18, align 8
  %75 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %76 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %75, i32 0, i32 1
  %77 = load i64, i64* %76, align 8
  %78 = icmp slt i64 %74, %77
  br i1 %78, label %79, label %89

79:                                               ; preds = %73
  %80 = load i32*, i32** %16, align 8
  %81 = load i64, i64* %15, align 8
  %82 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %83 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %82, i32 0, i32 1
  %84 = load i64, i64* %83, align 8
  %85 = load i64, i64* %18, align 8
  %86 = sub nsw i64 %84, %85
  %87 = mul nsw i64 %81, %86
  %88 = call i32 @memset(i32* %80, i32 0, i64 %87)
  br label %89

89:                                               ; preds = %79, %73, %70
  %90 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %14, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = ashr i32 %91, 8
  %93 = sext i32 %92 to i64
  %94 = icmp eq i64 %93, 4097
  br i1 %94, label %95, label %97

95:                                               ; preds = %89
  %96 = call i32 @jbig2_decode_mmr_consume(%struct.TYPE_7__* %14, i32 24)
  br label %97

97:                                               ; preds = %95, %89
  %98 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %14, i32 0, i32 2
  %99 = load i64, i64* %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %14, i32 0, i32 1
  %101 = load i32, i32* %100, align 4
  %102 = ashr i32 %101, 3
  %103 = sext i32 %102 to i64
  %104 = add nsw i64 %99, %103
  %105 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %14, i32 0, i32 1
  %106 = load i32, i32* %105, align 4
  %107 = icmp sgt i32 %106, 0
  %108 = zext i1 %107 to i64
  %109 = select i1 %107, i32 1, i32 0
  %110 = sext i32 %109 to i64
  %111 = add nsw i64 %104, %110
  %112 = load i64*, i64** %13, align 8
  %113 = load i64, i64* %112, align 8
  %114 = add i64 %113, %111
  store i64 %114, i64* %112, align 8
  %115 = load i32, i32* %19, align 4
  store i32 %115, i32* %7, align 4
  br label %116

116:                                              ; preds = %97, %58
  %117 = load i32, i32* %7, align 4
  ret i32 %117
}

declare dso_local i32 @jbig2_decode_mmr_init(%struct.TYPE_7__*, i32, i64, i32*, i64) #1

declare dso_local i32 @memset(i32*, i32, i64) #1

declare dso_local i32 @jbig2_decode_mmr_line(i32*, %struct.TYPE_7__*, i32*, i32*, i32*) #1

declare dso_local i32 @jbig2_error(i32*, i32, i32, i8*) #1

declare dso_local i32 @jbig2_decode_mmr_consume(%struct.TYPE_7__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
