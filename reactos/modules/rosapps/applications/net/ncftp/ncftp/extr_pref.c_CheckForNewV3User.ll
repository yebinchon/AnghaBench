; ModuleID = '/home/carl/AnghaBench/reactos/modules/rosapps/applications/net/ncftp/ncftp/extr_pref.c_CheckForNewV3User.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rosapps/applications/net/ncftp/ncftp/extr_pref.c_CheckForNewV3User.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stat = type { i32 }

@gNumProgramRuns = common dso_local global i32 0, align 4
@gOurDirectoryPath = common dso_local global i8* null, align 8
@kFirstFileName = common dso_local global i32 0, align 4
@errno = common dso_local global i64 0, align 8
@ENOENT = common dso_local global i64 0, align 8
@gPrefsDirty = common dso_local global i32 0, align 4
@FOPEN_WRITE_TEXT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [144 x i8] c"# NcFTP uses this file to mark that you have run it before, and that you do not\0A# need any special first-time instructions or setup.\0A#\0Aruns=%d\0A\00", align 1
@FOPEN_READ_TEXT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c"runs=\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"%d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CheckForNewV3User() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca %struct.stat, align 4
  %3 = alloca [256 x i8], align 16
  %4 = alloca [256 x i8], align 16
  store i32 0, i32* @gNumProgramRuns, align 4
  %5 = load i8*, i8** @gOurDirectoryPath, align 8
  %6 = getelementptr inbounds i8, i8* %5, i64 0
  %7 = load i8, i8* %6, align 1
  %8 = sext i8 %7 to i32
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %82

10:                                               ; preds = %0
  %11 = getelementptr inbounds [256 x i8], [256 x i8]* %3, i64 0, i64 0
  %12 = load i32, i32* @kFirstFileName, align 4
  %13 = call i32 @OurDirectoryPath(i8* %11, i32 256, i32 %12)
  %14 = getelementptr inbounds [256 x i8], [256 x i8]* %3, i64 0, i64 0
  %15 = call i64 @stat(i8* %14, %struct.stat* %2)
  %16 = icmp slt i64 %15, 0
  br i1 %16, label %17, label %36

17:                                               ; preds = %10
  %18 = load i64, i64* @errno, align 8
  %19 = load i64, i64* @ENOENT, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %36

21:                                               ; preds = %17
  store i32 1, i32* @gNumProgramRuns, align 4
  %22 = load i32, i32* @gPrefsDirty, align 4
  %23 = add nsw i32 %22, 1
  store i32 %23, i32* @gPrefsDirty, align 4
  %24 = getelementptr inbounds [256 x i8], [256 x i8]* %3, i64 0, i64 0
  %25 = load i32, i32* @FOPEN_WRITE_TEXT, align 4
  %26 = call i32* @fopen(i8* %24, i32 %25)
  store i32* %26, i32** %1, align 8
  %27 = load i32*, i32** %1, align 8
  %28 = icmp eq i32* %27, null
  br i1 %28, label %29, label %30

29:                                               ; preds = %21
  br label %82

30:                                               ; preds = %21
  %31 = load i32*, i32** %1, align 8
  %32 = load i32, i32* @gNumProgramRuns, align 4
  %33 = call i32 @fprintf(i32* %31, i8* getelementptr inbounds ([144 x i8], [144 x i8]* @.str, i64 0, i64 0), i32 %32)
  %34 = load i32*, i32** %1, align 8
  %35 = call i32 @fclose(i32* %34)
  br label %81

36:                                               ; preds = %17, %10
  %37 = getelementptr inbounds [256 x i8], [256 x i8]* %3, i64 0, i64 0
  %38 = load i32, i32* @FOPEN_READ_TEXT, align 4
  %39 = call i32* @fopen(i8* %37, i32 %38)
  store i32* %39, i32** %1, align 8
  %40 = load i32*, i32** %1, align 8
  %41 = icmp ne i32* %40, null
  br i1 %41, label %42, label %60

42:                                               ; preds = %36
  br label %43

43:                                               ; preds = %56, %42
  %44 = getelementptr inbounds [256 x i8], [256 x i8]* %4, i64 0, i64 0
  %45 = load i32*, i32** %1, align 8
  %46 = call i32* @fgets(i8* %44, i32 255, i32* %45)
  %47 = icmp ne i32* %46, null
  br i1 %47, label %48, label %57

48:                                               ; preds = %43
  %49 = getelementptr inbounds [256 x i8], [256 x i8]* %4, i64 0, i64 0
  %50 = call i64 @strncmp(i8* %49, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 5)
  %51 = icmp eq i64 %50, 0
  br i1 %51, label %52, label %56

52:                                               ; preds = %48
  %53 = getelementptr inbounds [256 x i8], [256 x i8]* %4, i64 0, i64 0
  %54 = getelementptr inbounds i8, i8* %53, i64 5
  %55 = call i32 @sscanf(i8* %54, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i32* @gNumProgramRuns)
  br label %57

56:                                               ; preds = %48
  br label %43

57:                                               ; preds = %52, %43
  %58 = load i32*, i32** %1, align 8
  %59 = call i32 @fclose(i32* %58)
  br label %60

60:                                               ; preds = %57, %36
  %61 = load i32, i32* @gNumProgramRuns, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* @gNumProgramRuns, align 4
  %63 = load i32, i32* @gNumProgramRuns, align 4
  %64 = icmp eq i32 %63, 1
  br i1 %64, label %65, label %68

65:                                               ; preds = %60
  %66 = load i32, i32* @gPrefsDirty, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* @gPrefsDirty, align 4
  br label %68

68:                                               ; preds = %65, %60
  %69 = getelementptr inbounds [256 x i8], [256 x i8]* %3, i64 0, i64 0
  %70 = load i32, i32* @FOPEN_WRITE_TEXT, align 4
  %71 = call i32* @fopen(i8* %69, i32 %70)
  store i32* %71, i32** %1, align 8
  %72 = load i32*, i32** %1, align 8
  %73 = icmp ne i32* %72, null
  br i1 %73, label %74, label %80

74:                                               ; preds = %68
  %75 = load i32*, i32** %1, align 8
  %76 = load i32, i32* @gNumProgramRuns, align 4
  %77 = call i32 @fprintf(i32* %75, i8* getelementptr inbounds ([144 x i8], [144 x i8]* @.str, i64 0, i64 0), i32 %76)
  %78 = load i32*, i32** %1, align 8
  %79 = call i32 @fclose(i32* %78)
  br label %80

80:                                               ; preds = %74, %68
  br label %81

81:                                               ; preds = %80, %30
  br label %82

82:                                               ; preds = %29, %81, %0
  ret void
}

declare dso_local i32 @OurDirectoryPath(i8*, i32, i32) #1

declare dso_local i64 @stat(i8*, %struct.stat*) #1

declare dso_local i32* @fopen(i8*, i32) #1

declare dso_local i32 @fprintf(i32*, i8*, i32) #1

declare dso_local i32 @fclose(i32*) #1

declare dso_local i32* @fgets(i8*, i32, i32*) #1

declare dso_local i64 @strncmp(i8*, i8*, i32) #1

declare dso_local i32 @sscanf(i8*, i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
