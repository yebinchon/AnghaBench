; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/riched20/extr_writer.c_ME_StreamOutRTFFontAndColorTbl.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/riched20/extr_writer.c_ME_StreamOutRTFFontAndColorTbl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_37__ = type { i32, i32, i32*, %struct.TYPE_24__* }
%struct.TYPE_24__ = type { i64, i32 }
%struct.TYPE_25__ = type { %struct.TYPE_35__ }
%struct.TYPE_35__ = type { %struct.TYPE_34__, %struct.TYPE_33__, %struct.TYPE_31__ }
%struct.TYPE_34__ = type { %struct.TYPE_36__*, %struct.TYPE_28__* }
%struct.TYPE_36__ = type { %struct.TYPE_30__, %struct.TYPE_29__ }
%struct.TYPE_30__ = type { %struct.TYPE_28__* }
%struct.TYPE_29__ = type { i64 }
%struct.TYPE_28__ = type { %struct.TYPE_27__ }
%struct.TYPE_27__ = type { i32, i32, i32, i32 }
%struct.TYPE_33__ = type { %struct.TYPE_32__ }
%struct.TYPE_32__ = type { %struct.TYPE_26__, %struct.TYPE_26__, %struct.TYPE_26__, %struct.TYPE_26__ }
%struct.TYPE_26__ = type { i64, i32 }
%struct.TYPE_31__ = type { %struct.TYPE_25__* }

