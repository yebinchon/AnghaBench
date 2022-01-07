; ModuleID = '/home/carl/AnghaBench/reactos/modules/rosapps/applications/net/ncftp/ncftp/extr_cmds.c_SaveUnsavedBookmark.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rosapps/applications/net/ncftp/ncftp/extr_cmds.c_SaveUnsavedBookmark.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }

@gConfirmClose = common dso_local global i64 0, align 8
@gLoadedBm = common dso_local global i32 0, align 4
@gOurDirectoryPath = common dso_local global i8* null, align 8
@gBm = common dso_local global %struct.TYPE_5__ zeroinitializer, align 4
@.str = private unnamed_addr constant [48 x i8] c"\0A\0AYou have not saved a bookmark for this site.\0A\00", align 1
@.str.1 = private unnamed_addr constant [45 x i8] c"\0AWould you like to save a bookmark to:\0A\09%s\0A\0A\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"Save? (yes/no) \00", align 1
@stdin = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [76 x i8] c"Not saved.  (If you don't want to be asked this, \22set confirm-close no\22)\0A\0A\0A\00", align 1
@.str.4 = private unnamed_addr constant [12 x i8] c"Nevermind.\0A\00", align 1
@gAutoSaveChangesToExistingBookmarks = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @SaveUnsavedBookmark() #0 {
  %1 = alloca [256 x i8], align 16
  %2 = alloca [64 x i8], align 16
  %3 = alloca i32, align 4
  %4 = load i64, i64* @gConfirmClose, align 8
  %5 = icmp ne i64 %4, 0
  br i1 %5, label %6, label %68

6:                                                ; preds = %0
  %7 = load i32, i32* @gLoadedBm, align 4
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %68

9:                                                ; preds = %6
  %10 = load i8*, i8** @gOurDirectoryPath, align 8
  %11 = getelementptr inbounds i8, i8* %10, i64 0
  %12 = load i8, i8* %11, align 1
  %13 = sext i8 %12 to i32
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %68

15:                                               ; preds = %9
  %16 = call i32 @FillBookmarkInfo(%struct.TYPE_5__* @gBm)
  %17 = getelementptr inbounds [256 x i8], [256 x i8]* %1, i64 0, i64 0
  %18 = call i32 @BookmarkToURL(%struct.TYPE_5__* @gBm, i8* %17, i32 256)
  %19 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0))
  %20 = call i32 @sleep(i32 1)
  %21 = getelementptr inbounds [256 x i8], [256 x i8]* %1, i64 0, i64 0
  %22 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0), i8* %21)
  br label %23

23:                                               ; preds = %53, %15
  %24 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0))
  %25 = getelementptr inbounds [64 x i8], [64 x i8]* %2, i64 0, i64 0
  %26 = call i32 @memset(i8* %25, i32 0, i32 64)
  %27 = load i32, i32* @stdin, align 4
  %28 = call i32 @fflush(i32 %27)
  %29 = getelementptr inbounds [64 x i8], [64 x i8]* %2, i64 0, i64 0
  %30 = load i32, i32* @stdin, align 4
  %31 = call i32* @fgets(i8* %29, i32 63, i32 %30)
  %32 = icmp eq i32* %31, null
  br i1 %32, label %33, label %34

33:                                               ; preds = %23
  store i32 110, i32* %3, align 4
  br label %54

34:                                               ; preds = %23
  %35 = getelementptr inbounds [64 x i8], [64 x i8]* %2, i64 0, i64 0
  %36 = load i8, i8* %35, align 16
  %37 = sext i8 %36 to i32
  store i32 %37, i32* %3, align 4
  %38 = load i32, i32* %3, align 4
  %39 = icmp eq i32 %38, 110
  br i1 %39, label %43, label %40

40:                                               ; preds = %34
  %41 = load i32, i32* %3, align 4
  %42 = icmp eq i32 %41, 121
  br i1 %42, label %43, label %44

43:                                               ; preds = %40, %34
  br label %54

44:                                               ; preds = %40
  %45 = load i32, i32* %3, align 4
  %46 = icmp eq i32 %45, 78
  br i1 %46, label %47, label %48

47:                                               ; preds = %44
  store i32 110, i32* %3, align 4
  br label %54

48:                                               ; preds = %44
  %49 = load i32, i32* %3, align 4
  %50 = icmp eq i32 %49, 89
  br i1 %50, label %51, label %52

51:                                               ; preds = %48
  store i32 121, i32* %3, align 4
  br label %54

52:                                               ; preds = %48
  br label %53

53:                                               ; preds = %52
  br label %23

54:                                               ; preds = %51, %47, %43, %33
  %55 = load i32, i32* %3, align 4
  %56 = icmp eq i32 %55, 110
  br i1 %56, label %57, label %59

57:                                               ; preds = %54
  %58 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str.3, i64 0, i64 0))
  br label %67

59:                                               ; preds = %54
  %60 = call i64 @PromptForBookmarkName(%struct.TYPE_5__* @gBm)
  %61 = icmp slt i64 %60, 0
  br i1 %61, label %62, label %64

62:                                               ; preds = %59
  %63 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0))
  br label %66

64:                                               ; preds = %59
  %65 = call i32 (...) @SaveCurrentAsBookmark()
  br label %66

66:                                               ; preds = %64, %62
  br label %67

67:                                               ; preds = %66, %57
  br label %89

68:                                               ; preds = %9, %6, %0
  %69 = load i32, i32* @gLoadedBm, align 4
  %70 = icmp eq i32 %69, 1
  br i1 %70, label %71, label %88

71:                                               ; preds = %68
  %72 = load i8*, i8** @gOurDirectoryPath, align 8
  %73 = getelementptr inbounds i8, i8* %72, i64 0
  %74 = load i8, i8* %73, align 1
  %75 = sext i8 %74 to i32
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %88

77:                                               ; preds = %71
  %78 = load i8*, i8** @gOurDirectoryPath, align 8
  %79 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @gBm, i32 0, i32 0), align 4
  %80 = call i64 @strcmp(i8* %78, i32 %79)
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %88

82:                                               ; preds = %77
  %83 = load i64, i64* @gAutoSaveChangesToExistingBookmarks, align 8
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %87

85:                                               ; preds = %82
  %86 = call i32 (...) @SaveCurrentAsBookmark()
  br label %87

87:                                               ; preds = %85, %82
  br label %88

88:                                               ; preds = %87, %77, %71, %68
  br label %89

89:                                               ; preds = %88, %67
  ret void
}

declare dso_local i32 @FillBookmarkInfo(%struct.TYPE_5__*) #1

declare dso_local i32 @BookmarkToURL(%struct.TYPE_5__*, i8*, i32) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @sleep(i32) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i32 @fflush(i32) #1

declare dso_local i32* @fgets(i8*, i32, i32) #1

declare dso_local i64 @PromptForBookmarkName(%struct.TYPE_5__*) #1

declare dso_local i32 @SaveCurrentAsBookmark(...) #1

declare dso_local i64 @strcmp(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
