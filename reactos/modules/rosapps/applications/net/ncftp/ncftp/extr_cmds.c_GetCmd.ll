; ModuleID = '/home/carl/AnghaBench/reactos/modules/rosapps/applications/net/ncftp/ncftp/extr_cmds.c_GetCmd.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rosapps/applications/net/ncftp/ncftp/extr_cmds.c_GetCmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i64* }

@kRecursiveNo = common dso_local global i32 0, align 4
@kAppendNo = common dso_local global i32 0, align 4
@kResumeYes = common dso_local global i32 0, align 4
@kTarYes = common dso_local global i32 0, align 4
@gBm = common dso_local global %struct.TYPE_5__ zeroinitializer, align 4
@kDeleteNo = common dso_local global i32 0, align 4
@NcFTPConfirmResumeDownloadProc = common dso_local global i32 0, align 4
@kConfirmResumeProcNotUsed = common dso_local global i32 0, align 4
@gResumeAnswerAll = common dso_local global i32 0, align 4
@gUnusedArg = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"aAzfrRTD\00", align 1
@kTypeAscii = common dso_local global i32 0, align 4
@kAppendYes = common dso_local global i32 0, align 4
@kResumeNo = common dso_local global i32 0, align 4
@NoConfirmResumeDownloadProc = common dso_local global i32 0, align 4
@kRecursiveYes = common dso_local global i32 0, align 4
@kTarNo = common dso_local global i32 0, align 4
@kDeleteYes = common dso_local global i32 0, align 4
@gOptInd = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [70 x i8] c"\0AFor get with rename, try \22get -z remote-path-name local-path-name\22.\0A\00", align 1
@SIGINT = common dso_local global i32 0, align 4
@XferCanceller = common dso_local global i32 0, align 4
@gConn = common dso_local global i32 0, align 4
@kErrCouldNotStartDataTransfer = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [4 x i8] c"get\00", align 1
@kGlobNo = common dso_local global i32 0, align 4
@kGlobYes = common dso_local global i32 0, align 4
@stdin = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @GetCmd(i32 %0, i8** %1, i32 %2, %struct.TYPE_4__* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8**, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_4__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca [256 x i8], align 16
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i8** %1, i8*** %6, align 8
  store i32 %2, i32* %7, align 4
  store %struct.TYPE_4__* %3, %struct.TYPE_4__** %8, align 8
  store i32 0, i32* %10, align 4
  %25 = load i32, i32* @kRecursiveNo, align 4
  store i32 %25, i32* %11, align 4
  %26 = load i32, i32* @kAppendNo, align 4
  store i32 %26, i32* %12, align 4
  %27 = load i32, i32* @kResumeYes, align 4
  store i32 %27, i32* %13, align 4
  %28 = load i32, i32* @kTarYes, align 4
  store i32 %28, i32* %14, align 4
  store i8* null, i8** %15, align 8
  %29 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @gBm, i32 0, i32 0), align 4
  store i32 %29, i32* %19, align 4
  store i32 0, i32* %20, align 4
  %30 = load i32, i32* @kDeleteNo, align 4
  store i32 %30, i32* %21, align 4
  %31 = load i32, i32* @NcFTPConfirmResumeDownloadProc, align 4
  store i32 %31, i32* %24, align 4
  %32 = load i32, i32* @kConfirmResumeProcNotUsed, align 4
  store i32 %32, i32* @gResumeAnswerAll, align 4
  %33 = load i32, i32* @gUnusedArg, align 4
  %34 = call i32 @ARGSUSED(i32 %33)
  %35 = call i32 (...) @GetoptReset()
  br label %36

