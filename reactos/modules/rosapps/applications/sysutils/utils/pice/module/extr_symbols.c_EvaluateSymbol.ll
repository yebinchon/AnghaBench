; ModuleID = '/home/carl/AnghaBench/reactos/modules/rosapps/applications/sysutils/utils/pice/module/extr_symbols.c_EvaluateSymbol.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rosapps/applications/sysutils/utils/pice/module/extr_symbols.c_EvaluateSymbol.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i64, i8*, i32, i8*, i8*, i32, i32, i32, i32, i32, i32, i32 }

@FALSE = common dso_local global i32 0, align 4
@EvaluateSymbol.type_def = internal global [2048 x i8] zeroinitializer, align 16
@.str = private unnamed_addr constant [20 x i8] c"EvaluateSymbol(%s)\0A\00", align 1
@.str.1 = private unnamed_addr constant [51 x i8] c"EvaluateSymbol(%s) pvr->value = %x pvr->type = %x\0A\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"%s %s\0A\00", align 1
@.str.3 = private unnamed_addr constant [30 x i8] c"%x is a type reference to %x\0A\00", align 1
@.str.4 = private unnamed_addr constant [23 x i8] c"%x is sub range of %x\0A\00", align 1
@.str.5 = private unnamed_addr constant [24 x i8] c"%x is a self reference\0A\00", align 1
@.str.6 = private unnamed_addr constant [23 x i8] c"bounds %x-%x range %x\0A\00", align 1
@.str.7 = private unnamed_addr constant [17 x i8] c"# of bytes = %x\0A\00", align 1
@TRUE = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [10 x i8] c"%x array\0A\00", align 1
@.str.9 = private unnamed_addr constant [14 x i8] c"%x is ptr to\0A\00", align 1
@.str.10 = private unnamed_addr constant [21 x i8] c"%x struct size = %x\0A\00", align 1
@ulNumStructMembers = common dso_local global i64 0, align 8
@vrStructMembers = common dso_local global %struct.TYPE_8__* null, align 8
@.str.11 = private unnamed_addr constant [30 x i8] c"EvaluateSymbol(): member #%u\0A\00", align 1
@.str.12 = private unnamed_addr constant [32 x i8] c"EvaluateSymbol(): no type name\0A\00", align 1
@.str.13 = private unnamed_addr constant [40 x i8] c"EvaluateSymbol(): vr[i].type_name = %s\0A\00", align 1
@.str.14 = private unnamed_addr constant [35 x i8] c"EvaluateSymbol(): vr[i].name = %s\0A\00", align 1
@.str.15 = private unnamed_addr constant [40 x i8] c"EvaluateSymbol(): vr[i].address = %.8X\0A\00", align 1
@.str.16 = private unnamed_addr constant [38 x i8] c"EvaluateSymbol(): vr[i].value = %.8X\0A\00", align 1
@.str.17 = private unnamed_addr constant [37 x i8] c"EvaluateSymbol(): vr[i].size = %.8X\0A\00", align 1
@.str.18 = private unnamed_addr constant [37 x i8] c"EvaluateSymbol(): vr[i].type = %.8X\0A\00", align 1
@.str.19 = private unnamed_addr constant [37 x i8] c"EvaluateSymbol(): vr.type_name = %s\0A\00", align 1
@.str.20 = private unnamed_addr constant [32 x i8] c"EvaluateSymbol(): vr.name = %s\0A\00", align 1
@.str.21 = private unnamed_addr constant [37 x i8] c"EvaluateSymbol(): vr.address = %.8X\0A\00", align 1
@.str.22 = private unnamed_addr constant [35 x i8] c"EvaluateSymbol(): vr.value = %.8X\0A\00", align 1
@.str.23 = private unnamed_addr constant [34 x i8] c"EvaluateSymbol(): vr.size = %.8X\0A\00", align 1
@.str.24 = private unnamed_addr constant [34 x i8] c"EvaluateSymbol(): vr.type = %.8X\0A\00", align 1
@.str.25 = private unnamed_addr constant [33 x i8] c"EvaluateSymbol(): ptr is now %s\0A\00", align 1
@.str.26 = private unnamed_addr constant [10 x i8] c"%x union\0A\00", align 1
@.str.27 = private unnamed_addr constant [9 x i8] c"%x enum\0A\00", align 1
@.str.28 = private unnamed_addr constant [22 x i8] c"DEFAULT %x, base: %c\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @EvaluateSymbol(%struct.TYPE_8__* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_8__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i64, align 8
  %19 = alloca %struct.TYPE_8__*, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %4, align 8
  store i32* %1, i32** %5, align 8
  %20 = load i32, i32* @FALSE, align 4
  store i32 %20, i32* %11, align 4
  %21 = load i32*, i32** %5, align 8
  %22 = ptrtoint i32* %21 to i32
  %23 = call i32 @DPRINT(i32 %22)
  %24 = load i32*, i32** %5, align 8
  %25 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %26 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %25, i32 0, i32 3
  %27 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %28 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %27, i32 0, i32 0
  %29 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %30 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %29, i32 0, i32 10
  %31 = call i64 @FindGlobalStabSymbol(i32* %24, i8** %26, i64* %28, i32* %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %521

33:                                               ; preds = %2
  %34 = load i32*, i32** %5, align 8
  %35 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %36 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %35, i32 0, i32 3
  %37 = load i8*, i8** %36, align 8
  %38 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %39 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = trunc i64 %40 to i32
  %42 = call i32 @DPRINT(i32 %41)
  br label %43

43:                                               ; preds = %518, %33
  %44 = load i32, i32* %11, align 4
  %45 = icmp ne i32 %44, 0
  %46 = xor i1 %45, true
  br i1 %46, label %47, label %519

47:                                               ; preds = %43
  %48 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %49 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %48, i32 0, i32 11
  %50 = load i32, i32* %49, align 8
  %51 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %52 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %55 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %54, i32 0, i32 10
  %56 = load i32, i32* %55, align 4
  %57 = call i32* @FindTypeDefinition(i32 %50, i64 %53, i32 %56)
  store i32* %57, i32** %6, align 8
  %58 = icmp ne i32* %57, null
  br i1 %58, label %60, label %59

59:                                               ; preds = %47
  br label %519

60:                                               ; preds = %47
  %61 = load i32*, i32** %6, align 8
  %62 = call i32 @PICE_strcpy(i8* getelementptr inbounds ([2048 x i8], [2048 x i8]* @EvaluateSymbol.type_def, i64 0, i64 0), i32* %61)
  store i32* bitcast ([2048 x i8]* @EvaluateSymbol.type_def to i32*), i32** %6, align 8
  %63 = load i32*, i32** %6, align 8
  %64 = call i32* @ExtractTypeName(i32* %63)
  store i32* %64, i32** %7, align 8
  %65 = load i32*, i32** %7, align 8
  %66 = load i32*, i32** %5, align 8
  %67 = ptrtoint i32* %66 to i32
  %68 = call i32 @DPRINT(i32 %67)
  %69 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %70 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %69, i32 0, i32 1
  %71 = load i8*, i8** %70, align 8
  %72 = load i32*, i32** %7, align 8
  %73 = call i32 @PICE_strcpy(i8* %71, i32* %72)
  %74 = load i32*, i32** %6, align 8
  %75 = call i32* @PICE_strchr(i32* %74, i8 signext 61)
  store i32* %75, i32** %8, align 8
  %76 = load i32*, i32** %8, align 8
  %77 = icmp ne i32* %76, null
  br i1 %77, label %80, label %78

78:                                               ; preds = %60
  %79 = load i32, i32* @FALSE, align 4
  store i32 %79, i32* %3, align 4
  br label %523

80:                                               ; preds = %60
  %81 = load i32*, i32** %8, align 8
  %82 = getelementptr inbounds i32, i32* %81, i32 1
  store i32* %82, i32** %8, align 8
  %83 = load i32*, i32** %8, align 8
  %84 = load i32, i32* %83, align 4
  switch i32 %84, label %471 [
    i32 40, label %85
    i32 114, label %97
    i32 97, label %202
    i32 42, label %219
    i32 115, label %226
    i32 117, label %457
    i32 101, label %464
  ]

85:                                               ; preds = %80
  %86 = load i32*, i32** %8, align 8
  %87 = call i64 @ExtractTypeNumber(i32* %86)
  store i64 %87, i64* %12, align 8
  %88 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %89 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %88, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = load i64, i64* %12, align 8
  %92 = trunc i64 %91 to i32
  %93 = call i32 @DPRINT(i32 %92)
  %94 = load i64, i64* %12, align 8
  %95 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %96 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %95, i32 0, i32 0
  store i64 %94, i64* %96, align 8
  br label %518

97:                                               ; preds = %80
  %98 = load i32*, i32** %8, align 8
  %99 = getelementptr inbounds i32, i32* %98, i32 1
  store i32* %99, i32** %8, align 8
  %100 = load i32*, i32** %8, align 8
  %101 = call i64 @ExtractTypeNumber(i32* %100)
  store i64 %101, i64* %12, align 8
  %102 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %103 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %102, i32 0, i32 0
  %104 = load i64, i64* %103, align 8
  %105 = load i64, i64* %12, align 8
  %106 = trunc i64 %105 to i32
  %107 = call i32 @DPRINT(i32 %106)
  %108 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %109 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %108, i32 0, i32 0
  %110 = load i64, i64* %109, align 8
  %111 = load i64, i64* %12, align 8
  %112 = icmp eq i64 %110, %111
  br i1 %112, label %113, label %197

113:                                              ; preds = %97
  %114 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %115 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %114, i32 0, i32 0
  %116 = load i64, i64* %115, align 8
  %117 = trunc i64 %116 to i32
  %118 = call i32 @DPRINT(i32 %117)
  %119 = load i32*, i32** %8, align 8
  %120 = call i32* @PICE_strchr(i32* %119, i8 signext 59)
  store i32* %120, i32** %9, align 8
  %121 = load i32*, i32** %9, align 8
  %122 = getelementptr inbounds i32, i32* %121, i32 1
  store i32* %122, i32** %9, align 8
  %123 = load i32*, i32** %9, align 8
  %124 = call i32 @ExtractNumber(i32* %123)
  store i32 %124, i32* %15, align 4
  %125 = load i32*, i32** %9, align 8
  %126 = call i32* @PICE_strchr(i32* %125, i8 signext 59)
  store i32* %126, i32** %9, align 8
  %127 = load i32*, i32** %9, align 8
  %128 = getelementptr inbounds i32, i32* %127, i32 1
  store i32* %128, i32** %9, align 8
  %129 = load i32*, i32** %9, align 8
  %130 = call i32 @ExtractNumber(i32* %129)
  store i32 %130, i32* %16, align 4
  %131 = load i32, i32* %16, align 4
  %132 = load i32, i32* %15, align 4
  %133 = sub nsw i32 %131, %132
  store i32 %133, i32* %17, align 4
  %134 = load i32, i32* %15, align 4
  %135 = load i32, i32* %16, align 4
  %136 = load i32, i32* %17, align 4
  %137 = call i32 @DPRINT(i32 %136)
  store i64 0, i64* %13, align 8
  br label %138

138:                                              ; preds = %143, %113
  %139 = load i64, i64* %13, align 8
  %140 = add i64 %139, 1
  store i64 %140, i64* %13, align 8
  %141 = load i32, i32* %17, align 4
  %142 = sdiv i32 %141, 2
  store i32 %142, i32* %17, align 4
  br label %143

143:                                              ; preds = %138
  %144 = load i32, i32* %17, align 4
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %138, label %146

146:                                              ; preds = %143
  %147 = load i64, i64* %13, align 8
  %148 = add i64 %147, 1
  %149 = udiv i64 %148, 8
  store i64 %149, i64* %14, align 8
  %150 = load i64, i64* %14, align 8
  %151 = icmp ne i64 %150, 0
  br i1 %151, label %153, label %152

152:                                              ; preds = %146
  store i64 4, i64* %14, align 8
  br label %153

153:                                              ; preds = %152, %146
  %154 = load i64, i64* %14, align 8
  %155 = trunc i64 %154 to i32
  %156 = call i32 @DPRINT(i32 %155)
  %157 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %158 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %157, i32 0, i32 3
  %159 = load i8*, i8** %158, align 8
  %160 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %161 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %160, i32 0, i32 4
  store i8* %159, i8** %161, align 8
  %162 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %163 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %162, i32 0, i32 3
  %164 = load i8*, i8** %163, align 8
  %165 = load i64, i64* %14, align 8
  %166 = call i32 @IsRangeValid(i8* %164, i64 %165)
  %167 = icmp ne i32 %166, 0
  br i1 %167, label %168, label %195

168:                                              ; preds = %153
  %169 = load i64, i64* %14, align 8
  switch i64 %169, label %194 [
    i64 1, label %170
    i64 2, label %178
    i64 4, label %186
  ]

170:                                              ; preds = %168
  %171 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %172 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %171, i32 0, i32 3
  %173 = load i8*, i8** %172, align 8
  %174 = bitcast i8* %173 to i8**
  %175 = load i8*, i8** %174, align 8
  %176 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %177 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %176, i32 0, i32 3
  store i8* %175, i8** %177, align 8
  br label %194

178:                                              ; preds = %168
  %179 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %180 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %179, i32 0, i32 3
  %181 = load i8*, i8** %180, align 8
  %182 = bitcast i8* %181 to i8**
  %183 = load i8*, i8** %182, align 8
  %184 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %185 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %184, i32 0, i32 3
  store i8* %183, i8** %185, align 8
  br label %194

186:                                              ; preds = %168
  %187 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %188 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %187, i32 0, i32 3
  %189 = load i8*, i8** %188, align 8
  %190 = bitcast i8* %189 to i8**
  %191 = load i8*, i8** %190, align 8
  %192 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %193 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %192, i32 0, i32 3
  store i8* %191, i8** %193, align 8
  br label %194

194:                                              ; preds = %168, %186, %178, %170
  br label %195

195:                                              ; preds = %194, %153
  %196 = load i32, i32* @TRUE, align 4
  store i32 %196, i32* %11, align 4
  br label %201

197:                                              ; preds = %97
  %198 = load i64, i64* %12, align 8
  %199 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %200 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %199, i32 0, i32 0
  store i64 %198, i64* %200, align 8
  br label %201

201:                                              ; preds = %197, %195
  br label %518

202:                                              ; preds = %80
  %203 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %204 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %203, i32 0, i32 0
  %205 = load i64, i64* %204, align 8
  %206 = trunc i64 %205 to i32
  %207 = call i32 @DPRINT(i32 %206)
  %208 = load i32*, i32** %8, align 8
  %209 = getelementptr inbounds i32, i32* %208, i32 1
  store i32* %209, i32** %8, align 8
  %210 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %211 = load i32*, i32** %8, align 8
  %212 = call i32 @ExtractArray(%struct.TYPE_8__* %210, i32* %211)
  %213 = icmp ne i32 %212, 0
  br i1 %213, label %218, label %214

214:                                              ; preds = %202
  %215 = load i32, i32* @TRUE, align 4
  store i32 %215, i32* %11, align 4
  %216 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %217 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %216, i32 0, i32 2
  store i32 1, i32* %217, align 8
  br label %218

218:                                              ; preds = %214, %202
  br label %518

219:                                              ; preds = %80
  %220 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %221 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %220, i32 0, i32 0
  %222 = load i64, i64* %221, align 8
  %223 = trunc i64 %222 to i32
  %224 = call i32 @DPRINT(i32 %223)
  %225 = load i32, i32* @TRUE, align 4
  store i32 %225, i32* %11, align 4
  br label %518

226:                                              ; preds = %80
  %227 = load i32*, i32** %8, align 8
  %228 = getelementptr inbounds i32, i32* %227, i32 1
  store i32* %228, i32** %8, align 8
  %229 = load i32*, i32** %8, align 8
  %230 = call i32 @ExtractNumber(i32* %229)
  store i32 %230, i32* %15, align 4
  %231 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %232 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %231, i32 0, i32 0
  %233 = load i64, i64* %232, align 8
  %234 = load i32, i32* %15, align 4
  %235 = call i32 @DPRINT(i32 %234)
  br label %236

236:                                              ; preds = %241, %226
  %237 = load i32*, i32** %8, align 8
  %238 = load i32, i32* %237, align 4
  %239 = call i32 @PICE_isdigit(i32 %238)
  %240 = icmp ne i32 %239, 0
  br i1 %240, label %241, label %244

241:                                              ; preds = %236
  %242 = load i32*, i32** %8, align 8
  %243 = getelementptr inbounds i32, i32* %242, i32 1
  store i32* %243, i32** %8, align 8
  br label %236

244:                                              ; preds = %236
  %245 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %246 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %245, i32 0, i32 3
  %247 = load i8*, i8** %246, align 8
  %248 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %249 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %248, i32 0, i32 4
  store i8* %247, i8** %249, align 8
  %250 = load i32, i32* @TRUE, align 4
  %251 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %252 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %251, i32 0, i32 7
  store i32 %250, i32* %252, align 8
  %253 = load i32*, i32** %8, align 8
  store i32* %253, i32** %10, align 8
  br label %254

254:                                              ; preds = %454, %244
  %255 = load i32*, i32** %10, align 8
  %256 = icmp ne i32* %255, null
  br i1 %256, label %257, label %270

257:                                              ; preds = %254
  %258 = load i32*, i32** %10, align 8
  %259 = load i32, i32* %258, align 4
  %260 = icmp ne i32 %259, 0
  br i1 %260, label %261, label %270

261:                                              ; preds = %257
  %262 = load i32*, i32** %10, align 8
  %263 = load i32, i32* %262, align 4
  %264 = icmp ne i32 %263, 59
  br i1 %264, label %265, label %270

265:                                              ; preds = %261
  %266 = load i64, i64* @ulNumStructMembers, align 8
  %267 = load %struct.TYPE_8__*, %struct.TYPE_8__** @vrStructMembers, align 8
  %268 = call i64 @DIM(%struct.TYPE_8__* %267)
  %269 = icmp ult i64 %266, %268
  br label %270

270:                                              ; preds = %265, %261, %257, %254
  %271 = phi i1 [ false, %261 ], [ false, %257 ], [ false, %254 ], [ %269, %265 ]
  br i1 %271, label %272, label %455

272:                                              ; preds = %270
  %273 = load i64, i64* @ulNumStructMembers, align 8
  %274 = trunc i64 %273 to i32
  %275 = call i32 @DPRINT(i32 %274)
  %276 = load %struct.TYPE_8__*, %struct.TYPE_8__** @vrStructMembers, align 8
  %277 = load i64, i64* @ulNumStructMembers, align 8
  %278 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %276, i64 %277
  %279 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %280 = load i32*, i32** %10, align 8
  %281 = call %struct.TYPE_8__* @ExtractStructMembers(%struct.TYPE_8__* %279, i32* %280)
  %282 = bitcast %struct.TYPE_8__* %278 to i8*
  %283 = bitcast %struct.TYPE_8__* %281 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %282, i8* align 8 %283, i64 72, i1 false)
  %284 = load %struct.TYPE_8__*, %struct.TYPE_8__** @vrStructMembers, align 8
  %285 = load i64, i64* @ulNumStructMembers, align 8
  %286 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %284, i64 %285
  %287 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %286, i32 0, i32 1
  %288 = load i8*, i8** %287, align 8
  %289 = call i32 @PICE_strlen(i8* %288)
  %290 = icmp ne i32 %289, 0
  br i1 %290, label %387, label %291

