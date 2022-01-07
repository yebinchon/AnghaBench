; ModuleID = '/home/carl/AnghaBench/reactos/modules/rosapps/applications/net/ncftp/libncftp/extr_cmds.c_FTPDelete.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rosapps/applications/net/ncftp/libncftp/extr_cmds.c_FTPDelete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i8*, i32 }
%struct.TYPE_11__ = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i8*, %struct.TYPE_10__* }

@kErrBadParameter = common dso_local global i32 0, align 4
@kLibraryMagic = common dso_local global i32 0, align 4
@kErrBadMagic = common dso_local global i32 0, align 4
@kNoErr = common dso_local global i32 0, align 4
@kErrBadLineList = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [8 x i8] c"DELE %s\00", align 1
@kRecursiveYes = common dso_local global i32 0, align 4
@kErrDELEFailed = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [7 x i8] c"RMD %s\00", align 1
@kErrRMDFailed = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @FTPDelete(%struct.TYPE_12__* %0, i8* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_12__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_11__, align 8
  %11 = alloca %struct.TYPE_10__*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %15 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %16 = icmp eq %struct.TYPE_12__* %15, null
  br i1 %16, label %17, label %19

17:                                               ; preds = %4
  %18 = load i32, i32* @kErrBadParameter, align 4
  store i32 %18, i32* %5, align 4
  br label %112

19:                                               ; preds = %4
  %20 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %21 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 8
  %23 = load i32, i32* @kLibraryMagic, align 4
  %24 = call i64 @strcmp(i32 %22, i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %19
  %27 = load i32, i32* @kErrBadMagic, align 4
  store i32 %27, i32* %5, align 4
  br label %112

28:                                               ; preds = %19
  %29 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %30 = load i8*, i8** %7, align 8
  %31 = load i32, i32* %9, align 4
  %32 = call i32 @FTPRemoteGlob(%struct.TYPE_12__* %29, %struct.TYPE_11__* %10, i8* %30, i32 %31)
  store i32 %32, i32* %14, align 4
  %33 = load i32, i32* %14, align 4
  %34 = load i32, i32* @kNoErr, align 4
  %35 = icmp ne i32 %33, %34
  br i1 %35, label %36, label %38

36:                                               ; preds = %28
  %37 = load i32, i32* %14, align 4
  store i32 %37, i32* %5, align 4
  br label %112

38:                                               ; preds = %28
  %39 = load i32, i32* @kNoErr, align 4
  store i32 %39, i32* %14, align 4
  %40 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %10, i32 0, i32 0
  %41 = load %struct.TYPE_10__*, %struct.TYPE_10__** %40, align 8
  store %struct.TYPE_10__* %41, %struct.TYPE_10__** %11, align 8
  br label %42

42:                                               ; preds = %105, %38
  %43 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %44 = icmp ne %struct.TYPE_10__* %43, null
  br i1 %44, label %45, label %109

45:                                               ; preds = %42
  %46 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %47 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %46, i32 0, i32 0
  %48 = load i8*, i8** %47, align 8
  store i8* %48, i8** %12, align 8
  %49 = load i8*, i8** %12, align 8
  %50 = icmp eq i8* %49, null
  br i1 %50, label %51, label %57

51:                                               ; preds = %45
  %52 = load i8*, i8** @kErrBadLineList, align 8
  %53 = ptrtoint i8* %52 to i32
  store i32 %53, i32* %14, align 4
  %54 = load i8*, i8** @kErrBadLineList, align 8
  %55 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %56 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %55, i32 0, i32 0
  store i8* %54, i8** %56, align 8
  br label %109

57:                                               ; preds = %45
  %58 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %59 = load i8*, i8** %12, align 8
  %60 = call i32 @FTPCmd(%struct.TYPE_12__* %58, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8* %59)
  store i32 %60, i32* %13, align 4
  %61 = load i32, i32* %13, align 4
  %62 = icmp slt i32 %61, 0
  br i1 %62, label %63, label %65

63:                                               ; preds = %57
  %64 = load i32, i32* %13, align 4
  store i32 %64, i32* %14, align 4
  br label %109

65:                                               ; preds = %57
  %66 = load i32, i32* %13, align 4
  %67 = icmp ne i32 %66, 2
  br i1 %67, label %68, label %104

68:                                               ; preds = %65
  %69 = load i32, i32* %8, align 4
  %70 = load i32, i32* @kRecursiveYes, align 4
  %71 = icmp ne i32 %69, %70
  br i1 %71, label %72, label %78

72:                                               ; preds = %68
  %73 = load i8*, i8** @kErrDELEFailed, align 8
  %74 = ptrtoint i8* %73 to i32
  store i32 %74, i32* %14, align 4
  %75 = load i8*, i8** @kErrDELEFailed, align 8
  %76 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %77 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %76, i32 0, i32 0
  store i8* %75, i8** %77, align 8
  br label %103

78:                                               ; preds = %68
  %79 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %80 = load i8*, i8** %12, align 8
  %81 = call i32 @FTPCmd(%struct.TYPE_12__* %79, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8* %80)
  store i32 %81, i32* %13, align 4
  %82 = load i32, i32* %13, align 4
  %83 = icmp slt i32 %82, 0
  br i1 %83, label %84, label %86

84:                                               ; preds = %78
  %85 = load i32, i32* %13, align 4
  store i32 %85, i32* %14, align 4
  br label %109

86:                                               ; preds = %78
  %87 = load i32, i32* %13, align 4
  %88 = icmp ne i32 %87, 2
  br i1 %88, label %89, label %102

89:                                               ; preds = %86
  %90 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %91 = load i8*, i8** %12, align 8
  %92 = call i32 @FTPRmdirRecursive(%struct.TYPE_12__* %90, i8* %91)
  store i32 %92, i32* %13, align 4
  %93 = load i32, i32* %13, align 4
  %94 = icmp slt i32 %93, 0
  br i1 %94, label %95, label %101

95:                                               ; preds = %89
  %96 = load i8*, i8** @kErrRMDFailed, align 8
  %97 = ptrtoint i8* %96 to i32
  store i32 %97, i32* %14, align 4
  %98 = load i8*, i8** @kErrRMDFailed, align 8
  %99 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %100 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %99, i32 0, i32 0
  store i8* %98, i8** %100, align 8
  br label %101

101:                                              ; preds = %95, %89
  br label %102

102:                                              ; preds = %101, %86
  br label %103

103:                                              ; preds = %102, %72
  br label %104

104:                                              ; preds = %103, %65
  br label %105

105:                                              ; preds = %104
  %106 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %107 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %106, i32 0, i32 1
  %108 = load %struct.TYPE_10__*, %struct.TYPE_10__** %107, align 8
  store %struct.TYPE_10__* %108, %struct.TYPE_10__** %11, align 8
  br label %42

109:                                              ; preds = %84, %63, %51, %42
  %110 = call i32 @DisposeLineListContents(%struct.TYPE_11__* %10)
  %111 = load i32, i32* %14, align 4
  store i32 %111, i32* %5, align 4
  br label %112

112:                                              ; preds = %109, %36, %26, %17
  %113 = load i32, i32* %5, align 4
  ret i32 %113
}

declare dso_local i64 @strcmp(i32, i32) #1

declare dso_local i32 @FTPRemoteGlob(%struct.TYPE_12__*, %struct.TYPE_11__*, i8*, i32) #1

declare dso_local i32 @FTPCmd(%struct.TYPE_12__*, i8*, i8*) #1

declare dso_local i32 @FTPRmdirRecursive(%struct.TYPE_12__*, i8*) #1

declare dso_local i32 @DisposeLineListContents(%struct.TYPE_11__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
