; ModuleID = '/home/carl/AnghaBench/tengine/src/mail/extr_ngx_mail_smtp_handler.c_ngx_mail_smtp_auth_state.c'
source_filename = "/home/carl/AnghaBench/tengine/src/mail/extr_ngx_mail_smtp_handler.c_ngx_mail_smtp_auth_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_39__ = type { i64, %struct.TYPE_40__* }
%struct.TYPE_40__ = type { i32, i32, i32, %struct.TYPE_38__* }
%struct.TYPE_38__ = type { i32, i32, i32, i64, %struct.TYPE_37__*, i32, %struct.TYPE_36__, %struct.TYPE_41__, i32 }
%struct.TYPE_37__ = type { i64, i64, i64 }
%struct.TYPE_36__ = type { i32 }
%struct.TYPE_41__ = type { i64 }

@NGX_LOG_DEBUG_MAIL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"smtp auth state\00", align 1
@NGX_LOG_INFO = common dso_local global i32 0, align 4
@NGX_ETIMEDOUT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [17 x i8] c"client timed out\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"smtp send handler busy\00", align 1
@NGX_AGAIN = common dso_local global i32 0, align 4
@smtp_ok = common dso_local global i32 0, align 4
@smtp_bye = common dso_local global i32 0, align 4
@smtp_starttls = common dso_local global i32 0, align 4
@smtp_password = common dso_local global i32 0, align 4
@smtp_invalid_command = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ngx_mail_smtp_auth_state(%struct.TYPE_39__* %0) #0 {
  %2 = alloca %struct.TYPE_39__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_40__*, align 8
  %5 = alloca %struct.TYPE_38__*, align 8
  store %struct.TYPE_39__* %0, %struct.TYPE_39__** %2, align 8
  %6 = load %struct.TYPE_39__*, %struct.TYPE_39__** %2, align 8
  %7 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %6, i32 0, i32 1
  %8 = load %struct.TYPE_40__*, %struct.TYPE_40__** %7, align 8
  store %struct.TYPE_40__* %8, %struct.TYPE_40__** %4, align 8
  %9 = load %struct.TYPE_40__*, %struct.TYPE_40__** %4, align 8
  %10 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %9, i32 0, i32 3
  %11 = load %struct.TYPE_38__*, %struct.TYPE_38__** %10, align 8
  store %struct.TYPE_38__* %11, %struct.TYPE_38__** %5, align 8
  %12 = load i32, i32* @NGX_LOG_DEBUG_MAIL, align 4
  %13 = load %struct.TYPE_40__*, %struct.TYPE_40__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 8
  %16 = call i32 @ngx_log_debug0(i32 %12, i32 %15, i32 0, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  %17 = load %struct.TYPE_39__*, %struct.TYPE_39__** %2, align 8
  %18 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %32

21:                                               ; preds = %1
  %22 = load i32, i32* @NGX_LOG_INFO, align 4
  %23 = load %struct.TYPE_40__*, %struct.TYPE_40__** %4, align 8
  %24 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 8
  %26 = load i32, i32* @NGX_ETIMEDOUT, align 4
  %27 = call i32 @ngx_log_error(i32 %22, i32 %25, i32 %26, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  %28 = load %struct.TYPE_40__*, %struct.TYPE_40__** %4, align 8
  %29 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %28, i32 0, i32 0
  store i32 1, i32* %29, align 8
  %30 = load %struct.TYPE_40__*, %struct.TYPE_40__** %4, align 8
  %31 = call i32 @ngx_mail_close_connection(%struct.TYPE_40__* %30)
  br label %224

32:                                               ; preds = %1
  %33 = load %struct.TYPE_38__*, %struct.TYPE_38__** %5, align 8
  %34 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %33, i32 0, i32 7
  %35 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %46

38:                                               ; preds = %32
  %39 = load i32, i32* @NGX_LOG_DEBUG_MAIL, align 4
  %40 = load %struct.TYPE_40__*, %struct.TYPE_40__** %4, align 8
  %41 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 8
  %43 = call i32 @ngx_log_debug0(i32 %39, i32 %42, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0))
  %44 = load %struct.TYPE_38__*, %struct.TYPE_38__** %5, align 8
  %45 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %44, i32 0, i32 0
  store i32 1, i32* %45, align 8
  br label %224

46:                                               ; preds = %32
  %47 = load %struct.TYPE_38__*, %struct.TYPE_38__** %5, align 8
  %48 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %47, i32 0, i32 0
  store i32 0, i32* %48, align 8
  %49 = load %struct.TYPE_38__*, %struct.TYPE_38__** %5, align 8
  %50 = load %struct.TYPE_40__*, %struct.TYPE_40__** %4, align 8
  %51 = call i32 @ngx_mail_read_command(%struct.TYPE_38__* %49, %struct.TYPE_40__* %50)
  store i32 %51, i32* %3, align 4
  %52 = load i32, i32* %3, align 4
  %53 = load i32, i32* @NGX_AGAIN, align 4
  %54 = icmp eq i32 %52, %53
  br i1 %54, label %58, label %55

55:                                               ; preds = %46
  %56 = load i32, i32* %3, align 4
  %57 = icmp eq i32 %56, 145
  br i1 %57, label %58, label %59

58:                                               ; preds = %55, %46
  br label %224

59:                                               ; preds = %55
  %60 = load %struct.TYPE_38__*, %struct.TYPE_38__** %5, align 8
  %61 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %60, i32 0, i32 7
  %62 = load i32, i32* @smtp_ok, align 4
  %63 = call i32 @ngx_str_set(%struct.TYPE_41__* %61, i32 %62)
  %64 = load i32, i32* %3, align 4
  %65 = icmp eq i32 %64, 143
  br i1 %65, label %66, label %139

66:                                               ; preds = %59
  %67 = load %struct.TYPE_38__*, %struct.TYPE_38__** %5, align 8
  %68 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  switch i32 %69, label %138 [
    i32 128, label %70
    i32 130, label %112
    i32 131, label %122
    i32 129, label %126
    i32 133, label %130
    i32 132, label %134
  ]

70:                                               ; preds = %66
  %71 = load %struct.TYPE_38__*, %struct.TYPE_38__** %5, align 8
  %72 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %71, i32 0, i32 8
  %73 = load i32, i32* %72, align 8
  switch i32 %73, label %110 [
    i32 140, label %74
    i32 141, label %74
    i32 142, label %78
    i32 137, label %82
    i32 139, label %89
    i32 136, label %93
    i32 135, label %97
    i32 138, label %101
    i32 134, label %102
  ]

74:                                               ; preds = %70, %70
  %75 = load %struct.TYPE_38__*, %struct.TYPE_38__** %5, align 8
  %76 = load %struct.TYPE_40__*, %struct.TYPE_40__** %4, align 8
  %77 = call i32 @ngx_mail_smtp_helo(%struct.TYPE_38__* %75, %struct.TYPE_40__* %76)
  store i32 %77, i32* %3, align 4
  br label %111

78:                                               ; preds = %70
  %79 = load %struct.TYPE_38__*, %struct.TYPE_38__** %5, align 8
  %80 = load %struct.TYPE_40__*, %struct.TYPE_40__** %4, align 8
  %81 = call i32 @ngx_mail_smtp_auth(%struct.TYPE_38__* %79, %struct.TYPE_40__* %80)
  store i32 %81, i32* %3, align 4
  br label %111

82:                                               ; preds = %70
  %83 = load %struct.TYPE_38__*, %struct.TYPE_38__** %5, align 8
  %84 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %83, i32 0, i32 2
  store i32 1, i32* %84, align 8
  %85 = load %struct.TYPE_38__*, %struct.TYPE_38__** %5, align 8
  %86 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %85, i32 0, i32 7
  %87 = load i32, i32* @smtp_bye, align 4
  %88 = call i32 @ngx_str_set(%struct.TYPE_41__* %86, i32 %87)
  br label %111

89:                                               ; preds = %70
  %90 = load %struct.TYPE_38__*, %struct.TYPE_38__** %5, align 8
  %91 = load %struct.TYPE_40__*, %struct.TYPE_40__** %4, align 8
  %92 = call i32 @ngx_mail_smtp_mail(%struct.TYPE_38__* %90, %struct.TYPE_40__* %91)
  store i32 %92, i32* %3, align 4
  br label %111

93:                                               ; preds = %70
  %94 = load %struct.TYPE_38__*, %struct.TYPE_38__** %5, align 8
  %95 = load %struct.TYPE_40__*, %struct.TYPE_40__** %4, align 8
  %96 = call i32 @ngx_mail_smtp_rcpt(%struct.TYPE_38__* %94, %struct.TYPE_40__* %95)
  store i32 %96, i32* %3, align 4
  br label %111

97:                                               ; preds = %70
  %98 = load %struct.TYPE_38__*, %struct.TYPE_38__** %5, align 8
  %99 = load %struct.TYPE_40__*, %struct.TYPE_40__** %4, align 8
  %100 = call i32 @ngx_mail_smtp_rset(%struct.TYPE_38__* %98, %struct.TYPE_40__* %99)
  store i32 %100, i32* %3, align 4
  br label %111

101:                                              ; preds = %70
  br label %111

102:                                              ; preds = %70
  %103 = load %struct.TYPE_38__*, %struct.TYPE_38__** %5, align 8
  %104 = load %struct.TYPE_40__*, %struct.TYPE_40__** %4, align 8
  %105 = call i32 @ngx_mail_smtp_starttls(%struct.TYPE_38__* %103, %struct.TYPE_40__* %104)
  store i32 %105, i32* %3, align 4
  %106 = load %struct.TYPE_38__*, %struct.TYPE_38__** %5, align 8
  %107 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %106, i32 0, i32 7
  %108 = load i32, i32* @smtp_starttls, align 4
  %109 = call i32 @ngx_str_set(%struct.TYPE_41__* %107, i32 %108)
  br label %111

110:                                              ; preds = %70
  store i32 144, i32* %3, align 4
  br label %111

111:                                              ; preds = %110, %102, %101, %97, %93, %89, %82, %78, %74
  br label %138

112:                                              ; preds = %66
  %113 = load %struct.TYPE_38__*, %struct.TYPE_38__** %5, align 8
  %114 = load %struct.TYPE_40__*, %struct.TYPE_40__** %4, align 8
  %115 = call i32 @ngx_mail_auth_login_username(%struct.TYPE_38__* %113, %struct.TYPE_40__* %114, i32 0)
  store i32 %115, i32* %3, align 4
  %116 = load %struct.TYPE_38__*, %struct.TYPE_38__** %5, align 8
  %117 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %116, i32 0, i32 7
  %118 = load i32, i32* @smtp_password, align 4
  %119 = call i32 @ngx_str_set(%struct.TYPE_41__* %117, i32 %118)
  %120 = load %struct.TYPE_38__*, %struct.TYPE_38__** %5, align 8
  %121 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %120, i32 0, i32 1
  store i32 131, i32* %121, align 4
  br label %138

122:                                              ; preds = %66
  %123 = load %struct.TYPE_38__*, %struct.TYPE_38__** %5, align 8
  %124 = load %struct.TYPE_40__*, %struct.TYPE_40__** %4, align 8
  %125 = call i32 @ngx_mail_auth_login_password(%struct.TYPE_38__* %123, %struct.TYPE_40__* %124)
  store i32 %125, i32* %3, align 4
  br label %138

126:                                              ; preds = %66
  %127 = load %struct.TYPE_38__*, %struct.TYPE_38__** %5, align 8
  %128 = load %struct.TYPE_40__*, %struct.TYPE_40__** %4, align 8
  %129 = call i32 @ngx_mail_auth_plain(%struct.TYPE_38__* %127, %struct.TYPE_40__* %128, i32 0)
  store i32 %129, i32* %3, align 4
  br label %138

130:                                              ; preds = %66
  %131 = load %struct.TYPE_38__*, %struct.TYPE_38__** %5, align 8
  %132 = load %struct.TYPE_40__*, %struct.TYPE_40__** %4, align 8
  %133 = call i32 @ngx_mail_auth_cram_md5(%struct.TYPE_38__* %131, %struct.TYPE_40__* %132)
  store i32 %133, i32* %3, align 4
  br label %138

134:                                              ; preds = %66
  %135 = load %struct.TYPE_38__*, %struct.TYPE_38__** %5, align 8
  %136 = load %struct.TYPE_40__*, %struct.TYPE_40__** %4, align 8
  %137 = call i32 @ngx_mail_auth_external(%struct.TYPE_38__* %135, %struct.TYPE_40__* %136, i32 0)
  store i32 %137, i32* %3, align 4
  br label %138

138:                                              ; preds = %66, %134, %130, %126, %122, %112, %111
  br label %139

139:                                              ; preds = %138, %59
  %140 = load %struct.TYPE_38__*, %struct.TYPE_38__** %5, align 8
  %141 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %140, i32 0, i32 4
  %142 = load %struct.TYPE_37__*, %struct.TYPE_37__** %141, align 8
  %143 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %142, i32 0, i32 0
  %144 = load i64, i64* %143, align 8
  %145 = load %struct.TYPE_38__*, %struct.TYPE_38__** %5, align 8
  %146 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %145, i32 0, i32 4
  %147 = load %struct.TYPE_37__*, %struct.TYPE_37__** %146, align 8
  %148 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %147, i32 0, i32 1
  %149 = load i64, i64* %148, align 8
  %150 = icmp slt i64 %144, %149
  br i1 %150, label %151, label %154

151:                                              ; preds = %139
  %152 = load %struct.TYPE_38__*, %struct.TYPE_38__** %5, align 8
  %153 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %152, i32 0, i32 0
  store i32 1, i32* %153, align 8
  br label %154

154:                                              ; preds = %151, %139
  %155 = load i32, i32* %3, align 4
  switch i32 %155, label %224 [
    i32 146, label %156
    i32 145, label %160
    i32 144, label %163
    i32 143, label %172
  ]

156:                                              ; preds = %154
  %157 = load %struct.TYPE_38__*, %struct.TYPE_38__** %5, align 8
  %158 = load %struct.TYPE_40__*, %struct.TYPE_40__** %4, align 8
  %159 = call i32 @ngx_mail_auth(%struct.TYPE_38__* %157, %struct.TYPE_40__* %158)
  br label %224

160:                                              ; preds = %154
  %161 = load %struct.TYPE_38__*, %struct.TYPE_38__** %5, align 8
  %162 = call i32 @ngx_mail_session_internal_server_error(%struct.TYPE_38__* %161)
  br label %224

163:                                              ; preds = %154
  %164 = load %struct.TYPE_38__*, %struct.TYPE_38__** %5, align 8
  %165 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %164, i32 0, i32 1
  store i32 128, i32* %165, align 4
  %166 = load %struct.TYPE_38__*, %struct.TYPE_38__** %5, align 8
  %167 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %166, i32 0, i32 5
  store i32 0, i32* %167, align 8
  %168 = load %struct.TYPE_38__*, %struct.TYPE_38__** %5, align 8
  %169 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %168, i32 0, i32 7
  %170 = load i32, i32* @smtp_invalid_command, align 4
  %171 = call i32 @ngx_str_set(%struct.TYPE_41__* %169, i32 %170)
  br label %172

172:                                              ; preds = %154, %163
  %173 = load %struct.TYPE_38__*, %struct.TYPE_38__** %5, align 8
  %174 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %173, i32 0, i32 6
  %175 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %174, i32 0, i32 0
  store i32 0, i32* %175, align 4
  %176 = load %struct.TYPE_38__*, %struct.TYPE_38__** %5, align 8
  %177 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %176, i32 0, i32 4
  %178 = load %struct.TYPE_37__*, %struct.TYPE_37__** %177, align 8
  %179 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %178, i32 0, i32 0
  %180 = load i64, i64* %179, align 8
  %181 = load %struct.TYPE_38__*, %struct.TYPE_38__** %5, align 8
  %182 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %181, i32 0, i32 4
  %183 = load %struct.TYPE_37__*, %struct.TYPE_37__** %182, align 8
  %184 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %183, i32 0, i32 1
  %185 = load i64, i64* %184, align 8
  %186 = icmp eq i64 %180, %185
  br i1 %186, label %187, label %206

187:                                              ; preds = %172
  %188 = load %struct.TYPE_38__*, %struct.TYPE_38__** %5, align 8
  %189 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %188, i32 0, i32 4
  %190 = load %struct.TYPE_37__*, %struct.TYPE_37__** %189, align 8
  %191 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %190, i32 0, i32 2
  %192 = load i64, i64* %191, align 8
  %193 = load %struct.TYPE_38__*, %struct.TYPE_38__** %5, align 8
  %194 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %193, i32 0, i32 4
  %195 = load %struct.TYPE_37__*, %struct.TYPE_37__** %194, align 8
  %196 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %195, i32 0, i32 0
  store i64 %192, i64* %196, align 8
  %197 = load %struct.TYPE_38__*, %struct.TYPE_38__** %5, align 8
  %198 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %197, i32 0, i32 4
  %199 = load %struct.TYPE_37__*, %struct.TYPE_37__** %198, align 8
  %200 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %199, i32 0, i32 2
  %201 = load i64, i64* %200, align 8
  %202 = load %struct.TYPE_38__*, %struct.TYPE_38__** %5, align 8
  %203 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %202, i32 0, i32 4
  %204 = load %struct.TYPE_37__*, %struct.TYPE_37__** %203, align 8
  %205 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %204, i32 0, i32 1
  store i64 %201, i64* %205, align 8
  br label %206

206:                                              ; preds = %187, %172
  %207 = load %struct.TYPE_38__*, %struct.TYPE_38__** %5, align 8
  %208 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %207, i32 0, i32 5
  %209 = load i32, i32* %208, align 8
  %210 = icmp ne i32 %209, 0
  br i1 %210, label %211, label %219

211:                                              ; preds = %206
  %212 = load %struct.TYPE_38__*, %struct.TYPE_38__** %5, align 8
  %213 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %212, i32 0, i32 4
  %214 = load %struct.TYPE_37__*, %struct.TYPE_37__** %213, align 8
  %215 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %214, i32 0, i32 0
  %216 = load i64, i64* %215, align 8
  %217 = load %struct.TYPE_38__*, %struct.TYPE_38__** %5, align 8
  %218 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %217, i32 0, i32 3
  store i64 %216, i64* %218, align 8
  br label %219

219:                                              ; preds = %211, %206
  %220 = load %struct.TYPE_40__*, %struct.TYPE_40__** %4, align 8
  %221 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %220, i32 0, i32 1
  %222 = load i32, i32* %221, align 4
  %223 = call i32 @ngx_mail_send(i32 %222)
  br label %224

224:                                              ; preds = %21, %38, %58, %156, %160, %219, %154
  ret void
}

