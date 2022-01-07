; ModuleID = '/home/carl/AnghaBench/tengine/src/core/extr_nginx.c_ngx_set_user.c'
source_filename = "/home/carl/AnghaBench/tengine/src/core/extr_nginx.c_ngx_set_user.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i8* }
%struct.TYPE_9__ = type { i64, i8*, i32 }
%struct.passwd = type { i64 }
%struct.group = type { i32 }

@NGX_CONF_UNSET_UINT = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [13 x i8] c"is duplicate\00", align 1
@NGX_LOG_WARN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [101 x i8] c"the \22user\22 directive makes sense only if the master process runs with super-user privileges, ignored\00", align 1
@NGX_CONF_OK = common dso_local global i8* null, align 8
@NGX_LOG_EMERG = common dso_local global i32 0, align 4
@ngx_errno = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [22 x i8] c"getpwnam(\22%s\22) failed\00", align 1
@NGX_CONF_ERROR = common dso_local global i8* null, align 8
@.str.3 = private unnamed_addr constant [22 x i8] c"getgrnam(\22%s\22) failed\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.TYPE_10__*, i32*, i8*)* @ngx_set_user to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @ngx_set_user(%struct.TYPE_10__* %0, i32* %1, i8* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.TYPE_10__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.TYPE_9__*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.passwd*, align 8
  %11 = alloca %struct.group*, align 8
  %12 = alloca %struct.TYPE_8__*, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %5, align 8
  store i32* %1, i32** %6, align 8
  store i8* %2, i8** %7, align 8
  %13 = load i8*, i8** %7, align 8
  %14 = bitcast i8* %13 to %struct.TYPE_9__*
  store %struct.TYPE_9__* %14, %struct.TYPE_9__** %8, align 8
  %15 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %16 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @NGX_CONF_UNSET_UINT, align 8
  %19 = icmp ne i64 %17, %18
  br i1 %19, label %20, label %21

20:                                               ; preds = %3
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i8** %4, align 8
  br label %102

21:                                               ; preds = %3
  %22 = call i64 (...) @geteuid()
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %29

24:                                               ; preds = %21
  %25 = load i32, i32* @NGX_LOG_WARN, align 4
  %26 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %27 = call i32 (i32, %struct.TYPE_10__*, i32, i8*, ...) @ngx_conf_log_error(i32 %25, %struct.TYPE_10__* %26, i32 0, i8* getelementptr inbounds ([101 x i8], [101 x i8]* @.str.1, i64 0, i64 0))
  %28 = load i8*, i8** @NGX_CONF_OK, align 8
  store i8* %28, i8** %4, align 8
  br label %102

29:                                               ; preds = %21
  %30 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %31 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %30, i32 0, i32 0
  %32 = load %struct.TYPE_7__*, %struct.TYPE_7__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %32, i32 0, i32 1
  %34 = load %struct.TYPE_8__*, %struct.TYPE_8__** %33, align 8
  store %struct.TYPE_8__* %34, %struct.TYPE_8__** %12, align 8
  %35 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %36 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %35, i64 1
  %37 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %36, i32 0, i32 0
  %38 = load i8*, i8** %37, align 8
  %39 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %40 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %39, i32 0, i32 1
  store i8* %38, i8** %40, align 8
  %41 = call i32 @ngx_set_errno(i32 0)
  %42 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %43 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %42, i64 1
  %44 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %43, i32 0, i32 0
  %45 = load i8*, i8** %44, align 8
  %46 = call %struct.passwd* @getpwnam(i8* %45)
  store %struct.passwd* %46, %struct.passwd** %10, align 8
  %47 = load %struct.passwd*, %struct.passwd** %10, align 8
  %48 = icmp eq %struct.passwd* %47, null
  br i1 %48, label %49, label %59

49:                                               ; preds = %29
  %50 = load i32, i32* @NGX_LOG_EMERG, align 4
  %51 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %52 = load i32, i32* @ngx_errno, align 4
  %53 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %54 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %53, i64 1
  %55 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %54, i32 0, i32 0
  %56 = load i8*, i8** %55, align 8
  %57 = call i32 (i32, %struct.TYPE_10__*, i32, i8*, ...) @ngx_conf_log_error(i32 %50, %struct.TYPE_10__* %51, i32 %52, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0), i8* %56)
  %58 = load i8*, i8** @NGX_CONF_ERROR, align 8
  store i8* %58, i8** %4, align 8
  br label %102

59:                                               ; preds = %29
  %60 = load %struct.passwd*, %struct.passwd** %10, align 8
  %61 = getelementptr inbounds %struct.passwd, %struct.passwd* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %64 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %63, i32 0, i32 0
  store i64 %62, i64* %64, align 8
  %65 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %66 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %65, i32 0, i32 0
  %67 = load %struct.TYPE_7__*, %struct.TYPE_7__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = icmp eq i32 %69, 2
  br i1 %70, label %71, label %76

71:                                               ; preds = %59
  %72 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %73 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %72, i64 1
  %74 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %73, i32 0, i32 0
  %75 = load i8*, i8** %74, align 8
  br label %81

76:                                               ; preds = %59
  %77 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %78 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %77, i64 2
  %79 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %78, i32 0, i32 0
  %80 = load i8*, i8** %79, align 8
  br label %81

81:                                               ; preds = %76, %71
  %82 = phi i8* [ %75, %71 ], [ %80, %76 ]
  store i8* %82, i8** %9, align 8
  %83 = call i32 @ngx_set_errno(i32 0)
  %84 = load i8*, i8** %9, align 8
  %85 = call %struct.group* @getgrnam(i8* %84)
  store %struct.group* %85, %struct.group** %11, align 8
  %86 = load %struct.group*, %struct.group** %11, align 8
  %87 = icmp eq %struct.group* %86, null
  br i1 %87, label %88, label %95

88:                                               ; preds = %81
  %89 = load i32, i32* @NGX_LOG_EMERG, align 4
  %90 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %91 = load i32, i32* @ngx_errno, align 4
  %92 = load i8*, i8** %9, align 8
  %93 = call i32 (i32, %struct.TYPE_10__*, i32, i8*, ...) @ngx_conf_log_error(i32 %89, %struct.TYPE_10__* %90, i32 %91, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0), i8* %92)
  %94 = load i8*, i8** @NGX_CONF_ERROR, align 8
  store i8* %94, i8** %4, align 8
  br label %102

95:                                               ; preds = %81
  %96 = load %struct.group*, %struct.group** %11, align 8
  %97 = getelementptr inbounds %struct.group, %struct.group* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %100 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %99, i32 0, i32 2
  store i32 %98, i32* %100, align 8
  %101 = load i8*, i8** @NGX_CONF_OK, align 8
  store i8* %101, i8** %4, align 8
  br label %102

102:                                              ; preds = %95, %88, %49, %24, %20
  %103 = load i8*, i8** %4, align 8
  ret i8* %103
}

declare dso_local i64 @geteuid(...) #1

declare dso_local i32 @ngx_conf_log_error(i32, %struct.TYPE_10__*, i32, i8*, ...) #1

declare dso_local i32 @ngx_set_errno(i32) #1

declare dso_local %struct.passwd* @getpwnam(i8*) #1

declare dso_local %struct.group* @getgrnam(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
