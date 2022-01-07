; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/lcms2/src/extr_cmstypes.c_ReadCLUT.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/lcms2/src/extr_cmstypes.c_ReadCLUT.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i64 }
%struct._cms_typehandler_struct = type { i32 }
%struct.TYPE_16__ = type { i32 (i32, %struct.TYPE_16__*, i32*, i32, i32)*, i32 (i32, %struct.TYPE_16__*, i32)* }
%struct.TYPE_17__ = type { i32, %struct.TYPE_14__ }
%struct.TYPE_14__ = type { i32* }

@cmsMAXCHANNELS = common dso_local global i32 0, align 4
@cmsERROR_UNKNOWN_EXTENSION = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"Unknown precision of '%d'\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_15__* (i32, %struct._cms_typehandler_struct*, %struct.TYPE_16__*, i32, i32, i32)* @ReadCLUT to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_15__* @ReadCLUT(i32 %0, %struct._cms_typehandler_struct* %1, %struct.TYPE_16__* %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca %struct.TYPE_15__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct._cms_typehandler_struct*, align 8
  %10 = alloca %struct.TYPE_16__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca %struct.TYPE_15__*, align 8
  %20 = alloca %struct.TYPE_17__*, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  store i32 %0, i32* %8, align 4
  store %struct._cms_typehandler_struct* %1, %struct._cms_typehandler_struct** %9, align 8
  store %struct.TYPE_16__* %2, %struct.TYPE_16__** %10, align 8
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  %23 = load i32, i32* @cmsMAXCHANNELS, align 4
  %24 = zext i32 %23 to i64
  %25 = call i8* @llvm.stacksave()
  store i8* %25, i8** %14, align 8
  %26 = alloca i32, i64 %24, align 16
  store i64 %24, i64* %15, align 8
  %27 = load i32, i32* @cmsMAXCHANNELS, align 4
  %28 = zext i32 %27 to i64
  %29 = alloca i32, i64 %28, align 16
  store i64 %28, i64* %16, align 8
  %30 = load %struct._cms_typehandler_struct*, %struct._cms_typehandler_struct** %9, align 8
  %31 = call i32 @cmsUNUSED_PARAMETER(%struct._cms_typehandler_struct* %30)
  %32 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %33 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %32, i32 0, i32 1
  %34 = load i32 (i32, %struct.TYPE_16__*, i32)*, i32 (i32, %struct.TYPE_16__*, i32)** %33, align 8
  %35 = load i32, i32* %8, align 4
  %36 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %37 = load i32, i32* %11, align 4
  %38 = call i32 %34(i32 %35, %struct.TYPE_16__* %36, i32 %37)
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %41, label %40

40:                                               ; preds = %6
  store %struct.TYPE_15__* null, %struct.TYPE_15__** %7, align 8
  store i32 1, i32* %21, align 4
  br label %177

41:                                               ; preds = %6
  %42 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %43 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %42, i32 0, i32 0
  %44 = load i32 (i32, %struct.TYPE_16__*, i32*, i32, i32)*, i32 (i32, %struct.TYPE_16__*, i32*, i32, i32)** %43, align 8
  %45 = load i32, i32* %8, align 4
  %46 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %47 = load i32, i32* @cmsMAXCHANNELS, align 4
  %48 = call i32 %44(i32 %45, %struct.TYPE_16__* %46, i32* %26, i32 %47, i32 1)
  %49 = icmp ne i32 %48, 1
  br i1 %49, label %50, label %51

50:                                               ; preds = %41
  store %struct.TYPE_15__* null, %struct.TYPE_15__** %7, align 8
  store i32 1, i32* %21, align 4
  br label %177

51:                                               ; preds = %41
  store i32 0, i32* %17, align 4
  br label %52

52:                                               ; preds = %71, %51
  %53 = load i32, i32* %17, align 4
  %54 = load i32, i32* @cmsMAXCHANNELS, align 4
  %55 = icmp slt i32 %53, %54
  br i1 %55, label %56, label %74

56:                                               ; preds = %52
  %57 = load i32, i32* %17, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i32, i32* %26, i64 %58
  %60 = load i32, i32* %59, align 4
  %61 = icmp eq i32 %60, 1
  br i1 %61, label %62, label %63

62:                                               ; preds = %56
  store %struct.TYPE_15__* null, %struct.TYPE_15__** %7, align 8
  store i32 1, i32* %21, align 4
  br label %177

