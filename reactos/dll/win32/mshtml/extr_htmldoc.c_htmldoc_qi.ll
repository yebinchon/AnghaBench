; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/mshtml/extr_htmldoc.c_htmldoc_qi.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/mshtml/extr_htmldoc.c_htmldoc_qi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_6__, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_6__ = type { i32 }

@IID_IUnknown = common dso_local global i32 0, align 4
@IID_IDispatch = common dso_local global i32 0, align 4
@IID_IDispatchEx = common dso_local global i32 0, align 4
@IID_IHTMLDocument = common dso_local global i32 0, align 4
@IID_IHTMLDocument2 = common dso_local global i32 0, align 4
@IID_IHTMLDocument3 = common dso_local global i32 0, align 4
@IID_IHTMLDocument4 = common dso_local global i32 0, align 4
@IID_IHTMLDocument5 = common dso_local global i32 0, align 4
@IID_IHTMLDocument6 = common dso_local global i32 0, align 4
@IID_IHTMLDocument7 = common dso_local global i32 0, align 4
@IID_IPersist = common dso_local global i32 0, align 4
@IID_IPersistMoniker = common dso_local global i32 0, align 4
@IID_IPersistFile = common dso_local global i32 0, align 4
@IID_IMonikerProp = common dso_local global i32 0, align 4
@IID_IOleObject = common dso_local global i32 0, align 4
@IID_IOleDocument = common dso_local global i32 0, align 4
@IID_IOleDocumentView = common dso_local global i32 0, align 4
@IID_IOleInPlaceActiveObject = common dso_local global i32 0, align 4
@IID_IViewObject = common dso_local global i32 0, align 4
@IID_IViewObject2 = common dso_local global i32 0, align 4
@IID_IViewObjectEx = common dso_local global i32 0, align 4
@IID_IOleWindow = common dso_local global i32 0, align 4
@IID_IOleInPlaceObject = common dso_local global i32 0, align 4
@IID_IOleInPlaceObjectWindowless = common dso_local global i32 0, align 4
@IID_IServiceProvider = common dso_local global i32 0, align 4
@IID_IOleCommandTarget = common dso_local global i32 0, align 4
@IID_IOleControl = common dso_local global i32 0, align 4
@IID_IHlinkTarget = common dso_local global i32 0, align 4
@IID_IConnectionPointContainer = common dso_local global i32 0, align 4
@IID_IPersistStreamInit = common dso_local global i32 0, align 4
@DIID_DispHTMLDocument = common dso_local global i32 0, align 4
@IID_ISupportErrorInfo = common dso_local global i32 0, align 4
@IID_IPersistHistory = common dso_local global i32 0, align 4
@IID_IObjectWithSite = common dso_local global i32 0, align 4
@IID_IOleContainer = common dso_local global i32 0, align 4
@IID_IObjectSafety = common dso_local global i32 0, align 4
@IID_IProvideClassInfo = common dso_local global i32 0, align 4
@CLSID_CMarkup = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"(%p)->(CLSID_CMarkup %p)\0A\00", align 1
@IID_IRunnableObject = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [47 x i8] c"(%p)->(IID_IRunnableObject %p) returning NULL\0A\00", align 1
@IID_IPersistPropertyBag = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [51 x i8] c"(%p)->(IID_IPersistPropertyBag %p) returning NULL\0A\00", align 1
@IID_IMarshal = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [40 x i8] c"(%p)->(IID_IMarshal %p) returning NULL\0A\00", align 1
@IID_IExternalConnection = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [51 x i8] c"(%p)->(IID_IExternalConnection %p) returning NULL\0A\00", align 1
@IID_IStdMarshalInfo = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [47 x i8] c"(%p)->(IID_IStdMarshalInfo %p) returning NULL\0A\00", align 1
@FALSE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_7__*, i32, i8**)* @htmldoc_qi to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @htmldoc_qi(%struct.TYPE_7__* %0, i32 %1, i8** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_7__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8**, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8** %2, i8*** %7, align 8
  %8 = load i8**, i8*** %7, align 8
  store i8* null, i8** %8, align 8
  %9 = load i32, i32* %6, align 4
  %10 = call i64 @IsEqualGUID(i32* @IID_IUnknown, i32 %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %17

12:                                               ; preds = %3
  %13 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %14 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i32 0, i32 6
  %15 = bitcast i32* %14 to i8*
  %16 = load i8**, i8*** %7, align 8
  store i8* %15, i8** %16, align 8
  br label %440

17:                                               ; preds = %3
  %18 = load i32, i32* %6, align 4
  %19 = call i64 @IsEqualGUID(i32* @IID_IDispatch, i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %26

21:                                               ; preds = %17
  %22 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %23 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %22, i32 0, i32 27
  %24 = bitcast i32* %23 to i8*
  %25 = load i8**, i8*** %7, align 8
  store i8* %24, i8** %25, align 8
  br label %439

26:                                               ; preds = %17
  %27 = load i32, i32* %6, align 4
  %28 = call i64 @IsEqualGUID(i32* @IID_IDispatchEx, i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %35

30:                                               ; preds = %26
  %31 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %32 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %31, i32 0, i32 27
  %33 = bitcast i32* %32 to i8*
  %34 = load i8**, i8*** %7, align 8
  store i8* %33, i8** %34, align 8
  br label %438

35:                                               ; preds = %26
  %36 = load i32, i32* %6, align 4
  %37 = call i64 @IsEqualGUID(i32* @IID_IHTMLDocument, i32 %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %44

39:                                               ; preds = %35
  %40 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %41 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %40, i32 0, i32 6
  %42 = bitcast i32* %41 to i8*
  %43 = load i8**, i8*** %7, align 8
  store i8* %42, i8** %43, align 8
  br label %437

44:                                               ; preds = %35
  %45 = load i32, i32* %6, align 4
  %46 = call i64 @IsEqualGUID(i32* @IID_IHTMLDocument2, i32 %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %53

48:                                               ; preds = %44
  %49 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %50 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %49, i32 0, i32 6
  %51 = bitcast i32* %50 to i8*
  %52 = load i8**, i8*** %7, align 8
  store i8* %51, i8** %52, align 8
  br label %436

53:                                               ; preds = %44
  %54 = load i32, i32* %6, align 4
  %55 = call i64 @IsEqualGUID(i32* @IID_IHTMLDocument3, i32 %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %62

57:                                               ; preds = %53
  %58 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %59 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %58, i32 0, i32 26
  %60 = bitcast i32* %59 to i8*
  %61 = load i8**, i8*** %7, align 8
  store i8* %60, i8** %61, align 8
  br label %435

62:                                               ; preds = %53
  %63 = load i32, i32* %6, align 4
  %64 = call i64 @IsEqualGUID(i32* @IID_IHTMLDocument4, i32 %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %71

66:                                               ; preds = %62
  %67 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %68 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %67, i32 0, i32 25
  %69 = bitcast i32* %68 to i8*
  %70 = load i8**, i8*** %7, align 8
  store i8* %69, i8** %70, align 8
  br label %434

71:                                               ; preds = %62
  %72 = load i32, i32* %6, align 4
  %73 = call i64 @IsEqualGUID(i32* @IID_IHTMLDocument5, i32 %72)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %80

75:                                               ; preds = %71
  %76 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %77 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %76, i32 0, i32 24
  %78 = bitcast i32* %77 to i8*
  %79 = load i8**, i8*** %7, align 8
  store i8* %78, i8** %79, align 8
  br label %433

80:                                               ; preds = %71
  %81 = load i32, i32* %6, align 4
  %82 = call i64 @IsEqualGUID(i32* @IID_IHTMLDocument6, i32 %81)
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %89

84:                                               ; preds = %80
  %85 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %86 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %85, i32 0, i32 23
  %87 = bitcast i32* %86 to i8*
  %88 = load i8**, i8*** %7, align 8
  store i8* %87, i8** %88, align 8
  br label %432

89:                                               ; preds = %80
  %90 = load i32, i32* %6, align 4
  %91 = call i64 @IsEqualGUID(i32* @IID_IHTMLDocument7, i32 %90)
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %98

93:                                               ; preds = %89
  %94 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %95 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %94, i32 0, i32 22
  %96 = bitcast i32* %95 to i8*
  %97 = load i8**, i8*** %7, align 8
  store i8* %96, i8** %97, align 8
  br label %431

98:                                               ; preds = %89
  %99 = load i32, i32* %6, align 4
  %100 = call i64 @IsEqualGUID(i32* @IID_IPersist, i32 %99)
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %107

102:                                              ; preds = %98
  %103 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %104 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %103, i32 0, i32 20
  %105 = bitcast i32* %104 to i8*
  %106 = load i8**, i8*** %7, align 8
  store i8* %105, i8** %106, align 8
  br label %430

107:                                              ; preds = %98
  %108 = load i32, i32* %6, align 4
  %109 = call i64 @IsEqualGUID(i32* @IID_IPersistMoniker, i32 %108)
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %111, label %116

111:                                              ; preds = %107
  %112 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %113 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %112, i32 0, i32 21
  %114 = bitcast i32* %113 to i8*
  %115 = load i8**, i8*** %7, align 8
  store i8* %114, i8** %115, align 8
  br label %429

116:                                              ; preds = %107
  %117 = load i32, i32* %6, align 4
  %118 = call i64 @IsEqualGUID(i32* @IID_IPersistFile, i32 %117)
  %119 = icmp ne i64 %118, 0
  br i1 %119, label %120, label %125

120:                                              ; preds = %116
  %121 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %122 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %121, i32 0, i32 20
  %123 = bitcast i32* %122 to i8*
  %124 = load i8**, i8*** %7, align 8
  store i8* %123, i8** %124, align 8
  br label %428

125:                                              ; preds = %116
  %126 = load i32, i32* %6, align 4
  %127 = call i64 @IsEqualGUID(i32* @IID_IMonikerProp, i32 %126)
  %128 = icmp ne i64 %127, 0
  br i1 %128, label %129, label %134

129:                                              ; preds = %125
  %130 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %131 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %130, i32 0, i32 19
  %132 = bitcast i32* %131 to i8*
  %133 = load i8**, i8*** %7, align 8
  store i8* %132, i8** %133, align 8
  br label %427

134:                                              ; preds = %125
  %135 = load i32, i32* %6, align 4
  %136 = call i64 @IsEqualGUID(i32* @IID_IOleObject, i32 %135)
  %137 = icmp ne i64 %136, 0
  br i1 %137, label %138, label %143

138:                                              ; preds = %134
  %139 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %140 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %139, i32 0, i32 18
  %141 = bitcast i32* %140 to i8*
  %142 = load i8**, i8*** %7, align 8
  store i8* %141, i8** %142, align 8
  br label %426

143:                                              ; preds = %134
  %144 = load i32, i32* %6, align 4
  %145 = call i64 @IsEqualGUID(i32* @IID_IOleDocument, i32 %144)
  %146 = icmp ne i64 %145, 0
  br i1 %146, label %147, label %152

147:                                              ; preds = %143
  %148 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %149 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %148, i32 0, i32 17
  %150 = bitcast i32* %149 to i8*
  %151 = load i8**, i8*** %7, align 8
  store i8* %150, i8** %151, align 8
  br label %425

152:                                              ; preds = %143
  %153 = load i32, i32* %6, align 4
  %154 = call i64 @IsEqualGUID(i32* @IID_IOleDocumentView, i32 %153)
  %155 = icmp ne i64 %154, 0
  br i1 %155, label %156, label %161

156:                                              ; preds = %152
  %157 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %158 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %157, i32 0, i32 16
  %159 = bitcast i32* %158 to i8*
  %160 = load i8**, i8*** %7, align 8
  store i8* %159, i8** %160, align 8
  br label %424

161:                                              ; preds = %152
  %162 = load i32, i32* %6, align 4
  %163 = call i64 @IsEqualGUID(i32* @IID_IOleInPlaceActiveObject, i32 %162)
  %164 = icmp ne i64 %163, 0
  br i1 %164, label %165, label %170

165:                                              ; preds = %161
  %166 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %167 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %166, i32 0, i32 14
  %168 = bitcast i32* %167 to i8*
  %169 = load i8**, i8*** %7, align 8
  store i8* %168, i8** %169, align 8
  br label %423

170:                                              ; preds = %161
  %171 = load i32, i32* %6, align 4
  %172 = call i64 @IsEqualGUID(i32* @IID_IViewObject, i32 %171)
  %173 = icmp ne i64 %172, 0
  br i1 %173, label %174, label %179

174:                                              ; preds = %170
  %175 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %176 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %175, i32 0, i32 15
  %177 = bitcast i32* %176 to i8*
  %178 = load i8**, i8*** %7, align 8
  store i8* %177, i8** %178, align 8
  br label %422

179:                                              ; preds = %170
  %180 = load i32, i32* %6, align 4
  %181 = call i64 @IsEqualGUID(i32* @IID_IViewObject2, i32 %180)
  %182 = icmp ne i64 %181, 0
  br i1 %182, label %183, label %188

183:                                              ; preds = %179
  %184 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %185 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %184, i32 0, i32 15
  %186 = bitcast i32* %185 to i8*
  %187 = load i8**, i8*** %7, align 8
  store i8* %186, i8** %187, align 8
  br label %421

188:                                              ; preds = %179
  %189 = load i32, i32* %6, align 4
  %190 = call i64 @IsEqualGUID(i32* @IID_IViewObjectEx, i32 %189)
  %191 = icmp ne i64 %190, 0
  br i1 %191, label %192, label %197

192:                                              ; preds = %188
  %193 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %194 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %193, i32 0, i32 15
  %195 = bitcast i32* %194 to i8*
  %196 = load i8**, i8*** %7, align 8
  store i8* %195, i8** %196, align 8
  br label %420

197:                                              ; preds = %188
  %198 = load i32, i32* %6, align 4
  %199 = call i64 @IsEqualGUID(i32* @IID_IOleWindow, i32 %198)
  %200 = icmp ne i64 %199, 0
  br i1 %200, label %201, label %206

201:                                              ; preds = %197
  %202 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %203 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %202, i32 0, i32 14
  %204 = bitcast i32* %203 to i8*
  %205 = load i8**, i8*** %7, align 8
  store i8* %204, i8** %205, align 8
  br label %419

206:                                              ; preds = %197
  %207 = load i32, i32* %6, align 4
  %208 = call i64 @IsEqualGUID(i32* @IID_IOleInPlaceObject, i32 %207)
  %209 = icmp ne i64 %208, 0
  br i1 %209, label %210, label %215

210:                                              ; preds = %206
  %211 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %212 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %211, i32 0, i32 13
  %213 = bitcast i32* %212 to i8*
  %214 = load i8**, i8*** %7, align 8
  store i8* %213, i8** %214, align 8
  br label %418

215:                                              ; preds = %206
  %216 = load i32, i32* %6, align 4
  %217 = call i64 @IsEqualGUID(i32* @IID_IOleInPlaceObjectWindowless, i32 %216)
  %218 = icmp ne i64 %217, 0
  br i1 %218, label %219, label %224

219:                                              ; preds = %215
  %220 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %221 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %220, i32 0, i32 13
  %222 = bitcast i32* %221 to i8*
  %223 = load i8**, i8*** %7, align 8
  store i8* %222, i8** %223, align 8
  br label %417

224:                                              ; preds = %215
  %225 = load i32, i32* %6, align 4
  %226 = call i64 @IsEqualGUID(i32* @IID_IServiceProvider, i32 %225)
  %227 = icmp ne i64 %226, 0
  br i1 %227, label %228, label %233

228:                                              ; preds = %224
  %229 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %230 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %229, i32 0, i32 12
  %231 = bitcast i32* %230 to i8*
  %232 = load i8**, i8*** %7, align 8
  store i8* %231, i8** %232, align 8
  br label %416

233:                                              ; preds = %224
  %234 = load i32, i32* %6, align 4
  %235 = call i64 @IsEqualGUID(i32* @IID_IOleCommandTarget, i32 %234)
  %236 = icmp ne i64 %235, 0
  br i1 %236, label %237, label %242

237:                                              ; preds = %233
  %238 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %239 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %238, i32 0, i32 11
  %240 = bitcast i32* %239 to i8*
  %241 = load i8**, i8*** %7, align 8
  store i8* %240, i8** %241, align 8
  br label %415

242:                                              ; preds = %233
  %243 = load i32, i32* %6, align 4
  %244 = call i64 @IsEqualGUID(i32* @IID_IOleControl, i32 %243)
  %245 = icmp ne i64 %244, 0
  br i1 %245, label %246, label %251

246:                                              ; preds = %242
  %247 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %248 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %247, i32 0, i32 10
  %249 = bitcast i32* %248 to i8*
  %250 = load i8**, i8*** %7, align 8
  store i8* %249, i8** %250, align 8
  br label %414

251:                                              ; preds = %242
  %252 = load i32, i32* %6, align 4
  %253 = call i64 @IsEqualGUID(i32* @IID_IHlinkTarget, i32 %252)
  %254 = icmp ne i64 %253, 0
  br i1 %254, label %255, label %260

255:                                              ; preds = %251
  %256 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %257 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %256, i32 0, i32 9
  %258 = bitcast i32* %257 to i8*
  %259 = load i8**, i8*** %7, align 8
  store i8* %258, i8** %259, align 8
  br label %413

260:                                              ; preds = %251
  %261 = load i32, i32* %6, align 4
  %262 = call i64 @IsEqualGUID(i32* @IID_IConnectionPointContainer, i32 %261)
  %263 = icmp ne i64 %262, 0
  br i1 %263, label %264, label %270

264:                                              ; preds = %260
  %265 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %266 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %265, i32 0, i32 8
  %267 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %266, i32 0, i32 0
  %268 = bitcast i32* %267 to i8*
  %269 = load i8**, i8*** %7, align 8
  store i8* %268, i8** %269, align 8
  br label %412

270:                                              ; preds = %260
  %271 = load i32, i32* %6, align 4
  %272 = call i64 @IsEqualGUID(i32* @IID_IPersistStreamInit, i32 %271)
  %273 = icmp ne i64 %272, 0
  br i1 %273, label %274, label %279

274:                                              ; preds = %270
  %275 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %276 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %275, i32 0, i32 7
  %277 = bitcast i32* %276 to i8*
  %278 = load i8**, i8*** %7, align 8
  store i8* %277, i8** %278, align 8
  br label %411

279:                                              ; preds = %270
  %280 = load i32, i32* %6, align 4
  %281 = call i64 @IsEqualGUID(i32* @DIID_DispHTMLDocument, i32 %280)
  %282 = icmp ne i64 %281, 0
  br i1 %282, label %283, label %288

283:                                              ; preds = %279
  %284 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %285 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %284, i32 0, i32 6
  %286 = bitcast i32* %285 to i8*
  %287 = load i8**, i8*** %7, align 8
  store i8* %286, i8** %287, align 8
  br label %410

288:                                              ; preds = %279
  %289 = load i32, i32* %6, align 4
  %290 = call i64 @IsEqualGUID(i32* @IID_ISupportErrorInfo, i32 %289)
  %291 = icmp ne i64 %290, 0
  br i1 %291, label %292, label %297

292:                                              ; preds = %288
  %293 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %294 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %293, i32 0, i32 5
  %295 = bitcast i32* %294 to i8*
  %296 = load i8**, i8*** %7, align 8
  store i8* %295, i8** %296, align 8
  br label %409

297:                                              ; preds = %288
  %298 = load i32, i32* %6, align 4
  %299 = call i64 @IsEqualGUID(i32* @IID_IPersistHistory, i32 %298)
  %300 = icmp ne i64 %299, 0
  br i1 %300, label %301, label %306

301:                                              ; preds = %297
  %302 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %303 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %302, i32 0, i32 4
  %304 = bitcast i32* %303 to i8*
  %305 = load i8**, i8*** %7, align 8
  store i8* %304, i8** %305, align 8
  br label %408

306:                                              ; preds = %297
  %307 = load i32, i32* %6, align 4
  %308 = call i64 @IsEqualGUID(i32* @IID_IObjectWithSite, i32 %307)
  %309 = icmp ne i64 %308, 0
  br i1 %309, label %310, label %315

310:                                              ; preds = %306
  %311 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %312 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %311, i32 0, i32 3
  %313 = bitcast i32* %312 to i8*
  %314 = load i8**, i8*** %7, align 8
  store i8* %313, i8** %314, align 8
  br label %407

315:                                              ; preds = %306
  %316 = load i32, i32* %6, align 4
  %317 = call i64 @IsEqualGUID(i32* @IID_IOleContainer, i32 %316)
  %318 = icmp ne i64 %317, 0
  br i1 %318, label %319, label %324

319:                                              ; preds = %315
  %320 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %321 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %320, i32 0, i32 2
  %322 = bitcast i32* %321 to i8*
  %323 = load i8**, i8*** %7, align 8
  store i8* %322, i8** %323, align 8
  br label %406

324:                                              ; preds = %315
  %325 = load i32, i32* %6, align 4
  %326 = call i64 @IsEqualGUID(i32* @IID_IObjectSafety, i32 %325)
  %327 = icmp ne i64 %326, 0
  br i1 %327, label %328, label %333

328:                                              ; preds = %324
  %329 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %330 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %329, i32 0, i32 1
  %331 = bitcast i32* %330 to i8*
  %332 = load i8**, i8*** %7, align 8
  store i8* %331, i8** %332, align 8
  br label %405

333:                                              ; preds = %324
  %334 = load i32, i32* %6, align 4
  %335 = call i64 @IsEqualGUID(i32* @IID_IProvideClassInfo, i32 %334)
  %336 = icmp ne i64 %335, 0
  br i1 %336, label %337, label %342

337:                                              ; preds = %333
  %338 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %339 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %338, i32 0, i32 0
  %340 = bitcast i32* %339 to i8*
  %341 = load i8**, i8*** %7, align 8
  store i8* %340, i8** %341, align 8
  br label %404

342:                                              ; preds = %333
  %343 = load i32, i32* %6, align 4
  %344 = call i64 @IsEqualGUID(i32* @CLSID_CMarkup, i32 %343)
  %345 = icmp ne i64 %344, 0
  br i1 %345, label %346, label %351

346:                                              ; preds = %342
  %347 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %348 = load i8**, i8*** %7, align 8
  %349 = call i32 @FIXME(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), %struct.TYPE_7__* %347, i8** %348)
  %350 = load i8**, i8*** %7, align 8
  store i8* null, i8** %350, align 8
  br label %403

351:                                              ; preds = %342
  %352 = load i32, i32* %6, align 4
  %353 = call i64 @IsEqualGUID(i32* @IID_IRunnableObject, i32 %352)
  %354 = icmp ne i64 %353, 0
  br i1 %354, label %355, label %360

355:                                              ; preds = %351
  %356 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %357 = load i8**, i8*** %7, align 8
  %358 = call i32 @TRACE(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0), %struct.TYPE_7__* %356, i8** %357)
  %359 = load i8**, i8*** %7, align 8
  store i8* null, i8** %359, align 8
  br label %402

360:                                              ; preds = %351
  %361 = load i32, i32* %6, align 4
  %362 = call i64 @IsEqualGUID(i32* @IID_IPersistPropertyBag, i32 %361)
  %363 = icmp ne i64 %362, 0
  br i1 %363, label %364, label %369

364:                                              ; preds = %360
  %365 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %366 = load i8**, i8*** %7, align 8
  %367 = call i32 @TRACE(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.2, i64 0, i64 0), %struct.TYPE_7__* %365, i8** %366)
  %368 = load i8**, i8*** %7, align 8
  store i8* null, i8** %368, align 8
  br label %401

369:                                              ; preds = %360
  %370 = load i32, i32* %6, align 4
  %371 = call i64 @IsEqualGUID(i32* @IID_IMarshal, i32 %370)
  %372 = icmp ne i64 %371, 0
  br i1 %372, label %373, label %378

373:                                              ; preds = %369
  %374 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %375 = load i8**, i8*** %7, align 8
  %376 = call i32 @TRACE(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.3, i64 0, i64 0), %struct.TYPE_7__* %374, i8** %375)
  %377 = load i8**, i8*** %7, align 8
  store i8* null, i8** %377, align 8
  br label %400

378:                                              ; preds = %369
  %379 = load i32, i32* %6, align 4
  %380 = call i64 @IsEqualGUID(i32* @IID_IExternalConnection, i32 %379)
  %381 = icmp ne i64 %380, 0
  br i1 %381, label %382, label %387

382:                                              ; preds = %378
  %383 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %384 = load i8**, i8*** %7, align 8
  %385 = call i32 @TRACE(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.4, i64 0, i64 0), %struct.TYPE_7__* %383, i8** %384)
  %386 = load i8**, i8*** %7, align 8
  store i8* null, i8** %386, align 8
  br label %399

387:                                              ; preds = %378
  %388 = load i32, i32* %6, align 4
  %389 = call i64 @IsEqualGUID(i32* @IID_IStdMarshalInfo, i32 %388)
  %390 = icmp ne i64 %389, 0
  br i1 %390, label %391, label %396

391:                                              ; preds = %387
  %392 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %393 = load i8**, i8*** %7, align 8
  %394 = call i32 @TRACE(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.5, i64 0, i64 0), %struct.TYPE_7__* %392, i8** %393)
  %395 = load i8**, i8*** %7, align 8
  store i8* null, i8** %395, align 8
  br label %398

396:                                              ; preds = %387
  %397 = load i32, i32* @FALSE, align 4
  store i32 %397, i32* %4, align 4
  br label %451

398:                                              ; preds = %391
  br label %399

399:                                              ; preds = %398, %382
  br label %400

400:                                              ; preds = %399, %373
  br label %401

401:                                              ; preds = %400, %364
  br label %402

402:                                              ; preds = %401, %355
  br label %403

403:                                              ; preds = %402, %346
  br label %404

404:                                              ; preds = %403, %337
  br label %405

405:                                              ; preds = %404, %328
  br label %406

406:                                              ; preds = %405, %319
  br label %407

407:                                              ; preds = %406, %310
  br label %408

408:                                              ; preds = %407, %301
  br label %409

409:                                              ; preds = %408, %292
  br label %410

410:                                              ; preds = %409, %283
  br label %411

411:                                              ; preds = %410, %274
  br label %412

412:                                              ; preds = %411, %264
  br label %413

413:                                              ; preds = %412, %255
  br label %414

414:                                              ; preds = %413, %246
  br label %415

415:                                              ; preds = %414, %237
  br label %416

416:                                              ; preds = %415, %228
  br label %417

417:                                              ; preds = %416, %219
  br label %418

418:                                              ; preds = %417, %210
  br label %419

419:                                              ; preds = %418, %201
  br label %420

420:                                              ; preds = %419, %192
  br label %421

421:                                              ; preds = %420, %183
  br label %422

422:                                              ; preds = %421, %174
  br label %423

423:                                              ; preds = %422, %165
  br label %424

424:                                              ; preds = %423, %156
  br label %425

425:                                              ; preds = %424, %147
  br label %426

426:                                              ; preds = %425, %138
  br label %427

427:                                              ; preds = %426, %129
  br label %428

428:                                              ; preds = %427, %120
  br label %429

429:                                              ; preds = %428, %111
  br label %430

430:                                              ; preds = %429, %102
  br label %431

431:                                              ; preds = %430, %93
  br label %432

432:                                              ; preds = %431, %84
  br label %433

433:                                              ; preds = %432, %75
  br label %434

434:                                              ; preds = %433, %66
  br label %435

435:                                              ; preds = %434, %57
  br label %436

436:                                              ; preds = %435, %48
  br label %437

437:                                              ; preds = %436, %39
  br label %438

438:                                              ; preds = %437, %30
  br label %439

439:                                              ; preds = %438, %21
  br label %440

440:                                              ; preds = %439, %12
  %441 = load i8**, i8*** %7, align 8
  %442 = load i8*, i8** %441, align 8
  %443 = icmp ne i8* %442, null
  br i1 %443, label %444, label %449

444:                                              ; preds = %440
  %445 = load i8**, i8*** %7, align 8
  %446 = load i8*, i8** %445, align 8
  %447 = bitcast i8* %446 to i32*
  %448 = call i32 @IUnknown_AddRef(i32* %447)
  br label %449

449:                                              ; preds = %444, %440
  %450 = load i32, i32* @TRUE, align 4
  store i32 %450, i32* %4, align 4
  br label %451

451:                                              ; preds = %449, %396
  %452 = load i32, i32* %4, align 4
  ret i32 %452
}

declare dso_local i64 @IsEqualGUID(i32*, i32) #1

declare dso_local i32 @FIXME(i8*, %struct.TYPE_7__*, i8**) #1

declare dso_local i32 @TRACE(i8*, %struct.TYPE_7__*, i8**) #1

declare dso_local i32 @IUnknown_AddRef(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
