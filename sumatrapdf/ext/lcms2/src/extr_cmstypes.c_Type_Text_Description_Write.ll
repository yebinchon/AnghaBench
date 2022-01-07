; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/lcms2/src/extr_cmstypes.c_Type_Text_Description_Write.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/lcms2/src/extr_cmstypes.c_Type_Text_Description_Write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._cms_typehandler_struct = type { i32 }
%struct.TYPE_10__ = type { i32 (i32, %struct.TYPE_10__*, i32, i8*)* }

@FALSE = common dso_local global i32 0, align 4
@cmsNoLanguage = common dso_local global i32 0, align 4
@cmsNoCountry = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.1 = private unnamed_addr constant [1 x i32] zeroinitializer, align 4
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct._cms_typehandler_struct*, %struct.TYPE_10__*, i8*, i32)* @Type_Text_Description_Write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @Type_Text_Description_Write(i32 %0, %struct._cms_typehandler_struct* %1, %struct.TYPE_10__* %2, i8* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct._cms_typehandler_struct*, align 8
  %8 = alloca %struct.TYPE_10__*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca [68 x i8], align 16
  store i32 %0, i32* %6, align 4
  store %struct._cms_typehandler_struct* %1, %struct._cms_typehandler_struct** %7, align 8
  store %struct.TYPE_10__* %2, %struct.TYPE_10__** %8, align 8
  store i8* %3, i8** %9, align 8
  store i32 %4, i32* %10, align 4
  %20 = load i8*, i8** %9, align 8
  %21 = bitcast i8* %20 to i32*
  store i32* %21, i32** %11, align 8
  store i8* null, i8** %12, align 8
  store i8* null, i8** %13, align 8
  %22 = load i32, i32* @FALSE, align 4
  store i32 %22, i32* %18, align 4
  %23 = load %struct._cms_typehandler_struct*, %struct._cms_typehandler_struct** %7, align 8
  %24 = ptrtoint %struct._cms_typehandler_struct* %23 to i32
  %25 = call i32 @cmsUNUSED_PARAMETER(i32 %24)
  %26 = getelementptr inbounds [68 x i8], [68 x i8]* %19, i64 0, i64 0
  %27 = call i32 @memset(i8* %26, i32 0, i32 68)
  %28 = load i32, i32* %6, align 4
  %29 = load i32*, i32** %11, align 8
  %30 = load i32, i32* @cmsNoLanguage, align 4
  %31 = load i32, i32* @cmsNoCountry, align 4
  %32 = call i32 @cmsMLUgetASCII(i32 %28, i32* %29, i32 %30, i32 %31, i8* null, i32 0)
  store i32 %32, i32* %14, align 4
  %33 = load i32, i32* %14, align 4
  %34 = icmp sle i32 %33, 0
  br i1 %34, label %35, label %42

35:                                               ; preds = %5
  %36 = load i32, i32* %6, align 4
  %37 = call i64 @_cmsDupMem(i32 %36, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i32 1)
  %38 = inttoptr i64 %37 to i8*
  store i8* %38, i8** %12, align 8
  %39 = load i32, i32* %6, align 4
  %40 = call i64 @_cmsDupMem(i32 %39, i8* bitcast ([1 x i32]* @.str.1 to i8*), i32 1)
  %41 = inttoptr i64 %40 to i8*
  store i8* %41, i8** %13, align 8
  br label %79

42:                                               ; preds = %5
  %43 = load i32, i32* %6, align 4
  %44 = load i32, i32* %14, align 4
  %45 = call i64 @_cmsCalloc(i32 %43, i32 %44, i32 1)
  %46 = inttoptr i64 %45 to i8*
  store i8* %46, i8** %12, align 8
  %47 = load i8*, i8** %12, align 8
  %48 = icmp eq i8* %47, null
  br i1 %48, label %49, label %50

49:                                               ; preds = %42
  br label %177

50:                                               ; preds = %42
  %51 = load i32, i32* %6, align 4
  %52 = load i32, i32* %14, align 4
  %53 = call i64 @_cmsCalloc(i32 %51, i32 %52, i32 1)
  %54 = inttoptr i64 %53 to i8*
  store i8* %54, i8** %13, align 8
  %55 = load i8*, i8** %13, align 8
  %56 = icmp eq i8* %55, null
  br i1 %56, label %57, label %58

57:                                               ; preds = %50
  br label %177

58:                                               ; preds = %50
  %59 = load i32, i32* %6, align 4
  %60 = load i32*, i32** %11, align 8
  %61 = load i32, i32* @cmsNoLanguage, align 4
  %62 = load i32, i32* @cmsNoCountry, align 4
  %63 = load i8*, i8** %12, align 8
  %64 = load i32, i32* %14, align 4
  %65 = sext i32 %64 to i64
  %66 = mul i64 %65, 1
  %67 = trunc i64 %66 to i32
  %68 = call i32 @cmsMLUgetASCII(i32 %59, i32* %60, i32 %61, i32 %62, i8* %63, i32 %67)
  %69 = load i32, i32* %6, align 4
  %70 = load i32*, i32** %11, align 8
  %71 = load i32, i32* @cmsNoLanguage, align 4
  %72 = load i32, i32* @cmsNoCountry, align 4
  %73 = load i8*, i8** %13, align 8
  %74 = load i32, i32* %14, align 4
  %75 = sext i32 %74 to i64
  %76 = mul i64 %75, 1
  %77 = trunc i64 %76 to i32
  %78 = call i32 @cmsMLUgetWide(i32 %69, i32* %70, i32 %71, i32 %72, i8* %73, i32 %77)
  br label %79

79:                                               ; preds = %58, %35
  %80 = load i8*, i8** %12, align 8
  %81 = call i64 @strlen(i8* %80)
  %82 = trunc i64 %81 to i32
  %83 = add nsw i32 %82, 1
  store i32 %83, i32* %15, align 4
  %84 = load i32, i32* %15, align 4
  %85 = add nsw i32 12, %84
  %86 = add nsw i32 %85, 4
  %87 = add nsw i32 %86, 4
  %88 = load i32, i32* %15, align 4
  %89 = mul nsw i32 2, %88
  %90 = add nsw i32 %87, %89
  %91 = add nsw i32 %90, 2
  %92 = add nsw i32 %91, 1
  %93 = add nsw i32 %92, 67
  store i32 %93, i32* %16, align 4
  %94 = load i32, i32* %16, align 4
  %95 = call i32 @_cmsALIGNLONG(i32 %94)
  store i32 %95, i32* %17, align 4
  %96 = load i32, i32* %6, align 4
  %97 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %98 = load i32, i32* %15, align 4
  %99 = call i32 @_cmsWriteUInt32Number(i32 %96, %struct.TYPE_10__* %97, i32 %98)
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %102, label %101

101:                                              ; preds = %79
  br label %177

102:                                              ; preds = %79
  %103 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %104 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %103, i32 0, i32 0
  %105 = load i32 (i32, %struct.TYPE_10__*, i32, i8*)*, i32 (i32, %struct.TYPE_10__*, i32, i8*)** %104, align 8
  %106 = load i32, i32* %6, align 4
  %107 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %108 = load i32, i32* %15, align 4
  %109 = load i8*, i8** %12, align 8
  %110 = call i32 %105(i32 %106, %struct.TYPE_10__* %107, i32 %108, i8* %109)
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %113, label %112

112:                                              ; preds = %102
  br label %177

113:                                              ; preds = %102
  %114 = load i32, i32* %6, align 4
  %115 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %116 = call i32 @_cmsWriteUInt32Number(i32 %114, %struct.TYPE_10__* %115, i32 0)
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %119, label %118

118:                                              ; preds = %113
  br label %177

119:                                              ; preds = %113
  %120 = load i32, i32* %6, align 4
  %121 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %122 = load i32, i32* %15, align 4
  %123 = call i32 @_cmsWriteUInt32Number(i32 %120, %struct.TYPE_10__* %121, i32 %122)
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %126, label %125

125:                                              ; preds = %119
  br label %177

126:                                              ; preds = %119
  %127 = load i32, i32* %6, align 4
  %128 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %129 = load i32, i32* %15, align 4
  %130 = load i8*, i8** %13, align 8
  %131 = call i32 @_cmsWriteWCharArray(i32 %127, %struct.TYPE_10__* %128, i32 %129, i8* %130)
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %134, label %133

133:                                              ; preds = %126
  br label %177

134:                                              ; preds = %126
  %135 = load i32, i32* %6, align 4
  %136 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %137 = call i32 @_cmsWriteUInt16Number(i32 %135, %struct.TYPE_10__* %136, i32 0)
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %140, label %139

139:                                              ; preds = %134
  br label %177

140:                                              ; preds = %134
  %141 = load i32, i32* %6, align 4
  %142 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %143 = call i32 @_cmsWriteUInt8Number(i32 %141, %struct.TYPE_10__* %142, i32 0)
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %146, label %145

145:                                              ; preds = %140
  br label %177

146:                                              ; preds = %140
  %147 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %148 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %147, i32 0, i32 0
  %149 = load i32 (i32, %struct.TYPE_10__*, i32, i8*)*, i32 (i32, %struct.TYPE_10__*, i32, i8*)** %148, align 8
  %150 = load i32, i32* %6, align 4
  %151 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %152 = getelementptr inbounds [68 x i8], [68 x i8]* %19, i64 0, i64 0
  %153 = call i32 %149(i32 %150, %struct.TYPE_10__* %151, i32 67, i8* %152)
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %156, label %155

155:                                              ; preds = %146
  br label %177

156:                                              ; preds = %146
  %157 = load i32, i32* %17, align 4
  %158 = load i32, i32* %16, align 4
  %159 = sub nsw i32 %157, %158
  %160 = icmp sgt i32 %159, 0
  br i1 %160, label %161, label %175

161:                                              ; preds = %156
  %162 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %163 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %162, i32 0, i32 0
  %164 = load i32 (i32, %struct.TYPE_10__*, i32, i8*)*, i32 (i32, %struct.TYPE_10__*, i32, i8*)** %163, align 8
  %165 = load i32, i32* %6, align 4
  %166 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %167 = load i32, i32* %17, align 4
  %168 = load i32, i32* %16, align 4
  %169 = sub nsw i32 %167, %168
  %170 = getelementptr inbounds [68 x i8], [68 x i8]* %19, i64 0, i64 0
  %171 = call i32 %164(i32 %165, %struct.TYPE_10__* %166, i32 %169, i8* %170)
  %172 = icmp ne i32 %171, 0
  br i1 %172, label %174, label %173

173:                                              ; preds = %161
  br label %177

174:                                              ; preds = %161
  br label %175

175:                                              ; preds = %174, %156
  %176 = load i32, i32* @TRUE, align 4
  store i32 %176, i32* %18, align 4
  br label %177

177:                                              ; preds = %175, %173, %155, %145, %139, %133, %125, %118, %112, %101, %57, %49
  %178 = load i8*, i8** %12, align 8
  %179 = icmp ne i8* %178, null
  br i1 %179, label %180, label %184

180:                                              ; preds = %177
  %181 = load i32, i32* %6, align 4
  %182 = load i8*, i8** %12, align 8
  %183 = call i32 @_cmsFree(i32 %181, i8* %182)
  br label %184

184:                                              ; preds = %180, %177
  %185 = load i8*, i8** %13, align 8
  %186 = icmp ne i8* %185, null
  br i1 %186, label %187, label %191

187:                                              ; preds = %184
  %188 = load i32, i32* %6, align 4
  %189 = load i8*, i8** %13, align 8
  %190 = call i32 @_cmsFree(i32 %188, i8* %189)
  br label %191

191:                                              ; preds = %187, %184
  %192 = load i32, i32* %18, align 4
  ret i32 %192
}

declare dso_local i32 @cmsUNUSED_PARAMETER(i32) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i32 @cmsMLUgetASCII(i32, i32*, i32, i32, i8*, i32) #1

declare dso_local i64 @_cmsDupMem(i32, i8*, i32) #1

declare dso_local i64 @_cmsCalloc(i32, i32, i32) #1

declare dso_local i32 @cmsMLUgetWide(i32, i32*, i32, i32, i8*, i32) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @_cmsALIGNLONG(i32) #1

declare dso_local i32 @_cmsWriteUInt32Number(i32, %struct.TYPE_10__*, i32) #1

declare dso_local i32 @_cmsWriteWCharArray(i32, %struct.TYPE_10__*, i32, i8*) #1

declare dso_local i32 @_cmsWriteUInt16Number(i32, %struct.TYPE_10__*, i32) #1

declare dso_local i32 @_cmsWriteUInt8Number(i32, %struct.TYPE_10__*, i32) #1

declare dso_local i32 @_cmsFree(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
