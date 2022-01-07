; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/lcms2/utils/transicc/extr_transicc.c_ComponentNames.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/lcms2/utils/transicc/extr_transicc.c_ComponentNames.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@cmsMAX_PATH = common dso_local global i32 0, align 4
@cmsMAXCHANNELS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"X\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"Y\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"Z\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"L*\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"a*\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c"b*\00", align 1
@.str.7 = private unnamed_addr constant [2 x i8] c"L\00", align 1
@.str.8 = private unnamed_addr constant [2 x i8] c"u\00", align 1
@.str.9 = private unnamed_addr constant [2 x i8] c"v\00", align 1
@.str.10 = private unnamed_addr constant [3 x i8] c"Cb\00", align 1
@.str.11 = private unnamed_addr constant [3 x i8] c"Cr\00", align 1
@.str.12 = private unnamed_addr constant [2 x i8] c"x\00", align 1
@.str.13 = private unnamed_addr constant [2 x i8] c"y\00", align 1
@.str.14 = private unnamed_addr constant [2 x i8] c"R\00", align 1
@.str.15 = private unnamed_addr constant [2 x i8] c"G\00", align 1
@.str.16 = private unnamed_addr constant [2 x i8] c"B\00", align 1
@.str.17 = private unnamed_addr constant [2 x i8] c"H\00", align 1
@.str.18 = private unnamed_addr constant [2 x i8] c"s\00", align 1
@.str.19 = private unnamed_addr constant [2 x i8] c"l\00", align 1
@.str.20 = private unnamed_addr constant [2 x i8] c"C\00", align 1
@.str.21 = private unnamed_addr constant [2 x i8] c"M\00", align 1
@.str.22 = private unnamed_addr constant [2 x i8] c"K\00", align 1
@.str.23 = private unnamed_addr constant [12 x i8] c"Channel #%d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32, i32, i32)* @ComponentNames to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @ComponentNames(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %14 = load i32, i32* @cmsMAX_PATH, align 4
  %15 = zext i32 %14 to i64
  %16 = call i8* @llvm.stacksave()
  store i8* %16, i8** %11, align 8
  %17 = alloca i8, i64 %15, align 16
  store i64 %15, i64* %12, align 8
  %18 = load i32, i32* @cmsMAXCHANNELS, align 4
  %19 = call i32* @cmsAllocNamedColorList(i32 0, i32 12, i32 %18, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  store i32* %19, i32** %8, align 8
  %20 = load i32*, i32** %8, align 8
  %21 = icmp eq i32* %20, null
  br i1 %21, label %22, label %23

22:                                               ; preds = %3
  store i32* null, i32** %4, align 8
  store i32 1, i32* %13, align 4
  br label %177

23:                                               ; preds = %3
  %24 = load i32, i32* %6, align 4
  switch i32 %24, label %154 [
    i32 130, label %25
    i32 133, label %37
    i32 132, label %49
    i32 129, label %61
    i32 128, label %73
    i32 131, label %85
    i32 136, label %97
    i32 134, label %103
    i32 135, label %115
    i32 137, label %127
    i32 138, label %142
  ]

25:                                               ; preds = %23
  %26 = load i32, i32* %7, align 4
  %27 = call i32 @SetRange(i32 100, i32 %26)
  %28 = load i32, i32* %5, align 4
  %29 = load i32*, i32** %8, align 8
  %30 = call i32 @cmsAppendNamedColor(i32 %28, i32* %29, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i32* null, i32* null)
  %31 = load i32, i32* %5, align 4
  %32 = load i32*, i32** %8, align 8
  %33 = call i32 @cmsAppendNamedColor(i32 %31, i32* %32, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i32* null, i32* null)
  %34 = load i32, i32* %5, align 4
  %35 = load i32*, i32** %8, align 8
  %36 = call i32 @cmsAppendNamedColor(i32 %34, i32* %35, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0), i32* null, i32* null)
  br label %175

37:                                               ; preds = %23
  %38 = load i32, i32* %7, align 4
  %39 = call i32 @SetRange(i32 1, i32 %38)
  %40 = load i32, i32* %5, align 4
  %41 = load i32*, i32** %8, align 8
  %42 = call i32 @cmsAppendNamedColor(i32 %40, i32* %41, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i32* null, i32* null)
  %43 = load i32, i32* %5, align 4
  %44 = load i32*, i32** %8, align 8
  %45 = call i32 @cmsAppendNamedColor(i32 %43, i32* %44, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0), i32* null, i32* null)
  %46 = load i32, i32* %5, align 4
  %47 = load i32*, i32** %8, align 8
  %48 = call i32 @cmsAppendNamedColor(i32 %46, i32* %47, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0), i32* null, i32* null)
  br label %175