291:                                              ; preds = %272
  %292 = load %struct.TYPE_8__*, %struct.TYPE_8__** @vrStructMembers, align 8
  %293 = load i64, i64* @ulNumStructMembers, align 8
  %294 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %292, i64 %293
  store %struct.TYPE_8__* %294, %struct.TYPE_8__** %19, align 8
  %295 = call i32 @DPRINT(i32 ptrtoint ([32 x i8]* @.str.12 to i32))
  store i64 0, i64* %18, align 8
  br label %296

296:                                              ; preds = %383, %291
  %297 = load i64, i64* %18, align 8
  %298 = load i64, i64* @ulNumStructMembers, align 8
  %299 = icmp ult i64 %297, %298
  br i1 %299, label %300, label %386

300:                                              ; preds = %296
  %301 = load %struct.TYPE_8__*, %struct.TYPE_8__** @vrStructMembers, align 8
  %302 = load i64, i64* %18, align 8
  %303 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %301, i64 %302
  %304 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %303, i32 0, i32 1
  %305 = load i8*, i8** %304, align 8
  %306 = ptrtoint i8* %305 to i32
  %307 = call i32 @DPRINT(i32 %306)
  %308 = load %struct.TYPE_8__*, %struct.TYPE_8__** @vrStructMembers, align 8
  %309 = load i64, i64* %18, align 8
  %310 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %308, i64 %309
  %311 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %310, i32 0, i32 6
  %312 = load i32, i32* %311, align 4
  %313 = call i32 @DPRINT(i32 %312)
  %314 = load %struct.TYPE_8__*, %struct.TYPE_8__** @vrStructMembers, align 8
  %315 = load i64, i64* %18, align 8
  %316 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %314, i64 %315
  %317 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %316, i32 0, i32 4
  %318 = load i8*, i8** %317, align 8
  %319 = ptrtoint i8* %318 to i32
  %320 = call i32 @DPRINT(i32 %319)
  %321 = load %struct.TYPE_8__*, %struct.TYPE_8__** @vrStructMembers, align 8
  %322 = load i64, i64* %18, align 8
  %323 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %321, i64 %322
  %324 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %323, i32 0, i32 3
  %325 = load i8*, i8** %324, align 8
  %326 = ptrtoint i8* %325 to i32
  %327 = call i32 @DPRINT(i32 %326)
  %328 = load %struct.TYPE_8__*, %struct.TYPE_8__** @vrStructMembers, align 8
  %329 = load i64, i64* %18, align 8
  %330 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %328, i64 %329
  %331 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %330, i32 0, i32 5
  %332 = load i32, i32* %331, align 8
  %333 = call i32 @DPRINT(i32 %332)
  %334 = load %struct.TYPE_8__*, %struct.TYPE_8__** @vrStructMembers, align 8
  %335 = load i64, i64* %18, align 8
  %336 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %334, i64 %335
  %337 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %336, i32 0, i32 0
  %338 = load i64, i64* %337, align 8
  %339 = trunc i64 %338 to i32
  %340 = call i32 @DPRINT(i32 %339)
  %341 = load %struct.TYPE_8__*, %struct.TYPE_8__** %19, align 8
  %342 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %341, i32 0, i32 0
  %343 = load i64, i64* %342, align 8
  %344 = load %struct.TYPE_8__*, %struct.TYPE_8__** @vrStructMembers, align 8
  %345 = load i64, i64* %18, align 8
  %346 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %344, i64 %345
  %347 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %346, i32 0, i32 0
  %348 = load i64, i64* %347, align 8
  %349 = icmp eq i64 %343, %348
  br i1 %349, label %350, label %382

