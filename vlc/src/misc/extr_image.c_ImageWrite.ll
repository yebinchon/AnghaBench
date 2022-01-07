; ModuleID = '/home/carl/AnghaBench/vlc/src/misc/extr_image.c_ImageWrite.c'
source_filename = "/home/carl/AnghaBench/vlc/src/misc/extr_image.c_ImageWrite.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_33__ = type { i32, %struct.TYPE_35__*, %struct.TYPE_36__* }
%struct.TYPE_35__ = type { i32* (%struct.TYPE_35__*, i32*)*, %struct.TYPE_28__, %struct.TYPE_31__ }
%struct.TYPE_28__ = type { %struct.TYPE_30__ }
%struct.TYPE_30__ = type { i64, i64, i64 }
%struct.TYPE_31__ = type { i64, %struct.TYPE_29__ }
%struct.TYPE_29__ = type { i64, i64 }
%struct.TYPE_36__ = type { i32* (%struct.TYPE_36__*, i32*)*, %struct.TYPE_37__, %struct.TYPE_37__ }
%struct.TYPE_37__ = type { %struct.TYPE_30__ }
%struct.TYPE_32__ = type { i64, i64, i64 }
%struct.TYPE_34__ = type { %struct.TYPE_32__ }

@VIDEO_ES = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"no image encoded\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.TYPE_33__*, i32*, %struct.TYPE_32__*, %struct.TYPE_32__*)* @ImageWrite to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @ImageWrite(%struct.TYPE_33__* %0, i32* %1, %struct.TYPE_32__* %2, %struct.TYPE_32__* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_33__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_32__*, align 8
  %9 = alloca %struct.TYPE_32__*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.TYPE_34__, align 8
  store %struct.TYPE_33__* %0, %struct.TYPE_33__** %6, align 8
  store i32* %1, i32** %7, align 8
  store %struct.TYPE_32__* %2, %struct.TYPE_32__** %8, align 8
  store %struct.TYPE_32__* %3, %struct.TYPE_32__** %9, align 8
  %13 = load %struct.TYPE_33__*, %struct.TYPE_33__** %6, align 8
  %14 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %13, i32 0, i32 1
  %15 = load %struct.TYPE_35__*, %struct.TYPE_35__** %14, align 8
  %16 = icmp ne %struct.TYPE_35__* %15, null
  br i1 %16, label %17, label %59

17:                                               ; preds = %4
  %18 = load %struct.TYPE_33__*, %struct.TYPE_33__** %6, align 8
  %19 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %18, i32 0, i32 1
  %20 = load %struct.TYPE_35__*, %struct.TYPE_35__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %20, i32 0, i32 2
  %22 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load %struct.TYPE_32__*, %struct.TYPE_32__** %9, align 8
  %25 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %23, %26
  br i1 %27, label %52, label %28

28:                                               ; preds = %17
  %29 = load %struct.TYPE_33__*, %struct.TYPE_33__** %6, align 8
  %30 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %29, i32 0, i32 1
  %31 = load %struct.TYPE_35__*, %struct.TYPE_35__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %31, i32 0, i32 2
  %33 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load %struct.TYPE_32__*, %struct.TYPE_32__** %9, align 8
  %37 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %35, %38
  br i1 %39, label %52, label %40

40:                                               ; preds = %28
  %41 = load %struct.TYPE_33__*, %struct.TYPE_33__** %6, align 8
  %42 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %41, i32 0, i32 1
  %43 = load %struct.TYPE_35__*, %struct.TYPE_35__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %43, i32 0, i32 2
  %45 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %44, i32 0, i32 1
  %46 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = load %struct.TYPE_32__*, %struct.TYPE_32__** %9, align 8
  %49 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %48, i32 0, i32 2
  %50 = load i64, i64* %49, align 8
  %51 = icmp ne i64 %47, %50
  br i1 %51, label %52, label %59

52:                                               ; preds = %40, %28, %17
  %53 = load %struct.TYPE_33__*, %struct.TYPE_33__** %6, align 8
  %54 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %53, i32 0, i32 1
  %55 = load %struct.TYPE_35__*, %struct.TYPE_35__** %54, align 8
  %56 = call i32 @DeleteEncoder(%struct.TYPE_35__* %55)
  %57 = load %struct.TYPE_33__*, %struct.TYPE_33__** %6, align 8
  %58 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %57, i32 0, i32 1
  store %struct.TYPE_35__* null, %struct.TYPE_35__** %58, align 8
  br label %59

