; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/lcms2/src/extr_cmstypes.c_Type_Dictionary_Read.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/lcms2/src/extr_cmstypes.c_Type_Dictionary_Read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._cms_typehandler_struct = type { i32 }
%struct.TYPE_12__ = type { i32 (i32, %struct.TYPE_12__*)* }
%struct.TYPE_13__ = type { i32, i32, i32, i32 }

@cmsERROR_UNKNOWN_EXTENSION = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"Unknown record length in dictionary '%d'\00", align 1
@cmsERROR_CORRUPTION_DETECTED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"Bad dictionary Name/Value\00", align 1
@FALSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i32, %struct._cms_typehandler_struct*, %struct.TYPE_12__*, i32*, i32)* @Type_Dictionary_Read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @Type_Dictionary_Read(i32 %0, %struct._cms_typehandler_struct* %1, %struct.TYPE_12__* %2, i32* %3, i32 %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct._cms_typehandler_struct*, align 8
  %9 = alloca %struct.TYPE_12__*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.TYPE_13__, align 4
  %18 = alloca i32*, align 8
  %19 = alloca i32*, align 8
  %20 = alloca i32*, align 8
  %21 = alloca i32*, align 8
  %22 = alloca i32, align 4
  store i32 %0, i32* %7, align 4
  store %struct._cms_typehandler_struct* %1, %struct._cms_typehandler_struct** %8, align 8
  store %struct.TYPE_12__* %2, %struct.TYPE_12__** %9, align 8
  store i32* %3, i32** %10, align 8
  store i32 %4, i32* %11, align 4
  store i32* null, i32** %18, align 8
  store i32* null, i32** %19, align 8
  store i32* null, i32** %20, align 8
  store i32* null, i32** %21, align 8
  %23 = load i32*, i32** %10, align 8
  store i32 0, i32* %23, align 4
  %24 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %25 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %24, i32 0, i32 0
  %26 = load i32 (i32, %struct.TYPE_12__*)*, i32 (i32, %struct.TYPE_12__*)** %25, align 8
  %27 = load i32, i32* %7, align 4
  %28 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %29 = call i32 %26(i32 %27, %struct.TYPE_12__* %28)
  %30 = sext i32 %29 to i64
  %31 = sub i64 %30, 4
  %32 = trunc i64 %31 to i32
  store i32 %32, i32* %16, align 4
  %33 = load i32, i32* %7, align 4
  %34 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %35 = call i32 @_cmsReadUInt32Number(i32 %33, %struct.TYPE_12__* %34, i32* %14)
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %38, label %37

37:                                               ; preds = %5
  store i8* null, i8** %6, align 8
  br label %202

38:                                               ; preds = %5
  %39 = load i32, i32* %11, align 4
  %40 = sext i32 %39 to i64
  %41 = sub i64 %40, 4
  %42 = trunc i64 %41 to i32
  store i32 %42, i32* %11, align 4
  %43 = load i32, i32* %7, align 4
  %44 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %45 = call i32 @_cmsReadUInt32Number(i32 %43, %struct.TYPE_12__* %44, i32* %15)
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %48, label %47

47:                                               ; preds = %38
  store i8* null, i8** %6, align 8
  br label %202

48:                                               ; preds = %38
  %49 = load i32, i32* %11, align 4
  %50 = sext i32 %49 to i64
  %51 = sub i64 %50, 4
  %52 = trunc i64 %51 to i32
  store i32 %52, i32* %11, align 4
  %53 = load i32, i32* %15, align 4
  %54 = icmp ne i32 %53, 16
  br i1 %54, label %55, label %66

55:                                               ; preds = %48
  %56 = load i32, i32* %15, align 4
  %57 = icmp ne i32 %56, 24
  br i1 %57, label %58, label %66

58:                                               ; preds = %55
  %59 = load i32, i32* %15, align 4
  %60 = icmp ne i32 %59, 32
  br i1 %60, label %61, label %66

61:                                               ; preds = %58
  %62 = load i32, i32* %7, align 4
  %63 = load i32, i32* @cmsERROR_UNKNOWN_EXTENSION, align 4
  %64 = load i32, i32* %15, align 4
  %65 = call i32 (i32, i32, i8*, ...) @cmsSignalError(i32 %62, i32 %63, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %64)
  store i8* null, i8** %6, align 8
  br label %202

66:                                               ; preds = %58, %55, %48
  %67 = load i32, i32* %7, align 4
  %68 = call i32* @cmsDictAlloc(i32 %67)
  store i32* %68, i32** %12, align 8
  %69 = load i32*, i32** %12, align 8
  %70 = icmp eq i32* %69, null
  br i1 %70, label %71, label %72

71:                                               ; preds = %66
  store i8* null, i8** %6, align 8
  br label %202

72:                                               ; preds = %66
  %73 = load i32, i32* %7, align 4
  %74 = load i32, i32* %14, align 4
  %75 = load i32, i32* %15, align 4
  %76 = call i32 @AllocArray(i32 %73, %struct.TYPE_13__* %17, i32 %74, i32 %75)
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %79, label %78

78:                                               ; preds = %72
  br label %196

79:                                               ; preds = %72
  %80 = load i32, i32* %7, align 4
  %81 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %82 = load i32, i32* %14, align 4
  %83 = load i32, i32* %15, align 4
  %84 = load i32, i32* %16, align 4
  %85 = call i32 @ReadOffsetArray(i32 %80, %struct.TYPE_12__* %81, %struct.TYPE_13__* %17, i32 %82, i32 %83, i32 %84)
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %88, label %87

87:                                               ; preds = %79
  br label %196

88:                                               ; preds = %79
  store i32 0, i32* %13, align 4
  br label %89

89:                                               ; preds = %187, %88
  %90 = load i32, i32* %13, align 4
  %91 = load i32, i32* %14, align 4
  %92 = icmp slt i32 %90, %91
  br i1 %92, label %93, label %190

93:                                               ; preds = %89
  %94 = load i32, i32* %7, align 4
  %95 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %96 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %17, i32 0, i32 3
  %97 = load i32, i32* %13, align 4
  %98 = call i32 @ReadOneWChar(i32 %94, %struct.TYPE_12__* %95, i32* %96, i32 %97, i32** %18)
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %101, label %100

100:                                              ; preds = %93
  br label %196

101:                                              ; preds = %93
  %102 = load i32, i32* %7, align 4
  %103 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %104 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %17, i32 0, i32 2
  %105 = load i32, i32* %13, align 4
  %106 = call i32 @ReadOneWChar(i32 %102, %struct.TYPE_12__* %103, i32* %104, i32 %105, i32** %19)
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %109, label %108

108:                                              ; preds = %101
  br label %196

109:                                              ; preds = %101
  %110 = load i32, i32* %15, align 4
  %111 = icmp sgt i32 %110, 16
  br i1 %111, label %112, label %122

112:                                              ; preds = %109
  %113 = load i32, i32* %7, align 4
  %114 = load %struct._cms_typehandler_struct*, %struct._cms_typehandler_struct** %8, align 8
  %115 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %116 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %17, i32 0, i32 1
  %117 = load i32, i32* %13, align 4
  %118 = call i32 @ReadOneMLUC(i32 %113, %struct._cms_typehandler_struct* %114, %struct.TYPE_12__* %115, i32* %116, i32 %117, i32** %20)
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %121, label %120

120:                                              ; preds = %112
  br label %196

121:                                              ; preds = %112
  br label %122

122:                                              ; preds = %121, %109
  %123 = load i32, i32* %15, align 4
  %124 = icmp sgt i32 %123, 24
  br i1 %124, label %125, label %135

125:                                              ; preds = %122
  %126 = load i32, i32* %7, align 4
  %127 = load %struct._cms_typehandler_struct*, %struct._cms_typehandler_struct** %8, align 8
  %128 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %129 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %17, i32 0, i32 0
  %130 = load i32, i32* %13, align 4
  %131 = call i32 @ReadOneMLUC(i32 %126, %struct._cms_typehandler_struct* %127, %struct.TYPE_12__* %128, i32* %129, i32 %130, i32** %21)
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %134, label %133

133:                                              ; preds = %125
  br label %196

134:                                              ; preds = %125
  br label %135

135:                                              ; preds = %134, %122
  %136 = load i32*, i32** %18, align 8
  %137 = icmp eq i32* %136, null
  br i1 %137, label %141, label %138

138:                                              ; preds = %135
  %139 = load i32*, i32** %19, align 8
  %140 = icmp eq i32* %139, null
  br i1 %140, label %141, label %146

141:                                              ; preds = %138, %135
  %142 = load i32, i32* %7, align 4
  %143 = load i32, i32* @cmsERROR_CORRUPTION_DETECTED, align 4
  %144 = call i32 (i32, i32, i8*, ...) @cmsSignalError(i32 %142, i32 %143, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  %145 = load i32, i32* @FALSE, align 4
  store i32 %145, i32* %22, align 4
  br label %154

146:                                              ; preds = %138
  %147 = load i32, i32* %7, align 4
  %148 = load i32*, i32** %12, align 8
  %149 = load i32*, i32** %18, align 8
  %150 = load i32*, i32** %19, align 8
  %151 = load i32*, i32** %20, align 8
  %152 = load i32*, i32** %21, align 8
  %153 = call i32 @cmsDictAddEntry(i32 %147, i32* %148, i32* %149, i32* %150, i32* %151, i32* %152)
  store i32 %153, i32* %22, align 4
  br label %154

154:                                              ; preds = %146, %141
  %155 = load i32*, i32** %18, align 8
  %156 = icmp ne i32* %155, null
  br i1 %156, label %157, label %161

157:                                              ; preds = %154
  %158 = load i32, i32* %7, align 4
  %159 = load i32*, i32** %18, align 8
  %160 = call i32 @_cmsFree(i32 %158, i32* %159)
  br label %161

161:                                              ; preds = %157, %154
  %162 = load i32*, i32** %19, align 8
  %163 = icmp ne i32* %162, null
  br i1 %163, label %164, label %168

164:                                              ; preds = %161
  %165 = load i32, i32* %7, align 4
  %166 = load i32*, i32** %19, align 8
  %167 = call i32 @_cmsFree(i32 %165, i32* %166)
  br label %168

168:                                              ; preds = %164, %161
  %169 = load i32*, i32** %20, align 8
  %170 = icmp ne i32* %169, null
  br i1 %170, label %171, label %175

171:                                              ; preds = %168
  %172 = load i32, i32* %7, align 4
  %173 = load i32*, i32** %20, align 8
  %174 = call i32 @cmsMLUfree(i32 %172, i32* %173)
  br label %175

175:                                              ; preds = %171, %168
  %176 = load i32*, i32** %21, align 8
  %177 = icmp ne i32* %176, null
  br i1 %177, label %178, label %182

178:                                              ; preds = %175
  %179 = load i32, i32* %7, align 4
  %180 = load i32*, i32** %21, align 8
  %181 = call i32 @cmsMLUfree(i32 %179, i32* %180)
  br label %182

182:                                              ; preds = %178, %175
  %183 = load i32, i32* %22, align 4
  %184 = icmp ne i32 %183, 0
  br i1 %184, label %186, label %185

185:                                              ; preds = %182
  br label %196

186:                                              ; preds = %182
  br label %187

187:                                              ; preds = %186
  %188 = load i32, i32* %13, align 4
  %189 = add nsw i32 %188, 1
  store i32 %189, i32* %13, align 4
  br label %89

190:                                              ; preds = %89
  %191 = load i32, i32* %7, align 4
  %192 = call i32 @FreeArray(i32 %191, %struct.TYPE_13__* %17)
  %193 = load i32*, i32** %10, align 8
  store i32 1, i32* %193, align 4
  %194 = load i32*, i32** %12, align 8
  %195 = bitcast i32* %194 to i8*
  store i8* %195, i8** %6, align 8
  br label %202

196:                                              ; preds = %185, %133, %120, %108, %100, %87, %78
  %197 = load i32, i32* %7, align 4
  %198 = call i32 @FreeArray(i32 %197, %struct.TYPE_13__* %17)
  %199 = load i32, i32* %7, align 4
  %200 = load i32*, i32** %12, align 8
  %201 = call i32 @cmsDictFree(i32 %199, i32* %200)
  store i8* null, i8** %6, align 8
  br label %202

202:                                              ; preds = %196, %190, %71, %61, %47, %37
  %203 = load i8*, i8** %6, align 8
  ret i8* %203
}

declare dso_local i32 @_cmsReadUInt32Number(i32, %struct.TYPE_12__*, i32*) #1

declare dso_local i32 @cmsSignalError(i32, i32, i8*, ...) #1

declare dso_local i32* @cmsDictAlloc(i32) #1

declare dso_local i32 @AllocArray(i32, %struct.TYPE_13__*, i32, i32) #1

declare dso_local i32 @ReadOffsetArray(i32, %struct.TYPE_12__*, %struct.TYPE_13__*, i32, i32, i32) #1

declare dso_local i32 @ReadOneWChar(i32, %struct.TYPE_12__*, i32*, i32, i32**) #1

declare dso_local i32 @ReadOneMLUC(i32, %struct._cms_typehandler_struct*, %struct.TYPE_12__*, i32*, i32, i32**) #1

declare dso_local i32 @cmsDictAddEntry(i32, i32*, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @_cmsFree(i32, i32*) #1

declare dso_local i32 @cmsMLUfree(i32, i32*) #1

declare dso_local i32 @FreeArray(i32, %struct.TYPE_13__*) #1

declare dso_local i32 @cmsDictFree(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
