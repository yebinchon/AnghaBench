; ModuleID = '/home/carl/AnghaBench/tengine/src/mail/extr_ngx_mail_proxy_module.c_ngx_mail_proxy_handler.c'
source_filename = "/home/carl/AnghaBench/tengine/src/mail/extr_ngx_mail_proxy_module.c_ngx_mail_proxy_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_25__ = type { i32, i64, i64, %struct.TYPE_26__* }
%struct.TYPE_26__ = type { i32, i64 (%struct.TYPE_26__*, i64, i64)*, i64 (%struct.TYPE_26__*, i64, i64)*, %struct.TYPE_20__*, %struct.TYPE_19__*, %struct.TYPE_18__*, i32, i64, %struct.TYPE_23__* }
%struct.TYPE_20__ = type { i32, i64 }
%struct.TYPE_19__ = type { i64 }
%struct.TYPE_18__ = type { i8* }
%struct.TYPE_23__ = type { %struct.TYPE_26__*, %struct.TYPE_22__*, %struct.TYPE_27__* }
%struct.TYPE_22__ = type { %struct.TYPE_21__, %struct.TYPE_27__* }
%struct.TYPE_21__ = type { %struct.TYPE_26__* }
%struct.TYPE_27__ = type { i64, i64, i64, i64 }
%struct.TYPE_24__ = type { i32 }

@.str = private unnamed_addr constant [9 x i8] c"proxying\00", align 1
@NGX_LOG_INFO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [17 x i8] c"shutdown timeout\00", align 1
@NGX_ETIMEDOUT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [17 x i8] c"client timed out\00", align 1
@.str.3 = private unnamed_addr constant [19 x i8] c"upstream timed out\00", align 1
@.str.4 = private unnamed_addr constant [35 x i8] c"proxying and reading from upstream\00", align 1
@.str.5 = private unnamed_addr constant [31 x i8] c"proxying and sending to client\00", align 1
@.str.6 = private unnamed_addr constant [33 x i8] c"proxying and reading from client\00", align 1
@.str.7 = private unnamed_addr constant [33 x i8] c"proxying and sending to upstream\00", align 1
@NGX_LOG_DEBUG_MAIL = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [35 x i8] c"mail proxy handler: %ui, #%d > #%d\00", align 1
@NGX_ERROR = common dso_local global i64 0, align 8
@NGX_AGAIN = common dso_local global i64 0, align 8
@.str.9 = private unnamed_addr constant [21 x i8] c"proxied session done\00", align 1
@NGX_OK = common dso_local global i64 0, align 8
@ngx_mail_proxy_module = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_25__*)* @ngx_mail_proxy_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ngx_mail_proxy_handler(%struct.TYPE_25__* %0) #0 {
  %2 = alloca %struct.TYPE_25__*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_27__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_26__*, align 8
  %11 = alloca %struct.TYPE_26__*, align 8
  %12 = alloca %struct.TYPE_26__*, align 8
  %13 = alloca %struct.TYPE_23__*, align 8
  %14 = alloca %struct.TYPE_24__*, align 8
  store %struct.TYPE_25__* %0, %struct.TYPE_25__** %2, align 8
  %15 = load %struct.TYPE_25__*, %struct.TYPE_25__** %2, align 8
  %16 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %15, i32 0, i32 3
  %17 = load %struct.TYPE_26__*, %struct.TYPE_26__** %16, align 8
  store %struct.TYPE_26__* %17, %struct.TYPE_26__** %10, align 8
  %18 = load %struct.TYPE_26__*, %struct.TYPE_26__** %10, align 8
  %19 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %18, i32 0, i32 8
  %20 = load %struct.TYPE_23__*, %struct.TYPE_23__** %19, align 8
  store %struct.TYPE_23__* %20, %struct.TYPE_23__** %13, align 8
  %21 = load %struct.TYPE_25__*, %struct.TYPE_25__** %2, align 8
  %22 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %21, i32 0, i32 2
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %30, label %25

25:                                               ; preds = %1
  %26 = load %struct.TYPE_26__*, %struct.TYPE_26__** %10, align 8
  %27 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %26, i32 0, i32 7
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %71

