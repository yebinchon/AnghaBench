; ModuleID = '/home/carl/AnghaBench/tengine/src/mail/extr_ngx_mail_imap_handler.c_ngx_mail_imap_auth_state.c'
source_filename = "/home/carl/AnghaBench/tengine/src/mail/extr_ngx_mail_imap_handler.c_ngx_mail_imap_auth_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_39__ = type { i64, %struct.TYPE_40__* }
%struct.TYPE_40__ = type { i32, i32, i32, i32, %struct.TYPE_38__* }
%struct.TYPE_38__ = type { i32, i32, i32, i64, %struct.TYPE_41__, %struct.TYPE_35__*, i64, %struct.TYPE_36__, %struct.TYPE_34__, %struct.TYPE_41__, %struct.TYPE_41__, i32, i64 }
%struct.TYPE_35__ = type { i64, i64, i64 }
%struct.TYPE_36__ = type { i64, %struct.TYPE_37__* }
%struct.TYPE_37__ = type { i32, i32* }
%struct.TYPE_34__ = type { i64, i32* }
%struct.TYPE_41__ = type { i64, i32* }

@NGX_LOG_DEBUG_MAIL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"imap auth state\00", align 1
@NGX_LOG_INFO = common dso_local global i32 0, align 4
@NGX_ETIMEDOUT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [17 x i8] c"client timed out\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"imap send handler busy\00", align 1
@NGX_AGAIN = common dso_local global i32 0, align 4
@imap_ok = common dso_local global i32 0, align 4
@NGX_OK = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [22 x i8] c"imap auth command: %i\00", align 1
@imap_bye = common dso_local global i32 0, align 4
@imap_password = common dso_local global i32 0, align 4
@NGX_IMAP_NEXT = common dso_local global i32 0, align 4
@imap_next = common dso_local global i32 0, align 4
@imap_invalid_command = common dso_local global i32 0, align 4
@imap_star = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ngx_mail_imap_auth_state(%struct.TYPE_39__* %0) #0 {
  %2 = alloca %struct.TYPE_39__*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_37__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.TYPE_40__*, align 8
  %12 = alloca %struct.TYPE_38__*, align 8
  store %struct.TYPE_39__* %0, %struct.TYPE_39__** %2, align 8
  %13 = load %struct.TYPE_39__*, %struct.TYPE_39__** %2, align 8
  %14 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %13, i32 0, i32 1
  %15 = load %struct.TYPE_40__*, %struct.TYPE_40__** %14, align 8
  store %struct.TYPE_40__* %15, %struct.TYPE_40__** %11, align 8
  %16 = load %struct.TYPE_40__*, %struct.TYPE_40__** %11, align 8
  %17 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %16, i32 0, i32 4
  %18 = load %struct.TYPE_38__*, %struct.TYPE_38__** %17, align 8
  store %struct.TYPE_38__* %18, %struct.TYPE_38__** %12, align 8
  %19 = load i32, i32* @NGX_LOG_DEBUG_MAIL, align 4
  %20 = load %struct.TYPE_40__*, %struct.TYPE_40__** %11, align 8
  %21 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %20, i32 0, i32 3
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @ngx_log_debug0(i32 %19, i32 %22, i32 0, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  %24 = load %struct.TYPE_39__*, %struct.TYPE_39__** %2, align 8
  %25 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %39

28:                                               ; preds = %1
  %29 = load i32, i32* @NGX_LOG_INFO, align 4
  %30 = load %struct.TYPE_40__*, %struct.TYPE_40__** %11, align 8
  %31 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %30, i32 0, i32 3
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @NGX_ETIMEDOUT, align 4
  %34 = call i32 @ngx_log_error(i32 %29, i32 %32, i32 %33, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  %35 = load %struct.TYPE_40__*, %struct.TYPE_40__** %11, align 8
  %36 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %35, i32 0, i32 0
  store i32 1, i32* %36, align 8
  %37 = load %struct.TYPE_40__*, %struct.TYPE_40__** %11, align 8
  %38 = call i32 @ngx_mail_close_connection(%struct.TYPE_40__* %37)
  br label %459

39:                                               ; preds = %1
  %40 = load %struct.TYPE_38__*, %struct.TYPE_38__** %12, align 8
  %41 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %40, i32 0, i32 9
  %42 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %53

45:                                               ; preds = %39
  %46 = load i32, i32* @NGX_LOG_DEBUG_MAIL, align 4
  %47 = load %struct.TYPE_40__*, %struct.TYPE_40__** %11, align 8
  %48 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %47, i32 0, i32 3
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @ngx_log_debug0(i32 %46, i32 %49, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0))
  %51 = load %struct.TYPE_38__*, %struct.TYPE_38__** %12, align 8
  %52 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %51, i32 0, i32 0
  store i32 1, i32* %52, align 8
  br label %459

53:                                               ; preds = %39
  %54 = load %struct.TYPE_38__*, %struct.TYPE_38__** %12, align 8
  %55 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %54, i32 0, i32 0
  store i32 0, i32* %55, align 8
  %56 = load %struct.TYPE_38__*, %struct.TYPE_38__** %12, align 8
  %57 = load %struct.TYPE_40__*, %struct.TYPE_40__** %11, align 8
  %58 = call i32 @ngx_mail_read_command(%struct.TYPE_38__* %56, %struct.TYPE_40__* %57)
  store i32 %58, i32* %8, align 4
  %59 = load i32, i32* %8, align 4
  %60 = load i32, i32* @NGX_AGAIN, align 4
  %61 = icmp eq i32 %59, %60
  br i1 %61, label %65, label %62

62:                                               ; preds = %53
  %63 = load i32, i32* %8, align 4
  %64 = icmp eq i32 %63, 141
  br i1 %64, label %65, label %66

65:                                               ; preds = %62, %53
  br label %459

66:                                               ; preds = %62
  store i64 1, i64* %9, align 8
  %67 = load %struct.TYPE_38__*, %struct.TYPE_38__** %12, align 8
  %68 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %67, i32 0, i32 10
  %69 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %68, i32 0, i32 0
  store i64 0, i64* %69, align 8
  %70 = load %struct.TYPE_38__*, %struct.TYPE_38__** %12, align 8
  %71 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %70, i32 0, i32 9
  %72 = load i32, i32* @imap_ok, align 4
  %73 = call i32 @ngx_str_set(%struct.TYPE_41__* %71, i32 %72)
  %74 = load i32, i32* %8, align 4
  %75 = load i32, i32* @NGX_OK, align 4
  %76 = icmp eq i32 %74, %75
  br i1 %76, label %77, label %226

77:                                               ; preds = %66
  %78 = load i32, i32* @NGX_LOG_DEBUG_MAIL, align 4
  %79 = load %struct.TYPE_40__*, %struct.TYPE_40__** %11, align 8
  %80 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %79, i32 0, i32 3
  %81 = load i32, i32* %80, align 4
  %82 = load %struct.TYPE_38__*, %struct.TYPE_38__** %12, align 8
  %83 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %82, i32 0, i32 11
  %84 = load i32, i32* %83, align 8
  %85 = call i32 @ngx_log_debug1(i32 %78, i32 %81, i32 0, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0), i32 %84)
  %86 = load %struct.TYPE_38__*, %struct.TYPE_38__** %12, align 8
  %87 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %86, i32 0, i32 12
  %88 = load i64, i64* %87, align 8
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %160

