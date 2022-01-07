; ModuleID = '/home/carl/AnghaBench/reactos/modules/rosapps/applications/net/ncftp/ncftp/extr_cmds.c_PutCmd.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rosapps/applications/net/ncftp/ncftp/extr_cmds.c_PutCmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i64* }

@kRecursiveNo = common dso_local global i32 0, align 4
@kAppendNo = common dso_local global i32 0, align 4
@gBm = common dso_local global %struct.TYPE_5__ zeroinitializer, align 4
@kDeleteNo = common dso_local global i32 0, align 4
@kResumeYes = common dso_local global i32 0, align 4
@NcFTPConfirmResumeUploadProc = common dso_local global i32 0, align 4
@kConfirmResumeProcNotUsed = common dso_local global i32 0, align 4
@gResumeAnswerAll = common dso_local global i32 0, align 4
@gUnusedArg = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"AafZzrRD\00", align 1
@kTypeAscii = common dso_local global i32 0, align 4
@kAppendYes = common dso_local global i32 0, align 4
@kResumeNo = common dso_local global i32 0, align 4
@NoConfirmResumeUploadProc = common dso_local global i32 0, align 4
@kRecursiveYes = common dso_local global i32 0, align 4
@kDeleteYes = common dso_local global i32 0, align 4
@gOptInd = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [70 x i8] c"\0AFor put with rename, try \22put -z local-path-name remote-path-name\22.\0A\00", align 1
@SIGINT = common dso_local global i32 0, align 4
@XferCanceller = common dso_local global i32 0, align 4
@gConn = common dso_local global i32 0, align 4
@kErrCouldNotStartDataTransfer = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [4 x i8] c"put\00", align 1
@kGlobNo = common dso_local global i32 0, align 4
@kGlobYes = common dso_local global i32 0, align 4
@stdin = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @PutCmd(i32 %0, i8** %1, i32 %2, %struct.TYPE_4__* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8**, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_4__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca [256 x i8], align 16
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i8** %1, i8*** %6, align 8
  store i32 %2, i32* %7, align 4
  store %struct.TYPE_4__* %3, %struct.TYPE_4__** %8, align 8
  store i32 0, i32* %10, align 4
  %24 = load i32, i32* @kRecursiveNo, align 4
  store i32 %24, i32* %11, align 4
  %25 = load i32, i32* @kAppendNo, align 4
  store i32 %25, i32* %12, align 4
  store i8* null, i8** %13, align 8
  %26 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @gBm, i32 0, i32 0), align 4
  store i32 %26, i32* %17, align 4
  store i32 0, i32* %18, align 4
  %27 = load i32, i32* @kDeleteNo, align 4
  store i32 %27, i32* %19, align 4
  %28 = load i32, i32* @kResumeYes, align 4
  store i32 %28, i32* %20, align 4
  %29 = load i32, i32* @NcFTPConfirmResumeUploadProc, align 4
  store i32 %29, i32* %23, align 4
  %30 = load i32, i32* @kConfirmResumeProcNotUsed, align 4
  store i32 %30, i32* @gResumeAnswerAll, align 4
  %31 = load i32, i32* @gUnusedArg, align 4
  %32 = call i32 @ARGSUSED(i32 %31)
  %33 = call i32 (...) @GetoptReset()
  br label %34