350:                                              ; preds = %300
  %351 = load %struct.TYPE_8__*, %struct.TYPE_8__** %19, align 8
  %352 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %351, i32 0, i32 1
  %353 = load i8*, i8** %352, align 8
  %354 = load %struct.TYPE_8__*, %struct.TYPE_8__** @vrStructMembers, align 8
  %355 = load i64, i64* %18, align 8
  %356 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %354, i64 %355
  %357 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %356, i32 0, i32 1
  %358 = load i8*, i8** %357, align 8
  %359 = bitcast i8* %358 to i32*
  %360 = call i32 @PICE_strcpy(i8* %353, i32* %359)
  %361 = load %struct.TYPE_8__*, %struct.TYPE_8__** @vrStructMembers, align 8
  %362 = load i64, i64* %18, align 8
  %363 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %361, i64 %362
  %364 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %363, i32 0, i32 9
  %365 = load i32, i32* %364, align 8
  %366 = load %struct.TYPE_8__*, %struct.TYPE_8__** %19, align 8
  %367 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %366, i32 0, i32 9
  store i32 %365, i32* %367, align 8
  %368 = load %struct.TYPE_8__*, %struct.TYPE_8__** @vrStructMembers, align 8
  %369 = load i64, i64* %18, align 8
  %370 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %368, i64 %369
  %371 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %370, i32 0, i32 8
  %372 = load i32, i32* %371, align 4
  %373 = load %struct.TYPE_8__*, %struct.TYPE_8__** %19, align 8
  %374 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %373, i32 0, i32 8
  store i32 %372, i32* %374, align 4
  %375 = load %struct.TYPE_8__*, %struct.TYPE_8__** @vrStructMembers, align 8
  %376 = load i64, i64* %18, align 8
  %377 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %375, i64 %376
  %378 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %377, i32 0, i32 7
  %379 = load i32, i32* %378, align 8
  %380 = load %struct.TYPE_8__*, %struct.TYPE_8__** %19, align 8
  %381 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %380, i32 0, i32 7
  store i32 %379, i32* %381, align 8
  br label %386

