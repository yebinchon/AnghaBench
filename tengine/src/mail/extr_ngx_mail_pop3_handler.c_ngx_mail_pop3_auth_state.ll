; ModuleID = '/home/carl/AnghaBench/tengine/src/mail/extr_ngx_mail_pop3_handler.c_ngx_mail_pop3_auth_state.c'
source_filename = "/home/carl/AnghaBench/tengine/src/mail/extr_ngx_mail_pop3_handler.c_ngx_mail_pop3_auth_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_39__ = type { i64, %struct.TYPE_40__* }
%struct.TYPE_40__ = type { i32, i32, i32, %struct.TYPE_38__* }
%struct.TYPE_38__ = type { i32, i32, i32, %struct.TYPE_37__*, i32, i32, %struct.TYPE_36__, %struct.TYPE_41__, i32 }
%struct.TYPE_37__ = type { i32, i32, i32 }
%struct.TYPE_36__ = type { i32 }
%struct.TYPE_41__ = type { i64 }

@NGX_LOG_DEBUG_MAIL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"pop3 auth state\00", align 1
@NGX_LOG_INFO = common dso_local global i32 0, align 4
@NGX_ETIMEDOUT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [17 x i8] c"client timed out\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"pop3 send handler busy\00", align 1
@NGX_AGAIN = common dso_local global i32 0, align 4
@pop3_ok = common dso_local global i32 0, align 4
@pop3_password = common dso_local global i32 0, align 4
@pop3_invalid_command = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ngx_mail_pop3_auth_state(%struct.TYPE_39__* %0) #0 {
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
  br label %203

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
  br label %203

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
  %57 = icmp eq i32 %56, 146
  br i1 %57, label %58, label %59

58:                                               ; preds = %55, %46
  br label %203

59:                                               ; preds = %55
  %60 = load %struct.TYPE_38__*, %struct.TYPE_38__** %5, align 8
  %61 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %60, i32 0, i32 7
  %62 = load i32, i32* @pop3_ok, align 4
  %63 = call i32 @ngx_str_set(%struct.TYPE_41__* %61, i32 %62)
  %64 = load i32, i32* %3, align 4
  %65 = icmp eq i32 %64, 144
  br i1 %65, label %66, label %146

66:                                               ; preds = %59
  %67 = load %struct.TYPE_38__*, %struct.TYPE_38__** %5, align 8
  %68 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  switch i32 %69, label %145 [
    i32 129, label %70
    i32 128, label %100
    i32 130, label %118
    i32 132, label %119
    i32 133, label %129
    i32 131, label %133
    i32 135, label %137
    i32 134, label %141
  ]

70:                                               ; preds = %66
  %71 = load %struct.TYPE_38__*, %struct.TYPE_38__** %5, align 8
  %72 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %71, i32 0, i32 8
  %73 = load i32, i32* %72, align 8
  switch i32 %73, label %98 [
    i32 136, label %74
    i32 141, label %78
    i32 143, label %82
    i32 142, label %86
    i32 138, label %90
    i32 140, label %93
    i32 137, label %94
  ]

74:                                               ; preds = %70
  %75 = load %struct.TYPE_38__*, %struct.TYPE_38__** %5, align 8
  %76 = load %struct.TYPE_40__*, %struct.TYPE_40__** %4, align 8
  %77 = call i32 @ngx_mail_pop3_user(%struct.TYPE_38__* %75, %struct.TYPE_40__* %76)
  store i32 %77, i32* %3, align 4
  br label %99

78:                                               ; preds = %70
  %79 = load %struct.TYPE_38__*, %struct.TYPE_38__** %5, align 8
  %80 = load %struct.TYPE_40__*, %struct.TYPE_40__** %4, align 8
  %81 = call i32 @ngx_mail_pop3_capa(%struct.TYPE_38__* %79, %struct.TYPE_40__* %80, i32 1)
  store i32 %81, i32* %3, align 4
  br label %99