63:                                               ; preds = %56
  %64 = load i32, i32* %17, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i32, i32* %26, i64 %65
  %67 = load i32, i32* %66, align 4
  %68 = load i32, i32* %17, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i32, i32* %29, i64 %69
  store i32 %67, i32* %70, align 4
  br label %71

71:                                               ; preds = %63
  %72 = load i32, i32* %17, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %17, align 4
  br label %52

74:                                               ; preds = %52
  %75 = load i32, i32* %8, align 4
  %76 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %77 = call i32 @_cmsReadUInt8Number(i32 %75, %struct.TYPE_16__* %76, i32* %18)
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %80, label %79

79:                                               ; preds = %74
  store %struct.TYPE_15__* null, %struct.TYPE_15__** %7, align 8
  store i32 1, i32* %21, align 4
  br label %177

80:                                               ; preds = %74
  %81 = load i32, i32* %8, align 4
  %82 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %83 = call i32 @_cmsReadUInt8Number(i32 %81, %struct.TYPE_16__* %82, i32* null)
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %86, label %85

85:                                               ; preds = %80
  store %struct.TYPE_15__* null, %struct.TYPE_15__** %7, align 8
  store i32 1, i32* %21, align 4
  br label %177

86:                                               ; preds = %80
  %87 = load i32, i32* %8, align 4
  %88 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %89 = call i32 @_cmsReadUInt8Number(i32 %87, %struct.TYPE_16__* %88, i32* null)
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %92, label %91

91:                                               ; preds = %86
  store %struct.TYPE_15__* null, %struct.TYPE_15__** %7, align 8
  store i32 1, i32* %21, align 4
  br label %177

92:                                               ; preds = %86
  %93 = load i32, i32* %8, align 4
  %94 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %95 = call i32 @_cmsReadUInt8Number(i32 %93, %struct.TYPE_16__* %94, i32* null)
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %98, label %97

97:                                               ; preds = %92
  store %struct.TYPE_15__* null, %struct.TYPE_15__** %7, align 8
  store i32 1, i32* %21, align 4
  br label %177

98:                                               ; preds = %92
  %99 = load i32, i32* %8, align 4
  %100 = load i32, i32* %12, align 4
  %101 = load i32, i32* %13, align 4
  %102 = call %struct.TYPE_15__* @cmsStageAllocCLut16bitGranular(i32 %99, i32* %29, i32 %100, i32 %101, i32* null)
  store %struct.TYPE_15__* %102, %struct.TYPE_15__** %19, align 8
  %103 = load %struct.TYPE_15__*, %struct.TYPE_15__** %19, align 8
  %104 = icmp eq %struct.TYPE_15__* %103, null
  br i1 %104, label %105, label %106

105:                                              ; preds = %98
  store %struct.TYPE_15__* null, %struct.TYPE_15__** %7, align 8
  store i32 1, i32* %21, align 4
  br label %177

106:                                              ; preds = %98
  %107 = load %struct.TYPE_15__*, %struct.TYPE_15__** %19, align 8
  %108 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %107, i32 0, i32 0
  %109 = load i64, i64* %108, align 8
  %110 = inttoptr i64 %109 to %struct.TYPE_17__*
  store %struct.TYPE_17__* %110, %struct.TYPE_17__** %20, align 8
  %111 = load i32, i32* %18, align 4
  %112 = icmp eq i32 %111, 1
  br i1 %112, label %113, label %146

113:                                              ; preds = %106
  store i32 0, i32* %17, align 4
  br label %114

114:                                              ; preds = %142, %113
  %115 = load i32, i32* %17, align 4
  %116 = load %struct.TYPE_17__*, %struct.TYPE_17__** %20, align 8
  %117 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 8
  %119 = icmp slt i32 %115, %118
  br i1 %119, label %120, label %145

120:                                              ; preds = %114
  %121 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %122 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %121, i32 0, i32 0
  %123 = load i32 (i32, %struct.TYPE_16__*, i32*, i32, i32)*, i32 (i32, %struct.TYPE_16__*, i32*, i32, i32)** %122, align 8
  %124 = load i32, i32* %8, align 4
  %125 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %126 = call i32 %123(i32 %124, %struct.TYPE_16__* %125, i32* %22, i32 4, i32 1)
  %127 = icmp ne i32 %126, 1
  br i1 %127, label %128, label %132

