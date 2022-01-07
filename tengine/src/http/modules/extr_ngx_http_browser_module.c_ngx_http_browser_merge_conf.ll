; ModuleID = '/home/carl/AnghaBench/tengine/src/http/modules/extr_ngx_http_browser_module.c_ngx_http_browser_merge_conf.c'
source_filename = "/home/carl/AnghaBench/tengine/src/http/modules/extr_ngx_http_browser_module.c_ngx_http_browser_merge_conf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i64, i32, i32 }
%struct.TYPE_8__ = type { i64, i64, i32*, i32*, i32*, %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i64, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i64, i32, i32, i32 }

@NGX_CONF_ERROR = common dso_local global i8* null, align 8
@ngx_http_modern_browser_sort = common dso_local global i32 0, align 4
@ngx_http_modern_browser_masks = common dso_local global %struct.TYPE_9__* null, align 8
@ngx_http_variable_true_value = common dso_local global i32 0, align 4
@NGX_CONF_OK = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i32*, i8*, i8*)* @ngx_http_browser_merge_conf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @ngx_http_browser_merge_conf(i32* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.TYPE_8__*, align 8
  %9 = alloca %struct.TYPE_8__*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.TYPE_7__*, align 8
  %13 = alloca %struct.TYPE_7__*, align 8
  store i32* %0, i32** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  %14 = load i8*, i8** %6, align 8
  %15 = bitcast i8* %14 to %struct.TYPE_8__*
  store %struct.TYPE_8__* %15, %struct.TYPE_8__** %8, align 8
  %16 = load i8*, i8** %7, align 8
  %17 = bitcast i8* %16 to %struct.TYPE_8__*
  store %struct.TYPE_8__* %17, %struct.TYPE_8__** %9, align 8
  %18 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %19 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %18, i32 0, i32 5
  %20 = load %struct.TYPE_10__*, %struct.TYPE_10__** %19, align 8
  %21 = icmp eq %struct.TYPE_10__* %20, null
  br i1 %21, label %22, label %38

22:                                               ; preds = %3
  %23 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %24 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = icmp eq i64 %25, 0
  br i1 %26, label %27, label %38

27:                                               ; preds = %22
  %28 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %29 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %28, i32 0, i32 5
  %30 = load %struct.TYPE_10__*, %struct.TYPE_10__** %29, align 8
  %31 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %32 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %31, i32 0, i32 5
  store %struct.TYPE_10__* %30, %struct.TYPE_10__** %32, align 8
  %33 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %34 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %37 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %36, i32 0, i32 0
  store i64 %35, i64* %37, align 8
  br label %145

38:                                               ; preds = %22, %3
  %39 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %40 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %39, i32 0, i32 5
  %41 = load %struct.TYPE_10__*, %struct.TYPE_10__** %40, align 8
  %42 = icmp ne %struct.TYPE_10__* %41, null
  br i1 %42, label %43, label %144

43:                                               ; preds = %38
  %44 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %45 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %44, i32 0, i32 5
  %46 = load %struct.TYPE_10__*, %struct.TYPE_10__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %46, i32 0, i32 1
  %48 = load %struct.TYPE_7__*, %struct.TYPE_7__** %47, align 8
  store %struct.TYPE_7__* %48, %struct.TYPE_7__** %12, align 8
  store i64 0, i64* %10, align 8
  br label %49

49:                                               ; preds = %66, %43
  %50 = load i64, i64* %10, align 8
  %51 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %52 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %51, i32 0, i32 5
  %53 = load %struct.TYPE_10__*, %struct.TYPE_10__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = icmp ult i64 %50, %55
  br i1 %56, label %57, label %69

57:                                               ; preds = %49
  %58 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %59 = load i64, i64* %10, align 8
  %60 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %58, i64 %59
  %61 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = icmp eq i64 %62, 0
  br i1 %63, label %64, label %65

64:                                               ; preds = %57
  br label %88

65:                                               ; preds = %57
  br label %66

66:                                               ; preds = %65
  %67 = load i64, i64* %10, align 8
  %68 = add i64 %67, 1
  store i64 %68, i64* %10, align 8
  br label %49

69:                                               ; preds = %49
  %70 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %71 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %70, i32 0, i32 5
  %72 = load %struct.TYPE_10__*, %struct.TYPE_10__** %71, align 8
  %73 = call %struct.TYPE_7__* @ngx_array_push(%struct.TYPE_10__* %72)
  store %struct.TYPE_7__* %73, %struct.TYPE_7__** %13, align 8
  %74 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %75 = icmp eq %struct.TYPE_7__* %74, null
  br i1 %75, label %76, label %78

76:                                               ; preds = %69
  %77 = load i8*, i8** @NGX_CONF_ERROR, align 8
  store i8* %77, i8** %4, align 8
  br label %206

78:                                               ; preds = %69
  %79 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %80 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %79, i32 0, i32 0
  store i64 0, i64* %80, align 8
  %81 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %82 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %81, i32 0, i32 1
  store i32 -293967296, i32* %82, align 8
  %83 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %84 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %83, i32 0, i32 5
  %85 = load %struct.TYPE_10__*, %struct.TYPE_10__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %85, i32 0, i32 1
  %87 = load %struct.TYPE_7__*, %struct.TYPE_7__** %86, align 8
  store %struct.TYPE_7__* %87, %struct.TYPE_7__** %12, align 8
  br label %88

88:                                               ; preds = %78, %64
  %89 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %90 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %91 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %90, i32 0, i32 5
  %92 = load %struct.TYPE_10__*, %struct.TYPE_10__** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %92, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  %95 = load i32, i32* @ngx_http_modern_browser_sort, align 4
  %96 = call i32 @ngx_qsort(%struct.TYPE_7__* %89, i64 %94, i32 24, i32 %95)
  store i64 0, i64* %10, align 8
  br label %97

97:                                               ; preds = %140, %88
  %98 = load i64, i64* %10, align 8
  %99 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %100 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %99, i32 0, i32 5
  %101 = load %struct.TYPE_10__*, %struct.TYPE_10__** %100, align 8
  %102 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %101, i32 0, i32 0
  %103 = load i64, i64* %102, align 8
  %104 = icmp ult i64 %98, %103
  br i1 %104, label %105, label %143

105:                                              ; preds = %97
  %106 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %107 = load i64, i64* %10, align 8
  %108 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %106, i64 %107
  %109 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %108, i32 0, i32 0
  %110 = load i64, i64* %109, align 8
  store i64 %110, i64* %11, align 8
  %111 = load %struct.TYPE_9__*, %struct.TYPE_9__** @ngx_http_modern_browser_masks, align 8
  %112 = load i64, i64* %11, align 8
  %113 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %111, i64 %112
  %114 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %113, i32 0, i32 0
  %115 = load i64, i64* %114, align 8
  %116 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %117 = load i64, i64* %10, align 8
  %118 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %116, i64 %117
  %119 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %118, i32 0, i32 0
  store i64 %115, i64* %119, align 8
  %120 = load %struct.TYPE_9__*, %struct.TYPE_9__** @ngx_http_modern_browser_masks, align 8
  %121 = load i64, i64* %11, align 8
  %122 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %120, i64 %121
  %123 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %122, i32 0, i32 2
  %124 = load i32, i32* %123, align 4
  %125 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %126 = load i64, i64* %10, align 8
  %127 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %125, i64 %126
  %128 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %127, i32 0, i32 3
  store i32 %124, i32* %128, align 8
  %129 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %130 = load i64, i64* %10, align 8
  %131 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %129, i64 %130
  %132 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %131, i32 0, i32 2
  %133 = load i32, i32* %132, align 4
  %134 = load %struct.TYPE_9__*, %struct.TYPE_9__** @ngx_http_modern_browser_masks, align 8
  %135 = load i64, i64* %11, align 8
  %136 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %134, i64 %135
  %137 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %136, i32 0, i32 1
  %138 = load i32, i32* %137, align 8
  %139 = call i32 @ngx_cpystrn(i32 %133, i32 %138, i32 12)
  br label %140

140:                                              ; preds = %105
  %141 = load i64, i64* %10, align 8
  %142 = add i64 %141, 1
  store i64 %142, i64* %10, align 8
  br label %97

143:                                              ; preds = %97
  br label %144

144:                                              ; preds = %143, %38
  br label %145

145:                                              ; preds = %144, %27
  %146 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %147 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %146, i32 0, i32 4
  %148 = load i32*, i32** %147, align 8
  %149 = icmp eq i32* %148, null
  br i1 %149, label %150, label %166

150:                                              ; preds = %145
  %151 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %152 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %151, i32 0, i32 1
  %153 = load i64, i64* %152, align 8
  %154 = icmp eq i64 %153, 0
  br i1 %154, label %155, label %166

155:                                              ; preds = %150
  %156 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %157 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %156, i32 0, i32 4
  %158 = load i32*, i32** %157, align 8
  %159 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %160 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %159, i32 0, i32 4
  store i32* %158, i32** %160, align 8
  %161 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %162 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %161, i32 0, i32 1
  %163 = load i64, i64* %162, align 8
  %164 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %165 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %164, i32 0, i32 1
  store i64 %163, i64* %165, align 8
  br label %166

166:                                              ; preds = %155, %150, %145
  %167 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %168 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %167, i32 0, i32 3
  %169 = load i32*, i32** %168, align 8
  %170 = icmp eq i32* %169, null
  br i1 %170, label %171, label %177

171:                                              ; preds = %166
  %172 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %173 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %172, i32 0, i32 3
  %174 = load i32*, i32** %173, align 8
  %175 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %176 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %175, i32 0, i32 3
  store i32* %174, i32** %176, align 8
  br label %177

177:                                              ; preds = %171, %166
  %178 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %179 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %178, i32 0, i32 3
  %180 = load i32*, i32** %179, align 8
  %181 = icmp eq i32* %180, null
  br i1 %181, label %182, label %185

182:                                              ; preds = %177
  %183 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %184 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %183, i32 0, i32 3
  store i32* @ngx_http_variable_true_value, i32** %184, align 8
  br label %185

185:                                              ; preds = %182, %177
  %186 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %187 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %186, i32 0, i32 2
  %188 = load i32*, i32** %187, align 8
  %189 = icmp eq i32* %188, null
  br i1 %189, label %190, label %196

190:                                              ; preds = %185
  %191 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %192 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %191, i32 0, i32 2
  %193 = load i32*, i32** %192, align 8
  %194 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %195 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %194, i32 0, i32 2
  store i32* %193, i32** %195, align 8
  br label %196

196:                                              ; preds = %190, %185
  %197 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %198 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %197, i32 0, i32 2
  %199 = load i32*, i32** %198, align 8
  %200 = icmp eq i32* %199, null
  br i1 %200, label %201, label %204

201:                                              ; preds = %196
  %202 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %203 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %202, i32 0, i32 2
  store i32* @ngx_http_variable_true_value, i32** %203, align 8
  br label %204

204:                                              ; preds = %201, %196
  %205 = load i8*, i8** @NGX_CONF_OK, align 8
  store i8* %205, i8** %4, align 8
  br label %206

206:                                              ; preds = %204, %76
  %207 = load i8*, i8** %4, align 8
  ret i8* %207
}

declare dso_local %struct.TYPE_7__* @ngx_array_push(%struct.TYPE_10__*) #1

declare dso_local i32 @ngx_qsort(%struct.TYPE_7__*, i64, i32, i32) #1

declare dso_local i32 @ngx_cpystrn(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
