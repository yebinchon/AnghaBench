; ModuleID = '/home/carl/AnghaBench/tengine/src/event/extr_ngx_event_pipe.c_ngx_event_pipe_write_to_downstream.c'
source_filename = "/home/carl/AnghaBench/tengine/src/event/extr_ngx_event_pipe.c_ngx_event_pipe_write_to_downstream.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_21__ = type { i32, i64 (i32, %struct.TYPE_23__*)*, i32, i32, %struct.TYPE_18__*, i32, i64, %struct.TYPE_23__*, i32, %struct.TYPE_23__*, i32, i32, i32, %struct.TYPE_23__*, i64, %struct.TYPE_23__*, i64, i64, i64, %struct.TYPE_22__* }
%struct.TYPE_18__ = type { i64 }
%struct.TYPE_23__ = type { %struct.TYPE_20__*, %struct.TYPE_23__* }
%struct.TYPE_20__ = type { i32, i64, i32*, i64, i32*, i32*, i64, i64, i64 }
%struct.TYPE_22__ = type { %struct.TYPE_19__*, i32 }
%struct.TYPE_19__ = type { i64, i64 }

@NGX_LOG_DEBUG_EVENT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"pipe write downstream: %d\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"pipe write downstream flush out\00", align 1
@NGX_ERROR = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [31 x i8] c"pipe write downstream flush in\00", align 1
@.str.3 = private unnamed_addr constant [27 x i8] c"pipe write downstream done\00", align 1
@.str.4 = private unnamed_addr constant [21 x i8] c"pipe write busy: %uz\00", align 1
@NGX_LOG_ALERT = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [34 x i8] c"recycled buffer in pipe out chain\00", align 1
@.str.6 = private unnamed_addr constant [27 x i8] c"pipe write buf ls:%d %p %z\00", align 1
@.str.7 = private unnamed_addr constant [26 x i8] c"pipe write: out:%p, f:%ui\00", align 1
@NGX_BUSY = common dso_local global i64 0, align 8
@NGX_OK = common dso_local global i64 0, align 8
@NGX_ABORT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_21__*)* @ngx_event_pipe_write_to_downstream to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ngx_event_pipe_write_to_downstream(%struct.TYPE_21__* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.TYPE_21__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_23__*, align 8
  %11 = alloca %struct.TYPE_23__**, align 8
  %12 = alloca %struct.TYPE_23__*, align 8
  %13 = alloca %struct.TYPE_22__*, align 8
  store %struct.TYPE_21__* %0, %struct.TYPE_21__** %3, align 8
  %14 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %15 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %14, i32 0, i32 19
  %16 = load %struct.TYPE_22__*, %struct.TYPE_22__** %15, align 8
  store %struct.TYPE_22__* %16, %struct.TYPE_22__** %13, align 8
  %17 = load i32, i32* @NGX_LOG_DEBUG_EVENT, align 4
  %18 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %19 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %18, i32 0, i32 12
  %20 = load i32, i32* %19, align 8
  %21 = load %struct.TYPE_22__*, %struct.TYPE_22__** %13, align 8
  %22 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %21, i32 0, i32 0
  %23 = load %struct.TYPE_19__*, %struct.TYPE_19__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = call i32 @ngx_log_debug1(i32 %17, i32 %20, i32 0, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i64 %25)
  store i32 0, i32* %8, align 4
  br label %27

27:                                               ; preds = %541, %1
  %28 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %29 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %27
  %33 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %34 = call i64 @ngx_event_pipe_drain_chains(%struct.TYPE_21__* %33)
  store i64 %34, i64* %2, align 8
  br label %544

35:                                               ; preds = %27
  %36 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %37 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %36, i32 0, i32 18
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %50, label %40

40:                                               ; preds = %35
  %41 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %42 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %41, i32 0, i32 17
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %50, label %45

45:                                               ; preds = %40
  %46 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %47 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %46, i32 0, i32 16
  %48 = load i64, i64* %47, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %176

50:                                               ; preds = %45, %40, %35
  %51 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %52 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %51, i32 0, i32 9
  %53 = load %struct.TYPE_23__*, %struct.TYPE_23__** %52, align 8
  store %struct.TYPE_23__* %53, %struct.TYPE_23__** %12, align 8
  br label %54

54:                                               ; preds = %62, %50
  %55 = load %struct.TYPE_23__*, %struct.TYPE_23__** %12, align 8
  %56 = icmp ne %struct.TYPE_23__* %55, null
  br i1 %56, label %57, label %66

57:                                               ; preds = %54
  %58 = load %struct.TYPE_23__*, %struct.TYPE_23__** %12, align 8
  %59 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %58, i32 0, i32 0
  %60 = load %struct.TYPE_20__*, %struct.TYPE_20__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %60, i32 0, i32 6
  store i64 0, i64* %61, align 8
  br label %62

62:                                               ; preds = %57
  %63 = load %struct.TYPE_23__*, %struct.TYPE_23__** %12, align 8
  %64 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %63, i32 0, i32 1
  %65 = load %struct.TYPE_23__*, %struct.TYPE_23__** %64, align 8
  store %struct.TYPE_23__* %65, %struct.TYPE_23__** %12, align 8
  br label %54

66:                                               ; preds = %54
  %67 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %68 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %67, i32 0, i32 15
  %69 = load %struct.TYPE_23__*, %struct.TYPE_23__** %68, align 8
  %70 = icmp ne %struct.TYPE_23__* %69, null
  br i1 %70, label %71, label %114

71:                                               ; preds = %66
  %72 = load i32, i32* @NGX_LOG_DEBUG_EVENT, align 4
  %73 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %74 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %73, i32 0, i32 12
  %75 = load i32, i32* %74, align 8
  %76 = call i32 @ngx_log_debug0(i32 %72, i32 %75, i32 0, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  %77 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %78 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %77, i32 0, i32 15
  %79 = load %struct.TYPE_23__*, %struct.TYPE_23__** %78, align 8
  store %struct.TYPE_23__* %79, %struct.TYPE_23__** %12, align 8
  br label %80

80:                                               ; preds = %88, %71
  %81 = load %struct.TYPE_23__*, %struct.TYPE_23__** %12, align 8
  %82 = icmp ne %struct.TYPE_23__* %81, null
  br i1 %82, label %83, label %92

83:                                               ; preds = %80
  %84 = load %struct.TYPE_23__*, %struct.TYPE_23__** %12, align 8
  %85 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %84, i32 0, i32 0
  %86 = load %struct.TYPE_20__*, %struct.TYPE_20__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %86, i32 0, i32 6
  store i64 0, i64* %87, align 8
  br label %88

88:                                               ; preds = %83
  %89 = load %struct.TYPE_23__*, %struct.TYPE_23__** %12, align 8
  %90 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %89, i32 0, i32 1
  %91 = load %struct.TYPE_23__*, %struct.TYPE_23__** %90, align 8
  store %struct.TYPE_23__* %91, %struct.TYPE_23__** %12, align 8
  br label %80

92:                                               ; preds = %80
  %93 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %94 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %93, i32 0, i32 1
  %95 = load i64 (i32, %struct.TYPE_23__*)*, i64 (i32, %struct.TYPE_23__*)** %94, align 8
  %96 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %97 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %96, i32 0, i32 11
  %98 = load i32, i32* %97, align 4
  %99 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %100 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %99, i32 0, i32 15
  %101 = load %struct.TYPE_23__*, %struct.TYPE_23__** %100, align 8
  %102 = call i64 %95(i32 %98, %struct.TYPE_23__* %101)
  store i64 %102, i64* %6, align 8
  %103 = load i64, i64* %6, align 8
  %104 = load i64, i64* @NGX_ERROR, align 8
  %105 = icmp eq i64 %103, %104
  br i1 %105, label %106, label %111

106:                                              ; preds = %92
  %107 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %108 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %107, i32 0, i32 0
  store i32 1, i32* %108, align 8
  %109 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %110 = call i64 @ngx_event_pipe_drain_chains(%struct.TYPE_21__* %109)
  store i64 %110, i64* %2, align 8
  br label %544

111:                                              ; preds = %92
  %112 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %113 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %112, i32 0, i32 15
  store %struct.TYPE_23__* null, %struct.TYPE_23__** %113, align 8
  br label %114

114:                                              ; preds = %111, %66
  %115 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %116 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %115, i32 0, i32 14
  %117 = load i64, i64* %116, align 8
  %118 = icmp ne i64 %117, 0
  br i1 %118, label %119, label %120

119:                                              ; preds = %114
  br label %542

120:                                              ; preds = %114
  %121 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %122 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %121, i32 0, i32 13
  %123 = load %struct.TYPE_23__*, %struct.TYPE_23__** %122, align 8
  %124 = icmp ne %struct.TYPE_23__* %123, null
  br i1 %124, label %125, label %168

125:                                              ; preds = %120
  %126 = load i32, i32* @NGX_LOG_DEBUG_EVENT, align 4
  %127 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %128 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %127, i32 0, i32 12
  %129 = load i32, i32* %128, align 8
  %130 = call i32 @ngx_log_debug0(i32 %126, i32 %129, i32 0, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0))
  %131 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %132 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %131, i32 0, i32 13
  %133 = load %struct.TYPE_23__*, %struct.TYPE_23__** %132, align 8
  store %struct.TYPE_23__* %133, %struct.TYPE_23__** %12, align 8
  br label %134

134:                                              ; preds = %142, %125
  %135 = load %struct.TYPE_23__*, %struct.TYPE_23__** %12, align 8
  %136 = icmp ne %struct.TYPE_23__* %135, null
  br i1 %136, label %137, label %146

137:                                              ; preds = %134
  %138 = load %struct.TYPE_23__*, %struct.TYPE_23__** %12, align 8
  %139 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %138, i32 0, i32 0
  %140 = load %struct.TYPE_20__*, %struct.TYPE_20__** %139, align 8
  %141 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %140, i32 0, i32 6
  store i64 0, i64* %141, align 8
  br label %142

142:                                              ; preds = %137
  %143 = load %struct.TYPE_23__*, %struct.TYPE_23__** %12, align 8
  %144 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %143, i32 0, i32 1
  %145 = load %struct.TYPE_23__*, %struct.TYPE_23__** %144, align 8
  store %struct.TYPE_23__* %145, %struct.TYPE_23__** %12, align 8
  br label %134

146:                                              ; preds = %134
  %147 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %148 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %147, i32 0, i32 1
  %149 = load i64 (i32, %struct.TYPE_23__*)*, i64 (i32, %struct.TYPE_23__*)** %148, align 8
  %150 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %151 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %150, i32 0, i32 11
  %152 = load i32, i32* %151, align 4
  %153 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %154 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %153, i32 0, i32 13
  %155 = load %struct.TYPE_23__*, %struct.TYPE_23__** %154, align 8
  %156 = call i64 %149(i32 %152, %struct.TYPE_23__* %155)
  store i64 %156, i64* %6, align 8
  %157 = load i64, i64* %6, align 8
  %158 = load i64, i64* @NGX_ERROR, align 8
  %159 = icmp eq i64 %157, %158
  br i1 %159, label %160, label %165

160:                                              ; preds = %146
  %161 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %162 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %161, i32 0, i32 0
  store i32 1, i32* %162, align 8
  %163 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %164 = call i64 @ngx_event_pipe_drain_chains(%struct.TYPE_21__* %163)
  store i64 %164, i64* %2, align 8
  br label %544

165:                                              ; preds = %146
  %166 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %167 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %166, i32 0, i32 13
  store %struct.TYPE_23__* null, %struct.TYPE_23__** %167, align 8
  br label %168

168:                                              ; preds = %165, %120
  %169 = load i32, i32* @NGX_LOG_DEBUG_EVENT, align 4
  %170 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %171 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %170, i32 0, i32 12
  %172 = load i32, i32* %171, align 8
  %173 = call i32 @ngx_log_debug0(i32 %169, i32 %172, i32 0, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0))
  %174 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %175 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %174, i32 0, i32 2
  store i32 1, i32* %175, align 8
  br label %542

