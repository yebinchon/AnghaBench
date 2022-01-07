; ModuleID = '/home/carl/AnghaBench/reactos/modules/rosapps/applications/net/ncftp/libncftp/extr_cmds.c_FTPFileType.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rosapps/applications/net/ncftp/libncftp/extr_cmds.c_FTPFileType.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, i8*, i32, i32 }
%struct.TYPE_9__ = type { i32 }

@kErrBadParameter = common dso_local global i32 0, align 4
@kLibraryMagic = common dso_local global i32 0, align 4
@kErrBadMagic = common dso_local global i32 0, align 4
@kNoErr = common dso_local global i32 0, align 4
@kErrNoSuchFileOrDirectory = common dso_local global i32 0, align 4
@kErrFileExistsButCannotDetermineType = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @FTPFileType(%struct.TYPE_10__* %0, i8* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_10__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_9__, align 4
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32* %2, i32** %7, align 8
  %10 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %11 = icmp eq %struct.TYPE_10__* %10, null
  br i1 %11, label %12, label %14

12:                                               ; preds = %3
  %13 = load i32, i32* @kErrBadParameter, align 4
  store i32 %13, i32* %4, align 4
  br label %92

14:                                               ; preds = %3
  %15 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %16 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %15, i32 0, i32 3
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @kLibraryMagic, align 4
  %19 = call i64 @strcmp(i32 %17, i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %14
  %22 = load i32, i32* @kErrBadMagic, align 4
  store i32 %22, i32* %4, align 4
  br label %92

23:                                               ; preds = %14
  %24 = load i8*, i8** %6, align 8
  %25 = icmp eq i8* %24, null
  br i1 %25, label %32, label %26

26:                                               ; preds = %23
  %27 = load i8*, i8** %6, align 8
  %28 = getelementptr inbounds i8, i8* %27, i64 0
  %29 = load i8, i8* %28, align 1
  %30 = sext i8 %29 to i32
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %37

32:                                               ; preds = %26, %23
  %33 = load i32, i32* @kErrBadParameter, align 4
  %34 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %35 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %34, i32 0, i32 0
  store i32 %33, i32* %35, align 8
  %36 = load i32, i32* @kErrBadParameter, align 4
  store i32 %36, i32* %4, align 4
  br label %92

37:                                               ; preds = %26
  %38 = load i32*, i32** %7, align 8
  %39 = icmp eq i32* %38, null
  br i1 %39, label %40, label %45

40:                                               ; preds = %37
  %41 = load i32, i32* @kErrBadParameter, align 4
  %42 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %43 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %42, i32 0, i32 0
  store i32 %41, i32* %43, align 8
  %44 = load i32, i32* @kErrBadParameter, align 4
  store i32 %44, i32* %4, align 4
  br label %92

45:                                               ; preds = %37
  %46 = load i32*, i32** %7, align 8
  store i32 0, i32* %46, align 4
  %47 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %48 = load i8*, i8** %6, align 8
  %49 = call i32 @FTPMListOneFile(%struct.TYPE_10__* %47, i8* %48, %struct.TYPE_9__* %9)
  store i32 %49, i32* %8, align 4
  %50 = load i32, i32* %8, align 4
  %51 = load i32, i32* @kNoErr, align 4
  %52 = icmp eq i32 %50, %51
  br i1 %52, label %53, label %58

53:                                               ; preds = %45
  %54 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %9, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load i32*, i32** %7, align 8
  store i32 %55, i32* %56, align 4
  %57 = load i32, i32* @kNoErr, align 4
  store i32 %57, i32* %4, align 4
  br label %92

58:                                               ; preds = %45
  %59 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %60 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %61 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %60, i32 0, i32 1
  %62 = load i8*, i8** %61, align 8
  %63 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %64 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 8
  %66 = call i32 @FTPGetCWD(%struct.TYPE_10__* %59, i8* %62, i32 %65)
  %67 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %68 = load i8*, i8** %6, align 8
  %69 = call i32 @FTPChdir(%struct.TYPE_10__* %67, i8* %68)
  store i32 %69, i32* %8, align 4
  %70 = load i32, i32* %8, align 4
  %71 = load i32, i32* @kNoErr, align 4
  %72 = icmp eq i32 %70, %71
  br i1 %72, label %73, label %81

73:                                               ; preds = %58
  %74 = load i32*, i32** %7, align 8
  store i32 100, i32* %74, align 4
  %75 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %76 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %77 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %76, i32 0, i32 1
  %78 = load i8*, i8** %77, align 8
  %79 = call i32 @FTPChdir(%struct.TYPE_10__* %75, i8* %78)
  %80 = load i32, i32* @kNoErr, align 4
  store i32 %80, i32* %4, align 4
  br label %92

81:                                               ; preds = %58
  %82 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %83 = load i8*, i8** %6, align 8
  %84 = call i32 @FTPFileExists2(%struct.TYPE_10__* %82, i8* %83, i32 1, i32 1, i32 0, i32 1, i32 1)
  store i32 %84, i32* %8, align 4
  %85 = load i32, i32* %8, align 4
  %86 = load i32, i32* @kErrNoSuchFileOrDirectory, align 4
  %87 = icmp ne i32 %85, %86
  br i1 %87, label %88, label %90

88:                                               ; preds = %81
  %89 = load i32, i32* @kErrFileExistsButCannotDetermineType, align 4
  store i32 %89, i32* %8, align 4
  br label %90

90:                                               ; preds = %88, %81
  %91 = load i32, i32* %8, align 4
  store i32 %91, i32* %4, align 4
  br label %92

92:                                               ; preds = %90, %73, %53, %40, %32, %21, %12
  %93 = load i32, i32* %4, align 4
  ret i32 %93
}

declare dso_local i64 @strcmp(i32, i32) #1

declare dso_local i32 @FTPMListOneFile(%struct.TYPE_10__*, i8*, %struct.TYPE_9__*) #1

declare dso_local i32 @FTPGetCWD(%struct.TYPE_10__*, i8*, i32) #1

declare dso_local i32 @FTPChdir(%struct.TYPE_10__*, i8*) #1

declare dso_local i32 @FTPFileExists2(%struct.TYPE_10__*, i8*, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
