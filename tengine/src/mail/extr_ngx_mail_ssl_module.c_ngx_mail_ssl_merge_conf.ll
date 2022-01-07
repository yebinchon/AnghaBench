; ModuleID = '/home/carl/AnghaBench/tengine/src/mail/extr_ngx_mail_ssl_module.c_ngx_mail_ssl_merge_conf.c'
source_filename = "/home/carl/AnghaBench/tengine/src/mail/extr_ngx_mail_ssl_module.c_ngx_mail_ssl_merge_conf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_42__ = type { i32, i32 }
%struct.TYPE_41__ = type { i64, i64, i64, %struct.TYPE_45__*, %struct.TYPE_43__, i64, i64, i32*, i64, %struct.TYPE_45__*, %struct.TYPE_44__, %struct.TYPE_44__, i64, %struct.TYPE_44__, %struct.TYPE_44__, %struct.TYPE_44__, %struct.TYPE_44__, %struct.TYPE_45__*, %struct.TYPE_45__*, i32, i32, i32*, i64, i64 }
%struct.TYPE_43__ = type { i32, i32 }
%struct.TYPE_44__ = type { i64 }
%struct.TYPE_45__ = type { i64, i64 }
%struct.TYPE_40__ = type { %struct.TYPE_43__*, i32 (%struct.TYPE_43__*)* }