90:                                               ; preds = %77
  %91 = load %struct.TYPE_38__*, %struct.TYPE_38__** %12, align 8
  %92 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %91, i32 0, i32 7
  %93 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %92, i32 0, i32 1
  %94 = load %struct.TYPE_37__*, %struct.TYPE_37__** %93, align 8
  store %struct.TYPE_37__* %94, %struct.TYPE_37__** %7, align 8
  store i64 0, i64* %10, align 8
  br label %95

95:                                               ; preds = %154, %90
  %96 = load i64, i64* %10, align 8
  %97 = load %struct.TYPE_38__*, %struct.TYPE_38__** %12, align 8
  %98 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %97, i32 0, i32 7
  %99 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %98, i32 0, i32 0
  %100 = load i64, i64* %99, align 8
  %101 = icmp ult i64 %96, %100
  br i1 %101, label %102, label %157

102:                                              ; preds = %95
  %103 = load %struct.TYPE_37__*, %struct.TYPE_37__** %7, align 8
  %104 = load i64, i64* %10, align 8
  %105 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %103, i64 %104
  %106 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %105, i32 0, i32 1
  %107 = load i32*, i32** %106, align 8
  store i32* %107, i32** %4, align 8
  %108 = load i32*, i32** %4, align 8
  %109 = load %struct.TYPE_37__*, %struct.TYPE_37__** %7, align 8
  %110 = load i64, i64* %10, align 8
  %111 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %109, i64 %110
  %112 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 8
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds i32, i32* %108, i64 %114
  store i32* %115, i32** %6, align 8
  %116 = load i32*, i32** %4, align 8
  store i32* %116, i32** %5, align 8
  br label %117

