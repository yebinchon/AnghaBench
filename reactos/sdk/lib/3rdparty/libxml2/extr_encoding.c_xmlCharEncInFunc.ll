; ModuleID = '/home/carl/AnghaBench/reactos/sdk/lib/3rdparty/libxml2/extr_encoding.c_xmlCharEncInFunc.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/lib/3rdparty/libxml2/extr_encoding.c_xmlCharEncInFunc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32, i32* }

@.str = private unnamed_addr constant [28 x i8] c"0x%02X 0x%02X 0x%02X 0x%02X\00", align 1
@XML_I18N_CONV_FAILED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [54 x i8] c"input conversion failed due to input error, bytes %s\0A\00", align 1
@xmlGenericErrorContext = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xmlCharEncInFunc(i32* %0, %struct.TYPE_6__* %1, %struct.TYPE_6__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_6__*, align 8
  %7 = alloca %struct.TYPE_6__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca [50 x i8], align 16
  store i32* %0, i32** %5, align 8
  store %struct.TYPE_6__* %1, %struct.TYPE_6__** %6, align 8
  store %struct.TYPE_6__* %2, %struct.TYPE_6__** %7, align 8
  %12 = load i32*, i32** %5, align 8
  %13 = icmp eq i32* %12, null
  br i1 %13, label %14, label %15

14:                                               ; preds = %3
  store i32 -1, i32* %4, align 4
  br label %138

15:                                               ; preds = %3
  %16 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %17 = icmp eq %struct.TYPE_6__* %16, null
  br i1 %17, label %18, label %19

18:                                               ; preds = %15
  store i32 -1, i32* %4, align 4
  br label %138

19:                                               ; preds = %15
  %20 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %21 = icmp eq %struct.TYPE_6__* %20, null
  br i1 %21, label %22, label %23

22:                                               ; preds = %19
  store i32 -1, i32* %4, align 4
  br label %138

23:                                               ; preds = %19
  %24 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  store i32 %26, i32* %10, align 4
  %27 = load i32, i32* %10, align 4
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %23
  store i32 0, i32* %4, align 4
  br label %138

30:                                               ; preds = %23
  %31 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = sub nsw i32 %33, %36
  %38 = sub nsw i32 %37, 1
  store i32 %38, i32* %9, align 4
  %39 = load i32, i32* %10, align 4
  %40 = mul nsw i32 %39, 2
  %41 = load i32, i32* %9, align 4
  %42 = icmp sge i32 %40, %41
  br i1 %42, label %43, label %60

43:                                               ; preds = %30
  %44 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %45 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* %10, align 4
  %49 = mul nsw i32 %48, 2
  %50 = add nsw i32 %47, %49
  %51 = call i32 @xmlBufferGrow(%struct.TYPE_6__* %44, i32 %50)
  %52 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = sub nsw i32 %54, %57
  %59 = sub nsw i32 %58, 1
  store i32 %59, i32* %9, align 4
  br label %60

60:                                               ; preds = %43, %30
  %61 = load i32*, i32** %5, align 8
  %62 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %62, i32 0, i32 2
  %64 = load i32*, i32** %63, align 8
  %65 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %66 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i32, i32* %64, i64 %68
  %70 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %71 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %70, i32 0, i32 2
  %72 = load i32*, i32** %71, align 8
  %73 = call i32 @xmlEncInputChunk(i32* %61, i32* %69, i32* %9, i32* %72, i32* %10, i32 1)
  store i32 %73, i32* %8, align 4
  %74 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %75 = load i32, i32* %10, align 4
  %76 = call i32 @xmlBufferShrink(%struct.TYPE_6__* %74, i32 %75)
  %77 = load i32, i32* %9, align 4
  %78 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %79 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = add nsw i32 %80, %77
  store i32 %81, i32* %79, align 8
  %82 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %83 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %82, i32 0, i32 2
  %84 = load i32*, i32** %83, align 8
  %85 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %86 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds i32, i32* %84, i64 %88
  store i32 0, i32* %89, align 4
  %90 = load i32, i32* %8, align 4
  %91 = icmp eq i32 %90, -1
  br i1 %91, label %92, label %93

92:                                               ; preds = %60
  store i32 -3, i32* %8, align 4
  br label %93

93:                                               ; preds = %92, %60
  %94 = load i32, i32* %8, align 4
  switch i32 %94, label %125 [
    i32 0, label %95
    i32 -1, label %96
    i32 -3, label %97
    i32 -2, label %98
  ]

95:                                               ; preds = %93
  br label %125

96:                                               ; preds = %93
  br label %125

97:                                               ; preds = %93
  br label %125

98:                                               ; preds = %93
  %99 = getelementptr inbounds [50 x i8], [50 x i8]* %11, i64 0, i64 0
  %100 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %101 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %100, i32 0, i32 2
  %102 = load i32*, i32** %101, align 8
  %103 = getelementptr inbounds i32, i32* %102, i64 0
  %104 = load i32, i32* %103, align 4
  %105 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %106 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %105, i32 0, i32 2
  %107 = load i32*, i32** %106, align 8
  %108 = getelementptr inbounds i32, i32* %107, i64 1
  %109 = load i32, i32* %108, align 4
  %110 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %111 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %110, i32 0, i32 2
  %112 = load i32*, i32** %111, align 8
  %113 = getelementptr inbounds i32, i32* %112, i64 2
  %114 = load i32, i32* %113, align 4
  %115 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %116 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %115, i32 0, i32 2
  %117 = load i32*, i32** %116, align 8
  %118 = getelementptr inbounds i32, i32* %117, i64 3
  %119 = load i32, i32* %118, align 4
  %120 = call i32 @snprintf(i8* %99, i32 49, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %104, i32 %109, i32 %114, i32 %119)
  %121 = getelementptr inbounds [50 x i8], [50 x i8]* %11, i64 0, i64 49
  store i8 0, i8* %121, align 1
  %122 = load i32, i32* @XML_I18N_CONV_FAILED, align 4
  %123 = getelementptr inbounds [50 x i8], [50 x i8]* %11, i64 0, i64 0
  %124 = call i32 @xmlEncodingErr(i32 %122, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.1, i64 0, i64 0), i8* %123)
  br label %125

125:                                              ; preds = %98, %93, %97, %96, %95
  %126 = load i32, i32* %8, align 4
  %127 = icmp eq i32 %126, -3
  br i1 %127, label %128, label %129

128:                                              ; preds = %125
  store i32 0, i32* %8, align 4
  br label %129

129:                                              ; preds = %128, %125
  %130 = load i32, i32* %9, align 4
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %134

132:                                              ; preds = %129
  %133 = load i32, i32* %9, align 4
  br label %136

134:                                              ; preds = %129
  %135 = load i32, i32* %8, align 4
  br label %136

136:                                              ; preds = %134, %132
  %137 = phi i32 [ %133, %132 ], [ %135, %134 ]
  store i32 %137, i32* %4, align 4
  br label %138

138:                                              ; preds = %136, %29, %22, %18, %14
  %139 = load i32, i32* %4, align 4
  ret i32 %139
}

declare dso_local i32 @xmlBufferGrow(%struct.TYPE_6__*, i32) #1

declare dso_local i32 @xmlEncInputChunk(i32*, i32*, i32*, i32*, i32*, i32) #1

declare dso_local i32 @xmlBufferShrink(%struct.TYPE_6__*, i32) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i32, i32, i32, i32) #1

declare dso_local i32 @xmlEncodingErr(i32, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