59:                                               ; preds = %52, %40, %4
  %60 = load %struct.TYPE_33__*, %struct.TYPE_33__** %6, align 8
  %61 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %60, i32 0, i32 1
  %62 = load %struct.TYPE_35__*, %struct.TYPE_35__** %61, align 8
  %63 = icmp ne %struct.TYPE_35__* %62, null
  br i1 %63, label %79, label %64

64:                                               ; preds = %59
  %65 = load %struct.TYPE_33__*, %struct.TYPE_33__** %6, align 8
  %66 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = load %struct.TYPE_32__*, %struct.TYPE_32__** %8, align 8
  %69 = load %struct.TYPE_32__*, %struct.TYPE_32__** %9, align 8
  %70 = call %struct.TYPE_35__* @CreateEncoder(i32 %67, %struct.TYPE_32__* %68, %struct.TYPE_32__* %69)
  %71 = load %struct.TYPE_33__*, %struct.TYPE_33__** %6, align 8
  %72 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %71, i32 0, i32 1
  store %struct.TYPE_35__* %70, %struct.TYPE_35__** %72, align 8
  %73 = load %struct.TYPE_33__*, %struct.TYPE_33__** %6, align 8
  %74 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %73, i32 0, i32 1
  %75 = load %struct.TYPE_35__*, %struct.TYPE_35__** %74, align 8
  %76 = icmp ne %struct.TYPE_35__* %75, null
  br i1 %76, label %78, label %77

77:                                               ; preds = %64
  store i32* null, i32** %5, align 8
  br label %285

78:                                               ; preds = %64
  br label %79

79:                                               ; preds = %78, %59
  %80 = load %struct.TYPE_33__*, %struct.TYPE_33__** %6, align 8
  %81 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %80, i32 0, i32 1
  %82 = load %struct.TYPE_35__*, %struct.TYPE_35__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %82, i32 0, i32 1
  %84 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = load %struct.TYPE_32__*, %struct.TYPE_32__** %8, align 8
  %88 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = icmp ne i64 %86, %89
  br i1 %90, label %124, label %91

91:                                               ; preds = %79
  %92 = load %struct.TYPE_33__*, %struct.TYPE_33__** %6, align 8
  %93 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %92, i32 0, i32 1
  %94 = load %struct.TYPE_35__*, %struct.TYPE_35__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %94, i32 0, i32 1
  %96 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %96, i32 0, i32 1
  %98 = load i64, i64* %97, align 8
  %99 = load %struct.TYPE_32__*, %struct.TYPE_32__** %8, align 8
  %100 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %99, i32 0, i32 1
  %101 = load i64, i64* %100, align 8
  %102 = icmp ne i64 %98, %101
  br i1 %102, label %124, label %103

103:                                              ; preds = %91
  %104 = load %struct.TYPE_33__*, %struct.TYPE_33__** %6, align 8
  %105 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %104, i32 0, i32 1
  %106 = load %struct.TYPE_35__*, %struct.TYPE_35__** %105, align 8
  %107 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %106, i32 0, i32 1
  %108 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %107, i32 0, i32 0
  %109 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %108, i32 0, i32 2
  %110 = load i64, i64* %109, align 8
  %111 = load %struct.TYPE_32__*, %struct.TYPE_32__** %8, align 8
  %112 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %111, i32 0, i32 2
  %113 = load i64, i64* %112, align 8
  %114 = icmp ne i64 %110, %113
  br i1 %114, label %124, label %115

115:                                              ; preds = %103
  %116 = load %struct.TYPE_33__*, %struct.TYPE_33__** %6, align 8
  %117 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %116, i32 0, i32 1
  %118 = load %struct.TYPE_35__*, %struct.TYPE_35__** %117, align 8
  %119 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %118, i32 0, i32 1
  %120 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %119, i32 0, i32 0
  %121 = load %struct.TYPE_32__*, %struct.TYPE_32__** %8, align 8
  %122 = call i32 @BitMapFormatIsSimilar(%struct.TYPE_30__* %120, %struct.TYPE_32__* %121)
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %264, label %124

