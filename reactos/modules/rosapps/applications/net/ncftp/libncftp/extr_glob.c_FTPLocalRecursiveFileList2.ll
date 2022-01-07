; ModuleID = '/home/carl/AnghaBench/reactos/modules/rosapps/applications/net/ncftp/libncftp/extr_glob.c_FTPLocalRecursiveFileList2.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rosapps/applications/net/ncftp/libncftp/extr_glob.c_FTPLocalRecursiveFileList2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i8*, %struct.TYPE_6__* }
%struct.Stat = type { i64, i32, i32 }
%struct.TYPE_8__ = type { i8, i32*, i32*, i64, i32, i8*, i32*, i8* }

@.str = private unnamed_addr constant [2 x i8] c".\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@kDoPerror = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [20 x i8] c"could not stat %s.\0A\00", align 1
@kNoErr = common dso_local global i32 0, align 4
@_MAX_PATH = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @FTPLocalRecursiveFileList2(i32 %0, %struct.TYPE_7__* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_7__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_6__*, align 8
  %10 = alloca %struct.TYPE_6__*, align 8
  %11 = alloca [512 x i8], align 16
  %12 = alloca [512 x i8], align 16
  %13 = alloca %struct.Stat, align 8
  %14 = alloca %struct.TYPE_8__, align 8
  %15 = alloca i8*, align 8
  store i32 %0, i32* %5, align 4
  store %struct.TYPE_7__* %1, %struct.TYPE_7__** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %16 = load i32, i32* %7, align 4
  %17 = call i32 @InitFileInfoList(i32 %16)
  %18 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %19 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i32 0, i32 0
  %20 = load %struct.TYPE_6__*, %struct.TYPE_6__** %19, align 8
  store %struct.TYPE_6__* %20, %struct.TYPE_6__** %9, align 8
  br label %21

21:                                               ; preds = %109, %4
  %22 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %23 = icmp ne %struct.TYPE_6__* %22, null
  br i1 %23, label %24, label %111

24:                                               ; preds = %21
  %25 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 1
  %27 = load %struct.TYPE_6__*, %struct.TYPE_6__** %26, align 8
  store %struct.TYPE_6__* %27, %struct.TYPE_6__** %10, align 8
  %28 = getelementptr inbounds [512 x i8], [512 x i8]* %11, i64 0, i64 0
  %29 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 0
  %31 = load i8*, i8** %30, align 8
  %32 = call i32 @STRNCPY(i8* %28, i8* %31)
  %33 = load i32, i32* %8, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %49, label %35

35:                                               ; preds = %24
  %36 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 0
  %38 = load i8*, i8** %37, align 8
  %39 = call i64 @strcmp(i8* %38, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %40 = icmp eq i64 %39, 0
  br i1 %40, label %49, label %41

41:                                               ; preds = %35
  %42 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 0
  %44 = load i8*, i8** %43, align 8
  %45 = getelementptr inbounds i8, i8* %44, i64 0
  %46 = load i8, i8* %45, align 1
  %47 = sext i8 %46 to i32
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %49, label %52

49:                                               ; preds = %41, %35, %24
  %50 = getelementptr inbounds [512 x i8], [512 x i8]* %12, i64 0, i64 0
  %51 = call i32 @STRNCPY(i8* %50, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0))
  br label %70

52:                                               ; preds = %41
  %53 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i32 0, i32 0
  %55 = load i8*, i8** %54, align 8
  %56 = call i8* @StrRFindLocalPathDelim(i8* %55)
  store i8* %56, i8** %15, align 8
  %57 = icmp eq i8* %56, null
  br i1 %57, label %58, label %64

58:                                               ; preds = %52
  %59 = getelementptr inbounds [512 x i8], [512 x i8]* %12, i64 0, i64 0
  %60 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i32 0, i32 0
  %62 = load i8*, i8** %61, align 8
  %63 = call i32 @STRNCPY(i8* %59, i8* %62)
  br label %69

64:                                               ; preds = %52
  %65 = getelementptr inbounds [512 x i8], [512 x i8]* %12, i64 0, i64 0
  %66 = load i8*, i8** %15, align 8
  %67 = getelementptr inbounds i8, i8* %66, i64 1
  %68 = call i32 @STRNCPY(i8* %65, i8* %67)
  br label %69

69:                                               ; preds = %64, %58
  br label %70

70:                                               ; preds = %69, %49
  %71 = getelementptr inbounds [512 x i8], [512 x i8]* %11, i64 0, i64 0
  %72 = call i64 @Lstat(i8* %71, %struct.Stat* %13)
  %73 = icmp slt i64 %72, 0
  br i1 %73, label %74, label %79

74:                                               ; preds = %70
  %75 = load i32, i32* %5, align 4
  %76 = load i32, i32* @kDoPerror, align 4
  %77 = getelementptr inbounds [512 x i8], [512 x i8]* %11, i64 0, i64 0
  %78 = call i32 @Error(i32 %75, i32 %76, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0), i8* %77)
  br label %109