382:                                              ; preds = %300
  br label %383

383:                                              ; preds = %382
  %384 = load i64, i64* %18, align 8
  %385 = add i64 %384, 1
  store i64 %385, i64* %18, align 8
  br label %296

386:                                              ; preds = %350, %296
  br label %387

387:                                              ; preds = %386, %272
  %388 = load %struct.TYPE_8__*, %struct.TYPE_8__** @vrStructMembers, align 8
  %389 = load i64, i64* @ulNumStructMembers, align 8
  %390 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %388, i64 %389
  %391 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %390, i32 0, i32 1
  %392 = load i8*, i8** %391, align 8
  %393 = ptrtoint i8* %392 to i32
  %394 = call i32 @DPRINT(i32 %393)
  %395 = load %struct.TYPE_8__*, %struct.TYPE_8__** @vrStructMembers, align 8
  %396 = load i64, i64* @ulNumStructMembers, align 8
  %397 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %395, i64 %396
  %398 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %397, i32 0, i32 6
  %399 = load i32, i32* %398, align 4
  %400 = call i32 @DPRINT(i32 %399)
  %401 = load %struct.TYPE_8__*, %struct.TYPE_8__** @vrStructMembers, align 8
  %402 = load i64, i64* @ulNumStructMembers, align 8
  %403 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %401, i64 %402
  %404 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %403, i32 0, i32 4
  %405 = load i8*, i8** %404, align 8
  %406 = ptrtoint i8* %405 to i32
  %407 = call i32 @DPRINT(i32 %406)
  %408 = load %struct.TYPE_8__*, %struct.TYPE_8__** @vrStructMembers, align 8
  %409 = load i64, i64* @ulNumStructMembers, align 8
  %410 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %408, i64 %409
  %411 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %410, i32 0, i32 3
  %412 = load i8*, i8** %411, align 8
  %413 = ptrtoint i8* %412 to i32
  %414 = call i32 @DPRINT(i32 %413)
  %415 = load %struct.TYPE_8__*, %struct.TYPE_8__** @vrStructMembers, align 8
  %416 = load i64, i64* @ulNumStructMembers, align 8
  %417 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %415, i64 %416
  %418 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %417, i32 0, i32 5
  %419 = load i32, i32* %418, align 8
  %420 = call i32 @DPRINT(i32 %419)
  %421 = load %struct.TYPE_8__*, %struct.TYPE_8__** @vrStructMembers, align 8
  %422 = load i64, i64* @ulNumStructMembers, align 8
  %423 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %421, i64 %422
  %424 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %423, i32 0, i32 0
  %425 = load i64, i64* %424, align 8
  %426 = trunc i64 %425 to i32
  %427 = call i32 @DPRINT(i32 %426)
  %428 = load i64, i64* @ulNumStructMembers, align 8
  %429 = add i64 %428, 1
  store i64 %429, i64* @ulNumStructMembers, align 8
  %430 = load i32*, i32** %10, align 8
  %431 = call i32* @PICE_strchr(i32* %430, i8 signext 59)
  store i32* %431, i32** %10, align 8
  %432 = load i32*, i32** %10, align 8
  %433 = call i32* @PICE_strchr(i32* %432, i8 signext 58)
  store i32* %433, i32** %10, align 8
  %434 = load i32*, i32** %10, align 8
  %435 = icmp ne i32* %434, null
  br i1 %435, label %436, label %454