117:                                              ; preds = %135, %102
  %118 = load i32*, i32** %5, align 8
  %119 = load i32*, i32** %6, align 8
  %120 = icmp ult i32* %118, %119
  br i1 %120, label %121, label %138

121:                                              ; preds = %117
  %122 = load i32*, i32** %5, align 8
  %123 = load i32, i32* %122, align 4
  %124 = load i32*, i32** %4, align 8
  store i32 %123, i32* %124, align 4
  %125 = load i32*, i32** %5, align 8
  %126 = getelementptr inbounds i32, i32* %125, i32 1
  store i32* %126, i32** %5, align 8
  %127 = load i32, i32* %125, align 4
  %128 = icmp eq i32 %127, 92
  br i1 %128, label %129, label %134

129:                                              ; preds = %121
  %130 = load i32*, i32** %5, align 8
  %131 = getelementptr inbounds i32, i32* %130, i32 1
  store i32* %131, i32** %5, align 8
  %132 = load i32, i32* %130, align 4
  %133 = load i32*, i32** %4, align 8
  store i32 %132, i32* %133, align 4
  br label %134

134:                                              ; preds = %129, %121
  br label %135

135:                                              ; preds = %134
  %136 = load i32*, i32** %4, align 8
  %137 = getelementptr inbounds i32, i32* %136, i32 1
  store i32* %137, i32** %4, align 8
  br label %117

138:                                              ; preds = %117
  %139 = load i32*, i32** %4, align 8
  %140 = load %struct.TYPE_37__*, %struct.TYPE_37__** %7, align 8
  %141 = load i64, i64* %10, align 8
  %142 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %140, i64 %141
  %143 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %142, i32 0, i32 1
  %144 = load i32*, i32** %143, align 8
  %145 = ptrtoint i32* %139 to i64
  %146 = ptrtoint i32* %144 to i64
  %147 = sub i64 %145, %146
  %148 = sdiv exact i64 %147, 4
  %149 = trunc i64 %148 to i32
  %150 = load %struct.TYPE_37__*, %struct.TYPE_37__** %7, align 8
  %151 = load i64, i64* %10, align 8
  %152 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %150, i64 %151
  %153 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %152, i32 0, i32 0
  store i32 %149, i32* %153, align 8
  br label %154

154:                                              ; preds = %138
  %155 = load i64, i64* %10, align 8
  %156 = add i64 %155, 1
  store i64 %156, i64* %10, align 8
  br label %95

157:                                              ; preds = %95
  %158 = load %struct.TYPE_38__*, %struct.TYPE_38__** %12, align 8
  %159 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %158, i32 0, i32 12
  store i64 0, i64* %159, align 8
  br label %160

160:                                              ; preds = %157, %77
  %161 = load %struct.TYPE_38__*, %struct.TYPE_38__** %12, align 8
  %162 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %161, i32 0, i32 1
  %163 = load i32, i32* %162, align 4
  switch i32 %163, label %225 [
    i32 128, label %164
    i32 130, label %199
    i32 131, label %209
    i32 129, label %213
    i32 133, label %217
    i32 132, label %221
  ]

164:                                              ; preds = %160
  %165 = load %struct.TYPE_38__*, %struct.TYPE_38__** %12, align 8
  %166 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %165, i32 0, i32 11
  %167 = load i32, i32* %166, align 8
  switch i32 %167, label %197 [
    i32 138, label %168
    i32 140, label %172
    i32 139, label %181
    i32 137, label %185
    i32 136, label %192
    i32 135, label %193
  ]

168:                                              ; preds = %164
  %169 = load %struct.TYPE_38__*, %struct.TYPE_38__** %12, align 8
  %170 = load %struct.TYPE_40__*, %struct.TYPE_40__** %11, align 8
  %171 = call i32 @ngx_mail_imap_login(%struct.TYPE_38__* %169, %struct.TYPE_40__* %170)
  store i32 %171, i32* %8, align 4
  br label %198

172:                                              ; preds = %164
  %173 = load %struct.TYPE_38__*, %struct.TYPE_38__** %12, align 8
  %174 = load %struct.TYPE_40__*, %struct.TYPE_40__** %11, align 8
  %175 = call i32 @ngx_mail_imap_authenticate(%struct.TYPE_38__* %173, %struct.TYPE_40__* %174)
  store i32 %175, i32* %8, align 4
  %176 = load i32, i32* %8, align 4
  %177 = load i32, i32* @NGX_OK, align 4
  %178 = icmp ne i32 %176, %177
  %179 = zext i1 %178 to i32
  %180 = sext i32 %179 to i64
  store i64 %180, i64* %9, align 8
  br label %198