79:                                               ; preds = %70
  %80 = getelementptr inbounds %struct.Stat, %struct.Stat* %13, i32 0, i32 2
  %81 = load i32, i32* %80, align 4
  %82 = call i64 @S_ISDIR(i32 %81)
  %83 = icmp eq i64 %82, 0
  br i1 %83, label %84, label %103

84:                                               ; preds = %79
  %85 = getelementptr inbounds [512 x i8], [512 x i8]* %12, i64 0, i64 0
  %86 = call i8* @StrDup(i8* %85)
  %87 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %14, i32 0, i32 7
  store i8* %86, i8** %87, align 8
  %88 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %14, i32 0, i32 6
  store i32* null, i32** %88, align 8
  %89 = getelementptr inbounds [512 x i8], [512 x i8]* %11, i64 0, i64 0
  %90 = call i8* @StrDup(i8* %89)
  %91 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %14, i32 0, i32 5
  store i8* %90, i8** %91, align 8
  %92 = getelementptr inbounds %struct.Stat, %struct.Stat* %13, i32 0, i32 1
  %93 = load i32, i32* %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %14, i32 0, i32 4
  store i32 %93, i32* %94, align 8
  %95 = getelementptr inbounds %struct.Stat, %struct.Stat* %13, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %14, i32 0, i32 3
  store i64 %96, i64* %97, align 8
  %98 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %14, i32 0, i32 2
  store i32* null, i32** %98, align 8
  %99 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %14, i32 0, i32 1
  store i32* null, i32** %99, align 8
  %100 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %14, i32 0, i32 0
  store i8 45, i8* %100, align 8
  %101 = load i32, i32* %7, align 4
  %102 = call i32 @AddFileInfo(i32 %101, %struct.TYPE_8__* %14)
  br label %109

103:                                              ; preds = %79
  %104 = load i32, i32* %5, align 4
  %105 = getelementptr inbounds [512 x i8], [512 x i8]* %11, i64 0, i64 0
  %106 = getelementptr inbounds [512 x i8], [512 x i8]* %12, i64 0, i64 0
  %107 = load i32, i32* %7, align 4
  %108 = call i32 @Traverse(i32 %104, i8* %105, %struct.Stat* %13, i8* %106, i32 %107)
  br label %109

109:                                              ; preds = %103, %84, %74
  %110 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  store %struct.TYPE_6__* %110, %struct.TYPE_6__** %9, align 8
  br label %21

111:                                              ; preds = %21
  %112 = load i32, i32* @kNoErr, align 4
  ret i32 %112
}

declare dso_local i32 @InitFileInfoList(i32) #1

declare dso_local i32 @STRNCPY(i8*, i8*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i8* @StrRFindLocalPathDelim(i8*) #1

declare dso_local i64 @Lstat(i8*, %struct.Stat*) #1

declare dso_local i32 @Error(i32, i32, i8*, i8*) #1

declare dso_local i64 @S_ISDIR(i32) #1

declare dso_local i8* @StrDup(i8*) #1

declare dso_local i32 @AddFileInfo(i32, %struct.TYPE_8__*) #1

declare dso_local i32 @Traverse(i32, i8*, %struct.Stat*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