436:                                              ; preds = %387
  %437 = load i32*, i32** %10, align 8
  %438 = ptrtoint i32* %437 to i32
  %439 = call i32 @DPRINT(i32 %438)
  br label %440

440:                                              ; preds = %444, %436
  %441 = load i32*, i32** %10, align 8
  %442 = load i32, i32* %441, align 4
  %443 = icmp ne i32 %442, 59
  br i1 %443, label %444, label %447

444:                                              ; preds = %440
  %445 = load i32*, i32** %10, align 8
  %446 = getelementptr inbounds i32, i32* %445, i32 -1
  store i32* %446, i32** %10, align 8
  br label %440

447:                                              ; preds = %440
  %448 = load i32*, i32** %10, align 8
  %449 = icmp ne i32* %448, null
  br i1 %449, label %450, label %453

450:                                              ; preds = %447
  %451 = load i32*, i32** %10, align 8
  %452 = getelementptr inbounds i32, i32* %451, i32 1
  store i32* %452, i32** %10, align 8
  br label %453

453:                                              ; preds = %450, %447
  br label %454

454:                                              ; preds = %453, %387
  br label %254

455:                                              ; preds = %270
  %456 = load i32, i32* @TRUE, align 4
  store i32 %456, i32* %11, align 4
  br label %518

