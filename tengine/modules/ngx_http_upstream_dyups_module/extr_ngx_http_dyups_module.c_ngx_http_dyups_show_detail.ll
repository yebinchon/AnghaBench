; ModuleID = '/home/carl/AnghaBench/tengine/modules/ngx_http_upstream_dyups_module/extr_ngx_http_dyups_module.c_ngx_http_dyups_show_detail.c'
source_filename = "/home/carl/AnghaBench/tengine/modules/ngx_http_upstream_dyups_module/extr_ngx_http_dyups_module.c_ngx_http_dyups_show_detail.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i8* }
%struct.TYPE_23__ = type { i32 }
%struct.TYPE_21__ = type { i64 }
%struct.TYPE_24__ = type { %struct.TYPE_19__*, i64, i32 }
%struct.TYPE_19__ = type { %struct.TYPE_18__*, %struct.TYPE_21__ }
%struct.TYPE_18__ = type { i64, %struct.TYPE_22__* }
%struct.TYPE_22__ = type { i32, i32, i32, i32, i32, i32, %struct.TYPE_20__* }
%struct.TYPE_20__ = type { i32 }
%struct.TYPE_25__ = type { %struct.TYPE_17__ }
%struct.TYPE_17__ = type { i64, %struct.TYPE_24__* }

@ngx_http_dyups_module = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"%V\0A\00", align 1
@.str.1 = private unnamed_addr constant [68 x i8] c"server %V weight=%i max_fails=%i fail_timeout=%T backup=%d down=%d\0A\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_16__* (%struct.TYPE_23__*)* @ngx_http_dyups_show_detail to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_16__* @ngx_http_dyups_show_detail(%struct.TYPE_23__* %0) #0 {
  %2 = alloca %struct.TYPE_16__*, align 8
  %3 = alloca %struct.TYPE_23__*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.TYPE_21__, align 8
  %8 = alloca %struct.TYPE_16__*, align 8
  %9 = alloca %struct.TYPE_24__*, align 8
  %10 = alloca %struct.TYPE_24__*, align 8
  %11 = alloca %struct.TYPE_25__*, align 8
  %12 = alloca %struct.TYPE_22__*, align 8
  store %struct.TYPE_23__* %0, %struct.TYPE_23__** %3, align 8
  %13 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %14 = load i32, i32* @ngx_http_dyups_module, align 4
  %15 = call %struct.TYPE_25__* @ngx_http_get_module_main_conf(%struct.TYPE_23__* %13, i32 %14)
  store %struct.TYPE_25__* %15, %struct.TYPE_25__** %11, align 8
  store i64 0, i64* %6, align 8
  %16 = load %struct.TYPE_25__*, %struct.TYPE_25__** %11, align 8
  %17 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %17, i32 0, i32 1
  %19 = load %struct.TYPE_24__*, %struct.TYPE_24__** %18, align 8
  store %struct.TYPE_24__* %19, %struct.TYPE_24__** %9, align 8
  store i64 0, i64* %4, align 8
  br label %20

20:                                               ; preds = %69, %1
  %21 = load i64, i64* %4, align 8
  %22 = load %struct.TYPE_25__*, %struct.TYPE_25__** %11, align 8
  %23 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = icmp ult i64 %21, %25
  br i1 %26, label %27, label %72

27:                                               ; preds = %20
  %28 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %29 = load i64, i64* %4, align 8
  %30 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %28, i64 %29
  store %struct.TYPE_24__* %30, %struct.TYPE_24__** %10, align 8
  %31 = load %struct.TYPE_24__*, %struct.TYPE_24__** %10, align 8
  %32 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 8
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %36, label %35

35:                                               ; preds = %27
  br label %69

36:                                               ; preds = %27
  %37 = load %struct.TYPE_24__*, %struct.TYPE_24__** %10, align 8
  %38 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %36
  br label %69

42:                                               ; preds = %36
  %43 = load %struct.TYPE_24__*, %struct.TYPE_24__** %10, align 8
  %44 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %43, i32 0, i32 0
  %45 = load %struct.TYPE_19__*, %struct.TYPE_19__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %45, i32 0, i32 1
  %47 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = add i64 %48, 1
  %50 = load i64, i64* %6, align 8
  %51 = add i64 %50, %49
  store i64 %51, i64* %6, align 8
  store i64 0, i64* %5, align 8
  br label %52

