; ModuleID = '/home/carl/AnghaBench/vlc/modules/access/extr_ftp.c_LoginUserPwd.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/access/extr_ftp.c_LoginUserPwd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [8 x i8] c"USER %s\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"user accepted and authenticated\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"user accepted\00", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c"password needed\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"PASS %s\00", align 1
@.str.5 = private unnamed_addr constant [18 x i8] c"password accepted\00", align 1
@.str.6 = private unnamed_addr constant [15 x i8] c"account needed\00", align 1
@.str.7 = private unnamed_addr constant [12 x i8] c"ftp-account\00", align 1
@.str.8 = private unnamed_addr constant [8 x i8] c"ACCT %s\00", align 1
@.str.9 = private unnamed_addr constant [17 x i8] c"account rejected\00", align 1
@.str.10 = private unnamed_addr constant [27 x i8] c"Network interaction failed\00", align 1
@.str.11 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.12 = private unnamed_addr constant [27 x i8] c"Your account was rejected.\00", align 1
@.str.13 = private unnamed_addr constant [17 x i8] c"account accepted\00", align 1
@.str.14 = private unnamed_addr constant [18 x i8] c"password rejected\00", align 1
@.str.15 = private unnamed_addr constant [14 x i8] c"user rejected\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, i8*, i8*, i32*)* @LoginUserPwd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @LoginUserPwd(i32* %0, i32* %1, i8* %2, i8* %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  store i32* %0, i32** %7, align 8
  store i32* %1, i32** %8, align 8
  store i8* %2, i8** %9, align 8
  store i8* %3, i8** %10, align 8
  store i32* %4, i32** %11, align 8
  %14 = load i32*, i32** %7, align 8
  %15 = load i32*, i32** %8, align 8
  %16 = load i8*, i8** %9, align 8
  %17 = call i64 @ftp_SendCommand(i32* %14, i32* %15, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8* %16)
  %18 = icmp slt i64 %17, 0
  br i1 %18, label %24, label %19

19:                                               ; preds = %5
  %20 = load i32*, i32** %7, align 8
  %21 = load i32*, i32** %8, align 8
  %22 = call i64 @ftp_RecvCommand(i32* %20, i32* %21, i32* %12, i32* null)
  %23 = icmp slt i64 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %19, %5
  store i32 -1, i32* %6, align 4
  br label %103

25:                                               ; preds = %19
  %26 = load i32, i32* %12, align 4
  %27 = sdiv i32 %26, 100
  switch i32 %27, label %97 [
    i32 2, label %28
    i32 3, label %38
  ]

28:                                               ; preds = %25
  %29 = load i32, i32* %12, align 4
  %30 = icmp eq i32 %29, 232
  br i1 %30, label %31, label %34

31:                                               ; preds = %28
  %32 = load i32*, i32** %7, align 8
  %33 = call i32 @msg_Dbg(i32* %32, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  br label %37

34:                                               ; preds = %28
  %35 = load i32*, i32** %7, align 8
  %36 = call i32 @msg_Dbg(i32* %35, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0))
  br label %37

37:                                               ; preds = %34, %31
  br label %101

38:                                               ; preds = %25
  %39 = load i32*, i32** %7, align 8
  %40 = call i32 @msg_Dbg(i32* %39, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0))
  %41 = load i32*, i32** %7, align 8
  %42 = load i32*, i32** %8, align 8
  %43 = load i8*, i8** %10, align 8
  %44 = call i64 @ftp_SendCommand(i32* %41, i32* %42, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0), i8* %43)
  %45 = icmp slt i64 %44, 0
  br i1 %45, label %51, label %46

46:                                               ; preds = %38
  %47 = load i32*, i32** %7, align 8
  %48 = load i32*, i32** %8, align 8
  %49 = call i64 @ftp_RecvCommand(i32* %47, i32* %48, i32* %12, i32* null)
  %50 = icmp slt i64 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %46, %38
  store i32 -1, i32* %6, align 4
  br label %103

52:                                               ; preds = %46
  %53 = load i32, i32* %12, align 4
  %54 = sdiv i32 %53, 100
  switch i32 %54, label %92 [
    i32 2, label %55
    i32 3, label %58
  ]

