; ModuleID = '/home/carl/AnghaBench/tengine/src/core/extr_ngx_slab.c_ngx_slab_free_pages.c'
source_filename = "/home/carl/AnghaBench/tengine/src/core/extr_ngx_slab.c_ngx_slab_free_pages.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32, %struct.TYPE_10__, %struct.TYPE_12__*, %struct.TYPE_12__* }
%struct.TYPE_10__ = type { %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i32, i64, %struct.TYPE_12__* }

@NGX_SLAB_PAGE = common dso_local global i64 0, align 8
@NGX_SLAB_PAGE_FREE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_11__*, %struct.TYPE_12__*, i32)* @ngx_slab_free_pages to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ngx_slab_free_pages(%struct.TYPE_11__* %0, %struct.TYPE_12__* %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_11__*, align 8
  %5 = alloca %struct.TYPE_12__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_12__*, align 8
  %8 = alloca %struct.TYPE_12__*, align 8
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %4, align 8
  store %struct.TYPE_12__* %1, %struct.TYPE_12__** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load i32, i32* %6, align 4
  %10 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %11 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = add nsw i32 %12, %9
  store i32 %13, i32* %11, align 8
  %14 = load i32, i32* %6, align 4
  %15 = add nsw i32 %14, -1
  store i32 %15, i32* %6, align 4
  %16 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %17 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %16, i32 0, i32 0
  store i32 %14, i32* %17, align 8
  %18 = load i32, i32* %6, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %28

20:                                               ; preds = %3
  %21 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %22 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %21, i64 1
  %23 = load i32, i32* %6, align 4
  %24 = sext i32 %23 to i64
  %25 = mul i64 %24, 24
  %26 = trunc i64 %25 to i32
  %27 = call i32 @ngx_memzero(%struct.TYPE_12__* %22, i32 %26)
  br label %28

28:                                               ; preds = %20, %3
  %29 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %30 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %29, i32 0, i32 2
  %31 = load %struct.TYPE_12__*, %struct.TYPE_12__** %30, align 8
  %32 = icmp ne %struct.TYPE_12__* %31, null
  br i1 %32, label %33, label %48

33:                                               ; preds = %28
  %34 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %35 = call %struct.TYPE_12__* @ngx_slab_page_prev(%struct.TYPE_12__* %34)
  store %struct.TYPE_12__* %35, %struct.TYPE_12__** %7, align 8
  %36 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %37 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %36, i32 0, i32 2
  %38 = load %struct.TYPE_12__*, %struct.TYPE_12__** %37, align 8
  %39 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %40 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %39, i32 0, i32 2
  store %struct.TYPE_12__* %38, %struct.TYPE_12__** %40, align 8
  %41 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %42 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %45 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %44, i32 0, i32 2
  %46 = load %struct.TYPE_12__*, %struct.TYPE_12__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %46, i32 0, i32 1
  store i64 %43, i64* %47, align 8
  br label %48

48:                                               ; preds = %33, %28
  %49 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %50 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %51 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %49, i64 %53
  store %struct.TYPE_12__* %54, %struct.TYPE_12__** %8, align 8
  %55 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %56 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %57 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %56, i32 0, i32 3
  %58 = load %struct.TYPE_12__*, %struct.TYPE_12__** %57, align 8
  %59 = icmp ult %struct.TYPE_12__* %55, %58
  br i1 %59, label %60, label %108

60:                                               ; preds = %48
  %61 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %62 = call i64 @ngx_slab_page_type(%struct.TYPE_12__* %61)
  %63 = load i64, i64* @NGX_SLAB_PAGE, align 8
  %64 = icmp eq i64 %62, %63
  br i1 %64, label %65, label %107

65:                                               ; preds = %60
  %66 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %67 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %66, i32 0, i32 2
  %68 = load %struct.TYPE_12__*, %struct.TYPE_12__** %67, align 8
  %69 = icmp ne %struct.TYPE_12__* %68, null
  br i1 %69, label %70, label %106

70:                                               ; preds = %65
  %71 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %72 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = load i32, i32* %6, align 4
  %75 = add nsw i32 %74, %73
  store i32 %75, i32* %6, align 4
  %76 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %77 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %80 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = add nsw i32 %81, %78
  store i32 %82, i32* %80, align 8
  %83 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %84 = call %struct.TYPE_12__* @ngx_slab_page_prev(%struct.TYPE_12__* %83)
  store %struct.TYPE_12__* %84, %struct.TYPE_12__** %7, align 8
  %85 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %86 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %85, i32 0, i32 2
  %87 = load %struct.TYPE_12__*, %struct.TYPE_12__** %86, align 8
  %88 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %89 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %88, i32 0, i32 2
  store %struct.TYPE_12__* %87, %struct.TYPE_12__** %89, align 8
  %90 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %91 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %90, i32 0, i32 1
  %92 = load i64, i64* %91, align 8
  %93 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %94 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %93, i32 0, i32 2
  %95 = load %struct.TYPE_12__*, %struct.TYPE_12__** %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %95, i32 0, i32 1
  store i64 %92, i64* %96, align 8
  %97 = load i64, i64* @NGX_SLAB_PAGE_FREE, align 8
  %98 = trunc i64 %97 to i32
  %99 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %100 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %99, i32 0, i32 0
  store i32 %98, i32* %100, align 8
  %101 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %102 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %101, i32 0, i32 2
  store %struct.TYPE_12__* null, %struct.TYPE_12__** %102, align 8
  %103 = load i64, i64* @NGX_SLAB_PAGE, align 8
  %104 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %105 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %104, i32 0, i32 1
  store i64 %103, i64* %105, align 8
  br label %106

106:                                              ; preds = %70, %65
  br label %107

107:                                              ; preds = %106, %60
  br label %108

108:                                              ; preds = %107, %48
  %109 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %110 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %111 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %110, i32 0, i32 2
  %112 = load %struct.TYPE_12__*, %struct.TYPE_12__** %111, align 8
  %113 = icmp ugt %struct.TYPE_12__* %109, %112
  br i1 %113, label %114, label %175

114:                                              ; preds = %108
  %115 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %116 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %115, i64 -1
  store %struct.TYPE_12__* %116, %struct.TYPE_12__** %8, align 8
  %117 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %118 = call i64 @ngx_slab_page_type(%struct.TYPE_12__* %117)
  %119 = load i64, i64* @NGX_SLAB_PAGE, align 8
  %120 = icmp eq i64 %118, %119
  br i1 %120, label %121, label %174

121:                                              ; preds = %114
  %122 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %123 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 8
  %125 = sext i32 %124 to i64
  %126 = load i64, i64* @NGX_SLAB_PAGE_FREE, align 8
  %127 = icmp eq i64 %125, %126
  br i1 %127, label %128, label %131

128:                                              ; preds = %121
  %129 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %130 = call %struct.TYPE_12__* @ngx_slab_page_prev(%struct.TYPE_12__* %129)
  store %struct.TYPE_12__* %130, %struct.TYPE_12__** %8, align 8
  br label %131

131:                                              ; preds = %128, %121
  %132 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %133 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %132, i32 0, i32 2
  %134 = load %struct.TYPE_12__*, %struct.TYPE_12__** %133, align 8
  %135 = icmp ne %struct.TYPE_12__* %134, null
  br i1 %135, label %136, label %173

136:                                              ; preds = %131
  %137 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %138 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 8
  %140 = load i32, i32* %6, align 4
  %141 = add nsw i32 %140, %139
  store i32 %141, i32* %6, align 4
  %142 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %143 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 8
  %145 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %146 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %145, i32 0, i32 0
  %147 = load i32, i32* %146, align 8
  %148 = add nsw i32 %147, %144
  store i32 %148, i32* %146, align 8
  %149 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %150 = call %struct.TYPE_12__* @ngx_slab_page_prev(%struct.TYPE_12__* %149)
  store %struct.TYPE_12__* %150, %struct.TYPE_12__** %7, align 8
  %151 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %152 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %151, i32 0, i32 2
  %153 = load %struct.TYPE_12__*, %struct.TYPE_12__** %152, align 8
  %154 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %155 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %154, i32 0, i32 2
  store %struct.TYPE_12__* %153, %struct.TYPE_12__** %155, align 8
  %156 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %157 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %156, i32 0, i32 1
  %158 = load i64, i64* %157, align 8
  %159 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %160 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %159, i32 0, i32 2
  %161 = load %struct.TYPE_12__*, %struct.TYPE_12__** %160, align 8
  %162 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %161, i32 0, i32 1
  store i64 %158, i64* %162, align 8
  %163 = load i64, i64* @NGX_SLAB_PAGE_FREE, align 8
  %164 = trunc i64 %163 to i32
  %165 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %166 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %165, i32 0, i32 0
  store i32 %164, i32* %166, align 8
  %167 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %168 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %167, i32 0, i32 2
  store %struct.TYPE_12__* null, %struct.TYPE_12__** %168, align 8
  %169 = load i64, i64* @NGX_SLAB_PAGE, align 8
  %170 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %171 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %170, i32 0, i32 1
  store i64 %169, i64* %171, align 8
  %172 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  store %struct.TYPE_12__* %172, %struct.TYPE_12__** %5, align 8
  br label %173

173:                                              ; preds = %136, %131
  br label %174

174:                                              ; preds = %173, %114
  br label %175

175:                                              ; preds = %174, %108
  %176 = load i32, i32* %6, align 4
  %177 = icmp ne i32 %176, 0
  br i1 %177, label %178, label %186

178:                                              ; preds = %175
  %179 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %180 = ptrtoint %struct.TYPE_12__* %179 to i64
  %181 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %182 = load i32, i32* %6, align 4
  %183 = sext i32 %182 to i64
  %184 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %181, i64 %183
  %185 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %184, i32 0, i32 1
  store i64 %180, i64* %185, align 8
  br label %186

186:                                              ; preds = %178, %175
  %187 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %188 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %187, i32 0, i32 1
  %189 = ptrtoint %struct.TYPE_10__* %188 to i64
  %190 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %191 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %190, i32 0, i32 1
  store i64 %189, i64* %191, align 8
  %192 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %193 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %192, i32 0, i32 1
  %194 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %193, i32 0, i32 0
  %195 = load %struct.TYPE_12__*, %struct.TYPE_12__** %194, align 8
  %196 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %197 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %196, i32 0, i32 2
  store %struct.TYPE_12__* %195, %struct.TYPE_12__** %197, align 8
  %198 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %199 = ptrtoint %struct.TYPE_12__* %198 to i64
  %200 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %201 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %200, i32 0, i32 2
  %202 = load %struct.TYPE_12__*, %struct.TYPE_12__** %201, align 8
  %203 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %202, i32 0, i32 1
  store i64 %199, i64* %203, align 8
  %204 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %205 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %206 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %205, i32 0, i32 1
  %207 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %206, i32 0, i32 0
  store %struct.TYPE_12__* %204, %struct.TYPE_12__** %207, align 8
  ret void
}

declare dso_local i32 @ngx_memzero(%struct.TYPE_12__*, i32) #1

declare dso_local %struct.TYPE_12__* @ngx_slab_page_prev(%struct.TYPE_12__*) #1

declare dso_local i64 @ngx_slab_page_type(%struct.TYPE_12__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
