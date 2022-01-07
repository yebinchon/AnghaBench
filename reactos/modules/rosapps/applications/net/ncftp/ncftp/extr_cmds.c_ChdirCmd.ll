; ModuleID = '/home/carl/AnghaBench/reactos/modules/rosapps/applications/net/ncftp/ncftp/extr_cmds.c_ChdirCmd.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rosapps/applications/net/ncftp/ncftp/extr_cmds.c_ChdirCmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i8* }
%struct.TYPE_14__ = type { i64* }
%struct.TYPE_13__ = type { %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i8* }

@gUnusedArg = common dso_local global i32 0, align 4
@gStartDir = common dso_local global i8* null, align 8
@gPrevRemoteCWD = common dso_local global i8* null, align 8
@gRemoteCWD = common dso_local global i32 0, align 4
@gConn = common dso_local global %struct.TYPE_15__ zeroinitializer, align 8
@kNoErr = common dso_local global i32 0, align 4
@kErrCWDFailed = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"Could not chdir to\00", align 1
@kGlobNo = common dso_local global i32 0, align 4
@kGlobYes = common dso_local global i32 0, align 4
@kErrGlobFailed = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [2 x i8] c"-\00", align 1
@kErrMallocFailed = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ChdirCmd(i32 %0, i8** %1, i32 %2, %struct.TYPE_14__* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8**, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_14__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_13__, align 8
  %11 = alloca %struct.TYPE_12__*, align 8
  store i32 %0, i32* %5, align 4
  store i8** %1, i8*** %6, align 8
  store i32 %2, i32* %7, align 4
  store %struct.TYPE_14__* %3, %struct.TYPE_14__** %8, align 8
  %12 = load i32, i32* @gUnusedArg, align 4
  %13 = call i32 @ARGSUSED(i32 %12)
  %14 = load i32, i32* %5, align 4
  %15 = icmp sle i32 %14, 1
  br i1 %15, label %16, label %41

16:                                               ; preds = %4
  %17 = load i8*, i8** @gStartDir, align 8
  %18 = getelementptr inbounds i8, i8* %17, i64 0
  %19 = load i8, i8* %18, align 1
  %20 = sext i8 %19 to i32
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %37

22:                                               ; preds = %16
  %23 = load i8*, i8** @gPrevRemoteCWD, align 8
  %24 = load i32, i32* @gRemoteCWD, align 4
  %25 = call i32 @STRNCPY(i8* %23, i32 %24)
  %26 = load i8*, i8** @gStartDir, align 8
  %27 = call i32 @Chdirs(%struct.TYPE_15__* @gConn, i8* %26)
  store i32 %27, i32* %9, align 4
  %28 = load i32, i32* %9, align 4
  %29 = load i32, i32* @kNoErr, align 4
  %30 = icmp ne i32 %28, %29
  br i1 %30, label %31, label %36

31:                                               ; preds = %22
  %32 = load i32, i32* %9, align 4
  %33 = load i32, i32* @kErrCWDFailed, align 4
  %34 = load i8*, i8** @gStartDir, align 8
  %35 = call i32 @FTPPerror(%struct.TYPE_15__* @gConn, i32 %32, i32 %33, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i8* %34)
  br label %36

36:                                               ; preds = %31, %22
  br label %40

37:                                               ; preds = %16
  %38 = load i32, i32* %7, align 4
  %39 = call i32 @PrintCmdUsage(i32 %38)
  br label %40

40:                                               ; preds = %37, %36
  br label %142

41:                                               ; preds = %4
  %42 = call i32 @InitLineList(%struct.TYPE_13__* %10)
  %43 = load i8**, i8*** %6, align 8
  %44 = getelementptr inbounds i8*, i8** %43, i64 1
  %45 = load i8*, i8** %44, align 8
  %46 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %47 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %46, i32 0, i32 0
  %48 = load i64*, i64** %47, align 8
  %49 = getelementptr inbounds i64, i64* %48, i64 1
  %50 = load i64, i64* %49, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %41
  %53 = load i32, i32* @kGlobNo, align 4
  br label %56

54:                                               ; preds = %41
  %55 = load i32, i32* @kGlobYes, align 4
  br label %56

56:                                               ; preds = %54, %52
  %57 = phi i32 [ %53, %52 ], [ %55, %54 ]
  %58 = call i32 @FTPRemoteGlob(%struct.TYPE_15__* @gConn, %struct.TYPE_13__* %10, i8* %45, i32 %57)
  store i32 %58, i32* %9, align 4
  %59 = load i32, i32* %9, align 4
  %60 = icmp slt i32 %59, 0
  br i1 %60, label %61, label %71

61:                                               ; preds = %56
  %62 = load i32, i32* %9, align 4
  %63 = load i32, i32* @kErrGlobFailed, align 4
  %64 = load i8**, i8*** %6, align 8
  %65 = getelementptr inbounds i8*, i8** %64, i64 0
  %66 = load i8*, i8** %65, align 8
  %67 = load i8**, i8*** %6, align 8
  %68 = getelementptr inbounds i8*, i8** %67, i64 1
  %69 = load i8*, i8** %68, align 8
  %70 = call i32 @FTPPerror(%struct.TYPE_15__* @gConn, i32 %62, i32 %63, i8* %66, i8* %69)
  br label %140

71:                                               ; preds = %56
  %72 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %10, i32 0, i32 0
  %73 = load %struct.TYPE_12__*, %struct.TYPE_12__** %72, align 8
  store %struct.TYPE_12__* %73, %struct.TYPE_12__** %11, align 8
  %74 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %75 = icmp ne %struct.TYPE_12__* %74, null
  br i1 %75, label %76, label %139

76:                                               ; preds = %71
  %77 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %78 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %77, i32 0, i32 0
  %79 = load i8*, i8** %78, align 8
  %80 = icmp ne i8* %79, null
  br i1 %80, label %81, label %139

81:                                               ; preds = %76
  %82 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %83 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %82, i32 0, i32 0
  %84 = load i8*, i8** %83, align 8
  %85 = call i64 @strcmp(i8* %84, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %86 = icmp eq i64 %85, 0
  br i1 %86, label %87, label %119

87:                                               ; preds = %81
  %88 = load i8*, i8** @gPrevRemoteCWD, align 8
  %89 = getelementptr inbounds i8, i8* %88, i64 0
  %90 = load i8, i8* %89, align 1
  %91 = sext i8 %90 to i32
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %119

93:                                               ; preds = %87
  %94 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %95 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %94, i32 0, i32 0
  %96 = load i8*, i8** %95, align 8
  %97 = call i32 @free(i8* %96)
  %98 = load i8*, i8** @gPrevRemoteCWD, align 8
  %99 = call i8* @StrDup(i8* %98)
  %100 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %101 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %100, i32 0, i32 0
  store i8* %99, i8** %101, align 8
  %102 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %103 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %102, i32 0, i32 0
  %104 = load i8*, i8** %103, align 8
  %105 = icmp eq i8* %104, null
  br i1 %105, label %106, label %110

106:                                              ; preds = %93
  %107 = load i8*, i8** @kErrMallocFailed, align 8
  %108 = ptrtoint i8* %107 to i32
  store i32 %108, i32* %9, align 4
  %109 = load i8*, i8** @kErrMallocFailed, align 8
  store i8* %109, i8** getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @gConn, i32 0, i32 0), align 8
  br label %118

110:                                              ; preds = %93
  %111 = load i8*, i8** @gPrevRemoteCWD, align 8
  %112 = load i32, i32* @gRemoteCWD, align 4
  %113 = call i32 @STRNCPY(i8* %111, i32 %112)
  %114 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %115 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %114, i32 0, i32 0
  %116 = load i8*, i8** %115, align 8
  %117 = call i32 @Chdirs(%struct.TYPE_15__* @gConn, i8* %116)
  store i32 %117, i32* %9, align 4
  br label %118

118:                                              ; preds = %110, %106
  br label %127

119:                                              ; preds = %87, %81
  %120 = load i8*, i8** @gPrevRemoteCWD, align 8
  %121 = load i32, i32* @gRemoteCWD, align 4
  %122 = call i32 @STRNCPY(i8* %120, i32 %121)
  %123 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %124 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %123, i32 0, i32 0
  %125 = load i8*, i8** %124, align 8
  %126 = call i32 @Chdirs(%struct.TYPE_15__* @gConn, i8* %125)
  store i32 %126, i32* %9, align 4
  br label %127

127:                                              ; preds = %119, %118
  %128 = load i32, i32* %9, align 4
  %129 = load i32, i32* @kNoErr, align 4
  %130 = icmp ne i32 %128, %129
  br i1 %130, label %131, label %138

131:                                              ; preds = %127
  %132 = load i32, i32* %9, align 4
  %133 = load i32, i32* @kErrCWDFailed, align 4
  %134 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %135 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %134, i32 0, i32 0
  %136 = load i8*, i8** %135, align 8
  %137 = call i32 @FTPPerror(%struct.TYPE_15__* @gConn, i32 %132, i32 %133, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i8* %136)
  br label %138

138:                                              ; preds = %131, %127
  br label %139

139:                                              ; preds = %138, %76, %71
  br label %140

140:                                              ; preds = %139, %61
  %141 = call i32 @DisposeLineListContents(%struct.TYPE_13__* %10)
  br label %142

142:                                              ; preds = %140, %40
  ret void
}

declare dso_local i32 @ARGSUSED(i32) #1

declare dso_local i32 @STRNCPY(i8*, i32) #1

declare dso_local i32 @Chdirs(%struct.TYPE_15__*, i8*) #1

declare dso_local i32 @FTPPerror(%struct.TYPE_15__*, i32, i32, i8*, i8*) #1

declare dso_local i32 @PrintCmdUsage(i32) #1

declare dso_local i32 @InitLineList(%struct.TYPE_13__*) #1

declare dso_local i32 @FTPRemoteGlob(%struct.TYPE_15__*, %struct.TYPE_13__*, i8*, i32) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i8* @StrDup(i8*) #1

declare dso_local i32 @DisposeLineListContents(%struct.TYPE_13__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