@NGX_MAIL_STARTTLS_OFF = common dso_local global i64 0, align 8
@NGX_CONF_BITMASK_SET = common dso_local global i32 0, align 4
@NGX_SSL_TLSv1 = common dso_local global i32 0, align 4
@NGX_SSL_TLSv1_1 = common dso_local global i32 0, align 4
@NGX_SSL_TLSv1_2 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@NGX_DEFAULT_ECDH_CURVE = common dso_local global i8* null, align 8
@NGX_DEFAULT_CIPHERS = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [15 x i8] c"listen ... ssl\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"ssl\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"starttls\00", align 1
@NGX_CONF_OK = common dso_local global i8* null, align 8
@NGX_LOG_EMERG = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [65 x i8] c"no \22ssl_certificate\22 is defined for the \22%s\22 directive in %s:%ui\00", align 1
@NGX_CONF_ERROR = common dso_local global i8* null, align 8
@.str.5 = private unnamed_addr constant [69 x i8] c"no \22ssl_certificate_key\22 is defined for the \22%s\22 directive in %s:%ui\00", align 1
@.str.6 = private unnamed_addr constant [90 x i8] c"no \22ssl_certificate_key\22 is defined for certificate \22%V\22 and the \22%s\22 directive in %s:%ui\00", align 1
@NGX_OK = common dso_local global i64 0, align 8
@.str.7 = private unnamed_addr constant [48 x i8] c"no ssl_client_certificate for ssl_client_verify\00", align 1
@NGX_SSL_NONE_SCACHE = common dso_local global i32 0, align 4
@ngx_mail_ssl_sess_id_ctx = common dso_local global i32 0, align 4
@SSL_OP_NO_TICKET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.TYPE_42__*, i8*, i8*)* @ngx_mail_ssl_merge_conf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @ngx_mail_ssl_merge_conf(%struct.TYPE_42__* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.TYPE_42__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.TYPE_41__*, align 8
  %9 = alloca %struct.TYPE_41__*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca %struct.TYPE_40__*, align 8
  store %struct.TYPE_42__* %0, %struct.TYPE_42__** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  %12 = load i8*, i8** %6, align 8
  %13 = bitcast i8* %12 to %struct.TYPE_41__*
  store %struct.TYPE_41__* %13, %struct.TYPE_41__** %8, align 8
  %14 = load i8*, i8** %7, align 8
  %15 = bitcast i8* %14 to %struct.TYPE_41__*
  store %struct.TYPE_41__* %15, %struct.TYPE_41__** %9, align 8
  %16 = load %struct.TYPE_41__*, %struct.TYPE_41__** %9, align 8
  %17 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %16, i32 0, i32 22
  %18 = load i64, i64* %17, align 8
  %19 = load %struct.TYPE_41__*, %struct.TYPE_41__** %8, align 8
  %20 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %19, i32 0, i32 22
  %21 = load i64, i64* %20, align 8
  %22 = call i32 @ngx_conf_merge_value(i64 %18, i64 %21, i32 0)
  %23 = load %struct.TYPE_41__*, %struct.TYPE_41__** %9, align 8
  %24 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load %struct.TYPE_41__*, %struct.TYPE_41__** %8, align 8
  %27 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @NGX_MAIL_STARTTLS_OFF, align 8
  %30 = trunc i64 %29 to i32
  %31 = call i32 @ngx_conf_merge_uint_value(i64 %25, i64 %28, i32 %30)
  %32 = load %struct.TYPE_41__*, %struct.TYPE_41__** %9, align 8
  %33 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %32, i32 0, i32 6
  %34 = load i64, i64* %33, align 8
  %35 = load %struct.TYPE_41__*, %struct.TYPE_41__** %8, align 8
  %36 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %35, i32 0, i32 6
  %37 = load i64, i64* %36, align 8
  %38 = call i32 @ngx_conf_merge_value(i64 %34, i64 %37, i32 300)
  %39 = load %struct.TYPE_41__*, %struct.TYPE_41__** %9, align 8
  %40 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %39, i32 0, i32 12
  %41 = load i64, i64* %40, align 8
  %42 = load %struct.TYPE_41__*, %struct.TYPE_41__** %8, align 8
  %43 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %42, i32 0, i32 12
  %44 = load i64, i64* %43, align 8
  %45 = call i32 @ngx_conf_merge_value(i64 %41, i64 %44, i32 0)
  %46 = load %struct.TYPE_41__*, %struct.TYPE_41__** %9, align 8
  %47 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %46, i32 0, i32 19
  %48 = load i32, i32* %47, align 8
  %49 = load %struct.TYPE_41__*, %struct.TYPE_41__** %8, align 8
  %50 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %49, i32 0, i32 19
  %51 = load i32, i32* %50, align 8
  %52 = load i32, i32* @NGX_CONF_BITMASK_SET, align 4
  %53 = load i32, i32* @NGX_SSL_TLSv1, align 4
  %54 = or i32 %52, %53
  %55 = load i32, i32* @NGX_SSL_TLSv1_1, align 4
  %56 = or i32 %54, %55
  %57 = load i32, i32* @NGX_SSL_TLSv1_2, align 4
  %58 = or i32 %56, %57
  %59 = call i32 @ngx_conf_merge_bitmask_value(i32 %48, i32 %51, i32 %58)
  %60 = load %struct.TYPE_41__*, %struct.TYPE_41__** %9, align 8
  %61 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %60, i32 0, i32 1
  %62 = load i64, i64* %61, align 8
  %63 = load %struct.TYPE_41__*, %struct.TYPE_41__** %8, align 8
  %64 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %63, i32 0, i32 1
  %65 = load i64, i64* %64, align 8
  %66 = call i32 @ngx_conf_merge_uint_value(i64 %62, i64 %65, i32 0)
  %67 = load %struct.TYPE_41__*, %struct.TYPE_41__** %9, align 8
  %68 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %67, i32 0, i32 2
  %69 = load i64, i64* %68, align 8
  %70 = load %struct.TYPE_41__*, %struct.TYPE_41__** %8, align 8
  %71 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %70, i32 0, i32 2
  %72 = load i64, i64* %71, align 8
  %73 = call i32 @ngx_conf_merge_uint_value(i64 %69, i64 %72, i32 1)
  %74 = load %struct.TYPE_41__*, %struct.TYPE_41__** %9, align 8
  %75 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %74, i32 0, i32 9
  %76 = load %struct.TYPE_45__*, %struct.TYPE_45__** %75, align 8
  %77 = load %struct.TYPE_41__*, %struct.TYPE_41__** %8, align 8
  %78 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %77, i32 0, i32 9
  %79 = load %struct.TYPE_45__*, %struct.TYPE_45__** %78, align 8
  %80 = call i32 @ngx_conf_merge_ptr_value(%struct.TYPE_45__* %76, %struct.TYPE_45__* %79, i32* null)
  %81 = load %struct.TYPE_41__*, %struct.TYPE_41__** %9, align 8
  %82 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %81, i32 0, i32 18
  %83 = load %struct.TYPE_45__*, %struct.TYPE_45__** %82, align 8
  %84 = load %struct.TYPE_41__*, %struct.TYPE_41__** %8, align 8
  %85 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %84, i32 0, i32 18
  %86 = load %struct.TYPE_45__*, %struct.TYPE_45__** %85, align 8
  %87 = call i32 @ngx_conf_merge_ptr_value(%struct.TYPE_45__* %83, %struct.TYPE_45__* %86, i32* null)
  %88 = load %struct.TYPE_41__*, %struct.TYPE_41__** %9, align 8
  %89 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %88, i32 0, i32 17
  %90 = load %struct.TYPE_45__*, %struct.TYPE_45__** %89, align 8
  %91 = load %struct.TYPE_41__*, %struct.TYPE_41__** %8, align 8
  %92 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %91, i32 0, i32 17
  %93 = load %struct.TYPE_45__*, %struct.TYPE_45__** %92, align 8
  %94 = call i32 @ngx_conf_merge_ptr_value(%struct.TYPE_45__* %90, %struct.TYPE_45__* %93, i32* null)
  %95 = load %struct.TYPE_41__*, %struct.TYPE_41__** %9, align 8
  %96 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %95, i32 0, i32 11
  %97 = load %struct.TYPE_41__*, %struct.TYPE_41__** %8, align 8
  %98 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %97, i32 0, i32 11
  %99 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %96, i32 0, i32 0
  %100 = load i64, i64* %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %98, i32 0, i32 0
  %102 = load i64, i64* %101, align 8
  %103 = call i32 @ngx_conf_merge_str_value(i64 %100, i64 %102, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  %104 = load %struct.TYPE_41__*, %struct.TYPE_41__** %9, align 8
  %105 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %104, i32 0, i32 10
  %106 = load %struct.TYPE_41__*, %struct.TYPE_41__** %8, align 8
  %107 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %106, i32 0, i32 10
  %108 = load i8*, i8** @NGX_DEFAULT_ECDH_CURVE, align 8
  %109 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %105, i32 0, i32 0
  %110 = load i64, i64* %109, align 8
  %111 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %107, i32 0, i32 0
  %112 = load i64, i64* %111, align 8
  %113 = call i32 @ngx_conf_merge_str_value(i64 %110, i64 %112, i8* %108)
  %114 = load %struct.TYPE_41__*, %struct.TYPE_41__** %9, align 8
  %115 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %114, i32 0, i32 16
  %116 = load %struct.TYPE_41__*, %struct.TYPE_41__** %8, align 8
  %117 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %116, i32 0, i32 16
  %118 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %115, i32 0, i32 0
  %119 = load i64, i64* %118, align 8
  %120 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %117, i32 0, i32 0
  %121 = load i64, i64* %120, align 8
  %122 = call i32 @ngx_conf_merge_str_value(i64 %119, i64 %121, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  %123 = load %struct.TYPE_41__*, %struct.TYPE_41__** %9, align 8
  %124 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %123, i32 0, i32 15
  %125 = load %struct.TYPE_41__*, %struct.TYPE_41__** %8, align 8
  %126 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %125, i32 0, i32 15
  %127 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %124, i32 0, i32 0
  %128 = load i64, i64* %127, align 8
  %129 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %126, i32 0, i32 0
  %130 = load i64, i64* %129, align 8
  %131 = call i32 @ngx_conf_merge_str_value(i64 %128, i64 %130, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  %132 = load %struct.TYPE_41__*, %struct.TYPE_41__** %9, align 8
  %133 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %132, i32 0, i32 14
  %134 = load %struct.TYPE_41__*, %struct.TYPE_41__** %8, align 8
  %135 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %134, i32 0, i32 14
  %136 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %133, i32 0, i32 0
  %137 = load i64, i64* %136, align 8
  %138 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %135, i32 0, i32 0
  %139 = load i64, i64* %138, align 8
  %140 = call i32 @ngx_conf_merge_str_value(i64 %137, i64 %139, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  %141 = load %struct.TYPE_41__*, %struct.TYPE_41__** %9, align 8
  %142 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %141, i32 0, i32 13
  %143 = load %struct.TYPE_41__*, %struct.TYPE_41__** %8, align 8
  %144 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %143, i32 0, i32 13
  %145 = load i8*, i8** @NGX_DEFAULT_CIPHERS, align 8
  %146 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %142, i32 0, i32 0
  %147 = load i64, i64* %146, align 8
  %148 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %144, i32 0, i32 0
  %149 = load i64, i64* %148, align 8
  %150 = call i32 @ngx_conf_merge_str_value(i64 %147, i64 %149, i8* %145)
  %151 = load %struct.TYPE_42__*, %struct.TYPE_42__** %5, align 8
  %152 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %151, i32 0, i32 0
  %153 = load i32, i32* %152, align 4
  %154 = load %struct.TYPE_41__*, %struct.TYPE_41__** %9, align 8
  %155 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %154, i32 0, i32 4
  %156 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %155, i32 0, i32 1
  store i32 %153, i32* %156, align 4
  %157 = load %struct.TYPE_41__*, %struct.TYPE_41__** %9, align 8
  %158 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %157, i32 0, i32 23
  %159 = load i64, i64* %158, align 8
  %160 = icmp ne i64 %159, 0
  br i1 %160, label %161, label %162

161:                                              ; preds = %3
  store i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i8** %10, align 8
  br label %179

162:                                              ; preds = %3
  %163 = load %struct.TYPE_41__*, %struct.TYPE_41__** %9, align 8
  %164 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %163, i32 0, i32 22
  %165 = load i64, i64* %164, align 8
  %166 = icmp ne i64 %165, 0
  br i1 %166, label %167, label %168

167:                                              ; preds = %162
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i8** %10, align 8
  br label %178

168:                                              ; preds = %162
  %169 = load %struct.TYPE_41__*, %struct.TYPE_41__** %9, align 8
  %170 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %169, i32 0, i32 0
  %171 = load i64, i64* %170, align 8
  %172 = load i64, i64* @NGX_MAIL_STARTTLS_OFF, align 8
  %173 = icmp ne i64 %171, %172
  br i1 %173, label %174, label %175

174:                                              ; preds = %168
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), i8** %10, align 8
  br label %177

175:                                              ; preds = %168
  %176 = load i8*, i8** @NGX_CONF_OK, align 8
  store i8* %176, i8** %4, align 8
  br label %485

177:                                              ; preds = %174
  br label %178

178:                                              ; preds = %177, %167
  br label %179

179:                                              ; preds = %178, %161
  %180 = load %struct.TYPE_41__*, %struct.TYPE_41__** %9, align 8
  %181 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %180, i32 0, i32 21
  %182 = load i32*, i32** %181, align 8
  %183 = icmp eq i32* %182, null
  br i1 %183, label %184, label %195

184:                                              ; preds = %179
  %185 = load %struct.TYPE_41__*, %struct.TYPE_41__** %8, align 8
  %186 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %185, i32 0, i32 21
  %187 = load i32*, i32** %186, align 8
  %188 = load %struct.TYPE_41__*, %struct.TYPE_41__** %9, align 8
  %189 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %188, i32 0, i32 21
  store i32* %187, i32** %189, align 8
  %190 = load %struct.TYPE_41__*, %struct.TYPE_41__** %8, align 8
  %191 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %190, i32 0, i32 20
  %192 = load i32, i32* %191, align 4
  %193 = load %struct.TYPE_41__*, %struct.TYPE_41__** %9, align 8
  %194 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %193, i32 0, i32 20
  store i32 %192, i32* %194, align 4
  br label %195

195:                                              ; preds = %184, %179
  %196 = load %struct.TYPE_41__*, %struct.TYPE_41__** %9, align 8
  %197 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %196, i32 0, i32 9
  %198 = load %struct.TYPE_45__*, %struct.TYPE_45__** %197, align 8
  %199 = icmp eq %struct.TYPE_45__* %198, null
  br i1 %199, label %200, label %214

200:                                              ; preds = %195
  %201 = load i32, i32* @NGX_LOG_EMERG, align 4
  %202 = load %struct.TYPE_42__*, %struct.TYPE_42__** %5, align 8
  %203 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %202, i32 0, i32 0
  %204 = load i32, i32* %203, align 4
  %205 = load i8*, i8** %10, align 8
  %206 = load %struct.TYPE_41__*, %struct.TYPE_41__** %9, align 8
  %207 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %206, i32 0, i32 21
  %208 = load i32*, i32** %207, align 8
  %209 = load %struct.TYPE_41__*, %struct.TYPE_41__** %9, align 8
  %210 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %209, i32 0, i32 20
  %211 = load i32, i32* %210, align 4
  %212 = call i32 (i32, i32, i32, i8*, ...) @ngx_log_error(i32 %201, i32 %204, i32 0, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.4, i64 0, i64 0), i8* %205, i32* %208, i32 %211)
  %213 = load i8*, i8** @NGX_CONF_ERROR, align 8
  store i8* %213, i8** %4, align 8
  br label %485

214:                                              ; preds = %195
  %215 = load %struct.TYPE_41__*, %struct.TYPE_41__** %9, align 8
  %216 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %215, i32 0, i32 18
  %217 = load %struct.TYPE_45__*, %struct.TYPE_45__** %216, align 8
  %218 = icmp eq %struct.TYPE_45__* %217, null
  br i1 %218, label %219, label %233

219:                                              ; preds = %214
  %220 = load i32, i32* @NGX_LOG_EMERG, align 4
  %221 = load %struct.TYPE_42__*, %struct.TYPE_42__** %5, align 8
  %222 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %221, i32 0, i32 0
  %223 = load i32, i32* %222, align 4
  %224 = load i8*, i8** %10, align 8
  %225 = load %struct.TYPE_41__*, %struct.TYPE_41__** %9, align 8
  %226 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %225, i32 0, i32 21
  %227 = load i32*, i32** %226, align 8
  %228 = load %struct.TYPE_41__*, %struct.TYPE_41__** %9, align 8
  %229 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %228, i32 0, i32 20
  %230 = load i32, i32* %229, align 4
  %231 = call i32 (i32, i32, i32, i8*, ...) @ngx_log_error(i32 %220, i32 %223, i32 0, i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.5, i64 0, i64 0), i8* %224, i32* %227, i32 %230)
  %232 = load i8*, i8** @NGX_CONF_ERROR, align 8
  store i8* %232, i8** %4, align 8
  br label %485

233:                                              ; preds = %214
  %234 = load %struct.TYPE_41__*, %struct.TYPE_41__** %9, align 8
  %235 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %234, i32 0, i32 18
  %236 = load %struct.TYPE_45__*, %struct.TYPE_45__** %235, align 8
  %237 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %236, i32 0, i32 0
  %238 = load i64, i64* %237, align 8
  %239 = load %struct.TYPE_41__*, %struct.TYPE_41__** %9, align 8
  %240 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %239, i32 0, i32 9
  %241 = load %struct.TYPE_45__*, %struct.TYPE_45__** %240, align 8
  %242 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %241, i32 0, i32 0
  %243 = load i64, i64* %242, align 8
  %244 = icmp slt i64 %238, %243
  br i1 %244, label %245, label %272

245:                                              ; preds = %233
  %246 = load i32, i32* @NGX_LOG_EMERG, align 4
  %247 = load %struct.TYPE_42__*, %struct.TYPE_42__** %5, align 8
  %248 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %247, i32 0, i32 0
  %249 = load i32, i32* %248, align 4
  %250 = load %struct.TYPE_41__*, %struct.TYPE_41__** %9, align 8
  %251 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %250, i32 0, i32 9
  %252 = load %struct.TYPE_45__*, %struct.TYPE_45__** %251, align 8
  %253 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %252, i32 0, i32 1
  %254 = load i64, i64* %253, align 8
  %255 = inttoptr i64 %254 to i32*
  %256 = load %struct.TYPE_41__*, %struct.TYPE_41__** %9, align 8
  %257 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %256, i32 0, i32 9
  %258 = load %struct.TYPE_45__*, %struct.TYPE_45__** %257, align 8
  %259 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %258, i32 0, i32 0
  %260 = load i64, i64* %259, align 8
  %261 = getelementptr inbounds i32, i32* %255, i64 %260
  %262 = getelementptr inbounds i32, i32* %261, i64 -1
  %263 = load i8*, i8** %10, align 8
  %264 = load %struct.TYPE_41__*, %struct.TYPE_41__** %9, align 8
  %265 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %264, i32 0, i32 21
  %266 = load i32*, i32** %265, align 8
  %267 = load %struct.TYPE_41__*, %struct.TYPE_41__** %9, align 8
  %268 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %267, i32 0, i32 20
  %269 = load i32, i32* %268, align 4
  %270 = call i32 (i32, i32, i32, i8*, ...) @ngx_log_error(i32 %246, i32 %249, i32 0, i8* getelementptr inbounds ([90 x i8], [90 x i8]* @.str.6, i64 0, i64 0), i32* %262, i8* %263, i32* %266, i32 %269)
  %271 = load i8*, i8** @NGX_CONF_ERROR, align 8
  store i8* %271, i8** %4, align 8
  br label %485

272:                                              ; preds = %233
  %273 = load %struct.TYPE_41__*, %struct.TYPE_41__** %9, align 8
  %274 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %273, i32 0, i32 4
  %275 = load %struct.TYPE_41__*, %struct.TYPE_41__** %9, align 8
  %276 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %275, i32 0, i32 19
  %277 = load i32, i32* %276, align 8
  %278 = call i64 @ngx_ssl_create(%struct.TYPE_43__* %274, i32 %277, i32* null)
  %279 = load i64, i64* @NGX_OK, align 8
  %280 = icmp ne i64 %278, %279
  br i1 %280, label %281, label %283

281:                                              ; preds = %272
  %282 = load i8*, i8** @NGX_CONF_ERROR, align 8
  store i8* %282, i8** %4, align 8
  br label %485

283:                                              ; preds = %272
  %284 = load %struct.TYPE_42__*, %struct.TYPE_42__** %5, align 8
  %285 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %284, i32 0, i32 1
  %286 = load i32, i32* %285, align 4
  %287 = call %struct.TYPE_40__* @ngx_pool_cleanup_add(i32 %286, i32 0)
  store %struct.TYPE_40__* %287, %struct.TYPE_40__** %11, align 8
  %288 = load %struct.TYPE_40__*, %struct.TYPE_40__** %11, align 8
  %289 = icmp eq %struct.TYPE_40__* %288, null
  br i1 %289, label %290, label %295

290:                                              ; preds = %283
  %291 = load %struct.TYPE_41__*, %struct.TYPE_41__** %9, align 8
  %292 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %291, i32 0, i32 4
  %293 = call i32 @ngx_ssl_cleanup_ctx(%struct.TYPE_43__* %292)
  %294 = load i8*, i8** @NGX_CONF_ERROR, align 8
  store i8* %294, i8** %4, align 8
  br label %485

295:                                              ; preds = %283
  %296 = load %struct.TYPE_40__*, %struct.TYPE_40__** %11, align 8
  %297 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %296, i32 0, i32 1
  store i32 (%struct.TYPE_43__*)* @ngx_ssl_cleanup_ctx, i32 (%struct.TYPE_43__*)** %297, align 8
  %298 = load %struct.TYPE_41__*, %struct.TYPE_41__** %9, align 8
  %299 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %298, i32 0, i32 4
  %300 = load %struct.TYPE_40__*, %struct.TYPE_40__** %11, align 8
  %301 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %300, i32 0, i32 0
  store %struct.TYPE_43__* %299, %struct.TYPE_43__** %301, align 8
  %302 = load %struct.TYPE_42__*, %struct.TYPE_42__** %5, align 8
  %303 = load %struct.TYPE_41__*, %struct.TYPE_41__** %9, align 8
  %304 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %303, i32 0, i32 4
  %305 = load %struct.TYPE_41__*, %struct.TYPE_41__** %9, align 8
  %306 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %305, i32 0, i32 9
  %307 = load %struct.TYPE_45__*, %struct.TYPE_45__** %306, align 8
  %308 = load %struct.TYPE_41__*, %struct.TYPE_41__** %9, align 8
  %309 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %308, i32 0, i32 18
  %310 = load %struct.TYPE_45__*, %struct.TYPE_45__** %309, align 8
  %311 = load %struct.TYPE_41__*, %struct.TYPE_41__** %9, align 8
  %312 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %311, i32 0, i32 17
  %313 = load %struct.TYPE_45__*, %struct.TYPE_45__** %312, align 8
  %314 = call i64 @ngx_ssl_certificates(%struct.TYPE_42__* %302, %struct.TYPE_43__* %304, %struct.TYPE_45__* %307, %struct.TYPE_45__* %310, %struct.TYPE_45__* %313)
  %315 = load i64, i64* @NGX_OK, align 8
  %316 = icmp ne i64 %314, %315
  br i1 %316, label %317, label %319

317:                                              ; preds = %295
  %318 = load i8*, i8** @NGX_CONF_ERROR, align 8
  store i8* %318, i8** %4, align 8
  br label %485

319:                                              ; preds = %295
  %320 = load %struct.TYPE_41__*, %struct.TYPE_41__** %9, align 8
  %321 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %320, i32 0, i32 1
  %322 = load i64, i64* %321, align 8
  %323 = icmp ne i64 %322, 0
  br i1 %323, label %324, label %382

324:                                              ; preds = %319
  %325 = load %struct.TYPE_41__*, %struct.TYPE_41__** %9, align 8
  %326 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %325, i32 0, i32 16
  %327 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %326, i32 0, i32 0
  %328 = load i64, i64* %327, align 8
  %329 = icmp eq i64 %328, 0
  br i1 %329, label %330, label %342

330:                                              ; preds = %324
  %331 = load %struct.TYPE_41__*, %struct.TYPE_41__** %9, align 8
  %332 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %331, i32 0, i32 1
  %333 = load i64, i64* %332, align 8
  %334 = icmp ne i64 %333, 3
  br i1 %334, label %335, label %342

335:                                              ; preds = %330
  %336 = load i32, i32* @NGX_LOG_EMERG, align 4
  %337 = load %struct.TYPE_42__*, %struct.TYPE_42__** %5, align 8
  %338 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %337, i32 0, i32 0
  %339 = load i32, i32* %338, align 4
  %340 = call i32 (i32, i32, i32, i8*, ...) @ngx_log_error(i32 %336, i32 %339, i32 0, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.7, i64 0, i64 0))
  %341 = load i8*, i8** @NGX_CONF_ERROR, align 8
  store i8* %341, i8** %4, align 8
  br label %485

342:                                              ; preds = %330, %324
  %343 = load %struct.TYPE_42__*, %struct.TYPE_42__** %5, align 8
  %344 = load %struct.TYPE_41__*, %struct.TYPE_41__** %9, align 8
  %345 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %344, i32 0, i32 4
  %346 = load %struct.TYPE_41__*, %struct.TYPE_41__** %9, align 8
  %347 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %346, i32 0, i32 16
  %348 = load %struct.TYPE_41__*, %struct.TYPE_41__** %9, align 8
  %349 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %348, i32 0, i32 2
  %350 = load i64, i64* %349, align 8
  %351 = call i64 @ngx_ssl_client_certificate(%struct.TYPE_42__* %343, %struct.TYPE_43__* %345, %struct.TYPE_44__* %347, i64 %350)
  %352 = load i64, i64* @NGX_OK, align 8
  %353 = icmp ne i64 %351, %352
  br i1 %353, label %354, label %356

354:                                              ; preds = %342
  %355 = load i8*, i8** @NGX_CONF_ERROR, align 8
  store i8* %355, i8** %4, align 8
  br label %485

356:                                              ; preds = %342
  %357 = load %struct.TYPE_42__*, %struct.TYPE_42__** %5, align 8
  %358 = load %struct.TYPE_41__*, %struct.TYPE_41__** %9, align 8
  %359 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %358, i32 0, i32 4
  %360 = load %struct.TYPE_41__*, %struct.TYPE_41__** %9, align 8
  %361 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %360, i32 0, i32 15
  %362 = load %struct.TYPE_41__*, %struct.TYPE_41__** %9, align 8
  %363 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %362, i32 0, i32 2
  %364 = load i64, i64* %363, align 8
  %365 = call i64 @ngx_ssl_trusted_certificate(%struct.TYPE_42__* %357, %struct.TYPE_43__* %359, %struct.TYPE_44__* %361, i64 %364)
  %366 = load i64, i64* @NGX_OK, align 8
  %367 = icmp ne i64 %365, %366
  br i1 %367, label %368, label %370

368:                                              ; preds = %356
  %369 = load i8*, i8** @NGX_CONF_ERROR, align 8
  store i8* %369, i8** %4, align 8
  br label %485

370:                                              ; preds = %356
  %371 = load %struct.TYPE_42__*, %struct.TYPE_42__** %5, align 8
  %372 = load %struct.TYPE_41__*, %struct.TYPE_41__** %9, align 8
  %373 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %372, i32 0, i32 4
  %374 = load %struct.TYPE_41__*, %struct.TYPE_41__** %9, align 8
  %375 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %374, i32 0, i32 14
  %376 = call i64 @ngx_ssl_crl(%struct.TYPE_42__* %371, %struct.TYPE_43__* %373, %struct.TYPE_44__* %375)
  %377 = load i64, i64* @NGX_OK, align 8
  %378 = icmp ne i64 %376, %377
  br i1 %378, label %379, label %381

379:                                              ; preds = %370
  %380 = load i8*, i8** @NGX_CONF_ERROR, align 8
  store i8* %380, i8** %4, align 8
  br label %485

381:                                              ; preds = %370
  br label %382

382:                                              ; preds = %381, %319
  %383 = load %struct.TYPE_42__*, %struct.TYPE_42__** %5, align 8
  %384 = load %struct.TYPE_41__*, %struct.TYPE_41__** %9, align 8
  %385 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %384, i32 0, i32 4
  %386 = load %struct.TYPE_41__*, %struct.TYPE_41__** %9, align 8
  %387 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %386, i32 0, i32 13
  %388 = load %struct.TYPE_41__*, %struct.TYPE_41__** %9, align 8
  %389 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %388, i32 0, i32 12
  %390 = load i64, i64* %389, align 8
  %391 = call i64 @ngx_ssl_ciphers(%struct.TYPE_42__* %383, %struct.TYPE_43__* %385, %struct.TYPE_44__* %387, i64 %390)
  %392 = load i64, i64* @NGX_OK, align 8
  %393 = icmp ne i64 %391, %392
  br i1 %393, label %394, label %396

394:                                              ; preds = %382
  %395 = load i8*, i8** @NGX_CONF_ERROR, align 8
  store i8* %395, i8** %4, align 8
  br label %485

396:                                              ; preds = %382
  %397 = load %struct.TYPE_42__*, %struct.TYPE_42__** %5, align 8
  %398 = load %struct.TYPE_41__*, %struct.TYPE_41__** %9, align 8
  %399 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %398, i32 0, i32 4
  %400 = load %struct.TYPE_41__*, %struct.TYPE_41__** %9, align 8
  %401 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %400, i32 0, i32 11
  %402 = call i64 @ngx_ssl_dhparam(%struct.TYPE_42__* %397, %struct.TYPE_43__* %399, %struct.TYPE_44__* %401)
  %403 = load i64, i64* @NGX_OK, align 8
  %404 = icmp ne i64 %402, %403
  br i1 %404, label %405, label %407

405:                                              ; preds = %396
  %406 = load i8*, i8** @NGX_CONF_ERROR, align 8
  store i8* %406, i8** %4, align 8
  br label %485

407:                                              ; preds = %396
  %408 = load %struct.TYPE_42__*, %struct.TYPE_42__** %5, align 8
  %409 = load %struct.TYPE_41__*, %struct.TYPE_41__** %9, align 8
  %410 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %409, i32 0, i32 4
  %411 = load %struct.TYPE_41__*, %struct.TYPE_41__** %9, align 8
  %412 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %411, i32 0, i32 10
  %413 = call i64 @ngx_ssl_ecdh_curve(%struct.TYPE_42__* %408, %struct.TYPE_43__* %410, %struct.TYPE_44__* %412)
  %414 = load i64, i64* @NGX_OK, align 8
  %415 = icmp ne i64 %413, %414
  br i1 %415, label %416, label %418

416:                                              ; preds = %407
  %417 = load i8*, i8** @NGX_CONF_ERROR, align 8
  store i8* %417, i8** %4, align 8
  br label %485

418:                                              ; preds = %407
  %419 = load %struct.TYPE_41__*, %struct.TYPE_41__** %9, align 8
  %420 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %419, i32 0, i32 8
  %421 = load i64, i64* %420, align 8
  %422 = load %struct.TYPE_41__*, %struct.TYPE_41__** %8, align 8
  %423 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %422, i32 0, i32 8
  %424 = load i64, i64* %423, align 8
  %425 = load i32, i32* @NGX_SSL_NONE_SCACHE, align 4
  %426 = call i32 @ngx_conf_merge_value(i64 %421, i64 %424, i32 %425)
  %427 = load %struct.TYPE_41__*, %struct.TYPE_41__** %9, align 8
  %428 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %427, i32 0, i32 7
  %429 = load i32*, i32** %428, align 8
  %430 = icmp eq i32* %429, null
  br i1 %430, label %431, label %437

431:                                              ; preds = %418
  %432 = load %struct.TYPE_41__*, %struct.TYPE_41__** %8, align 8
  %433 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %432, i32 0, i32 7
  %434 = load i32*, i32** %433, align 8
  %435 = load %struct.TYPE_41__*, %struct.TYPE_41__** %9, align 8
  %436 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %435, i32 0, i32 7
  store i32* %434, i32** %436, align 8
  br label %437

437:                                              ; preds = %431, %418
  %438 = load %struct.TYPE_41__*, %struct.TYPE_41__** %9, align 8
  %439 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %438, i32 0, i32 4
  %440 = load %struct.TYPE_41__*, %struct.TYPE_41__** %9, align 8
  %441 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %440, i32 0, i32 9
  %442 = load %struct.TYPE_45__*, %struct.TYPE_45__** %441, align 8
  %443 = load %struct.TYPE_41__*, %struct.TYPE_41__** %9, align 8
  %444 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %443, i32 0, i32 8
  %445 = load i64, i64* %444, align 8
  %446 = load %struct.TYPE_41__*, %struct.TYPE_41__** %9, align 8
  %447 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %446, i32 0, i32 7
  %448 = load i32*, i32** %447, align 8
  %449 = load %struct.TYPE_41__*, %struct.TYPE_41__** %9, align 8
  %450 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %449, i32 0, i32 6
  %451 = load i64, i64* %450, align 8
  %452 = call i64 @ngx_ssl_session_cache(%struct.TYPE_43__* %439, i32* @ngx_mail_ssl_sess_id_ctx, %struct.TYPE_45__* %442, i64 %445, i32* %448, i64 %451)
  %453 = load i64, i64* @NGX_OK, align 8
  %454 = icmp ne i64 %452, %453
  br i1 %454, label %455, label %457

455:                                              ; preds = %437
  %456 = load i8*, i8** @NGX_CONF_ERROR, align 8
  store i8* %456, i8** %4, align 8
  br label %485

457:                                              ; preds = %437
  %458 = load %struct.TYPE_41__*, %struct.TYPE_41__** %9, align 8
  %459 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %458, i32 0, i32 5
  %460 = load i64, i64* %459, align 8
  %461 = load %struct.TYPE_41__*, %struct.TYPE_41__** %8, align 8
  %462 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %461, i32 0, i32 5
  %463 = load i64, i64* %462, align 8
  %464 = call i32 @ngx_conf_merge_value(i64 %460, i64 %463, i32 1)
  %465 = load %struct.TYPE_41__*, %struct.TYPE_41__** %9, align 8
  %466 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %465, i32 0, i32 3
  %467 = load %struct.TYPE_45__*, %struct.TYPE_45__** %466, align 8
  %468 = load %struct.TYPE_41__*, %struct.TYPE_41__** %8, align 8
  %469 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %468, i32 0, i32 3
  %470 = load %struct.TYPE_45__*, %struct.TYPE_45__** %469, align 8
  %471 = call i32 @ngx_conf_merge_ptr_value(%struct.TYPE_45__* %467, %struct.TYPE_45__* %470, i32* null)
  %472 = load %struct.TYPE_42__*, %struct.TYPE_42__** %5, align 8
  %473 = load %struct.TYPE_41__*, %struct.TYPE_41__** %9, align 8
  %474 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %473, i32 0, i32 4
  %475 = load %struct.TYPE_41__*, %struct.TYPE_41__** %9, align 8
  %476 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %475, i32 0, i32 3
  %477 = load %struct.TYPE_45__*, %struct.TYPE_45__** %476, align 8
  %478 = call i64 @ngx_ssl_session_ticket_keys(%struct.TYPE_42__* %472, %struct.TYPE_43__* %474, %struct.TYPE_45__* %477)
  %479 = load i64, i64* @NGX_OK, align 8
  %480 = icmp ne i64 %478, %479
  br i1 %480, label %481, label %483

481:                                              ; preds = %457
  %482 = load i8*, i8** @NGX_CONF_ERROR, align 8
  store i8* %482, i8** %4, align 8
  br label %485

483:                                              ; preds = %457
  %484 = load i8*, i8** @NGX_CONF_OK, align 8
  store i8* %484, i8** %4, align 8
  br label %485

485:                                              ; preds = %483, %481, %455, %416, %405, %394, %379, %368, %354, %335, %317, %290, %281, %245, %219, %200, %175
  %486 = load i8*, i8** %4, align 8
  ret i8* %486
}