55:                                               ; preds = %52
  %56 = load i32*, i32** %7, align 8
  %57 = call i32 @msg_Dbg(i32* %56, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.5, i64 0, i64 0))
  br label %96

58:                                               ; preds = %52
  %59 = load i32*, i32** %7, align 8
  %60 = call i32 @msg_Dbg(i32* %59, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.6, i64 0, i64 0))
  %61 = load i32*, i32** %7, align 8
  %62 = call i8* @var_InheritString(i32* %61, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.7, i64 0, i64 0))
  store i8* %62, i8** %13, align 8
  %63 = load i32*, i32** %7, align 8
  %64 = load i32*, i32** %8, align 8
  %65 = load i8*, i8** %13, align 8
  %66 = call i64 @ftp_SendCommand(i32* %63, i32* %64, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i64 0, i64 0), i8* %65)
  %67 = icmp slt i64 %66, 0
  br i1 %67, label %73, label %68

68:                                               ; preds = %58
  %69 = load i32*, i32** %7, align 8
  %70 = load i32*, i32** %8, align 8
  %71 = call i64 @ftp_RecvCommand(i32* %69, i32* %70, i32* %12, i32* null)
  %72 = icmp slt i64 %71, 0
  br i1 %72, label %73, label %76

73:                                               ; preds = %68, %58
  %74 = load i8*, i8** %13, align 8
  %75 = call i32 @free(i8* %74)
  store i32 -1, i32* %6, align 4
  br label %103

76:                                               ; preds = %68
  %77 = load i8*, i8** %13, align 8
  %78 = call i32 @free(i8* %77)
  %79 = load i32, i32* %12, align 4
  %80 = sdiv i32 %79, 100
  %81 = icmp ne i32 %80, 2
  br i1 %81, label %82, label %89

82:                                               ; preds = %76
  %83 = load i32*, i32** %7, align 8
  %84 = call i32 @msg_Err(i32* %83, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.9, i64 0, i64 0))
  %85 = load i32*, i32** %7, align 8
  %86 = call i32 @_(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.10, i64 0, i64 0))
  %87 = call i32 @_(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.12, i64 0, i64 0))
  %88 = call i32 @vlc_dialog_display_error(i32* %85, i32 %86, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.11, i64 0, i64 0), i32 %87)
  store i32 -1, i32* %6, align 4
  br label %103

89:                                               ; preds = %76
  %90 = load i32*, i32** %7, align 8
  %91 = call i32 @msg_Dbg(i32* %90, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.13, i64 0, i64 0))
  br label %96

92:                                               ; preds = %52
  %93 = load i32*, i32** %7, align 8
  %94 = call i32 @msg_Warn(i32* %93, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.14, i64 0, i64 0))
  %95 = load i32*, i32** %11, align 8
  store i32 0, i32* %95, align 4
  store i32 0, i32* %6, align 4
  br label %103

96:                                               ; preds = %89, %55
  br label %101

97:                                               ; preds = %25
  %98 = load i32*, i32** %7, align 8
  %99 = call i32 @msg_Warn(i32* %98, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.15, i64 0, i64 0))
  %100 = load i32*, i32** %11, align 8
  store i32 0, i32* %100, align 4
  store i32 0, i32* %6, align 4
  br label %103

101:                                              ; preds = %96, %37
  %102 = load i32*, i32** %11, align 8
  store i32 1, i32* %102, align 4
  store i32 0, i32* %6, align 4
  br label %103

103:                                              ; preds = %101, %97, %92, %82, %73, %51, %24
  %104 = load i32, i32* %6, align 4
  ret i32 %104
}

declare dso_local i64 @ftp_SendCommand(i32*, i32*, i8*, i8*) #1

declare dso_local i64 @ftp_RecvCommand(i32*, i32*, i32*, i32*) #1

declare dso_local i32 @msg_Dbg(i32*, i8*) #1

declare dso_local i8* @var_InheritString(i32*, i8*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @msg_Err(i32*, i8*) #1

declare dso_local i32 @vlc_dialog_display_error(i32*, i32, i8*, i32) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @msg_Warn(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