181:                                              ; preds = %164
  %182 = load %struct.TYPE_38__*, %struct.TYPE_38__** %12, align 8
  %183 = load %struct.TYPE_40__*, %struct.TYPE_40__** %11, align 8
  %184 = call i32 @ngx_mail_imap_capability(%struct.TYPE_38__* %182, %struct.TYPE_40__* %183)
  store i32 %184, i32* %8, align 4
  br label %198

185:                                              ; preds = %164
  %186 = load %struct.TYPE_38__*, %struct.TYPE_38__** %12, align 8
  %187 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %186, i32 0, i32 2
  store i32 1, i32* %187, align 8
  %188 = load %struct.TYPE_38__*, %struct.TYPE_38__** %12, align 8
  %189 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %188, i32 0, i32 10
  %190 = load i32, i32* @imap_bye, align 4
  %191 = call i32 @ngx_str_set(%struct.TYPE_41__* %189, i32 %190)
  br label %198

192:                                              ; preds = %164
  br label %198

193:                                              ; preds = %164
  %194 = load %struct.TYPE_38__*, %struct.TYPE_38__** %12, align 8
  %195 = load %struct.TYPE_40__*, %struct.TYPE_40__** %11, align 8
  %196 = call i32 @ngx_mail_imap_starttls(%struct.TYPE_38__* %194, %struct.TYPE_40__* %195)
  store i32 %196, i32* %8, align 4
  br label %198

197:                                              ; preds = %164
  store i32 134, i32* %8, align 4
  br label %198

198:                                              ; preds = %197, %193, %192, %185, %181, %172, %168
  br label %225

199:                                              ; preds = %160
  %200 = load %struct.TYPE_38__*, %struct.TYPE_38__** %12, align 8
  %201 = load %struct.TYPE_40__*, %struct.TYPE_40__** %11, align 8
  %202 = call i32 @ngx_mail_auth_login_username(%struct.TYPE_38__* %200, %struct.TYPE_40__* %201, i32 0)
  store i32 %202, i32* %8, align 4
  store i64 0, i64* %9, align 8
  %203 = load %struct.TYPE_38__*, %struct.TYPE_38__** %12, align 8
  %204 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %203, i32 0, i32 9
  %205 = load i32, i32* @imap_password, align 4
  %206 = call i32 @ngx_str_set(%struct.TYPE_41__* %204, i32 %205)
  %207 = load %struct.TYPE_38__*, %struct.TYPE_38__** %12, align 8
  %208 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %207, i32 0, i32 1
  store i32 131, i32* %208, align 4
  br label %225

209:                                              ; preds = %160
  %210 = load %struct.TYPE_38__*, %struct.TYPE_38__** %12, align 8
  %211 = load %struct.TYPE_40__*, %struct.TYPE_40__** %11, align 8
  %212 = call i32 @ngx_mail_auth_login_password(%struct.TYPE_38__* %210, %struct.TYPE_40__* %211)
  store i32 %212, i32* %8, align 4
  br label %225

213:                                              ; preds = %160
  %214 = load %struct.TYPE_38__*, %struct.TYPE_38__** %12, align 8
  %215 = load %struct.TYPE_40__*, %struct.TYPE_40__** %11, align 8
  %216 = call i32 @ngx_mail_auth_plain(%struct.TYPE_38__* %214, %struct.TYPE_40__* %215, i32 0)
  store i32 %216, i32* %8, align 4
  br label %225

217:                                              ; preds = %160
  %218 = load %struct.TYPE_38__*, %struct.TYPE_38__** %12, align 8
  %219 = load %struct.TYPE_40__*, %struct.TYPE_40__** %11, align 8
  %220 = call i32 @ngx_mail_auth_cram_md5(%struct.TYPE_38__* %218, %struct.TYPE_40__* %219)
  store i32 %220, i32* %8, align 4
  br label %225

221:                                              ; preds = %160
  %222 = load %struct.TYPE_38__*, %struct.TYPE_38__** %12, align 8
  %223 = load %struct.TYPE_40__*, %struct.TYPE_40__** %11, align 8
  %224 = call i32 @ngx_mail_auth_external(%struct.TYPE_38__* %222, %struct.TYPE_40__* %223, i32 0)
  store i32 %224, i32* %8, align 4
  br label %225

