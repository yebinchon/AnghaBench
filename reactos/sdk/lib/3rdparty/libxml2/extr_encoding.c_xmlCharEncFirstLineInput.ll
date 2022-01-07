; ModuleID = '/home/carl/AnghaBench/reactos/sdk/lib/3rdparty/libxml2/extr_encoding.c_xmlCharEncFirstLineInput.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/lib/3rdparty/libxml2/extr_encoding.c_xmlCharEncFirstLineInput.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32*, i32*, i32* }

@.str = private unnamed_addr constant [28 x i8] c"0x%02X 0x%02X 0x%02X 0x%02X\00", align 1
@XML_I18N_CONV_FAILED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [54 x i8] c"input conversion failed due to input error, bytes %s\0A\00", align 1
@xmlGenericErrorContext = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xmlCharEncFirstLineInput(%struct.TYPE_3__* %0, i32 %1) #0 {
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
  br label %142

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
  br label %142

45:                                               ; preds = %33
  %46 = load i32*, i32** %12, align 8
  %47 = call i32 @xmlBufAvail(i32* %46)
  %48 = sub nsw i32 %47, 1
  %49 = sext i32 %48 to i64
  store i64 %49, i64* %7, align 8
  %50 = load i32, i32* %5, align 4
  %51 = icmp sge i32 %50, 0
  br i1 %51, label %52, label %61

52:                                               ; preds = %45
  %53 = load i64, i64* %8, align 8
  %54 = load i32, i32* %5, align 4
  %55 = zext i32 %54 to i64
  %56 = icmp ugt i64 %53, %55
  br i1 %56, label %57, label %60

57:                                               ; preds = %52
  %58 = load i32, i32* %5, align 4
  %59 = sext i32 %58 to i64
  store i64 %59, i64* %8, align 8
  br label %60

60:                                               ; preds = %57, %52
  br label %66

61:                                               ; preds = %45
  %62 = load i64, i64* %8, align 8
  %63 = icmp ugt i64 %62, 180
  br i1 %63, label %64, label %65

64:                                               ; preds = %61
  store i64 180, i64* %8, align 8
  br label %65

65:                                               ; preds = %64, %61
  br label %66

66:                                               ; preds = %65, %60
  %67 = load i64, i64* %8, align 8
  %68 = mul i64 %67, 2
  %69 = load i64, i64* %7, align 8
  %70 = icmp uge i64 %68, %69
  br i1 %70, label %71, label %80

71:                                               ; preds = %66
  %72 = load i32*, i32** %12, align 8
  %73 = load i64, i64* %8, align 8
  %74 = mul i64 %73, 2
  %75 = call i32 @xmlBufGrow(i32* %72, i64 %74)
  %76 = load i32*, i32** %12, align 8
  %77 = call i32 @xmlBufAvail(i32* %76)
  %78 = sub nsw i32 %77, 1
  %79 = sext i32 %78 to i64
  store i64 %79, i64* %7, align 8
  br label %80

80:                                               ; preds = %71, %66
  %81 = load i64, i64* %7, align 8
  %82 = icmp ugt i64 %81, 360
  br i1 %82, label %83, label %84

83:                                               ; preds = %80
  store i64 360, i64* %7, align 8
  br label %84

84:                                               ; preds = %83, %80
  %85 = load i64, i64* %8, align 8
  %86 = trunc i64 %85 to i32
  store i32 %86, i32* %9, align 4
  %87 = load i64, i64* %7, align 8
  %88 = trunc i64 %87 to i32
  store i32 %88, i32* %10, align 4
  %89 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %90 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %89, i32 0, i32 0
  %91 = load i32*, i32** %90, align 8
  %92 = load i32*, i32** %12, align 8
  %93 = call i32 @xmlBufEnd(i32* %92)
  %94 = load i32*, i32** %11, align 8
  %95 = call i32* @xmlBufContent(i32* %94)
  %96 = call i32 @xmlEncInputChunk(i32* %91, i32 %93, i32* %10, i32* %95, i32* %9, i32 0)
  store i32 %96, i32* %6, align 4
  %97 = load i32*, i32** %11, align 8
  %98 = load i32, i32* %9, align 4
  %99 = call i32 @xmlBufShrink(i32* %97, i32 %98)
  %100 = load i32*, i32** %12, align 8
  %101 = load i32, i32* %10, align 4
  %102 = call i32 @xmlBufAddLen(i32* %100, i32 %101)
  %103 = load i32, i32* %6, align 4
  %104 = icmp eq i32 %103, -1
  br i1 %104, label %105, label %106

105:                                              ; preds = %84
  store i32 -3, i32* %6, align 4
  br label %106

106:                                              ; preds = %105, %84
  %107 = load i32, i32* %6, align 4
  switch i32 %107, label %132 [
    i32 0, label %108
    i32 -1, label %109
    i32 -3, label %110
    i32 -2, label %111
  ]

108:                                              ; preds = %106
  br label %132

109:                                              ; preds = %106
  br label %132

110:                                              ; preds = %106
  br label %132

111:                                              ; preds = %106
  %112 = load i32*, i32** %11, align 8
  %113 = call i32* @xmlBufContent(i32* %112)
  store i32* %113, i32** %14, align 8
  %114 = getelementptr inbounds [50 x i8], [50 x i8]* %13, i64 0, i64 0
  %115 = load i32*, i32** %14, align 8
  %116 = getelementptr inbounds i32, i32* %115, i64 0
  %117 = load i32, i32* %116, align 4
  %118 = load i32*, i32** %14, align 8
  %119 = getelementptr inbounds i32, i32* %118, i64 1
  %120 = load i32, i32* %119, align 4
  %121 = load i32*, i32** %14, align 8
  %122 = getelementptr inbounds i32, i32* %121, i64 2
  %123 = load i32, i32* %122, align 4
  %124 = load i32*, i32** %14, align 8
  %125 = getelementptr inbounds i32, i32* %124, i64 3
  %126 = load i32, i32* %125, align 4
  %127 = call i32 @snprintf(i8* %114, i32 49, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %117, i32 %120, i32 %123, i32 %126)
  %128 = getelementptr inbounds [50 x i8], [50 x i8]* %13, i64 0, i64 49
  store i8 0, i8* %128, align 1
  %129 = load i32, i32* @XML_I18N_CONV_FAILED, align 4
  %130 = getelementptr inbounds [50 x i8], [50 x i8]* %13, i64 0, i64 0
  %131 = call i32 @xmlEncodingErr(i32 %129, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.1, i64 0, i64 0), i8* %130)
  br label %132

132:                                              ; preds = %111, %106, %110, %109, %108
  %133 = load i32, i32* %6, align 4
  %134 = icmp eq i32 %133, -3
  br i1 %134, label %135, label %136

135:                                              ; preds = %132
  store i32 0, i32* %6, align 4
  br label %136

136:                                              ; preds = %135, %132
  %137 = load i32, i32* %6, align 4
  %138 = icmp eq i32 %137, -1
  br i1 %138, label %139, label %140

139:                                              ; preds = %136
  store i32 0, i32* %6, align 4
  br label %140

140:                                              ; preds = %139, %136
  %141 = load i32, i32* %6, align 4
  store i32 %141, i32* %3, align 4
  br label %142

142:                                              ; preds = %140, %44, %32
  %143 = load i32, i32* %3, align 4
  ret i32 %143
}

declare dso_local i64 @xmlBufUse(i32*) #1

declare dso_local i32 @xmlBufAvail(i32*) #1

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
