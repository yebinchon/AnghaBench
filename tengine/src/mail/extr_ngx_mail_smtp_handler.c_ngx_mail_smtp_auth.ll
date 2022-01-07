; ModuleID = '/home/carl/AnghaBench/tengine/src/mail/extr_ngx_mail_smtp_handler.c_ngx_mail_smtp_auth.c'
source_filename = "/home/carl/AnghaBench/tengine/src/mail/extr_ngx_mail_smtp_handler.c_ngx_mail_smtp_auth.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i32, i32, %struct.TYPE_13__, i64, %struct.TYPE_12__ }
%struct.TYPE_13__ = type { i32* }
%struct.TYPE_12__ = type { i64 }
%struct.TYPE_14__ = type { i32 }

@smtp_invalid_argument = common dso_local global i32 0, align 4
@NGX_OK = common dso_local global i32 0, align 4
@ngx_mail_smtp_module = common dso_local global i32 0, align 4
@smtp_username = common dso_local global i32 0, align 4
@ngx_smtp_auth_login_username = common dso_local global i32 0, align 4
@smtp_password = common dso_local global i32 0, align 4
@ngx_smtp_auth_login_password = common dso_local global i32 0, align 4
@smtp_next = common dso_local global i32 0, align 4
@ngx_smtp_auth_plain = common dso_local global i32 0, align 4
@NGX_MAIL_AUTH_CRAM_MD5_ENABLED = common dso_local global i32 0, align 4
@NGX_MAIL_PARSE_INVALID_COMMAND = common dso_local global i32 0, align 4
@ngx_mail_core_module = common dso_local global i32 0, align 4
@NGX_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"334 \00", align 1
@ngx_smtp_auth_cram_md5 = common dso_local global i32 0, align 4
@NGX_MAIL_AUTH_EXTERNAL_ENABLED = common dso_local global i32 0, align 4
@ngx_smtp_auth_external = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_15__*, i32*)* @ngx_mail_smtp_auth to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ngx_mail_smtp_auth(%struct.TYPE_15__* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_15__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_14__*, align 8
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %4, align 8
  store i32* %1, i32** %5, align 8
  %9 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %10 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %9, i32 0, i32 4
  %11 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = icmp eq i64 %12, 0
  br i1 %13, label %14, label %22

14:                                               ; preds = %2
  %15 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %15, i32 0, i32 1
  %17 = load i32, i32* @smtp_invalid_argument, align 4
  %18 = call i32 @ngx_str_set(i32* %16, i32 %17)
  %19 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %20 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %19, i32 0, i32 3
  store i64 0, i64* %20, align 8
  %21 = load i32, i32* @NGX_OK, align 4
  store i32 %21, i32* %3, align 4
  br label %122

22:                                               ; preds = %2
  %23 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %24 = load i32, i32* @ngx_mail_smtp_module, align 4
  %25 = call i8* @ngx_mail_get_module_srv_conf(%struct.TYPE_15__* %23, i32 %24)
  %26 = bitcast i8* %25 to %struct.TYPE_14__*
  store %struct.TYPE_14__* %26, %struct.TYPE_14__** %8, align 8
  %27 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %28 = load i32*, i32** %5, align 8
  %29 = call i32 @ngx_mail_auth_parse(%struct.TYPE_15__* %27, i32* %28)
  store i32 %29, i32* %6, align 4
  %30 = load i32, i32* %6, align 4
  switch i32 %30, label %120 [
    i32 130, label %31
    i32 129, label %40
    i32 128, label %51
    i32 132, label %60
    i32 131, label %102
  ]

31:                                               ; preds = %22
  %32 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %33 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %32, i32 0, i32 1
  %34 = load i32, i32* @smtp_username, align 4
  %35 = call i32 @ngx_str_set(i32* %33, i32 %34)
  %36 = load i32, i32* @ngx_smtp_auth_login_username, align 4
  %37 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %38 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %37, i32 0, i32 0
  store i32 %36, i32* %38, align 8
  %39 = load i32, i32* @NGX_OK, align 4
  store i32 %39, i32* %3, align 4
  br label %122

40:                                               ; preds = %22
  %41 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %42 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %41, i32 0, i32 1
  %43 = load i32, i32* @smtp_password, align 4
  %44 = call i32 @ngx_str_set(i32* %42, i32 %43)
  %45 = load i32, i32* @ngx_smtp_auth_login_password, align 4
  %46 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %47 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %46, i32 0, i32 0
  store i32 %45, i32* %47, align 8
  %48 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %49 = load i32*, i32** %5, align 8
  %50 = call i32 @ngx_mail_auth_login_username(%struct.TYPE_15__* %48, i32* %49, i32 1)
  store i32 %50, i32* %3, align 4
  br label %122

51:                                               ; preds = %22
  %52 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %53 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %52, i32 0, i32 1
  %54 = load i32, i32* @smtp_next, align 4
  %55 = call i32 @ngx_str_set(i32* %53, i32 %54)
  %56 = load i32, i32* @ngx_smtp_auth_plain, align 4
  %57 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %58 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %57, i32 0, i32 0
  store i32 %56, i32* %58, align 8
  %59 = load i32, i32* @NGX_OK, align 4
  store i32 %59, i32* %3, align 4
  br label %122

60:                                               ; preds = %22
  %61 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %62 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* @NGX_MAIL_AUTH_CRAM_MD5_ENABLED, align 4
  %65 = and i32 %63, %64
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %69, label %67

67:                                               ; preds = %60
  %68 = load i32, i32* @NGX_MAIL_PARSE_INVALID_COMMAND, align 4
  store i32 %68, i32* %3, align 4
  br label %122

69:                                               ; preds = %60
  %70 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %71 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %70, i32 0, i32 2
  %72 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %71, i32 0, i32 0
  %73 = load i32*, i32** %72, align 8
  %74 = icmp eq i32* %73, null
  br i1 %74, label %75, label %89

75:                                               ; preds = %69
  %76 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %77 = load i32, i32* @ngx_mail_core_module, align 4
  %78 = call i8* @ngx_mail_get_module_srv_conf(%struct.TYPE_15__* %76, i32 %77)
  %79 = bitcast i8* %78 to i32*
  store i32* %79, i32** %7, align 8
  %80 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %81 = load i32*, i32** %5, align 8
  %82 = load i32*, i32** %7, align 8
  %83 = call i32 @ngx_mail_salt(%struct.TYPE_15__* %80, i32* %81, i32* %82)
  %84 = load i32, i32* @NGX_OK, align 4
  %85 = icmp ne i32 %83, %84
  br i1 %85, label %86, label %88

86:                                               ; preds = %75
  %87 = load i32, i32* @NGX_ERROR, align 4
  store i32 %87, i32* %3, align 4
  br label %122

88:                                               ; preds = %75
  br label %89

89:                                               ; preds = %88, %69
  %90 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %91 = load i32*, i32** %5, align 8
  %92 = call i32 @ngx_mail_auth_cram_md5_salt(%struct.TYPE_15__* %90, i32* %91, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 4)
  %93 = load i32, i32* @NGX_OK, align 4
  %94 = icmp eq i32 %92, %93
  br i1 %94, label %95, label %100

95:                                               ; preds = %89
  %96 = load i32, i32* @ngx_smtp_auth_cram_md5, align 4
  %97 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %98 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %97, i32 0, i32 0
  store i32 %96, i32* %98, align 8
  %99 = load i32, i32* @NGX_OK, align 4
  store i32 %99, i32* %3, align 4
  br label %122

100:                                              ; preds = %89
  %101 = load i32, i32* @NGX_ERROR, align 4
  store i32 %101, i32* %3, align 4
  br label %122

102:                                              ; preds = %22
  %103 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %104 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = load i32, i32* @NGX_MAIL_AUTH_EXTERNAL_ENABLED, align 4
  %107 = and i32 %105, %106
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %111, label %109

109:                                              ; preds = %102
  %110 = load i32, i32* @NGX_MAIL_PARSE_INVALID_COMMAND, align 4
  store i32 %110, i32* %3, align 4
  br label %122

111:                                              ; preds = %102
  %112 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %113 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %112, i32 0, i32 1
  %114 = load i32, i32* @smtp_username, align 4
  %115 = call i32 @ngx_str_set(i32* %113, i32 %114)
  %116 = load i32, i32* @ngx_smtp_auth_external, align 4
  %117 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %118 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %117, i32 0, i32 0
  store i32 %116, i32* %118, align 8
  %119 = load i32, i32* @NGX_OK, align 4
  store i32 %119, i32* %3, align 4
  br label %122

120:                                              ; preds = %22
  %121 = load i32, i32* %6, align 4
  store i32 %121, i32* %3, align 4
  br label %122

122:                                              ; preds = %120, %111, %109, %100, %95, %86, %67, %51, %40, %31, %14
  %123 = load i32, i32* %3, align 4
  ret i32 %123
}

declare dso_local i32 @ngx_str_set(i32*, i32) #1

declare dso_local i8* @ngx_mail_get_module_srv_conf(%struct.TYPE_15__*, i32) #1

declare dso_local i32 @ngx_mail_auth_parse(%struct.TYPE_15__*, i32*) #1

declare dso_local i32 @ngx_mail_auth_login_username(%struct.TYPE_15__*, i32*, i32) #1

declare dso_local i32 @ngx_mail_salt(%struct.TYPE_15__*, i32*, i32*) #1

declare dso_local i32 @ngx_mail_auth_cram_md5_salt(%struct.TYPE_15__*, i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