34:                                               ; preds = %58, %4
  %35 = load i32, i32* %5, align 4
  %36 = load i8**, i8*** %6, align 8
  %37 = call i32 @Getopt(i32 %35, i8** %36, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  store i32 %37, i32* %9, align 4
  %38 = icmp sge i32 %37, 0
  br i1 %38, label %39, label %59

39:                                               ; preds = %34
  %40 = load i32, i32* %9, align 4
  switch i32 %40, label %55 [
    i32 97, label %41
    i32 65, label %43
    i32 102, label %45
    i32 90, label %45
    i32 122, label %48
    i32 114, label %49
    i32 82, label %49
    i32 68, label %52
  ]

41:                                               ; preds = %39
  %42 = load i32, i32* @kTypeAscii, align 4
  store i32 %42, i32* %17, align 4
  br label %58

43:                                               ; preds = %39
  %44 = load i32, i32* @kAppendYes, align 4
  store i32 %44, i32* %12, align 4
  br label %58

45:                                               ; preds = %39, %39
  %46 = load i32, i32* @kResumeNo, align 4
  store i32 %46, i32* %20, align 4
  %47 = load i32, i32* @NoConfirmResumeUploadProc, align 4
  store i32 %47, i32* %23, align 4
  br label %58

48:                                               ; preds = %39
  store i32 1, i32* %10, align 4
  br label %58

49:                                               ; preds = %39, %39
  %50 = load i32, i32* @kRecursiveYes, align 4
  store i32 %50, i32* %11, align 4
  %51 = load i32, i32* @kRecursiveYes, align 4
  store i32 %51, i32* %11, align 4
  br label %58

52:                                               ; preds = %39
  %53 = load i32, i32* %18, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %18, align 4
  br label %58

55:                                               ; preds = %39
  %56 = load i32, i32* %7, align 4
  %57 = call i32 @PrintCmdUsage(i32 %56)
  br label %177

58:                                               ; preds = %52, %49, %48, %45, %43, %41
  br label %34

59:                                               ; preds = %34
  %60 = load i32, i32* %18, align 4
  %61 = icmp sge i32 %60, 2
  br i1 %61, label %62, label %64

62:                                               ; preds = %59
  %63 = load i32, i32* @kDeleteYes, align 4
  store i32 %63, i32* %19, align 4
  br label %64

64:                                               ; preds = %62, %59
  %65 = load i32, i32* %10, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %111

67:                                               ; preds = %64
  %68 = load i32, i32* @gOptInd, align 4
  %69 = load i32, i32* %5, align 4
  %70 = sub nsw i32 %69, 2
  %71 = icmp sgt i32 %68, %70
  br i1 %71, label %72, label %77

72:                                               ; preds = %67
  %73 = load i32, i32* %7, align 4
  %74 = call i32 @PrintCmdUsage(i32 %73)
  %75 = load i32, i32* @stderr, align 4
  %76 = call i32 @fprintf(i32 %75, i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.1, i64 0, i64 0))
  br label %177

77:                                               ; preds = %67
  %78 = load i32, i32* @SIGINT, align 4
  %79 = load i32, i32* @XferCanceller, align 4
  %80 = call i32 @NcSignal(i32 %78, i32 %79)
  store i32 %80, i32* %22, align 4
  %81 = load i8**, i8*** %6, align 8
  %82 = load i32, i32* @gOptInd, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds i8*, i8** %81, i64 %83
  %85 = load i8*, i8** %84, align 8
  %86 = load i8**, i8*** %6, align 8
  %87 = load i32, i32* @gOptInd, align 4
  %88 = add nsw i32 %87, 1
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds i8*, i8** %86, i64 %89
  %91 = load i8*, i8** %90, align 8
  %92 = load i32, i32* %17, align 4
  %93 = load i32, i32* %12, align 4
  %94 = load i32, i32* %20, align 4
  %95 = load i32, i32* %19, align 4
  %96 = load i32, i32* %23, align 4
  %97 = call i32 @FTPPutOneFile3(i32* @gConn, i8* %85, i8* %91, i32 %92, i32 -1, i32 %93, i32* null, i32* null, i32 %94, i32 %95, i32 %96, i32 0)
  store i32 %97, i32* %14, align 4
  %98 = load i32, i32* %14, align 4
  %99 = icmp slt i32 %98, 0
  br i1 %99, label %100, label %110

100:                                              ; preds = %77
  %101 = load i32, i32* %14, align 4
  %102 = load i32, i32* @kErrCouldNotStartDataTransfer, align 4
  %103 = load i8**, i8*** %6, align 8
  %104 = load i32, i32* @gOptInd, align 4
  %105 = add nsw i32 %104, 1
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds i8*, i8** %103, i64 %106
  %108 = load i8*, i8** %107, align 8
  %109 = call i32 @FTPPerror(i32* @gConn, i32 %101, i32 %102, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i8* %108)
  br label %110

110:                                              ; preds = %100, %77
  br label %170

111:                                              ; preds = %64
  %112 = load i32, i32* @SIGINT, align 4
  %113 = load i32, i32* @XferCanceller, align 4
  %114 = call i32 @NcSignal(i32 %112, i32 %113)
  store i32 %114, i32* %22, align 4
  %115 = load i32, i32* @gOptInd, align 4
  store i32 %115, i32* %15, align 4
  br label %116

116:                                              ; preds = %166, %111
  %117 = load i32, i32* %15, align 4
  %118 = load i32, i32* %5, align 4
  %119 = icmp slt i32 %117, %118
  br i1 %119, label %120, label %169

