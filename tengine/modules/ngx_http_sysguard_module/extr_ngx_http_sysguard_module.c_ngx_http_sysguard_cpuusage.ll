; ModuleID = '/home/carl/AnghaBench/tengine/modules/ngx_http_sysguard_module/extr_ngx_http_sysguard_module.c_ngx_http_sysguard_cpuusage.c'
source_filename = "/home/carl/AnghaBench/tengine/modules/ngx_http_sysguard_module/extr_ngx_http_sysguard_module.c_ngx_http_sysguard_cpuusage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i64, %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i8*, i32 }
%struct.TYPE_13__ = type { i32, i64, %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i8*, i32 }

@.str = private unnamed_addr constant [7 x i8] c"usage=\00", align 1
@NGX_CONF_UNSET = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [13 x i8] c"is duplicate\00", align 1
@NGX_ERROR = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [8 x i8] c"period=\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"action=\00", align 1
@NGX_CONF_OK = common dso_local global i8* null, align 8
@NGX_LOG_EMERG = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [23 x i8] c"invalid parameter \22%V\22\00", align 1
@NGX_CONF_ERROR = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.TYPE_14__*, i32*, i8*)* @ngx_http_sysguard_cpuusage to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @ngx_http_sysguard_cpuusage(%struct.TYPE_14__* %0, i32* %1, i8* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.TYPE_14__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.TYPE_13__*, align 8
  %9 = alloca %struct.TYPE_12__*, align 8
  %10 = alloca i64, align 8
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %5, align 8
  store i32* %1, i32** %6, align 8
  store i8* %2, i8** %7, align 8
  %11 = load i8*, i8** %7, align 8
  %12 = bitcast i8* %11 to %struct.TYPE_13__*
  store %struct.TYPE_13__* %12, %struct.TYPE_13__** %8, align 8
  %13 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %14 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %13, i32 0, i32 0
  %15 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %15, i32 0, i32 1
  %17 = load %struct.TYPE_12__*, %struct.TYPE_12__** %16, align 8
  store %struct.TYPE_12__* %17, %struct.TYPE_12__** %9, align 8
  %18 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %19 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %18, i32 0, i32 0
  store i32 3, i32* %19, align 8
  store i64 1, i64* %10, align 8
  br label %20

20:                                               ; preds = %184, %3
  %21 = load i64, i64* %10, align 8
  %22 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %23 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %22, i32 0, i32 0
  %24 = load %struct.TYPE_10__*, %struct.TYPE_10__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = icmp ult i64 %21, %26
  br i1 %27, label %28, label %187

28:                                               ; preds = %20
  %29 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %30 = load i64, i64* %10, align 8
  %31 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %29, i64 %30
  %32 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %31, i32 0, i32 0
  %33 = load i8*, i8** %32, align 8
  %34 = call i64 @ngx_strncmp(i8* %33, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 6)
  %35 = icmp eq i64 %34, 0
  br i1 %35, label %36, label %84

36:                                               ; preds = %28
  %37 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %38 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @NGX_CONF_UNSET, align 8
  %41 = icmp ne i64 %39, %40
  br i1 %41, label %42, label %43

42:                                               ; preds = %36
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i8** %4, align 8
  br label %197

43:                                               ; preds = %36
  %44 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %45 = load i64, i64* %10, align 8
  %46 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %44, i64 %45
  %47 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 8
  %49 = icmp eq i32 %48, 6
  br i1 %49, label %50, label %51

50:                                               ; preds = %43
  br label %189

51:                                               ; preds = %43
  %52 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %53 = load i64, i64* %10, align 8
  %54 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %52, i64 %53
  %55 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %54, i32 0, i32 0
  %56 = load i8*, i8** %55, align 8
  %57 = getelementptr inbounds i8, i8* %56, i64 6
  store i8* %57, i8** %55, align 8
  %58 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %59 = load i64, i64* %10, align 8
  %60 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %58, i64 %59
  %61 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 8
  %63 = sub nsw i32 %62, 6
  store i32 %63, i32* %61, align 8
  %64 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %65 = load i64, i64* %10, align 8
  %66 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %64, i64 %65
  %67 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %66, i32 0, i32 0
  %68 = load i8*, i8** %67, align 8
  %69 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %70 = load i64, i64* %10, align 8
  %71 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %69, i64 %70
  %72 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 8
  %74 = call i64 @ngx_atofp(i8* %68, i32 %73, i32 2)
  %75 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %76 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %75, i32 0, i32 1
  store i64 %74, i64* %76, align 8
  %77 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %78 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %77, i32 0, i32 1
  %79 = load i64, i64* %78, align 8
  %80 = load i64, i64* @NGX_ERROR, align 8
  %81 = icmp eq i64 %79, %80
  br i1 %81, label %82, label %83

82:                                               ; preds = %51
  br label %189

83:                                               ; preds = %51
  br label %184

84:                                               ; preds = %28
  %85 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %86 = load i64, i64* %10, align 8
  %87 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %85, i64 %86
  %88 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %87, i32 0, i32 0
  %89 = load i8*, i8** %88, align 8
  %90 = call i64 @ngx_strncmp(i8* %89, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i32 7)
  %91 = icmp eq i64 %90, 0
  br i1 %91, label %92, label %127

92:                                               ; preds = %84
  %93 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %94 = load i64, i64* %10, align 8
  %95 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %93, i64 %94
  %96 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 8
  %98 = icmp eq i32 %97, 7
  br i1 %98, label %99, label %100

99:                                               ; preds = %92
  br label %189

100:                                              ; preds = %92
  %101 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %102 = load i64, i64* %10, align 8
  %103 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %101, i64 %102
  %104 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %103, i32 0, i32 0
  %105 = load i8*, i8** %104, align 8
  %106 = getelementptr inbounds i8, i8* %105, i64 7
  store i8* %106, i8** %104, align 8
  %107 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %108 = load i64, i64* %10, align 8
  %109 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %107, i64 %108
  %110 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %109, i32 0, i32 1
  %111 = load i32, i32* %110, align 8
  %112 = sub nsw i32 %111, 7
  store i32 %112, i32* %110, align 8
  %113 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %114 = load i64, i64* %10, align 8
  %115 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %113, i64 %114
  %116 = call i32 @ngx_parse_time(%struct.TYPE_12__* %115, i32 1)
  %117 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %118 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %117, i32 0, i32 0
  store i32 %116, i32* %118, align 8
  %119 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %120 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 8
  %122 = load i64, i64* @NGX_ERROR, align 8
  %123 = trunc i64 %122 to i32
  %124 = icmp eq i32 %121, %123
  br i1 %124, label %125, label %126

125:                                              ; preds = %100
  br label %189

126:                                              ; preds = %100
  br label %184

127:                                              ; preds = %84
  %128 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %129 = load i64, i64* %10, align 8
  %130 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %128, i64 %129
  %131 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %130, i32 0, i32 0
  %132 = load i8*, i8** %131, align 8
  %133 = call i64 @ngx_strncmp(i8* %132, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i32 7)
  %134 = icmp eq i64 %133, 0
  br i1 %134, label %135, label %183

135:                                              ; preds = %127
  %136 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %137 = load i64, i64* %10, align 8
  %138 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %136, i64 %137
  %139 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %138, i32 0, i32 1
  %140 = load i32, i32* %139, align 8
  %141 = icmp eq i32 %140, 7
  br i1 %141, label %142, label %143

142:                                              ; preds = %135
  br label %189

143:                                              ; preds = %135
  %144 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %145 = load i64, i64* %10, align 8
  %146 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %144, i64 %145
  %147 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %146, i32 0, i32 0
  %148 = load i8*, i8** %147, align 8
  %149 = getelementptr inbounds i8, i8* %148, i64 7
  %150 = load i8, i8* %149, align 1
  %151 = sext i8 %150 to i32
  %152 = icmp ne i32 %151, 47
  br i1 %152, label %153, label %164

153:                                              ; preds = %143
  %154 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %155 = load i64, i64* %10, align 8
  %156 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %154, i64 %155
  %157 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %156, i32 0, i32 0
  %158 = load i8*, i8** %157, align 8
  %159 = getelementptr inbounds i8, i8* %158, i64 7
  %160 = load i8, i8* %159, align 1
  %161 = sext i8 %160 to i32
  %162 = icmp ne i32 %161, 64
  br i1 %162, label %163, label %164

163:                                              ; preds = %153
  br label %189

164:                                              ; preds = %153, %143
  %165 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %166 = load i64, i64* %10, align 8
  %167 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %165, i64 %166
  %168 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %167, i32 0, i32 0
  %169 = load i8*, i8** %168, align 8
  %170 = getelementptr inbounds i8, i8* %169, i64 7
  %171 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %172 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %171, i32 0, i32 2
  %173 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %172, i32 0, i32 0
  store i8* %170, i8** %173, align 8
  %174 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %175 = load i64, i64* %10, align 8
  %176 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %174, i64 %175
  %177 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %176, i32 0, i32 1
  %178 = load i32, i32* %177, align 8
  %179 = sub nsw i32 %178, 7
  %180 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %181 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %180, i32 0, i32 2
  %182 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %181, i32 0, i32 1
  store i32 %179, i32* %182, align 8
  br label %184

183:                                              ; preds = %127
  br label %184

184:                                              ; preds = %183, %164, %126, %83
  %185 = load i64, i64* %10, align 8
  %186 = add i64 %185, 1
  store i64 %186, i64* %10, align 8
  br label %20

187:                                              ; preds = %20
  %188 = load i8*, i8** @NGX_CONF_OK, align 8
  store i8* %188, i8** %4, align 8
  br label %197

189:                                              ; preds = %163, %142, %125, %99, %82, %50
  %190 = load i32, i32* @NGX_LOG_EMERG, align 4
  %191 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %192 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %193 = load i64, i64* %10, align 8
  %194 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %192, i64 %193
  %195 = call i32 @ngx_conf_log_error(i32 %190, %struct.TYPE_14__* %191, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i64 0, i64 0), %struct.TYPE_12__* %194)
  %196 = load i8*, i8** @NGX_CONF_ERROR, align 8
  store i8* %196, i8** %4, align 8
  br label %197

197:                                              ; preds = %189, %187, %42
  %198 = load i8*, i8** %4, align 8
  ret i8* %198
}

declare dso_local i64 @ngx_strncmp(i8*, i8*, i32) #1

declare dso_local i64 @ngx_atofp(i8*, i32, i32) #1

declare dso_local i32 @ngx_parse_time(%struct.TYPE_12__*, i32) #1

declare dso_local i32 @ngx_conf_log_error(i32, %struct.TYPE_14__*, i32, i8*, %struct.TYPE_12__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
