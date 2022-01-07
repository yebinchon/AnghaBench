; ModuleID = '/home/carl/AnghaBench/reactos/modules/rosapps/applications/net/ncftp/ncftp/extr_cmds.c_CatCmd.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rosapps/applications/net/ncftp/ncftp/extr_cmds.c_CatCmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@gUnusedArg = common dso_local global i32 0, align 4
@gConn = common dso_local global i32 0, align 4
@kTypeAscii = common dso_local global i32 0, align 4
@STDOUT_FILENO = common dso_local global i32 0, align 4
@kResumeNo = common dso_local global i32 0, align 4
@kAppendNo = common dso_local global i32 0, align 4
@kErrCouldNotStartDataTransfer = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"cat\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CatCmd(i32 %0, i8** %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8**, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i8** %1, i8*** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %11 = load i32, i32* @gUnusedArg, align 4
  %12 = call i32 @ARGSUSED(i32 %11)
  store i32 1, i32* %10, align 4
  br label %13

13:                                               ; preds = %36, %4
  %14 = load i32, i32* %10, align 4
  %15 = load i32, i32* %5, align 4
  %16 = icmp slt i32 %14, %15
  br i1 %16, label %17, label %39

17:                                               ; preds = %13
  %18 = load i8**, i8*** %6, align 8
  %19 = load i32, i32* %10, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds i8*, i8** %18, i64 %20
  %22 = load i8*, i8** %21, align 8
  %23 = load i32, i32* @kTypeAscii, align 4
  %24 = load i32, i32* @STDOUT_FILENO, align 4
  %25 = load i32, i32* @kResumeNo, align 4
  %26 = load i32, i32* @kAppendNo, align 4
  %27 = call i32 @FTPGetOneFile2(i32* @gConn, i8* %22, i32* null, i32 %23, i32 %24, i32 %25, i32 %26)
  store i32 %27, i32* %9, align 4
  %28 = load i32, i32* %9, align 4
  %29 = load i32, i32* @kErrCouldNotStartDataTransfer, align 4
  %30 = load i8**, i8*** %6, align 8
  %31 = load i32, i32* %10, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i8*, i8** %30, i64 %32
  %34 = load i8*, i8** %33, align 8
  %35 = call i32 @FTPPerror(i32* @gConn, i32 %28, i32 %29, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8* %34)
  br label %36

36:                                               ; preds = %17
  %37 = load i32, i32* %10, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %10, align 4
  br label %13

39:                                               ; preds = %13
  ret void
}

declare dso_local i32 @ARGSUSED(i32) #1

declare dso_local i32 @FTPGetOneFile2(i32*, i8*, i32*, i32, i32, i32, i32) #1

declare dso_local i32 @FTPPerror(i32*, i32, i32, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