36:                                               ; preds = %61, %4
  %37 = load i32, i32* %5, align 4
  %38 = load i8**, i8*** %6, align 8
  %39 = call i32 @Getopt(i32 %37, i8** %38, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  store i32 %39, i32* %9, align 4
  %40 = icmp sge i32 %39, 0
  br i1 %40, label %41, label %62

41:                                               ; preds = %36
  %42 = load i32, i32* %9, align 4
  switch i32 %42, label %58 [
    i32 97, label %43
    i32 65, label %45
    i32 102, label %47
    i32 90, label %47
    i32 122, label %50
    i32 114, label %51
    i32 82, label %51
    i32 84, label %53
    i32 68, label %55
  ]

43:                                               ; preds = %41
  %44 = load i32, i32* @kTypeAscii, align 4
  store i32 %44, i32* %19, align 4
  br label %61

45:                                               ; preds = %41
  %46 = load i32, i32* @kAppendYes, align 4
  store i32 %46, i32* %12, align 4
  br label %61

47:                                               ; preds = %41, %41
  %48 = load i32, i32* @kResumeNo, align 4
  store i32 %48, i32* %13, align 4
  %49 = load i32, i32* @NoConfirmResumeDownloadProc, align 4
  store i32 %49, i32* %24, align 4
  br label %61

50:                                               ; preds = %41
  store i32 1, i32* %10, align 4
  br label %61

51:                                               ; preds = %41, %41
  %52 = load i32, i32* @kRecursiveYes, align 4
  store i32 %52, i32* %11, align 4
  br label %61

53:                                               ; preds = %41
  %54 = load i32, i32* @kTarNo, align 4
  store i32 %54, i32* %14, align 4
  br label %61

55:                                               ; preds = %41
  %56 = load i32, i32* %20, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %20, align 4
  br label %61

58:                                               ; preds = %41
  %59 = load i32, i32* %7, align 4
  %60 = call i32 @PrintCmdUsage(i32 %59)
  br label %184

61:                                               ; preds = %55, %53, %51, %50, %47, %45, %43
  br label %36

62:                                               ; preds = %36
  %63 = load i32, i32* %20, align 4
  %64 = icmp sge i32 %63, 2
  br i1 %64, label %65, label %67

65:                                               ; preds = %62
  %66 = load i32, i32* @kDeleteYes, align 4
  store i32 %66, i32* %21, align 4
  br label %67

67:                                               ; preds = %65, %62
  %68 = load i32, i32* %10, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %113

70:                                               ; preds = %67
  %71 = load i32, i32* @gOptInd, align 4
  %72 = load i32, i32* %5, align 4
  %73 = sub nsw i32 %72, 2
  %74 = icmp sgt i32 %71, %73
  br i1 %74, label %75, label %80

75:                                               ; preds = %70
  %76 = load i32, i32* %7, align 4
  %77 = call i32 @PrintCmdUsage(i32 %76)
  %78 = load i32, i32* @stderr, align 4
  %79 = call i32 @fprintf(i32 %78, i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.1, i64 0, i64 0))
  br label %184

80:                                               ; preds = %70
  %81 = load i32, i32* @SIGINT, align 4
  %82 = load i32, i32* @XferCanceller, align 4
  %83 = call i32 @NcSignal(i32 %81, i32 %82)
  store i32 %83, i32* %23, align 4
  %84 = load i8**, i8*** %6, align 8
  %85 = load i32, i32* @gOptInd, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds i8*, i8** %84, i64 %86
  %88 = load i8*, i8** %87, align 8
  %89 = load i8**, i8*** %6, align 8
  %90 = load i32, i32* @gOptInd, align 4
  %91 = add nsw i32 %90, 1
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds i8*, i8** %89, i64 %92
  %94 = load i8*, i8** %93, align 8
  %95 = load i32, i32* %19, align 4
  %96 = load i32, i32* %13, align 4
  %97 = load i32, i32* %12, align 4
  %98 = load i32, i32* %21, align 4
  %99 = load i32, i32* @NoConfirmResumeDownloadProc, align 4
  %100 = call i32 @FTPGetOneFile3(i32* @gConn, i8* %88, i8* %94, i32 %95, i32 -1, i32 %96, i32 %97, i32 %98, i32 %99, i32 0)
  store i32 %100, i32* %16, align 4
  %101 = load i32, i32* %16, align 4
  %102 = icmp slt i32 %101, 0
  br i1 %102, label %103, label %112

103:                                              ; preds = %80
  %104 = load i32, i32* %16, align 4
  %105 = load i32, i32* @kErrCouldNotStartDataTransfer, align 4
  %106 = load i8**, i8*** %6, align 8
  %107 = load i32, i32* @gOptInd, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds i8*, i8** %106, i64 %108
  %110 = load i8*, i8** %109, align 8
  %111 = call i32 @FTPPerror(i32* @gConn, i32 %104, i32 %105, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i8* %110)
  br label %112

112:                                              ; preds = %103, %80
  br label %173

113:                                              ; preds = %67
  %114 = load i32, i32* @SIGINT, align 4
  %115 = load i32, i32* @XferCanceller, align 4
  %116 = call i32 @NcSignal(i32 %114, i32 %115)
  store i32 %116, i32* %23, align 4
  %117 = load i32, i32* @gOptInd, align 4
  store i32 %117, i32* %17, align 4
  br label %118

118:                                              ; preds = %169, %113
  %119 = load i32, i32* %17, align 4
  %120 = load i32, i32* %5, align 4
  %121 = icmp slt i32 %119, %120
  br i1 %121, label %122, label %172