30:                                               ; preds = %25, %1
  %31 = load %struct.TYPE_26__*, %struct.TYPE_26__** %10, align 8
  %32 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %31, i32 0, i32 5
  %33 = load %struct.TYPE_18__*, %struct.TYPE_18__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %33, i32 0, i32 0
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i8** %34, align 8
  %35 = load %struct.TYPE_26__*, %struct.TYPE_26__** %10, align 8
  %36 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %35, i32 0, i32 7
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %45

39:                                               ; preds = %30
  %40 = load i32, i32* @NGX_LOG_INFO, align 4
  %41 = load %struct.TYPE_26__*, %struct.TYPE_26__** %10, align 8
  %42 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %41, i32 0, i32 5
  %43 = load %struct.TYPE_18__*, %struct.TYPE_18__** %42, align 8
  %44 = call i32 @ngx_log_error(i32 %40, %struct.TYPE_18__* %43, i32 0, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  br label %68

45:                                               ; preds = %30
  %46 = load %struct.TYPE_26__*, %struct.TYPE_26__** %10, align 8
  %47 = load %struct.TYPE_23__*, %struct.TYPE_23__** %13, align 8
  %48 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %47, i32 0, i32 0
  %49 = load %struct.TYPE_26__*, %struct.TYPE_26__** %48, align 8
  %50 = icmp eq %struct.TYPE_26__* %46, %49
  br i1 %50, label %51, label %60

51:                                               ; preds = %45
  %52 = load i32, i32* @NGX_LOG_INFO, align 4
  %53 = load %struct.TYPE_26__*, %struct.TYPE_26__** %10, align 8
  %54 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %53, i32 0, i32 5
  %55 = load %struct.TYPE_18__*, %struct.TYPE_18__** %54, align 8
  %56 = load i32, i32* @NGX_ETIMEDOUT, align 4
  %57 = call i32 @ngx_log_error(i32 %52, %struct.TYPE_18__* %55, i32 %56, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0))
  %58 = load %struct.TYPE_26__*, %struct.TYPE_26__** %10, align 8
  %59 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %58, i32 0, i32 0
  store i32 1, i32* %59, align 8
  br label %67

60:                                               ; preds = %45
  %61 = load i32, i32* @NGX_LOG_INFO, align 4
  %62 = load %struct.TYPE_26__*, %struct.TYPE_26__** %10, align 8
  %63 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %62, i32 0, i32 5
  %64 = load %struct.TYPE_18__*, %struct.TYPE_18__** %63, align 8
  %65 = load i32, i32* @NGX_ETIMEDOUT, align 4
  %66 = call i32 @ngx_log_error(i32 %61, %struct.TYPE_18__* %64, i32 %65, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0))
  br label %67

67:                                               ; preds = %60, %51
  br label %68

68:                                               ; preds = %67, %39
  %69 = load %struct.TYPE_23__*, %struct.TYPE_23__** %13, align 8
  %70 = call i32 @ngx_mail_proxy_close_session(%struct.TYPE_23__* %69)
  br label %433

71:                                               ; preds = %25
  %72 = load %struct.TYPE_26__*, %struct.TYPE_26__** %10, align 8
  %73 = load %struct.TYPE_23__*, %struct.TYPE_23__** %13, align 8
  %74 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %73, i32 0, i32 0
  %75 = load %struct.TYPE_26__*, %struct.TYPE_26__** %74, align 8
  %76 = icmp eq %struct.TYPE_26__* %72, %75
  br i1 %76, label %77, label %107

77:                                               ; preds = %71
  %78 = load %struct.TYPE_25__*, %struct.TYPE_25__** %2, align 8
  %79 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %78, i32 0, i32 1
  %80 = load i64, i64* %79, align 8
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %95

82:                                               ; preds = %77
  store i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.4, i64 0, i64 0), i8** %4, align 8
  store i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.5, i64 0, i64 0), i8** %5, align 8
  %83 = load %struct.TYPE_23__*, %struct.TYPE_23__** %13, align 8
  %84 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %83, i32 0, i32 1
  %85 = load %struct.TYPE_22__*, %struct.TYPE_22__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %86, i32 0, i32 0
  %88 = load %struct.TYPE_26__*, %struct.TYPE_26__** %87, align 8
  store %struct.TYPE_26__* %88, %struct.TYPE_26__** %11, align 8
  %89 = load %struct.TYPE_26__*, %struct.TYPE_26__** %10, align 8
  store %struct.TYPE_26__* %89, %struct.TYPE_26__** %12, align 8
  %90 = load %struct.TYPE_23__*, %struct.TYPE_23__** %13, align 8
  %91 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %90, i32 0, i32 1
  %92 = load %struct.TYPE_22__*, %struct.TYPE_22__** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %92, i32 0, i32 1
  %94 = load %struct.TYPE_27__*, %struct.TYPE_27__** %93, align 8
  store %struct.TYPE_27__* %94, %struct.TYPE_27__** %8, align 8
  br label %106