457:                                              ; preds = %80
  %458 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %459 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %458, i32 0, i32 0
  %460 = load i64, i64* %459, align 8
  %461 = trunc i64 %460 to i32
  %462 = call i32 @DPRINT(i32 %461)
  %463 = load i32, i32* @TRUE, align 4
  store i32 %463, i32* %11, align 4
  br label %518

464:                                              ; preds = %80
  %465 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %466 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %465, i32 0, i32 0
  %467 = load i64, i64* %466, align 8
  %468 = trunc i64 %467 to i32
  %469 = call i32 @DPRINT(i32 %468)
  %470 = load i32, i32* @TRUE, align 4
  store i32 %470, i32* %11, align 4
  br label %518

471:                                              ; preds = %80
  %472 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %473 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %472, i32 0, i32 0
  %474 = load i64, i64* %473, align 8
  %475 = load i32*, i32** %8, align 8
  %476 = load i32, i32* %475, align 4
  %477 = call i32 @DPRINT(i32 %476)
  %478 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %479 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %478, i32 0, i32 3
  %480 = load i8*, i8** %479, align 8
  %481 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %482 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %481, i32 0, i32 4
  store i8* %480, i8** %482, align 8
  %483 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %484 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %483, i32 0, i32 3
  %485 = load i8*, i8** %484, align 8
  %486 = load i64, i64* %14, align 8
  %487 = call i32 @IsRangeValid(i8* %485, i64 %486)
  %488 = icmp ne i32 %487, 0
  br i1 %488, label %489, label %516

