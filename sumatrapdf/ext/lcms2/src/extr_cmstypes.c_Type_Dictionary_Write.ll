; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/lcms2/src/extr_cmstypes.c_Type_Dictionary_Write.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/lcms2/src/extr_cmstypes.c_Type_Dictionary_Write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._cms_typehandler_struct = type { i32 }
%struct.TYPE_20__ = type { i32 (i32, %struct.TYPE_20__*)*, i32 (i32, %struct.TYPE_20__*, i32)* }
%struct.TYPE_21__ = type { i32*, i32*, i32, i32 }
%struct.TYPE_22__ = type { i32, i32, i32, i32 }

@FALSE = common dso_local global i64 0, align 8
@TRUE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32, %struct._cms_typehandler_struct*, %struct.TYPE_20__*, i8*, i32)* @Type_Dictionary_Write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @Type_Dictionary_Write(i32 %0, %struct._cms_typehandler_struct* %1, %struct.TYPE_20__* %2, i8* %3, i32 %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct._cms_typehandler_struct*, align 8
  %9 = alloca %struct.TYPE_20__*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca %struct.TYPE_21__*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca %struct.TYPE_22__, align 4
  store i32 %0, i32* %7, align 4
  store %struct._cms_typehandler_struct* %1, %struct._cms_typehandler_struct** %8, align 8
  store %struct.TYPE_20__* %2, %struct.TYPE_20__** %9, align 8
  store i8* %3, i8** %10, align 8
  store i32 %4, i32* %11, align 4
  %23 = load i8*, i8** %10, align 8
  %24 = bitcast i8* %23 to i32*
  store i32* %24, i32** %12, align 8
  %25 = load i32*, i32** %12, align 8
  %26 = icmp eq i32* %25, null
  br i1 %26, label %27, label %29

27:                                               ; preds = %5
  %28 = load i64, i64* @FALSE, align 8
  store i64 %28, i64* %6, align 8
  br label %236

29:                                               ; preds = %5
  %30 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %31 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %30, i32 0, i32 0
  %32 = load i32 (i32, %struct.TYPE_20__*)*, i32 (i32, %struct.TYPE_20__*)** %31, align 8
  %33 = load i32, i32* %7, align 4
  %34 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %35 = call i32 %32(i32 %33, %struct.TYPE_20__* %34)
  %36 = sext i32 %35 to i64
  %37 = sub i64 %36, 4
  %38 = trunc i64 %37 to i32
  store i32 %38, i32* %21, align 4
  store i32 0, i32* %17, align 4
  %39 = load i64, i64* @FALSE, align 8
  store i64 %39, i64* %14, align 8
  %40 = load i64, i64* @FALSE, align 8
  store i64 %40, i64* %15, align 8
  %41 = load i32, i32* %7, align 4
  %42 = load i32*, i32** %12, align 8
  %43 = call %struct.TYPE_21__* @cmsDictGetEntryList(i32 %41, i32* %42)
  store %struct.TYPE_21__* %43, %struct.TYPE_21__** %13, align 8
  br label %44

44:                                               ; preds = %64, %29
  %45 = load %struct.TYPE_21__*, %struct.TYPE_21__** %13, align 8
  %46 = icmp ne %struct.TYPE_21__* %45, null
  br i1 %46, label %47, label %68

47:                                               ; preds = %44
  %48 = load %struct.TYPE_21__*, %struct.TYPE_21__** %13, align 8
  %49 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %48, i32 0, i32 1
  %50 = load i32*, i32** %49, align 8
  %51 = icmp ne i32* %50, null
  br i1 %51, label %52, label %54

52:                                               ; preds = %47
  %53 = load i64, i64* @TRUE, align 8
  store i64 %53, i64* %14, align 8
  br label %54

54:                                               ; preds = %52, %47
  %55 = load %struct.TYPE_21__*, %struct.TYPE_21__** %13, align 8
  %56 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %55, i32 0, i32 0
  %57 = load i32*, i32** %56, align 8
  %58 = icmp ne i32* %57, null
  br i1 %58, label %59, label %61

59:                                               ; preds = %54
  %60 = load i64, i64* @TRUE, align 8
  store i64 %60, i64* %15, align 8
  br label %61

61:                                               ; preds = %59, %54
  %62 = load i32, i32* %17, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %17, align 4
  br label %64

64:                                               ; preds = %61
  %65 = load i32, i32* %7, align 4
  %66 = load %struct.TYPE_21__*, %struct.TYPE_21__** %13, align 8
  %67 = call %struct.TYPE_21__* @cmsDictNextEntry(i32 %65, %struct.TYPE_21__* %66)
  store %struct.TYPE_21__* %67, %struct.TYPE_21__** %13, align 8
  br label %44

68:                                               ; preds = %44
  store i32 16, i32* %18, align 4
  %69 = load i64, i64* %14, align 8
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %74

71:                                               ; preds = %68
  %72 = load i32, i32* %18, align 4
  %73 = add nsw i32 %72, 8
  store i32 %73, i32* %18, align 4
  br label %74

74:                                               ; preds = %71, %68
  %75 = load i64, i64* %15, align 8
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %80

77:                                               ; preds = %74
  %78 = load i32, i32* %18, align 4
  %79 = add nsw i32 %78, 8
  store i32 %79, i32* %18, align 4
  br label %80

80:                                               ; preds = %77, %74
  %81 = load i32, i32* %7, align 4
  %82 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %83 = load i32, i32* %17, align 4
  %84 = call i32 @_cmsWriteUInt32Number(i32 %81, %struct.TYPE_20__* %82, i32 %83)
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %88, label %86

86:                                               ; preds = %80
  %87 = load i64, i64* @FALSE, align 8
  store i64 %87, i64* %6, align 8
  br label %236

88:                                               ; preds = %80
  %89 = load i32, i32* %7, align 4
  %90 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %91 = load i32, i32* %18, align 4
  %92 = call i32 @_cmsWriteUInt32Number(i32 %89, %struct.TYPE_20__* %90, i32 %91)
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %96, label %94

94:                                               ; preds = %88
  %95 = load i64, i64* @FALSE, align 8
  store i64 %95, i64* %6, align 8
  br label %236

96:                                               ; preds = %88
  %97 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %98 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %97, i32 0, i32 0
  %99 = load i32 (i32, %struct.TYPE_20__*)*, i32 (i32, %struct.TYPE_20__*)** %98, align 8
  %100 = load i32, i32* %7, align 4
  %101 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %102 = call i32 %99(i32 %100, %struct.TYPE_20__* %101)
  store i32 %102, i32* %19, align 4
  %103 = load i32, i32* %7, align 4
  %104 = load i32, i32* %17, align 4
  %105 = load i32, i32* %18, align 4
  %106 = call i32 @AllocArray(i32 %103, %struct.TYPE_22__* %22, i32 %104, i32 %105)
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %109, label %108

108:                                              ; preds = %96
  br label %232

109:                                              ; preds = %96
  %110 = load i32, i32* %7, align 4
  %111 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %112 = load i32, i32* %17, align 4
  %113 = load i32, i32* %18, align 4
  %114 = call i32 @WriteOffsetArray(i32 %110, %struct.TYPE_20__* %111, %struct.TYPE_22__* %22, i32 %112, i32 %113)
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %117, label %116

116:                                              ; preds = %109
  br label %232

117:                                              ; preds = %109
  %118 = load i32, i32* %7, align 4
  %119 = load i32*, i32** %12, align 8
  %120 = call %struct.TYPE_21__* @cmsDictGetEntryList(i32 %118, i32* %119)
  store %struct.TYPE_21__* %120, %struct.TYPE_21__** %13, align 8
  store i32 0, i32* %16, align 4
  br label %121

121:                                              ; preds = %191, %117
  %122 = load i32, i32* %16, align 4
  %123 = load i32, i32* %17, align 4
  %124 = icmp slt i32 %122, %123
  br i1 %124, label %125, label %194

125:                                              ; preds = %121
  %126 = load i32, i32* %7, align 4
  %127 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %128 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %22, i32 0, i32 3
  %129 = load i32, i32* %16, align 4
  %130 = load %struct.TYPE_21__*, %struct.TYPE_21__** %13, align 8
  %131 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %130, i32 0, i32 3
  %132 = load i32, i32* %131, align 4
  %133 = load i32, i32* %21, align 4
  %134 = call i32 @WriteOneWChar(i32 %126, %struct.TYPE_20__* %127, i32* %128, i32 %129, i32 %132, i32 %133)
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %137, label %136

136:                                              ; preds = %125
  br label %232

137:                                              ; preds = %125
  %138 = load i32, i32* %7, align 4
  %139 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %140 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %22, i32 0, i32 2
  %141 = load i32, i32* %16, align 4
  %142 = load %struct.TYPE_21__*, %struct.TYPE_21__** %13, align 8
  %143 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %142, i32 0, i32 2
  %144 = load i32, i32* %143, align 8
  %145 = load i32, i32* %21, align 4
  %146 = call i32 @WriteOneWChar(i32 %138, %struct.TYPE_20__* %139, i32* %140, i32 %141, i32 %144, i32 %145)
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %149, label %148

148:                                              ; preds = %137
  br label %232

149:                                              ; preds = %137
  %150 = load %struct.TYPE_21__*, %struct.TYPE_21__** %13, align 8
  %151 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %150, i32 0, i32 1
  %152 = load i32*, i32** %151, align 8
  %153 = icmp ne i32* %152, null
  br i1 %153, label %154, label %168

154:                                              ; preds = %149
  %155 = load i32, i32* %7, align 4
  %156 = load %struct._cms_typehandler_struct*, %struct._cms_typehandler_struct** %8, align 8
  %157 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %158 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %22, i32 0, i32 1
  %159 = load i32, i32* %16, align 4
  %160 = load %struct.TYPE_21__*, %struct.TYPE_21__** %13, align 8
  %161 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %160, i32 0, i32 1
  %162 = load i32*, i32** %161, align 8
  %163 = load i32, i32* %21, align 4
  %164 = call i32 @WriteOneMLUC(i32 %155, %struct._cms_typehandler_struct* %156, %struct.TYPE_20__* %157, i32* %158, i32 %159, i32* %162, i32 %163)
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %167, label %166

166:                                              ; preds = %154
  br label %232

167:                                              ; preds = %154
  br label %168

168:                                              ; preds = %167, %149
  %169 = load %struct.TYPE_21__*, %struct.TYPE_21__** %13, align 8
  %170 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %169, i32 0, i32 0
  %171 = load i32*, i32** %170, align 8
  %172 = icmp ne i32* %171, null
  br i1 %172, label %173, label %187

173:                                              ; preds = %168
  %174 = load i32, i32* %7, align 4
  %175 = load %struct._cms_typehandler_struct*, %struct._cms_typehandler_struct** %8, align 8
  %176 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %177 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %22, i32 0, i32 0
  %178 = load i32, i32* %16, align 4
  %179 = load %struct.TYPE_21__*, %struct.TYPE_21__** %13, align 8
  %180 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %179, i32 0, i32 0
  %181 = load i32*, i32** %180, align 8
  %182 = load i32, i32* %21, align 4
  %183 = call i32 @WriteOneMLUC(i32 %174, %struct._cms_typehandler_struct* %175, %struct.TYPE_20__* %176, i32* %177, i32 %178, i32* %181, i32 %182)
  %184 = icmp ne i32 %183, 0
  br i1 %184, label %186, label %185

185:                                              ; preds = %173
  br label %232

186:                                              ; preds = %173
  br label %187

187:                                              ; preds = %186, %168
  %188 = load i32, i32* %7, align 4
  %189 = load %struct.TYPE_21__*, %struct.TYPE_21__** %13, align 8
  %190 = call %struct.TYPE_21__* @cmsDictNextEntry(i32 %188, %struct.TYPE_21__* %189)
  store %struct.TYPE_21__* %190, %struct.TYPE_21__** %13, align 8
  br label %191

191:                                              ; preds = %187
  %192 = load i32, i32* %16, align 4
  %193 = add nsw i32 %192, 1
  store i32 %193, i32* %16, align 4
  br label %121

194:                                              ; preds = %121
  %195 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %196 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %195, i32 0, i32 0
  %197 = load i32 (i32, %struct.TYPE_20__*)*, i32 (i32, %struct.TYPE_20__*)** %196, align 8
  %198 = load i32, i32* %7, align 4
  %199 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %200 = call i32 %197(i32 %198, %struct.TYPE_20__* %199)
  store i32 %200, i32* %20, align 4
  %201 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %202 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %201, i32 0, i32 1
  %203 = load i32 (i32, %struct.TYPE_20__*, i32)*, i32 (i32, %struct.TYPE_20__*, i32)** %202, align 8
  %204 = load i32, i32* %7, align 4
  %205 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %206 = load i32, i32* %19, align 4
  %207 = call i32 %203(i32 %204, %struct.TYPE_20__* %205, i32 %206)
  %208 = icmp ne i32 %207, 0
  br i1 %208, label %210, label %209

209:                                              ; preds = %194
  br label %232

210:                                              ; preds = %194
  %211 = load i32, i32* %7, align 4
  %212 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %213 = load i32, i32* %17, align 4
  %214 = load i32, i32* %18, align 4
  %215 = call i32 @WriteOffsetArray(i32 %211, %struct.TYPE_20__* %212, %struct.TYPE_22__* %22, i32 %213, i32 %214)
  %216 = icmp ne i32 %215, 0
  br i1 %216, label %218, label %217

217:                                              ; preds = %210
  br label %232

218:                                              ; preds = %210
  %219 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %220 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %219, i32 0, i32 1
  %221 = load i32 (i32, %struct.TYPE_20__*, i32)*, i32 (i32, %struct.TYPE_20__*, i32)** %220, align 8
  %222 = load i32, i32* %7, align 4
  %223 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %224 = load i32, i32* %20, align 4
  %225 = call i32 %221(i32 %222, %struct.TYPE_20__* %223, i32 %224)
  %226 = icmp ne i32 %225, 0
  br i1 %226, label %228, label %227

227:                                              ; preds = %218
  br label %232

228:                                              ; preds = %218
  %229 = load i32, i32* %7, align 4
  %230 = call i32 @FreeArray(i32 %229, %struct.TYPE_22__* %22)
  %231 = load i64, i64* @TRUE, align 8
  store i64 %231, i64* %6, align 8
  br label %236

232:                                              ; preds = %227, %217, %209, %185, %166, %148, %136, %116, %108
  %233 = load i32, i32* %7, align 4
  %234 = call i32 @FreeArray(i32 %233, %struct.TYPE_22__* %22)
  %235 = load i64, i64* @FALSE, align 8
  store i64 %235, i64* %6, align 8
  br label %236

236:                                              ; preds = %232, %228, %94, %86, %27
  %237 = load i64, i64* %6, align 8
  ret i64 %237
}

declare dso_local %struct.TYPE_21__* @cmsDictGetEntryList(i32, i32*) #1

declare dso_local %struct.TYPE_21__* @cmsDictNextEntry(i32, %struct.TYPE_21__*) #1

declare dso_local i32 @_cmsWriteUInt32Number(i32, %struct.TYPE_20__*, i32) #1

declare dso_local i32 @AllocArray(i32, %struct.TYPE_22__*, i32, i32) #1

declare dso_local i32 @WriteOffsetArray(i32, %struct.TYPE_20__*, %struct.TYPE_22__*, i32, i32) #1

declare dso_local i32 @WriteOneWChar(i32, %struct.TYPE_20__*, i32*, i32, i32, i32) #1

declare dso_local i32 @WriteOneMLUC(i32, %struct._cms_typehandler_struct*, %struct.TYPE_20__*, i32*, i32, i32*, i32) #1

declare dso_local i32 @FreeArray(i32, %struct.TYPE_22__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
