; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/lcms2/src/extr_cmstypes.c_WriteCLUT.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/lcms2/src/extr_cmstypes.c_WriteCLUT.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._cms_typehandler_struct = type { i32 }
%struct.TYPE_15__ = type { i32 (i32, %struct.TYPE_15__*, i32, i32*)* }
%struct.TYPE_14__ = type { i64 }
%struct.TYPE_16__ = type { i64, %struct.TYPE_13__, %struct.TYPE_12__*, i64 }
%struct.TYPE_13__ = type { i32* }
%struct.TYPE_12__ = type { i64*, i64 }

@cmsMAXCHANNELS = common dso_local global i32 0, align 4
@cmsERROR_NOT_SUITABLE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [59 x i8] c"Cannot save floating point data, CLUT are 8 or 16 bit only\00", align 1
@FALSE = common dso_local global i32 0, align 4
@cmsERROR_UNKNOWN_EXTENSION = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"Unknown precision of '%d'\00", align 1
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct._cms_typehandler_struct*, %struct.TYPE_15__*, i32, %struct.TYPE_14__*)* @WriteCLUT to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @WriteCLUT(i32 %0, %struct._cms_typehandler_struct* %1, %struct.TYPE_15__* %2, i32 %3, %struct.TYPE_14__* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct._cms_typehandler_struct*, align 8
  %9 = alloca %struct.TYPE_15__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_14__*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca %struct.TYPE_16__*, align 8
  %16 = alloca i32, align 4
  store i32 %0, i32* %7, align 4
  store %struct._cms_typehandler_struct* %1, %struct._cms_typehandler_struct** %8, align 8
  store %struct.TYPE_15__* %2, %struct.TYPE_15__** %9, align 8
  store i32 %3, i32* %10, align 4
  store %struct.TYPE_14__* %4, %struct.TYPE_14__** %11, align 8
  %17 = load i32, i32* @cmsMAXCHANNELS, align 4
  %18 = zext i32 %17 to i64
  %19 = call i8* @llvm.stacksave()
  store i8* %19, i8** %12, align 8
  %20 = alloca i32, i64 %18, align 16
  store i64 %18, i64* %13, align 8
  %21 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %22 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = inttoptr i64 %23 to %struct.TYPE_16__*
  store %struct.TYPE_16__* %24, %struct.TYPE_16__** %15, align 8
  %25 = load %struct._cms_typehandler_struct*, %struct._cms_typehandler_struct** %8, align 8
  %26 = call i32 @cmsUNUSED_PARAMETER(%struct._cms_typehandler_struct* %25)
  %27 = load %struct.TYPE_16__*, %struct.TYPE_16__** %15, align 8
  %28 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %27, i32 0, i32 3
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %36

31:                                               ; preds = %5
  %32 = load i32, i32* %7, align 4
  %33 = load i32, i32* @cmsERROR_NOT_SUITABLE, align 4
  %34 = call i32 (i32, i32, i8*, ...) @cmsSignalError(i32 %32, i32 %33, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str, i64 0, i64 0))
  %35 = load i32, i32* @FALSE, align 4
  store i32 %35, i32* %6, align 4
  store i32 1, i32* %16, align 4
  br label %170

36:                                               ; preds = %5
  %37 = mul nuw i64 4, %18
  %38 = trunc i64 %37 to i32
  %39 = call i32 @memset(i32* %20, i32 0, i32 %38)
  store i64 0, i64* %14, align 8
  br label %40

40:                                               ; preds = %60, %36
  %41 = load i64, i64* %14, align 8
  %42 = load %struct.TYPE_16__*, %struct.TYPE_16__** %15, align 8
  %43 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %42, i32 0, i32 2
  %44 = load %struct.TYPE_12__*, %struct.TYPE_12__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = icmp ult i64 %41, %46
  br i1 %47, label %48, label %63

