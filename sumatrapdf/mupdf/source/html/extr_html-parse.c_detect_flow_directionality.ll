; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/source/html/extr_html-parse.c_detect_flow_directionality.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/source/html/extr_html-parse.c_detect_flow_directionality.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i64, i64, i32* }
%struct.TYPE_10__ = type { i32, i32, %struct.TYPE_10__*, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i8* }
%struct.TYPE_11__ = type { %struct.TYPE_9__*, %struct.TYPE_10__*, i32*, i32* }

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.1 = private unnamed_addr constant [2 x i8] c" \00", align 1
@uint32_t = common dso_local global i32 0, align 4
@fragment_cb = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, %struct.TYPE_9__*, i32, %struct.TYPE_10__*)* @detect_flow_directionality to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @detect_flow_directionality(i32* %0, i32* %1, %struct.TYPE_9__* %2, i32 %3, %struct.TYPE_10__* %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_9__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_10__*, align 8
  %11 = alloca %struct.TYPE_10__*, align 8
  %12 = alloca %struct.TYPE_11__, align 8
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i32* %1, i32** %7, align 8
  store %struct.TYPE_9__* %2, %struct.TYPE_9__** %8, align 8
  store i32 %3, i32* %9, align 4
  store %struct.TYPE_10__* %4, %struct.TYPE_10__** %10, align 8
  %19 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  store %struct.TYPE_10__* %19, %struct.TYPE_10__** %11, align 8
  br label %20

20:                                               ; preds = %130, %5
  %21 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %22 = icmp ne %struct.TYPE_10__* %21, null
  br i1 %22, label %23, label %149

23:                                               ; preds = %20
  %24 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %25 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  store i32 %26, i32* %13, align 4
  %27 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %28 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %27, i32 0, i32 0
  store i64 0, i64* %28, align 8
  br label %29

29:                                               ; preds = %129, %23
  %30 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %31 = icmp ne %struct.TYPE_10__* %30, null
  br i1 %31, label %32, label %40

32:                                               ; preds = %29
  %33 = load i32, i32* %13, align 4
  %34 = and i32 %33, 1
  %35 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %36 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = and i32 %37, 1
  %39 = icmp eq i32 %34, %38
  br label %40

40:                                               ; preds = %32, %29
  %41 = phi i1 [ false, %29 ], [ %39, %32 ]
  br i1 %41, label %42, label %130

42:                                               ; preds = %40
  store i64 0, i64* %14, align 8
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i8** %15, align 8
  store i32 0, i32* %16, align 4
  %43 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %44 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  switch i32 %45, label %59 [
    i32 128, label %46
    i32 129, label %56
    i32 130, label %57
    i32 131, label %57
    i32 133, label %58
    i32 132, label %58
  ]

46:                                               ; preds = %42
  %47 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %48 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %47, i32 0, i32 3
  %49 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %48, i32 0, i32 0
  %50 = load i8*, i8** %49, align 8
  %51 = call i64 @fz_utflen(i8* %50)
  store i64 %51, i64* %14, align 8
  %52 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %53 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %52, i32 0, i32 3
  %54 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %53, i32 0, i32 0
  %55 = load i8*, i8** %54, align 8
  store i8* %55, i8** %15, align 8
  br label %59

56:                                               ; preds = %42
  store i64 1, i64* %14, align 8
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i8** %15, align 8
  br label %59

57:                                               ; preds = %42, %42
  br label %59

58:                                               ; preds = %42, %42
  store i32 1, i32* %16, align 4
  br label %59

59:                                               ; preds = %42, %58, %57, %56, %46
  %60 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %61 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %60, i32 0, i32 2
  %62 = load %struct.TYPE_10__*, %struct.TYPE_10__** %61, align 8
  store %struct.TYPE_10__* %62, %struct.TYPE_10__** %11, align 8
  %63 = load i32, i32* %16, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %66

65:                                               ; preds = %59
  br label %130

66:                                               ; preds = %59
  %67 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %68 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = load i64, i64* %14, align 8
  %71 = add i64 %69, %70
  %72 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %73 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %72, i32 0, i32 1
  %74 = load i64, i64* %73, align 8
  %75 = icmp ugt i64 %71, %74
  br i1 %75, label %76, label %109

76:                                               ; preds = %66
  %77 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %78 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %77, i32 0, i32 1
  %79 = load i64, i64* %78, align 8
  store i64 %79, i64* %17, align 8
  %80 = load i64, i64* %17, align 8
  %81 = icmp ult i64 %80, 128
  br i1 %81, label %82, label %83

82:                                               ; preds = %76
  store i64 128, i64* %17, align 8
  br label %83

83:                                               ; preds = %82, %76
  br label %84

84:                                               ; preds = %92, %83
  %85 = load i64, i64* %17, align 8
  %86 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %87 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = load i64, i64* %14, align 8
  %90 = add i64 %88, %89
  %91 = icmp ult i64 %85, %90
  br i1 %91, label %92, label %96

92:                                               ; preds = %84
  %93 = load i64, i64* %17, align 8
  %94 = mul i64 %93, 3
  %95 = udiv i64 %94, 2
  store i64 %95, i64* %17, align 8
  br label %84

96:                                               ; preds = %84
  %97 = load i32*, i32** %6, align 8
  %98 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %99 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %98, i32 0, i32 2
  %100 = load i32*, i32** %99, align 8
  %101 = load i64, i64* %17, align 8
  %102 = load i32, i32* @uint32_t, align 4
  %103 = call i32* @fz_realloc_array(i32* %97, i32* %100, i64 %101, i32 %102)
  %104 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %105 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %104, i32 0, i32 2
  store i32* %103, i32** %105, align 8
  %106 = load i64, i64* %17, align 8
  %107 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %108 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %107, i32 0, i32 1
  store i64 %106, i64* %108, align 8
  br label %109

109:                                              ; preds = %96, %66
  br label %110

110:                                              ; preds = %114, %109
  %111 = load i8*, i8** %15, align 8
  %112 = load i8, i8* %111, align 1
  %113 = icmp ne i8 %112, 0
  br i1 %113, label %114, label %129

114:                                              ; preds = %110
  %115 = load i8*, i8** %15, align 8
  %116 = call i32 @fz_chartorune(i32* %18, i8* %115)
  %117 = load i8*, i8** %15, align 8
  %118 = sext i32 %116 to i64
  %119 = getelementptr inbounds i8, i8* %117, i64 %118
  store i8* %119, i8** %15, align 8
  %120 = load i32, i32* %18, align 4
  %121 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %122 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %121, i32 0, i32 2
  %123 = load i32*, i32** %122, align 8
  %124 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %125 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %124, i32 0, i32 0
  %126 = load i64, i64* %125, align 8
  %127 = add i64 %126, 1
  store i64 %127, i64* %125, align 8
  %128 = getelementptr inbounds i32, i32* %123, i64 %126
  store i32 %120, i32* %128, align 4
  br label %110

129:                                              ; preds = %110
  br label %29

130:                                              ; preds = %65, %40
  %131 = load i32*, i32** %6, align 8
  %132 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %12, i32 0, i32 3
  store i32* %131, i32** %132, align 8
  %133 = load i32*, i32** %7, align 8
  %134 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %12, i32 0, i32 2
  store i32* %133, i32** %134, align 8
  %135 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %136 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %12, i32 0, i32 1
  store %struct.TYPE_10__* %135, %struct.TYPE_10__** %136, align 8
  %137 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %138 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %12, i32 0, i32 0
  store %struct.TYPE_9__* %137, %struct.TYPE_9__** %138, align 8
  %139 = load i32*, i32** %6, align 8
  %140 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %141 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %140, i32 0, i32 2
  %142 = load i32*, i32** %141, align 8
  %143 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %144 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %143, i32 0, i32 0
  %145 = load i64, i64* %144, align 8
  %146 = load i32, i32* @fragment_cb, align 4
  %147 = call i32 @fz_bidi_fragment_text(i32* %139, i32* %142, i64 %145, i32* %9, i32 %146, %struct.TYPE_11__* %12, i32 0)
  %148 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  store %struct.TYPE_10__* %148, %struct.TYPE_10__** %10, align 8
  br label %20

149:                                              ; preds = %20
  %150 = load i32, i32* %9, align 4
  ret i32 %150
}

declare dso_local i64 @fz_utflen(i8*) #1

declare dso_local i32* @fz_realloc_array(i32*, i32*, i64, i32) #1

declare dso_local i32 @fz_chartorune(i32*, i8*) #1

declare dso_local i32 @fz_bidi_fragment_text(i32*, i32*, i64, i32*, i32, %struct.TYPE_11__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
