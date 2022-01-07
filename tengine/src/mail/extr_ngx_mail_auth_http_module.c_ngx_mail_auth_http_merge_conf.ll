; ModuleID = '/home/carl/AnghaBench/tengine/src/mail/extr_ngx_mail_auth_http_module.c_ngx_mail_auth_http_merge_conf.c'
source_filename = "/home/carl/AnghaBench/tengine/src/mail/extr_ngx_mail_auth_http_module.c_ngx_mail_auth_http_merge_conf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i32, i32 }
%struct.TYPE_14__ = type { %struct.TYPE_10__*, %struct.TYPE_9__, i32, i32, i32, i32, i32*, i32, i32 }
%struct.TYPE_10__ = type { i64, %struct.TYPE_13__* }
%struct.TYPE_13__ = type { %struct.TYPE_12__, %struct.TYPE_11__ }
%struct.TYPE_12__ = type { i64, i32 }
%struct.TYPE_11__ = type { i64, i32 }
%struct.TYPE_9__ = type { i64, i32* }

@NGX_LOG_EMERG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [47 x i8] c"no \22auth_http\22 is defined for server in %s:%ui\00", align 1
@NGX_CONF_ERROR = common dso_local global i8* null, align 8
@CR = common dso_local global i32 0, align 4
@LF = common dso_local global i32 0, align 4
@NGX_CONF_OK = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.TYPE_15__*, i8*, i8*)* @ngx_mail_auth_http_merge_conf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @ngx_mail_auth_http_merge_conf(%struct.TYPE_15__* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.TYPE_15__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.TYPE_14__*, align 8
  %9 = alloca %struct.TYPE_14__*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.TYPE_13__*, align 8
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  %14 = load i8*, i8** %6, align 8
  %15 = bitcast i8* %14 to %struct.TYPE_14__*
  store %struct.TYPE_14__* %15, %struct.TYPE_14__** %8, align 8
  %16 = load i8*, i8** %7, align 8
  %17 = bitcast i8* %16 to %struct.TYPE_14__*
  store %struct.TYPE_14__* %17, %struct.TYPE_14__** %9, align 8
  %18 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %19 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %18, i32 0, i32 6
  %20 = load i32*, i32** %19, align 8
  %21 = icmp eq i32* %20, null
  br i1 %21, label %22, label %56

22:                                               ; preds = %3
  %23 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %24 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %23, i32 0, i32 6
  %25 = load i32*, i32** %24, align 8
  %26 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %27 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %26, i32 0, i32 6
  store i32* %25, i32** %27, align 8
  %28 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %29 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %28, i32 0, i32 8
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %32 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %31, i32 0, i32 8
  store i32 %30, i32* %32, align 4
  %33 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %34 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %33, i32 0, i32 7
  %35 = load i32, i32* %34, align 8
  %36 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %37 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %36, i32 0, i32 7
  store i32 %35, i32* %37, align 8
  %38 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %39 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %38, i32 0, i32 6
  %40 = load i32*, i32** %39, align 8
  %41 = icmp eq i32* %40, null
  br i1 %41, label %42, label %55

42:                                               ; preds = %22
  %43 = load i32, i32* @NGX_LOG_EMERG, align 4
  %44 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %45 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %48 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %47, i32 0, i32 5
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %51 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %50, i32 0, i32 4
  %52 = load i32, i32* %51, align 8
  %53 = call i32 @ngx_log_error(i32 %43, i32 %46, i32 0, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0), i32 %49, i32 %52)
  %54 = load i8*, i8** @NGX_CONF_ERROR, align 8
  store i8* %54, i8** %4, align 8
  br label %205

55:                                               ; preds = %22
  br label %56

