; ModuleID = '/home/carl/AnghaBench/tengine/src/http/modules/extr_ngx_http_realip_module.c_ngx_http_realip_handler.c'
source_filename = "/home/carl/AnghaBench/tengine/src/http/modules/extr_ngx_http_realip_module.c_ngx_http_realip_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_36__ = type { %struct.TYPE_25__*, %struct.TYPE_30__ }
%struct.TYPE_25__ = type { i32, i32, i32, %struct.TYPE_34__ }
%struct.TYPE_34__ = type { i32 }
%struct.TYPE_30__ = type { %struct.TYPE_29__, %struct.TYPE_26__, %struct.TYPE_28__* }
%struct.TYPE_29__ = type { %struct.TYPE_35__ }
%struct.TYPE_35__ = type { i64, %struct.TYPE_33__*, %struct.TYPE_35__* }
%struct.TYPE_33__ = type { i64, %struct.TYPE_34__, i32, %struct.TYPE_32__ }
%struct.TYPE_32__ = type { i64 }
%struct.TYPE_26__ = type { i32* }
%struct.TYPE_28__ = type { %struct.TYPE_34__ }
%struct.TYPE_27__ = type { i32, i32 }
%struct.TYPE_24__ = type { i32, i64, i32, i32*, %struct.TYPE_31__ }
%struct.TYPE_31__ = type { i64, i32* }