95:                                               ; preds = %77
  store i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.6, i64 0, i64 0), i8** %4, align 8
  store i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.7, i64 0, i64 0), i8** %5, align 8
  %96 = load %struct.TYPE_26__*, %struct.TYPE_26__** %10, align 8
  store %struct.TYPE_26__* %96, %struct.TYPE_26__** %11, align 8
  %97 = load %struct.TYPE_23__*, %struct.TYPE_23__** %13, align 8
  %98 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %97, i32 0, i32 1
  %99 = load %struct.TYPE_22__*, %struct.TYPE_22__** %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %99, i32 0, i32 0
  %101 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %100, i32 0, i32 0
  %102 = load %struct.TYPE_26__*, %struct.TYPE_26__** %101, align 8
  store %struct.TYPE_26__* %102, %struct.TYPE_26__** %12, align 8
  %103 = load %struct.TYPE_23__*, %struct.TYPE_23__** %13, align 8
  %104 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %103, i32 0, i32 2
  %105 = load %struct.TYPE_27__*, %struct.TYPE_27__** %104, align 8
  store %struct.TYPE_27__* %105, %struct.TYPE_27__** %8, align 8
  br label %106

106:                                              ; preds = %95, %82
  br label %131

107:                                              ; preds = %71
  %108 = load %struct.TYPE_25__*, %struct.TYPE_25__** %2, align 8
  %109 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %108, i32 0, i32 1
  %110 = load i64, i64* %109, align 8
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %112, label %120

112:                                              ; preds = %107
  store i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.6, i64 0, i64 0), i8** %4, align 8
  store i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.7, i64 0, i64 0), i8** %5, align 8
  %113 = load %struct.TYPE_23__*, %struct.TYPE_23__** %13, align 8
  %114 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %113, i32 0, i32 0
  %115 = load %struct.TYPE_26__*, %struct.TYPE_26__** %114, align 8
  store %struct.TYPE_26__* %115, %struct.TYPE_26__** %11, align 8
  %116 = load %struct.TYPE_26__*, %struct.TYPE_26__** %10, align 8
  store %struct.TYPE_26__* %116, %struct.TYPE_26__** %12, align 8
  %117 = load %struct.TYPE_23__*, %struct.TYPE_23__** %13, align 8
  %118 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %117, i32 0, i32 2
  %119 = load %struct.TYPE_27__*, %struct.TYPE_27__** %118, align 8
  store %struct.TYPE_27__* %119, %struct.TYPE_27__** %8, align 8
  br label %130

120:                                              ; preds = %107
  store i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.4, i64 0, i64 0), i8** %4, align 8
  store i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.5, i64 0, i64 0), i8** %5, align 8
  %121 = load %struct.TYPE_26__*, %struct.TYPE_26__** %10, align 8
  store %struct.TYPE_26__* %121, %struct.TYPE_26__** %11, align 8
  %122 = load %struct.TYPE_23__*, %struct.TYPE_23__** %13, align 8
  %123 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %122, i32 0, i32 0
  %124 = load %struct.TYPE_26__*, %struct.TYPE_26__** %123, align 8
  store %struct.TYPE_26__* %124, %struct.TYPE_26__** %12, align 8
  %125 = load %struct.TYPE_23__*, %struct.TYPE_23__** %13, align 8
  %126 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %125, i32 0, i32 1
  %127 = load %struct.TYPE_22__*, %struct.TYPE_22__** %126, align 8
  %128 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %127, i32 0, i32 1
  %129 = load %struct.TYPE_27__*, %struct.TYPE_27__** %128, align 8
  store %struct.TYPE_27__* %129, %struct.TYPE_27__** %8, align 8
  br label %130

130:                                              ; preds = %120, %112
  br label %131

