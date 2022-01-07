; ModuleID = '/home/carl/AnghaBench/reactos/modules/rosapps/applications/net/ncftp/libncftp/extr_cmds.c_FTPFileExists2.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rosapps/applications/net/ncftp/libncftp/extr_cmds.c_FTPFileExists2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32 }

@kNoErr = common dso_local global i32 0, align 4
@kErrMDTMFailed = common dso_local global i32 0, align 4
@kErrNoSuchFileOrDirectory = common dso_local global i32 0, align 4
@kTypeBinary = common dso_local global i32 0, align 4
@kErrMLSTFailed = common dso_local global i32 0, align 4
@kErrSTATFailed = common dso_local global i32 0, align 4
@kErrNLSTFailed = common dso_local global i32 0, align 4
@kErrCantTellIfFileExists = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @FTPFileExists2(%struct.TYPE_8__* %0, i8* %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_8__*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %9, align 8
  store i8* %1, i8** %10, align 8
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  %20 = load i32, i32* %11, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %41

22:                                               ; preds = %7
  %23 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %24 = load i8*, i8** %10, align 8
  %25 = call i32 @FTPFileModificationTime(%struct.TYPE_8__* %23, i8* %24, i32* %17)
  store i32 %25, i32* %16, align 4
  %26 = load i32, i32* %16, align 4
  %27 = load i32, i32* @kNoErr, align 4
  %28 = icmp eq i32 %26, %27
  br i1 %28, label %29, label %31

29:                                               ; preds = %22
  %30 = load i32, i32* @kNoErr, align 4
  store i32 %30, i32* %8, align 4
  br label %126

31:                                               ; preds = %22
  %32 = load i32, i32* %16, align 4
  %33 = load i32, i32* @kErrMDTMFailed, align 4
  %34 = icmp eq i32 %32, %33
  br i1 %34, label %35, label %40

35:                                               ; preds = %31
  %36 = load i32, i32* @kErrNoSuchFileOrDirectory, align 4
  %37 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %38 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %37, i32 0, i32 0
  store i32 %36, i32* %38, align 4
  %39 = load i32, i32* @kErrNoSuchFileOrDirectory, align 4
  store i32 %39, i32* %8, align 4
  br label %126

40:                                               ; preds = %31
  br label %41

41:                                               ; preds = %40, %7
  %42 = load i32, i32* %12, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %55

44:                                               ; preds = %41
  %45 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %46 = load i8*, i8** %10, align 8
  %47 = load i32, i32* @kTypeBinary, align 4
  %48 = call i32 @FTPFileSize(%struct.TYPE_8__* %45, i8* %46, i32* %18, i32 %47)
  store i32 %48, i32* %16, align 4
  %49 = load i32, i32* %16, align 4
  %50 = load i32, i32* @kNoErr, align 4
  %51 = icmp eq i32 %49, %50
  br i1 %51, label %52, label %54

52:                                               ; preds = %44
  %53 = load i32, i32* @kNoErr, align 4
  store i32 %53, i32* %8, align 4
  br label %126

54:                                               ; preds = %44
  br label %55

55:                                               ; preds = %54, %41
  %56 = load i32, i32* %13, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %77

58:                                               ; preds = %55
  %59 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %60 = load i8*, i8** %10, align 8
  %61 = call i32 @FTPMListOneFile(%struct.TYPE_8__* %59, i8* %60, i32* %19)
  store i32 %61, i32* %16, align 4
  %62 = load i32, i32* %16, align 4
  %63 = load i32, i32* @kNoErr, align 4
  %64 = icmp eq i32 %62, %63
  br i1 %64, label %65, label %67

65:                                               ; preds = %58
  %66 = load i32, i32* @kNoErr, align 4
  store i32 %66, i32* %8, align 4
  br label %126

67:                                               ; preds = %58
  %68 = load i32, i32* %16, align 4
  %69 = load i32, i32* @kErrMLSTFailed, align 4
  %70 = icmp eq i32 %68, %69
  br i1 %70, label %71, label %76

71:                                               ; preds = %67
  %72 = load i32, i32* @kErrNoSuchFileOrDirectory, align 4
  %73 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %74 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %73, i32 0, i32 0
  store i32 %72, i32* %74, align 4
  %75 = load i32, i32* @kErrNoSuchFileOrDirectory, align 4
  store i32 %75, i32* %8, align 4
  br label %126

76:                                               ; preds = %67
  br label %77

77:                                               ; preds = %76, %55
  %78 = load i32, i32* %14, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %99

80:                                               ; preds = %77
  %81 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %82 = load i8*, i8** %10, align 8
  %83 = call i32 @FTPFileExistsStat(%struct.TYPE_8__* %81, i8* %82)
  store i32 %83, i32* %16, align 4
  %84 = load i32, i32* %16, align 4
  %85 = load i32, i32* @kNoErr, align 4
  %86 = icmp eq i32 %84, %85
  br i1 %86, label %87, label %89

87:                                               ; preds = %80
  %88 = load i32, i32* @kNoErr, align 4
  store i32 %88, i32* %8, align 4
  br label %126

89:                                               ; preds = %80
  %90 = load i32, i32* %16, align 4
  %91 = load i32, i32* @kErrSTATFailed, align 4
  %92 = icmp eq i32 %90, %91
  br i1 %92, label %93, label %98

93:                                               ; preds = %89
  %94 = load i32, i32* @kErrNoSuchFileOrDirectory, align 4
  %95 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %96 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %95, i32 0, i32 0
  store i32 %94, i32* %96, align 4
  %97 = load i32, i32* @kErrNoSuchFileOrDirectory, align 4
  store i32 %97, i32* %8, align 4
  br label %126

98:                                               ; preds = %89
  br label %99

99:                                               ; preds = %98, %77
  %100 = load i32, i32* %15, align 4
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %121

102:                                              ; preds = %99
  %103 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %104 = load i8*, i8** %10, align 8
  %105 = call i32 @FTPFileExistsNlst(%struct.TYPE_8__* %103, i8* %104)
  store i32 %105, i32* %16, align 4
  %106 = load i32, i32* %16, align 4
  %107 = load i32, i32* @kNoErr, align 4
  %108 = icmp eq i32 %106, %107
  br i1 %108, label %109, label %111

109:                                              ; preds = %102
  %110 = load i32, i32* @kNoErr, align 4
  store i32 %110, i32* %8, align 4
  br label %126

111:                                              ; preds = %102
  %112 = load i32, i32* %16, align 4
  %113 = load i32, i32* @kErrNLSTFailed, align 4
  %114 = icmp eq i32 %112, %113
  br i1 %114, label %115, label %120

115:                                              ; preds = %111
  %116 = load i32, i32* @kErrNoSuchFileOrDirectory, align 4
  %117 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %118 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %117, i32 0, i32 0
  store i32 %116, i32* %118, align 4
  %119 = load i32, i32* @kErrNoSuchFileOrDirectory, align 4
  store i32 %119, i32* %8, align 4
  br label %126

120:                                              ; preds = %111
  br label %121

121:                                              ; preds = %120, %99
  %122 = load i32, i32* @kErrCantTellIfFileExists, align 4
  %123 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %124 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %123, i32 0, i32 0
  store i32 %122, i32* %124, align 4
  %125 = load i32, i32* @kErrCantTellIfFileExists, align 4
  store i32 %125, i32* %8, align 4
  br label %126

126:                                              ; preds = %121, %115, %109, %93, %87, %71, %65, %52, %35, %29
  %127 = load i32, i32* %8, align 4
  ret i32 %127
}

declare dso_local i32 @FTPFileModificationTime(%struct.TYPE_8__*, i8*, i32*) #1

declare dso_local i32 @FTPFileSize(%struct.TYPE_8__*, i8*, i32*, i32) #1

declare dso_local i32 @FTPMListOneFile(%struct.TYPE_8__*, i8*, i32*) #1

declare dso_local i32 @FTPFileExistsStat(%struct.TYPE_8__*, i8*) #1

declare dso_local i32 @FTPFileExistsNlst(%struct.TYPE_8__*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
