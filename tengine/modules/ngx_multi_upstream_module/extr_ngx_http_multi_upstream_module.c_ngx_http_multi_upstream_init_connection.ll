; ModuleID = '/home/carl/AnghaBench/tengine/modules/ngx_multi_upstream_module/extr_ngx_http_multi_upstream_module.c_ngx_http_multi_upstream_init_connection.c'
source_filename = "/home/carl/AnghaBench/tengine/modules/ngx_multi_upstream_module/extr_ngx_http_multi_upstream_module.c_ngx_http_multi_upstream_init_connection.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_34__ = type { %struct.TYPE_37__*, %struct.TYPE_38__*, %struct.TYPE_36__*, %struct.TYPE_35__*, i32, i32, %struct.TYPE_30__*, %struct.TYPE_28__* }
%struct.TYPE_37__ = type { %struct.TYPE_33__*, i32*, i32 }
%struct.TYPE_33__ = type { %struct.TYPE_30__*, %struct.TYPE_30__*, %struct.TYPE_34__* }
%struct.TYPE_38__ = type { %struct.TYPE_37__* }
%struct.TYPE_36__ = type { %struct.TYPE_37__* }
%struct.TYPE_35__ = type { %struct.TYPE_37__* }
%struct.TYPE_30__ = type { %struct.TYPE_44__*, %struct.TYPE_29__*, %struct.TYPE_34__*, i32, i32, i32, %struct.TYPE_40__* }
%struct.TYPE_44__ = type { %struct.TYPE_37__* }
%struct.TYPE_29__ = type { i32, %struct.TYPE_41__, i32, i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_30__*, i32, i32, i32, i32, i32*, i32, i32, %struct.TYPE_43__, %struct.TYPE_42__ }
%struct.TYPE_41__ = type { %struct.TYPE_37__*, %struct.TYPE_34__* }
%struct.TYPE_43__ = type { %struct.TYPE_44__* }
%struct.TYPE_42__ = type { %struct.TYPE_44__*, i32, i32, i32, i32 }
%struct.TYPE_40__ = type { %struct.TYPE_30__* }
%struct.TYPE_28__ = type { %struct.TYPE_34__* }
%struct.TYPE_45__ = type { i32, i32 }
%struct.TYPE_31__ = type { %struct.TYPE_30__*, %struct.TYPE_39__* }
%struct.TYPE_39__ = type { i32 }
%struct.TYPE_32__ = type { i32, i32, i32, %struct.TYPE_39__*, i32, %struct.TYPE_34__* }

