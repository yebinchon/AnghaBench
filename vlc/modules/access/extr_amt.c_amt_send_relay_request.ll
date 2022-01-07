; ModuleID = '/home/carl/AnghaBench/vlc/modules/access/extr_amt.c_amt_send_relay_request.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/access/extr_amt.c_amt_send_relay_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32, i64 }

@AMT_REQUEST_MSG_LEN = common dso_local global i32 0, align 4
@AMT_REQUEST = common dso_local global i8 0, align 1
@.str = private unnamed_addr constant [44 x i8] c"Error sending relay request to %s error: %s\00", align 1
@errno = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_5__*, i8*)* @amt_send_relay_request to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @amt_send_relay_request(%struct.TYPE_5__* %0, i8* %1) #0 {
  %3 = alloca %struct.TYPE_5__*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_6__*, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %3, align 8
  store i8* %1, i8** %4, align 8
  %10 = load i32, i32* @AMT_REQUEST_MSG_LEN, align 4
  %11 = zext i32 %10 to i64
  %12 = call i8* @llvm.stacksave()
  store i8* %12, i8** %5, align 8
  %13 = alloca i8, i64 %11, align 16
  store i64 %11, i64* %6, align 8
  %14 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 0
  %16 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  store %struct.TYPE_6__* %16, %struct.TYPE_6__** %9, align 8
  %17 = trunc i64 %11 to i32
  %18 = call i32 @memset(i8* %13, i32 0, i32 %17)
  store i64 0, i64* %7, align 8
  store i32 0, i32* %8, align 4
  %19 = load i8, i8* @AMT_REQUEST, align 1
  %20 = getelementptr inbounds i8, i8* %13, i64 0
  store i8 %19, i8* %20, align 16
  %21 = getelementptr inbounds i8, i8* %13, i64 1
  store i8 0, i8* %21, align 1
  %22 = getelementptr inbounds i8, i8* %13, i64 2
  store i8 0, i8* %22, align 2
  %23 = getelementptr inbounds i8, i8* %13, i64 3
  store i8 0, i8* %23, align 1
  %24 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  store i64 %26, i64* %7, align 8
  %27 = getelementptr inbounds i8, i8* %13, i64 4
  %28 = call i32 @memcpy(i8* %27, i64* %7, i32 8)
  %29 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = trunc i64 %11 to i32
  %33 = call i32 @send(i32 %31, i8* %13, i32 %32, i32 0)
  store i32 %33, i32* %8, align 4
  %34 = load i32, i32* %8, align 4
  %35 = icmp slt i32 %34, 0
  br i1 %35, label %36, label %42

36:                                               ; preds = %2
  %37 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %38 = load i8*, i8** %4, align 8
  %39 = load i32, i32* @errno, align 4
  %40 = call i32 @vlc_strerror(i32 %39)
  %41 = call i32 @msg_Err(%struct.TYPE_5__* %37, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i8* %38, i32 %40)
  br label %42

42:                                               ; preds = %36, %2
  %43 = load i8*, i8** %5, align 8
  call void @llvm.stackrestore(i8* %43)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @memset(i8*, i32, i32) #2

declare dso_local i32 @memcpy(i8*, i64*, i32) #2

declare dso_local i32 @send(i32, i8*, i32, i32) #2

declare dso_local i32 @msg_Err(%struct.TYPE_5__*, i8*, i8*, i32) #2

declare dso_local i32 @vlc_strerror(i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