48:                                               ; preds = %40
  %49 = load %struct.TYPE_16__*, %struct.TYPE_16__** %15, align 8
  %50 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %49, i32 0, i32 2
  %51 = load %struct.TYPE_12__*, %struct.TYPE_12__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %51, i32 0, i32 0
  %53 = load i64*, i64** %52, align 8
  %54 = load i64, i64* %14, align 8
  %55 = getelementptr inbounds i64, i64* %53, i64 %54
  %56 = load i64, i64* %55, align 8
  %57 = trunc i64 %56 to i32
  %58 = load i64, i64* %14, align 8
  %59 = getelementptr inbounds i32, i32* %20, i64 %58
  store i32 %57, i32* %59, align 4
  br label %60

60:                                               ; preds = %48
  %61 = load i64, i64* %14, align 8
  %62 = add i64 %61, 1
  store i64 %62, i64* %14, align 8
  br label %40

63:                                               ; preds = %40
  %64 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %65 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %64, i32 0, i32 0
  %66 = load i32 (i32, %struct.TYPE_15__*, i32, i32*)*, i32 (i32, %struct.TYPE_15__*, i32, i32*)** %65, align 8
  %67 = load i32, i32* %7, align 4
  %68 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %69 = load i32, i32* @cmsMAXCHANNELS, align 4
  %70 = sext i32 %69 to i64
  %71 = mul i64 %70, 4
  %72 = trunc i64 %71 to i32
  %73 = call i32 %66(i32 %67, %struct.TYPE_15__* %68, i32 %72, i32* %20)
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %77, label %75

75:                                               ; preds = %63
  %76 = load i32, i32* @FALSE, align 4
  store i32 %76, i32* %6, align 4
  store i32 1, i32* %16, align 4
  br label %170

77:                                               ; preds = %63
  %78 = load i32, i32* %7, align 4
  %79 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %80 = load i32, i32* %10, align 4
  %81 = call i32 @_cmsWriteUInt8Number(i32 %78, %struct.TYPE_15__* %79, i32 %80)
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %85, label %83

83:                                               ; preds = %77
  %84 = load i32, i32* @FALSE, align 4
  store i32 %84, i32* %6, align 4
  store i32 1, i32* %16, align 4
  br label %170

85:                                               ; preds = %77
  %86 = load i32, i32* %7, align 4
  %87 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %88 = call i32 @_cmsWriteUInt8Number(i32 %86, %struct.TYPE_15__* %87, i32 0)
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %92, label %90

90:                                               ; preds = %85
  %91 = load i32, i32* @FALSE, align 4
  store i32 %91, i32* %6, align 4
  store i32 1, i32* %16, align 4
  br label %170

92:                                               ; preds = %85
  %93 = load i32, i32* %7, align 4
  %94 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %95 = call i32 @_cmsWriteUInt8Number(i32 %93, %struct.TYPE_15__* %94, i32 0)
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %99, label %97

97:                                               ; preds = %92
  %98 = load i32, i32* @FALSE, align 4
  store i32 %98, i32* %6, align 4
  store i32 1, i32* %16, align 4
  br label %170

99:                                               ; preds = %92
  %100 = load i32, i32* %7, align 4
  %101 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %102 = call i32 @_cmsWriteUInt8Number(i32 %100, %struct.TYPE_15__* %101, i32 0)
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %106, label %104

104:                                              ; preds = %99
  %105 = load i32, i32* @FALSE, align 4
  store i32 %105, i32* %6, align 4
  store i32 1, i32* %16, align 4
  br label %170

106:                                              ; preds = %99
  %107 = load i32, i32* %10, align 4
  %108 = icmp eq i32 %107, 1
  br i1 %108, label %109, label %136

109:                                              ; preds = %106
  store i64 0, i64* %14, align 8
  br label %110

110:                                              ; preds = %132, %109
  %111 = load i64, i64* %14, align 8
  %112 = load %struct.TYPE_16__*, %struct.TYPE_16__** %15, align 8
  %113 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %112, i32 0, i32 0
  %114 = load i64, i64* %113, align 8
  %115 = icmp ult i64 %111, %114
  br i1 %115, label %116, label %135

