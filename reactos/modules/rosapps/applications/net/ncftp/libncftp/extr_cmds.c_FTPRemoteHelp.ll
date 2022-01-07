; ModuleID = '/home/carl/AnghaBench/reactos/modules/rosapps/applications/net/ncftp/libncftp/extr_cmds.c_FTPRemoteHelp.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rosapps/applications/net/ncftp/libncftp/extr_cmds.c_FTPRemoteHelp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i8*, i32 }
%struct.TYPE_10__ = type { i32 }

@kErrBadParameter = common dso_local global i32 0, align 4
@kLibraryMagic = common dso_local global i32 0, align 4
@kErrBadMagic = common dso_local global i32 0, align 4
@kErrMallocFailed = common dso_local global i8* null, align 8
@kDontPerror = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"Malloc failed.\0A\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"HELP\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"HELP %s\00", align 1
@kNoErr = common dso_local global i32 0, align 4
@kErrHELPFailed = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @FTPRemoteHelp(%struct.TYPE_11__* %0, i8* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_11__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_10__*, align 8
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32* %2, i32** %7, align 8
  %10 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %11 = icmp eq %struct.TYPE_11__* %10, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %3
  %13 = load i32*, i32** %7, align 8
  %14 = icmp eq i32* %13, null
  br i1 %14, label %15, label %17

15:                                               ; preds = %12, %3
  %16 = load i32, i32* @kErrBadParameter, align 4
  store i32 %16, i32* %4, align 4
  br label %100

17:                                               ; preds = %12
  %18 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %19 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 8
  %21 = load i32, i32* @kLibraryMagic, align 4
  %22 = call i64 @strcmp(i32 %20, i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %17
  %25 = load i32, i32* @kErrBadMagic, align 4
  store i32 %25, i32* %4, align 4
  br label %100

26:                                               ; preds = %17
  %27 = load i32*, i32** %7, align 8
  %28 = call i32 @InitLineList(i32* %27)
  %29 = call %struct.TYPE_10__* (...) @InitResponse()
  store %struct.TYPE_10__* %29, %struct.TYPE_10__** %9, align 8
  %30 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %31 = icmp eq %struct.TYPE_10__* %30, null
  br i1 %31, label %32, label %41

32:                                               ; preds = %26
  %33 = load i8*, i8** @kErrMallocFailed, align 8
  %34 = ptrtoint i8* %33 to i32
  store i32 %34, i32* %8, align 4
  %35 = load i8*, i8** @kErrMallocFailed, align 8
  %36 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %37 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %36, i32 0, i32 0
  store i8* %35, i8** %37, align 8
  %38 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %39 = load i32, i32* @kDontPerror, align 4
  %40 = call i32 @Error(%struct.TYPE_11__* %38, i32 %39, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  br label %98

41:                                               ; preds = %26
  %42 = load i8*, i8** %6, align 8
  %43 = icmp eq i8* %42, null
  br i1 %43, label %49, label %44

44:                                               ; preds = %41
  %45 = load i8*, i8** %6, align 8
  %46 = load i8, i8* %45, align 1
  %47 = sext i8 %46 to i32
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %49, label %53

49:                                               ; preds = %44, %41
  %50 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %51 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %52 = call i32 (%struct.TYPE_11__*, %struct.TYPE_10__*, i8*, ...) @RCmd(%struct.TYPE_11__* %50, %struct.TYPE_10__* %51, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  store i32 %52, i32* %8, align 4
  br label %58

53:                                               ; preds = %44
  %54 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %55 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %56 = load i8*, i8** %6, align 8
  %57 = call i32 (%struct.TYPE_11__*, %struct.TYPE_10__*, i8*, ...) @RCmd(%struct.TYPE_11__* %54, %struct.TYPE_10__* %55, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i8* %56)
  store i32 %57, i32* %8, align 4
  br label %58

58:                                               ; preds = %53, %49
  %59 = load i32, i32* %8, align 4
  %60 = icmp slt i32 %59, 0
  br i1 %60, label %61, label %66

61:                                               ; preds = %58
  %62 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %63 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %64 = call i32 @DoneWithResponse(%struct.TYPE_11__* %62, %struct.TYPE_10__* %63)
  %65 = load i32, i32* %8, align 4
  store i32 %65, i32* %4, align 4
  br label %100

66:                                               ; preds = %58
  %67 = load i32, i32* %8, align 4
  %68 = icmp eq i32 %67, 2
  br i1 %68, label %69, label %87

69:                                               ; preds = %66
  %70 = load i32*, i32** %7, align 8
  %71 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %72 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %71, i32 0, i32 0
  %73 = call i64 @CopyLineList(i32* %70, i32* %72)
  %74 = icmp slt i64 %73, 0
  br i1 %74, label %75, label %84

75:                                               ; preds = %69
  %76 = load i8*, i8** @kErrMallocFailed, align 8
  %77 = ptrtoint i8* %76 to i32
  store i32 %77, i32* %8, align 4
  %78 = load i8*, i8** @kErrMallocFailed, align 8
  %79 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %80 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %79, i32 0, i32 0
  store i8* %78, i8** %80, align 8
  %81 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %82 = load i32, i32* @kDontPerror, align 4
  %83 = call i32 @Error(%struct.TYPE_11__* %81, i32 %82, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  br label %86

84:                                               ; preds = %69
  %85 = load i32, i32* @kNoErr, align 4
  store i32 %85, i32* %8, align 4
  br label %86

86:                                               ; preds = %84, %75
  br label %93

87:                                               ; preds = %66
  %88 = load i8*, i8** @kErrHELPFailed, align 8
  %89 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %90 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %89, i32 0, i32 0
  store i8* %88, i8** %90, align 8
  %91 = load i8*, i8** @kErrHELPFailed, align 8
  %92 = ptrtoint i8* %91 to i32
  store i32 %92, i32* %8, align 4
  br label %93

93:                                               ; preds = %87, %86
  br label %94

94:                                               ; preds = %93
  %95 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %96 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %97 = call i32 @DoneWithResponse(%struct.TYPE_11__* %95, %struct.TYPE_10__* %96)
  br label %98

98:                                               ; preds = %94, %32
  %99 = load i32, i32* %8, align 4
  store i32 %99, i32* %4, align 4
  br label %100

100:                                              ; preds = %98, %61, %24, %15
  %101 = load i32, i32* %4, align 4
  ret i32 %101
}

declare dso_local i64 @strcmp(i32, i32) #1

declare dso_local i32 @InitLineList(i32*) #1

declare dso_local %struct.TYPE_10__* @InitResponse(...) #1

declare dso_local i32 @Error(%struct.TYPE_11__*, i32, i8*) #1

declare dso_local i32 @RCmd(%struct.TYPE_11__*, %struct.TYPE_10__*, i8*, ...) #1

declare dso_local i32 @DoneWithResponse(%struct.TYPE_11__*, %struct.TYPE_10__*) #1

declare dso_local i64 @CopyLineList(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