@NGX_ERROR = common dso_local global i32 0, align 4
@NGX_ERROR_INFO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ngx_http_multi_upstream_init_connection(%struct.TYPE_34__* %0, %struct.TYPE_45__* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_34__*, align 8
  %6 = alloca %struct.TYPE_45__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.TYPE_31__*, align 8
  %9 = alloca %struct.TYPE_32__*, align 8
  %10 = alloca %struct.TYPE_28__*, align 8
  %11 = alloca %struct.TYPE_30__*, align 8
  %12 = alloca %struct.TYPE_30__*, align 8
  %13 = alloca %struct.TYPE_33__*, align 8
  %14 = alloca %struct.TYPE_29__*, align 8
  %15 = alloca %struct.TYPE_29__*, align 8
  store %struct.TYPE_34__* %0, %struct.TYPE_34__** %5, align 8
  store %struct.TYPE_45__* %1, %struct.TYPE_45__** %6, align 8
  store i8* %2, i8** %7, align 8
  %16 = load i8*, i8** %7, align 8
  %17 = bitcast i8* %16 to %struct.TYPE_31__*
  store %struct.TYPE_31__* %17, %struct.TYPE_31__** %8, align 8
  %18 = load %struct.TYPE_31__*, %struct.TYPE_31__** %8, align 8
  %19 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %18, i32 0, i32 0
  %20 = load %struct.TYPE_30__*, %struct.TYPE_30__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %20, i32 0, i32 2
  %22 = load %struct.TYPE_34__*, %struct.TYPE_34__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %22, i32 0, i32 0
  %24 = load %struct.TYPE_37__*, %struct.TYPE_37__** %23, align 8
  %25 = call %struct.TYPE_35__* @ngx_create_pool(i32 128, %struct.TYPE_37__* %24)
  %26 = load %struct.TYPE_34__*, %struct.TYPE_34__** %5, align 8
  %27 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %26, i32 0, i32 3
  store %struct.TYPE_35__* %25, %struct.TYPE_35__** %27, align 8
  %28 = load %struct.TYPE_34__*, %struct.TYPE_34__** %5, align 8
  %29 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %28, i32 0, i32 3
  %30 = load %struct.TYPE_35__*, %struct.TYPE_35__** %29, align 8
  %31 = icmp eq %struct.TYPE_35__* %30, null
  br i1 %31, label %32, label %34

32:                                               ; preds = %3
  %33 = load i32, i32* @NGX_ERROR, align 4
  store i32 %33, i32* %4, align 4
  br label %382

34:                                               ; preds = %3
  %35 = load %struct.TYPE_34__*, %struct.TYPE_34__** %5, align 8
  %36 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %35, i32 0, i32 3
  %37 = load %struct.TYPE_35__*, %struct.TYPE_35__** %36, align 8
  %38 = call i8* @ngx_pcalloc(%struct.TYPE_35__* %37, i32 40)
  %39 = bitcast i8* %38 to %struct.TYPE_32__*
  store %struct.TYPE_32__* %39, %struct.TYPE_32__** %9, align 8
  %40 = load %struct.TYPE_32__*, %struct.TYPE_32__** %9, align 8
  %41 = icmp eq %struct.TYPE_32__* %40, null
  br i1 %41, label %42, label %44

42:                                               ; preds = %34
  %43 = load i32, i32* @NGX_ERROR, align 4
  store i32 %43, i32* %4, align 4
  br label %382

44:                                               ; preds = %34
  %45 = load %struct.TYPE_34__*, %struct.TYPE_34__** %5, align 8
  %46 = load %struct.TYPE_32__*, %struct.TYPE_32__** %9, align 8
  %47 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %46, i32 0, i32 5
  store %struct.TYPE_34__* %45, %struct.TYPE_34__** %47, align 8
  %48 = load %struct.TYPE_45__*, %struct.TYPE_45__** %6, align 8
  %49 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.TYPE_32__*, %struct.TYPE_32__** %9, align 8
  %52 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %51, i32 0, i32 4
  store i32 %50, i32* %52, align 8
  %53 = load %struct.TYPE_32__*, %struct.TYPE_32__** %9, align 8
  %54 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %53, i32 0, i32 0
  store i32 1, i32* %54, align 8
  %55 = load %struct.TYPE_31__*, %struct.TYPE_31__** %8, align 8
  %56 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %55, i32 0, i32 1
  %57 = load %struct.TYPE_39__*, %struct.TYPE_39__** %56, align 8
  %58 = load %struct.TYPE_32__*, %struct.TYPE_32__** %9, align 8
  %59 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %58, i32 0, i32 3
  store %struct.TYPE_39__* %57, %struct.TYPE_39__** %59, align 8
  %60 = load %struct.TYPE_32__*, %struct.TYPE_32__** %9, align 8
  %61 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %60, i32 0, i32 2
  %62 = load %struct.TYPE_45__*, %struct.TYPE_45__** %6, align 8
  %63 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.TYPE_45__*, %struct.TYPE_45__** %6, align 8
  %66 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @ngx_memcpy(i32* %61, i32 %64, i32 %67)
  %69 = load %struct.TYPE_31__*, %struct.TYPE_31__** %8, align 8
  %70 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %69, i32 0, i32 1
  %71 = load %struct.TYPE_39__*, %struct.TYPE_39__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %71, i32 0, i32 0
  %73 = load %struct.TYPE_32__*, %struct.TYPE_32__** %9, align 8
  %74 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %73, i32 0, i32 1
  %75 = call i32 @ngx_queue_insert_head(i32* %72, i32* %74)
  %76 = load %struct.TYPE_34__*, %struct.TYPE_34__** %5, align 8
  %77 = call %struct.TYPE_28__* @ngx_create_multi_connection(%struct.TYPE_34__* %76)
  store %struct.TYPE_28__* %77, %struct.TYPE_28__** %10, align 8
  %78 = load %struct.TYPE_34__*, %struct.TYPE_34__** %5, align 8
  %79 = load %struct.TYPE_28__*, %struct.TYPE_28__** %10, align 8
  %80 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %79, i32 0, i32 0
  store %struct.TYPE_34__* %78, %struct.TYPE_34__** %80, align 8
  %81 = load %struct.TYPE_28__*, %struct.TYPE_28__** %10, align 8
  %82 = load %struct.TYPE_34__*, %struct.TYPE_34__** %5, align 8
  %83 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %82, i32 0, i32 7
  store %struct.TYPE_28__* %81, %struct.TYPE_28__** %83, align 8
  %84 = load %struct.TYPE_31__*, %struct.TYPE_31__** %8, align 8
  %85 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %84, i32 0, i32 0
  %86 = load %struct.TYPE_30__*, %struct.TYPE_30__** %85, align 8
  store %struct.TYPE_30__* %86, %struct.TYPE_30__** %11, align 8
  %87 = load %struct.TYPE_30__*, %struct.TYPE_30__** %11, align 8
  %88 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %87, i32 0, i32 6
  %89 = load %struct.TYPE_40__*, %struct.TYPE_40__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %89, i32 0, i32 0
  %91 = load %struct.TYPE_30__*, %struct.TYPE_30__** %90, align 8
  %92 = load %struct.TYPE_34__*, %struct.TYPE_34__** %5, align 8
  %93 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %92, i32 0, i32 6
  store %struct.TYPE_30__* %91, %struct.TYPE_30__** %93, align 8
  %94 = load %struct.TYPE_34__*, %struct.TYPE_34__** %5, align 8
  %95 = call %struct.TYPE_30__* @ngx_http_create_request(%struct.TYPE_34__* %94)
  store %struct.TYPE_30__* %95, %struct.TYPE_30__** %12, align 8
  %96 = load %struct.TYPE_30__*, %struct.TYPE_30__** %11, align 8
  %97 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %96, i32 0, i32 5
  %98 = load i32, i32* %97, align 8
  %99 = load %struct.TYPE_30__*, %struct.TYPE_30__** %12, align 8
  %100 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %99, i32 0, i32 5
  store i32 %98, i32* %100, align 8
  %101 = load %struct.TYPE_30__*, %struct.TYPE_30__** %11, align 8
  %102 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %101, i32 0, i32 4
  %103 = load i32, i32* %102, align 4
  %104 = load %struct.TYPE_30__*, %struct.TYPE_30__** %12, align 8
  %105 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %104, i32 0, i32 4
  store i32 %103, i32* %105, align 4
  %106 = load %struct.TYPE_30__*, %struct.TYPE_30__** %11, align 8
  %107 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %106, i32 0, i32 3
  %108 = load i32, i32* %107, align 8
  %109 = load %struct.TYPE_30__*, %struct.TYPE_30__** %12, align 8
  %110 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %109, i32 0, i32 3
  store i32 %108, i32* %110, align 8
  %111 = load %struct.TYPE_34__*, %struct.TYPE_34__** %5, align 8
  %112 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %111, i32 0, i32 3
  %113 = load %struct.TYPE_35__*, %struct.TYPE_35__** %112, align 8
  %114 = call i8* @ngx_pcalloc(%struct.TYPE_35__* %113, i32 128)
  %115 = bitcast i8* %114 to %struct.TYPE_29__*
  %116 = load %struct.TYPE_30__*, %struct.TYPE_30__** %12, align 8
  %117 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %116, i32 0, i32 1
  store %struct.TYPE_29__* %115, %struct.TYPE_29__** %117, align 8
  %118 = load %struct.TYPE_30__*, %struct.TYPE_30__** %12, align 8
  %119 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %118, i32 0, i32 1
  %120 = load %struct.TYPE_29__*, %struct.TYPE_29__** %119, align 8
  %121 = icmp eq %struct.TYPE_29__* %120, null
  br i1 %121, label %122, label %124

122:                                              ; preds = %44
  %123 = load i32, i32* @NGX_ERROR, align 4
  store i32 %123, i32* %4, align 4
  br label %382

124:                                              ; preds = %44
  %125 = load %struct.TYPE_30__*, %struct.TYPE_30__** %11, align 8
  %126 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %125, i32 0, i32 1
  %127 = load %struct.TYPE_29__*, %struct.TYPE_29__** %126, align 8
  store %struct.TYPE_29__* %127, %struct.TYPE_29__** %14, align 8
  %128 = load %struct.TYPE_30__*, %struct.TYPE_30__** %12, align 8
  %129 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %128, i32 0, i32 1
  %130 = load %struct.TYPE_29__*, %struct.TYPE_29__** %129, align 8
  store %struct.TYPE_29__* %130, %struct.TYPE_29__** %15, align 8
  %131 = load %struct.TYPE_34__*, %struct.TYPE_34__** %5, align 8
  %132 = load %struct.TYPE_29__*, %struct.TYPE_29__** %15, align 8
  %133 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %132, i32 0, i32 1
  %134 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %133, i32 0, i32 1
  store %struct.TYPE_34__* %131, %struct.TYPE_34__** %134, align 8
  %135 = load %struct.TYPE_29__*, %struct.TYPE_29__** %14, align 8
  %136 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %135, i32 0, i32 19
  %137 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %136, i32 0, i32 1
  %138 = load i32, i32* %137, align 8
  %139 = load %struct.TYPE_29__*, %struct.TYPE_29__** %15, align 8
  %140 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %139, i32 0, i32 19
  %141 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %140, i32 0, i32 1
  store i32 %138, i32* %141, align 8
  %142 = load %struct.TYPE_30__*, %struct.TYPE_30__** %12, align 8
  %143 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %142, i32 0, i32 0
  %144 = load %struct.TYPE_44__*, %struct.TYPE_44__** %143, align 8
  %145 = load %struct.TYPE_29__*, %struct.TYPE_29__** %15, align 8
  %146 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %145, i32 0, i32 19
  %147 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %146, i32 0, i32 0
  store %struct.TYPE_44__* %144, %struct.TYPE_44__** %147, align 8
  %148 = load %struct.TYPE_30__*, %struct.TYPE_30__** %12, align 8
  %149 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %148, i32 0, i32 0
  %150 = load %struct.TYPE_44__*, %struct.TYPE_44__** %149, align 8
  %151 = load %struct.TYPE_29__*, %struct.TYPE_29__** %15, align 8
  %152 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %151, i32 0, i32 18
  %153 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %152, i32 0, i32 0
  store %struct.TYPE_44__* %150, %struct.TYPE_44__** %153, align 8
  %154 = load %struct.TYPE_30__*, %struct.TYPE_30__** %12, align 8
  %155 = load %struct.TYPE_29__*, %struct.TYPE_29__** %15, align 8
  %156 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %155, i32 0, i32 10
  store %struct.TYPE_30__* %154, %struct.TYPE_30__** %156, align 8
  %157 = load %struct.TYPE_29__*, %struct.TYPE_29__** %14, align 8
  %158 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %157, i32 0, i32 17
  %159 = load i32, i32* %158, align 4
  %160 = load %struct.TYPE_29__*, %struct.TYPE_29__** %15, align 8
  %161 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %160, i32 0, i32 17
  store i32 %159, i32* %161, align 4
  %162 = load %struct.TYPE_29__*, %struct.TYPE_29__** %14, align 8
  %163 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %162, i32 0, i32 16
  %164 = load i32, i32* %163, align 8
  %165 = load %struct.TYPE_29__*, %struct.TYPE_29__** %15, align 8
  %166 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %165, i32 0, i32 16
  store i32 %164, i32* %166, align 8
  %167 = load %struct.TYPE_34__*, %struct.TYPE_34__** %5, align 8
  %168 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %167, i32 0, i32 3
  %169 = load %struct.TYPE_35__*, %struct.TYPE_35__** %168, align 8
  %170 = call i8* @ngx_pcalloc(%struct.TYPE_35__* %169, i32 4)
  %171 = bitcast i8* %170 to i32*
  %172 = load %struct.TYPE_29__*, %struct.TYPE_29__** %15, align 8
  %173 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %172, i32 0, i32 15
  store i32* %171, i32** %173, align 8
  %174 = load %struct.TYPE_29__*, %struct.TYPE_29__** %15, align 8
  %175 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %174, i32 0, i32 15
  %176 = load i32*, i32** %175, align 8
  %177 = icmp eq i32* %176, null
  br i1 %177, label %178, label %180

178:                                              ; preds = %124
  %179 = load i32, i32* @NGX_ERROR, align 4
  store i32 %179, i32* %4, align 4
  br label %382

180:                                              ; preds = %124
  %181 = load %struct.TYPE_29__*, %struct.TYPE_29__** %14, align 8
  %182 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %181, i32 0, i32 14
  %183 = load i32, i32* %182, align 4
  %184 = load %struct.TYPE_29__*, %struct.TYPE_29__** %15, align 8
  %185 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %184, i32 0, i32 14
  store i32 %183, i32* %185, align 4
  %186 = load %struct.TYPE_29__*, %struct.TYPE_29__** %14, align 8
  %187 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %186, i32 0, i32 13
  %188 = load i32, i32* %187, align 8
  %189 = load %struct.TYPE_29__*, %struct.TYPE_29__** %15, align 8
  %190 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %189, i32 0, i32 13
  store i32 %188, i32* %190, align 8
  %191 = load %struct.TYPE_29__*, %struct.TYPE_29__** %14, align 8
  %192 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %191, i32 0, i32 12
  %193 = load i32, i32* %192, align 4
  %194 = load %struct.TYPE_29__*, %struct.TYPE_29__** %15, align 8
  %195 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %194, i32 0, i32 12
  store i32 %193, i32* %195, align 4
  %196 = load %struct.TYPE_29__*, %struct.TYPE_29__** %14, align 8
  %197 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %196, i32 0, i32 11
  %198 = load i32, i32* %197, align 8
  %199 = load %struct.TYPE_29__*, %struct.TYPE_29__** %15, align 8
  %200 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %199, i32 0, i32 11
  store i32 %198, i32* %200, align 8
  %201 = load %struct.TYPE_29__*, %struct.TYPE_29__** %15, align 8
  %202 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %201, i32 0, i32 10
  store %struct.TYPE_30__* null, %struct.TYPE_30__** %202, align 8
  %203 = load %struct.TYPE_29__*, %struct.TYPE_29__** %14, align 8
  %204 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %203, i32 0, i32 8
  %205 = load i32, i32* %204, align 8
  %206 = load %struct.TYPE_29__*, %struct.TYPE_29__** %15, align 8
  %207 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %206, i32 0, i32 8
  store i32 %205, i32* %207, align 8
  %208 = load %struct.TYPE_29__*, %struct.TYPE_29__** %14, align 8
  %209 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %208, i32 0, i32 7
  %210 = load i32, i32* %209, align 4
  %211 = load %struct.TYPE_29__*, %struct.TYPE_29__** %15, align 8
  %212 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %211, i32 0, i32 7
  store i32 %210, i32* %212, align 4
  %213 = load %struct.TYPE_29__*, %struct.TYPE_29__** %14, align 8
  %214 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %213, i32 0, i32 6
  %215 = load i32, i32* %214, align 8
  %216 = load %struct.TYPE_29__*, %struct.TYPE_29__** %15, align 8
  %217 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %216, i32 0, i32 6
  store i32 %215, i32* %217, align 8
  %218 = load %struct.TYPE_29__*, %struct.TYPE_29__** %14, align 8
  %219 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %218, i32 0, i32 5
  %220 = load i32, i32* %219, align 4
  %221 = load %struct.TYPE_29__*, %struct.TYPE_29__** %15, align 8
  %222 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %221, i32 0, i32 5
  store i32 %220, i32* %222, align 4
  %223 = load %struct.TYPE_29__*, %struct.TYPE_29__** %14, align 8
  %224 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %223, i32 0, i32 4
  %225 = load i32, i32* %224, align 8
  %226 = load %struct.TYPE_29__*, %struct.TYPE_29__** %15, align 8
  %227 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %226, i32 0, i32 4
  store i32 %225, i32* %227, align 8
  %228 = load %struct.TYPE_29__*, %struct.TYPE_29__** %14, align 8
  %229 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %228, i32 0, i32 3
  %230 = load i32, i32* %229, align 4
  %231 = load %struct.TYPE_29__*, %struct.TYPE_29__** %15, align 8
  %232 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %231, i32 0, i32 3
  store i32 %230, i32* %232, align 4
  %233 = load %struct.TYPE_29__*, %struct.TYPE_29__** %14, align 8
  %234 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %233, i32 0, i32 2
  %235 = load i32, i32* %234, align 8
  %236 = load %struct.TYPE_29__*, %struct.TYPE_29__** %15, align 8
  %237 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %236, i32 0, i32 2
  store i32 %235, i32* %237, align 8
  %238 = load %struct.TYPE_29__*, %struct.TYPE_29__** %15, align 8
  %239 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %238, i32 0, i32 0
  store i32 1, i32* %239, align 8
  %240 = load %struct.TYPE_34__*, %struct.TYPE_34__** %5, align 8
  %241 = load %struct.TYPE_30__*, %struct.TYPE_30__** %12, align 8
  %242 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %241, i32 0, i32 2
  store %struct.TYPE_34__* %240, %struct.TYPE_34__** %242, align 8
  %243 = load %struct.TYPE_30__*, %struct.TYPE_30__** %12, align 8
  %244 = load %struct.TYPE_34__*, %struct.TYPE_34__** %5, align 8
  %245 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %244, i32 0, i32 6
  store %struct.TYPE_30__* %243, %struct.TYPE_30__** %245, align 8
  %246 = load %struct.TYPE_34__*, %struct.TYPE_34__** %5, align 8
  %247 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %246, i32 0, i32 3
  %248 = load %struct.TYPE_35__*, %struct.TYPE_35__** %247, align 8
  %249 = call i8* @ngx_pcalloc(%struct.TYPE_35__* %248, i32 4)
  %250 = bitcast i8* %249 to %struct.TYPE_37__*
  %251 = load %struct.TYPE_34__*, %struct.TYPE_34__** %5, align 8
  %252 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %251, i32 0, i32 0
  store %struct.TYPE_37__* %250, %struct.TYPE_37__** %252, align 8
  %253 = load %struct.TYPE_34__*, %struct.TYPE_34__** %5, align 8
  %254 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %253, i32 0, i32 0
  %255 = load %struct.TYPE_37__*, %struct.TYPE_37__** %254, align 8
  %256 = icmp eq %struct.TYPE_37__* %255, null
  br i1 %256, label %257, label %259

257:                                              ; preds = %180
  %258 = load i32, i32* @NGX_ERROR, align 4
  store i32 %258, i32* %4, align 4
  br label %382

259:                                              ; preds = %180
  %260 = load %struct.TYPE_34__*, %struct.TYPE_34__** %5, align 8
  %261 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %260, i32 0, i32 0
  %262 = load %struct.TYPE_37__*, %struct.TYPE_37__** %261, align 8
  %263 = load %struct.TYPE_31__*, %struct.TYPE_31__** %8, align 8
  %264 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %263, i32 0, i32 0
  %265 = load %struct.TYPE_30__*, %struct.TYPE_30__** %264, align 8
  %266 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %265, i32 0, i32 2
  %267 = load %struct.TYPE_34__*, %struct.TYPE_34__** %266, align 8
  %268 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %267, i32 0, i32 0
  %269 = load %struct.TYPE_37__*, %struct.TYPE_37__** %268, align 8
  %270 = bitcast %struct.TYPE_37__* %262 to i8*
  %271 = bitcast %struct.TYPE_37__* %269 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %270, i8* align 8 %271, i64 24, i1 false)
  %272 = load %struct.TYPE_34__*, %struct.TYPE_34__** %5, align 8
  %273 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %272, i32 0, i32 3
  %274 = load %struct.TYPE_35__*, %struct.TYPE_35__** %273, align 8
  %275 = call i8* @ngx_pcalloc(%struct.TYPE_35__* %274, i32 24)
  %276 = bitcast i8* %275 to %struct.TYPE_33__*
  store %struct.TYPE_33__* %276, %struct.TYPE_33__** %13, align 8
  %277 = load %struct.TYPE_33__*, %struct.TYPE_33__** %13, align 8
  %278 = icmp eq %struct.TYPE_33__* %277, null
  br i1 %278, label %279, label %281