128:                                              ; preds = %120
  %129 = load i32, i32* %8, align 4
  %130 = load %struct.TYPE_15__*, %struct.TYPE_15__** %19, align 8
  %131 = call i32 @cmsStageFree(i32 %129, %struct.TYPE_15__* %130)
  store %struct.TYPE_15__* null, %struct.TYPE_15__** %7, align 8
  store i32 1, i32* %21, align 4
  br label %177

132:                                              ; preds = %120
  %133 = load i32, i32* %22, align 4
  %134 = call i32 @FROM_8_TO_16(i32 %133)
  %135 = load %struct.TYPE_17__*, %struct.TYPE_17__** %20, align 8
  %136 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %135, i32 0, i32 1
  %137 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %136, i32 0, i32 0
  %138 = load i32*, i32** %137, align 8
  %139 = load i32, i32* %17, align 4
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds i32, i32* %138, i64 %140
  store i32 %134, i32* %141, align 4
  br label %142

142:                                              ; preds = %132
  %143 = load i32, i32* %17, align 4
  %144 = add nsw i32 %143, 1
  store i32 %144, i32* %17, align 4
  br label %114

145:                                              ; preds = %114
  br label %175

146:                                              ; preds = %106
  %147 = load i32, i32* %18, align 4
  %148 = icmp eq i32 %147, 2
  br i1 %148, label %149, label %166

149:                                              ; preds = %146
  %150 = load i32, i32* %8, align 4
  %151 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %152 = load %struct.TYPE_17__*, %struct.TYPE_17__** %20, align 8
  %153 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %152, i32 0, i32 0
  %154 = load i32, i32* %153, align 8
  %155 = load %struct.TYPE_17__*, %struct.TYPE_17__** %20, align 8
  %156 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %155, i32 0, i32 1
  %157 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %156, i32 0, i32 0
  %158 = load i32*, i32** %157, align 8
  %159 = call i32 @_cmsReadUInt16Array(i32 %150, %struct.TYPE_16__* %151, i32 %154, i32* %158)
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %165, label %161

161:                                              ; preds = %149
  %162 = load i32, i32* %8, align 4
  %163 = load %struct.TYPE_15__*, %struct.TYPE_15__** %19, align 8
  %164 = call i32 @cmsStageFree(i32 %162, %struct.TYPE_15__* %163)
  store %struct.TYPE_15__* null, %struct.TYPE_15__** %7, align 8
  store i32 1, i32* %21, align 4
  br label %177

165:                                              ; preds = %149
  br label %174

166:                                              ; preds = %146
  %167 = load i32, i32* %8, align 4
  %168 = load %struct.TYPE_15__*, %struct.TYPE_15__** %19, align 8
  %169 = call i32 @cmsStageFree(i32 %167, %struct.TYPE_15__* %168)
  %170 = load i32, i32* %8, align 4
  %171 = load i32, i32* @cmsERROR_UNKNOWN_EXTENSION, align 4
  %172 = load i32, i32* %18, align 4
  %173 = call i32 @cmsSignalError(i32 %170, i32 %171, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %172)
  store %struct.TYPE_15__* null, %struct.TYPE_15__** %7, align 8
  store i32 1, i32* %21, align 4
  br label %177

174:                                              ; preds = %165
  br label %175

175:                                              ; preds = %174, %145
  %176 = load %struct.TYPE_15__*, %struct.TYPE_15__** %19, align 8
  store %struct.TYPE_15__* %176, %struct.TYPE_15__** %7, align 8
  store i32 1, i32* %21, align 4
  br label %177

177:                                              ; preds = %175, %166, %161, %128, %105, %97, %91, %85, %79, %62, %50, %40
  %178 = load i8*, i8** %14, align 8
  call void @llvm.stackrestore(i8* %178)
  %179 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  ret %struct.TYPE_15__* %179
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @cmsUNUSED_PARAMETER(%struct._cms_typehandler_struct*) #2

declare dso_local i32 @_cmsReadUInt8Number(i32, %struct.TYPE_16__*, i32*) #2

declare dso_local %struct.TYPE_15__* @cmsStageAllocCLut16bitGranular(i32, i32*, i32, i32, i32*) #2

declare dso_local i32 @cmsStageFree(i32, %struct.TYPE_15__*) #2

declare dso_local i32 @FROM_8_TO_16(i32) #2

declare dso_local i32 @_cmsReadUInt16Array(i32, %struct.TYPE_16__*, i32, i32*) #2

declare dso_local i32 @cmsSignalError(i32, i32, i8*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