@ngx_http_realip_module = common dso_local global i32 0, align 4
@NGX_DECLINED = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_36__*)* @ngx_http_realip_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ngx_http_realip_handler(%struct.TYPE_36__* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.TYPE_36__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_34__*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.TYPE_27__, align 4
  %10 = alloca %struct.TYPE_26__*, align 8
  %11 = alloca %struct.TYPE_35__*, align 8
  %12 = alloca %struct.TYPE_33__*, align 8
  %13 = alloca %struct.TYPE_25__*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca %struct.TYPE_24__*, align 8
  store %struct.TYPE_36__* %0, %struct.TYPE_36__** %3, align 8
  %16 = load %struct.TYPE_36__*, %struct.TYPE_36__** %3, align 8
  %17 = load i32, i32* @ngx_http_realip_module, align 4
  %18 = call %struct.TYPE_24__* @ngx_http_get_module_loc_conf(%struct.TYPE_36__* %16, i32 %17)
  store %struct.TYPE_24__* %18, %struct.TYPE_24__** %15, align 8
  %19 = load %struct.TYPE_24__*, %struct.TYPE_24__** %15, align 8
  %20 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %19, i32 0, i32 3
  %21 = load i32*, i32** %20, align 8
  %22 = icmp eq i32* %21, null
  br i1 %22, label %23, label %25

23:                                               ; preds = %1
  %24 = load i64, i64* @NGX_DECLINED, align 8
  store i64 %24, i64* %2, align 8
  br label %191

25:                                               ; preds = %1
  %26 = load %struct.TYPE_36__*, %struct.TYPE_36__** %3, align 8
  %27 = call i32* @ngx_http_realip_get_module_ctx(%struct.TYPE_36__* %26)
  store i32* %27, i32** %14, align 8
  %28 = load i32*, i32** %14, align 8
  %29 = icmp ne i32* %28, null
  br i1 %29, label %30, label %32

30:                                               ; preds = %25
  %31 = load i64, i64* @NGX_DECLINED, align 8
  store i64 %31, i64* %2, align 8
  br label %191

32:                                               ; preds = %25
  %33 = load %struct.TYPE_24__*, %struct.TYPE_24__** %15, align 8
  %34 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  switch i32 %35, label %73 [
    i32 128, label %36
    i32 129, label %50
    i32 130, label %61
  ]

36:                                               ; preds = %32
  %37 = load %struct.TYPE_36__*, %struct.TYPE_36__** %3, align 8
  %38 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %38, i32 0, i32 2
  %40 = load %struct.TYPE_28__*, %struct.TYPE_28__** %39, align 8
  %41 = icmp eq %struct.TYPE_28__* %40, null
  br i1 %41, label %42, label %44

42:                                               ; preds = %36
  %43 = load i64, i64* @NGX_DECLINED, align 8
  store i64 %43, i64* %2, align 8
  br label %191

44:                                               ; preds = %36
  %45 = load %struct.TYPE_36__*, %struct.TYPE_36__** %3, align 8
  %46 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %45, i32 0, i32 1
  %47 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %46, i32 0, i32 2
  %48 = load %struct.TYPE_28__*, %struct.TYPE_28__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %48, i32 0, i32 0
  store %struct.TYPE_34__* %49, %struct.TYPE_34__** %6, align 8
  store %struct.TYPE_26__* null, %struct.TYPE_26__** %10, align 8
  br label %149

50:                                               ; preds = %32
  %51 = load %struct.TYPE_36__*, %struct.TYPE_36__** %3, align 8
  %52 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %51, i32 0, i32 1
  %53 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %52, i32 0, i32 1
  store %struct.TYPE_26__* %53, %struct.TYPE_26__** %10, align 8
  %54 = load %struct.TYPE_26__*, %struct.TYPE_26__** %10, align 8
  %55 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %54, i32 0, i32 0
  %56 = load i32*, i32** %55, align 8
  %57 = icmp eq i32* %56, null
  br i1 %57, label %58, label %60

58:                                               ; preds = %50
  %59 = load i64, i64* @NGX_DECLINED, align 8
  store i64 %59, i64* %2, align 8
  br label %191

60:                                               ; preds = %50
  store %struct.TYPE_34__* null, %struct.TYPE_34__** %6, align 8
  br label %149

61:                                               ; preds = %32
  %62 = load %struct.TYPE_36__*, %struct.TYPE_36__** %3, align 8
  %63 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %62, i32 0, i32 0
  %64 = load %struct.TYPE_25__*, %struct.TYPE_25__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %64, i32 0, i32 3
  store %struct.TYPE_34__* %65, %struct.TYPE_34__** %6, align 8
  %66 = load %struct.TYPE_34__*, %struct.TYPE_34__** %6, align 8
  %67 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %70, label %72

70:                                               ; preds = %61
  %71 = load i64, i64* @NGX_DECLINED, align 8
  store i64 %71, i64* %2, align 8
  br label %191

72:                                               ; preds = %61
  store %struct.TYPE_26__* null, %struct.TYPE_26__** %10, align 8
  br label %149

73:                                               ; preds = %32
  %74 = load %struct.TYPE_36__*, %struct.TYPE_36__** %3, align 8
  %75 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %74, i32 0, i32 1
  %76 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %76, i32 0, i32 0
  store %struct.TYPE_35__* %77, %struct.TYPE_35__** %11, align 8
  %78 = load %struct.TYPE_35__*, %struct.TYPE_35__** %11, align 8
  %79 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %78, i32 0, i32 1
  %80 = load %struct.TYPE_33__*, %struct.TYPE_33__** %79, align 8
  store %struct.TYPE_33__* %80, %struct.TYPE_33__** %12, align 8
  %81 = load %struct.TYPE_24__*, %struct.TYPE_24__** %15, align 8
  %82 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %81, i32 0, i32 1
  %83 = load i64, i64* %82, align 8
  store i64 %83, i64* %8, align 8
  %84 = load %struct.TYPE_24__*, %struct.TYPE_24__** %15, align 8
  %85 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %84, i32 0, i32 4
  %86 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  store i64 %87, i64* %5, align 8
  %88 = load %struct.TYPE_24__*, %struct.TYPE_24__** %15, align 8
  %89 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %88, i32 0, i32 4
  %90 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %89, i32 0, i32 1
  %91 = load i32*, i32** %90, align 8
  store i32* %91, i32** %4, align 8
  store i64 0, i64* %7, align 8
  br label %92

92:                                               ; preds = %144, %73
  %93 = load i64, i64* %7, align 8
  %94 = load %struct.TYPE_35__*, %struct.TYPE_35__** %11, align 8
  %95 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %94, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  %97 = icmp uge i64 %93, %96
  br i1 %97, label %98, label %111

98:                                               ; preds = %92
  %99 = load %struct.TYPE_35__*, %struct.TYPE_35__** %11, align 8
  %100 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %99, i32 0, i32 2
  %101 = load %struct.TYPE_35__*, %struct.TYPE_35__** %100, align 8
  %102 = icmp eq %struct.TYPE_35__* %101, null
  br i1 %102, label %103, label %104

103:                                              ; preds = %98
  br label %147

104:                                              ; preds = %98
  %105 = load %struct.TYPE_35__*, %struct.TYPE_35__** %11, align 8
  %106 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %105, i32 0, i32 2
  %107 = load %struct.TYPE_35__*, %struct.TYPE_35__** %106, align 8
  store %struct.TYPE_35__* %107, %struct.TYPE_35__** %11, align 8
  %108 = load %struct.TYPE_35__*, %struct.TYPE_35__** %11, align 8
  %109 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %108, i32 0, i32 1
  %110 = load %struct.TYPE_33__*, %struct.TYPE_33__** %109, align 8
  store %struct.TYPE_33__* %110, %struct.TYPE_33__** %12, align 8
  store i64 0, i64* %7, align 8
  br label %111

111:                                              ; preds = %104, %92
  %112 = load i64, i64* %8, align 8
  %113 = load %struct.TYPE_33__*, %struct.TYPE_33__** %12, align 8
  %114 = load i64, i64* %7, align 8
  %115 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %113, i64 %114
  %116 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %115, i32 0, i32 0
  %117 = load i64, i64* %116, align 8
  %118 = icmp eq i64 %112, %117
  br i1 %118, label %119, label %143

119:                                              ; preds = %111
  %120 = load i64, i64* %5, align 8
  %121 = load %struct.TYPE_33__*, %struct.TYPE_33__** %12, align 8
  %122 = load i64, i64* %7, align 8
  %123 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %121, i64 %122
  %124 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %123, i32 0, i32 3
  %125 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %124, i32 0, i32 0
  %126 = load i64, i64* %125, align 8
  %127 = icmp eq i64 %120, %126
  br i1 %127, label %128, label %143

128:                                              ; preds = %119
  %129 = load i32*, i32** %4, align 8
  %130 = load %struct.TYPE_33__*, %struct.TYPE_33__** %12, align 8
  %131 = load i64, i64* %7, align 8
  %132 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %130, i64 %131
  %133 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %132, i32 0, i32 2
  %134 = load i32, i32* %133, align 4
  %135 = load i64, i64* %5, align 8
  %136 = call i32 @ngx_strncmp(i32* %129, i32 %134, i64 %135)
  %137 = icmp eq i32 %136, 0
  br i1 %137, label %138, label %143

138:                                              ; preds = %128
  %139 = load %struct.TYPE_33__*, %struct.TYPE_33__** %12, align 8
  %140 = load i64, i64* %7, align 8
  %141 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %139, i64 %140
  %142 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %141, i32 0, i32 1
  store %struct.TYPE_34__* %142, %struct.TYPE_34__** %6, align 8
  store %struct.TYPE_26__* null, %struct.TYPE_26__** %10, align 8
  br label %150

143:                                              ; preds = %128, %119, %111
  br label %144

144:                                              ; preds = %143
  %145 = load i64, i64* %7, align 8
  %146 = add i64 %145, 1
  store i64 %146, i64* %7, align 8
  br label %92

147:                                              ; preds = %103
  %148 = load i64, i64* @NGX_DECLINED, align 8
  store i64 %148, i64* %2, align 8
  br label %191

149:                                              ; preds = %72, %60, %44
  br label %150

150:                                              ; preds = %149, %138
  %151 = load %struct.TYPE_36__*, %struct.TYPE_36__** %3, align 8
  %152 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %151, i32 0, i32 0
  %153 = load %struct.TYPE_25__*, %struct.TYPE_25__** %152, align 8
  store %struct.TYPE_25__* %153, %struct.TYPE_25__** %13, align 8
  %154 = load %struct.TYPE_25__*, %struct.TYPE_25__** %13, align 8
  %155 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %154, i32 0, i32 2
  %156 = load i32, i32* %155, align 4
  %157 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %9, i32 0, i32 0
  store i32 %156, i32* %157, align 4
  %158 = load %struct.TYPE_25__*, %struct.TYPE_25__** %13, align 8
  %159 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %158, i32 0, i32 1
  %160 = load i32, i32* %159, align 4
  %161 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %9, i32 0, i32 1
  store i32 %160, i32* %161, align 4
  %162 = load %struct.TYPE_36__*, %struct.TYPE_36__** %3, align 8
  %163 = load %struct.TYPE_26__*, %struct.TYPE_26__** %10, align 8
  %164 = load %struct.TYPE_34__*, %struct.TYPE_34__** %6, align 8
  %165 = load %struct.TYPE_24__*, %struct.TYPE_24__** %15, align 8
  %166 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %165, i32 0, i32 3
  %167 = load i32*, i32** %166, align 8
  %168 = load %struct.TYPE_24__*, %struct.TYPE_24__** %15, align 8
  %169 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %168, i32 0, i32 2
  %170 = load i32, i32* %169, align 8
  %171 = call i64 @ngx_http_get_forwarded_addr(%struct.TYPE_36__* %162, %struct.TYPE_27__* %9, %struct.TYPE_26__* %163, %struct.TYPE_34__* %164, i32* %167, i32 %170)
  %172 = load i64, i64* @NGX_DECLINED, align 8
  %173 = icmp ne i64 %171, %172
  br i1 %173, label %174, label %189

174:                                              ; preds = %150
  %175 = load %struct.TYPE_24__*, %struct.TYPE_24__** %15, align 8
  %176 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %175, i32 0, i32 0
  %177 = load i32, i32* %176, align 8
  %178 = icmp eq i32 %177, 130
  br i1 %178, label %179, label %186

179:                                              ; preds = %174
  %180 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %9, i32 0, i32 0
  %181 = load i32, i32* %180, align 4
  %182 = load %struct.TYPE_25__*, %struct.TYPE_25__** %13, align 8
  %183 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %182, i32 0, i32 0
  %184 = load i32, i32* %183, align 4
  %185 = call i32 @ngx_inet_set_port(i32 %181, i32 %184)
  br label %186

186:                                              ; preds = %179, %174
  %187 = load %struct.TYPE_36__*, %struct.TYPE_36__** %3, align 8
  %188 = call i64 @ngx_http_realip_set_addr(%struct.TYPE_36__* %187, %struct.TYPE_27__* %9)
  store i64 %188, i64* %2, align 8
  br label %191

189:                                              ; preds = %150
  %190 = load i64, i64* @NGX_DECLINED, align 8
  store i64 %190, i64* %2, align 8
  br label %191

191:                                              ; preds = %189, %186, %147, %70, %58, %42, %30, %23
  %192 = load i64, i64* %2, align 8
  ret i64 %192
}

declare dso_local %struct.TYPE_24__* @ngx_http_get_module_loc_conf(%struct.TYPE_36__*, i32) #1

declare dso_local i32* @ngx_http_realip_get_module_ctx(%struct.TYPE_36__*) #1

declare dso_local i32 @ngx_strncmp(i32*, i32, i64) #1

declare dso_local i64 @ngx_http_get_forwarded_addr(%struct.TYPE_36__*, %struct.TYPE_27__*, %struct.TYPE_26__*, %struct.TYPE_34__*, i32*, i32) #1

declare dso_local i32 @ngx_inet_set_port(i32, i32) #1

declare dso_local i64 @ngx_http_realip_set_addr(%struct.TYPE_36__*, %struct.TYPE_27__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
