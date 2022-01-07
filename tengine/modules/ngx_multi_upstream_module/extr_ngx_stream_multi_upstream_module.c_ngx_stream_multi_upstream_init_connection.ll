; ModuleID = '/home/carl/AnghaBench/tengine/modules/ngx_multi_upstream_module/extr_ngx_stream_multi_upstream_module.c_ngx_stream_multi_upstream_init_connection.c'
source_filename = "/home/carl/AnghaBench/tengine/modules/ngx_multi_upstream_module/extr_ngx_stream_multi_upstream_module.c_ngx_stream_multi_upstream_init_connection.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_24__ = type { %struct.TYPE_26__*, %struct.TYPE_29__*, %struct.TYPE_28__*, %struct.TYPE_25__*, %struct.TYPE_23__*, %struct.TYPE_33__*, i32 }
%struct.TYPE_26__ = type { %struct.TYPE_33__* }
%struct.TYPE_29__ = type { %struct.TYPE_26__* }
%struct.TYPE_28__ = type { %struct.TYPE_26__* }
%struct.TYPE_25__ = type { %struct.TYPE_26__* }
%struct.TYPE_23__ = type { i32 }
%struct.TYPE_33__ = type { %struct.TYPE_32__*, %struct.TYPE_24__*, i32*, i32*, i32, i32*, i32*, i32*, i32*, i32, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_32__ = type { i32, %struct.TYPE_31__, %struct.TYPE_27__*, i32*, i32, i32*, i32*, i32*, i32*, i32* }
%struct.TYPE_31__ = type { %struct.TYPE_26__*, i32, %struct.TYPE_24__* }
%struct.TYPE_27__ = type { i32 }
%struct.TYPE_22__ = type { i32, i32 }
%struct.TYPE_34__ = type { %struct.TYPE_33__*, %struct.TYPE_30__* }
%struct.TYPE_30__ = type { i32 }
%struct.TYPE_35__ = type { i32, i32, i32, %struct.TYPE_30__*, i32, %struct.TYPE_24__* }

@NGX_ERROR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ngx_stream_multi_upstream_init_connection(%struct.TYPE_24__* %0, %struct.TYPE_22__* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_24__*, align 8
  %6 = alloca %struct.TYPE_22__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.TYPE_34__*, align 8
  %9 = alloca %struct.TYPE_35__*, align 8
  %10 = alloca %struct.TYPE_23__*, align 8
  %11 = alloca %struct.TYPE_33__*, align 8
  %12 = alloca %struct.TYPE_33__*, align 8
  store %struct.TYPE_24__* %0, %struct.TYPE_24__** %5, align 8
  store %struct.TYPE_22__* %1, %struct.TYPE_22__** %6, align 8
  store i8* %2, i8** %7, align 8
  %13 = load i8*, i8** %7, align 8
  %14 = bitcast i8* %13 to %struct.TYPE_34__*
  store %struct.TYPE_34__* %14, %struct.TYPE_34__** %8, align 8
  %15 = load %struct.TYPE_34__*, %struct.TYPE_34__** %8, align 8
  %16 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %15, i32 0, i32 0
  %17 = load %struct.TYPE_33__*, %struct.TYPE_33__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %17, i32 0, i32 1
  %19 = load %struct.TYPE_24__*, %struct.TYPE_24__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %19, i32 0, i32 0
  %21 = load %struct.TYPE_26__*, %struct.TYPE_26__** %20, align 8
  %22 = call %struct.TYPE_25__* @ngx_create_pool(i32 128, %struct.TYPE_26__* %21)
  %23 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %24 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %23, i32 0, i32 3
  store %struct.TYPE_25__* %22, %struct.TYPE_25__** %24, align 8
  %25 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %26 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %25, i32 0, i32 3
  %27 = load %struct.TYPE_25__*, %struct.TYPE_25__** %26, align 8
  %28 = icmp eq %struct.TYPE_25__* %27, null
  br i1 %28, label %29, label %31

29:                                               ; preds = %3
  %30 = load i32, i32* @NGX_ERROR, align 4
  store i32 %30, i32* %4, align 4
  br label %337

31:                                               ; preds = %3
  %32 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %33 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %32, i32 0, i32 3
  %34 = load %struct.TYPE_25__*, %struct.TYPE_25__** %33, align 8
  %35 = call i8* @ngx_pcalloc(%struct.TYPE_25__* %34, i32 40)
  %36 = bitcast i8* %35 to %struct.TYPE_35__*
  store %struct.TYPE_35__* %36, %struct.TYPE_35__** %9, align 8
  %37 = load %struct.TYPE_35__*, %struct.TYPE_35__** %9, align 8
  %38 = icmp eq %struct.TYPE_35__* %37, null
  br i1 %38, label %39, label %41

39:                                               ; preds = %31
  %40 = load i32, i32* @NGX_ERROR, align 4
  store i32 %40, i32* %4, align 4
  br label %337

41:                                               ; preds = %31
  %42 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %43 = load %struct.TYPE_35__*, %struct.TYPE_35__** %9, align 8
  %44 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %43, i32 0, i32 5
  store %struct.TYPE_24__* %42, %struct.TYPE_24__** %44, align 8
  %45 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %46 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.TYPE_35__*, %struct.TYPE_35__** %9, align 8
  %49 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %48, i32 0, i32 4
  store i32 %47, i32* %49, align 8
  %50 = load %struct.TYPE_35__*, %struct.TYPE_35__** %9, align 8
  %51 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %50, i32 0, i32 0
  store i32 1, i32* %51, align 8
  %52 = load %struct.TYPE_34__*, %struct.TYPE_34__** %8, align 8
  %53 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %52, i32 0, i32 1
  %54 = load %struct.TYPE_30__*, %struct.TYPE_30__** %53, align 8
  %55 = load %struct.TYPE_35__*, %struct.TYPE_35__** %9, align 8
  %56 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %55, i32 0, i32 3
  store %struct.TYPE_30__* %54, %struct.TYPE_30__** %56, align 8
  %57 = load %struct.TYPE_35__*, %struct.TYPE_35__** %9, align 8
  %58 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %57, i32 0, i32 2
  %59 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %60 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %63 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @ngx_memcpy(i32* %58, i32 %61, i32 %64)
  %66 = load %struct.TYPE_34__*, %struct.TYPE_34__** %8, align 8
  %67 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %66, i32 0, i32 1
  %68 = load %struct.TYPE_30__*, %struct.TYPE_30__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %68, i32 0, i32 0
  %70 = load %struct.TYPE_35__*, %struct.TYPE_35__** %9, align 8
  %71 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %70, i32 0, i32 1
  %72 = call i32 @ngx_queue_insert_head(i32* %69, i32* %71)
  %73 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %74 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %73, i32 0, i32 3
  %75 = load %struct.TYPE_25__*, %struct.TYPE_25__** %74, align 8
  %76 = call i8* @ngx_pcalloc(%struct.TYPE_25__* %75, i32 4)
  %77 = bitcast i8* %76 to %struct.TYPE_23__*
  store %struct.TYPE_23__* %77, %struct.TYPE_23__** %10, align 8
  %78 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %79 = icmp eq %struct.TYPE_23__* %78, null
  br i1 %79, label %80, label %82

80:                                               ; preds = %41
  %81 = load i32, i32* @NGX_ERROR, align 4
  store i32 %81, i32* %4, align 4
  br label %337

82:                                               ; preds = %41
  %83 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %84 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %83, i32 0, i32 0
  %85 = call i32 @ngx_queue_init(i32* %84)
  %86 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %87 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %86, i32 0, i32 3
  %88 = load %struct.TYPE_25__*, %struct.TYPE_25__** %87, align 8
  %89 = call i8* @ngx_pcalloc(%struct.TYPE_25__* %88, i32 120)
  %90 = bitcast i8* %89 to %struct.TYPE_33__*
  store %struct.TYPE_33__* %90, %struct.TYPE_33__** %11, align 8
  %91 = load %struct.TYPE_33__*, %struct.TYPE_33__** %11, align 8
  %92 = icmp eq %struct.TYPE_33__* %91, null
  br i1 %92, label %93, label %95

93:                                               ; preds = %82
  %94 = load i32, i32* @NGX_ERROR, align 4
  store i32 %94, i32* %4, align 4
  br label %337

95:                                               ; preds = %82
  %96 = load %struct.TYPE_34__*, %struct.TYPE_34__** %8, align 8
  %97 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %96, i32 0, i32 0
  %98 = load %struct.TYPE_33__*, %struct.TYPE_33__** %97, align 8
  store %struct.TYPE_33__* %98, %struct.TYPE_33__** %12, align 8
  %99 = load %struct.TYPE_33__*, %struct.TYPE_33__** %12, align 8
  %100 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %99, i32 0, i32 19
  %101 = load i32, i32* %100, align 4
  %102 = load %struct.TYPE_33__*, %struct.TYPE_33__** %11, align 8
  %103 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %102, i32 0, i32 19
  store i32 %101, i32* %103, align 4
  %104 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %105 = load %struct.TYPE_33__*, %struct.TYPE_33__** %11, align 8
  %106 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %105, i32 0, i32 1
  store %struct.TYPE_24__* %104, %struct.TYPE_24__** %106, align 8
  %107 = load %struct.TYPE_33__*, %struct.TYPE_33__** %12, align 8
  %108 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %107, i32 0, i32 1
  %109 = load %struct.TYPE_24__*, %struct.TYPE_24__** %108, align 8
  %110 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %109, i32 0, i32 6
  %111 = load i32, i32* %110, align 8
  %112 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %113 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %112, i32 0, i32 6
  store i32 %111, i32* %113, align 8
  %114 = load %struct.TYPE_33__*, %struct.TYPE_33__** %12, align 8
  %115 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %114, i32 0, i32 18
  %116 = load i32, i32* %115, align 8
  %117 = load %struct.TYPE_33__*, %struct.TYPE_33__** %11, align 8
  %118 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %117, i32 0, i32 18
  store i32 %116, i32* %118, align 8
  %119 = load %struct.TYPE_33__*, %struct.TYPE_33__** %12, align 8
  %120 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %119, i32 0, i32 17
  %121 = load i32, i32* %120, align 4
  %122 = load %struct.TYPE_33__*, %struct.TYPE_33__** %11, align 8
  %123 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %122, i32 0, i32 17
  store i32 %121, i32* %123, align 4
  %124 = load %struct.TYPE_33__*, %struct.TYPE_33__** %12, align 8
  %125 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %124, i32 0, i32 16
  %126 = load i32, i32* %125, align 8
  %127 = load %struct.TYPE_33__*, %struct.TYPE_33__** %11, align 8
  %128 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %127, i32 0, i32 16
  store i32 %126, i32* %128, align 8
  %129 = load %struct.TYPE_33__*, %struct.TYPE_33__** %12, align 8
  %130 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %129, i32 0, i32 15
  %131 = load i32, i32* %130, align 4
  %132 = load %struct.TYPE_33__*, %struct.TYPE_33__** %11, align 8
  %133 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %132, i32 0, i32 15
  store i32 %131, i32* %133, align 4
  %134 = load %struct.TYPE_33__*, %struct.TYPE_33__** %12, align 8
  %135 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %134, i32 0, i32 14
  %136 = load i32, i32* %135, align 8
  %137 = load %struct.TYPE_33__*, %struct.TYPE_33__** %11, align 8
  %138 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %137, i32 0, i32 14
  store i32 %136, i32* %138, align 8
  %139 = load %struct.TYPE_33__*, %struct.TYPE_33__** %12, align 8
  %140 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %139, i32 0, i32 13
  %141 = load i32, i32* %140, align 4
  %142 = load %struct.TYPE_33__*, %struct.TYPE_33__** %11, align 8
  %143 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %142, i32 0, i32 13
  store i32 %141, i32* %143, align 4
  %144 = load %struct.TYPE_33__*, %struct.TYPE_33__** %12, align 8
  %145 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %144, i32 0, i32 12
  %146 = load i32, i32* %145, align 8
  %147 = load %struct.TYPE_33__*, %struct.TYPE_33__** %11, align 8
  %148 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %147, i32 0, i32 12
  store i32 %146, i32* %148, align 8
  %149 = load %struct.TYPE_33__*, %struct.TYPE_33__** %11, align 8
  %150 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %149, i32 0, i32 11
  store i64 0, i64* %150, align 8
  %151 = load %struct.TYPE_33__*, %struct.TYPE_33__** %12, align 8
  %152 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %151, i32 0, i32 10
  %153 = load i32, i32* %152, align 4
  %154 = load %struct.TYPE_33__*, %struct.TYPE_33__** %11, align 8
  %155 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %154, i32 0, i32 10
  store i32 %153, i32* %155, align 4
  %156 = load %struct.TYPE_33__*, %struct.TYPE_33__** %12, align 8
  %157 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %156, i32 0, i32 9
  %158 = load i32, i32* %157, align 8
  %159 = load %struct.TYPE_33__*, %struct.TYPE_33__** %11, align 8
  %160 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %159, i32 0, i32 9
  store i32 %158, i32* %160, align 8
  %161 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %162 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %161, i32 0, i32 3
  %163 = load %struct.TYPE_25__*, %struct.TYPE_25__** %162, align 8
  %164 = call i8* @ngx_pcalloc(%struct.TYPE_25__* %163, i32 4)
  %165 = bitcast i8* %164 to %struct.TYPE_32__*
  %166 = load %struct.TYPE_33__*, %struct.TYPE_33__** %11, align 8
  %167 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %166, i32 0, i32 0
  store %struct.TYPE_32__* %165, %struct.TYPE_32__** %167, align 8
  %168 = load %struct.TYPE_33__*, %struct.TYPE_33__** %11, align 8
  %169 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %168, i32 0, i32 0
  %170 = load %struct.TYPE_32__*, %struct.TYPE_32__** %169, align 8
  %171 = icmp eq %struct.TYPE_32__* %170, null
  br i1 %171, label %172, label %174

172:                                              ; preds = %95
  %173 = load i32, i32* @NGX_ERROR, align 4
  store i32 %173, i32* %4, align 4
  br label %337

174:                                              ; preds = %95
  %175 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %176 = load %struct.TYPE_33__*, %struct.TYPE_33__** %11, align 8
  %177 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %176, i32 0, i32 0
  %178 = load %struct.TYPE_32__*, %struct.TYPE_32__** %177, align 8
  %179 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %178, i32 0, i32 1
  %180 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %179, i32 0, i32 2
  store %struct.TYPE_24__* %175, %struct.TYPE_24__** %180, align 8
  %181 = load %struct.TYPE_33__*, %struct.TYPE_33__** %12, align 8
  %182 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %181, i32 0, i32 0
  %183 = load %struct.TYPE_32__*, %struct.TYPE_32__** %182, align 8
  %184 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %183, i32 0, i32 1
  %185 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %184, i32 0, i32 1
  %186 = load i32, i32* %185, align 8
  %187 = load %struct.TYPE_33__*, %struct.TYPE_33__** %11, align 8
  %188 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %187, i32 0, i32 0
  %189 = load %struct.TYPE_32__*, %struct.TYPE_32__** %188, align 8
  %190 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %189, i32 0, i32 1
  %191 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %190, i32 0, i32 1
  store i32 %186, i32* %191, align 8
  %192 = load %struct.TYPE_33__*, %struct.TYPE_33__** %11, align 8
  %193 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %192, i32 0, i32 0
  %194 = load %struct.TYPE_32__*, %struct.TYPE_32__** %193, align 8
  %195 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %194, i32 0, i32 9
  store i32* null, i32** %195, align 8
  %196 = load %struct.TYPE_33__*, %struct.TYPE_33__** %11, align 8
  %197 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %196, i32 0, i32 0
  %198 = load %struct.TYPE_32__*, %struct.TYPE_32__** %197, align 8
  %199 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %198, i32 0, i32 8
  store i32* null, i32** %199, align 8
  %200 = load %struct.TYPE_33__*, %struct.TYPE_33__** %11, align 8
  %201 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %200, i32 0, i32 0
  %202 = load %struct.TYPE_32__*, %struct.TYPE_32__** %201, align 8
  %203 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %202, i32 0, i32 7
  store i32* null, i32** %203, align 8
  %204 = load %struct.TYPE_33__*, %struct.TYPE_33__** %11, align 8
  %205 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %204, i32 0, i32 0
  %206 = load %struct.TYPE_32__*, %struct.TYPE_32__** %205, align 8
  %207 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %206, i32 0, i32 6
  store i32* null, i32** %207, align 8
  %208 = load %struct.TYPE_33__*, %struct.TYPE_33__** %11, align 8
  %209 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %208, i32 0, i32 0
  %210 = load %struct.TYPE_32__*, %struct.TYPE_32__** %209, align 8
  %211 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %210, i32 0, i32 5
  store i32* null, i32** %211, align 8
  %212 = load %struct.TYPE_33__*, %struct.TYPE_33__** %12, align 8
  %213 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %212, i32 0, i32 0
  %214 = load %struct.TYPE_32__*, %struct.TYPE_32__** %213, align 8
  %215 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %214, i32 0, i32 4
  %216 = load i32, i32* %215, align 8
  %217 = load %struct.TYPE_33__*, %struct.TYPE_33__** %11, align 8
  %218 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %217, i32 0, i32 0
  %219 = load %struct.TYPE_32__*, %struct.TYPE_32__** %218, align 8
  %220 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %219, i32 0, i32 4
  store i32 %216, i32* %220, align 8
  %221 = load %struct.TYPE_33__*, %struct.TYPE_33__** %11, align 8
  %222 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %221, i32 0, i32 0
  %223 = load %struct.TYPE_32__*, %struct.TYPE_32__** %222, align 8
  %224 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %223, i32 0, i32 3
  store i32* null, i32** %224, align 8
  %225 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %226 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %225, i32 0, i32 3
  %227 = load %struct.TYPE_25__*, %struct.TYPE_25__** %226, align 8
  %228 = call i8* @ngx_pcalloc(%struct.TYPE_25__* %227, i32 4)
  %229 = bitcast i8* %228 to %struct.TYPE_27__*
  %230 = load %struct.TYPE_33__*, %struct.TYPE_33__** %11, align 8
  %231 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %230, i32 0, i32 0
  %232 = load %struct.TYPE_32__*, %struct.TYPE_32__** %231, align 8
  %233 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %232, i32 0, i32 2
  store %struct.TYPE_27__* %229, %struct.TYPE_27__** %233, align 8
  %234 = load %struct.TYPE_33__*, %struct.TYPE_33__** %11, align 8
  %235 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %234, i32 0, i32 0
  %236 = load %struct.TYPE_32__*, %struct.TYPE_32__** %235, align 8
  %237 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %236, i32 0, i32 2
  %238 = load %struct.TYPE_27__*, %struct.TYPE_27__** %237, align 8
  %239 = icmp eq %struct.TYPE_27__* %238, null
  br i1 %239, label %240, label %242

240:                                              ; preds = %174
  %241 = load i32, i32* @NGX_ERROR, align 4
  store i32 %241, i32* %4, align 4
  br label %337

242:                                              ; preds = %174
  %243 = load %struct.TYPE_33__*, %struct.TYPE_33__** %11, align 8
  %244 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %243, i32 0, i32 0
  %245 = load %struct.TYPE_32__*, %struct.TYPE_32__** %244, align 8
  %246 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %245, i32 0, i32 1
  %247 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %246, i32 0, i32 1
  %248 = load i32, i32* %247, align 8
  %249 = load %struct.TYPE_33__*, %struct.TYPE_33__** %11, align 8
  %250 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %249, i32 0, i32 0
  %251 = load %struct.TYPE_32__*, %struct.TYPE_32__** %250, align 8
  %252 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %251, i32 0, i32 2
  %253 = load %struct.TYPE_27__*, %struct.TYPE_27__** %252, align 8
  %254 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %253, i32 0, i32 0
  store i32 %248, i32* %254, align 4
  %255 = load %struct.TYPE_33__*, %struct.TYPE_33__** %11, align 8
  %256 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %255, i32 0, i32 0
  %257 = load %struct.TYPE_32__*, %struct.TYPE_32__** %256, align 8
  %258 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %257, i32 0, i32 0
  store i32 1, i32* %258, align 8
  %259 = load %struct.TYPE_33__*, %struct.TYPE_33__** %11, align 8
  %260 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %259, i32 0, i32 8
  store i32* null, i32** %260, align 8
  %261 = load %struct.TYPE_33__*, %struct.TYPE_33__** %11, align 8
  %262 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %261, i32 0, i32 7
  store i32* null, i32** %262, align 8
  %263 = load %struct.TYPE_33__*, %struct.TYPE_33__** %11, align 8
  %264 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %263, i32 0, i32 6
  store i32* null, i32** %264, align 8
  %265 = load %struct.TYPE_33__*, %struct.TYPE_33__** %11, align 8
  %266 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %265, i32 0, i32 5
  store i32* null, i32** %266, align 8
  %267 = load %struct.TYPE_33__*, %struct.TYPE_33__** %11, align 8
  %268 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %269 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %268, i32 0, i32 5
  store %struct.TYPE_33__* %267, %struct.TYPE_33__** %269, align 8
  %270 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %271 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %272 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %271, i32 0, i32 4
  store %struct.TYPE_23__* %270, %struct.TYPE_23__** %272, align 8
  %273 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %274 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %273, i32 0, i32 3
  %275 = load %struct.TYPE_25__*, %struct.TYPE_25__** %274, align 8
  %276 = call %struct.TYPE_26__* @ngx_palloc(%struct.TYPE_25__* %275, i32 4)
  %277 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %278 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %277, i32 0, i32 0
  store %struct.TYPE_26__* %276, %struct.TYPE_26__** %278, align 8
  %279 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %280 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %279, i32 0, i32 0
  %281 = load %struct.TYPE_26__*, %struct.TYPE_26__** %280, align 8
  %282 = icmp eq %struct.TYPE_26__* %281, null
  br i1 %282, label %283, label %285

283:                                              ; preds = %242
  %284 = load i32, i32* @NGX_ERROR, align 4
  store i32 %284, i32* %4, align 4
  br label %337

285:                                              ; preds = %242
  %286 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %287 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %286, i32 0, i32 0
  %288 = load %struct.TYPE_26__*, %struct.TYPE_26__** %287, align 8
  %289 = load %struct.TYPE_34__*, %struct.TYPE_34__** %8, align 8
  %290 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %289, i32 0, i32 0
  %291 = load %struct.TYPE_33__*, %struct.TYPE_33__** %290, align 8
  %292 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %291, i32 0, i32 1
  %293 = load %struct.TYPE_24__*, %struct.TYPE_24__** %292, align 8
  %294 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %293, i32 0, i32 0
  %295 = load %struct.TYPE_26__*, %struct.TYPE_26__** %294, align 8
  %296 = bitcast %struct.TYPE_26__* %288 to i8*
  %297 = bitcast %struct.TYPE_26__* %295 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %296, i8* align 8 %297, i64 8, i1 false)
  %298 = load %struct.TYPE_33__*, %struct.TYPE_33__** %11, align 8
  %299 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %300 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %299, i32 0, i32 0
  %301 = load %struct.TYPE_26__*, %struct.TYPE_26__** %300, align 8
  %302 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %301, i32 0, i32 0
  store %struct.TYPE_33__* %298, %struct.TYPE_33__** %302, align 8
  %303 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %304 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %303, i32 0, i32 0
  %305 = load %struct.TYPE_26__*, %struct.TYPE_26__** %304, align 8
  %306 = load %struct.TYPE_33__*, %struct.TYPE_33__** %11, align 8
  %307 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %306, i32 0, i32 0
  %308 = load %struct.TYPE_32__*, %struct.TYPE_32__** %307, align 8
  %309 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %308, i32 0, i32 1
  %310 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %309, i32 0, i32 0
  store %struct.TYPE_26__* %305, %struct.TYPE_26__** %310, align 8
  %311 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %312 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %311, i32 0, i32 0
  %313 = load %struct.TYPE_26__*, %struct.TYPE_26__** %312, align 8
  %314 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %315 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %314, i32 0, i32 3
  %316 = load %struct.TYPE_25__*, %struct.TYPE_25__** %315, align 8
  %317 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %316, i32 0, i32 0
  store %struct.TYPE_26__* %313, %struct.TYPE_26__** %317, align 8
  %318 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %319 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %318, i32 0, i32 0
  %320 = load %struct.TYPE_26__*, %struct.TYPE_26__** %319, align 8
  %321 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %322 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %321, i32 0, i32 2
  %323 = load %struct.TYPE_28__*, %struct.TYPE_28__** %322, align 8
  %324 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %323, i32 0, i32 0
  store %struct.TYPE_26__* %320, %struct.TYPE_26__** %324, align 8
  %325 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %326 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %325, i32 0, i32 0
  %327 = load %struct.TYPE_26__*, %struct.TYPE_26__** %326, align 8
  %328 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %329 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %328, i32 0, i32 1
  %330 = load %struct.TYPE_29__*, %struct.TYPE_29__** %329, align 8
  %331 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %330, i32 0, i32 0
  store %struct.TYPE_26__* %327, %struct.TYPE_26__** %331, align 8
  %332 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %333 = load %struct.TYPE_34__*, %struct.TYPE_34__** %8, align 8
  %334 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %333, i32 0, i32 0
  %335 = load %struct.TYPE_33__*, %struct.TYPE_33__** %334, align 8
  %336 = call i32 @ngx_stream_multi_upstream_add_data(%struct.TYPE_24__* %332, %struct.TYPE_33__* %335)
  store i32 %336, i32* %4, align 4
  br label %337

337:                                              ; preds = %285, %283, %240, %172, %93, %80, %39, %29
  %338 = load i32, i32* %4, align 4
  ret i32 %338
}

declare dso_local %struct.TYPE_25__* @ngx_create_pool(i32, %struct.TYPE_26__*) #1

declare dso_local i8* @ngx_pcalloc(%struct.TYPE_25__*, i32) #1

declare dso_local i32 @ngx_memcpy(i32*, i32, i32) #1

declare dso_local i32 @ngx_queue_insert_head(i32*, i32*) #1

declare dso_local i32 @ngx_queue_init(i32*) #1

declare dso_local %struct.TYPE_26__* @ngx_palloc(%struct.TYPE_25__*, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @ngx_stream_multi_upstream_add_data(%struct.TYPE_24__*, %struct.TYPE_33__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