131:                                              ; preds = %130, %106
  %132 = load %struct.TYPE_25__*, %struct.TYPE_25__** %2, align 8
  %133 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %132, i32 0, i32 1
  %134 = load i64, i64* %133, align 8
  %135 = icmp ne i64 %134, 0
  %136 = zext i1 %135 to i64
  %137 = select i1 %135, i32 1, i32 0
  store i32 %137, i32* %9, align 4
  %138 = load i32, i32* @NGX_LOG_DEBUG_MAIL, align 4
  %139 = load %struct.TYPE_25__*, %struct.TYPE_25__** %2, align 8
  %140 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 8
  %142 = load i32, i32* %9, align 4
  %143 = load %struct.TYPE_26__*, %struct.TYPE_26__** %11, align 8
  %144 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %143, i32 0, i32 6
  %145 = load i32, i32* %144, align 8
  %146 = load %struct.TYPE_26__*, %struct.TYPE_26__** %12, align 8
  %147 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %146, i32 0, i32 6
  %148 = load i32, i32* %147, align 8
  %149 = call i32 @ngx_log_debug3(i32 %138, i32 %141, i32 0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.8, i64 0, i64 0), i32 %142, i32 %145, i32 %148)
  br label %150

150:                                              ; preds = %263, %131
  %151 = load i32, i32* %9, align 4
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %153, label %221

153:                                              ; preds = %150
  %154 = load %struct.TYPE_27__*, %struct.TYPE_27__** %8, align 8
  %155 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %154, i32 0, i32 0
  %156 = load i64, i64* %155, align 8
  %157 = load %struct.TYPE_27__*, %struct.TYPE_27__** %8, align 8
  %158 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %157, i32 0, i32 1
  %159 = load i64, i64* %158, align 8
  %160 = sub i64 %156, %159
  store i64 %160, i64* %6, align 8
  %161 = load i64, i64* %6, align 8
  %162 = icmp ne i64 %161, 0
  br i1 %162, label %163, label %220

163:                                              ; preds = %153
  %164 = load %struct.TYPE_26__*, %struct.TYPE_26__** %12, align 8
  %165 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %164, i32 0, i32 4
  %166 = load %struct.TYPE_19__*, %struct.TYPE_19__** %165, align 8
  %167 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %166, i32 0, i32 0
  %168 = load i64, i64* %167, align 8
  %169 = icmp ne i64 %168, 0
  br i1 %169, label %170, label %220

170:                                              ; preds = %163
  %171 = load i8*, i8** %5, align 8
  %172 = load %struct.TYPE_26__*, %struct.TYPE_26__** %10, align 8
  %173 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %172, i32 0, i32 5
  %174 = load %struct.TYPE_18__*, %struct.TYPE_18__** %173, align 8
  %175 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %174, i32 0, i32 0
  store i8* %171, i8** %175, align 8
  %176 = load %struct.TYPE_26__*, %struct.TYPE_26__** %12, align 8
  %177 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %176, i32 0, i32 1
  %178 = load i64 (%struct.TYPE_26__*, i64, i64)*, i64 (%struct.TYPE_26__*, i64, i64)** %177, align 8
  %179 = load %struct.TYPE_26__*, %struct.TYPE_26__** %12, align 8
  %180 = load %struct.TYPE_27__*, %struct.TYPE_27__** %8, align 8
  %181 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %180, i32 0, i32 1
  %182 = load i64, i64* %181, align 8
  %183 = load i64, i64* %6, align 8
  %184 = call i64 %178(%struct.TYPE_26__* %179, i64 %182, i64 %183)
  store i64 %184, i64* %7, align 8
  %185 = load i64, i64* %7, align 8
  %186 = load i64, i64* @NGX_ERROR, align 8
  %187 = icmp eq i64 %185, %186
  br i1 %187, label %188, label %191

188:                                              ; preds = %170
  %189 = load %struct.TYPE_23__*, %struct.TYPE_23__** %13, align 8
  %190 = call i32 @ngx_mail_proxy_close_session(%struct.TYPE_23__* %189)
  br label %433

191:                                              ; preds = %170
  %192 = load i64, i64* %7, align 8
  %193 = icmp sgt i64 %192, 0
  br i1 %193, label %194, label %219

194:                                              ; preds = %191
  %195 = load i64, i64* %7, align 8
  %196 = load %struct.TYPE_27__*, %struct.TYPE_27__** %8, align 8
  %197 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %196, i32 0, i32 1
  %198 = load i64, i64* %197, align 8
  %199 = add i64 %198, %195
  store i64 %199, i64* %197, align 8
  %200 = load %struct.TYPE_27__*, %struct.TYPE_27__** %8, align 8
  %201 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %200, i32 0, i32 1
  %202 = load i64, i64* %201, align 8
  %203 = load %struct.TYPE_27__*, %struct.TYPE_27__** %8, align 8
  %204 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %203, i32 0, i32 0
  %205 = load i64, i64* %204, align 8
  %206 = icmp eq i64 %202, %205
  br i1 %206, label %207, label %218