225:                                              ; preds = %160, %221, %217, %213, %209, %199, %198
  br label %236

226:                                              ; preds = %66
  %227 = load i32, i32* %8, align 4
  %228 = load i32, i32* @NGX_IMAP_NEXT, align 4
  %229 = icmp eq i32 %227, %228
  br i1 %229, label %230, label %235

230:                                              ; preds = %226
  store i64 0, i64* %9, align 8
  %231 = load %struct.TYPE_38__*, %struct.TYPE_38__** %12, align 8
  %232 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %231, i32 0, i32 9
  %233 = load i32, i32* @imap_next, align 4
  %234 = call i32 @ngx_str_set(%struct.TYPE_41__* %232, i32 %233)
  br label %235

235:                                              ; preds = %230, %226
  br label %236

236:                                              ; preds = %235, %225
  %237 = load i32, i32* %8, align 4
  switch i32 %237, label %254 [
    i32 142, label %238
    i32 141, label %242
    i32 134, label %245
  ]

238:                                              ; preds = %236
  %239 = load %struct.TYPE_38__*, %struct.TYPE_38__** %12, align 8
  %240 = load %struct.TYPE_40__*, %struct.TYPE_40__** %11, align 8
  %241 = call i32 @ngx_mail_auth(%struct.TYPE_38__* %239, %struct.TYPE_40__* %240)
  br label %459

242:                                              ; preds = %236
  %243 = load %struct.TYPE_38__*, %struct.TYPE_38__** %12, align 8
  %244 = call i32 @ngx_mail_session_internal_server_error(%struct.TYPE_38__* %243)
  br label %459

245:                                              ; preds = %236
  %246 = load %struct.TYPE_38__*, %struct.TYPE_38__** %12, align 8
  %247 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %246, i32 0, i32 6
  store i64 0, i64* %247, align 8
  %248 = load %struct.TYPE_38__*, %struct.TYPE_38__** %12, align 8
  %249 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %248, i32 0, i32 9
  %250 = load i32, i32* @imap_invalid_command, align 4
  %251 = call i32 @ngx_str_set(%struct.TYPE_41__* %249, i32 %250)
  %252 = load %struct.TYPE_38__*, %struct.TYPE_38__** %12, align 8
  %253 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %252, i32 0, i32 1
  store i32 128, i32* %253, align 4
  br label %254

254:                                              ; preds = %236, %245
  %255 = load i64, i64* %9, align 8
  %256 = icmp ne i64 %255, 0
  br i1 %256, label %257, label %392

257:                                              ; preds = %254
  %258 = load %struct.TYPE_38__*, %struct.TYPE_38__** %12, align 8
  %259 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %258, i32 0, i32 4
  %260 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %259, i32 0, i32 0
  %261 = load i64, i64* %260, align 8
  %262 = icmp eq i64 %261, 0
  br i1 %262, label %263, label %268

263:                                              ; preds = %257
  %264 = load %struct.TYPE_38__*, %struct.TYPE_38__** %12, align 8
  %265 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %264, i32 0, i32 4
  %266 = load i32, i32* @imap_star, align 4
  %267 = call i32 @ngx_str_set(%struct.TYPE_41__* %265, i32 %266)
  br label %268

268:                                              ; preds = %263, %257
  %269 = load %struct.TYPE_38__*, %struct.TYPE_38__** %12, align 8
  %270 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %269, i32 0, i32 8
  %271 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %270, i32 0, i32 0
  %272 = load i64, i64* %271, align 8
  %273 = load %struct.TYPE_38__*, %struct.TYPE_38__** %12, align 8
  %274 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %273, i32 0, i32 4
  %275 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %274, i32 0, i32 0
  %276 = load i64, i64* %275, align 8
  %277 = load %struct.TYPE_38__*, %struct.TYPE_38__** %12, align 8
  %278 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %277, i32 0, i32 10
  %279 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %278, i32 0, i32 0
  %280 = load i64, i64* %279, align 8
  %281 = add nsw i64 %276, %280
  %282 = load %struct.TYPE_38__*, %struct.TYPE_38__** %12, align 8
  %283 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %282, i32 0, i32 9
  %284 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %283, i32 0, i32 0
  %285 = load i64, i64* %284, align 8
  %286 = add nsw i64 %281, %285
  %287 = icmp slt i64 %272, %286
  br i1 %287, label %288, label %326

