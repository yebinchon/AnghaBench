; ModuleID = '/home/carl/AnghaBench/reactos/modules/rosapps/applications/net/ncftp/ncftp/extr_cmds.c_BGStartCmd.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rosapps/applications/net/ncftp/ncftp/extr_cmds.c_BGStartCmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@gUnusedArg = common dso_local global i32 0, align 4
@gConn = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"Background process started.\0A\00", align 1
@.str.1 = private unnamed_addr constant [60 x i8] c"Watch the \22%s/batchlog\22 file to see how it is progressing.\0A\00", align 1
@gOurDirectoryPath = common dso_local global i8* null, align 8
@.str.2 = private unnamed_addr constant [31 x i8] c"Background processes started.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @BGStartCmd(i32 %0, i8** %1, i32 %2, i32 %3) #0 {
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
  %13 = call i64 (...) @SpoolCheck()
  %14 = icmp slt i64 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %4
  br label %44

16:                                               ; preds = %4
  %17 = load i32, i32* %5, align 4
  %18 = icmp slt i32 %17, 2
  br i1 %18, label %25, label %19

19:                                               ; preds = %16
  %20 = load i8**, i8*** %6, align 8
  %21 = getelementptr inbounds i8*, i8** %20, i64 1
  %22 = load i8*, i8** %21, align 8
  %23 = call i32 @atoi(i8* %22)
  store i32 %23, i32* %10, align 4
  %24 = icmp slt i32 %23, 2
  br i1 %24, label %25, label %30

25:                                               ; preds = %19, %16
  %26 = call i32 @RunBatch(i32 0, i32* @gConn)
  %27 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %28 = load i8*, i8** @gOurDirectoryPath, align 8
  %29 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.1, i64 0, i64 0), i8* %28)
  br label %44

30:                                               ; preds = %19
  store i32 0, i32* %9, align 4
  br label %31

31:                                               ; preds = %37, %30
  %32 = load i32, i32* %9, align 4
  %33 = load i32, i32* %10, align 4
  %34 = icmp slt i32 %32, %33
  br i1 %34, label %35, label %40

35:                                               ; preds = %31
  %36 = call i32 @RunBatch(i32 0, i32* @gConn)
  br label %37

37:                                               ; preds = %35
  %38 = load i32, i32* %9, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %9, align 4
  br label %31

40:                                               ; preds = %31
  %41 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0))
  %42 = load i8*, i8** @gOurDirectoryPath, align 8
  %43 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.1, i64 0, i64 0), i8* %42)
  br label %44

44:                                               ; preds = %15, %40, %25
  ret void
}

declare dso_local i32 @ARGSUSED(i32) #1

declare dso_local i64 @SpoolCheck(...) #1

declare dso_local i32 @atoi(i8*) #1

declare dso_local i32 @RunBatch(i32, i32*) #1

declare dso_local i32 @printf(i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