207:                                              ; preds = %194
  %208 = load %struct.TYPE_27__*, %struct.TYPE_27__** %8, align 8
  %209 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %208, i32 0, i32 2
  %210 = load i64, i64* %209, align 8
  %211 = load %struct.TYPE_27__*, %struct.TYPE_27__** %8, align 8
  %212 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %211, i32 0, i32 1
  store i64 %210, i64* %212, align 8
  %213 = load %struct.TYPE_27__*, %struct.TYPE_27__** %8, align 8
  %214 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %213, i32 0, i32 2
  %215 = load i64, i64* %214, align 8
  %216 = load %struct.TYPE_27__*, %struct.TYPE_27__** %8, align 8
  %217 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %216, i32 0, i32 0
  store i64 %215, i64* %217, align 8
  br label %218

218:                                              ; preds = %207, %194
  br label %219

219:                                              ; preds = %218, %191
  br label %220

220:                                              ; preds = %219, %163, %153
  br label %221

221:                                              ; preds = %220, %150
  %222 = load %struct.TYPE_27__*, %struct.TYPE_27__** %8, align 8
  %223 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %222, i32 0, i32 3
  %224 = load i64, i64* %223, align 8
  %225 = load %struct.TYPE_27__*, %struct.TYPE_27__** %8, align 8
  %226 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %225, i32 0, i32 0
  %227 = load i64, i64* %226, align 8
  %228 = sub i64 %224, %227
  store i64 %228, i64* %6, align 8
  %229 = load i64, i64* %6, align 8
  %230 = icmp ne i64 %229, 0
  br i1 %230, label %231, label %279

231:                                              ; preds = %221
  %232 = load %struct.TYPE_26__*, %struct.TYPE_26__** %11, align 8
  %233 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %232, i32 0, i32 3
  %234 = load %struct.TYPE_20__*, %struct.TYPE_20__** %233, align 8
  %235 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %234, i32 0, i32 1
  %236 = load i64, i64* %235, align 8
  %237 = icmp ne i64 %236, 0
  br i1 %237, label %238, label %279

238:                                              ; preds = %231
  %239 = load i8*, i8** %4, align 8
  %240 = load %struct.TYPE_26__*, %struct.TYPE_26__** %10, align 8
  %241 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %240, i32 0, i32 5
  %242 = load %struct.TYPE_18__*, %struct.TYPE_18__** %241, align 8
  %243 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %242, i32 0, i32 0
  store i8* %239, i8** %243, align 8
  %244 = load %struct.TYPE_26__*, %struct.TYPE_26__** %11, align 8
  %245 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %244, i32 0, i32 2
  %246 = load i64 (%struct.TYPE_26__*, i64, i64)*, i64 (%struct.TYPE_26__*, i64, i64)** %245, align 8
  %247 = load %struct.TYPE_26__*, %struct.TYPE_26__** %11, align 8
  %248 = load %struct.TYPE_27__*, %struct.TYPE_27__** %8, align 8
  %249 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %248, i32 0, i32 0
  %250 = load i64, i64* %249, align 8
  %251 = load i64, i64* %6, align 8
  %252 = call i64 %246(%struct.TYPE_26__* %247, i64 %250, i64 %251)
  store i64 %252, i64* %7, align 8
  %253 = load i64, i64* %7, align 8
  %254 = load i64, i64* @NGX_AGAIN, align 8
  %255 = icmp eq i64 %253, %254
  br i1 %255, label %259, label %256

256:                                              ; preds = %238
  %257 = load i64, i64* %7, align 8
  %258 = icmp eq i64 %257, 0
  br i1 %258, label %259, label %260

259:                                              ; preds = %256, %238
  br label %280

260:                                              ; preds = %256
  %261 = load i64, i64* %7, align 8
  %262 = icmp sgt i64 %261, 0
  br i1 %262, label %263, label %269

