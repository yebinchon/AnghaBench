; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/lcms2/src/extr_cmstypes.c_Type_NamedColor_Write.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/lcms2/src/extr_cmstypes.c_Type_NamedColor_Write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._cms_typehandler_struct = type { i32 }
%struct.TYPE_12__ = type { i32 (i32, %struct.TYPE_12__*, i32, i8*)* }
%struct.TYPE_11__ = type { i64, i64, i64 }

@FALSE = common dso_local global i32 0, align 4
@cmsMAXCHANNELS = common dso_local global i32 0, align 4
@cmsMAX_PATH = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct._cms_typehandler_struct*, %struct.TYPE_12__*, i8*, i64)* @Type_NamedColor_Write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @Type_NamedColor_Write(i32 %0, %struct._cms_typehandler_struct* %1, %struct.TYPE_12__* %2, i8* %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct._cms_typehandler_struct*, align 8
  %9 = alloca %struct.TYPE_12__*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.TYPE_11__*, align 8
  %13 = alloca [33 x i8], align 16
  %14 = alloca [33 x i8], align 16
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca [3 x i32], align 4
  %18 = alloca i8*, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca i32, align 4
  store i32 %0, i32* %7, align 4
  store %struct._cms_typehandler_struct* %1, %struct._cms_typehandler_struct** %8, align 8
  store %struct.TYPE_12__* %2, %struct.TYPE_12__** %9, align 8
  store i8* %3, i8** %10, align 8
  store i64 %4, i64* %11, align 8
  %22 = load i8*, i8** %10, align 8
  %23 = bitcast i8* %22 to %struct.TYPE_11__*
  store %struct.TYPE_11__* %23, %struct.TYPE_11__** %12, align 8
  %24 = load i32, i32* %7, align 4
  %25 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %26 = call i64 @cmsNamedColorCount(i32 %24, %struct.TYPE_11__* %25)
  store i64 %26, i64* %16, align 8
  %27 = load i32, i32* %7, align 4
  %28 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %29 = call i32 @_cmsWriteUInt32Number(i32 %27, %struct.TYPE_12__* %28, i64 0)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %33, label %31

31:                                               ; preds = %5
  %32 = load i32, i32* @FALSE, align 4
  store i32 %32, i32* %6, align 4
  br label %147

33:                                               ; preds = %5
  %34 = load i32, i32* %7, align 4
  %35 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %36 = load i64, i64* %16, align 8
  %37 = call i32 @_cmsWriteUInt32Number(i32 %34, %struct.TYPE_12__* %35, i64 %36)
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %41, label %39

39:                                               ; preds = %33
  %40 = load i32, i32* @FALSE, align 4
  store i32 %40, i32* %6, align 4
  br label %147

41:                                               ; preds = %33
  %42 = load i32, i32* %7, align 4
  %43 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %44 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %45 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = call i32 @_cmsWriteUInt32Number(i32 %42, %struct.TYPE_12__* %43, i64 %46)
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %51, label %49

49:                                               ; preds = %41
  %50 = load i32, i32* @FALSE, align 4
  store i32 %50, i32* %6, align 4
  br label %147

51:                                               ; preds = %41
  %52 = getelementptr inbounds [33 x i8], [33 x i8]* %13, i64 0, i64 0
  %53 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %54 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %53, i32 0, i32 2
  %55 = load i64, i64* %54, align 8
  %56 = inttoptr i64 %55 to i8*
  %57 = call i32 @strncpy(i8* %52, i8* %56, i32 32)
  %58 = getelementptr inbounds [33 x i8], [33 x i8]* %14, i64 0, i64 0
  %59 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %60 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %59, i32 0, i32 1
  %61 = load i64, i64* %60, align 8
  %62 = inttoptr i64 %61 to i8*
  %63 = call i32 @strncpy(i8* %58, i8* %62, i32 32)
  %64 = getelementptr inbounds [33 x i8], [33 x i8]* %13, i64 0, i64 32
  store i8 0, i8* %64, align 16
  %65 = getelementptr inbounds [33 x i8], [33 x i8]* %14, i64 0, i64 32
  store i8 0, i8* %65, align 16
  %66 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %67 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %66, i32 0, i32 0
  %68 = load i32 (i32, %struct.TYPE_12__*, i32, i8*)*, i32 (i32, %struct.TYPE_12__*, i32, i8*)** %67, align 8
  %69 = load i32, i32* %7, align 4
  %70 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %71 = getelementptr inbounds [33 x i8], [33 x i8]* %13, i64 0, i64 0
  %72 = call i32 %68(i32 %69, %struct.TYPE_12__* %70, i32 32, i8* %71)
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %76, label %74

74:                                               ; preds = %51
  %75 = load i32, i32* @FALSE, align 4
  store i32 %75, i32* %6, align 4
  br label %147

76:                                               ; preds = %51
  %77 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %78 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %77, i32 0, i32 0
  %79 = load i32 (i32, %struct.TYPE_12__*, i32, i8*)*, i32 (i32, %struct.TYPE_12__*, i32, i8*)** %78, align 8
  %80 = load i32, i32* %7, align 4
  %81 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %82 = getelementptr inbounds [33 x i8], [33 x i8]* %14, i64 0, i64 0
  %83 = call i32 %79(i32 %80, %struct.TYPE_12__* %81, i32 32, i8* %82)
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %87, label %85

85:                                               ; preds = %76
  %86 = load i32, i32* @FALSE, align 4
  store i32 %86, i32* %6, align 4
  br label %147

87:                                               ; preds = %76
  store i64 0, i64* %15, align 8
  br label %88

88:                                               ; preds = %142, %87
  %89 = load i64, i64* %15, align 8
  %90 = load i64, i64* %16, align 8
  %91 = icmp slt i64 %89, %90
  br i1 %91, label %92, label %145

92:                                               ; preds = %88
  %93 = load i32, i32* @cmsMAXCHANNELS, align 4
  %94 = zext i32 %93 to i64
  %95 = call i8* @llvm.stacksave()
  store i8* %95, i8** %18, align 8
  %96 = alloca i32, i64 %94, align 16
  store i64 %94, i64* %19, align 8
  %97 = load i32, i32* @cmsMAX_PATH, align 4
  %98 = zext i32 %97 to i64
  %99 = alloca i8, i64 %98, align 16
  store i64 %98, i64* %20, align 8
  %100 = load i32, i32* %7, align 4
  %101 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %102 = load i64, i64* %15, align 8
  %103 = getelementptr inbounds [3 x i32], [3 x i32]* %17, i64 0, i64 0
  %104 = call i32 @cmsNamedColorInfo(i32 %100, %struct.TYPE_11__* %101, i64 %102, i8* %99, i32* null, i32* null, i32* %103, i32* %96)
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %107, label %106

106:                                              ; preds = %92
  store i32 0, i32* %6, align 4
  store i32 1, i32* %21, align 4
  br label %138

107:                                              ; preds = %92
  %108 = getelementptr inbounds i8, i8* %99, i64 32
  store i8 0, i8* %108, align 16
  %109 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %110 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %109, i32 0, i32 0
  %111 = load i32 (i32, %struct.TYPE_12__*, i32, i8*)*, i32 (i32, %struct.TYPE_12__*, i32, i8*)** %110, align 8
  %112 = load i32, i32* %7, align 4
  %113 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %114 = call i32 %111(i32 %112, %struct.TYPE_12__* %113, i32 32, i8* %99)
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %118, label %116

116:                                              ; preds = %107
  %117 = load i32, i32* @FALSE, align 4
  store i32 %117, i32* %6, align 4
  store i32 1, i32* %21, align 4
  br label %138

118:                                              ; preds = %107
  %119 = load i32, i32* %7, align 4
  %120 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %121 = getelementptr inbounds [3 x i32], [3 x i32]* %17, i64 0, i64 0
  %122 = call i32 @_cmsWriteUInt16Array(i32 %119, %struct.TYPE_12__* %120, i32 3, i32* %121)
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %126, label %124

124:                                              ; preds = %118
  %125 = load i32, i32* @FALSE, align 4
  store i32 %125, i32* %6, align 4
  store i32 1, i32* %21, align 4
  br label %138

126:                                              ; preds = %118
  %127 = load i32, i32* %7, align 4
  %128 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %129 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %130 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %129, i32 0, i32 0
  %131 = load i64, i64* %130, align 8
  %132 = trunc i64 %131 to i32
  %133 = call i32 @_cmsWriteUInt16Array(i32 %127, %struct.TYPE_12__* %128, i32 %132, i32* %96)
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %137, label %135

135:                                              ; preds = %126
  %136 = load i32, i32* @FALSE, align 4
  store i32 %136, i32* %6, align 4
  store i32 1, i32* %21, align 4
  br label %138

137:                                              ; preds = %126
  store i32 0, i32* %21, align 4
  br label %138

138:                                              ; preds = %137, %135, %124, %116, %106
  %139 = load i8*, i8** %18, align 8
  call void @llvm.stackrestore(i8* %139)
  %140 = load i32, i32* %21, align 4
  switch i32 %140, label %149 [
    i32 0, label %141
    i32 1, label %147
  ]

141:                                              ; preds = %138
  br label %142

142:                                              ; preds = %141
  %143 = load i64, i64* %15, align 8
  %144 = add nsw i64 %143, 1
  store i64 %144, i64* %15, align 8
  br label %88

145:                                              ; preds = %88
  %146 = load i32, i32* @TRUE, align 4
  store i32 %146, i32* %6, align 4
  br label %147

147:                                              ; preds = %145, %138, %85, %74, %49, %39, %31
  %148 = load i32, i32* %6, align 4
  ret i32 %148

149:                                              ; preds = %138
  unreachable
}

declare dso_local i64 @cmsNamedColorCount(i32, %struct.TYPE_11__*) #1

declare dso_local i32 @_cmsWriteUInt32Number(i32, %struct.TYPE_12__*, i64) #1

declare dso_local i32 @strncpy(i8*, i8*, i32) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @cmsNamedColorInfo(i32, %struct.TYPE_11__*, i64, i8*, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @_cmsWriteUInt16Array(i32, %struct.TYPE_12__*, i32, i32*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
