; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/apitests/user32/extr_SwitchToThisWindow.c_DumpInSMEX.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/apitests/user32/extr_SwitchToThisWindow.c_DumpInSMEX.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@DumpInSMEX.s_buf = internal global [128 x i8] zeroinitializer, align 16
@ISMEX_NOSEND = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"ISMEX_NOSEND,\00", align 1
@ISMEX_CALLBACK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [16 x i8] c"ISMEX_CALLBACK,\00", align 1
@ISMEX_NOTIFY = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [14 x i8] c"ISMEX_NOTIFY,\00", align 1
@ISMEX_REPLIED = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [15 x i8] c"ISMEX_REPLIED,\00", align 1
@ISMEX_SEND = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [12 x i8] c"ISMEX_SEND,\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* ()* @DumpInSMEX to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @DumpInSMEX() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca i32, align 4
  %3 = call i32 @InSendMessageEx(i32* null)
  store i32 %3, i32* %2, align 4
  %4 = load i32, i32* %2, align 4
  %5 = load i32, i32* @ISMEX_NOSEND, align 4
  %6 = icmp eq i32 %4, %5
  br i1 %6, label %7, label %9

7:                                                ; preds = %0
  %8 = call i32 @strcpy(i8* getelementptr inbounds ([128 x i8], [128 x i8]* @DumpInSMEX.s_buf, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  store i8* getelementptr inbounds ([128 x i8], [128 x i8]* @DumpInSMEX.s_buf, i64 0, i64 0), i8** %1, align 8
  br label %38

9:                                                ; preds = %0
  store i8 0, i8* getelementptr inbounds ([128 x i8], [128 x i8]* @DumpInSMEX.s_buf, i64 0, i64 0), align 16
  %10 = load i32, i32* %2, align 4
  %11 = load i32, i32* @ISMEX_CALLBACK, align 4
  %12 = and i32 %10, %11
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %9
  %15 = call i32 @strcat(i8* getelementptr inbounds ([128 x i8], [128 x i8]* @DumpInSMEX.s_buf, i64 0, i64 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
  br label %16

16:                                               ; preds = %14, %9
  %17 = load i32, i32* %2, align 4
  %18 = load i32, i32* @ISMEX_NOTIFY, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %16
  %22 = call i32 @strcat(i8* getelementptr inbounds ([128 x i8], [128 x i8]* @DumpInSMEX.s_buf, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0))
  br label %23

23:                                               ; preds = %21, %16
  %24 = load i32, i32* %2, align 4
  %25 = load i32, i32* @ISMEX_REPLIED, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %23
  %29 = call i32 @strcat(i8* getelementptr inbounds ([128 x i8], [128 x i8]* @DumpInSMEX.s_buf, i64 0, i64 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0))
  br label %30

30:                                               ; preds = %28, %23
  %31 = load i32, i32* %2, align 4
  %32 = load i32, i32* @ISMEX_SEND, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %30
  %36 = call i32 @strcat(i8* getelementptr inbounds ([128 x i8], [128 x i8]* @DumpInSMEX.s_buf, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0))
  br label %37

37:                                               ; preds = %35, %30
  store i8* getelementptr inbounds ([128 x i8], [128 x i8]* @DumpInSMEX.s_buf, i64 0, i64 0), i8** %1, align 8
  br label %38

38:                                               ; preds = %37, %7
  %39 = load i8*, i8** %1, align 8
  ret i8* %39
}

declare dso_local i32 @InSendMessageEx(i32*) #1

declare dso_local i32 @strcpy(i8*, i8*) #1

declare dso_local i32 @strcat(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