288:                                              ; preds = %268
  %289 = load %struct.TYPE_38__*, %struct.TYPE_38__** %12, align 8
  %290 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %289, i32 0, i32 4
  %291 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %290, i32 0, i32 0
  %292 = load i64, i64* %291, align 8
  %293 = load %struct.TYPE_38__*, %struct.TYPE_38__** %12, align 8
  %294 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %293, i32 0, i32 10
  %295 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %294, i32 0, i32 0
  %296 = load i64, i64* %295, align 8
  %297 = add nsw i64 %292, %296
  %298 = load %struct.TYPE_38__*, %struct.TYPE_38__** %12, align 8
  %299 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %298, i32 0, i32 9
  %300 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %299, i32 0, i32 0
  %301 = load i64, i64* %300, align 8
  %302 = add nsw i64 %297, %301
  %303 = load %struct.TYPE_38__*, %struct.TYPE_38__** %12, align 8
  %304 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %303, i32 0, i32 8
  %305 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %304, i32 0, i32 0
  store i64 %302, i64* %305, align 8
  %306 = load %struct.TYPE_40__*, %struct.TYPE_40__** %11, align 8
  %307 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %306, i32 0, i32 2
  %308 = load i32, i32* %307, align 8
  %309 = load %struct.TYPE_38__*, %struct.TYPE_38__** %12, align 8
  %310 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %309, i32 0, i32 8
  %311 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %310, i32 0, i32 0
  %312 = load i64, i64* %311, align 8
  %313 = call i32* @ngx_pnalloc(i32 %308, i64 %312)
  %314 = load %struct.TYPE_38__*, %struct.TYPE_38__** %12, align 8
  %315 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %314, i32 0, i32 8
  %316 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %315, i32 0, i32 1
  store i32* %313, i32** %316, align 8
  %317 = load %struct.TYPE_38__*, %struct.TYPE_38__** %12, align 8
  %318 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %317, i32 0, i32 8
  %319 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %318, i32 0, i32 1
  %320 = load i32*, i32** %319, align 8
  %321 = icmp eq i32* %320, null
  br i1 %321, label %322, label %325

322:                                              ; preds = %288
  %323 = load %struct.TYPE_40__*, %struct.TYPE_40__** %11, align 8
  %324 = call i32 @ngx_mail_close_connection(%struct.TYPE_40__* %323)
  br label %459

325:                                              ; preds = %288
  br label %326

326:                                              ; preds = %325, %268
  %327 = load %struct.TYPE_38__*, %struct.TYPE_38__** %12, align 8
  %328 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %327, i32 0, i32 8
  %329 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %328, i32 0, i32 1
  %330 = load i32*, i32** %329, align 8
  store i32* %330, i32** %3, align 8
  %331 = load %struct.TYPE_38__*, %struct.TYPE_38__** %12, align 8
  %332 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %331, i32 0, i32 10
  %333 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %332, i32 0, i32 0
  %334 = load i64, i64* %333, align 8
  %335 = icmp ne i64 %334, 0
  br i1 %335, label %336, label %347

336:                                              ; preds = %326
  %337 = load i32*, i32** %3, align 8
  %338 = load %struct.TYPE_38__*, %struct.TYPE_38__** %12, align 8
  %339 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %338, i32 0, i32 10
  %340 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %339, i32 0, i32 1
  %341 = load i32*, i32** %340, align 8
  %342 = load %struct.TYPE_38__*, %struct.TYPE_38__** %12, align 8
  %343 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %342, i32 0, i32 10
  %344 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %343, i32 0, i32 0
  %345 = load i64, i64* %344, align 8
  %346 = call i32* @ngx_cpymem(i32* %337, i32* %341, i64 %345)
  store i32* %346, i32** %3, align 8
  br label %347

