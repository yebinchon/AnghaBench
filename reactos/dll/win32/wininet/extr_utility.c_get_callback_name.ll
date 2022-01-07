; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/wininet/extr_utility.c_get_callback_name.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/wininet/extr_utility.c_get_callback_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i8* }

@get_callback_name.internet_status = internal constant [25 x %struct.TYPE_3__] [%struct.TYPE_3__ { i32 132, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i32 0, i32 0) }, %struct.TYPE_3__ { i32 141, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i32 0, i32 0) }, %struct.TYPE_3__ { i32 150, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i32 0, i32 0) }, %struct.TYPE_3__ { i32 151, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i32 0, i32 0) }, %struct.TYPE_3__ { i32 130, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.4, i32 0, i32 0) }, %struct.TYPE_3__ { i32 133, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.5, i32 0, i32 0) }, %struct.TYPE_3__ { i32 136, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.6, i32 0, i32 0) }, %struct.TYPE_3__ { i32 131, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.7, i32 0, i32 0) }, %struct.TYPE_3__ { i32 145, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.8, i32 0, i32 0) }, %struct.TYPE_3__ { i32 138, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.9, i32 0, i32 0) }, %struct.TYPE_3__ { i32 152, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.10, i32 0, i32 0) }, %struct.TYPE_3__ { i32 149, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.11, i32 0, i32 0) }, %struct.TYPE_3__ { i32 143, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.12, i32 0, i32 0) }, %struct.TYPE_3__ { i32 144, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.13, i32 0, i32 0) }, %struct.TYPE_3__ { i32 134, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.14, i32 0, i32 0) }, %struct.TYPE_3__ { i32 135, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.15, i32 0, i32 0) }, %struct.TYPE_3__ { i32 142, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.16, i32 0, i32 0) }, %struct.TYPE_3__ { i32 128, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.17, i32 0, i32 0) }, %struct.TYPE_3__ { i32 129, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.18, i32 0, i32 0) }, %struct.TYPE_3__ { i32 146, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.19, i32 0, i32 0) }, %struct.TYPE_3__ { i32 147, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.20, i32 0, i32 0) }, %struct.TYPE_3__ { i32 137, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.21, i32 0, i32 0) }, %struct.TYPE_3__ { i32 140, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.22, i32 0, i32 0) }, %struct.TYPE_3__ { i32 139, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.23, i32 0, i32 0) }, %struct.TYPE_3__ { i32 148, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.24, i32 0, i32 0) }], align 16
@.str = private unnamed_addr constant [31 x i8] c"INTERNET_STATUS_RESOLVING_NAME\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"INTERNET_STATUS_NAME_RESOLVED\00", align 1
@.str.2 = private unnamed_addr constant [37 x i8] c"INTERNET_STATUS_CONNECTING_TO_SERVER\00", align 1
@.str.3 = private unnamed_addr constant [36 x i8] c"INTERNET_STATUS_CONNECTED_TO_SERVER\00", align 1
@.str.4 = private unnamed_addr constant [32 x i8] c"INTERNET_STATUS_SENDING_REQUEST\00", align 1
@.str.5 = private unnamed_addr constant [29 x i8] c"INTERNET_STATUS_REQUEST_SENT\00", align 1
@.str.6 = private unnamed_addr constant [35 x i8] c"INTERNET_STATUS_RECEIVING_RESPONSE\00", align 1
@.str.7 = private unnamed_addr constant [34 x i8] c"INTERNET_STATUS_RESPONSE_RECEIVED\00", align 1
@.str.8 = private unnamed_addr constant [38 x i8] c"INTERNET_STATUS_CTL_RESPONSE_RECEIVED\00", align 1
@.str.9 = private unnamed_addr constant [25 x i8] c"INTERNET_STATUS_PREFETCH\00", align 1
@.str.10 = private unnamed_addr constant [35 x i8] c"INTERNET_STATUS_CLOSING_CONNECTION\00", align 1
@.str.11 = private unnamed_addr constant [34 x i8] c"INTERNET_STATUS_CONNECTION_CLOSED\00", align 1
@.str.12 = private unnamed_addr constant [31 x i8] c"INTERNET_STATUS_HANDLE_CREATED\00", align 1
@.str.13 = private unnamed_addr constant [31 x i8] c"INTERNET_STATUS_HANDLE_CLOSING\00", align 1
@.str.14 = private unnamed_addr constant [33 x i8] c"INTERNET_STATUS_REQUEST_COMPLETE\00", align 1
@.str.15 = private unnamed_addr constant [25 x i8] c"INTERNET_STATUS_REDIRECT\00", align 1
@.str.16 = private unnamed_addr constant [38 x i8] c"INTERNET_STATUS_INTERMEDIATE_RESPONSE\00", align 1
@.str.17 = private unnamed_addr constant [36 x i8] c"INTERNET_STATUS_USER_INPUT_REQUIRED\00", align 1
@.str.18 = private unnamed_addr constant [29 x i8] c"INTERNET_STATUS_STATE_CHANGE\00", align 1
@.str.19 = private unnamed_addr constant [28 x i8] c"INTERNET_STATUS_COOKIE_SENT\00", align 1
@.str.20 = private unnamed_addr constant [32 x i8] c"INTERNET_STATUS_COOKIE_RECEIVED\00", align 1
@.str.21 = private unnamed_addr constant [33 x i8] c"INTERNET_STATUS_PRIVACY_IMPACTED\00", align 1
@.str.22 = private unnamed_addr constant [27 x i8] c"INTERNET_STATUS_P3P_HEADER\00", align 1
@.str.23 = private unnamed_addr constant [30 x i8] c"INTERNET_STATUS_P3P_POLICYREF\00", align 1
@.str.24 = private unnamed_addr constant [31 x i8] c"INTERNET_STATUS_COOKIE_HISTORY\00", align 1
@.str.25 = private unnamed_addr constant [8 x i8] c"Unknown\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i32)* @get_callback_name to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @get_callback_name(i32 %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 0, i32* %4, align 4
  br label %5

5:                                                ; preds = %24, %1
  %6 = load i32, i32* %4, align 4
  %7 = sext i32 %6 to i64
  %8 = icmp ult i64 %7, 25
  br i1 %8, label %9, label %27

9:                                                ; preds = %5
  %10 = load i32, i32* %4, align 4
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds [25 x %struct.TYPE_3__], [25 x %struct.TYPE_3__]* @get_callback_name.internet_status, i64 0, i64 %11
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 16
  %15 = load i32, i32* %3, align 4
  %16 = icmp eq i32 %14, %15
  br i1 %16, label %17, label %23

17:                                               ; preds = %9
  %18 = load i32, i32* %4, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds [25 x %struct.TYPE_3__], [25 x %struct.TYPE_3__]* @get_callback_name.internet_status, i64 0, i64 %19
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 1
  %22 = load i8*, i8** %21, align 8
  store i8* %22, i8** %2, align 8
  br label %28

23:                                               ; preds = %9
  br label %24

24:                                               ; preds = %23
  %25 = load i32, i32* %4, align 4
  %26 = add nsw i32 %25, 1
  store i32 %26, i32* %4, align 4
  br label %5

27:                                               ; preds = %5
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.25, i64 0, i64 0), i8** %2, align 8
  br label %28

28:                                               ; preds = %27, %17
  %29 = load i8*, i8** %2, align 8
  ret i8* %29
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