56:                                               ; preds = %55, %3
  %57 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %58 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %57, i32 0, i32 3
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %61 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %60, i32 0, i32 3
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @ngx_conf_merge_msec_value(i32 %59, i32 %62, i32 60000)
  %64 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %65 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %64, i32 0, i32 2
  %66 = load i32, i32* %65, align 8
  %67 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %68 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %67, i32 0, i32 2
  %69 = load i32, i32* %68, align 8
  %70 = call i32 @ngx_conf_merge_value(i32 %66, i32 %69, i32 0)
  %71 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %72 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %71, i32 0, i32 0
  %73 = load %struct.TYPE_10__*, %struct.TYPE_10__** %72, align 8
  %74 = icmp eq %struct.TYPE_10__* %73, null
  br i1 %74, label %75, label %87

75:                                               ; preds = %56
  %76 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %77 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %76, i32 0, i32 0
  %78 = load %struct.TYPE_10__*, %struct.TYPE_10__** %77, align 8
  %79 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %80 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %79, i32 0, i32 0
  store %struct.TYPE_10__* %78, %struct.TYPE_10__** %80, align 8
  %81 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %82 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %81, i32 0, i32 1
  %83 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %84 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %83, i32 0, i32 1
  %85 = bitcast %struct.TYPE_9__* %82 to i8*
  %86 = bitcast %struct.TYPE_9__* %84 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %85, i8* align 8 %86, i64 16, i1 false)
  br label %87

87:                                               ; preds = %75, %56
  %88 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %89 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %88, i32 0, i32 0
  %90 = load %struct.TYPE_10__*, %struct.TYPE_10__** %89, align 8
  %91 = icmp ne %struct.TYPE_10__* %90, null
  br i1 %91, label %92, label %203

92:                                               ; preds = %87
  %93 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %94 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %93, i32 0, i32 1
  %95 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %94, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  %97 = icmp eq i64 %96, 0
  br i1 %97, label %98, label %203

98:                                               ; preds = %92
  store i64 0, i64* %11, align 8
  %99 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %100 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %99, i32 0, i32 0
  %101 = load %struct.TYPE_10__*, %struct.TYPE_10__** %100, align 8
  %102 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %101, i32 0, i32 1
  %103 = load %struct.TYPE_13__*, %struct.TYPE_13__** %102, align 8
  store %struct.TYPE_13__* %103, %struct.TYPE_13__** %13, align 8
  store i64 0, i64* %12, align 8
  br label %104

104:                                              ; preds = %130, %98
  %105 = load i64, i64* %12, align 8
  %106 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %107 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %106, i32 0, i32 0
  %108 = load %struct.TYPE_10__*, %struct.TYPE_10__** %107, align 8
  %109 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %108, i32 0, i32 0
  %110 = load i64, i64* %109, align 8
  %111 = icmp ult i64 %105, %110
  br i1 %111, label %112, label %133

112:                                              ; preds = %104
  %113 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %114 = load i64, i64* %12, align 8
  %115 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %113, i64 %114
  %116 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %115, i32 0, i32 1
  %117 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %116, i32 0, i32 0
  %118 = load i64, i64* %117, align 8
  %119 = add nsw i64 %118, 2
  %120 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %121 = load i64, i64* %12, align 8
  %122 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %120, i64 %121
  %123 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %122, i32 0, i32 0
  %124 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %123, i32 0, i32 0
  %125 = load i64, i64* %124, align 8
  %126 = add nsw i64 %119, %125
  %127 = add nsw i64 %126, 2
  %128 = load i64, i64* %11, align 8
  %129 = add i64 %128, %127
  store i64 %129, i64* %11, align 8
  br label %130

130:                                              ; preds = %112
  %131 = load i64, i64* %12, align 8
  %132 = add i64 %131, 1
  store i64 %132, i64* %12, align 8
  br label %104

133:                                              ; preds = %104
  %134 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %135 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 4
  %137 = load i64, i64* %11, align 8
  %138 = call i32* @ngx_pnalloc(i32 %136, i64 %137)
  store i32* %138, i32** %10, align 8
  %139 = load i32*, i32** %10, align 8
  %140 = icmp eq i32* %139, null
  br i1 %140, label %141, label %143

141:                                              ; preds = %133
  %142 = load i8*, i8** @NGX_CONF_ERROR, align 8
  store i8* %142, i8** %4, align 8
  br label %205

