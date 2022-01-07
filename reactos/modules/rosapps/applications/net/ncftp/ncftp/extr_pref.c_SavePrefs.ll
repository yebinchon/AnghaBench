; ModuleID = '/home/carl/AnghaBench/reactos/modules/rosapps/applications/net/ncftp/ncftp/extr_pref.c_SavePrefs.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rosapps/applications/net/ncftp/ncftp/extr_pref.c_SavePrefs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i8*, i32 (i32, i32*, i32*)* }

@gPrefsDirty = common dso_local global i64 0, align 8
@kPrefFileName = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [14 x i8] c"tpref%06u.txt\00", align 1
@FOPEN_WRITE_TEXT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"could not save preferences file\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.3 = private unnamed_addr constant [92 x i8] c"# NcFTP 3 preferences file\0A# This file is loaded and overwritten each time NcFTP is run.\0A#\0A\00", align 1
@gNumPrefOpts = common dso_local global i32 0, align 4
@gPrefOpts = common dso_local global %struct.TYPE_2__* null, align 8
@kPrefOptObselete = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [4 x i8] c"%s=\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.6 = private unnamed_addr constant [41 x i8] c"could not finish saving preferences file\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @SavePrefs() #0 {
  %1 = alloca [256 x i8], align 16
  %2 = alloca [256 x i8], align 16
  %3 = alloca [32 x i8], align 16
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = load i64, i64* @gPrefsDirty, align 8
  %7 = icmp eq i64 %6, 0
  br i1 %7, label %8, label %9

8:                                                ; preds = %0
  br label %81

9:                                                ; preds = %0
  %10 = getelementptr inbounds [256 x i8], [256 x i8]* %1, i64 0, i64 0
  %11 = load i8*, i8** @kPrefFileName, align 8
  %12 = call i32 @OurDirectoryPath(i8* %10, i32 256, i8* %11)
  %13 = getelementptr inbounds [32 x i8], [32 x i8]* %3, i64 0, i64 0
  %14 = call i64 (...) @getpid()
  %15 = trunc i64 %14 to i32
  %16 = call i32 @sprintf(i8* %13, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 %15)
  %17 = getelementptr inbounds [256 x i8], [256 x i8]* %2, i64 0, i64 0
  %18 = getelementptr inbounds [32 x i8], [32 x i8]* %3, i64 0, i64 0
  %19 = call i32 @OurDirectoryPath(i8* %17, i32 256, i8* %18)
  %20 = getelementptr inbounds [256 x i8], [256 x i8]* %2, i64 0, i64 0
  %21 = load i32, i32* @FOPEN_WRITE_TEXT, align 4
  %22 = call i32* @fopen(i8* %20, i32 %21)
  store i32* %22, i32** %5, align 8
  %23 = load i32*, i32** %5, align 8
  %24 = icmp eq i32* %23, null
  br i1 %24, label %25, label %27

25:                                               ; preds = %9
  %26 = call i32 @perror(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  br label %81

27:                                               ; preds = %9
  %28 = load i32*, i32** %5, align 8
  %29 = call i32 (i32*, i8*, ...) @fprintf(i32* %28, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([92 x i8], [92 x i8]* @.str.3, i64 0, i64 0))
  store i32 0, i32* %4, align 4
  br label %30

30:                                               ; preds = %64, %27
  %31 = load i32, i32* %4, align 4
  %32 = load i32, i32* @gNumPrefOpts, align 4
  %33 = icmp slt i32 %31, %32
  br i1 %33, label %34, label %67

34:                                               ; preds = %30
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** @gPrefOpts, align 8
  %36 = load i32, i32* %4, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i64 %37
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @kPrefOptObselete, align 8
  %42 = icmp ne i64 %40, %41
  br i1 %42, label %43, label %63

43:                                               ; preds = %34
  %44 = load i32*, i32** %5, align 8
  %45 = load %struct.TYPE_2__*, %struct.TYPE_2__** @gPrefOpts, align 8
  %46 = load i32, i32* %4, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i64 %47
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 1
  %50 = load i8*, i8** %49, align 8
  %51 = call i32 (i32*, i8*, ...) @fprintf(i32* %44, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i8* %50)
  %52 = load %struct.TYPE_2__*, %struct.TYPE_2__** @gPrefOpts, align 8
  %53 = load i32, i32* %4, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i64 %54
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 2
  %57 = load i32 (i32, i32*, i32*)*, i32 (i32, i32*, i32*)** %56, align 8
  %58 = load i32, i32* %4, align 4
  %59 = load i32*, i32** %5, align 8
  %60 = call i32 %57(i32 %58, i32* null, i32* %59)
  %61 = load i32*, i32** %5, align 8
  %62 = call i32 (i32*, i8*, ...) @fprintf(i32* %61, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0))
  br label %63

63:                                               ; preds = %43, %34
  br label %64

64:                                               ; preds = %63
  %65 = load i32, i32* %4, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %4, align 4
  br label %30

67:                                               ; preds = %30
  %68 = load i32*, i32** %5, align 8
  %69 = call i32 @fclose(i32* %68)
  %70 = getelementptr inbounds [256 x i8], [256 x i8]* %1, i64 0, i64 0
  %71 = call i32 @unlink(i8* %70)
  %72 = getelementptr inbounds [256 x i8], [256 x i8]* %2, i64 0, i64 0
  %73 = getelementptr inbounds [256 x i8], [256 x i8]* %1, i64 0, i64 0
  %74 = call i64 @rename(i8* %72, i8* %73)
  %75 = icmp slt i64 %74, 0
  br i1 %75, label %76, label %80

76:                                               ; preds = %67
  %77 = call i32 @perror(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.6, i64 0, i64 0))
  %78 = getelementptr inbounds [256 x i8], [256 x i8]* %2, i64 0, i64 0
  %79 = call i32 @unlink(i8* %78)
  br label %80

80:                                               ; preds = %76, %67
  br label %81

81:                                               ; preds = %8, %80, %25
  ret void
}

declare dso_local i32 @OurDirectoryPath(i8*, i32, i8*) #1

declare dso_local i32 @sprintf(i8*, i8*, i32) #1

declare dso_local i64 @getpid(...) #1

declare dso_local i32* @fopen(i8*, i32) #1

declare dso_local i32 @perror(i8*) #1

declare dso_local i32 @fprintf(i32*, i8*, ...) #1

declare dso_local i32 @fclose(i32*) #1

declare dso_local i32 @unlink(i8*) #1

declare dso_local i64 @rename(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