124:                                              ; preds = %115, %103, %91, %79
  %125 = load %struct.TYPE_33__*, %struct.TYPE_33__** %6, align 8
  %126 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %125, i32 0, i32 2
  %127 = load %struct.TYPE_36__*, %struct.TYPE_36__** %126, align 8
  %128 = icmp ne %struct.TYPE_36__* %127, null
  br i1 %128, label %129, label %173

129:                                              ; preds = %124
  %130 = load %struct.TYPE_33__*, %struct.TYPE_33__** %6, align 8
  %131 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %130, i32 0, i32 2
  %132 = load %struct.TYPE_36__*, %struct.TYPE_36__** %131, align 8
  %133 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %132, i32 0, i32 2
  %134 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %133, i32 0, i32 0
  %135 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %134, i32 0, i32 0
  %136 = load i64, i64* %135, align 8
  %137 = load %struct.TYPE_32__*, %struct.TYPE_32__** %8, align 8
  %138 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %137, i32 0, i32 0
  %139 = load i64, i64* %138, align 8
  %140 = icmp ne i64 %136, %139
  br i1 %140, label %166, label %141

141:                                              ; preds = %129
  %142 = load %struct.TYPE_33__*, %struct.TYPE_33__** %6, align 8
  %143 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %142, i32 0, i32 2
  %144 = load %struct.TYPE_36__*, %struct.TYPE_36__** %143, align 8
  %145 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %144, i32 0, i32 1
  %146 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %145, i32 0, i32 0
  %147 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %146, i32 0, i32 0
  %148 = load i64, i64* %147, align 8
  %149 = load %struct.TYPE_33__*, %struct.TYPE_33__** %6, align 8
  %150 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %149, i32 0, i32 1
  %151 = load %struct.TYPE_35__*, %struct.TYPE_35__** %150, align 8
  %152 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %151, i32 0, i32 1
  %153 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %152, i32 0, i32 0
  %154 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %153, i32 0, i32 0
  %155 = load i64, i64* %154, align 8
  %156 = icmp ne i64 %148, %155
  br i1 %156, label %166, label %157

157:                                              ; preds = %141
  %158 = load %struct.TYPE_33__*, %struct.TYPE_33__** %6, align 8
  %159 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %158, i32 0, i32 2
  %160 = load %struct.TYPE_36__*, %struct.TYPE_36__** %159, align 8
  %161 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %160, i32 0, i32 2
  %162 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %161, i32 0, i32 0
  %163 = load %struct.TYPE_32__*, %struct.TYPE_32__** %8, align 8
  %164 = call i32 @BitMapFormatIsSimilar(%struct.TYPE_30__* %162, %struct.TYPE_32__* %163)
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %173, label %166

166:                                              ; preds = %157, %141, %129
  %167 = load %struct.TYPE_33__*, %struct.TYPE_33__** %6, align 8
  %168 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %167, i32 0, i32 2
  %169 = load %struct.TYPE_36__*, %struct.TYPE_36__** %168, align 8
  %170 = call i32 @DeleteConverter(%struct.TYPE_36__* %169)
  %171 = load %struct.TYPE_33__*, %struct.TYPE_33__** %6, align 8
  %172 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %171, i32 0, i32 2
  store %struct.TYPE_36__* null, %struct.TYPE_36__** %172, align 8
  br label %173

173:                                              ; preds = %166, %157, %124
  %174 = load %struct.TYPE_33__*, %struct.TYPE_33__** %6, align 8
  %175 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %174, i32 0, i32 2
  %176 = load %struct.TYPE_36__*, %struct.TYPE_36__** %175, align 8
  %177 = icmp ne %struct.TYPE_36__* %176, null
  br i1 %177, label %205, label %178