176:                                              ; preds = %45
  %177 = load %struct.TYPE_22__*, %struct.TYPE_22__** %13, align 8
  %178 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %177, i32 0, i32 1
  %179 = load i32, i32* %178, align 8
  %180 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %181 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %180, i32 0, i32 11
  %182 = load i32, i32* %181, align 4
  %183 = icmp ne i32 %179, %182
  br i1 %183, label %198, label %184

184:                                              ; preds = %176
  %185 = load %struct.TYPE_22__*, %struct.TYPE_22__** %13, align 8
  %186 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %185, i32 0, i32 0
  %187 = load %struct.TYPE_19__*, %struct.TYPE_19__** %186, align 8
  %188 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %187, i32 0, i32 0
  %189 = load i64, i64* %188, align 8
  %190 = icmp ne i64 %189, 0
  br i1 %190, label %191, label %198

191:                                              ; preds = %184
  %192 = load %struct.TYPE_22__*, %struct.TYPE_22__** %13, align 8
  %193 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %192, i32 0, i32 0
  %194 = load %struct.TYPE_19__*, %struct.TYPE_19__** %193, align 8
  %195 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %194, i32 0, i32 1
  %196 = load i64, i64* %195, align 8
  %197 = icmp ne i64 %196, 0
  br i1 %197, label %198, label %199