263:                                              ; preds = %260
  store i32 1, i32* %9, align 4
  %264 = load i64, i64* %7, align 8
  %265 = load %struct.TYPE_27__*, %struct.TYPE_27__** %8, align 8
  %266 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %265, i32 0, i32 0
  %267 = load i64, i64* %266, align 8
  %268 = add i64 %267, %264
  store i64 %268, i64* %266, align 8
  br label %150

269:                                              ; preds = %260
  %270 = load i64, i64* %7, align 8
  %271 = load i64, i64* @NGX_ERROR, align 8
  %272 = icmp eq i64 %270, %271
  br i1 %272, label %273, label %278

273:                                              ; preds = %269
  %274 = load %struct.TYPE_26__*, %struct.TYPE_26__** %11, align 8
  %275 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %274, i32 0, i32 3
  %276 = load %struct.TYPE_20__*, %struct.TYPE_20__** %275, align 8
  %277 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %276, i32 0, i32 0
  store i32 1, i32* %277, align 8
  br label %278

278:                                              ; preds = %273, %269
  br label %279

279:                                              ; preds = %278, %231, %221
  br label %280

280:                                              ; preds = %279, %259
  %281 = load %struct.TYPE_26__*, %struct.TYPE_26__** %10, align 8
  %282 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %281, i32 0, i32 5
  %283 = load %struct.TYPE_18__*, %struct.TYPE_18__** %282, align 8
  %284 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %283, i32 0, i32 0
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i8** %284, align 8
  %285 = load %struct.TYPE_23__*, %struct.TYPE_23__** %13, align 8
  %286 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %285, i32 0, i32 0
  %287 = load %struct.TYPE_26__*, %struct.TYPE_26__** %286, align 8
  %288 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %287, i32 0, i32 3
  %289 = load %struct.TYPE_20__*, %struct.TYPE_20__** %288, align 8
  %290 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %289, i32 0, i32 0
  %291 = load i32, i32* %290, align 8
  %292 = icmp ne i32 %291, 0
  br i1 %292, label %293, label %305

293:                                              ; preds = %280
  %294 = load %struct.TYPE_23__*, %struct.TYPE_23__** %13, align 8
  %295 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %294, i32 0, i32 2
  %296 = load %struct.TYPE_27__*, %struct.TYPE_27__** %295, align 8
  %297 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %296, i32 0, i32 1
  %298 = load i64, i64* %297, align 8
  %299 = load %struct.TYPE_23__*, %struct.TYPE_23__** %13, align 8
  %300 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %299, i32 0, i32 2
  %301 = load %struct.TYPE_27__*, %struct.TYPE_27__** %300, align 8
  %302 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %301, i32 0, i32 0
  %303 = load i64, i64* %302, align 8
  %304 = icmp eq i64 %298, %303
  br i1 %304, label %354, label %305

305:                                              ; preds = %293, %280
  %306 = load %struct.TYPE_23__*, %struct.TYPE_23__** %13, align 8
  %307 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %306, i32 0, i32 1
  %308 = load %struct.TYPE_22__*, %struct.TYPE_22__** %307, align 8
  %309 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %308, i32 0, i32 0
  %310 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %309, i32 0, i32 0
  %311 = load %struct.TYPE_26__*, %struct.TYPE_26__** %310, align 8
  %312 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %311, i32 0, i32 3
  %313 = load %struct.TYPE_20__*, %struct.TYPE_20__** %312, align 8
  %314 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %313, i32 0, i32 0
  %315 = load i32, i32* %314, align 8
  %316 = icmp ne i32 %315, 0
  br i1 %316, label %317, label %333

317:                                              ; preds = %305
  %318 = load %struct.TYPE_23__*, %struct.TYPE_23__** %13, align 8
  %319 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %318, i32 0, i32 1
  %320 = load %struct.TYPE_22__*, %struct.TYPE_22__** %319, align 8
  %321 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %320, i32 0, i32 1
  %322 = load %struct.TYPE_27__*, %struct.TYPE_27__** %321, align 8
  %323 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %322, i32 0, i32 1
  %324 = load i64, i64* %323, align 8
  %325 = load %struct.TYPE_23__*, %struct.TYPE_23__** %13, align 8
  %326 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %325, i32 0, i32 1
  %327 = load %struct.TYPE_22__*, %struct.TYPE_22__** %326, align 8
  %328 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %327, i32 0, i32 1
  %329 = load %struct.TYPE_27__*, %struct.TYPE_27__** %328, align 8
  %330 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %329, i32 0, i32 0
  %331 = load i64, i64* %330, align 8
  %332 = icmp eq i64 %324, %331
  br i1 %332, label %354, label %333