489:                                              ; preds = %471
  %490 = load i64, i64* %14, align 8
  switch i64 %490, label %515 [
    i64 1, label %491
    i64 2, label %499
    i64 4, label %507
  ]

491:                                              ; preds = %489
  %492 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %493 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %492, i32 0, i32 3
  %494 = load i8*, i8** %493, align 8
  %495 = bitcast i8* %494 to i8**
  %496 = load i8*, i8** %495, align 8
  %497 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %498 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %497, i32 0, i32 3
  store i8* %496, i8** %498, align 8
  br label %515

499:                                              ; preds = %489
  %500 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %501 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %500, i32 0, i32 3
  %502 = load i8*, i8** %501, align 8
  %503 = bitcast i8* %502 to i8**
  %504 = load i8*, i8** %503, align 8
  %505 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %506 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %505, i32 0, i32 3
  store i8* %504, i8** %506, align 8
  br label %515

507:                                              ; preds = %489
  %508 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %509 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %508, i32 0, i32 3
  %510 = load i8*, i8** %509, align 8
  %511 = bitcast i8* %510 to i8**
  %512 = load i8*, i8** %511, align 8
  %513 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %514 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %513, i32 0, i32 3
  store i8* %512, i8** %514, align 8
  br label %515

515:                                              ; preds = %489, %507, %499, %491
  br label %516

