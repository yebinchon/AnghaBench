; ModuleID = '/home/carl/AnghaBench/reactos/sdk/lib/3rdparty/libxml2/extr_encoding.c_xmlCharEncInput.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/lib/3rdparty/libxml2/extr_encoding.c_xmlCharEncInput.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32*, i32*, i32* }

@.str = private unnamed_addr constant [28 x i8] c"0x%02X 0x%02X 0x%02X 0x%02X\00", align 1
@XML_I18N_CONV_FAILED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [54 x i8] c"input conversion failed due to input error, bytes %s\0A\00", align 1
@xmlGenericErrorContext = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xmlCharEncInput(%struct.TYPE_3__* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca [50 x i8], align 16
  %14 = alloca i32*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %4, align 8
  store i32 %1, i32* %5, align 4
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %16 = icmp eq %struct.TYPE_3__* %15, null
  br i1 %16, label %32, label %17

17:                                               ; preds = %2
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = load i32*, i32** %19, align 8
  %21 = icmp eq i32* %20, null
  br i1 %21, label %32, label %22

22:                                               ; preds = %17
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 2
  %25 = load i32*, i32** %24, align 8
  %26 = icmp eq i32* %25, null
  br i1 %26, label %32, label %27

27:                                               ; preds = %22
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 1
  %30 = load i32*, i32** %29, align 8
  %31 = icmp eq i32* %30, null
  br i1 %31, label %32, label %33

32:                                               ; preds = %27, %22, %17, %2
  store i32 -1, i32* %3, align 4
  br label %147

33:                                               ; preds = %27
  %34 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 2
  %36 = load i32*, i32** %35, align 8
  store i32* %36, i32** %12, align 8
  %37 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 1
  %39 = load i32*, i32** %38, align 8
  store i32* %39, i32** %11, align 8
  %40 = load i32*, i32** %11, align 8
  %41 = call i64 @xmlBufUse(i32* %40)
  store i64 %41, i64* %8, align 8
  %42 = load i64, i64* %8, align 8
  %43 = icmp eq i64 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %33
  store i32 0, i32* %3, align 4
  br label %147

45:                                               ; preds = %33
  %46 = load i64, i64* %8, align 8
  %47 = icmp ugt i64 %46, 65536
  br i1 %47, label %48, label %52

48:                                               ; preds = %45
  %49 = load i32, i32* %5, align 4
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %48
  store i64 65536, i64* %8, align 8
  br label %52

52:                                               ; preds = %51, %48, %45
  %53 = load i32*, i32** %12, align 8
  %54 = call i64 @xmlBufAvail(i32* %53)
  store i64 %54, i64* %7, align 8
  %55 = load i64, i64* %7, align 8
  %56 = icmp ugt i64 %55, 0
  br i1 %56, label %57, label %60

57:                                               ; preds = %52
  %58 = load i64, i64* %7, align 8
  %59 = add i64 %58, -1
  store i64 %59, i64* %7, align 8
  br label %60

60:                                               ; preds = %57, %52
  %61 = load i64, i64* %8, align 8
  %62 = mul i64 %61, 2
  %63 = load i64, i64* %7, align 8
  %64 = icmp uge i64 %62, %63
  br i1 %64, label %65, label %78

65:                                               ; preds = %60
  %66 = load i32*, i32** %12, align 8
  %67 = load i64, i64* %8, align 8
  %68 = mul i64 %67, 2
  %69 = call i32 @xmlBufGrow(i32* %66, i64 %68)
  %70 = load i32*, i32** %12, align 8
  %71 = call i64 @xmlBufAvail(i32* %70)
  store i64 %71, i64* %7, align 8
  %72 = load i64, i64* %7, align 8
  %73 = icmp ugt i64 %72, 0
  br i1 %73, label %74, label %77

74:                                               ; preds = %65
  %75 = load i64, i64* %7, align 8
  %76 = add i64 %75, -1
  store i64 %76, i64* %7, align 8
  br label %77

77:                                               ; preds = %74, %65
  br label %78

78:                                               ; preds = %77, %60
  %79 = load i64, i64* %7, align 8
  %80 = icmp ugt i64 %79, 131072
  br i1 %80, label %81, label %85

81:                                               ; preds = %78
  %82 = load i32, i32* %5, align 4
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %84, label %85

84:                                               ; preds = %81
  store i64 131072, i64* %7, align 8
  br label %85

85:                                               ; preds = %84, %81, %78
  %86 = load i64, i64* %8, align 8
  %87 = trunc i64 %86 to i32
  store i32 %87, i32* %9, align 4
  %88 = load i64, i64* %7, align 8
  %89 = trunc i64 %88 to i32
  store i32 %89, i32* %10, align 4
  %90 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %91 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %90, i32 0, i32 0
  %92 = load i32*, i32** %91, align 8
  %93 = load i32*, i32** %12, align 8
  %94 = call i32 @xmlBufEnd(i32* %93)
  %95 = load i32*, i32** %11, align 8
  %96 = call i32* @xmlBufContent(i32* %95)
  %97 = load i32, i32* %5, align 4
  %98 = call i32 @xmlEncInputChunk(i32* %92, i32 %94, i32* %10, i32* %96, i32* %9, i32 %97)
  store i32 %98, i32* %6, align 4
  %99 = load i32*, i32** %11, align 8
  %100 = load i32, i32* %9, align 4
  %101 = call i32 @xmlBufShrink(i32* %99, i32 %100)
  %102 = load i32*, i32** %12, align 8
  %103 = load i32, i32* %10, align 4
  %104 = call i32 @xmlBufAddLen(i32* %102, i32 %103)
  %105 = load i32, i32* %6, align 4
  %106 = icmp eq i32 %105, -1
  br i1 %106, label %107, label %108

107:                                              ; preds = %85
  store i32 -3, i32* %6, align 4
  br label %108

108:                                              ; preds = %107, %85
  %109 = load i32, i32* %6, align 4
  switch i32 %109, label %134 [
    i32 0, label %110
    i32 -1, label %111
    i32 -3, label %112
    i32 -2, label %113
  ]

110:                                              ; preds = %108
  br label %134

111:                                              ; preds = %108
  br label %134

112:                                              ; preds = %108
  br label %134

113:                                              ; preds = %108
  %114 = load i32*, i32** %11, align 8
  %115 = call i32* @xmlBufContent(i32* %114)
  store i32* %115, i32** %14, align 8
  %116 = getelementptr inbounds [50 x i8], [50 x i8]* %13, i64 0, i64 0
  %117 = load i32*, i32** %14, align 8
  %118 = getelementptr inbounds i32, i32* %117, i64 0
  %119 = load i32, i32* %118, align 4
  %120 = load i32*, i32** %14, align 8
  %121 = getelementptr inbounds i32, i32* %120, i64 1
  %122 = load i32, i32* %121, align 4
  %123 = load i32*, i32** %14, align 8
  %124 = getelementptr inbounds i32, i32* %123, i64 2
  %125 = load i32, i32* %124, align 4
  %126 = load i32*, i32** %14, align 8
  %127 = getelementptr inbounds i32, i32* %126, i64 3
  %128 = load i32, i32* %127, align 4
  %129 = call i32 @snprintf(i8* %116, i32 49, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %119, i32 %122, i32 %125, i32 %128)
  %130 = getelementptr inbounds [50 x i8], [50 x i8]* %13, i64 0, i64 49
  store i8 0, i8* %130, align 1
  %131 = load i32, i32* @XML_I18N_CONV_FAILED, align 4
  %132 = getelementptr inbounds [50 x i8], [50 x i8]* %13, i64 0, i64 0
  %133 = call i32 @xmlEncodingErr(i32 %131, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.1, i64 0, i64 0), i8* %132)
  br label %134