333:                                              ; preds = %317, %305
  %334 = load %struct.TYPE_23__*, %struct.TYPE_23__** %13, align 8
  %335 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %334, i32 0, i32 0
  %336 = load %struct.TYPE_26__*, %struct.TYPE_26__** %335, align 8
  %337 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %336, i32 0, i32 3
  %338 = load %struct.TYPE_20__*, %struct.TYPE_20__** %337, align 8
  %339 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %338, i32 0, i32 0
  %340 = load i32, i32* %339, align 8
  %341 = icmp ne i32 %340, 0
  br i1 %341, label %342, label %376

342:                                              ; preds = %333
  %343 = load %struct.TYPE_23__*, %struct.TYPE_23__** %13, align 8
  %344 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %343, i32 0, i32 1
  %345 = load %struct.TYPE_22__*, %struct.TYPE_22__** %344, align 8
  %346 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %345, i32 0, i32 0
  %347 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %346, i32 0, i32 0
  %348 = load %struct.TYPE_26__*, %struct.TYPE_26__** %347, align 8
  %349 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %348, i32 0, i32 3
  %350 = load %struct.TYPE_20__*, %struct.TYPE_20__** %349, align 8
  %351 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %350, i32 0, i32 0
  %352 = load i32, i32* %351, align 8
  %353 = icmp ne i32 %352, 0
  br i1 %353, label %354, label %376

354:                                              ; preds = %342, %317, %293
  %355 = load %struct.TYPE_26__*, %struct.TYPE_26__** %10, align 8
  %356 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %355, i32 0, i32 5
  %357 = load %struct.TYPE_18__*, %struct.TYPE_18__** %356, align 8
  %358 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %357, i32 0, i32 0
  %359 = load i8*, i8** %358, align 8
  store i8* %359, i8** %3, align 8
  %360 = load %struct.TYPE_26__*, %struct.TYPE_26__** %10, align 8
  %361 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %360, i32 0, i32 5
  %362 = load %struct.TYPE_18__*, %struct.TYPE_18__** %361, align 8
  %363 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %362, i32 0, i32 0
  store i8* null, i8** %363, align 8
  %364 = load i32, i32* @NGX_LOG_INFO, align 4
  %365 = load %struct.TYPE_26__*, %struct.TYPE_26__** %10, align 8
  %366 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %365, i32 0, i32 5
  %367 = load %struct.TYPE_18__*, %struct.TYPE_18__** %366, align 8
  %368 = call i32 @ngx_log_error(i32 %364, %struct.TYPE_18__* %367, i32 0, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.9, i64 0, i64 0))
  %369 = load i8*, i8** %3, align 8
  %370 = load %struct.TYPE_26__*, %struct.TYPE_26__** %10, align 8
  %371 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %370, i32 0, i32 5
  %372 = load %struct.TYPE_18__*, %struct.TYPE_18__** %371, align 8
  %373 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %372, i32 0, i32 0
  store i8* %369, i8** %373, align 8
  %374 = load %struct.TYPE_23__*, %struct.TYPE_23__** %13, align 8
  %375 = call i32 @ngx_mail_proxy_close_session(%struct.TYPE_23__* %374)
  br label %433

376:                                              ; preds = %342, %333
  %377 = load %struct.TYPE_26__*, %struct.TYPE_26__** %12, align 8
  %378 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %377, i32 0, i32 4
  %379 = load %struct.TYPE_19__*, %struct.TYPE_19__** %378, align 8
  %380 = call i64 @ngx_handle_write_event(%struct.TYPE_19__* %379, i32 0)
  %381 = load i64, i64* @NGX_OK, align 8
  %382 = icmp ne i64 %380, %381
  br i1 %382, label %383, label %386

383:                                              ; preds = %376
  %384 = load %struct.TYPE_23__*, %struct.TYPE_23__** %13, align 8
  %385 = call i32 @ngx_mail_proxy_close_session(%struct.TYPE_23__* %384)
  br label %433

