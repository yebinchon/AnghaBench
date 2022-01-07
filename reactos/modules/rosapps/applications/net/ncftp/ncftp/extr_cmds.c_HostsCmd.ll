; ModuleID = '/home/carl/AnghaBench/reactos/modules/rosapps/applications/net/ncftp/ncftp/extr_cmds.c_HostsCmd.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rosapps/applications/net/ncftp/ncftp/extr_cmds.c_HostsCmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@gUnusedArg = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"open\00", align 1
@.str.1 = private unnamed_addr constant [39 x i8] c"You haven't bookmarked any FTP sites.\0A\00", align 1
@.str.2 = private unnamed_addr constant [113 x i8] c"Before closing a site, you can use the \22bookmark\22 command to save the current\0Ahost and directory for next time.\0A\00", align 1
@.str.3 = private unnamed_addr constant [75 x i8] c"\0ATo use a bookmark, use the \22open\22 command with the name of the bookmark.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @HostsCmd(i32 %0, i8** %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8**, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca [3 x i8*], align 16
  %10 = alloca [128 x i8], align 16
  store i32 %0, i32* %5, align 4
  store i8** %1, i8*** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %11 = load i32, i32* @gUnusedArg, align 4
  %12 = call i32 @ARGSUSED(i32 %11)
  %13 = load i32, i32* %5, align 4
  %14 = icmp eq i32 %13, 1
  br i1 %14, label %15, label %32

15:                                               ; preds = %4
  %16 = getelementptr inbounds [128 x i8], [128 x i8]* %10, i64 0, i64 0
  %17 = call i64 @RunBookmarkEditor(i8* %16, i32 128)
  %18 = icmp eq i64 %17, 0
  br i1 %18, label %19, label %32

19:                                               ; preds = %15
  %20 = getelementptr inbounds [128 x i8], [128 x i8]* %10, i64 0, i64 0
  %21 = load i8, i8* %20, align 16
  %22 = sext i8 %21 to i32
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %31

24:                                               ; preds = %19
  %25 = getelementptr inbounds [3 x i8*], [3 x i8*]* %9, i64 0, i64 0
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8** %25, align 16
  %26 = getelementptr inbounds [128 x i8], [128 x i8]* %10, i64 0, i64 0
  %27 = getelementptr inbounds [3 x i8*], [3 x i8*]* %9, i64 0, i64 1
  store i8* %26, i8** %27, align 8
  %28 = getelementptr inbounds [3 x i8*], [3 x i8*]* %9, i64 0, i64 2
  store i8* null, i8** %28, align 16
  %29 = getelementptr inbounds [3 x i8*], [3 x i8*]* %9, i64 0, i64 0
  %30 = call i32 @OpenCmd(i32 2, i8** %29, i32 0, i32 0)
  br label %31

31:                                               ; preds = %24, %19
  br label %40

32:                                               ; preds = %15, %4
  %33 = call i64 (...) @PrintHosts()
  %34 = icmp sle i64 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %32
  %36 = call i32 @printf(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0))
  %37 = call i32 @printf(i8* getelementptr inbounds ([113 x i8], [113 x i8]* @.str.2, i64 0, i64 0))
  br label %40

38:                                               ; preds = %32
  %39 = call i32 @printf(i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str.3, i64 0, i64 0))
  br label %40

40:                                               ; preds = %31, %38, %35
  ret void
}

declare dso_local i32 @ARGSUSED(i32) #1

declare dso_local i64 @RunBookmarkEditor(i8*, i32) #1

declare dso_local i32 @OpenCmd(i32, i8**, i32, i32) #1

declare dso_local i64 @PrintHosts(...) #1

declare dso_local i32 @printf(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
