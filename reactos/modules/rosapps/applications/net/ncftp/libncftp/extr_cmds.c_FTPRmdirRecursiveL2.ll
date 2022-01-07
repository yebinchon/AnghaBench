; ModuleID = '/home/carl/AnghaBench/reactos/modules/rosapps/applications/net/ncftp/libncftp/extr_cmds.c_FTPRmdirRecursiveL2.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rosapps/applications/net/ncftp/libncftp/extr_cmds.c_FTPRmdirRecursiveL2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i8* }
%struct.TYPE_12__ = type { %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i8*, %struct.TYPE_11__* }

@.str = private unnamed_addr constant [3 x i8] c"**\00", align 1
@kGlobYes = common dso_local global i32 0, align 4
@kNoErr = common dso_local global i32 0, align 4
@kErrBadLineList = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [3 x i8] c"..\00", align 1
@kErrCannotGoToPrevDir = common dso_local global i8* null, align 8
@kErrGlobNoMatch = common dso_local global i32 0, align 4
@kRecursiveNo = common dso_local global i32 0, align 4
@kGlobNo = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_13__*)* @FTPRmdirRecursiveL2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @FTPRmdirRecursiveL2(%struct.TYPE_13__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_13__*, align 8
  %4 = alloca %struct.TYPE_12__, align 8
  %5 = alloca %struct.TYPE_11__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %3, align 8
  %8 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %9 = load i32, i32* @kGlobYes, align 4
  %10 = call i32 @FTPRemoteGlob(%struct.TYPE_13__* %8, %struct.TYPE_12__* %4, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %9)
  store i32 %10, i32* %7, align 4
  %11 = load i32, i32* %7, align 4
  %12 = load i32, i32* @kNoErr, align 4
  %13 = icmp ne i32 %11, %12
  br i1 %13, label %14, label %16

14:                                               ; preds = %1
  %15 = load i32, i32* %7, align 4
  store i32 %15, i32* %2, align 4
  br label %112

16:                                               ; preds = %1
  %17 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %4, i32 0, i32 0
  %18 = load %struct.TYPE_11__*, %struct.TYPE_11__** %17, align 8
  store %struct.TYPE_11__* %18, %struct.TYPE_11__** %5, align 8
  br label %19

19:                                               ; preds = %105, %16
  %20 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %21 = icmp ne %struct.TYPE_11__* %20, null
  br i1 %21, label %22, label %109

22:                                               ; preds = %19
  %23 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %24 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %23, i32 0, i32 0
  %25 = load i8*, i8** %24, align 8
  store i8* %25, i8** %6, align 8
  %26 = load i8*, i8** %6, align 8
  %27 = icmp eq i8* %26, null
  br i1 %27, label %28, label %32

28:                                               ; preds = %22
  %29 = load i8*, i8** @kErrBadLineList, align 8
  %30 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %31 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %30, i32 0, i32 0
  store i8* %29, i8** %31, align 8
  br label %109

32:                                               ; preds = %22
  %33 = load i8*, i8** %6, align 8
  %34 = getelementptr inbounds i8, i8* %33, i64 0
  %35 = load i8, i8* %34, align 1
  %36 = sext i8 %35 to i32
  %37 = icmp eq i32 %36, 46
  br i1 %37, label %38, label %57

38:                                               ; preds = %32
  %39 = load i8*, i8** %6, align 8
  %40 = getelementptr inbounds i8, i8* %39, i64 1
  %41 = load i8, i8* %40, align 1
  %42 = sext i8 %41 to i32
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %56, label %44

44:                                               ; preds = %38
  %45 = load i8*, i8** %6, align 8
  %46 = getelementptr inbounds i8, i8* %45, i64 1
  %47 = load i8, i8* %46, align 1
  %48 = sext i8 %47 to i32
  %49 = icmp eq i32 %48, 46
  br i1 %49, label %50, label %57

50:                                               ; preds = %44
  %51 = load i8*, i8** %6, align 8
  %52 = getelementptr inbounds i8, i8* %51, i64 2
  %53 = load i8, i8* %52, align 1
  %54 = sext i8 %53 to i32
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %50, %38
  br label %105

57:                                               ; preds = %50, %44, %32
  %58 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %59 = load i8*, i8** %6, align 8
  %60 = call i32 @FTPChdir(%struct.TYPE_13__* %58, i8* %59)
  %61 = load i32, i32* @kNoErr, align 4
  %62 = icmp eq i32 %60, %61
  br i1 %62, label %63, label %98

63:                                               ; preds = %57
  %64 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %65 = call i32 @FTPRmdirRecursiveL2(%struct.TYPE_13__* %64)
  store i32 %65, i32* %7, align 4
  %66 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %67 = call i32 @FTPChdir(%struct.TYPE_13__* %66, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  %68 = load i32, i32* @kNoErr, align 4
  %69 = icmp ne i32 %67, %68
  br i1 %69, label %70, label %77

70:                                               ; preds = %63
  %71 = load i8*, i8** @kErrCannotGoToPrevDir, align 8
  %72 = ptrtoint i8* %71 to i32
  store i32 %72, i32* %7, align 4
  %73 = load i8*, i8** @kErrCannotGoToPrevDir, align 8
  %74 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %75 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %74, i32 0, i32 0
  store i8* %73, i8** %75, align 8
  %76 = load i32, i32* %7, align 4
  store i32 %76, i32* %2, align 4
  br label %112

77:                                               ; preds = %63
  %78 = load i32, i32* %7, align 4
  %79 = icmp slt i32 %78, 0
  br i1 %79, label %80, label %86

80:                                               ; preds = %77
  %81 = load i32, i32* %7, align 4
  %82 = load i32, i32* @kErrGlobNoMatch, align 4
  %83 = icmp ne i32 %81, %82
  br i1 %83, label %84, label %86

84:                                               ; preds = %80
  %85 = load i32, i32* %7, align 4
  store i32 %85, i32* %2, align 4
  br label %112

86:                                               ; preds = %80, %77
  %87 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %88 = load i8*, i8** %6, align 8
  %89 = load i32, i32* @kRecursiveNo, align 4
  %90 = load i32, i32* @kGlobNo, align 4
  %91 = call i32 @FTPRmdir(%struct.TYPE_13__* %87, i8* %88, i32 %89, i32 %90)
  store i32 %91, i32* %7, align 4
  %92 = load i32, i32* %7, align 4
  %93 = load i32, i32* @kNoErr, align 4
  %94 = icmp ne i32 %92, %93
  br i1 %94, label %95, label %97

95:                                               ; preds = %86
  %96 = load i32, i32* %7, align 4
  store i32 %96, i32* %2, align 4
  br label %112

97:                                               ; preds = %86
  br label %104

98:                                               ; preds = %57
  %99 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %100 = load i8*, i8** %6, align 8
  %101 = load i32, i32* @kRecursiveNo, align 4
  %102 = load i32, i32* @kGlobNo, align 4
  %103 = call i32 @FTPDelete(%struct.TYPE_13__* %99, i8* %100, i32 %101, i32 %102)
  store i32 %103, i32* %7, align 4
  br label %104

104:                                              ; preds = %98, %97
  br label %105

105:                                              ; preds = %104, %56
  %106 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %107 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %106, i32 0, i32 1
  %108 = load %struct.TYPE_11__*, %struct.TYPE_11__** %107, align 8
  store %struct.TYPE_11__* %108, %struct.TYPE_11__** %5, align 8
  br label %19

109:                                              ; preds = %28, %19
  %110 = call i32 @DisposeLineListContents(%struct.TYPE_12__* %4)
  %111 = load i32, i32* %7, align 4
  store i32 %111, i32* %2, align 4
  br label %112

112:                                              ; preds = %109, %95, %84, %70, %14
  %113 = load i32, i32* %2, align 4
  ret i32 %113
}

declare dso_local i32 @FTPRemoteGlob(%struct.TYPE_13__*, %struct.TYPE_12__*, i8*, i32) #1

declare dso_local i32 @FTPChdir(%struct.TYPE_13__*, i8*) #1

declare dso_local i32 @FTPRmdir(%struct.TYPE_13__*, i8*, i32, i32) #1

declare dso_local i32 @FTPDelete(%struct.TYPE_13__*, i8*, i32, i32) #1

declare dso_local i32 @DisposeLineListContents(%struct.TYPE_12__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