198:                                              ; preds = %191, %184, %176
  br label %542

199:                                              ; preds = %191
  store i32* null, i32** %4, align 8
  store i64 0, i64* %5, align 8
  %200 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %201 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %200, i32 0, i32 9
  %202 = load %struct.TYPE_23__*, %struct.TYPE_23__** %201, align 8
  store %struct.TYPE_23__* %202, %struct.TYPE_23__** %12, align 8
  br label %203

203:                                              ; preds = %245, %199
  %204 = load %struct.TYPE_23__*, %struct.TYPE_23__** %12, align 8
  %205 = icmp ne %struct.TYPE_23__* %204, null
  br i1 %205, label %206, label %249

206:                                              ; preds = %203
  %207 = load %struct.TYPE_23__*, %struct.TYPE_23__** %12, align 8
  %208 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %207, i32 0, i32 0
  %209 = load %struct.TYPE_20__*, %struct.TYPE_20__** %208, align 8
  %210 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %209, i32 0, i32 6
  %211 = load i64, i64* %210, align 8
  %212 = icmp ne i64 %211, 0
  br i1 %212, label %213, label %244

213:                                              ; preds = %206
  %214 = load i32*, i32** %4, align 8
  %215 = load %struct.TYPE_23__*, %struct.TYPE_23__** %12, align 8
  %216 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %215, i32 0, i32 0
  %217 = load %struct.TYPE_20__*, %struct.TYPE_20__** %216, align 8
  %218 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %217, i32 0, i32 4
  %219 = load i32*, i32** %218, align 8
  %220 = icmp eq i32* %214, %219
  br i1 %220, label %221, label %222