386:                                              ; preds = %376
  %387 = load %struct.TYPE_26__*, %struct.TYPE_26__** %12, align 8
  %388 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %387, i32 0, i32 3
  %389 = load %struct.TYPE_20__*, %struct.TYPE_20__** %388, align 8
  %390 = call i64 @ngx_handle_read_event(%struct.TYPE_20__* %389, i32 0)
  %391 = load i64, i64* @NGX_OK, align 8
  %392 = icmp ne i64 %390, %391
  br i1 %392, label %393, label %396

393:                                              ; preds = %386
  %394 = load %struct.TYPE_23__*, %struct.TYPE_23__** %13, align 8
  %395 = call i32 @ngx_mail_proxy_close_session(%struct.TYPE_23__* %394)
  br label %433

396:                                              ; preds = %386
  %397 = load %struct.TYPE_26__*, %struct.TYPE_26__** %11, align 8
  %398 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %397, i32 0, i32 4
  %399 = load %struct.TYPE_19__*, %struct.TYPE_19__** %398, align 8
  %400 = call i64 @ngx_handle_write_event(%struct.TYPE_19__* %399, i32 0)
  %401 = load i64, i64* @NGX_OK, align 8
  %402 = icmp ne i64 %400, %401
  br i1 %402, label %403, label %406

403:                                              ; preds = %396
  %404 = load %struct.TYPE_23__*, %struct.TYPE_23__** %13, align 8
  %405 = call i32 @ngx_mail_proxy_close_session(%struct.TYPE_23__* %404)
  br label %433

406:                                              ; preds = %396
  %407 = load %struct.TYPE_26__*, %struct.TYPE_26__** %11, align 8
  %408 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %407, i32 0, i32 3
  %409 = load %struct.TYPE_20__*, %struct.TYPE_20__** %408, align 8
  %410 = call i64 @ngx_handle_read_event(%struct.TYPE_20__* %409, i32 0)
  %411 = load i64, i64* @NGX_OK, align 8
  %412 = icmp ne i64 %410, %411
  br i1 %412, label %413, label %416

413:                                              ; preds = %406
  %414 = load %struct.TYPE_23__*, %struct.TYPE_23__** %13, align 8
  %415 = call i32 @ngx_mail_proxy_close_session(%struct.TYPE_23__* %414)
  br label %433

416:                                              ; preds = %406
  %417 = load %struct.TYPE_26__*, %struct.TYPE_26__** %10, align 8
  %418 = load %struct.TYPE_23__*, %struct.TYPE_23__** %13, align 8
  %419 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %418, i32 0, i32 0
  %420 = load %struct.TYPE_26__*, %struct.TYPE_26__** %419, align 8
  %421 = icmp eq %struct.TYPE_26__* %417, %420
  br i1 %421, label %422, label %433

422:                                              ; preds = %416
  %423 = load %struct.TYPE_23__*, %struct.TYPE_23__** %13, align 8
  %424 = load i32, i32* @ngx_mail_proxy_module, align 4
  %425 = call %struct.TYPE_24__* @ngx_mail_get_module_srv_conf(%struct.TYPE_23__* %423, i32 %424)
  store %struct.TYPE_24__* %425, %struct.TYPE_24__** %14, align 8
  %426 = load %struct.TYPE_26__*, %struct.TYPE_26__** %10, align 8
  %427 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %426, i32 0, i32 3
  %428 = load %struct.TYPE_20__*, %struct.TYPE_20__** %427, align 8
  %429 = load %struct.TYPE_24__*, %struct.TYPE_24__** %14, align 8
  %430 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %429, i32 0, i32 0
  %431 = load i32, i32* %430, align 4
  %432 = call i32 @ngx_add_timer(%struct.TYPE_20__* %428, i32 %431)
  br label %433

433:                                              ; preds = %68, %188, %354, %383, %393, %403, %413, %422, %416
  ret void
}

declare dso_local i32 @ngx_log_error(i32, %struct.TYPE_18__*, i32, i8*) #1

declare dso_local i32 @ngx_mail_proxy_close_session(%struct.TYPE_23__*) #1

declare dso_local i32 @ngx_log_debug3(i32, i32, i32, i8*, i32, i32, i32) #1

declare dso_local i64 @ngx_handle_write_event(%struct.TYPE_19__*, i32) #1

declare dso_local i64 @ngx_handle_read_event(%struct.TYPE_20__*, i32) #1

declare dso_local %struct.TYPE_24__* @ngx_mail_get_module_srv_conf(%struct.TYPE_23__*, i32) #1

declare dso_local i32 @ngx_add_timer(%struct.TYPE_20__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