143:                                              ; preds = %133
  %144 = load i64, i64* %11, align 8
  %145 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %146 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %145, i32 0, i32 1
  %147 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %146, i32 0, i32 0
  store i64 %144, i64* %147, align 8
  %148 = load i32*, i32** %10, align 8
  %149 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %150 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %149, i32 0, i32 1
  %151 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %150, i32 0, i32 1
  store i32* %148, i32** %151, align 8
  store i64 0, i64* %12, align 8
  br label %152

152:                                              ; preds = %199, %143
  %153 = load i64, i64* %12, align 8
  %154 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %155 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %154, i32 0, i32 0
  %156 = load %struct.TYPE_10__*, %struct.TYPE_10__** %155, align 8
  %157 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %156, i32 0, i32 0
  %158 = load i64, i64* %157, align 8
  %159 = icmp ult i64 %153, %158
  br i1 %159, label %160, label %202

160:                                              ; preds = %152
  %161 = load i32*, i32** %10, align 8
  %162 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %163 = load i64, i64* %12, align 8
  %164 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %162, i64 %163
  %165 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %164, i32 0, i32 1
  %166 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %165, i32 0, i32 1
  %167 = load i32, i32* %166, align 8
  %168 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %169 = load i64, i64* %12, align 8
  %170 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %168, i64 %169
  %171 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %170, i32 0, i32 1
  %172 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %171, i32 0, i32 0
  %173 = load i64, i64* %172, align 8
  %174 = call i32* @ngx_cpymem(i32* %161, i32 %167, i64 %173)
  store i32* %174, i32** %10, align 8
  %175 = load i32*, i32** %10, align 8
  %176 = getelementptr inbounds i32, i32* %175, i32 1
  store i32* %176, i32** %10, align 8
  store i32 58, i32* %175, align 4
  %177 = load i32*, i32** %10, align 8
  %178 = getelementptr inbounds i32, i32* %177, i32 1
  store i32* %178, i32** %10, align 8
  store i32 32, i32* %177, align 4
  %179 = load i32*, i32** %10, align 8
  %180 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %181 = load i64, i64* %12, align 8
  %182 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %180, i64 %181
  %183 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %182, i32 0, i32 0
  %184 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %183, i32 0, i32 1
  %185 = load i32, i32* %184, align 8
  %186 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %187 = load i64, i64* %12, align 8
  %188 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %186, i64 %187
  %189 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %188, i32 0, i32 0
  %190 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %189, i32 0, i32 0
  %191 = load i64, i64* %190, align 8
  %192 = call i32* @ngx_cpymem(i32* %179, i32 %185, i64 %191)
  store i32* %192, i32** %10, align 8
  %193 = load i32, i32* @CR, align 4
  %194 = load i32*, i32** %10, align 8
  %195 = getelementptr inbounds i32, i32* %194, i32 1
  store i32* %195, i32** %10, align 8
  store i32 %193, i32* %194, align 4
  %196 = load i32, i32* @LF, align 4
  %197 = load i32*, i32** %10, align 8
  %198 = getelementptr inbounds i32, i32* %197, i32 1
  store i32* %198, i32** %10, align 8
  store i32 %196, i32* %197, align 4
  br label %199

199:                                              ; preds = %160
  %200 = load i64, i64* %12, align 8
  %201 = add i64 %200, 1
  store i64 %201, i64* %12, align 8
  br label %152

202:                                              ; preds = %152
  br label %203

203:                                              ; preds = %202, %92, %87
  %204 = load i8*, i8** @NGX_CONF_OK, align 8
  store i8* %204, i8** %4, align 8
  br label %205

205:                                              ; preds = %203, %141, %42
  %206 = load i8*, i8** %4, align 8
  ret i8* %206
}

declare dso_local i32 @ngx_log_error(i32, i32, i32, i8*, i32, i32) #1

declare dso_local i32 @ngx_conf_merge_msec_value(i32, i32, i32) #1

declare dso_local i32 @ngx_conf_merge_value(i32, i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32* @ngx_pnalloc(i32, i64) #1

declare dso_local i32* @ngx_cpymem(i32*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