221:                                              ; preds = %213
  br label %245

222:                                              ; preds = %213
  %223 = load %struct.TYPE_23__*, %struct.TYPE_23__** %12, align 8
  %224 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %223, i32 0, i32 0
  %225 = load %struct.TYPE_20__*, %struct.TYPE_20__** %224, align 8
  %226 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %225, i32 0, i32 5
  %227 = load i32*, i32** %226, align 8
  %228 = load %struct.TYPE_23__*, %struct.TYPE_23__** %12, align 8
  %229 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %228, i32 0, i32 0
  %230 = load %struct.TYPE_20__*, %struct.TYPE_20__** %229, align 8
  %231 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %230, i32 0, i32 4
  %232 = load i32*, i32** %231, align 8
  %233 = ptrtoint i32* %227 to i64
  %234 = ptrtoint i32* %232 to i64
  %235 = sub i64 %233, %234
  %236 = sdiv exact i64 %235, 4
  %237 = load i64, i64* %5, align 8
  %238 = add i64 %237, %236
  store i64 %238, i64* %5, align 8
  %239 = load %struct.TYPE_23__*, %struct.TYPE_23__** %12, align 8
  %240 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %239, i32 0, i32 0
  %241 = load %struct.TYPE_20__*, %struct.TYPE_20__** %240, align 8
  %242 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %241, i32 0, i32 4
  %243 = load i32*, i32** %242, align 8
  store i32* %243, i32** %4, align 8
  br label %244

244:                                              ; preds = %222, %206
  br label %245

245:                                              ; preds = %244, %221
  %246 = load %struct.TYPE_23__*, %struct.TYPE_23__** %12, align 8
  %247 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %246, i32 0, i32 1
  %248 = load %struct.TYPE_23__*, %struct.TYPE_23__** %247, align 8
  store %struct.TYPE_23__* %248, %struct.TYPE_23__** %12, align 8
  br label %203

249:                                              ; preds = %203
  %250 = load i32, i32* @NGX_LOG_DEBUG_EVENT, align 4
  %251 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %252 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %251, i32 0, i32 12
  %253 = load i32, i32* %252, align 8
  %254 = load i64, i64* %5, align 8
  %255 = call i32 @ngx_log_debug1(i32 %250, i32 %253, i32 0, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0), i64 %254)
  store %struct.TYPE_23__* null, %struct.TYPE_23__** %10, align 8
  %256 = load i64, i64* %5, align 8
  %257 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %258 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %257, i32 0, i32 3
  %259 = load i32, i32* %258, align 4
  %260 = sext i32 %259 to i64
  %261 = icmp uge i64 %256, %260
  br i1 %261, label %262, label %263

262:                                              ; preds = %249
  store i32 1, i32* %7, align 4
  br label %416

263:                                              ; preds = %249
  store i32 0, i32* %7, align 4
  store %struct.TYPE_23__** null, %struct.TYPE_23__*** %11, align 8
  store i32 1, i32* %9, align 4
  br label %264

264:                                              ; preds = %412, %263
  %265 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %266 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %265, i32 0, i32 15
  %267 = load %struct.TYPE_23__*, %struct.TYPE_23__** %266, align 8
  %268 = icmp ne %struct.TYPE_23__* %267, null
  br i1 %268, label %269, label %293