279:                                              ; preds = %259
  %280 = load i32, i32* @NGX_ERROR, align 4
  store i32 %280, i32* %4, align 4
  br label %382

281:                                              ; preds = %259
  %282 = load %struct.TYPE_34__*, %struct.TYPE_34__** %5, align 8
  %283 = load %struct.TYPE_33__*, %struct.TYPE_33__** %13, align 8
  %284 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %283, i32 0, i32 2
  store %struct.TYPE_34__* %282, %struct.TYPE_34__** %284, align 8
  %285 = load %struct.TYPE_30__*, %struct.TYPE_30__** %12, align 8
  %286 = load %struct.TYPE_33__*, %struct.TYPE_33__** %13, align 8
  %287 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %286, i32 0, i32 1
  store %struct.TYPE_30__* %285, %struct.TYPE_30__** %287, align 8
  %288 = load %struct.TYPE_30__*, %struct.TYPE_30__** %12, align 8
  %289 = load %struct.TYPE_33__*, %struct.TYPE_33__** %13, align 8
  %290 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %289, i32 0, i32 0
  store %struct.TYPE_30__* %288, %struct.TYPE_30__** %290, align 8
  %291 = load %struct.TYPE_34__*, %struct.TYPE_34__** %5, align 8
  %292 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %291, i32 0, i32 3
  %293 = load %struct.TYPE_35__*, %struct.TYPE_35__** %292, align 8
  %294 = call i8* @ngx_pcalloc(%struct.TYPE_35__* %293, i32 4)
  %295 = bitcast i8* %294 to %struct.TYPE_37__*
  %296 = load %struct.TYPE_34__*, %struct.TYPE_34__** %5, align 8
  %297 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %296, i32 0, i32 0
  store %struct.TYPE_37__* %295, %struct.TYPE_37__** %297, align 8
  %298 = load %struct.TYPE_34__*, %struct.TYPE_34__** %5, align 8
  %299 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %298, i32 0, i32 0
  %300 = load %struct.TYPE_37__*, %struct.TYPE_37__** %299, align 8
  %301 = icmp eq %struct.TYPE_37__* %300, null
  br i1 %301, label %302, label %304

