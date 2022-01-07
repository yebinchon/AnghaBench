; ModuleID = '/home/carl/AnghaBench/reactos/modules/rosapps/applications/net/tsclient/rdesktop/extr_rdesktop.c_print_disconnect_reason.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rosapps/applications/net/tsclient/rdesktop/extr_rdesktop.c_print_disconnect_reason.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [25 x i8] c"No information available\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"Server initiated disconnect\00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"Server initiated logoff\00", align 1
@.str.3 = private unnamed_addr constant [28 x i8] c"Server idle timeout reached\00", align 1
@.str.4 = private unnamed_addr constant [29 x i8] c"Server logon timeout reached\00", align 1
@.str.5 = private unnamed_addr constant [25 x i8] c"The session was replaced\00", align 1
@.str.6 = private unnamed_addr constant [28 x i8] c"The server is out of memory\00", align 1
@.str.7 = private unnamed_addr constant [33 x i8] c"The server denied the connection\00", align 1
@.str.8 = private unnamed_addr constant [53 x i8] c"The server denied the connection for security reason\00", align 1
@.str.9 = private unnamed_addr constant [25 x i8] c"Internal licensing error\00", align 1
@.str.10 = private unnamed_addr constant [28 x i8] c"No license server available\00", align 1
@.str.11 = private unnamed_addr constant [27 x i8] c"No valid license available\00", align 1
@.str.12 = private unnamed_addr constant [26 x i8] c"Invalid licensing message\00", align 1
@.str.13 = private unnamed_addr constant [43 x i8] c"Hardware id doesn't match software license\00", align 1
@.str.14 = private unnamed_addr constant [21 x i8] c"Client license error\00", align 1
@.str.15 = private unnamed_addr constant [40 x i8] c"Network error during licensing protocol\00", align 1
@.str.16 = private unnamed_addr constant [37 x i8] c"Licensing protocol was not completed\00", align 1
@.str.17 = private unnamed_addr constant [35 x i8] c"Incorrect client license enryption\00", align 1
@.str.18 = private unnamed_addr constant [22 x i8] c"Can't upgrade license\00", align 1
@.str.19 = private unnamed_addr constant [56 x i8] c"The server is not licensed to accept remote connections\00", align 1
@.str.20 = private unnamed_addr constant [24 x i8] c"Internal protocol error\00", align 1
@.str.21 = private unnamed_addr constant [15 x i8] c"Unknown reason\00", align 1
@stderr = common dso_local global i32 0, align 4
@.str.22 = private unnamed_addr constant [17 x i8] c"disconnect: %s.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @print_disconnect_reason to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @print_disconnect_reason(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  store i32 %0, i32* %2, align 4
  %4 = load i32, i32* %2, align 4
  switch i32 %4, label %25 [
    i32 134, label %5
    i32 147, label %6
    i32 146, label %7
    i32 129, label %8
    i32 128, label %9
    i32 132, label %10
    i32 133, label %11
    i32 131, label %12
    i32 130, label %13
    i32 138, label %14
    i32 136, label %15
    i32 137, label %16
    i32 140, label %17
    i32 139, label %18
    i32 141, label %19
    i32 145, label %20
    i32 143, label %21
    i32 142, label %22
    i32 144, label %23
    i32 135, label %24
  ]

5:                                                ; preds = %1
  store i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i8** %3, align 8
  br label %34

6:                                                ; preds = %1
  store i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i8** %3, align 8
  br label %34

7:                                                ; preds = %1
  store i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0), i8** %3, align 8
  br label %34

8:                                                ; preds = %1
  store i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0), i8** %3, align 8
  br label %34

9:                                                ; preds = %1
  store i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i64 0, i64 0), i8** %3, align 8
  br label %34

10:                                               ; preds = %1
  store i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.5, i64 0, i64 0), i8** %3, align 8
  br label %34

11:                                               ; preds = %1
  store i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.6, i64 0, i64 0), i8** %3, align 8
  br label %34

12:                                               ; preds = %1
  store i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.7, i64 0, i64 0), i8** %3, align 8
  br label %34

13:                                               ; preds = %1
  store i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.8, i64 0, i64 0), i8** %3, align 8
  br label %34

14:                                               ; preds = %1
  store i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.9, i64 0, i64 0), i8** %3, align 8
  br label %34

15:                                               ; preds = %1
  store i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.10, i64 0, i64 0), i8** %3, align 8
  br label %34

16:                                               ; preds = %1
  store i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.11, i64 0, i64 0), i8** %3, align 8
  br label %34

17:                                               ; preds = %1
  store i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.12, i64 0, i64 0), i8** %3, align 8
  br label %34

18:                                               ; preds = %1
  store i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.13, i64 0, i64 0), i8** %3, align 8
  br label %34

19:                                               ; preds = %1
  store i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.14, i64 0, i64 0), i8** %3, align 8
  br label %34

20:                                               ; preds = %1
  store i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.15, i64 0, i64 0), i8** %3, align 8
  br label %34

21:                                               ; preds = %1
  store i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.16, i64 0, i64 0), i8** %3, align 8
  br label %34

22:                                               ; preds = %1
  store i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.17, i64 0, i64 0), i8** %3, align 8
  br label %34

23:                                               ; preds = %1
  store i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.18, i64 0, i64 0), i8** %3, align 8
  br label %34

24:                                               ; preds = %1
  store i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.19, i64 0, i64 0), i8** %3, align 8
  br label %34

25:                                               ; preds = %1
  %26 = load i32, i32* %2, align 4
  %27 = icmp sgt i32 %26, 4096
  br i1 %27, label %28, label %32

28:                                               ; preds = %25
  %29 = load i32, i32* %2, align 4
  %30 = icmp slt i32 %29, 32767
  br i1 %30, label %31, label %32

31:                                               ; preds = %28
  store i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.20, i64 0, i64 0), i8** %3, align 8
  br label %33

32:                                               ; preds = %28, %25
  store i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.21, i64 0, i64 0), i8** %3, align 8
  br label %33

33:                                               ; preds = %32, %31
  br label %34

34:                                               ; preds = %33, %24, %23, %22, %21, %20, %19, %18, %17, %16, %15, %14, %13, %12, %11, %10, %9, %8, %7, %6, %5
  %35 = load i32, i32* @stderr, align 4
  %36 = load i8*, i8** %3, align 8
  %37 = call i32 @fprintf(i32 %35, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.22, i64 0, i64 0), i8* %36)
  ret void
}

declare dso_local i32 @fprintf(i32, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