347:                                              ; preds = %336, %326
  %348 = load i32*, i32** %3, align 8
  %349 = load %struct.TYPE_38__*, %struct.TYPE_38__** %12, align 8
  %350 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %349, i32 0, i32 4
  %351 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %350, i32 0, i32 1
  %352 = load i32*, i32** %351, align 8
  %353 = load %struct.TYPE_38__*, %struct.TYPE_38__** %12, align 8
  %354 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %353, i32 0, i32 4
  %355 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %354, i32 0, i32 0
  %356 = load i64, i64* %355, align 8
  %357 = call i32* @ngx_cpymem(i32* %348, i32* %352, i64 %356)
  store i32* %357, i32** %3, align 8
  %358 = load i32*, i32** %3, align 8
  %359 = load %struct.TYPE_38__*, %struct.TYPE_38__** %12, align 8
  %360 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %359, i32 0, i32 9
  %361 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %360, i32 0, i32 1
  %362 = load i32*, i32** %361, align 8
  %363 = load %struct.TYPE_38__*, %struct.TYPE_38__** %12, align 8
  %364 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %363, i32 0, i32 9
  %365 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %364, i32 0, i32 0
  %366 = load i64, i64* %365, align 8
  %367 = call i32 @ngx_memcpy(i32* %358, i32* %362, i64 %366)
  %368 = load %struct.TYPE_38__*, %struct.TYPE_38__** %12, align 8
  %369 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %368, i32 0, i32 10
  %370 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %369, i32 0, i32 0
  %371 = load i64, i64* %370, align 8
  %372 = load %struct.TYPE_38__*, %struct.TYPE_38__** %12, align 8
  %373 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %372, i32 0, i32 4
  %374 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %373, i32 0, i32 0
  %375 = load i64, i64* %374, align 8
  %376 = add nsw i64 %371, %375
  %377 = load %struct.TYPE_38__*, %struct.TYPE_38__** %12, align 8
  %378 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %377, i32 0, i32 9
  %379 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %378, i32 0, i32 0
  %380 = load i64, i64* %379, align 8
  %381 = add nsw i64 %376, %380
  %382 = load %struct.TYPE_38__*, %struct.TYPE_38__** %12, align 8
  %383 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %382, i32 0, i32 9
  %384 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %383, i32 0, i32 0
  store i64 %381, i64* %384, align 8
  %385 = load %struct.TYPE_38__*, %struct.TYPE_38__** %12, align 8
  %386 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %385, i32 0, i32 8
  %387 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %386, i32 0, i32 1
  %388 = load i32*, i32** %387, align 8
  %389 = load %struct.TYPE_38__*, %struct.TYPE_38__** %12, align 8
  %390 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %389, i32 0, i32 9
  %391 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %390, i32 0, i32 1
  store i32* %388, i32** %391, align 8
  br label %392

392:                                              ; preds = %347, %254
  %393 = load i32, i32* %8, align 4
  %394 = load i32, i32* @NGX_IMAP_NEXT, align 4
  %395 = icmp ne i32 %393, %394
  br i1 %395, label %396, label %454

396:                                              ; preds = %392
  %397 = load %struct.TYPE_38__*, %struct.TYPE_38__** %12, align 8
  %398 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %397, i32 0, i32 7
  %399 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %398, i32 0, i32 0
  store i64 0, i64* %399, align 8
  %400 = load %struct.TYPE_38__*, %struct.TYPE_38__** %12, align 8
  %401 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %400, i32 0, i32 6
  %402 = load i64, i64* %401, align 8
  %403 = icmp ne i64 %402, 0
  br i1 %403, label %404, label %431

404:                                              ; preds = %396
  %405 = load %struct.TYPE_38__*, %struct.TYPE_38__** %12, align 8
  %406 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %405, i32 0, i32 5
  %407 = load %struct.TYPE_35__*, %struct.TYPE_35__** %406, align 8
  %408 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %407, i32 0, i32 0
  %409 = load i64, i64* %408, align 8
  %410 = load %struct.TYPE_38__*, %struct.TYPE_38__** %12, align 8
  %411 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %410, i32 0, i32 4
  %412 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %411, i32 0, i32 0
  %413 = load i64, i64* %412, align 8
  %414 = add nsw i64 %409, %413
  %415 = load %struct.TYPE_38__*, %struct.TYPE_38__** %12, align 8
  %416 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %415, i32 0, i32 3
  store i64 %414, i64* %416, align 8
  %417 = load %struct.TYPE_38__*, %struct.TYPE_38__** %12, align 8
  %418 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %417, i32 0, i32 3
  %419 = load i64, i64* %418, align 8
  %420 = load %struct.TYPE_38__*, %struct.TYPE_38__** %12, align 8
  %421 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %420, i32 0, i32 5
  %422 = load %struct.TYPE_35__*, %struct.TYPE_35__** %421, align 8
  %423 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %422, i32 0, i32 1
  store i64 %419, i64* %423, align 8
  %424 = load %struct.TYPE_38__*, %struct.TYPE_38__** %12, align 8
  %425 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %424, i32 0, i32 3
  %426 = load i64, i64* %425, align 8
  %427 = load %struct.TYPE_38__*, %struct.TYPE_38__** %12, align 8
  %428 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %427, i32 0, i32 5
  %429 = load %struct.TYPE_35__*, %struct.TYPE_35__** %428, align 8
  %430 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %429, i32 0, i32 2
  store i64 %426, i64* %430, align 8
  br label %453

