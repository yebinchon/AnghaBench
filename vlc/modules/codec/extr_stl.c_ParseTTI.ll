; ModuleID = '/home/carl/AnghaBench/vlc/modules/codec/extr_stl.c_ParseTTI.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/codec/extr_stl.c_ParseTTI.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32, i8*, i8* }

@STL_TEXTFIELD_SIZE = common dso_local global i32 0, align 4
@STL_TTI_HEADER_SIZE = common dso_local global i64 0, align 8
@STL_TTI_SIZE = common dso_local global i64 0, align 8
@STL_TF_TELETEXT_LAST = common dso_local global i32 0, align 4
@STL_TF_CHARCODE1_FIRST = common dso_local global i32 0, align 4
@STL_TF_CHARCODE1_LAST = common dso_local global i32 0, align 4
@STL_TF_CHARCODE2_FIRST = common dso_local global i32 0, align 4
@STL_TF_ITALICS_ON = common dso_local global i32 0, align 4
@STL_TF_BOXING_OFF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_7__*, i32*, i8*, double)* @ParseTTI to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ParseTTI(%struct.TYPE_7__* %0, i32* %1, i8* %2, double %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_7__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca double, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %6, align 8
  store i32* %1, i32** %7, align 8
  store i8* %2, i8** %8, align 8
  store double %3, double* %9, align 8
  %17 = load i32, i32* @STL_TEXTFIELD_SIZE, align 4
  %18 = zext i32 %17 to i64
  %19 = call i8* @llvm.stacksave()
  store i8* %19, i8** %10, align 8
  %20 = alloca i32, i64 %18, align 16
  store i64 %18, i64* %11, align 8
  store i32 0, i32* %12, align 4
  %21 = load i32*, i32** %7, align 8
  %22 = getelementptr inbounds i32, i32* %21, i64 3
  %23 = load i32, i32* %22, align 4
  store i32 %23, i32* %13, align 4
  %24 = load i32, i32* %13, align 4
  %25 = icmp sgt i32 %24, 239
  br i1 %25, label %26, label %30

26:                                               ; preds = %4
  %27 = load i32, i32* %13, align 4
  %28 = icmp ne i32 %27, 255
  br i1 %28, label %29, label %30

29:                                               ; preds = %26
  store i32 0, i32* %5, align 4
  store i32 1, i32* %14, align 4
  br label %156

30:                                               ; preds = %26, %4
  %31 = load i32*, i32** %7, align 8
  %32 = getelementptr inbounds i32, i32* %31, i64 15
  %33 = load i32, i32* %32, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %30
  store i32 0, i32* %5, align 4
  store i32 1, i32* %14, align 4
  br label %156

36:                                               ; preds = %30
  %37 = load i32*, i32** %7, align 8
  %38 = getelementptr inbounds i32, i32* %37, i64 14
  %39 = load i32, i32* %38, align 4
  %40 = icmp sgt i32 %39, 0
  br i1 %40, label %41, label %47

41:                                               ; preds = %36
  %42 = load i32*, i32** %7, align 8
  %43 = getelementptr inbounds i32, i32* %42, i64 14
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %46 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %45, i32 0, i32 0
  store i32 %44, i32* %46, align 8
  br label %47

47:                                               ; preds = %41, %36
  %48 = load i32*, i32** %7, align 8
  %49 = getelementptr inbounds i32, i32* %48, i64 4
  %50 = load i32, i32* %49, align 4
  %51 = icmp eq i32 %50, 1
  br i1 %51, label %57, label %52

52:                                               ; preds = %47
  %53 = load i32*, i32** %7, align 8
  %54 = getelementptr inbounds i32, i32* %53, i64 4
  %55 = load i32, i32* %54, align 4
  %56 = icmp eq i32 %55, 2
  br label %57

57:                                               ; preds = %52, %47
  %58 = phi i1 [ true, %47 ], [ %56, %52 ]
  %59 = zext i1 %58 to i32
  %60 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %61 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %60, i32 0, i32 1
  store i32 %59, i32* %61, align 4
  %62 = load i32*, i32** %7, align 8
  %63 = getelementptr inbounds i32, i32* %62, i64 5
  %64 = load double, double* %9, align 8
  %65 = call i8* @ParseTimeCode(i32* %63, double %64)
  %66 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %67 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %66, i32 0, i32 3
  store i8* %65, i8** %67, align 8
  %68 = load i32*, i32** %7, align 8
  %69 = getelementptr inbounds i32, i32* %68, i64 9
  %70 = load double, double* %9, align 8
  %71 = call i8* @ParseTimeCode(i32* %69, double %70)
  %72 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %73 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %72, i32 0, i32 2
  store i8* %71, i8** %73, align 8
  %74 = load i64, i64* @STL_TTI_HEADER_SIZE, align 8
  store i64 %74, i64* %15, align 8
  br label %75

75:                                               ; preds = %149, %57
  %76 = load i64, i64* %15, align 8
  %77 = load i64, i64* @STL_TTI_SIZE, align 8
  %78 = icmp ult i64 %76, %77
  br i1 %78, label %79, label %152

79:                                               ; preds = %75
  %80 = load i32*, i32** %7, align 8
  %81 = load i64, i64* %15, align 8
  %82 = getelementptr inbounds i32, i32* %80, i64 %81
  %83 = load i32, i32* %82, align 4
  store i32 %83, i32* %16, align 4
  %84 = load i32, i32* %16, align 4
  switch i32 %84, label %101 [
    i32 128, label %85
    i32 129, label %95
  ]

85:                                               ; preds = %79
  %86 = load i32, i32* %12, align 4
  %87 = add nsw i32 %86, 1
  store i32 %87, i32* %12, align 4
  %88 = sext i32 %86 to i64
  %89 = getelementptr inbounds i32, i32* %20, i64 %88
  store i32 10, i32* %89, align 4
  %90 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %91 = load i8*, i8** %8, align 8
  %92 = call i32 @TextBufferFlush(%struct.TYPE_7__* %90, i32* %20, i32* %12, i8* %91)
  %93 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %94 = call i32 @ClearTeletextStyles(%struct.TYPE_7__* %93)
  br label %148

95:                                               ; preds = %79
  %96 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %97 = load i8*, i8** %8, align 8
  %98 = call i32 @TextBufferFlush(%struct.TYPE_7__* %96, i32* %20, i32* %12, i8* %97)
  %99 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %100 = call i32 @ClearTeletextStyles(%struct.TYPE_7__* %99)
  store i32 1, i32* %5, align 4
  store i32 1, i32* %14, align 4
  br label %156

101:                                              ; preds = %79
  %102 = load i32, i32* %16, align 4
  %103 = load i32, i32* @STL_TF_TELETEXT_LAST, align 4
  %104 = icmp sle i32 %102, %103
  br i1 %104, label %105, label %112

105:                                              ; preds = %101
  %106 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %107 = load i8*, i8** %8, align 8
  %108 = call i32 @TextBufferFlush(%struct.TYPE_7__* %106, i32* %20, i32* %12, i8* %107)
  %109 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %110 = load i32, i32* %16, align 4
  %111 = call i32 @GroupParseTeletext(%struct.TYPE_7__* %109, i32 %110)
  br label %147

112:                                              ; preds = %101
  %113 = load i32, i32* %16, align 4
  %114 = load i32, i32* @STL_TF_CHARCODE1_FIRST, align 4
  %115 = icmp sge i32 %113, %114
  br i1 %115, label %116, label %120

116:                                              ; preds = %112
  %117 = load i32, i32* %16, align 4
  %118 = load i32, i32* @STL_TF_CHARCODE1_LAST, align 4
  %119 = icmp sle i32 %117, %118
  br i1 %119, label %124, label %120

120:                                              ; preds = %116, %112
  %121 = load i32, i32* %16, align 4
  %122 = load i32, i32* @STL_TF_CHARCODE2_FIRST, align 4
  %123 = icmp sge i32 %121, %122
  br i1 %123, label %124, label %130

124:                                              ; preds = %120, %116
  %125 = load i32, i32* %16, align 4
  %126 = load i32, i32* %12, align 4
  %127 = add nsw i32 %126, 1
  store i32 %127, i32* %12, align 4
  %128 = sext i32 %126 to i64
  %129 = getelementptr inbounds i32, i32* %20, i64 %128
  store i32 %125, i32* %129, align 4
  br label %146

130:                                              ; preds = %120
  %131 = load i32, i32* %16, align 4
  %132 = load i32, i32* @STL_TF_ITALICS_ON, align 4
  %133 = icmp sge i32 %131, %132
  br i1 %133, label %134, label %145

134:                                              ; preds = %130
  %135 = load i32, i32* %16, align 4
  %136 = load i32, i32* @STL_TF_BOXING_OFF, align 4
  %137 = icmp sle i32 %135, %136
  br i1 %137, label %138, label %145

138:                                              ; preds = %134
  %139 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %140 = load i8*, i8** %8, align 8
  %141 = call i32 @TextBufferFlush(%struct.TYPE_7__* %139, i32* %20, i32* %12, i8* %140)
  %142 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %143 = load i32, i32* %16, align 4
  %144 = call i32 @GroupApplyStyle(%struct.TYPE_7__* %142, i32 %143)
  br label %145

145:                                              ; preds = %138, %134, %130
  br label %146

146:                                              ; preds = %145, %124
  br label %147

147:                                              ; preds = %146, %105
  br label %148

148:                                              ; preds = %147, %85
  br label %149

149:                                              ; preds = %148
  %150 = load i64, i64* %15, align 8
  %151 = add i64 %150, 1
  store i64 %151, i64* %15, align 8
  br label %75

152:                                              ; preds = %75
  %153 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %154 = load i8*, i8** %8, align 8
  %155 = call i32 @TextBufferFlush(%struct.TYPE_7__* %153, i32* %20, i32* %12, i8* %154)
  store i32 0, i32* %5, align 4
  store i32 1, i32* %14, align 4
  br label %156

156:                                              ; preds = %152, %95, %35, %29
  %157 = load i8*, i8** %10, align 8
  call void @llvm.stackrestore(i8* %157)
  %158 = load i32, i32* %5, align 4
  ret i32 %158
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i8* @ParseTimeCode(i32*, double) #2

declare dso_local i32 @TextBufferFlush(%struct.TYPE_7__*, i32*, i32*, i8*) #2

declare dso_local i32 @ClearTeletextStyles(%struct.TYPE_7__*) #2

declare dso_local i32 @GroupParseTeletext(%struct.TYPE_7__*, i32) #2

declare dso_local i32 @GroupApplyStyle(%struct.TYPE_7__*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