52:                                               ; preds = %65, %42
  %53 = load i64, i64* %5, align 8
  %54 = load %struct.TYPE_24__*, %struct.TYPE_24__** %10, align 8
  %55 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %54, i32 0, i32 0
  %56 = load %struct.TYPE_19__*, %struct.TYPE_19__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %56, i32 0, i32 0
  %58 = load %struct.TYPE_18__*, %struct.TYPE_18__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = icmp ult i64 %53, %60
  br i1 %61, label %62, label %68

62:                                               ; preds = %52
  %63 = load i64, i64* %6, align 8
  %64 = add i64 %63, 264
  store i64 %64, i64* %6, align 8
  br label %65

65:                                               ; preds = %62
  %66 = load i64, i64* %5, align 8
  %67 = add i64 %66, 1
  store i64 %67, i64* %5, align 8
  br label %52

68:                                               ; preds = %52
  br label %69

69:                                               ; preds = %68, %41, %35
  %70 = load i64, i64* %4, align 8
  %71 = add i64 %70, 1
  store i64 %71, i64* %4, align 8
  br label %20

72:                                               ; preds = %20
  %73 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %74 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = load i64, i64* %6, align 8
  %77 = call %struct.TYPE_16__* @ngx_create_temp_buf(i32 %75, i64 %76)
  store %struct.TYPE_16__* %77, %struct.TYPE_16__** %8, align 8
  %78 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %79 = icmp eq %struct.TYPE_16__* %78, null
  br i1 %79, label %80, label %81

80:                                               ; preds = %72
  store %struct.TYPE_16__* null, %struct.TYPE_16__** %2, align 8
  br label %187

81:                                               ; preds = %72
  store i64 0, i64* %4, align 8
  br label %82

82:                                               ; preds = %182, %81
  %83 = load i64, i64* %4, align 8
  %84 = load %struct.TYPE_25__*, %struct.TYPE_25__** %11, align 8
  %85 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = icmp ult i64 %83, %87
  br i1 %88, label %89, label %185

89:                                               ; preds = %82
  %90 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %91 = load i64, i64* %4, align 8
  %92 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %90, i64 %91
  store %struct.TYPE_24__* %92, %struct.TYPE_24__** %10, align 8
  %93 = load %struct.TYPE_24__*, %struct.TYPE_24__** %10, align 8
  %94 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %93, i32 0, i32 2
  %95 = load i32, i32* %94, align 8
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %98, label %97

97:                                               ; preds = %89
  br label %182

98:                                               ; preds = %89
  %99 = load %struct.TYPE_24__*, %struct.TYPE_24__** %10, align 8
  %100 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %99, i32 0, i32 1
  %101 = load i64, i64* %100, align 8
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %104

103:                                              ; preds = %98
  br label %182

104:                                              ; preds = %98
  %105 = load %struct.TYPE_24__*, %struct.TYPE_24__** %10, align 8
  %106 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %105, i32 0, i32 0
  %107 = load %struct.TYPE_19__*, %struct.TYPE_19__** %106, align 8
  %108 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %107, i32 0, i32 1
  %109 = bitcast %struct.TYPE_21__* %7 to i8*
  %110 = bitcast %struct.TYPE_21__* %108 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %109, i8* align 8 %110, i64 8, i1 false)
  %111 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %112 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %111, i32 0, i32 0
  %113 = load i8*, i8** %112, align 8
  %114 = call i8* (i8*, i8*, ...) @ngx_sprintf(i8* %113, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), %struct.TYPE_21__* %7)
  %115 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %116 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %115, i32 0, i32 0
  store i8* %114, i8** %116, align 8
  %117 = load %struct.TYPE_24__*, %struct.TYPE_24__** %10, align 8
  %118 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %117, i32 0, i32 0
  %119 = load %struct.TYPE_19__*, %struct.TYPE_19__** %118, align 8
  %120 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %119, i32 0, i32 0
  %121 = load %struct.TYPE_18__*, %struct.TYPE_18__** %120, align 8
  %122 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %121, i32 0, i32 1
  %123 = load %struct.TYPE_22__*, %struct.TYPE_22__** %122, align 8
  store %struct.TYPE_22__* %123, %struct.TYPE_22__** %12, align 8
  store i64 0, i64* %5, align 8
  br label %124

