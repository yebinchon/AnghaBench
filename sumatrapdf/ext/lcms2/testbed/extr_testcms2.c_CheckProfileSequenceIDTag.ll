; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/lcms2/testbed/extr_testcms2.c_CheckProfileSequenceIDTag.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/lcms2/testbed/extr_testcms2.c_CheckProfileSequenceIDTag.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }

@.str = private unnamed_addr constant [17 x i8] c"0123456789ABCDEF\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"1111111111111111\00", align 1
@.str.2 = private unnamed_addr constant [17 x i8] c"2222222222222222\00", align 1
@.str.3 = private unnamed_addr constant [15 x i32] [i32 72, i32 101, i32 108, i32 108, i32 111, i32 44, i32 32, i32 119, i32 111, i32 114, i32 108, i32 100, i32 32, i32 48, i32 0], align 4
@.str.4 = private unnamed_addr constant [14 x i32] [i32 72, i32 111, i32 108, i32 97, i32 44, i32 32, i32 109, i32 117, i32 110, i32 100, i32 111, i32 32, i32 48, i32 0], align 4
@.str.5 = private unnamed_addr constant [15 x i32] [i32 72, i32 101, i32 108, i32 108, i32 111, i32 44, i32 32, i32 119, i32 111, i32 114, i32 108, i32 100, i32 32, i32 49, i32 0], align 4
@.str.6 = private unnamed_addr constant [14 x i32] [i32 72, i32 111, i32 108, i32 97, i32 44, i32 32, i32 109, i32 117, i32 110, i32 100, i32 111, i32 32, i32 49, i32 0], align 4
@.str.7 = private unnamed_addr constant [15 x i32] [i32 72, i32 101, i32 108, i32 108, i32 111, i32 44, i32 32, i32 119, i32 111, i32 114, i32 108, i32 100, i32 32, i32 50, i32 0], align 4
@.str.8 = private unnamed_addr constant [14 x i32] [i32 72, i32 111, i32 108, i32 97, i32 44, i32 32, i32 109, i32 117, i32 110, i32 100, i32 111, i32 32, i32 50, i32 0], align 4
@cmsSigProfileSequenceIdTag = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32)* @CheckProfileSequenceIDTag to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @CheckProfileSequenceIDTag(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_9__*, align 8
  %7 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %8 = load i32, i32* %4, align 4
  switch i32 %8, label %139 [
    i32 1, label %9
    i32 2, label %69
  ]

9:                                                ; preds = %2
  %10 = call i32 (...) @DbgThread()
  %11 = call %struct.TYPE_9__* @cmsAllocProfileSequenceDescription(i32 %10, i32 3)
  store %struct.TYPE_9__* %11, %struct.TYPE_9__** %6, align 8
  %12 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %13 = icmp eq %struct.TYPE_9__* %12, null
  br i1 %13, label %14, label %15

14:                                               ; preds = %9
  store i32 0, i32* %3, align 4
  br label %140

15:                                               ; preds = %9
  %16 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %17 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %16, i32 0, i32 1
  %18 = load %struct.TYPE_8__*, %struct.TYPE_8__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %18, i64 0
  %20 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @memcpy(i32 %22, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 16)
  %24 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %25 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %24, i32 0, i32 1
  %26 = load %struct.TYPE_8__*, %struct.TYPE_8__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %26, i64 1
  %28 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @memcpy(i32 %30, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i32 16)
  %32 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %33 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %32, i32 0, i32 1
  %34 = load %struct.TYPE_8__*, %struct.TYPE_8__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %34, i64 2
  %36 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @memcpy(i32 %38, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0), i32 16)
  %40 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %41 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %40, i32 0, i32 1
  %42 = load %struct.TYPE_8__*, %struct.TYPE_8__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %42, i64 0
  %44 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %43, i32 0, i32 0
  %45 = call i32 @SetOneStr(i32* %44, i8* bitcast ([15 x i32]* @.str.3 to i8*), i8* bitcast ([14 x i32]* @.str.4 to i8*))
  %46 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %47 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %46, i32 0, i32 1
  %48 = load %struct.TYPE_8__*, %struct.TYPE_8__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %48, i64 1
  %50 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %49, i32 0, i32 0
  %51 = call i32 @SetOneStr(i32* %50, i8* bitcast ([15 x i32]* @.str.5 to i8*), i8* bitcast ([14 x i32]* @.str.6 to i8*))
  %52 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %53 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %52, i32 0, i32 1
  %54 = load %struct.TYPE_8__*, %struct.TYPE_8__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %54, i64 2
  %56 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %55, i32 0, i32 0
  %57 = call i32 @SetOneStr(i32* %56, i8* bitcast ([15 x i32]* @.str.7 to i8*), i8* bitcast ([14 x i32]* @.str.8 to i8*))
  %58 = call i32 (...) @DbgThread()
  %59 = load i32, i32* %5, align 4
  %60 = load i32, i32* @cmsSigProfileSequenceIdTag, align 4
  %61 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %62 = call i32 @cmsWriteTag(i32 %58, i32 %59, i32 %60, %struct.TYPE_9__* %61)
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %65, label %64

