; ModuleID = '/home/carl/AnghaBench/systemd/src/login/extr_pam_systemd.c_get_user_data.c'
source_filename = "/home/carl/AnghaBench/systemd/src/login/extr_pam_systemd.c_get_user_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.passwd = type opaque

@PAM_SUCCESS = common dso_local global i32 0, align 4
@LOG_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"Failed to get user name.\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"User name not valid.\00", align 1
@PAM_AUTH_ERR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [25 x i8] c"Failed to get user data.\00", align 1
@PAM_USER_UNKNOWN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8**, i8**, %struct.passwd**)* @get_user_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_user_data(i8** %0, i8** %1, %struct.passwd** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i8**, align 8
  %7 = alloca %struct.passwd**, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.passwd*, align 8
  %10 = alloca i32, align 4
  store i8** %0, i8*** %5, align 8
  store i8** %1, i8*** %6, align 8
  store %struct.passwd** %2, %struct.passwd*** %7, align 8
  store i8* null, i8** %8, align 8
  store %struct.passwd* null, %struct.passwd** %9, align 8
  %11 = load i8**, i8*** %5, align 8
  %12 = call i32 @assert(i8** %11)
  %13 = load i8**, i8*** %6, align 8
  %14 = call i32 @assert(i8** %13)
  %15 = load %struct.passwd**, %struct.passwd*** %7, align 8
  %16 = bitcast %struct.passwd** %15 to i8**
  %17 = call i32 @assert(i8** %16)
  %18 = load i8**, i8*** %5, align 8
  %19 = call i32 @pam_get_user(i8** %18, i8** %8, i32* null)
  store i32 %19, i32* %10, align 4
  %20 = load i32, i32* %10, align 4
  %21 = load i32, i32* @PAM_SUCCESS, align 4
  %22 = icmp ne i32 %20, %21
  br i1 %22, label %23, label %28

23:                                               ; preds = %3
  %24 = load i8**, i8*** %5, align 8
  %25 = load i32, i32* @LOG_ERR, align 4
  %26 = call i32 @pam_syslog(i8** %24, i32 %25, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %27 = load i32, i32* %10, align 4
  store i32 %27, i32* %4, align 4
  br label %55

28:                                               ; preds = %3
  %29 = load i8*, i8** %8, align 8
  %30 = call i64 @isempty(i8* %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %37

32:                                               ; preds = %28
  %33 = load i8**, i8*** %5, align 8
  %34 = load i32, i32* @LOG_ERR, align 4
  %35 = call i32 @pam_syslog(i8** %33, i32 %34, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  %36 = load i32, i32* @PAM_AUTH_ERR, align 4
  store i32 %36, i32* %4, align 4
  br label %55

37:                                               ; preds = %28
  %38 = load i8**, i8*** %5, align 8
  %39 = load i8*, i8** %8, align 8
  %40 = call i8* @pam_modutil_getpwnam(i8** %38, i8* %39)
  %41 = bitcast i8* %40 to %struct.passwd*
  store %struct.passwd* %41, %struct.passwd** %9, align 8
  %42 = load %struct.passwd*, %struct.passwd** %9, align 8
  %43 = icmp ne %struct.passwd* %42, null
  br i1 %43, label %49, label %44

44:                                               ; preds = %37
  %45 = load i8**, i8*** %5, align 8
  %46 = load i32, i32* @LOG_ERR, align 4
  %47 = call i32 @pam_syslog(i8** %45, i32 %46, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0))
  %48 = load i32, i32* @PAM_USER_UNKNOWN, align 4
  store i32 %48, i32* %4, align 4
  br label %55

49:                                               ; preds = %37
  %50 = load %struct.passwd*, %struct.passwd** %9, align 8
  %51 = load %struct.passwd**, %struct.passwd*** %7, align 8
  store %struct.passwd* %50, %struct.passwd** %51, align 8
  %52 = load i8*, i8** %8, align 8
  %53 = load i8**, i8*** %6, align 8
  store i8* %52, i8** %53, align 8
  %54 = load i32, i32* @PAM_SUCCESS, align 4
  store i32 %54, i32* %4, align 4
  br label %55

55:                                               ; preds = %49, %44, %32, %23
  %56 = load i32, i32* %4, align 4
  ret i32 %56
}

declare dso_local i32 @assert(i8**) #1

declare dso_local i32 @pam_get_user(i8**, i8**, i32*) #1

declare dso_local i32 @pam_syslog(i8**, i32, i8*) #1

declare dso_local i64 @isempty(i8*) #1

declare dso_local i8* @pam_modutil_getpwnam(i8**, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