431:                                              ; preds = %396
  %432 = load %struct.TYPE_38__*, %struct.TYPE_38__** %12, align 8
  %433 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %432, i32 0, i32 5
  %434 = load %struct.TYPE_35__*, %struct.TYPE_35__** %433, align 8
  %435 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %434, i32 0, i32 0
  %436 = load i64, i64* %435, align 8
  %437 = load %struct.TYPE_38__*, %struct.TYPE_38__** %12, align 8
  %438 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %437, i32 0, i32 5
  %439 = load %struct.TYPE_35__*, %struct.TYPE_35__** %438, align 8
  %440 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %439, i32 0, i32 1
  store i64 %436, i64* %440, align 8
  %441 = load %struct.TYPE_38__*, %struct.TYPE_38__** %12, align 8
  %442 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %441, i32 0, i32 5
  %443 = load %struct.TYPE_35__*, %struct.TYPE_35__** %442, align 8
  %444 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %443, i32 0, i32 0
  %445 = load i64, i64* %444, align 8
  %446 = load %struct.TYPE_38__*, %struct.TYPE_38__** %12, align 8
  %447 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %446, i32 0, i32 5
  %448 = load %struct.TYPE_35__*, %struct.TYPE_35__** %447, align 8
  %449 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %448, i32 0, i32 2
  store i64 %445, i64* %449, align 8
  %450 = load %struct.TYPE_38__*, %struct.TYPE_38__** %12, align 8
  %451 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %450, i32 0, i32 4
  %452 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %451, i32 0, i32 0
  store i64 0, i64* %452, align 8
  br label %453

453:                                              ; preds = %431, %404
  br label %454

454:                                              ; preds = %453, %392
  %455 = load %struct.TYPE_40__*, %struct.TYPE_40__** %11, align 8
  %456 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %455, i32 0, i32 1
  %457 = load i32, i32* %456, align 4
  %458 = call i32 @ngx_mail_send(i32 %457)
  br label %459

459:                                              ; preds = %454, %322, %242, %238, %65, %45, %28
  ret void
}

declare dso_local i32 @ngx_log_debug0(i32, i32, i32, i8*) #1

declare dso_local i32 @ngx_log_error(i32, i32, i32, i8*) #1

declare dso_local i32 @ngx_mail_close_connection(%struct.TYPE_40__*) #1

declare dso_local i32 @ngx_mail_read_command(%struct.TYPE_38__*, %struct.TYPE_40__*) #1

declare dso_local i32 @ngx_str_set(%struct.TYPE_41__*, i32) #1

declare dso_local i32 @ngx_log_debug1(i32, i32, i32, i8*, i32) #1

declare dso_local i32 @ngx_mail_imap_login(%struct.TYPE_38__*, %struct.TYPE_40__*) #1

declare dso_local i32 @ngx_mail_imap_authenticate(%struct.TYPE_38__*, %struct.TYPE_40__*) #1

declare dso_local i32 @ngx_mail_imap_capability(%struct.TYPE_38__*, %struct.TYPE_40__*) #1

declare dso_local i32 @ngx_mail_imap_starttls(%struct.TYPE_38__*, %struct.TYPE_40__*) #1

declare dso_local i32 @ngx_mail_auth_login_username(%struct.TYPE_38__*, %struct.TYPE_40__*, i32) #1

declare dso_local i32 @ngx_mail_auth_login_password(%struct.TYPE_38__*, %struct.TYPE_40__*) #1

declare dso_local i32 @ngx_mail_auth_plain(%struct.TYPE_38__*, %struct.TYPE_40__*, i32) #1

declare dso_local i32 @ngx_mail_auth_cram_md5(%struct.TYPE_38__*, %struct.TYPE_40__*) #1

declare dso_local i32 @ngx_mail_auth_external(%struct.TYPE_38__*, %struct.TYPE_40__*, i32) #1

declare dso_local i32 @ngx_mail_auth(%struct.TYPE_38__*, %struct.TYPE_40__*) #1

declare dso_local i32 @ngx_mail_session_internal_server_error(%struct.TYPE_38__*) #1

declare dso_local i32* @ngx_pnalloc(i32, i64) #1

declare dso_local i32* @ngx_cpymem(i32*, i32*, i64) #1

declare dso_local i32 @ngx_memcpy(i32*, i32*, i64) #1

declare dso_local i32 @ngx_mail_send(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