49:                                               ; preds = %23
  %50 = load i32, i32* %7, align 4
  %51 = call i32 @SetRange(i32 1, i32 %50)
  %52 = load i32, i32* %5, align 4
  %53 = load i32*, i32** %8, align 8
  %54 = call i32 @cmsAppendNamedColor(i32 %52, i32* %53, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0), i32* null, i32* null)
  %55 = load i32, i32* %5, align 4
  %56 = load i32*, i32** %8, align 8
  %57 = call i32 @cmsAppendNamedColor(i32 %55, i32* %56, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i64 0, i64 0), i32* null, i32* null)
  %58 = load i32, i32* %5, align 4
  %59 = load i32*, i32** %8, align 8
  %60 = call i32 @cmsAppendNamedColor(i32 %58, i32* %59, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9, i64 0, i64 0), i32* null, i32* null)
  br label %175

61:                                               ; preds = %23
  %62 = load i32, i32* %7, align 4
  %63 = call i32 @SetRange(i32 255, i32 %62)
  %64 = load i32, i32* %5, align 4
  %65 = load i32*, i32** %8, align 8
  %66 = call i32 @cmsAppendNamedColor(i32 %64, i32* %65, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i32* null, i32* null)
  %67 = load i32, i32* %5, align 4
  %68 = load i32*, i32** %8, align 8
  %69 = call i32 @cmsAppendNamedColor(i32 %67, i32* %68, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.10, i64 0, i64 0), i32* null, i32* null)
  %70 = load i32, i32* %5, align 4
  %71 = load i32*, i32** %8, align 8
  %72 = call i32 @cmsAppendNamedColor(i32 %70, i32* %71, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.11, i64 0, i64 0), i32* null, i32* null)
  br label %175

73:                                               ; preds = %23
  %74 = load i32, i32* %7, align 4
  %75 = call i32 @SetRange(i32 1, i32 %74)
  %76 = load i32, i32* %5, align 4
  %77 = load i32*, i32** %8, align 8
  %78 = call i32 @cmsAppendNamedColor(i32 %76, i32* %77, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i32* null, i32* null)
  %79 = load i32, i32* %5, align 4
  %80 = load i32*, i32** %8, align 8
  %81 = call i32 @cmsAppendNamedColor(i32 %79, i32* %80, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12, i64 0, i64 0), i32* null, i32* null)
  %82 = load i32, i32* %5, align 4
  %83 = load i32*, i32** %8, align 8
  %84 = call i32 @cmsAppendNamedColor(i32 %82, i32* %83, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.13, i64 0, i64 0), i32* null, i32* null)
  br label %175

85:                                               ; preds = %23
  %86 = load i32, i32* %7, align 4
  %87 = call i32 @SetRange(i32 255, i32 %86)
  %88 = load i32, i32* %5, align 4
  %89 = load i32*, i32** %8, align 8
  %90 = call i32 @cmsAppendNamedColor(i32 %88, i32* %89, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.14, i64 0, i64 0), i32* null, i32* null)
  %91 = load i32, i32* %5, align 4
  %92 = load i32*, i32** %8, align 8
  %93 = call i32 @cmsAppendNamedColor(i32 %91, i32* %92, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.15, i64 0, i64 0), i32* null, i32* null)
  %94 = load i32, i32* %5, align 4
  %95 = load i32*, i32** %8, align 8
  %96 = call i32 @cmsAppendNamedColor(i32 %94, i32* %95, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.16, i64 0, i64 0), i32* null, i32* null)
  br label %175

97:                                               ; preds = %23
  %98 = load i32, i32* %7, align 4
  %99 = call i32 @SetRange(i32 255, i32 %98)
  %100 = load i32, i32* %5, align 4
  %101 = load i32*, i32** %8, align 8
  %102 = call i32 @cmsAppendNamedColor(i32 %100, i32* %101, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.15, i64 0, i64 0), i32* null, i32* null)
  br label %175

103:                                              ; preds = %23
  %104 = load i32, i32* %7, align 4
  %105 = call i32 @SetRange(i32 255, i32 %104)
  %106 = load i32, i32* %5, align 4
  %107 = load i32*, i32** %8, align 8
  %108 = call i32 @cmsAppendNamedColor(i32 %106, i32* %107, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.17, i64 0, i64 0), i32* null, i32* null)
  %109 = load i32, i32* %5, align 4
  %110 = load i32*, i32** %8, align 8
  %111 = call i32 @cmsAppendNamedColor(i32 %109, i32* %110, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.18, i64 0, i64 0), i32* null, i32* null)
  %112 = load i32, i32* %5, align 4
  %113 = load i32*, i32** %8, align 8
  %114 = call i32 @cmsAppendNamedColor(i32 %112, i32* %113, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9, i64 0, i64 0), i32* null, i32* null)
  br label %175

