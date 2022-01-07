; ModuleID = '/home/carl/AnghaBench/reactos/modules/rosapps/applications/net/ncftp/ncftp/extr_bookmark.c_OpenTmpBookmarkFile.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rosapps/applications/net/ncftp/ncftp/extr_bookmark.c_OpenTmpBookmarkFile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@gOurDirectoryPath = common dso_local global i8* null, align 8
@kBookmarkFileName = common dso_local global i32 0, align 4
@kTmpBookmarkFileName = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"-%u.txt\00", align 1
@FOPEN_WRITE_TEXT = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"Could not save bookmark.\0A\00", align 1
@.str.2 = private unnamed_addr constant [57 x i8] c"NcFTP bookmark-file version: %d\0ANumber of bookmarks: %d\0A\00", align 1
@kBookmarkVersion = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [57 x i8] c"NcFTP bookmark-file version: %d\0ANumber of bookmarks: ??\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @OpenTmpBookmarkFile(i32 %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca [32 x i8], align 16
  %6 = alloca [256 x i8], align 16
  %7 = alloca [256 x i8], align 16
  store i32 %0, i32* %3, align 4
  %8 = load i8*, i8** @gOurDirectoryPath, align 8
  %9 = getelementptr inbounds i8, i8* %8, i64 0
  %10 = load i8, i8* %9, align 1
  %11 = sext i8 %10 to i32
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %1
  store i32* null, i32** %2, align 8
  br label %74

14:                                               ; preds = %1
  %15 = getelementptr inbounds [256 x i8], [256 x i8]* %7, i64 0, i64 0
  %16 = load i32, i32* @kBookmarkFileName, align 4
  %17 = call i32 @OurDirectoryPath(i8* %15, i32 256, i32 %16)
  %18 = getelementptr inbounds [256 x i8], [256 x i8]* %6, i64 0, i64 0
  %19 = load i32, i32* @kTmpBookmarkFileName, align 4
  %20 = call i32 @OurDirectoryPath(i8* %18, i32 256, i32 %19)
  %21 = getelementptr inbounds [32 x i8], [32 x i8]* %5, i64 0, i64 0
  %22 = call i64 (...) @getpid()
  %23 = trunc i64 %22 to i32
  %24 = call i32 @sprintf(i8* %21, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 %23)
  %25 = getelementptr inbounds [256 x i8], [256 x i8]* %6, i64 0, i64 0
  %26 = getelementptr inbounds [32 x i8], [32 x i8]* %5, i64 0, i64 0
  %27 = call i32 @STRNCAT(i8* %25, i8* %26)
  %28 = getelementptr inbounds [256 x i8], [256 x i8]* %6, i64 0, i64 0
  %29 = load i32, i32* @FOPEN_WRITE_TEXT, align 4
  %30 = call i32* @fopen(i8* %28, i32 %29)
  store i32* %30, i32** %4, align 8
  %31 = load i32*, i32** %4, align 8
  %32 = icmp eq i32* %31, null
  br i1 %32, label %33, label %38

33:                                               ; preds = %14
  %34 = load i32, i32* @stderr, align 4
  %35 = call i64 (i32, i8*, ...) @fprintf(i32 %34, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  %36 = getelementptr inbounds [256 x i8], [256 x i8]* %6, i64 0, i64 0
  %37 = call i32 @perror(i8* %36)
  store i32* null, i32** %2, align 8
  br label %74

38:                                               ; preds = %14
  %39 = getelementptr inbounds [256 x i8], [256 x i8]* %6, i64 0, i64 0
  %40 = call i32 @_chmod(i8* %39, i32 384)
  %41 = load i32, i32* %3, align 4
  %42 = icmp sgt i32 %41, 0
  br i1 %42, label %43, label %58

43:                                               ; preds = %38
  %44 = load i32*, i32** %4, align 8
  %45 = ptrtoint i32* %44 to i32
  %46 = load i32, i32* @kBookmarkVersion, align 4
  %47 = load i32, i32* %3, align 4
  %48 = call i64 (i32, i8*, ...) @fprintf(i32 %45, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.2, i64 0, i64 0), i32 %46, i32 %47)
  %49 = icmp slt i64 %48, 0
  br i1 %49, label %50, label %57

50:                                               ; preds = %43
  %51 = load i32, i32* @stderr, align 4
  %52 = call i64 (i32, i8*, ...) @fprintf(i32 %51, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  %53 = getelementptr inbounds [256 x i8], [256 x i8]* %6, i64 0, i64 0
  %54 = call i32 @perror(i8* %53)
  %55 = load i32*, i32** %4, align 8
  %56 = call i32 @fclose(i32* %55)
  store i32* null, i32** %2, align 8
  br label %74

57:                                               ; preds = %43
  br label %72

58:                                               ; preds = %38
  %59 = load i32*, i32** %4, align 8
  %60 = ptrtoint i32* %59 to i32
  %61 = load i32, i32* @kBookmarkVersion, align 4
  %62 = call i64 (i32, i8*, ...) @fprintf(i32 %60, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.3, i64 0, i64 0), i32 %61)
  %63 = icmp slt i64 %62, 0
  br i1 %63, label %64, label %71

64:                                               ; preds = %58
  %65 = load i32, i32* @stderr, align 4
  %66 = call i64 (i32, i8*, ...) @fprintf(i32 %65, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  %67 = getelementptr inbounds [256 x i8], [256 x i8]* %6, i64 0, i64 0
  %68 = call i32 @perror(i8* %67)
  %69 = load i32*, i32** %4, align 8
  %70 = call i32 @fclose(i32* %69)
  store i32* null, i32** %2, align 8
  br label %74

71:                                               ; preds = %58
  br label %72

72:                                               ; preds = %71, %57
  %73 = load i32*, i32** %4, align 8
  store i32* %73, i32** %2, align 8
  br label %74

74:                                               ; preds = %72, %64, %50, %33, %13
  %75 = load i32*, i32** %2, align 8
  ret i32* %75
}

declare dso_local i32 @OurDirectoryPath(i8*, i32, i32) #1

declare dso_local i32 @sprintf(i8*, i8*, i32) #1

declare dso_local i64 @getpid(...) #1

declare dso_local i32 @STRNCAT(i8*, i8*) #1

declare dso_local i32* @fopen(i8*, i32) #1

declare dso_local i64 @fprintf(i32, i8*, ...) #1

declare dso_local i32 @perror(i8*) #1

declare dso_local i32 @_chmod(i8*, i32) #1

declare dso_local i32 @fclose(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