64:                                               ; preds = %15
  store i32 0, i32* %3, align 4
  br label %140

65:                                               ; preds = %15
  %66 = call i32 (...) @DbgThread()
  %67 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %68 = call i32 @cmsFreeProfileSequenceDescription(i32 %66, %struct.TYPE_9__* %67)
  store i32 1, i32* %3, align 4
  br label %140

69:                                               ; preds = %2
  %70 = call i32 (...) @DbgThread()
  %71 = load i32, i32* %5, align 4
  %72 = load i32, i32* @cmsSigProfileSequenceIdTag, align 4
  %73 = call i64 @cmsReadTag(i32 %70, i32 %71, i32 %72)
  %74 = inttoptr i64 %73 to %struct.TYPE_9__*
  store %struct.TYPE_9__* %74, %struct.TYPE_9__** %6, align 8
  %75 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %76 = icmp eq %struct.TYPE_9__* %75, null
  br i1 %76, label %77, label %78

77:                                               ; preds = %69
  store i32 0, i32* %3, align 4
  br label %140

78:                                               ; preds = %69
  %79 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %80 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = icmp ne i32 %81, 3
  br i1 %82, label %83, label %84

83:                                               ; preds = %78
  store i32 0, i32* %3, align 4
  br label %140

84:                                               ; preds = %78
  %85 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %86 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %85, i32 0, i32 1
  %87 = load %struct.TYPE_8__*, %struct.TYPE_8__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %87, i64 0
  %89 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %88, i32 0, i32 1
  %90 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = call i32 @memcmp(i32 %91, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 16)
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %95

94:                                               ; preds = %84
  store i32 0, i32* %3, align 4
  br label %140

95:                                               ; preds = %84
  %96 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %97 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %96, i32 0, i32 1
  %98 = load %struct.TYPE_8__*, %struct.TYPE_8__** %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %98, i64 1
  %100 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %99, i32 0, i32 1
  %101 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = call i32 @memcmp(i32 %102, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i32 16)
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %106

105:                                              ; preds = %95
  store i32 0, i32* %3, align 4
  br label %140

106:                                              ; preds = %95
  %107 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %108 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %107, i32 0, i32 1
  %109 = load %struct.TYPE_8__*, %struct.TYPE_8__** %108, align 8
  %110 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %109, i64 2
  %111 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %110, i32 0, i32 1
  %112 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 4
  %114 = call i32 @memcmp(i32 %113, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0), i32 16)
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %117

116:                                              ; preds = %106
  store i32 0, i32* %3, align 4
  br label %140

117:                                              ; preds = %106
  store i32 0, i32* %7, align 4
  br label %118

118:                                              ; preds = %135, %117
  %119 = load i32, i32* %7, align 4
  %120 = icmp slt i32 %119, 3
  br i1 %120, label %121, label %138

121:                                              ; preds = %118
  %122 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %123 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %122, i32 0, i32 1
  %124 = load %struct.TYPE_8__*, %struct.TYPE_8__** %123, align 8
  %125 = load i32, i32* %7, align 4
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %124, i64 %126
  %128 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 4
  %130 = load i32, i32* %7, align 4
  %131 = call i32 @CheckOneStr(i32 %129, i32 %130)
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %134, label %133

133:                                              ; preds = %121
  store i32 0, i32* %3, align 4
  br label %140

134:                                              ; preds = %121
  br label %135

135:                                              ; preds = %134
  %136 = load i32, i32* %7, align 4
  %137 = add nsw i32 %136, 1
  store i32 %137, i32* %7, align 4
  br label %118

138:                                              ; preds = %118
  store i32 1, i32* %3, align 4
  br label %140

139:                                              ; preds = %2
  store i32 0, i32* %3, align 4
  br label %140

140:                                              ; preds = %139, %138, %133, %116, %105, %94, %83, %77, %65, %64, %14
  %141 = load i32, i32* %3, align 4
  ret i32 %141
}

declare dso_local %struct.TYPE_9__* @cmsAllocProfileSequenceDescription(i32, i32) #1

declare dso_local i32 @DbgThread(...) #1

declare dso_local i32 @memcpy(i32, i8*, i32) #1

declare dso_local i32 @SetOneStr(i32*, i8*, i8*) #1

declare dso_local i32 @cmsWriteTag(i32, i32, i32, %struct.TYPE_9__*) #1

declare dso_local i32 @cmsFreeProfileSequenceDescription(i32, %struct.TYPE_9__*) #1

declare dso_local i64 @cmsReadTag(i32, i32, i32) #1

declare dso_local i32 @memcmp(i32, i8*, i32) #1

declare dso_local i32 @CheckOneStr(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