124:                                              ; preds = %172, %104
  %125 = load i64, i64* %5, align 8
  %126 = load %struct.TYPE_24__*, %struct.TYPE_24__** %10, align 8
  %127 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %126, i32 0, i32 0
  %128 = load %struct.TYPE_19__*, %struct.TYPE_19__** %127, align 8
  %129 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %128, i32 0, i32 0
  %130 = load %struct.TYPE_18__*, %struct.TYPE_18__** %129, align 8
  %131 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %130, i32 0, i32 0
  %132 = load i64, i64* %131, align 8
  %133 = icmp ult i64 %125, %132
  br i1 %133, label %134, label %175

134:                                              ; preds = %124
  %135 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %136 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %135, i32 0, i32 0
  %137 = load i8*, i8** %136, align 8
  %138 = load %struct.TYPE_22__*, %struct.TYPE_22__** %12, align 8
  %139 = load i64, i64* %5, align 8
  %140 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %138, i64 %139
  %141 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %140, i32 0, i32 6
  %142 = load %struct.TYPE_20__*, %struct.TYPE_20__** %141, align 8
  %143 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %142, i32 0, i32 0
  %144 = load %struct.TYPE_22__*, %struct.TYPE_22__** %12, align 8
  %145 = load i64, i64* %5, align 8
  %146 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %144, i64 %145
  %147 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %146, i32 0, i32 5
  %148 = load i32, i32* %147, align 4
  %149 = load %struct.TYPE_22__*, %struct.TYPE_22__** %12, align 8
  %150 = load i64, i64* %5, align 8
  %151 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %149, i64 %150
  %152 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %151, i32 0, i32 3
  %153 = load i32, i32* %152, align 4
  %154 = load %struct.TYPE_22__*, %struct.TYPE_22__** %12, align 8
  %155 = load i64, i64* %5, align 8
  %156 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %154, i64 %155
  %157 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %156, i32 0, i32 2
  %158 = load i32, i32* %157, align 8
  %159 = load %struct.TYPE_22__*, %struct.TYPE_22__** %12, align 8
  %160 = load i64, i64* %5, align 8
  %161 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %159, i64 %160
  %162 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %161, i32 0, i32 1
  %163 = load i32, i32* %162, align 4
  %164 = load %struct.TYPE_22__*, %struct.TYPE_22__** %12, align 8
  %165 = load i64, i64* %5, align 8
  %166 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %164, i64 %165
  %167 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %166, i32 0, i32 0
  %168 = load i32, i32* %167, align 8
  %169 = call i8* (i8*, i8*, ...) @ngx_sprintf(i8* %137, i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.1, i64 0, i64 0), i32* %143, i32 %148, i32 %153, i32 %158, i32 %163, i32 %168)
  %170 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %171 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %170, i32 0, i32 0
  store i8* %169, i8** %171, align 8
  br label %172

172:                                              ; preds = %134
  %173 = load i64, i64* %5, align 8
  %174 = add i64 %173, 1
  store i64 %174, i64* %5, align 8
  br label %124

175:                                              ; preds = %124
  %176 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %177 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %176, i32 0, i32 0
  %178 = load i8*, i8** %177, align 8
  %179 = call i8* (i8*, i8*, ...) @ngx_sprintf(i8* %178, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  %180 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %181 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %180, i32 0, i32 0
  store i8* %179, i8** %181, align 8
  br label %182

182:                                              ; preds = %175, %103, %97
  %183 = load i64, i64* %4, align 8
  %184 = add i64 %183, 1
  store i64 %184, i64* %4, align 8
  br label %82

185:                                              ; preds = %82
  %186 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  store %struct.TYPE_16__* %186, %struct.TYPE_16__** %2, align 8
  br label %187

187:                                              ; preds = %185, %80
  %188 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  ret %struct.TYPE_16__* %188
}

declare dso_local %struct.TYPE_25__* @ngx_http_get_module_main_conf(%struct.TYPE_23__*, i32) #1

declare dso_local %struct.TYPE_16__* @ngx_create_temp_buf(i32, i64) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i8* @ngx_sprintf(i8*, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
