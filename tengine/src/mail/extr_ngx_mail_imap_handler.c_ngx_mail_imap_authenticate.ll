; ModuleID = '/home/carl/AnghaBench/tengine/src/mail/extr_ngx_mail_imap_handler.c_ngx_mail_imap_authenticate.c'
source_filename = "/home/carl/AnghaBench/tengine/src/mail/extr_ngx_mail_imap_handler.c_ngx_mail_imap_authenticate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32, i32, %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32* }
%struct.TYPE_13__ = type { i32 }

@ngx_mail_imap_module = common dso_local global i32 0, align 4
@imap_username = common dso_local global i32 0, align 4
@ngx_imap_auth_login_username = common dso_local global i32 0, align 4
@NGX_OK = common dso_local global i32 0, align 4
@imap_password = common dso_local global i32 0, align 4
@ngx_imap_auth_login_password = common dso_local global i32 0, align 4
@imap_plain_next = common dso_local global i32 0, align 4
@ngx_imap_auth_plain = common dso_local global i32 0, align 4
@NGX_MAIL_AUTH_CRAM_MD5_ENABLED = common dso_local global i32 0, align 4
@NGX_MAIL_PARSE_INVALID_COMMAND = common dso_local global i32 0, align 4
@ngx_mail_core_module = common dso_local global i32 0, align 4
@NGX_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"+ \00", align 1
@ngx_imap_auth_cram_md5 = common dso_local global i32 0, align 4
@NGX_MAIL_AUTH_EXTERNAL_ENABLED = common dso_local global i32 0, align 4
@ngx_imap_auth_external = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_12__*, i32*)* @ngx_mail_imap_authenticate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ngx_mail_imap_authenticate(%struct.TYPE_12__* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_12__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_13__*, align 8
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %4, align 8
  store i32* %1, i32** %5, align 8
  %9 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %10 = load i32, i32* @ngx_mail_imap_module, align 4
  %11 = call i8* @ngx_mail_get_module_srv_conf(%struct.TYPE_12__* %9, i32 %10)
  %12 = bitcast i8* %11 to %struct.TYPE_13__*
  store %struct.TYPE_13__* %12, %struct.TYPE_13__** %8, align 8
  %13 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %14 = load i32*, i32** %5, align 8
  %15 = call i32 @ngx_mail_auth_parse(%struct.TYPE_12__* %13, i32* %14)
  store i32 %15, i32* %6, align 4
  %16 = load i32, i32* %6, align 4
  switch i32 %16, label %106 [
    i32 130, label %17
    i32 129, label %26
    i32 128, label %37
    i32 132, label %46
    i32 131, label %88
  ]

17:                                               ; preds = %2
  %18 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %18, i32 0, i32 1
  %20 = load i32, i32* @imap_username, align 4
  %21 = call i32 @ngx_str_set(i32* %19, i32 %20)
  %22 = load i32, i32* @ngx_imap_auth_login_username, align 4
  %23 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %24 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %23, i32 0, i32 0
  store i32 %22, i32* %24, align 8
  %25 = load i32, i32* @NGX_OK, align 4
  store i32 %25, i32* %3, align 4
  br label %108

26:                                               ; preds = %2
  %27 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %28 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %27, i32 0, i32 1
  %29 = load i32, i32* @imap_password, align 4
  %30 = call i32 @ngx_str_set(i32* %28, i32 %29)
  %31 = load i32, i32* @ngx_imap_auth_login_password, align 4
  %32 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %33 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %32, i32 0, i32 0
  store i32 %31, i32* %33, align 8
  %34 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %35 = load i32*, i32** %5, align 8
  %36 = call i32 @ngx_mail_auth_login_username(%struct.TYPE_12__* %34, i32* %35, i32 1)
  store i32 %36, i32* %3, align 4
  br label %108

37:                                               ; preds = %2
  %38 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %39 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %38, i32 0, i32 1
  %40 = load i32, i32* @imap_plain_next, align 4
  %41 = call i32 @ngx_str_set(i32* %39, i32 %40)
  %42 = load i32, i32* @ngx_imap_auth_plain, align 4
  %43 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %44 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %43, i32 0, i32 0
  store i32 %42, i32* %44, align 8
  %45 = load i32, i32* @NGX_OK, align 4
  store i32 %45, i32* %3, align 4
  br label %108

46:                                               ; preds = %2
  %47 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %48 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* @NGX_MAIL_AUTH_CRAM_MD5_ENABLED, align 4
  %51 = and i32 %49, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %55, label %53

53:                                               ; preds = %46
  %54 = load i32, i32* @NGX_MAIL_PARSE_INVALID_COMMAND, align 4
  store i32 %54, i32* %3, align 4
  br label %108

55:                                               ; preds = %46
  %56 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %57 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %56, i32 0, i32 2
  %58 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %57, i32 0, i32 0
  %59 = load i32*, i32** %58, align 8
  %60 = icmp eq i32* %59, null
  br i1 %60, label %61, label %75

61:                                               ; preds = %55
  %62 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %63 = load i32, i32* @ngx_mail_core_module, align 4
  %64 = call i8* @ngx_mail_get_module_srv_conf(%struct.TYPE_12__* %62, i32 %63)
  %65 = bitcast i8* %64 to i32*
  store i32* %65, i32** %7, align 8
  %66 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %67 = load i32*, i32** %5, align 8
  %68 = load i32*, i32** %7, align 8
  %69 = call i32 @ngx_mail_salt(%struct.TYPE_12__* %66, i32* %67, i32* %68)
  %70 = load i32, i32* @NGX_OK, align 4
  %71 = icmp ne i32 %69, %70
  br i1 %71, label %72, label %74

72:                                               ; preds = %61
  %73 = load i32, i32* @NGX_ERROR, align 4
  store i32 %73, i32* %3, align 4
  br label %108

74:                                               ; preds = %61
  br label %75

75:                                               ; preds = %74, %55
  %76 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %77 = load i32*, i32** %5, align 8
  %78 = call i32 @ngx_mail_auth_cram_md5_salt(%struct.TYPE_12__* %76, i32* %77, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 2)
  %79 = load i32, i32* @NGX_OK, align 4
  %80 = icmp eq i32 %78, %79
  br i1 %80, label %81, label %86

81:                                               ; preds = %75
  %82 = load i32, i32* @ngx_imap_auth_cram_md5, align 4
  %83 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %84 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %83, i32 0, i32 0
  store i32 %82, i32* %84, align 8
  %85 = load i32, i32* @NGX_OK, align 4
  store i32 %85, i32* %3, align 4
  br label %108

86:                                               ; preds = %75
  %87 = load i32, i32* @NGX_ERROR, align 4
  store i32 %87, i32* %3, align 4
  br label %108

88:                                               ; preds = %2
  %89 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %90 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = load i32, i32* @NGX_MAIL_AUTH_EXTERNAL_ENABLED, align 4
  %93 = and i32 %91, %92
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %97, label %95

95:                                               ; preds = %88
  %96 = load i32, i32* @NGX_MAIL_PARSE_INVALID_COMMAND, align 4
  store i32 %96, i32* %3, align 4
  br label %108

97:                                               ; preds = %88
  %98 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %99 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %98, i32 0, i32 1
  %100 = load i32, i32* @imap_username, align 4
  %101 = call i32 @ngx_str_set(i32* %99, i32 %100)
  %102 = load i32, i32* @ngx_imap_auth_external, align 4
  %103 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %104 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %103, i32 0, i32 0
  store i32 %102, i32* %104, align 8
  %105 = load i32, i32* @NGX_OK, align 4
  store i32 %105, i32* %3, align 4
  br label %108

106:                                              ; preds = %2
  %107 = load i32, i32* %6, align 4
  store i32 %107, i32* %3, align 4
  br label %108

108:                                              ; preds = %106, %97, %95, %86, %81, %72, %53, %37, %26, %17
  %109 = load i32, i32* %3, align 4
  ret i32 %109
}

declare dso_local i8* @ngx_mail_get_module_srv_conf(%struct.TYPE_12__*, i32) #1

declare dso_local i32 @ngx_mail_auth_parse(%struct.TYPE_12__*, i32*) #1

declare dso_local i32 @ngx_str_set(i32*, i32) #1

declare dso_local i32 @ngx_mail_auth_login_username(%struct.TYPE_12__*, i32*, i32) #1

declare dso_local i32 @ngx_mail_salt(%struct.TYPE_12__*, i32*, i32*) #1

declare dso_local i32 @ngx_mail_auth_cram_md5_salt(%struct.TYPE_12__*, i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