134:                                              ; preds = %113, %108, %112, %111, %110
  %135 = load i32, i32* %6, align 4
  %136 = icmp eq i32 %135, -3
  br i1 %136, label %137, label %138

137:                                              ; preds = %134
  store i32 0, i32* %6, align 4
  br label %138

138:                                              ; preds = %137, %134
  %139 = load i32, i32* %10, align 4
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %141, label %143

141:                                              ; preds = %138
  %142 = load i32, i32* %10, align 4
  br label %145

143:                                              ; preds = %138
  %144 = load i32, i32* %6, align 4
  br label %145

145:                                              ; preds = %143, %141
  %146 = phi i32 [ %142, %141 ], [ %144, %143 ]
  store i32 %146, i32* %3, align 4
  br label %147

147:                                              ; preds = %145, %44, %32
  %148 = load i32, i32* %3, align 4
  ret i32 %148
}

declare dso_local i64 @xmlBufUse(i32*) #1

declare dso_local i64 @xmlBufAvail(i32*) #1

declare dso_local i32 @xmlBufGrow(i32*, i64) #1

declare dso_local i32 @xmlEncInputChunk(i32*, i32, i32*, i32*, i32*, i32) #1

declare dso_local i32 @xmlBufEnd(i32*) #1

declare dso_local i32* @xmlBufContent(i32*) #1

declare dso_local i32 @xmlBufShrink(i32*, i32) #1

declare dso_local i32 @xmlBufAddLen(i32*, i32) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i32, i32, i32, i32) #1

declare dso_local i32 @xmlEncodingErr(i32, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