116:                                              ; preds = %110
  %117 = load i32, i32* %7, align 4
  %118 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %119 = load %struct.TYPE_16__*, %struct.TYPE_16__** %15, align 8
  %120 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %119, i32 0, i32 1
  %121 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %120, i32 0, i32 0
  %122 = load i32*, i32** %121, align 8
  %123 = load i64, i64* %14, align 8
  %124 = getelementptr inbounds i32, i32* %122, i64 %123
  %125 = load i32, i32* %124, align 4
  %126 = call i32 @FROM_16_TO_8(i32 %125)
  %127 = call i32 @_cmsWriteUInt8Number(i32 %117, %struct.TYPE_15__* %118, i32 %126)
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %131, label %129

129:                                              ; preds = %116
  %130 = load i32, i32* @FALSE, align 4
  store i32 %130, i32* %6, align 4
  store i32 1, i32* %16, align 4
  br label %170

131:                                              ; preds = %116
  br label %132

132:                                              ; preds = %131
  %133 = load i64, i64* %14, align 8
  %134 = add i64 %133, 1
  store i64 %134, i64* %14, align 8
  br label %110

135:                                              ; preds = %110
  br label %161

136:                                              ; preds = %106
  %137 = load i32, i32* %10, align 4
  %138 = icmp eq i32 %137, 2
  br i1 %138, label %139, label %154

139:                                              ; preds = %136
  %140 = load i32, i32* %7, align 4
  %141 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %142 = load %struct.TYPE_16__*, %struct.TYPE_16__** %15, align 8
  %143 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %142, i32 0, i32 0
  %144 = load i64, i64* %143, align 8
  %145 = load %struct.TYPE_16__*, %struct.TYPE_16__** %15, align 8
  %146 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %145, i32 0, i32 1
  %147 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %146, i32 0, i32 0
  %148 = load i32*, i32** %147, align 8
  %149 = call i32 @_cmsWriteUInt16Array(i32 %140, %struct.TYPE_15__* %141, i64 %144, i32* %148)
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %153, label %151

151:                                              ; preds = %139
  %152 = load i32, i32* @FALSE, align 4
  store i32 %152, i32* %6, align 4
  store i32 1, i32* %16, align 4
  br label %170

153:                                              ; preds = %139
  br label %160

154:                                              ; preds = %136
  %155 = load i32, i32* %7, align 4
  %156 = load i32, i32* @cmsERROR_UNKNOWN_EXTENSION, align 4
  %157 = load i32, i32* %10, align 4
  %158 = call i32 (i32, i32, i8*, ...) @cmsSignalError(i32 %155, i32 %156, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i32 %157)
  %159 = load i32, i32* @FALSE, align 4
  store i32 %159, i32* %6, align 4
  store i32 1, i32* %16, align 4
  br label %170

160:                                              ; preds = %153
  br label %161

161:                                              ; preds = %160, %135
  %162 = load i32, i32* %7, align 4
  %163 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %164 = call i32 @_cmsWriteAlignment(i32 %162, %struct.TYPE_15__* %163)
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %168, label %166

166:                                              ; preds = %161
  %167 = load i32, i32* @FALSE, align 4
  store i32 %167, i32* %6, align 4
  store i32 1, i32* %16, align 4
  br label %170

168:                                              ; preds = %161
  %169 = load i32, i32* @TRUE, align 4
  store i32 %169, i32* %6, align 4
  store i32 1, i32* %16, align 4
  br label %170

170:                                              ; preds = %168, %166, %154, %151, %129, %104, %97, %90, %83, %75, %31
  %171 = load i8*, i8** %12, align 8
  call void @llvm.stackrestore(i8* %171)
  %172 = load i32, i32* %6, align 4
  ret i32 %172
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @cmsUNUSED_PARAMETER(%struct._cms_typehandler_struct*) #2

declare dso_local i32 @cmsSignalError(i32, i32, i8*, ...) #2

declare dso_local i32 @memset(i32*, i32, i32) #2

declare dso_local i32 @_cmsWriteUInt8Number(i32, %struct.TYPE_15__*, i32) #2

declare dso_local i32 @FROM_16_TO_8(i32) #2

declare dso_local i32 @_cmsWriteUInt16Array(i32, %struct.TYPE_15__*, i64, i32*) #2

declare dso_local i32 @_cmsWriteAlignment(i32, %struct.TYPE_15__*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