declare dso_local i32 @ngx_log_debug0(i32, i32, i32, i8*) #1

declare dso_local i32 @ngx_log_error(i32, i32, i32, i8*) #1

declare dso_local i32 @ngx_mail_close_connection(%struct.TYPE_40__*) #1

declare dso_local i32 @ngx_mail_read_command(%struct.TYPE_38__*, %struct.TYPE_40__*) #1

declare dso_local i32 @ngx_str_set(%struct.TYPE_41__*, i32) #1

declare dso_local i32 @ngx_mail_smtp_helo(%struct.TYPE_38__*, %struct.TYPE_40__*) #1

declare dso_local i32 @ngx_mail_smtp_auth(%struct.TYPE_38__*, %struct.TYPE_40__*) #1

declare dso_local i32 @ngx_mail_smtp_mail(%struct.TYPE_38__*, %struct.TYPE_40__*) #1

declare dso_local i32 @ngx_mail_smtp_rcpt(%struct.TYPE_38__*, %struct.TYPE_40__*) #1

declare dso_local i32 @ngx_mail_smtp_rset(%struct.TYPE_38__*, %struct.TYPE_40__*) #1

declare dso_local i32 @ngx_mail_smtp_starttls(%struct.TYPE_38__*, %struct.TYPE_40__*) #1

declare dso_local i32 @ngx_mail_auth_login_username(%struct.TYPE_38__*, %struct.TYPE_40__*, i32) #1

declare dso_local i32 @ngx_mail_auth_login_password(%struct.TYPE_38__*, %struct.TYPE_40__*) #1

declare dso_local i32 @ngx_mail_auth_plain(%struct.TYPE_38__*, %struct.TYPE_40__*, i32) #1

declare dso_local i32 @ngx_mail_auth_cram_md5(%struct.TYPE_38__*, %struct.TYPE_40__*) #1

declare dso_local i32 @ngx_mail_auth_external(%struct.TYPE_38__*, %struct.TYPE_40__*, i32) #1

declare dso_local i32 @ngx_mail_auth(%struct.TYPE_38__*, %struct.TYPE_40__*) #1

declare dso_local i32 @ngx_mail_session_internal_server_error(%struct.TYPE_38__*) #1

declare dso_local i32 @ngx_mail_send(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