declare dso_local i32 @ngx_conf_merge_value(i64, i64, i32) #1

declare dso_local i32 @ngx_conf_merge_uint_value(i64, i64, i32) #1

declare dso_local i32 @ngx_conf_merge_bitmask_value(i32, i32, i32) #1

declare dso_local i32 @ngx_conf_merge_ptr_value(%struct.TYPE_45__*, %struct.TYPE_45__*, i32*) #1

declare dso_local i32 @ngx_conf_merge_str_value(i64, i64, i8*) #1

declare dso_local i32 @ngx_log_error(i32, i32, i32, i8*, ...) #1

declare dso_local i64 @ngx_ssl_create(%struct.TYPE_43__*, i32, i32*) #1

declare dso_local %struct.TYPE_40__* @ngx_pool_cleanup_add(i32, i32) #1

declare dso_local i32 @ngx_ssl_cleanup_ctx(%struct.TYPE_43__*) #1

declare dso_local i64 @ngx_ssl_certificates(%struct.TYPE_42__*, %struct.TYPE_43__*, %struct.TYPE_45__*, %struct.TYPE_45__*, %struct.TYPE_45__*) #1

declare dso_local i64 @ngx_ssl_client_certificate(%struct.TYPE_42__*, %struct.TYPE_43__*, %struct.TYPE_44__*, i64) #1

declare dso_local i64 @ngx_ssl_trusted_certificate(%struct.TYPE_42__*, %struct.TYPE_43__*, %struct.TYPE_44__*, i64) #1

declare dso_local i64 @ngx_ssl_crl(%struct.TYPE_42__*, %struct.TYPE_43__*, %struct.TYPE_44__*) #1

declare dso_local i64 @ngx_ssl_ciphers(%struct.TYPE_42__*, %struct.TYPE_43__*, %struct.TYPE_44__*, i64) #1

declare dso_local i64 @ngx_ssl_dhparam(%struct.TYPE_42__*, %struct.TYPE_43__*, %struct.TYPE_44__*) #1

declare dso_local i64 @ngx_ssl_ecdh_curve(%struct.TYPE_42__*, %struct.TYPE_43__*, %struct.TYPE_44__*) #1

declare dso_local i64 @ngx_ssl_session_cache(%struct.TYPE_43__*, i32*, %struct.TYPE_45__*, i64, i32*, i64) #1

declare dso_local i64 @ngx_ssl_session_ticket_keys(%struct.TYPE_42__*, %struct.TYPE_43__*, %struct.TYPE_45__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