516:                                              ; preds = %515, %471
  %517 = load i32, i32* @TRUE, align 4
  store i32 %517, i32* %11, align 4
  br label %518

518:                                              ; preds = %516, %464, %457, %455, %219, %218, %201, %85
  br label %43

519:                                              ; preds = %59, %43
  %520 = load i32, i32* @TRUE, align 4
  store i32 %520, i32* %3, align 4
  br label %523

521:                                              ; preds = %2
  %522 = load i32, i32* @FALSE, align 4
  store i32 %522, i32* %3, align 4
  br label %523

523:                                              ; preds = %521, %519, %78
  %524 = load i32, i32* %3, align 4
  ret i32 %524
}

declare dso_local i32 @DPRINT(i32) #1

declare dso_local i64 @FindGlobalStabSymbol(i32*, i8**, i64*, i32*) #1

declare dso_local i32* @FindTypeDefinition(i32, i64, i32) #1

declare dso_local i32 @PICE_strcpy(i8*, i32*) #1

declare dso_local i32* @ExtractTypeName(i32*) #1

declare dso_local i32* @PICE_strchr(i32*, i8 signext) #1

declare dso_local i64 @ExtractTypeNumber(i32*) #1

declare dso_local i32 @ExtractNumber(i32*) #1

declare dso_local i32 @IsRangeValid(i8*, i64) #1

declare dso_local i32 @ExtractArray(%struct.TYPE_8__*, i32*) #1

declare dso_local i32 @PICE_isdigit(i32) #1

declare dso_local i64 @DIM(%struct.TYPE_8__*) #1

declare dso_local %struct.TYPE_8__* @ExtractStructMembers(%struct.TYPE_8__*, i32*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @PICE_strlen(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