302:                                              ; preds = %281
  %303 = load i32, i32* @NGX_ERROR, align 4
  store i32 %303, i32* %4, align 4
  br label %382

304:                                              ; preds = %281
  %305 = load %struct.TYPE_34__*, %struct.TYPE_34__** %5, align 8
  %306 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %305, i32 0, i32 0
  %307 = load %struct.TYPE_37__*, %struct.TYPE_37__** %306, align 8
  %308 = load %struct.TYPE_31__*, %struct.TYPE_31__** %8, align 8
  %309 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %308, i32 0, i32 0
  %310 = load %struct.TYPE_30__*, %struct.TYPE_30__** %309, align 8
  %311 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %310, i32 0, i32 2
  %312 = load %struct.TYPE_34__*, %struct.TYPE_34__** %311, align 8
  %313 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %312, i32 0, i32 0
  %314 = load %struct.TYPE_37__*, %struct.TYPE_37__** %313, align 8
  %315 = bitcast %struct.TYPE_37__* %307 to i8*
  %316 = bitcast %struct.TYPE_37__* %314 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %315, i8* align 8 %316, i64 24, i1 false)
  %317 = load %struct.TYPE_33__*, %struct.TYPE_33__** %13, align 8
  %318 = load %struct.TYPE_34__*, %struct.TYPE_34__** %5, align 8
  %319 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %318, i32 0, i32 0
  %320 = load %struct.TYPE_37__*, %struct.TYPE_37__** %319, align 8
  %321 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %320, i32 0, i32 0
  store %struct.TYPE_33__* %317, %struct.TYPE_33__** %321, align 8
  %322 = load %struct.TYPE_34__*, %struct.TYPE_34__** %5, align 8
  %323 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %322, i32 0, i32 0
  %324 = load %struct.TYPE_37__*, %struct.TYPE_37__** %323, align 8
  %325 = load %struct.TYPE_30__*, %struct.TYPE_30__** %12, align 8
  %326 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %325, i32 0, i32 1
  %327 = load %struct.TYPE_29__*, %struct.TYPE_29__** %326, align 8
  %328 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %327, i32 0, i32 1
  %329 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %328, i32 0, i32 0
  store %struct.TYPE_37__* %324, %struct.TYPE_37__** %329, align 8
  %330 = load %struct.TYPE_34__*, %struct.TYPE_34__** %5, align 8
  %331 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %330, i32 0, i32 5
  %332 = load i32, i32* %331, align 4
  %333 = load %struct.TYPE_34__*, %struct.TYPE_34__** %5, align 8
  %334 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %333, i32 0, i32 0
  %335 = load %struct.TYPE_37__*, %struct.TYPE_37__** %334, align 8
  %336 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %335, i32 0, i32 2
  store i32 %332, i32* %336, align 8
  %337 = load %struct.TYPE_34__*, %struct.TYPE_34__** %5, align 8
  %338 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %337, i32 0, i32 0
  %339 = load %struct.TYPE_37__*, %struct.TYPE_37__** %338, align 8
  %340 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %339, i32 0, i32 1
  store i32* null, i32** %340, align 8
  %341 = load %struct.TYPE_33__*, %struct.TYPE_33__** %13, align 8
  %342 = load %struct.TYPE_34__*, %struct.TYPE_34__** %5, align 8
  %343 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %342, i32 0, i32 0
  %344 = load %struct.TYPE_37__*, %struct.TYPE_37__** %343, align 8
  %345 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %344, i32 0, i32 0
  store %struct.TYPE_33__* %341, %struct.TYPE_33__** %345, align 8
  %346 = load i32, i32* @NGX_ERROR_INFO, align 4
  %347 = load %struct.TYPE_34__*, %struct.TYPE_34__** %5, align 8
  %348 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %347, i32 0, i32 4
  store i32 %346, i32* %348, align 8
  %349 = load %struct.TYPE_34__*, %struct.TYPE_34__** %5, align 8
  %350 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %349, i32 0, i32 0
  %351 = load %struct.TYPE_37__*, %struct.TYPE_37__** %350, align 8
  %352 = load %struct.TYPE_34__*, %struct.TYPE_34__** %5, align 8
  %353 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %352, i32 0, i32 3
  %354 = load %struct.TYPE_35__*, %struct.TYPE_35__** %353, align 8
  %355 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %354, i32 0, i32 0
  store %struct.TYPE_37__* %351, %struct.TYPE_37__** %355, align 8
  %356 = load %struct.TYPE_34__*, %struct.TYPE_34__** %5, align 8
  %357 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %356, i32 0, i32 0
  %358 = load %struct.TYPE_37__*, %struct.TYPE_37__** %357, align 8
  %359 = load %struct.TYPE_34__*, %struct.TYPE_34__** %5, align 8
  %360 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %359, i32 0, i32 2
  %361 = load %struct.TYPE_36__*, %struct.TYPE_36__** %360, align 8
  %362 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %361, i32 0, i32 0
  store %struct.TYPE_37__* %358, %struct.TYPE_37__** %362, align 8
  %363 = load %struct.TYPE_34__*, %struct.TYPE_34__** %5, align 8
  %364 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %363, i32 0, i32 0
  %365 = load %struct.TYPE_37__*, %struct.TYPE_37__** %364, align 8
  %366 = load %struct.TYPE_34__*, %struct.TYPE_34__** %5, align 8
  %367 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %366, i32 0, i32 1
  %368 = load %struct.TYPE_38__*, %struct.TYPE_38__** %367, align 8
  %369 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %368, i32 0, i32 0
  store %struct.TYPE_37__* %365, %struct.TYPE_37__** %369, align 8
  %370 = load %struct.TYPE_34__*, %struct.TYPE_34__** %5, align 8
  %371 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %370, i32 0, i32 0
  %372 = load %struct.TYPE_37__*, %struct.TYPE_37__** %371, align 8
  %373 = load %struct.TYPE_30__*, %struct.TYPE_30__** %12, align 8
  %374 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %373, i32 0, i32 0
  %375 = load %struct.TYPE_44__*, %struct.TYPE_44__** %374, align 8
  %376 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %375, i32 0, i32 0
  store %struct.TYPE_37__* %372, %struct.TYPE_37__** %376, align 8
  %377 = load %struct.TYPE_34__*, %struct.TYPE_34__** %5, align 8
  %378 = load %struct.TYPE_31__*, %struct.TYPE_31__** %8, align 8
  %379 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %378, i32 0, i32 0
  %380 = load %struct.TYPE_30__*, %struct.TYPE_30__** %379, align 8
  %381 = call i32 @ngx_http_multi_upstream_add_data(%struct.TYPE_34__* %377, %struct.TYPE_30__* %380)
  store i32 %381, i32* %4, align 4
  br label %382

382:                                              ; preds = %304, %302, %279, %257, %178, %122, %42, %32
  %383 = load i32, i32* %4, align 4
  ret i32 %383
}

declare dso_local %struct.TYPE_35__* @ngx_create_pool(i32, %struct.TYPE_37__*) #1

declare dso_local i8* @ngx_pcalloc(%struct.TYPE_35__*, i32) #1

declare dso_local i32 @ngx_memcpy(i32*, i32, i32) #1

declare dso_local i32 @ngx_queue_insert_head(i32*, i32*) #1

declare dso_local %struct.TYPE_28__* @ngx_create_multi_connection(%struct.TYPE_34__*) #1

declare dso_local %struct.TYPE_30__* @ngx_http_create_request(%struct.TYPE_34__*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @ngx_http_multi_upstream_add_data(%struct.TYPE_34__*, %struct.TYPE_30__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