115:                                              ; preds = %23
  %116 = load i32, i32* %7, align 4
  %117 = call i32 @SetRange(i32 255, i32 %116)
  %118 = load i32, i32* %5, align 4
  %119 = load i32*, i32** %8, align 8
  %120 = call i32 @cmsAppendNamedColor(i32 %118, i32* %119, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.17, i64 0, i64 0), i32* null, i32* null)
  %121 = load i32, i32* %5, align 4
  %122 = load i32*, i32** %8, align 8
  %123 = call i32 @cmsAppendNamedColor(i32 %121, i32* %122, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.19, i64 0, i64 0), i32* null, i32* null)
  %124 = load i32, i32* %5, align 4
  %125 = load i32*, i32** %8, align 8
  %126 = call i32 @cmsAppendNamedColor(i32 %124, i32* %125, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.18, i64 0, i64 0), i32* null, i32* null)
  br label %175

127:                                              ; preds = %23
  %128 = load i32, i32* %7, align 4
  %129 = call i32 @SetRange(i32 1, i32 %128)
  %130 = load i32, i32* %5, align 4
  %131 = load i32*, i32** %8, align 8
  %132 = call i32 @cmsAppendNamedColor(i32 %130, i32* %131, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.20, i64 0, i64 0), i32* null, i32* null)
  %133 = load i32, i32* %5, align 4
  %134 = load i32*, i32** %8, align 8
  %135 = call i32 @cmsAppendNamedColor(i32 %133, i32* %134, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.21, i64 0, i64 0), i32* null, i32* null)
  %136 = load i32, i32* %5, align 4
  %137 = load i32*, i32** %8, align 8
  %138 = call i32 @cmsAppendNamedColor(i32 %136, i32* %137, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i32* null, i32* null)
  %139 = load i32, i32* %5, align 4
  %140 = load i32*, i32** %8, align 8
  %141 = call i32 @cmsAppendNamedColor(i32 %139, i32* %140, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.22, i64 0, i64 0), i32* null, i32* null)
  br label %175

142:                                              ; preds = %23
  %143 = load i32, i32* %7, align 4
  %144 = call i32 @SetRange(i32 1, i32 %143)
  %145 = load i32, i32* %5, align 4
  %146 = load i32*, i32** %8, align 8
  %147 = call i32 @cmsAppendNamedColor(i32 %145, i32* %146, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.20, i64 0, i64 0), i32* null, i32* null)
  %148 = load i32, i32* %5, align 4
  %149 = load i32*, i32** %8, align 8
  %150 = call i32 @cmsAppendNamedColor(i32 %148, i32* %149, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.21, i64 0, i64 0), i32* null, i32* null)
  %151 = load i32, i32* %5, align 4
  %152 = load i32*, i32** %8, align 8
  %153 = call i32 @cmsAppendNamedColor(i32 %151, i32* %152, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i32* null, i32* null)
  br label %175

154:                                              ; preds = %23
  %155 = load i32, i32* %7, align 4
  %156 = call i32 @SetRange(i32 1, i32 %155)
  %157 = load i32, i32* %5, align 4
  %158 = load i32, i32* %6, align 4
  %159 = call i32 @cmsChannelsOf(i32 %157, i32 %158)
  store i32 %159, i32* %10, align 4
  store i32 0, i32* %9, align 4
  br label %160

160:                                              ; preds = %171, %154
  %161 = load i32, i32* %9, align 4
  %162 = load i32, i32* %10, align 4
  %163 = icmp slt i32 %161, %162
  br i1 %163, label %164, label %174

164:                                              ; preds = %160
  %165 = load i32, i32* %9, align 4
  %166 = add nsw i32 %165, 1
  %167 = call i32 @sprintf(i8* %17, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.23, i64 0, i64 0), i32 %166)
  %168 = load i32, i32* %5, align 4
  %169 = load i32*, i32** %8, align 8
  %170 = call i32 @cmsAppendNamedColor(i32 %168, i32* %169, i8* %17, i32* null, i32* null)
  br label %171

171:                                              ; preds = %164
  %172 = load i32, i32* %9, align 4
  %173 = add nsw i32 %172, 1
  store i32 %173, i32* %9, align 4
  br label %160

174:                                              ; preds = %160
  br label %175

175:                                              ; preds = %174, %142, %127, %115, %103, %97, %85, %73, %61, %49, %37, %25
  %176 = load i32*, i32** %8, align 8
  store i32* %176, i32** %4, align 8
  store i32 1, i32* %13, align 4
  br label %177

177:                                              ; preds = %175, %22
  %178 = load i8*, i8** %11, align 8
  call void @llvm.stackrestore(i8* %178)
  %179 = load i32*, i32** %4, align 8
  ret i32* %179
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32* @cmsAllocNamedColorList(i32, i32, i32, i8*, i8*) #2

declare dso_local i32 @SetRange(i32, i32) #2

declare dso_local i32 @cmsAppendNamedColor(i32, i32*, i8*, i32*, i32*) #2

declare dso_local i32 @cmsChannelsOf(i32, i32) #2

declare dso_local i32 @sprintf(i8*, i8*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