82:                                               ; preds = %70
  %83 = load %struct.TYPE_38__*, %struct.TYPE_38__** %5, align 8
  %84 = load %struct.TYPE_40__*, %struct.TYPE_40__** %4, align 8
  %85 = call i32 @ngx_mail_pop3_apop(%struct.TYPE_38__* %83, %struct.TYPE_40__* %84)
  store i32 %85, i32* %3, align 4
  br label %99

86:                                               ; preds = %70
  %87 = load %struct.TYPE_38__*, %struct.TYPE_38__** %5, align 8
  %88 = load %struct.TYPE_40__*, %struct.TYPE_40__** %4, align 8
  %89 = call i32 @ngx_mail_pop3_auth(%struct.TYPE_38__* %87, %struct.TYPE_40__* %88)
  store i32 %89, i32* %3, align 4
  br label %99

90:                                               ; preds = %70
  %91 = load %struct.TYPE_38__*, %struct.TYPE_38__** %5, align 8
  %92 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %91, i32 0, i32 2
  store i32 1, i32* %92, align 8
  br label %99

93:                                               ; preds = %70
  br label %99

94:                                               ; preds = %70
  %95 = load %struct.TYPE_38__*, %struct.TYPE_38__** %5, align 8
  %96 = load %struct.TYPE_40__*, %struct.TYPE_40__** %4, align 8
  %97 = call i32 @ngx_mail_pop3_stls(%struct.TYPE_38__* %95, %struct.TYPE_40__* %96)
  store i32 %97, i32* %3, align 4
  br label %99

98:                                               ; preds = %70
  store i32 145, i32* %3, align 4
  br label %99

99:                                               ; preds = %98, %94, %93, %90, %86, %82, %78, %74
  br label %145

100:                                              ; preds = %66
  %101 = load %struct.TYPE_38__*, %struct.TYPE_38__** %5, align 8
  %102 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %101, i32 0, i32 8
  %103 = load i32, i32* %102, align 8
  switch i32 %103, label %116 [
    i32 139, label %104
    i32 141, label %108
    i32 138, label %112
    i32 140, label %115
  ]

104:                                              ; preds = %100
  %105 = load %struct.TYPE_38__*, %struct.TYPE_38__** %5, align 8
  %106 = load %struct.TYPE_40__*, %struct.TYPE_40__** %4, align 8
  %107 = call i32 @ngx_mail_pop3_pass(%struct.TYPE_38__* %105, %struct.TYPE_40__* %106)
  store i32 %107, i32* %3, align 4
  br label %117

108:                                              ; preds = %100
  %109 = load %struct.TYPE_38__*, %struct.TYPE_38__** %5, align 8
  %110 = load %struct.TYPE_40__*, %struct.TYPE_40__** %4, align 8
  %111 = call i32 @ngx_mail_pop3_capa(%struct.TYPE_38__* %109, %struct.TYPE_40__* %110, i32 0)
  store i32 %111, i32* %3, align 4
  br label %117

112:                                              ; preds = %100
  %113 = load %struct.TYPE_38__*, %struct.TYPE_38__** %5, align 8
  %114 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %113, i32 0, i32 2
  store i32 1, i32* %114, align 8
  br label %117

115:                                              ; preds = %100
  br label %117

116:                                              ; preds = %100
  store i32 145, i32* %3, align 4
  br label %117

117:                                              ; preds = %116, %115, %112, %108, %104
  br label %145

118:                                              ; preds = %66
  br label %145

119:                                              ; preds = %66
  %120 = load %struct.TYPE_38__*, %struct.TYPE_38__** %5, align 8
  %121 = load %struct.TYPE_40__*, %struct.TYPE_40__** %4, align 8
  %122 = call i32 @ngx_mail_auth_login_username(%struct.TYPE_38__* %120, %struct.TYPE_40__* %121, i32 0)
  store i32 %122, i32* %3, align 4
  %123 = load %struct.TYPE_38__*, %struct.TYPE_38__** %5, align 8
  %124 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %123, i32 0, i32 7
  %125 = load i32, i32* @pop3_password, align 4
  %126 = call i32 @ngx_str_set(%struct.TYPE_41__* %124, i32 %125)
  %127 = load %struct.TYPE_38__*, %struct.TYPE_38__** %5, align 8
  %128 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %127, i32 0, i32 1
  store i32 133, i32* %128, align 4
  br label %145

