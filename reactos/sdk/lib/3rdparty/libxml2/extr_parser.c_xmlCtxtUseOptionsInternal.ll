; ModuleID = '/home/carl/AnghaBench/reactos/sdk/lib/3rdparty/libxml2/extr_parser.c_xmlCtxtUseOptionsInternal.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/lib/3rdparty/libxml2/extr_parser.c_xmlCtxtUseOptionsInternal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32*, %struct.TYPE_6__*, %struct.TYPE_5__, i32, i32* }
%struct.TYPE_6__ = type { i32, i32*, i32*, i32*, i32, i32, i32*, i32*, i32*, i32 }
%struct.TYPE_5__ = type { i32*, i32* }

@XML_PARSE_RECOVER = common dso_local global i32 0, align 4
@XML_PARSE_DTDLOAD = common dso_local global i32 0, align 4
@XML_DETECT_IDS = common dso_local global i32 0, align 4
@XML_PARSE_DTDATTR = common dso_local global i32 0, align 4
@XML_COMPLETE_ATTRS = common dso_local global i32 0, align 4
@XML_PARSE_NOENT = common dso_local global i32 0, align 4
@XML_PARSE_PEDANTIC = common dso_local global i32 0, align 4
@XML_PARSE_NOBLANKS = common dso_local global i32 0, align 4
@xmlSAX2IgnorableWhitespace = common dso_local global i32 0, align 4
@XML_PARSE_DTDVALID = common dso_local global i32 0, align 4
@XML_PARSE_NOWARNING = common dso_local global i32 0, align 4
@XML_PARSE_NOERROR = common dso_local global i32 0, align 4
@XML_PARSE_NODICT = common dso_local global i32 0, align 4
@XML_PARSE_NOCDATA = common dso_local global i32 0, align 4
@XML_PARSE_NSCLEAN = common dso_local global i32 0, align 4
@XML_PARSE_NONET = common dso_local global i32 0, align 4
@XML_PARSE_COMPACT = common dso_local global i32 0, align 4
@XML_PARSE_OLD10 = common dso_local global i32 0, align 4
@XML_PARSE_NOBASEFIX = common dso_local global i32 0, align 4
@XML_PARSE_HUGE = common dso_local global i32 0, align 4
@XML_PARSE_OLDSAX = common dso_local global i32 0, align 4
@XML_PARSE_IGNORE_ENC = common dso_local global i32 0, align 4
@XML_PARSE_BIG_LINES = common dso_local global i32 0, align 4
@XML_PARSE_SAX1 = common dso_local global i32 0, align 4
@xmlSAX2EndElement = common dso_local global i32 0, align 4
@xmlSAX2StartElement = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_7__*, i32, i8*)* @xmlCtxtUseOptionsInternal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xmlCtxtUseOptionsInternal(%struct.TYPE_7__* %0, i32 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_7__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  %8 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %9 = icmp eq %struct.TYPE_7__* %8, null
  br i1 %9, label %10, label %11

10:                                               ; preds = %3
  store i32 -1, i32* %4, align 4
  br label %394

11:                                               ; preds = %3
  %12 = load i8*, i8** %7, align 8
  %13 = icmp ne i8* %12, null
  br i1 %13, label %14, label %30

14:                                               ; preds = %11
  %15 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %16 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %15, i32 0, i32 12
  %17 = load i32*, i32** %16, align 8
  %18 = icmp ne i32* %17, null
  br i1 %18, label %19, label %24

19:                                               ; preds = %14
  %20 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %21 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %20, i32 0, i32 12
  %22 = load i32*, i32** %21, align 8
  %23 = call i32 @xmlFree(i32* %22)
  br label %24

24:                                               ; preds = %19, %14
  %25 = load i8*, i8** %7, align 8
  %26 = bitcast i8* %25 to i32*
  %27 = call i32* @xmlStrdup(i32* %26)
  %28 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %29 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %28, i32 0, i32 12
  store i32* %27, i32** %29, align 8
  br label %30

30:                                               ; preds = %24, %11
  %31 = load i32, i32* %6, align 4
  %32 = load i32, i32* @XML_PARSE_RECOVER, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %46

35:                                               ; preds = %30
  %36 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %37 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %36, i32 0, i32 0
  store i32 1, i32* %37, align 8
  %38 = load i32, i32* @XML_PARSE_RECOVER, align 4
  %39 = load i32, i32* %6, align 4
  %40 = sub nsw i32 %39, %38
  store i32 %40, i32* %6, align 4
  %41 = load i32, i32* @XML_PARSE_RECOVER, align 4
  %42 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %43 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = or i32 %44, %41
  store i32 %45, i32* %43, align 4
  br label %49

46:                                               ; preds = %30
  %47 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %48 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %47, i32 0, i32 0
  store i32 0, i32* %48, align 8
  br label %49

49:                                               ; preds = %46, %35
  %50 = load i32, i32* %6, align 4
  %51 = load i32, i32* @XML_PARSE_DTDLOAD, align 4
  %52 = and i32 %50, %51
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %66

54:                                               ; preds = %49
  %55 = load i32, i32* @XML_DETECT_IDS, align 4
  %56 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %57 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %56, i32 0, i32 11
  store i32 %55, i32* %57, align 8
  %58 = load i32, i32* @XML_PARSE_DTDLOAD, align 4
  %59 = load i32, i32* %6, align 4
  %60 = sub nsw i32 %59, %58
  store i32 %60, i32* %6, align 4
  %61 = load i32, i32* @XML_PARSE_DTDLOAD, align 4
  %62 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %63 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = or i32 %64, %61
  store i32 %65, i32* %63, align 4
  br label %69

66:                                               ; preds = %49
  %67 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %68 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %67, i32 0, i32 11
  store i32 0, i32* %68, align 8
  br label %69

69:                                               ; preds = %66, %54
  %70 = load i32, i32* %6, align 4
  %71 = load i32, i32* @XML_PARSE_DTDATTR, align 4
  %72 = and i32 %70, %71
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %88

74:                                               ; preds = %69
  %75 = load i32, i32* @XML_COMPLETE_ATTRS, align 4
  %76 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %77 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %76, i32 0, i32 11
  %78 = load i32, i32* %77, align 8
  %79 = or i32 %78, %75
  store i32 %79, i32* %77, align 8
  %80 = load i32, i32* @XML_PARSE_DTDATTR, align 4
  %81 = load i32, i32* %6, align 4
  %82 = sub nsw i32 %81, %80
  store i32 %82, i32* %6, align 4
  %83 = load i32, i32* @XML_PARSE_DTDATTR, align 4
  %84 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %85 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = or i32 %86, %83
  store i32 %87, i32* %85, align 4
  br label %88

88:                                               ; preds = %74, %69
  %89 = load i32, i32* %6, align 4
  %90 = load i32, i32* @XML_PARSE_NOENT, align 4
  %91 = and i32 %89, %90
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %104

93:                                               ; preds = %88
  %94 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %95 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %94, i32 0, i32 2
  store i32 1, i32* %95, align 8
  %96 = load i32, i32* @XML_PARSE_NOENT, align 4
  %97 = load i32, i32* %6, align 4
  %98 = sub nsw i32 %97, %96
  store i32 %98, i32* %6, align 4
  %99 = load i32, i32* @XML_PARSE_NOENT, align 4
  %100 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %101 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 4
  %103 = or i32 %102, %99
  store i32 %103, i32* %101, align 4
  br label %107

104:                                              ; preds = %88
  %105 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %106 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %105, i32 0, i32 2
  store i32 0, i32* %106, align 8
  br label %107

107:                                              ; preds = %104, %93
  %108 = load i32, i32* %6, align 4
  %109 = load i32, i32* @XML_PARSE_PEDANTIC, align 4
  %110 = and i32 %108, %109
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %123

112:                                              ; preds = %107
  %113 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %114 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %113, i32 0, i32 3
  store i32 1, i32* %114, align 4
  %115 = load i32, i32* @XML_PARSE_PEDANTIC, align 4
  %116 = load i32, i32* %6, align 4
  %117 = sub nsw i32 %116, %115
  store i32 %117, i32* %6, align 4
  %118 = load i32, i32* @XML_PARSE_PEDANTIC, align 4
  %119 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %120 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %119, i32 0, i32 1
  %121 = load i32, i32* %120, align 4
  %122 = or i32 %121, %118
  store i32 %122, i32* %120, align 4
  br label %126

123:                                              ; preds = %107
  %124 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %125 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %124, i32 0, i32 3
  store i32 0, i32* %125, align 4
  br label %126

126:                                              ; preds = %123, %112
  %127 = load i32, i32* %6, align 4
  %128 = load i32, i32* @XML_PARSE_NOBLANKS, align 4
  %129 = and i32 %127, %128
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %147

131:                                              ; preds = %126
  %132 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %133 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %132, i32 0, i32 4
  store i32 0, i32* %133, align 8
  %134 = load i32, i32* @xmlSAX2IgnorableWhitespace, align 4
  %135 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %136 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %135, i32 0, i32 9
  %137 = load %struct.TYPE_6__*, %struct.TYPE_6__** %136, align 8
  %138 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %137, i32 0, i32 9
  store i32 %134, i32* %138, align 8
  %139 = load i32, i32* @XML_PARSE_NOBLANKS, align 4
  %140 = load i32, i32* %6, align 4
  %141 = sub nsw i32 %140, %139
  store i32 %141, i32* %6, align 4
  %142 = load i32, i32* @XML_PARSE_NOBLANKS, align 4
  %143 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %144 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %143, i32 0, i32 1
  %145 = load i32, i32* %144, align 4
  %146 = or i32 %145, %142
  store i32 %146, i32* %144, align 4
  br label %150

147:                                              ; preds = %126
  %148 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %149 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %148, i32 0, i32 4
  store i32 1, i32* %149, align 8
  br label %150

150:                                              ; preds = %147, %131
  %151 = load i32, i32* %6, align 4
  %152 = load i32, i32* @XML_PARSE_DTDVALID, align 4
  %153 = and i32 %151, %152
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %155, label %184

155:                                              ; preds = %150
  %156 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %157 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %156, i32 0, i32 5
  store i32 1, i32* %157, align 4
  %158 = load i32, i32* %6, align 4
  %159 = load i32, i32* @XML_PARSE_NOWARNING, align 4
  %160 = and i32 %158, %159
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %162, label %166

162:                                              ; preds = %155
  %163 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %164 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %163, i32 0, i32 10
  %165 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %164, i32 0, i32 1
  store i32* null, i32** %165, align 8
  br label %166

166:                                              ; preds = %162, %155
  %167 = load i32, i32* %6, align 4
  %168 = load i32, i32* @XML_PARSE_NOERROR, align 4
  %169 = and i32 %167, %168
  %170 = icmp ne i32 %169, 0
  br i1 %170, label %171, label %175

171:                                              ; preds = %166
  %172 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %173 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %172, i32 0, i32 10
  %174 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %173, i32 0, i32 0
  store i32* null, i32** %174, align 8
  br label %175

175:                                              ; preds = %171, %166
  %176 = load i32, i32* @XML_PARSE_DTDVALID, align 4
  %177 = load i32, i32* %6, align 4
  %178 = sub nsw i32 %177, %176
  store i32 %178, i32* %6, align 4
  %179 = load i32, i32* @XML_PARSE_DTDVALID, align 4
  %180 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %181 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %180, i32 0, i32 1
  %182 = load i32, i32* %181, align 4
  %183 = or i32 %182, %179
  store i32 %183, i32* %181, align 4
  br label %187

184:                                              ; preds = %150
  %185 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %186 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %185, i32 0, i32 5
  store i32 0, i32* %186, align 4
  br label %187

187:                                              ; preds = %184, %175
  %188 = load i32, i32* %6, align 4
  %189 = load i32, i32* @XML_PARSE_NOWARNING, align 4
  %190 = and i32 %188, %189
  %191 = icmp ne i32 %190, 0
  br i1 %191, label %192, label %200

192:                                              ; preds = %187
  %193 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %194 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %193, i32 0, i32 9
  %195 = load %struct.TYPE_6__*, %struct.TYPE_6__** %194, align 8
  %196 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %195, i32 0, i32 8
  store i32* null, i32** %196, align 8
  %197 = load i32, i32* @XML_PARSE_NOWARNING, align 4
  %198 = load i32, i32* %6, align 4
  %199 = sub nsw i32 %198, %197
  store i32 %199, i32* %6, align 4
  br label %200

200:                                              ; preds = %192, %187
  %201 = load i32, i32* %6, align 4
  %202 = load i32, i32* @XML_PARSE_NOERROR, align 4
  %203 = and i32 %201, %202
  %204 = icmp ne i32 %203, 0
  br i1 %204, label %205, label %217

205:                                              ; preds = %200
  %206 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %207 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %206, i32 0, i32 9
  %208 = load %struct.TYPE_6__*, %struct.TYPE_6__** %207, align 8
  %209 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %208, i32 0, i32 7
  store i32* null, i32** %209, align 8
  %210 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %211 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %210, i32 0, i32 9
  %212 = load %struct.TYPE_6__*, %struct.TYPE_6__** %211, align 8
  %213 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %212, i32 0, i32 6
  store i32* null, i32** %213, align 8
  %214 = load i32, i32* @XML_PARSE_NOERROR, align 4
  %215 = load i32, i32* %6, align 4
  %216 = sub nsw i32 %215, %214
  store i32 %216, i32* %6, align 4
  br label %217

217:                                              ; preds = %205, %200
  %218 = load i32, i32* %6, align 4
  %219 = load i32, i32* @XML_PARSE_NODICT, align 4
  %220 = and i32 %218, %219
  %221 = icmp ne i32 %220, 0
  br i1 %221, label %222, label %233

222:                                              ; preds = %217
  %223 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %224 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %223, i32 0, i32 6
  store i32 0, i32* %224, align 8
  %225 = load i32, i32* @XML_PARSE_NODICT, align 4
  %226 = load i32, i32* %6, align 4
  %227 = sub nsw i32 %226, %225
  store i32 %227, i32* %6, align 4
  %228 = load i32, i32* @XML_PARSE_NODICT, align 4
  %229 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %230 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %229, i32 0, i32 1
  %231 = load i32, i32* %230, align 4
  %232 = or i32 %231, %228
  store i32 %232, i32* %230, align 4
  br label %236

233:                                              ; preds = %217
  %234 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %235 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %234, i32 0, i32 6
  store i32 1, i32* %235, align 8
  br label %236

236:                                              ; preds = %233, %222
  %237 = load i32, i32* %6, align 4
  %238 = load i32, i32* @XML_PARSE_NOCDATA, align 4
  %239 = and i32 %237, %238
  %240 = icmp ne i32 %239, 0
  br i1 %240, label %241, label %254

241:                                              ; preds = %236
  %242 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %243 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %242, i32 0, i32 9
  %244 = load %struct.TYPE_6__*, %struct.TYPE_6__** %243, align 8
  %245 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %244, i32 0, i32 1
  store i32* null, i32** %245, align 8
  %246 = load i32, i32* @XML_PARSE_NOCDATA, align 4
  %247 = load i32, i32* %6, align 4
  %248 = sub nsw i32 %247, %246
  store i32 %248, i32* %6, align 4
  %249 = load i32, i32* @XML_PARSE_NOCDATA, align 4
  %250 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %251 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %250, i32 0, i32 1
  %252 = load i32, i32* %251, align 4
  %253 = or i32 %252, %249
  store i32 %253, i32* %251, align 4
  br label %254

254:                                              ; preds = %241, %236
  %255 = load i32, i32* %6, align 4
  %256 = load i32, i32* @XML_PARSE_NSCLEAN, align 4
  %257 = and i32 %255, %256
  %258 = icmp ne i32 %257, 0
  br i1 %258, label %259, label %268

259:                                              ; preds = %254
  %260 = load i32, i32* @XML_PARSE_NSCLEAN, align 4
  %261 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %262 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %261, i32 0, i32 1
  %263 = load i32, i32* %262, align 4
  %264 = or i32 %263, %260
  store i32 %264, i32* %262, align 4
  %265 = load i32, i32* @XML_PARSE_NSCLEAN, align 4
  %266 = load i32, i32* %6, align 4
  %267 = sub nsw i32 %266, %265
  store i32 %267, i32* %6, align 4
  br label %268

268:                                              ; preds = %259, %254
  %269 = load i32, i32* %6, align 4
  %270 = load i32, i32* @XML_PARSE_NONET, align 4
  %271 = and i32 %269, %270
  %272 = icmp ne i32 %271, 0
  br i1 %272, label %273, label %282

273:                                              ; preds = %268
  %274 = load i32, i32* @XML_PARSE_NONET, align 4
  %275 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %276 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %275, i32 0, i32 1
  %277 = load i32, i32* %276, align 4
  %278 = or i32 %277, %274
  store i32 %278, i32* %276, align 4
  %279 = load i32, i32* @XML_PARSE_NONET, align 4
  %280 = load i32, i32* %6, align 4
  %281 = sub nsw i32 %280, %279
  store i32 %281, i32* %6, align 4
  br label %282

282:                                              ; preds = %273, %268
  %283 = load i32, i32* %6, align 4
  %284 = load i32, i32* @XML_PARSE_COMPACT, align 4
  %285 = and i32 %283, %284
  %286 = icmp ne i32 %285, 0
  br i1 %286, label %287, label %296

287:                                              ; preds = %282
  %288 = load i32, i32* @XML_PARSE_COMPACT, align 4
  %289 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %290 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %289, i32 0, i32 1
  %291 = load i32, i32* %290, align 4
  %292 = or i32 %291, %288
  store i32 %292, i32* %290, align 4
  %293 = load i32, i32* @XML_PARSE_COMPACT, align 4
  %294 = load i32, i32* %6, align 4
  %295 = sub nsw i32 %294, %293
  store i32 %295, i32* %6, align 4
  br label %296

296:                                              ; preds = %287, %282
  %297 = load i32, i32* %6, align 4
  %298 = load i32, i32* @XML_PARSE_OLD10, align 4
  %299 = and i32 %297, %298
  %300 = icmp ne i32 %299, 0
  br i1 %300, label %301, label %310

301:                                              ; preds = %296
  %302 = load i32, i32* @XML_PARSE_OLD10, align 4
  %303 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %304 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %303, i32 0, i32 1
  %305 = load i32, i32* %304, align 4
  %306 = or i32 %305, %302
  store i32 %306, i32* %304, align 4
  %307 = load i32, i32* @XML_PARSE_OLD10, align 4
  %308 = load i32, i32* %6, align 4
  %309 = sub nsw i32 %308, %307
  store i32 %309, i32* %6, align 4
  br label %310

310:                                              ; preds = %301, %296
  %311 = load i32, i32* %6, align 4
  %312 = load i32, i32* @XML_PARSE_NOBASEFIX, align 4
  %313 = and i32 %311, %312
  %314 = icmp ne i32 %313, 0
  br i1 %314, label %315, label %324

315:                                              ; preds = %310
  %316 = load i32, i32* @XML_PARSE_NOBASEFIX, align 4
  %317 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %318 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %317, i32 0, i32 1
  %319 = load i32, i32* %318, align 4
  %320 = or i32 %319, %316
  store i32 %320, i32* %318, align 4
  %321 = load i32, i32* @XML_PARSE_NOBASEFIX, align 4
  %322 = load i32, i32* %6, align 4
  %323 = sub nsw i32 %322, %321
  store i32 %323, i32* %6, align 4
  br label %324

324:                                              ; preds = %315, %310
  %325 = load i32, i32* %6, align 4
  %326 = load i32, i32* @XML_PARSE_HUGE, align 4
  %327 = and i32 %325, %326
  %328 = icmp ne i32 %327, 0
  br i1 %328, label %329, label %348

329:                                              ; preds = %324
  %330 = load i32, i32* @XML_PARSE_HUGE, align 4
  %331 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %332 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %331, i32 0, i32 1
  %333 = load i32, i32* %332, align 4
  %334 = or i32 %333, %330
  store i32 %334, i32* %332, align 4
  %335 = load i32, i32* @XML_PARSE_HUGE, align 4
  %336 = load i32, i32* %6, align 4
  %337 = sub nsw i32 %336, %335
  store i32 %337, i32* %6, align 4
  %338 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %339 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %338, i32 0, i32 8
  %340 = load i32*, i32** %339, align 8
  %341 = icmp ne i32* %340, null
  br i1 %341, label %342, label %347

342:                                              ; preds = %329
  %343 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %344 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %343, i32 0, i32 8
  %345 = load i32*, i32** %344, align 8
  %346 = call i32 @xmlDictSetLimit(i32* %345, i32 0)
  br label %347

347:                                              ; preds = %342, %329
  br label %348

348:                                              ; preds = %347, %324
  %349 = load i32, i32* %6, align 4
  %350 = load i32, i32* @XML_PARSE_OLDSAX, align 4
  %351 = and i32 %349, %350
  %352 = icmp ne i32 %351, 0
  br i1 %352, label %353, label %362

353:                                              ; preds = %348
  %354 = load i32, i32* @XML_PARSE_OLDSAX, align 4
  %355 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %356 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %355, i32 0, i32 1
  %357 = load i32, i32* %356, align 4
  %358 = or i32 %357, %354
  store i32 %358, i32* %356, align 4
  %359 = load i32, i32* @XML_PARSE_OLDSAX, align 4
  %360 = load i32, i32* %6, align 4
  %361 = sub nsw i32 %360, %359
  store i32 %361, i32* %6, align 4
  br label %362

362:                                              ; preds = %353, %348
  %363 = load i32, i32* %6, align 4
  %364 = load i32, i32* @XML_PARSE_IGNORE_ENC, align 4
  %365 = and i32 %363, %364
  %366 = icmp ne i32 %365, 0
  br i1 %366, label %367, label %376

367:                                              ; preds = %362
  %368 = load i32, i32* @XML_PARSE_IGNORE_ENC, align 4
  %369 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %370 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %369, i32 0, i32 1
  %371 = load i32, i32* %370, align 4
  %372 = or i32 %371, %368
  store i32 %372, i32* %370, align 4
  %373 = load i32, i32* @XML_PARSE_IGNORE_ENC, align 4
  %374 = load i32, i32* %6, align 4
  %375 = sub nsw i32 %374, %373
  store i32 %375, i32* %6, align 4
  br label %376

376:                                              ; preds = %367, %362
  %377 = load i32, i32* %6, align 4
  %378 = load i32, i32* @XML_PARSE_BIG_LINES, align 4
  %379 = and i32 %377, %378
  %380 = icmp ne i32 %379, 0
  br i1 %380, label %381, label %390

381:                                              ; preds = %376
  %382 = load i32, i32* @XML_PARSE_BIG_LINES, align 4
  %383 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %384 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %383, i32 0, i32 1
  %385 = load i32, i32* %384, align 4
  %386 = or i32 %385, %382
  store i32 %386, i32* %384, align 4
  %387 = load i32, i32* @XML_PARSE_BIG_LINES, align 4
  %388 = load i32, i32* %6, align 4
  %389 = sub nsw i32 %388, %387
  store i32 %389, i32* %6, align 4
  br label %390

390:                                              ; preds = %381, %376
  %391 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %392 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %391, i32 0, i32 7
  store i32 1, i32* %392, align 4
  %393 = load i32, i32* %6, align 4
  store i32 %393, i32* %4, align 4
  br label %394

394:                                              ; preds = %390, %10
  %395 = load i32, i32* %4, align 4
  ret i32 %395
}

declare dso_local i32 @xmlFree(i32*) #1

declare dso_local i32* @xmlStrdup(i32*) #1

declare dso_local i32 @xmlDictSetLimit(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
