; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/lcms2/src/extr_cmstypes.c_Type_Text_Description_Read.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/lcms2/src/extr_cmstypes.c_Type_Text_Description_Read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._cms_typehandler_struct = type { i32 }
%struct.TYPE_9__ = type { i32 (i32, %struct.TYPE_9__*, i8*, i32, i32)* }

@cmsNoLanguage = common dso_local global i32 0, align 4
@cmsNoCountry = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i32, %struct._cms_typehandler_struct*, %struct.TYPE_9__*, i32*, i32)* @Type_Text_Description_Read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @Type_Text_Description_Read(i32 %0, %struct._cms_typehandler_struct* %1, %struct.TYPE_9__* %2, i32* %3, i32 %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct._cms_typehandler_struct*, align 8
  %9 = alloca %struct.TYPE_9__*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i8, align 1
  %19 = alloca i8, align 1
  %20 = alloca i32, align 4
  store i32 %0, i32* %7, align 4
  store %struct._cms_typehandler_struct* %1, %struct._cms_typehandler_struct** %8, align 8
  store %struct.TYPE_9__* %2, %struct.TYPE_9__** %9, align 8
  store i32* %3, i32** %10, align 8
  store i32 %4, i32* %11, align 4
  store i8* null, i8** %12, align 8
  store i8* null, i8** %13, align 8
  %21 = load %struct._cms_typehandler_struct*, %struct._cms_typehandler_struct** %8, align 8
  %22 = call i32 @cmsUNUSED_PARAMETER(%struct._cms_typehandler_struct* %21)
  %23 = load i32*, i32** %10, align 8
  store i32 0, i32* %23, align 4
  %24 = load i32, i32* %11, align 4
  %25 = sext i32 %24 to i64
  %26 = icmp ult i64 %25, 4
  br i1 %26, label %27, label %28

27:                                               ; preds = %5
  store i8* null, i8** %6, align 8
  br label %196

28:                                               ; preds = %5
  %29 = load i32, i32* %7, align 4
  %30 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %31 = call i32 @_cmsReadUInt32Number(i32 %29, %struct.TYPE_9__* %30, i32* %14)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %34, label %33

33:                                               ; preds = %28
  store i8* null, i8** %6, align 8
  br label %196

34:                                               ; preds = %28
  %35 = load i32, i32* %11, align 4
  %36 = sext i32 %35 to i64
  %37 = sub i64 %36, 4
  %38 = trunc i64 %37 to i32
  store i32 %38, i32* %11, align 4
  %39 = load i32, i32* %11, align 4
  %40 = load i32, i32* %14, align 4
  %41 = icmp slt i32 %39, %40
  br i1 %41, label %42, label %43

42:                                               ; preds = %34
  store i8* null, i8** %6, align 8
  br label %196

43:                                               ; preds = %34
  %44 = load i32, i32* %7, align 4
  %45 = call i8* @cmsMLUalloc(i32 %44, i32 1)
  store i8* %45, i8** %13, align 8
  %46 = load i8*, i8** %13, align 8
  %47 = icmp eq i8* %46, null
  br i1 %47, label %48, label %49

48:                                               ; preds = %43
  store i8* null, i8** %6, align 8
  br label %196

49:                                               ; preds = %43
  %50 = load i32, i32* %7, align 4
  %51 = load i32, i32* %14, align 4
  %52 = add nsw i32 %51, 1
  %53 = call i64 @_cmsMalloc(i32 %50, i32 %52)
  %54 = inttoptr i64 %53 to i8*
  store i8* %54, i8** %12, align 8
  %55 = load i8*, i8** %12, align 8
  %56 = icmp eq i8* %55, null
  br i1 %56, label %57, label %58

57:                                               ; preds = %49
  br label %181

58:                                               ; preds = %49
  %59 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %60 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %59, i32 0, i32 0
  %61 = load i32 (i32, %struct.TYPE_9__*, i8*, i32, i32)*, i32 (i32, %struct.TYPE_9__*, i8*, i32, i32)** %60, align 8
  %62 = load i32, i32* %7, align 4
  %63 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %64 = load i8*, i8** %12, align 8
  %65 = load i32, i32* %14, align 4
  %66 = call i32 %61(i32 %62, %struct.TYPE_9__* %63, i8* %64, i32 1, i32 %65)
  %67 = load i32, i32* %14, align 4
  %68 = icmp ne i32 %66, %67
  br i1 %68, label %69, label %70

69:                                               ; preds = %58
  br label %181

70:                                               ; preds = %58
  %71 = load i32, i32* %14, align 4
  %72 = load i32, i32* %11, align 4
  %73 = sub nsw i32 %72, %71
  store i32 %73, i32* %11, align 4
  %74 = load i8*, i8** %12, align 8
  %75 = load i32, i32* %14, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds i8, i8* %74, i64 %76
  store i8 0, i8* %77, align 1
  %78 = load i32, i32* %7, align 4
  %79 = load i8*, i8** %13, align 8
  %80 = load i32, i32* @cmsNoLanguage, align 4
  %81 = load i32, i32* @cmsNoCountry, align 4
  %82 = load i8*, i8** %12, align 8
  %83 = call i32 @cmsMLUsetASCII(i32 %78, i8* %79, i32 %80, i32 %81, i8* %82)
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %86, label %85

85:                                               ; preds = %70
  br label %181

86:                                               ; preds = %70
  %87 = load i32, i32* %7, align 4
  %88 = load i8*, i8** %12, align 8
  %89 = call i32 @_cmsFree(i32 %87, i8* %88)
  store i8* null, i8** %12, align 8
  %90 = load i32, i32* %11, align 4
  %91 = sext i32 %90 to i64
  %92 = icmp ult i64 %91, 8
  br i1 %92, label %93, label %94

93:                                               ; preds = %86
  br label %178

94:                                               ; preds = %86
  %95 = load i32, i32* %7, align 4
  %96 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %97 = call i32 @_cmsReadUInt32Number(i32 %95, %struct.TYPE_9__* %96, i32* %16)
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %100, label %99

99:                                               ; preds = %94
  br label %178

100:                                              ; preds = %94
  %101 = load i32, i32* %7, align 4
  %102 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %103 = call i32 @_cmsReadUInt32Number(i32 %101, %struct.TYPE_9__* %102, i32* %17)
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %106, label %105

105:                                              ; preds = %100
  br label %178

106:                                              ; preds = %100
  %107 = load i32, i32* %11, align 4
  %108 = sext i32 %107 to i64
  %109 = sub i64 %108, 8
  %110 = trunc i64 %109 to i32
  store i32 %110, i32* %11, align 4
  %111 = load i32, i32* %11, align 4
  %112 = sext i32 %111 to i64
  %113 = load i32, i32* %17, align 4
  %114 = sext i32 %113 to i64
  %115 = mul i64 %114, 1
  %116 = icmp ult i64 %112, %115
  br i1 %116, label %117, label %118

117:                                              ; preds = %106
  br label %178

118:                                              ; preds = %106
  store i32 0, i32* %15, align 4
  br label %119

119:                                              ; preds = %133, %118
  %120 = load i32, i32* %15, align 4
  %121 = load i32, i32* %17, align 4
  %122 = icmp slt i32 %120, %121
  br i1 %122, label %123, label %136

123:                                              ; preds = %119
  %124 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %125 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %124, i32 0, i32 0
  %126 = load i32 (i32, %struct.TYPE_9__*, i8*, i32, i32)*, i32 (i32, %struct.TYPE_9__*, i8*, i32, i32)** %125, align 8
  %127 = load i32, i32* %7, align 4
  %128 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %129 = call i32 %126(i32 %127, %struct.TYPE_9__* %128, i8* %19, i32 1, i32 1)
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %132, label %131

131:                                              ; preds = %123
  br label %178

132:                                              ; preds = %123
  br label %133

133:                                              ; preds = %132
  %134 = load i32, i32* %15, align 4
  %135 = add nsw i32 %134, 1
  store i32 %135, i32* %15, align 4
  br label %119

136:                                              ; preds = %119
  %137 = load i32, i32* %17, align 4
  %138 = sext i32 %137 to i64
  %139 = mul i64 %138, 1
  %140 = load i32, i32* %11, align 4
  %141 = sext i32 %140 to i64
  %142 = sub i64 %141, %139
  %143 = trunc i64 %142 to i32
  store i32 %143, i32* %11, align 4
  %144 = load i32, i32* %11, align 4
  %145 = sext i32 %144 to i64
  %146 = icmp uge i64 %145, 72
  br i1 %146, label %147, label %177

147:                                              ; preds = %136
  %148 = load i32, i32* %7, align 4
  %149 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %150 = call i32 @_cmsReadUInt16Number(i32 %148, %struct.TYPE_9__* %149, i8* %18)
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %153, label %152

152:                                              ; preds = %147
  br label %178

153:                                              ; preds = %147
  %154 = load i32, i32* %7, align 4
  %155 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %156 = call i32 @_cmsReadUInt8Number(i32 %154, %struct.TYPE_9__* %155, i32* %20)
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %159, label %158

158:                                              ; preds = %153
  br label %178

159:                                              ; preds = %153
  store i32 0, i32* %15, align 4
  br label %160

160:                                              ; preds = %173, %159
  %161 = load i32, i32* %15, align 4
  %162 = icmp slt i32 %161, 67
  br i1 %162, label %163, label %176

163:                                              ; preds = %160
  %164 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %165 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %164, i32 0, i32 0
  %166 = load i32 (i32, %struct.TYPE_9__*, i8*, i32, i32)*, i32 (i32, %struct.TYPE_9__*, i8*, i32, i32)** %165, align 8
  %167 = load i32, i32* %7, align 4
  %168 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %169 = call i32 %166(i32 %167, %struct.TYPE_9__* %168, i8* %19, i32 4, i32 1)
  %170 = icmp ne i32 %169, 0
  br i1 %170, label %172, label %171

171:                                              ; preds = %163
  br label %181

172:                                              ; preds = %163
  br label %173

173:                                              ; preds = %172
  %174 = load i32, i32* %15, align 4
  %175 = add nsw i32 %174, 1
  store i32 %175, i32* %15, align 4
  br label %160

176:                                              ; preds = %160
  br label %177

177:                                              ; preds = %176, %136
  br label %178

178:                                              ; preds = %177, %158, %152, %131, %117, %105, %99, %93
  %179 = load i32*, i32** %10, align 8
  store i32 1, i32* %179, align 4
  %180 = load i8*, i8** %13, align 8
  store i8* %180, i8** %6, align 8
  br label %196

181:                                              ; preds = %171, %85, %69, %57
  %182 = load i8*, i8** %12, align 8
  %183 = icmp ne i8* %182, null
  br i1 %183, label %184, label %188

184:                                              ; preds = %181
  %185 = load i32, i32* %7, align 4
  %186 = load i8*, i8** %12, align 8
  %187 = call i32 @_cmsFree(i32 %185, i8* %186)
  br label %188

188:                                              ; preds = %184, %181
  %189 = load i8*, i8** %13, align 8
  %190 = icmp ne i8* %189, null
  br i1 %190, label %191, label %195

191:                                              ; preds = %188
  %192 = load i32, i32* %7, align 4
  %193 = load i8*, i8** %13, align 8
  %194 = call i32 @cmsMLUfree(i32 %192, i8* %193)
  br label %195

195:                                              ; preds = %191, %188
  store i8* null, i8** %6, align 8
  br label %196

196:                                              ; preds = %195, %178, %48, %42, %33, %27
  %197 = load i8*, i8** %6, align 8
  ret i8* %197
}

declare dso_local i32 @cmsUNUSED_PARAMETER(%struct._cms_typehandler_struct*) #1

declare dso_local i32 @_cmsReadUInt32Number(i32, %struct.TYPE_9__*, i32*) #1

declare dso_local i8* @cmsMLUalloc(i32, i32) #1

declare dso_local i64 @_cmsMalloc(i32, i32) #1

declare dso_local i32 @cmsMLUsetASCII(i32, i8*, i32, i32, i8*) #1

declare dso_local i32 @_cmsFree(i32, i8*) #1

declare dso_local i32 @_cmsReadUInt16Number(i32, %struct.TYPE_9__*, i8*) #1

declare dso_local i32 @_cmsReadUInt8Number(i32, %struct.TYPE_9__*, i32*) #1

declare dso_local i32 @cmsMLUfree(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