@CFM_COLOR = common dso_local global i32 0, align 4
@CFE_AUTOCOLOR = common dso_local global i32 0, align 4
@CFM_BACKCOLOR = common dso_local global i32 0, align 4
@CFE_AUTOBACKCOLOR = common dso_local global i32 0, align 4
@diRun = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"{\\fonttbl\00", align 1
@FALSE = common dso_local global i32 0, align 4
@DEFAULT_CHARSET = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [18 x i8] c"{\\f%u\\fcharset%u \00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"{\\f%u \00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c";}\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"}\0D\0A\00", align 1
@.str.5 = private unnamed_addr constant [12 x i8] c"{\\colortbl;\00", align 1
@.str.6 = private unnamed_addr constant [23 x i8] c"\\red%u\\green%u\\blue%u;\00", align 1
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_37__*, %struct.TYPE_25__*, %struct.TYPE_25__*)* @ME_StreamOutRTFFontAndColorTbl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ME_StreamOutRTFFontAndColorTbl(%struct.TYPE_37__* %0, %struct.TYPE_25__* %1, %struct.TYPE_25__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_37__*, align 8
  %6 = alloca %struct.TYPE_25__*, align 8
  %7 = alloca %struct.TYPE_25__*, align 8
  %8 = alloca %struct.TYPE_25__*, align 8
  %9 = alloca %struct.TYPE_24__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_25__*, align 8
  %12 = alloca %struct.TYPE_36__*, align 8
  %13 = alloca %struct.TYPE_27__*, align 8
  %14 = alloca [4 x %struct.TYPE_26__*], align 16
  store %struct.TYPE_37__* %0, %struct.TYPE_37__** %5, align 8
  store %struct.TYPE_25__* %1, %struct.TYPE_25__** %6, align 8
  store %struct.TYPE_25__* %2, %struct.TYPE_25__** %7, align 8
  %15 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  store %struct.TYPE_25__* %15, %struct.TYPE_25__** %8, align 8
  %16 = load %struct.TYPE_37__*, %struct.TYPE_37__** %5, align 8
  %17 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %16, i32 0, i32 3
  %18 = load %struct.TYPE_24__*, %struct.TYPE_24__** %17, align 8
  store %struct.TYPE_24__* %18, %struct.TYPE_24__** %9, align 8
  store %struct.TYPE_25__* null, %struct.TYPE_25__** %11, align 8
  store %struct.TYPE_36__* null, %struct.TYPE_36__** %12, align 8
  br label %19

19:                                               ; preds = %173, %3
  %20 = load %struct.TYPE_25__*, %struct.TYPE_25__** %8, align 8
  %21 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %22, i32 0, i32 1
  %24 = load %struct.TYPE_28__*, %struct.TYPE_28__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %24, i32 0, i32 0
  store %struct.TYPE_27__* %25, %struct.TYPE_27__** %13, align 8
  %26 = load %struct.TYPE_37__*, %struct.TYPE_37__** %5, align 8
  %27 = load %struct.TYPE_25__*, %struct.TYPE_25__** %8, align 8
  %28 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %29, i32 0, i32 1
  %31 = load %struct.TYPE_28__*, %struct.TYPE_28__** %30, align 8
  %32 = call i32 @add_font_to_fonttbl(%struct.TYPE_37__* %26, %struct.TYPE_28__* %31)
  %33 = load %struct.TYPE_27__*, %struct.TYPE_27__** %13, align 8
  %34 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @CFM_COLOR, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %52

39:                                               ; preds = %19
  %40 = load %struct.TYPE_27__*, %struct.TYPE_27__** %13, align 8
  %41 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* @CFE_AUTOCOLOR, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %52, label %46

46:                                               ; preds = %39
  %47 = load %struct.TYPE_37__*, %struct.TYPE_37__** %5, align 8
  %48 = load %struct.TYPE_27__*, %struct.TYPE_27__** %13, align 8
  %49 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %48, i32 0, i32 3
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @add_color_to_colortbl(%struct.TYPE_37__* %47, i32 %50)
  br label %52

52:                                               ; preds = %46, %39, %19
  %53 = load %struct.TYPE_27__*, %struct.TYPE_27__** %13, align 8
  %54 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* @CFM_BACKCOLOR, align 4
  %57 = and i32 %55, %56
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %72

59:                                               ; preds = %52
  %60 = load %struct.TYPE_27__*, %struct.TYPE_27__** %13, align 8
  %61 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* @CFE_AUTOBACKCOLOR, align 4
  %64 = and i32 %62, %63
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %72, label %66

66:                                               ; preds = %59
  %67 = load %struct.TYPE_37__*, %struct.TYPE_37__** %5, align 8
  %68 = load %struct.TYPE_27__*, %struct.TYPE_27__** %13, align 8
  %69 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %68, i32 0, i32 2
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @add_color_to_colortbl(%struct.TYPE_37__* %67, i32 %70)
  br label %72

72:                                               ; preds = %66, %59, %52
  %73 = load %struct.TYPE_25__*, %struct.TYPE_25__** %8, align 8
  %74 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %75, i32 0, i32 0
  %77 = load %struct.TYPE_36__*, %struct.TYPE_36__** %76, align 8
  %78 = load %struct.TYPE_36__*, %struct.TYPE_36__** %12, align 8
  %79 = icmp ne %struct.TYPE_36__* %77, %78
  br i1 %79, label %80, label %164

80:                                               ; preds = %72
  %81 = load %struct.TYPE_25__*, %struct.TYPE_25__** %8, align 8
  %82 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %83, i32 0, i32 0
  %85 = load %struct.TYPE_36__*, %struct.TYPE_36__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %85, i32 0, i32 1
  %87 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %101

90:                                               ; preds = %80
  %91 = load %struct.TYPE_37__*, %struct.TYPE_37__** %5, align 8
  %92 = load %struct.TYPE_25__*, %struct.TYPE_25__** %8, align 8
  %93 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %94, i32 0, i32 0
  %96 = load %struct.TYPE_36__*, %struct.TYPE_36__** %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %96, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %97, i32 0, i32 0
  %99 = load %struct.TYPE_28__*, %struct.TYPE_28__** %98, align 8
  %100 = call i32 @add_font_to_fonttbl(%struct.TYPE_37__* %91, %struct.TYPE_28__* %99)
  br label %101

101:                                              ; preds = %90, %80
  %102 = load %struct.TYPE_25__*, %struct.TYPE_25__** %8, align 8
  %103 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %102, i32 0, i32 0
  %104 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %103, i32 0, i32 2
  %105 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %104, i32 0, i32 0
  %106 = load %struct.TYPE_25__*, %struct.TYPE_25__** %105, align 8
  store %struct.TYPE_25__* %106, %struct.TYPE_25__** %11, align 8
  %107 = icmp ne %struct.TYPE_25__* %106, null
  br i1 %107, label %108, label %158

108:                                              ; preds = %101
  %109 = getelementptr inbounds [4 x %struct.TYPE_26__*], [4 x %struct.TYPE_26__*]* %14, i64 0, i64 0
  %110 = load %struct.TYPE_25__*, %struct.TYPE_25__** %11, align 8
  %111 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %110, i32 0, i32 0
  %112 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %111, i32 0, i32 1
  %113 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %112, i32 0, i32 0
  %114 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %113, i32 0, i32 3
  store %struct.TYPE_26__* %114, %struct.TYPE_26__** %109, align 8
  %115 = getelementptr inbounds %struct.TYPE_26__*, %struct.TYPE_26__** %109, i64 1
  %116 = load %struct.TYPE_25__*, %struct.TYPE_25__** %11, align 8
  %117 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %116, i32 0, i32 0
  %118 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %117, i32 0, i32 1
  %119 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %118, i32 0, i32 0
  %120 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %119, i32 0, i32 2
  store %struct.TYPE_26__* %120, %struct.TYPE_26__** %115, align 8
  %121 = getelementptr inbounds %struct.TYPE_26__*, %struct.TYPE_26__** %115, i64 1
  %122 = load %struct.TYPE_25__*, %struct.TYPE_25__** %11, align 8
  %123 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %122, i32 0, i32 0
  %124 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %123, i32 0, i32 1
  %125 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %124, i32 0, i32 0
  %126 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %125, i32 0, i32 1
  store %struct.TYPE_26__* %126, %struct.TYPE_26__** %121, align 8
  %127 = getelementptr inbounds %struct.TYPE_26__*, %struct.TYPE_26__** %121, i64 1
  %128 = load %struct.TYPE_25__*, %struct.TYPE_25__** %11, align 8
  %129 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %128, i32 0, i32 0
  %130 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %129, i32 0, i32 1
  %131 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %130, i32 0, i32 0
  %132 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %131, i32 0, i32 0
  store %struct.TYPE_26__* %132, %struct.TYPE_26__** %127, align 8
  store i32 0, i32* %10, align 4
  br label %133

133:                                              ; preds = %154, %108
  %134 = load i32, i32* %10, align 4
  %135 = icmp ult i32 %134, 4
  br i1 %135, label %136, label %157

136:                                              ; preds = %133
  %137 = load i32, i32* %10, align 4
  %138 = zext i32 %137 to i64
  %139 = getelementptr inbounds [4 x %struct.TYPE_26__*], [4 x %struct.TYPE_26__*]* %14, i64 0, i64 %138
  %140 = load %struct.TYPE_26__*, %struct.TYPE_26__** %139, align 8
  %141 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %140, i32 0, i32 0
  %142 = load i64, i64* %141, align 8
  %143 = icmp sgt i64 %142, 0
  br i1 %143, label %144, label %153

144:                                              ; preds = %136
  %145 = load %struct.TYPE_37__*, %struct.TYPE_37__** %5, align 8
  %146 = load i32, i32* %10, align 4
  %147 = zext i32 %146 to i64
  %148 = getelementptr inbounds [4 x %struct.TYPE_26__*], [4 x %struct.TYPE_26__*]* %14, i64 0, i64 %147
  %149 = load %struct.TYPE_26__*, %struct.TYPE_26__** %148, align 8
  %150 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %149, i32 0, i32 1
  %151 = load i32, i32* %150, align 8
  %152 = call i32 @add_color_to_colortbl(%struct.TYPE_37__* %145, i32 %151)
  br label %153

153:                                              ; preds = %144, %136
  br label %154

154:                                              ; preds = %153
  %155 = load i32, i32* %10, align 4
  %156 = add i32 %155, 1
  store i32 %156, i32* %10, align 4
  br label %133

157:                                              ; preds = %133
  br label %158

158:                                              ; preds = %157, %101
  %159 = load %struct.TYPE_25__*, %struct.TYPE_25__** %8, align 8
  %160 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %159, i32 0, i32 0
  %161 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %160, i32 0, i32 0
  %162 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %161, i32 0, i32 0
  %163 = load %struct.TYPE_36__*, %struct.TYPE_36__** %162, align 8
  store %struct.TYPE_36__* %163, %struct.TYPE_36__** %12, align 8
  br label %164

164:                                              ; preds = %158, %72
  %165 = load %struct.TYPE_25__*, %struct.TYPE_25__** %8, align 8
  %166 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %167 = icmp eq %struct.TYPE_25__* %165, %166
  br i1 %167, label %168, label %169

168:                                              ; preds = %164
  br label %176

169:                                              ; preds = %164
  %170 = load %struct.TYPE_25__*, %struct.TYPE_25__** %8, align 8
  %171 = load i32, i32* @diRun, align 4
  %172 = call %struct.TYPE_25__* @ME_FindItemFwd(%struct.TYPE_25__* %170, i32 %171)
  store %struct.TYPE_25__* %172, %struct.TYPE_25__** %8, align 8
  br label %173

173:                                              ; preds = %169
  %174 = load %struct.TYPE_25__*, %struct.TYPE_25__** %8, align 8
  %175 = icmp ne %struct.TYPE_25__* %174, null
  br i1 %175, label %19, label %176

176:                                              ; preds = %173, %168
  %177 = load %struct.TYPE_37__*, %struct.TYPE_37__** %5, align 8
  %178 = call i32 (%struct.TYPE_37__*, i8*, ...) @ME_StreamOutPrint(%struct.TYPE_37__* %177, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  %179 = icmp ne i32 %178, 0
  br i1 %179, label %182, label %180

180:                                              ; preds = %176
  %181 = load i32, i32* @FALSE, align 4
  store i32 %181, i32* %4, align 4
  br label %305

182:                                              ; preds = %176
  store i32 0, i32* %10, align 4
  br label %183

183:                                              ; preds = %239, %182
  %184 = load i32, i32* %10, align 4
  %185 = load %struct.TYPE_37__*, %struct.TYPE_37__** %5, align 8
  %186 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %185, i32 0, i32 0
  %187 = load i32, i32* %186, align 8
  %188 = icmp ult i32 %184, %187
  br i1 %188, label %189, label %242

189:                                              ; preds = %183
  %190 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %191 = load i32, i32* %10, align 4
  %192 = zext i32 %191 to i64
  %193 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %190, i64 %192
  %194 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %193, i32 0, i32 0
  %195 = load i64, i64* %194, align 8
  %196 = load i64, i64* @DEFAULT_CHARSET, align 8
  %197 = icmp ne i64 %195, %196
  br i1 %197, label %198, label %212

198:                                              ; preds = %189
  %199 = load %struct.TYPE_37__*, %struct.TYPE_37__** %5, align 8
  %200 = load i32, i32* %10, align 4
  %201 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %202 = load i32, i32* %10, align 4
  %203 = zext i32 %202 to i64
  %204 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %201, i64 %203
  %205 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %204, i32 0, i32 0
  %206 = load i64, i64* %205, align 8
  %207 = call i32 (%struct.TYPE_37__*, i8*, ...) @ME_StreamOutPrint(%struct.TYPE_37__* %199, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i32 %200, i64 %206)
  %208 = icmp ne i32 %207, 0
  br i1 %208, label %211, label %209

209:                                              ; preds = %198
  %210 = load i32, i32* @FALSE, align 4
  store i32 %210, i32* %4, align 4
  br label %305

211:                                              ; preds = %198
  br label %220

212:                                              ; preds = %189
  %213 = load %struct.TYPE_37__*, %struct.TYPE_37__** %5, align 8
  %214 = load i32, i32* %10, align 4
  %215 = call i32 (%struct.TYPE_37__*, i8*, ...) @ME_StreamOutPrint(%struct.TYPE_37__* %213, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i32 %214)
  %216 = icmp ne i32 %215, 0
  br i1 %216, label %219, label %217

217:                                              ; preds = %212
  %218 = load i32, i32* @FALSE, align 4
  store i32 %218, i32* %4, align 4
  br label %305

219:                                              ; preds = %212
  br label %220

220:                                              ; preds = %219, %211
  %221 = load %struct.TYPE_37__*, %struct.TYPE_37__** %5, align 8
  %222 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %223 = load i32, i32* %10, align 4
  %224 = zext i32 %223 to i64
  %225 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %222, i64 %224
  %226 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %225, i32 0, i32 1
  %227 = load i32, i32* %226, align 8
  %228 = call i32 @ME_StreamOutRTFText(%struct.TYPE_37__* %221, i32 %227, i32 -1)
  %229 = icmp ne i32 %228, 0
  br i1 %229, label %232, label %230

230:                                              ; preds = %220
  %231 = load i32, i32* @FALSE, align 4
  store i32 %231, i32* %4, align 4
  br label %305

232:                                              ; preds = %220
  %233 = load %struct.TYPE_37__*, %struct.TYPE_37__** %5, align 8
  %234 = call i32 (%struct.TYPE_37__*, i8*, ...) @ME_StreamOutPrint(%struct.TYPE_37__* %233, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0))
  %235 = icmp ne i32 %234, 0
  br i1 %235, label %238, label %236

236:                                              ; preds = %232
  %237 = load i32, i32* @FALSE, align 4
  store i32 %237, i32* %4, align 4
  br label %305

238:                                              ; preds = %232
  br label %239

239:                                              ; preds = %238
  %240 = load i32, i32* %10, align 4
  %241 = add i32 %240, 1
  store i32 %241, i32* %10, align 4
  br label %183

242:                                              ; preds = %183
  %243 = load %struct.TYPE_37__*, %struct.TYPE_37__** %5, align 8
  %244 = call i32 (%struct.TYPE_37__*, i8*, ...) @ME_StreamOutPrint(%struct.TYPE_37__* %243, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0))
  %245 = icmp ne i32 %244, 0
  br i1 %245, label %248, label %246