269:                                              ; preds = %264
  %270 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %271 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %270, i32 0, i32 15
  %272 = load %struct.TYPE_23__*, %struct.TYPE_23__** %271, align 8
  store %struct.TYPE_23__* %272, %struct.TYPE_23__** %12, align 8
  %273 = load %struct.TYPE_23__*, %struct.TYPE_23__** %12, align 8
  %274 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %273, i32 0, i32 0
  %275 = load %struct.TYPE_20__*, %struct.TYPE_20__** %274, align 8
  %276 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %275, i32 0, i32 6
  %277 = load i64, i64* %276, align 8
  %278 = icmp ne i64 %277, 0
  br i1 %278, label %279, label %285

279:                                              ; preds = %269
  %280 = load i32, i32* @NGX_LOG_ALERT, align 4
  %281 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %282 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %281, i32 0, i32 12
  %283 = load i32, i32* %282, align 8
  %284 = call i32 @ngx_log_error(i32 %280, i32 %283, i32 0, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.5, i64 0, i64 0))
  br label %285

285:                                              ; preds = %279, %269
  %286 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %287 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %286, i32 0, i32 15
  %288 = load %struct.TYPE_23__*, %struct.TYPE_23__** %287, align 8
  %289 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %288, i32 0, i32 1
  %290 = load %struct.TYPE_23__*, %struct.TYPE_23__** %289, align 8
  %291 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %292 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %291, i32 0, i32 15
  store %struct.TYPE_23__* %290, %struct.TYPE_23__** %292, align 8
  br label %402

293:                                              ; preds = %264
  %294 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %295 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %294, i32 0, i32 6
  %296 = load i64, i64* %295, align 8
  %297 = icmp ne i64 %296, 0
  br i1 %297, label %400, label %298

298:                                              ; preds = %293
  %299 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %300 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %299, i32 0, i32 14
  %301 = load i64, i64* %300, align 8
  %302 = icmp ne i64 %301, 0
  br i1 %302, label %400, label %303

303:                                              ; preds = %298
  %304 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %305 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %304, i32 0, i32 13
  %306 = load %struct.TYPE_23__*, %struct.TYPE_23__** %305, align 8
  %307 = icmp ne %struct.TYPE_23__* %306, null
  br i1 %307, label %308, label %400

308:                                              ; preds = %303
  %309 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %310 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %309, i32 0, i32 13
  %311 = load %struct.TYPE_23__*, %struct.TYPE_23__** %310, align 8
  store %struct.TYPE_23__* %311, %struct.TYPE_23__** %12, align 8
  %312 = load i32, i32* @NGX_LOG_DEBUG_EVENT, align 4
  %313 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %314 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %313, i32 0, i32 12
  %315 = load i32, i32* %314, align 8
  %316 = load %struct.TYPE_23__*, %struct.TYPE_23__** %12, align 8
  %317 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %316, i32 0, i32 0
  %318 = load %struct.TYPE_20__*, %struct.TYPE_20__** %317, align 8
  %319 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %318, i32 0, i32 0
  %320 = load i32, i32* %319, align 8
  %321 = load %struct.TYPE_23__*, %struct.TYPE_23__** %12, align 8
  %322 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %321, i32 0, i32 0
  %323 = load %struct.TYPE_20__*, %struct.TYPE_20__** %322, align 8
  %324 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %323, i32 0, i32 7
  %325 = load i64, i64* %324, align 8
  %326 = load %struct.TYPE_23__*, %struct.TYPE_23__** %12, align 8
  %327 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %326, i32 0, i32 0
  %328 = load %struct.TYPE_20__*, %struct.TYPE_20__** %327, align 8
  %329 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %328, i32 0, i32 8
  %330 = load i64, i64* %329, align 8
  %331 = load %struct.TYPE_23__*, %struct.TYPE_23__** %12, align 8
  %332 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %331, i32 0, i32 0
  %333 = load %struct.TYPE_20__*, %struct.TYPE_20__** %332, align 8
  %334 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %333, i32 0, i32 7
  %335 = load i64, i64* %334, align 8
  %336 = sub nsw i64 %330, %335
  %337 = call i32 @ngx_log_debug3(i32 %312, i32 %315, i32 0, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.6, i64 0, i64 0), i32 %320, i64 %325, i64 %336)
  %338 = load %struct.TYPE_23__*, %struct.TYPE_23__** %12, align 8
  %339 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %338, i32 0, i32 0
  %340 = load %struct.TYPE_20__*, %struct.TYPE_20__** %339, align 8
  %341 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %340, i32 0, i32 6
  %342 = load i64, i64* %341, align 8
  %343 = icmp ne i64 %342, 0
  br i1 %343, label %344, label %387