178:                                              ; preds = %173
  %179 = load i32, i32* @VIDEO_ES, align 4
  %180 = load %struct.TYPE_32__*, %struct.TYPE_32__** %8, align 8
  %181 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %180, i32 0, i32 0
  %182 = load i64, i64* %181, align 8
  %183 = call i32 @es_format_Init(%struct.TYPE_34__* %12, i32 %179, i64 %182)
  %184 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %12, i32 0, i32 0
  %185 = load %struct.TYPE_32__*, %struct.TYPE_32__** %8, align 8
  %186 = bitcast %struct.TYPE_32__* %184 to i8*
  %187 = bitcast %struct.TYPE_32__* %185 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %186, i8* align 8 %187, i64 24, i1 false)
  %188 = load %struct.TYPE_33__*, %struct.TYPE_33__** %6, align 8
  %189 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %188, i32 0, i32 0
  %190 = load i32, i32* %189, align 8
  %191 = load %struct.TYPE_33__*, %struct.TYPE_33__** %6, align 8
  %192 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %191, i32 0, i32 1
  %193 = load %struct.TYPE_35__*, %struct.TYPE_35__** %192, align 8
  %194 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %193, i32 0, i32 1
  %195 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %194, i32 0, i32 0
  %196 = call %struct.TYPE_36__* @CreateConverter(i32 %190, %struct.TYPE_34__* %12, %struct.TYPE_30__* %195)
  %197 = load %struct.TYPE_33__*, %struct.TYPE_33__** %6, align 8
  %198 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %197, i32 0, i32 2
  store %struct.TYPE_36__* %196, %struct.TYPE_36__** %198, align 8
  %199 = load %struct.TYPE_33__*, %struct.TYPE_33__** %6, align 8
  %200 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %199, i32 0, i32 2
  %201 = load %struct.TYPE_36__*, %struct.TYPE_36__** %200, align 8
  %202 = icmp ne %struct.TYPE_36__* %201, null
  br i1 %202, label %204, label %203

203:                                              ; preds = %178
  store i32* null, i32** %5, align 8
  br label %285

204:                                              ; preds = %178
  br label %231

205:                                              ; preds = %173
  %206 = load %struct.TYPE_33__*, %struct.TYPE_33__** %6, align 8
  %207 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %206, i32 0, i32 2
  %208 = load %struct.TYPE_36__*, %struct.TYPE_36__** %207, align 8
  %209 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %208, i32 0, i32 2
  %210 = call i32 @es_format_Clean(%struct.TYPE_37__* %209)
  %211 = load %struct.TYPE_33__*, %struct.TYPE_33__** %6, align 8
  %212 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %211, i32 0, i32 2
  %213 = load %struct.TYPE_36__*, %struct.TYPE_36__** %212, align 8
  %214 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %213, i32 0, i32 2
  %215 = load %struct.TYPE_32__*, %struct.TYPE_32__** %8, align 8
  %216 = call i32 @es_format_InitFromVideo(%struct.TYPE_37__* %214, %struct.TYPE_32__* %215)
  %217 = load %struct.TYPE_33__*, %struct.TYPE_33__** %6, align 8
  %218 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %217, i32 0, i32 2
  %219 = load %struct.TYPE_36__*, %struct.TYPE_36__** %218, align 8
  %220 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %219, i32 0, i32 1
  %221 = call i32 @es_format_Clean(%struct.TYPE_37__* %220)
  %222 = load %struct.TYPE_33__*, %struct.TYPE_33__** %6, align 8
  %223 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %222, i32 0, i32 2
  %224 = load %struct.TYPE_36__*, %struct.TYPE_36__** %223, align 8
  %225 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %224, i32 0, i32 1
  %226 = load %struct.TYPE_33__*, %struct.TYPE_33__** %6, align 8
  %227 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %226, i32 0, i32 1
  %228 = load %struct.TYPE_35__*, %struct.TYPE_35__** %227, align 8
  %229 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %228, i32 0, i32 1
  %230 = call i32 @es_format_Copy(%struct.TYPE_37__* %225, %struct.TYPE_28__* %229)
  br label %231

231:                                              ; preds = %205, %204
  %232 = load i32*, i32** %7, align 8
  %233 = call i32 @picture_Hold(i32* %232)
  %234 = load %struct.TYPE_33__*, %struct.TYPE_33__** %6, align 8
  %235 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %234, i32 0, i32 2
  %236 = load %struct.TYPE_36__*, %struct.TYPE_36__** %235, align 8
  %237 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %236, i32 0, i32 0
  %238 = load i32* (%struct.TYPE_36__*, i32*)*, i32* (%struct.TYPE_36__*, i32*)** %237, align 8
  %239 = load %struct.TYPE_33__*, %struct.TYPE_33__** %6, align 8
  %240 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %239, i32 0, i32 2
  %241 = load %struct.TYPE_36__*, %struct.TYPE_36__** %240, align 8
  %242 = load i32*, i32** %7, align 8
  %243 = call i32* %238(%struct.TYPE_36__* %241, i32* %242)
  store i32* %243, i32** %11, align 8
  %244 = load i32*, i32** %11, align 8
  %245 = icmp ne i32* %244, null
  %246 = zext i1 %245 to i32
  %247 = call i64 @likely(i32 %246)
  %248 = icmp ne i64 %247, 0
  br i1 %248, label %249, label %262