120:                                              ; preds = %116
  %121 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %122 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %121, i32 0, i32 0
  %123 = load i64*, i64** %122, align 8
  %124 = load i32, i32* %15, align 4
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds i64, i64* %123, i64 %125
  %127 = load i64, i64* %126, align 8
  %128 = icmp ne i64 %127, 0
  br i1 %128, label %129, label %131

129:                                              ; preds = %120
  %130 = load i32, i32* @kGlobNo, align 4
  br label %133

131:                                              ; preds = %120
  %132 = load i32, i32* @kGlobYes, align 4
  br label %133

133:                                              ; preds = %131, %129
  %134 = phi i32 [ %130, %129 ], [ %132, %131 ]
  store i32 %134, i32* %16, align 4
  %135 = getelementptr inbounds [256 x i8], [256 x i8]* %21, i64 0, i64 0
  %136 = load i8**, i8*** %6, align 8
  %137 = load i32, i32* %15, align 4
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds i8*, i8** %136, i64 %138
  %140 = load i8*, i8** %139, align 8
  %141 = call i32 @STRNCPY(i8* %135, i8* %140)
  %142 = getelementptr inbounds [256 x i8], [256 x i8]* %21, i64 0, i64 0
  %143 = call i32 @StrRemoveTrailingSlashes(i8* %142)
  %144 = getelementptr inbounds [256 x i8], [256 x i8]* %21, i64 0, i64 0
  %145 = load i8*, i8** %13, align 8
  %146 = load i32, i32* %11, align 4
  %147 = load i32, i32* %16, align 4
  %148 = load i32, i32* %17, align 4
  %149 = load i32, i32* %12, align 4
  %150 = load i32, i32* %20, align 4
  %151 = load i32, i32* %19, align 4
  %152 = load i32, i32* %23, align 4
  %153 = call i32 @FTPPutFiles3(i32* @gConn, i8* %144, i8* %145, i32 %146, i32 %147, i32 %148, i32 %149, i32* null, i32* null, i32 %150, i32 %151, i32 %152, i32 0)
  store i32 %153, i32* %14, align 4
  %154 = load i32, i32* %14, align 4
  %155 = icmp slt i32 %154, 0
  br i1 %155, label %156, label %165

156:                                              ; preds = %133
  %157 = load i32, i32* %14, align 4
  %158 = load i32, i32* @kErrCouldNotStartDataTransfer, align 4
  %159 = load i8**, i8*** %6, align 8
  %160 = load i32, i32* %15, align 4
  %161 = sext i32 %160 to i64
  %162 = getelementptr inbounds i8*, i8** %159, i64 %161
  %163 = load i8*, i8** %162, align 8
  %164 = call i32 @FTPPerror(i32* @gConn, i32 %157, i32 %158, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i8* %163)
  br label %165

165:                                              ; preds = %156, %133
  br label %166

166:                                              ; preds = %165
  %167 = load i32, i32* %15, align 4
  %168 = add nsw i32 %167, 1
  store i32 %168, i32* %15, align 4
  br label %116

169:                                              ; preds = %116
  br label %170

170:                                              ; preds = %169, %110
  %171 = call i32 (...) @FlushLsCache()
  %172 = load i32, i32* @SIGINT, align 4
  %173 = load i32, i32* %22, align 4
  %174 = call i32 @NcSignal(i32 %172, i32 %173)
  %175 = load i32, i32* @stdin, align 4
  %176 = call i32 @fflush(i32 %175)
  br label %177

177:                                              ; preds = %170, %72, %55
  ret void
}

declare dso_local i32 @ARGSUSED(i32) #1

declare dso_local i32 @GetoptReset(...) #1

declare dso_local i32 @Getopt(i32, i8**, i8*) #1

declare dso_local i32 @PrintCmdUsage(i32) #1

declare dso_local i32 @fprintf(i32, i8*) #1

declare dso_local i32 @NcSignal(i32, i32) #1

declare dso_local i32 @FTPPutOneFile3(i32*, i8*, i8*, i32, i32, i32, i32*, i32*, i32, i32, i32, i32) #1

declare dso_local i32 @FTPPerror(i32*, i32, i32, i8*, i8*) #1

declare dso_local i32 @STRNCPY(i8*, i8*) #1

declare dso_local i32 @StrRemoveTrailingSlashes(i8*) #1

declare dso_local i32 @FTPPutFiles3(i32*, i8*, i8*, i32, i32, i32, i32, i32*, i32*, i32, i32, i32, i32) #1

declare dso_local i32 @FlushLsCache(...) #1

declare dso_local i32 @fflush(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