122:                                              ; preds = %118
  %123 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %124 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %123, i32 0, i32 0
  %125 = load i64*, i64** %124, align 8
  %126 = load i32, i32* %17, align 4
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds i64, i64* %125, i64 %127
  %129 = load i64, i64* %128, align 8
  %130 = icmp ne i64 %129, 0
  br i1 %130, label %131, label %133

131:                                              ; preds = %122
  %132 = load i32, i32* @kGlobNo, align 4
  br label %135

133:                                              ; preds = %122
  %134 = load i32, i32* @kGlobYes, align 4
  br label %135

135:                                              ; preds = %133, %131
  %136 = phi i32 [ %132, %131 ], [ %134, %133 ]
  store i32 %136, i32* %18, align 4
  %137 = getelementptr inbounds [256 x i8], [256 x i8]* %22, i64 0, i64 0
  %138 = load i8**, i8*** %6, align 8
  %139 = load i32, i32* %17, align 4
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds i8*, i8** %138, i64 %140
  %142 = load i8*, i8** %141, align 8
  %143 = call i32 @STRNCPY(i8* %137, i8* %142)
  %144 = getelementptr inbounds [256 x i8], [256 x i8]* %22, i64 0, i64 0
  %145 = call i32 @StrRemoveTrailingSlashes(i8* %144)
  %146 = getelementptr inbounds [256 x i8], [256 x i8]* %22, i64 0, i64 0
  %147 = load i8*, i8** %15, align 8
  %148 = load i32, i32* %11, align 4
  %149 = load i32, i32* %18, align 4
  %150 = load i32, i32* %19, align 4
  %151 = load i32, i32* %13, align 4
  %152 = load i32, i32* %12, align 4
  %153 = load i32, i32* %21, align 4
  %154 = load i32, i32* %14, align 4
  %155 = load i32, i32* %24, align 4
  %156 = call i32 @FTPGetFiles3(i32* @gConn, i8* %146, i8* %147, i32 %148, i32 %149, i32 %150, i32 %151, i32 %152, i32 %153, i32 %154, i32 %155, i32 0)
  store i32 %156, i32* %16, align 4
  %157 = load i32, i32* %16, align 4
  %158 = icmp slt i32 %157, 0
  br i1 %158, label %159, label %168

159:                                              ; preds = %135
  %160 = load i32, i32* %16, align 4
  %161 = load i32, i32* @kErrCouldNotStartDataTransfer, align 4
  %162 = load i8**, i8*** %6, align 8
  %163 = load i32, i32* %17, align 4
  %164 = sext i32 %163 to i64
  %165 = getelementptr inbounds i8*, i8** %162, i64 %164
  %166 = load i8*, i8** %165, align 8
  %167 = call i32 @FTPPerror(i32* @gConn, i32 %160, i32 %161, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i8* %166)
  br label %168

168:                                              ; preds = %159, %135
  br label %169

169:                                              ; preds = %168
  %170 = load i32, i32* %17, align 4
  %171 = add nsw i32 %170, 1
  store i32 %171, i32* %17, align 4
  br label %118

172:                                              ; preds = %118
  br label %173

173:                                              ; preds = %172, %112
  %174 = load i32, i32* @SIGINT, align 4
  %175 = load i32, i32* %23, align 4
  %176 = call i32 @NcSignal(i32 %174, i32 %175)
  %177 = load i32, i32* @stdin, align 4
  %178 = call i32 @fflush(i32 %177)
  %179 = load i32, i32* %21, align 4
  %180 = load i32, i32* @kDeleteYes, align 4
  %181 = icmp eq i32 %179, %180
  br i1 %181, label %182, label %184

182:                                              ; preds = %173
  %183 = call i32 (...) @FlushLsCache()
  br label %184

184:                                              ; preds = %58, %75, %182, %173
  ret void
}

declare dso_local i32 @ARGSUSED(i32) #1

declare dso_local i32 @GetoptReset(...) #1

declare dso_local i32 @Getopt(i32, i8**, i8*) #1

declare dso_local i32 @PrintCmdUsage(i32) #1

declare dso_local i32 @fprintf(i32, i8*) #1

declare dso_local i32 @NcSignal(i32, i32) #1

declare dso_local i32 @FTPGetOneFile3(i32*, i8*, i8*, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @FTPPerror(i32*, i32, i32, i8*, i8*) #1

declare dso_local i32 @STRNCPY(i8*, i8*) #1

declare dso_local i32 @StrRemoveTrailingSlashes(i8*) #1

declare dso_local i32 @FTPGetFiles3(i32*, i8*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @fflush(i32) #1

declare dso_local i32 @FlushLsCache(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