249:                                              ; preds = %231
  %250 = load %struct.TYPE_33__*, %struct.TYPE_33__** %6, align 8
  %251 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %250, i32 0, i32 1
  %252 = load %struct.TYPE_35__*, %struct.TYPE_35__** %251, align 8
  %253 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %252, i32 0, i32 0
  %254 = load i32* (%struct.TYPE_35__*, i32*)*, i32* (%struct.TYPE_35__*, i32*)** %253, align 8
  %255 = load %struct.TYPE_33__*, %struct.TYPE_33__** %6, align 8
  %256 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %255, i32 0, i32 1
  %257 = load %struct.TYPE_35__*, %struct.TYPE_35__** %256, align 8
  %258 = load i32*, i32** %11, align 8
  %259 = call i32* %254(%struct.TYPE_35__* %257, i32* %258)
  store i32* %259, i32** %10, align 8
  %260 = load i32*, i32** %11, align 8
  %261 = call i32 @picture_Release(i32* %260)
  br label %263

262:                                              ; preds = %231
  store i32* null, i32** %10, align 8
  br label %263

263:                                              ; preds = %262, %249
  br label %275

264:                                              ; preds = %115
  %265 = load %struct.TYPE_33__*, %struct.TYPE_33__** %6, align 8
  %266 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %265, i32 0, i32 1
  %267 = load %struct.TYPE_35__*, %struct.TYPE_35__** %266, align 8
  %268 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %267, i32 0, i32 0
  %269 = load i32* (%struct.TYPE_35__*, i32*)*, i32* (%struct.TYPE_35__*, i32*)** %268, align 8
  %270 = load %struct.TYPE_33__*, %struct.TYPE_33__** %6, align 8
  %271 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %270, i32 0, i32 1
  %272 = load %struct.TYPE_35__*, %struct.TYPE_35__** %271, align 8
  %273 = load i32*, i32** %7, align 8
  %274 = call i32* %269(%struct.TYPE_35__* %272, i32* %273)
  store i32* %274, i32** %10, align 8
  br label %275

275:                                              ; preds = %264, %263
  %276 = load i32*, i32** %10, align 8
  %277 = icmp ne i32* %276, null
  br i1 %277, label %283, label %278

278:                                              ; preds = %275
  %279 = load %struct.TYPE_33__*, %struct.TYPE_33__** %6, align 8
  %280 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %279, i32 0, i32 0
  %281 = load i32, i32* %280, align 8
  %282 = call i32 @msg_Dbg(i32 %281, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  store i32* null, i32** %5, align 8
  br label %285

283:                                              ; preds = %275
  %284 = load i32*, i32** %10, align 8
  store i32* %284, i32** %5, align 8
  br label %285

285:                                              ; preds = %283, %278, %203, %77
  %286 = load i32*, i32** %5, align 8
  ret i32* %286
}

declare dso_local i32 @DeleteEncoder(%struct.TYPE_35__*) #1

declare dso_local %struct.TYPE_35__* @CreateEncoder(i32, %struct.TYPE_32__*, %struct.TYPE_32__*) #1

declare dso_local i32 @BitMapFormatIsSimilar(%struct.TYPE_30__*, %struct.TYPE_32__*) #1

declare dso_local i32 @DeleteConverter(%struct.TYPE_36__*) #1

declare dso_local i32 @es_format_Init(%struct.TYPE_34__*, i32, i64) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local %struct.TYPE_36__* @CreateConverter(i32, %struct.TYPE_34__*, %struct.TYPE_30__*) #1

declare dso_local i32 @es_format_Clean(%struct.TYPE_37__*) #1

declare dso_local i32 @es_format_InitFromVideo(%struct.TYPE_37__*, %struct.TYPE_32__*) #1

declare dso_local i32 @es_format_Copy(%struct.TYPE_37__*, %struct.TYPE_28__*) #1

declare dso_local i32 @picture_Hold(i32*) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @picture_Release(i32*) #1

declare dso_local i32 @msg_Dbg(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