246:                                              ; preds = %242
  %247 = load i32, i32* @FALSE, align 4
  store i32 %247, i32* %4, align 4
  br label %305

248:                                              ; preds = %242
  %249 = load %struct.TYPE_37__*, %struct.TYPE_37__** %5, align 8
  %250 = call i32 (%struct.TYPE_37__*, i8*, ...) @ME_StreamOutPrint(%struct.TYPE_37__* %249, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i64 0, i64 0))
  %251 = icmp ne i32 %250, 0
  br i1 %251, label %254, label %252

252:                                              ; preds = %248
  %253 = load i32, i32* @FALSE, align 4
  store i32 %253, i32* %4, align 4
  br label %305

254:                                              ; preds = %248
  store i32 1, i32* %10, align 4
  br label %255

255:                                              ; preds = %294, %254
  %256 = load i32, i32* %10, align 4
  %257 = load %struct.TYPE_37__*, %struct.TYPE_37__** %5, align 8
  %258 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %257, i32 0, i32 1
  %259 = load i32, i32* %258, align 4
  %260 = icmp ult i32 %256, %259
  br i1 %260, label %261, label %297

261:                                              ; preds = %255
  %262 = load %struct.TYPE_37__*, %struct.TYPE_37__** %5, align 8
  %263 = load %struct.TYPE_37__*, %struct.TYPE_37__** %5, align 8
  %264 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %263, i32 0, i32 2
  %265 = load i32*, i32** %264, align 8
  %266 = load i32, i32* %10, align 4
  %267 = zext i32 %266 to i64
  %268 = getelementptr inbounds i32, i32* %265, i64 %267
  %269 = load i32, i32* %268, align 4
  %270 = and i32 %269, 255
  %271 = load %struct.TYPE_37__*, %struct.TYPE_37__** %5, align 8
  %272 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %271, i32 0, i32 2
  %273 = load i32*, i32** %272, align 8
  %274 = load i32, i32* %10, align 4
  %275 = zext i32 %274 to i64
  %276 = getelementptr inbounds i32, i32* %273, i64 %275
  %277 = load i32, i32* %276, align 4
  %278 = ashr i32 %277, 8
  %279 = and i32 %278, 255
  %280 = load %struct.TYPE_37__*, %struct.TYPE_37__** %5, align 8
  %281 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %280, i32 0, i32 2
  %282 = load i32*, i32** %281, align 8
  %283 = load i32, i32* %10, align 4
  %284 = zext i32 %283 to i64
  %285 = getelementptr inbounds i32, i32* %282, i64 %284
  %286 = load i32, i32* %285, align 4
  %287 = ashr i32 %286, 16
  %288 = and i32 %287, 255
  %289 = call i32 (%struct.TYPE_37__*, i8*, ...) @ME_StreamOutPrint(%struct.TYPE_37__* %262, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.6, i64 0, i64 0), i32 %270, i32 %279, i32 %288)
  %290 = icmp ne i32 %289, 0
  br i1 %290, label %293, label %291