344:                                              ; preds = %308
  %345 = load i32, i32* %9, align 4
  %346 = icmp ne i32 %345, 0
  br i1 %346, label %347, label %387

347:                                              ; preds = %344
  %348 = load i64, i64* %5, align 8
  %349 = load %struct.TYPE_23__*, %struct.TYPE_23__** %12, align 8
  %350 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %349, i32 0, i32 0
  %351 = load %struct.TYPE_20__*, %struct.TYPE_20__** %350, align 8
  %352 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %351, i32 0, i32 5
  %353 = load i32*, i32** %352, align 8
  %354 = getelementptr inbounds i32, i32* %353, i64 %348
  %355 = load %struct.TYPE_23__*, %struct.TYPE_23__** %12, align 8
  %356 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %355, i32 0, i32 0
  %357 = load %struct.TYPE_20__*, %struct.TYPE_20__** %356, align 8
  %358 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %357, i32 0, i32 4
  %359 = load i32*, i32** %358, align 8
  %360 = ptrtoint i32* %354 to i64
  %361 = ptrtoint i32* %359 to i64
  %362 = sub i64 %360, %361
  %363 = sdiv exact i64 %362, 4
  %364 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %365 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %364, i32 0, i32 3
  %366 = load i32, i32* %365, align 4
  %367 = sext i32 %366 to i64
  %368 = icmp sgt i64 %363, %367
  br i1 %368, label %369, label %370

369:                                              ; preds = %347
  store i32 1, i32* %7, align 4
  br label %415

370:                                              ; preds = %347
  %371 = load %struct.TYPE_23__*, %struct.TYPE_23__** %12, align 8
  %372 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %371, i32 0, i32 0
  %373 = load %struct.TYPE_20__*, %struct.TYPE_20__** %372, align 8
  %374 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %373, i32 0, i32 5
  %375 = load i32*, i32** %374, align 8
  %376 = load %struct.TYPE_23__*, %struct.TYPE_23__** %12, align 8
  %377 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %376, i32 0, i32 0
  %378 = load %struct.TYPE_20__*, %struct.TYPE_20__** %377, align 8
  %379 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %378, i32 0, i32 4
  %380 = load i32*, i32** %379, align 8
  %381 = ptrtoint i32* %375 to i64
  %382 = ptrtoint i32* %380 to i64
  %383 = sub i64 %381, %382
  %384 = sdiv exact i64 %383, 4
  %385 = load i64, i64* %5, align 8
  %386 = add i64 %385, %384
  store i64 %386, i64* %5, align 8
  br label %387

387:                                              ; preds = %370, %344, %308
  %388 = load %struct.TYPE_23__*, %struct.TYPE_23__** %12, align 8
  %389 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %388, i32 0, i32 0
  %390 = load %struct.TYPE_20__*, %struct.TYPE_20__** %389, align 8
  %391 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %390, i32 0, i32 0
  %392 = load i32, i32* %391, align 8
  store i32 %392, i32* %9, align 4
  %393 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %394 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %393, i32 0, i32 13
  %395 = load %struct.TYPE_23__*, %struct.TYPE_23__** %394, align 8
  %396 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %395, i32 0, i32 1
  %397 = load %struct.TYPE_23__*, %struct.TYPE_23__** %396, align 8
  %398 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %399 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %398, i32 0, i32 13
  store %struct.TYPE_23__* %397, %struct.TYPE_23__** %399, align 8
  br label %401

400:                                              ; preds = %303, %298, %293
  br label %415

401:                                              ; preds = %387
  br label %402

402:                                              ; preds = %401, %285
  %403 = load %struct.TYPE_23__*, %struct.TYPE_23__** %12, align 8
  %404 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %403, i32 0, i32 1
  store %struct.TYPE_23__* null, %struct.TYPE_23__** %404, align 8
  %405 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %406 = icmp ne %struct.TYPE_23__* %405, null
  br i1 %406, label %407, label %410

407:                                              ; preds = %402
  %408 = load %struct.TYPE_23__*, %struct.TYPE_23__** %12, align 8
  %409 = load %struct.TYPE_23__**, %struct.TYPE_23__*** %11, align 8
  store %struct.TYPE_23__* %408, %struct.TYPE_23__** %409, align 8
  br label %412

410:                                              ; preds = %402
  %411 = load %struct.TYPE_23__*, %struct.TYPE_23__** %12, align 8
  store %struct.TYPE_23__* %411, %struct.TYPE_23__** %10, align 8
  br label %412