129:                                              ; preds = %66
  %130 = load %struct.TYPE_38__*, %struct.TYPE_38__** %5, align 8
  %131 = load %struct.TYPE_40__*, %struct.TYPE_40__** %4, align 8
  %132 = call i32 @ngx_mail_auth_login_password(%struct.TYPE_38__* %130, %struct.TYPE_40__* %131)
  store i32 %132, i32* %3, align 4
  br label %145

133:                                              ; preds = %66
  %134 = load %struct.TYPE_38__*, %struct.TYPE_38__** %5, align 8
  %135 = load %struct.TYPE_40__*, %struct.TYPE_40__** %4, align 8
  %136 = call i32 @ngx_mail_auth_plain(%struct.TYPE_38__* %134, %struct.TYPE_40__* %135, i32 0)
  store i32 %136, i32* %3, align 4
  br label %145

137:                                              ; preds = %66
  %138 = load %struct.TYPE_38__*, %struct.TYPE_38__** %5, align 8
  %139 = load %struct.TYPE_40__*, %struct.TYPE_40__** %4, align 8
  %140 = call i32 @ngx_mail_auth_cram_md5(%struct.TYPE_38__* %138, %struct.TYPE_40__* %139)
  store i32 %140, i32* %3, align 4
  br label %145

141:                                              ; preds = %66
  %142 = load %struct.TYPE_38__*, %struct.TYPE_38__** %5, align 8
  %143 = load %struct.TYPE_40__*, %struct.TYPE_40__** %4, align 8
  %144 = call i32 @ngx_mail_auth_external(%struct.TYPE_38__* %142, %struct.TYPE_40__* %143, i32 0)
  store i32 %144, i32* %3, align 4
  br label %145

145:                                              ; preds = %66, %141, %137, %133, %129, %119, %118, %117, %99
  br label %146

146:                                              ; preds = %145, %59
  %147 = load i32, i32* %3, align 4
  switch i32 %147, label %203 [
    i32 147, label %148
    i32 146, label %152
    i32 145, label %155
    i32 144, label %164
  ]

148:                                              ; preds = %146
  %149 = load %struct.TYPE_38__*, %struct.TYPE_38__** %5, align 8
  %150 = load %struct.TYPE_40__*, %struct.TYPE_40__** %4, align 8
  %151 = call i32 @ngx_mail_auth(%struct.TYPE_38__* %149, %struct.TYPE_40__* %150)
  br label %203

152:                                              ; preds = %146
  %153 = load %struct.TYPE_38__*, %struct.TYPE_38__** %5, align 8
  %154 = call i32 @ngx_mail_session_internal_server_error(%struct.TYPE_38__* %153)
  br label %203

155:                                              ; preds = %146
  %156 = load %struct.TYPE_38__*, %struct.TYPE_38__** %5, align 8
  %157 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %156, i32 0, i32 1
  store i32 129, i32* %157, align 4
  %158 = load %struct.TYPE_38__*, %struct.TYPE_38__** %5, align 8
  %159 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %158, i32 0, i32 5
  store i32 0, i32* %159, align 4
  %160 = load %struct.TYPE_38__*, %struct.TYPE_38__** %5, align 8
  %161 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %160, i32 0, i32 7
  %162 = load i32, i32* @pop3_invalid_command, align 4
  %163 = call i32 @ngx_str_set(%struct.TYPE_41__* %161, i32 %162)
  br label %164