291:                                              ; preds = %261
  %292 = load i32, i32* @FALSE, align 4
  store i32 %292, i32* %4, align 4
  br label %305

293:                                              ; preds = %261
  br label %294

294:                                              ; preds = %293
  %295 = load i32, i32* %10, align 4
  %296 = add i32 %295, 1
  store i32 %296, i32* %10, align 4
  br label %255

297:                                              ; preds = %255
  %298 = load %struct.TYPE_37__*, %struct.TYPE_37__** %5, align 8
  %299 = call i32 (%struct.TYPE_37__*, i8*, ...) @ME_StreamOutPrint(%struct.TYPE_37__* %298, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0))
  %300 = icmp ne i32 %299, 0
  br i1 %300, label %303, label %301

301:                                              ; preds = %297
  %302 = load i32, i32* @FALSE, align 4
  store i32 %302, i32* %4, align 4
  br label %305

303:                                              ; preds = %297
  %304 = load i32, i32* @TRUE, align 4
  store i32 %304, i32* %4, align 4
  br label %305

305:                                              ; preds = %303, %301, %291, %252, %246, %236, %230, %217, %209, %180
  %306 = load i32, i32* %4, align 4
  ret i32 %306
}

declare dso_local i32 @add_font_to_fonttbl(%struct.TYPE_37__*, %struct.TYPE_28__*) #1

declare dso_local i32 @add_color_to_colortbl(%struct.TYPE_37__*, i32) #1

declare dso_local %struct.TYPE_25__* @ME_FindItemFwd(%struct.TYPE_25__*, i32) #1

declare dso_local i32 @ME_StreamOutPrint(%struct.TYPE_37__*, i8*, ...) #1

declare dso_local i32 @ME_StreamOutRTFText(%struct.TYPE_37__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