412:                                              ; preds = %410, %407
  %413 = load %struct.TYPE_23__*, %struct.TYPE_23__** %12, align 8
  %414 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %413, i32 0, i32 1
  store %struct.TYPE_23__** %414, %struct.TYPE_23__*** %11, align 8
  br label %264

415:                                              ; preds = %400, %369
  br label %416

416:                                              ; preds = %415, %262
  %417 = load i32, i32* @NGX_LOG_DEBUG_EVENT, align 4
  %418 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %419 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %418, i32 0, i32 12
  %420 = load i32, i32* %419, align 8
  %421 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %422 = load i32, i32* %7, align 4
  %423 = call i32 @ngx_log_debug2(i32 %417, i32 %420, i32 0, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.7, i64 0, i64 0), %struct.TYPE_23__* %421, i32 %422)
  %424 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %425 = icmp eq %struct.TYPE_23__* %424, null
  br i1 %425, label %426, label %437

426:                                              ; preds = %416
  %427 = load i32, i32* %7, align 4
  %428 = icmp ne i32 %427, 0
  br i1 %428, label %430, label %429

429:                                              ; preds = %426
  br label %542

430:                                              ; preds = %426
  %431 = load i32, i32* %8, align 4
  %432 = add nsw i32 %431, 1
  store i32 %432, i32* %8, align 4
  %433 = icmp sgt i32 %431, 10
  br i1 %433, label %434, label %436

434:                                              ; preds = %430
  %435 = load i64, i64* @NGX_BUSY, align 8
  store i64 %435, i64* %2, align 8
  br label %544

436:                                              ; preds = %430
  br label %437

437:                                              ; preds = %436, %416
  %438 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %439 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %438, i32 0, i32 1
  %440 = load i64 (i32, %struct.TYPE_23__*)*, i64 (i32, %struct.TYPE_23__*)** %439, align 8
  %441 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %442 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %441, i32 0, i32 11
  %443 = load i32, i32* %442, align 4
  %444 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %445 = call i64 %440(i32 %443, %struct.TYPE_23__* %444)
  store i64 %445, i64* %6, align 8
  %446 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %447 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %446, i32 0, i32 10
  %448 = load i32, i32* %447, align 8
  %449 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %450 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %449, i32 0, i32 7
  %451 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %452 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %451, i32 0, i32 9
  %453 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %454 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %453, i32 0, i32 8
  %455 = load i32, i32* %454, align 8
  %456 = call i32 @ngx_chain_update_chains(i32 %448, %struct.TYPE_23__** %450, %struct.TYPE_23__** %452, %struct.TYPE_23__** %10, i32 %455)
  %457 = load i64, i64* %6, align 8
  %458 = load i64, i64* @NGX_ERROR, align 8
  %459 = icmp eq i64 %457, %458
  br i1 %459, label %460, label %465

460:                                              ; preds = %437
  %461 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %462 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %461, i32 0, i32 0
  store i32 1, i32* %462, align 8
  %463 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %464 = call i64 @ngx_event_pipe_drain_chains(%struct.TYPE_21__* %463)
  store i64 %464, i64* %2, align 8
  br label %544

465:                                              ; preds = %437
  %466 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %467 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %466, i32 0, i32 7
  %468 = load %struct.TYPE_23__*, %struct.TYPE_23__** %467, align 8
  store %struct.TYPE_23__* %468, %struct.TYPE_23__** %12, align 8
  br label %469

469:                                              ; preds = %537, %465
  %470 = load %struct.TYPE_23__*, %struct.TYPE_23__** %12, align 8
  %471 = icmp ne %struct.TYPE_23__* %470, null
  br i1 %471, label %472, label %541

472:                                              ; preds = %469
  %473 = load %struct.TYPE_23__*, %struct.TYPE_23__** %12, align 8
  %474 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %473, i32 0, i32 0
  %475 = load %struct.TYPE_20__*, %struct.TYPE_20__** %474, align 8
  %476 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %475, i32 0, i32 3
  %477 = load i64, i64* %476, align 8
  %478 = icmp ne i64 %477, 0
  br i1 %478, label %479, label %508

479:                                              ; preds = %472
  %480 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %481 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %480, i32 0, i32 6
  %482 = load i64, i64* %481, align 8
  %483 = icmp ne i64 %482, 0
  br i1 %483, label %489, label %484

484:                                              ; preds = %479
  %485 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %486 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %485, i32 0, i32 5
  %487 = load i32, i32* %486, align 8
  %488 = icmp ne i32 %487, 0
  br i1 %488, label %490, label %489

489:                                              ; preds = %484, %479
  br label %537