164:                                              ; preds = %146, %155
  %165 = load %struct.TYPE_38__*, %struct.TYPE_38__** %5, align 8
  %166 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %165, i32 0, i32 6
  %167 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %166, i32 0, i32 0
  store i32 0, i32* %167, align 8
  %168 = load %struct.TYPE_38__*, %struct.TYPE_38__** %5, align 8
  %169 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %168, i32 0, i32 3
  %170 = load %struct.TYPE_37__*, %struct.TYPE_37__** %169, align 8
  %171 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %170, i32 0, i32 0
  %172 = load i32, i32* %171, align 4
  %173 = load %struct.TYPE_38__*, %struct.TYPE_38__** %5, align 8
  %174 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %173, i32 0, i32 3
  %175 = load %struct.TYPE_37__*, %struct.TYPE_37__** %174, align 8
  %176 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %175, i32 0, i32 2
  store i32 %172, i32* %176, align 4
  %177 = load %struct.TYPE_38__*, %struct.TYPE_38__** %5, align 8
  %178 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %177, i32 0, i32 3
  %179 = load %struct.TYPE_37__*, %struct.TYPE_37__** %178, align 8
  %180 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %179, i32 0, i32 0
  %181 = load i32, i32* %180, align 4
  %182 = load %struct.TYPE_38__*, %struct.TYPE_38__** %5, align 8
  %183 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %182, i32 0, i32 3
  %184 = load %struct.TYPE_37__*, %struct.TYPE_37__** %183, align 8
  %185 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %184, i32 0, i32 1
  store i32 %181, i32* %185, align 4
  %186 = load %struct.TYPE_38__*, %struct.TYPE_38__** %5, align 8
  %187 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %186, i32 0, i32 5
  %188 = load i32, i32* %187, align 4
  %189 = icmp ne i32 %188, 0
  br i1 %189, label %190, label %198

190:                                              ; preds = %164
  %191 = load %struct.TYPE_38__*, %struct.TYPE_38__** %5, align 8
  %192 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %191, i32 0, i32 3
  %193 = load %struct.TYPE_37__*, %struct.TYPE_37__** %192, align 8
  %194 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %193, i32 0, i32 0
  %195 = load i32, i32* %194, align 4
  %196 = load %struct.TYPE_38__*, %struct.TYPE_38__** %5, align 8
  %197 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %196, i32 0, i32 4
  store i32 %195, i32* %197, align 8
  br label %198

198:                                              ; preds = %190, %164
  %199 = load %struct.TYPE_40__*, %struct.TYPE_40__** %4, align 8
  %200 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %199, i32 0, i32 1
  %201 = load i32, i32* %200, align 4
  %202 = call i32 @ngx_mail_send(i32 %201)
  br label %203

203:                                              ; preds = %21, %38, %58, %148, %152, %198, %146
  ret void
}

declare dso_local i32 @ngx_log_debug0(i32, i32, i32, i8*) #1

declare dso_local i32 @ngx_log_error(i32, i32, i32, i8*) #1

declare dso_local i32 @ngx_mail_close_connection(%struct.TYPE_40__*) #1

declare dso_local i32 @ngx_mail_read_command(%struct.TYPE_38__*, %struct.TYPE_40__*) #1

declare dso_local i32 @ngx_str_set(%struct.TYPE_41__*, i32) #1

declare dso_local i32 @ngx_mail_pop3_user(%struct.TYPE_38__*, %struct.TYPE_40__*) #1

declare dso_local i32 @ngx_mail_pop3_capa(%struct.TYPE_38__*, %struct.TYPE_40__*, i32) #1

declare dso_local i32 @ngx_mail_pop3_apop(%struct.TYPE_38__*, %struct.TYPE_40__*) #1

declare dso_local i32 @ngx_mail_pop3_auth(%struct.TYPE_38__*, %struct.TYPE_40__*) #1

declare dso_local i32 @ngx_mail_pop3_stls(%struct.TYPE_38__*, %struct.TYPE_40__*) #1

declare dso_local i32 @ngx_mail_pop3_pass(%struct.TYPE_38__*, %struct.TYPE_40__*) #1

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
