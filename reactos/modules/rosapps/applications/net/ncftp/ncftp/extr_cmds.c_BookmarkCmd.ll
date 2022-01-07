; ModuleID = '/home/carl/AnghaBench/reactos/modules/rosapps/applications/net/ncftp/ncftp/extr_cmds.c_BookmarkCmd.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rosapps/applications/net/ncftp/ncftp/extr_cmds.c_BookmarkCmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i8* }

@gUnusedArg = common dso_local global i32 0, align 4
@gOurDirectoryPath = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [62 x i8] c"Sorry, configuration information is not saved for this user.\0A\00", align 1
@gBm = common dso_local global %struct.TYPE_3__ zeroinitializer, align 8
@.str.1 = private unnamed_addr constant [12 x i8] c"Nevermind.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @BookmarkCmd(i32 %0, i8** %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8**, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i8** %1, i8*** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %9 = load i32, i32* @gUnusedArg, align 4
  %10 = call i32 @ARGSUSED(i32 %9)
  %11 = load i8*, i8** @gOurDirectoryPath, align 8
  %12 = getelementptr inbounds i8, i8* %11, i64 0
  %13 = load i8, i8* %12, align 1
  %14 = sext i8 %13 to i32
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %4
  %17 = call i32 @printf(i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str, i64 0, i64 0))
  br label %54

18:                                               ; preds = %4
  %19 = load i32, i32* %5, align 4
  %20 = icmp sle i32 %19, 1
  br i1 %20, label %29, label %21

21:                                               ; preds = %18
  %22 = load i8**, i8*** %6, align 8
  %23 = getelementptr inbounds i8*, i8** %22, i64 1
  %24 = load i8*, i8** %23, align 8
  %25 = getelementptr inbounds i8, i8* %24, i64 0
  %26 = load i8, i8* %25, align 1
  %27 = sext i8 %26 to i32
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %46

29:                                               ; preds = %21, %18
  %30 = load i8*, i8** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @gBm, i32 0, i32 0), align 8
  %31 = getelementptr inbounds i8, i8* %30, i64 0
  %32 = load i8, i8* %31, align 1
  %33 = sext i8 %32 to i32
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %43

35:                                               ; preds = %29
  %36 = call i64 @PromptForBookmarkName(%struct.TYPE_3__* @gBm)
  %37 = icmp slt i64 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %35
  %39 = call i32 @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0))
  br label %42

40:                                               ; preds = %35
  %41 = call i32 (...) @SaveCurrentAsBookmark()
  br label %42

42:                                               ; preds = %40, %38
  br label %45

43:                                               ; preds = %29
  %44 = call i32 (...) @SaveCurrentAsBookmark()
  br label %45

45:                                               ; preds = %43, %42
  br label %53

46:                                               ; preds = %21
  %47 = load i8*, i8** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @gBm, i32 0, i32 0), align 8
  %48 = load i8**, i8*** %6, align 8
  %49 = getelementptr inbounds i8*, i8** %48, i64 1
  %50 = load i8*, i8** %49, align 8
  %51 = call i32 @STRNCPY(i8* %47, i8* %50)
  %52 = call i32 (...) @SaveCurrentAsBookmark()
  br label %53

53:                                               ; preds = %46, %45
  br label %54

54:                                               ; preds = %53, %16
  ret void
}

declare dso_local i32 @ARGSUSED(i32) #1

declare dso_local i32 @printf(i8*) #1

declare dso_local i64 @PromptForBookmarkName(%struct.TYPE_3__*) #1

declare dso_local i32 @SaveCurrentAsBookmark(...) #1

declare dso_local i32 @STRNCPY(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