490:                                              ; preds = %484
  %491 = load %struct.TYPE_23__*, %struct.TYPE_23__** %12, align 8
  %492 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %491, i32 0, i32 0
  %493 = load %struct.TYPE_20__*, %struct.TYPE_20__** %492, align 8
  %494 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %493, i32 0, i32 1
  %495 = load i64, i64* %494, align 8
  %496 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %497 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %496, i32 0, i32 4
  %498 = load %struct.TYPE_18__*, %struct.TYPE_18__** %497, align 8
  %499 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %498, i32 0, i32 0
  %500 = load i64, i64* %499, align 8
  %501 = icmp eq i64 %495, %500
  br i1 %501, label %502, label %507

502:                                              ; preds = %490
  %503 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %504 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %503, i32 0, i32 4
  %505 = load %struct.TYPE_18__*, %struct.TYPE_18__** %504, align 8
  %506 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %505, i32 0, i32 0
  store i64 0, i64* %506, align 8
  br label %507

507:                                              ; preds = %502, %490
  br label %508

508:                                              ; preds = %507, %472
  %509 = load %struct.TYPE_23__*, %struct.TYPE_23__** %12, align 8
  %510 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %509, i32 0, i32 0
  %511 = load %struct.TYPE_20__*, %struct.TYPE_20__** %510, align 8
  %512 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %511, i32 0, i32 0
  %513 = load i32, i32* %512, align 8
  %514 = icmp ne i32 %513, 0
  br i1 %514, label %515, label %532

515:                                              ; preds = %508
  %516 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %517 = load %struct.TYPE_23__*, %struct.TYPE_23__** %12, align 8
  %518 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %517, i32 0, i32 0
  %519 = load %struct.TYPE_20__*, %struct.TYPE_20__** %518, align 8
  %520 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %519, i32 0, i32 2
  %521 = load i32*, i32** %520, align 8
  %522 = call i64 @ngx_event_pipe_add_free_buf(%struct.TYPE_21__* %516, i32* %521)
  %523 = load i64, i64* @NGX_OK, align 8
  %524 = icmp ne i64 %522, %523
  br i1 %524, label %525, label %527

525:                                              ; preds = %515
  %526 = load i64, i64* @NGX_ABORT, align 8
  store i64 %526, i64* %2, align 8
  br label %544

527:                                              ; preds = %515
  %528 = load %struct.TYPE_23__*, %struct.TYPE_23__** %12, align 8
  %529 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %528, i32 0, i32 0
  %530 = load %struct.TYPE_20__*, %struct.TYPE_20__** %529, align 8
  %531 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %530, i32 0, i32 0
  store i32 0, i32* %531, align 8
  br label %532

532:                                              ; preds = %527, %508
  %533 = load %struct.TYPE_23__*, %struct.TYPE_23__** %12, align 8
  %534 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %533, i32 0, i32 0
  %535 = load %struct.TYPE_20__*, %struct.TYPE_20__** %534, align 8
  %536 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %535, i32 0, i32 2
  store i32* null, i32** %536, align 8
  br label %537

537:                                              ; preds = %532, %489
  %538 = load %struct.TYPE_23__*, %struct.TYPE_23__** %12, align 8
  %539 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %538, i32 0, i32 1
  %540 = load %struct.TYPE_23__*, %struct.TYPE_23__** %539, align 8
  store %struct.TYPE_23__* %540, %struct.TYPE_23__** %12, align 8
  br label %469

541:                                              ; preds = %469
  br label %27

542:                                              ; preds = %429, %198, %168, %119
  %543 = load i64, i64* @NGX_OK, align 8
  store i64 %543, i64* %2, align 8
  br label %544

544:                                              ; preds = %542, %525, %460, %434, %160, %106, %32
  %545 = load i64, i64* %2, align 8
  ret i64 %545
}

declare dso_local i32 @ngx_log_debug1(i32, i32, i32, i8*, i64) #1

declare dso_local i64 @ngx_event_pipe_drain_chains(%struct.TYPE_21__*) #1

declare dso_local i32 @ngx_log_debug0(i32, i32, i32, i8*) #1

declare dso_local i32 @ngx_log_error(i32, i32, i32, i8*) #1

declare dso_local i32 @ngx_log_debug3(i32, i32, i32, i8*, i32, i64, i64) #1

declare dso_local i32 @ngx_log_debug2(i32, i32, i32, i8*, %struct.TYPE_23__*, i32) #1

declare dso_local i32 @ngx_chain_update_chains(i32, %struct.TYPE_23__**, %struct.TYPE_23__**, %struct.TYPE_23__**, i32) #1

declare dso_local i64 @ngx_event_pipe_add_free_buf(%struct.TYPE_21__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
