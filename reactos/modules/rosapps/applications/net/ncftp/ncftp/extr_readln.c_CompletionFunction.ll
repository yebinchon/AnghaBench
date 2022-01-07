; ModuleID = '/home/carl/AnghaBench/reactos/modules/rosapps/applications/net/ncftp/ncftp/extr_readln.c_CompletionFunction.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rosapps/applications/net/ncftp/ncftp/extr_readln.c_CompletionFunction.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32 }
%struct.TYPE_8__ = type { i64, i32*, i32, i32 }

@CompletionFunction.flags = internal global i32 0, align 4
@kAmbiguousCommand = common dso_local global %struct.TYPE_7__* null, align 8
@kNoCommand = common dso_local global %struct.TYPE_7__* null, align 8
@kCompleteLocalFile = common dso_local global i32 0, align 4
@kCompleteLocalDir = common dso_local global i32 0, align 4
@kCompleteRemoteFile = common dso_local global i32 0, align 4
@gl_filename_quoting_desired = common dso_local global i32 0, align 4
@kCompleteRemoteDir = common dso_local global i32 0, align 4
@kCompleteBookmark = common dso_local global i32 0, align 4
@kCompletePrefOpt = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*, i32)* @CompletionFunction to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @CompletionFunction(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.TYPE_8__, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_7__*, align 8
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  %11 = load i32, i32* %5, align 4
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %66

13:                                               ; preds = %2
  store i32 -1, i32* @CompletionFunction.flags, align 4
  %14 = call i8* (...) @FindStartOfCurrentCommand()
  store i8* %14, i8** %7, align 8
  %15 = load i8*, i8** %7, align 8
  %16 = icmp eq i8* %15, null
  br i1 %16, label %17, label %18

17:                                               ; preds = %13
  store i8* null, i8** %3, align 8
  br label %135

18:                                               ; preds = %13
  %19 = load i8*, i8** %7, align 8
  %20 = call i64 @HaveCommandNameOnly(i8* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %27

22:                                               ; preds = %18
  store i32 -2, i32* @CompletionFunction.flags, align 4
  %23 = load i8*, i8** %4, align 8
  %24 = load i32, i32* %5, align 4
  %25 = call i8* @CommandCompletionFunction(i8* %23, i32 %24)
  store i8* %25, i8** %6, align 8
  %26 = load i8*, i8** %6, align 8
  store i8* %26, i8** %3, align 8
  br label %135

27:                                               ; preds = %18
  %28 = call i32 @memset(%struct.TYPE_8__* %8, i32 0, i32 24)
  %29 = load i8*, i8** %7, align 8
  %30 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %8, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %8, i32 0, i32 1
  %32 = load i32*, i32** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %8, i32 0, i32 3
  %34 = load i32, i32* %33, align 4
  %35 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %8, i32 0, i32 2
  %36 = load i32, i32* %35, align 8
  %37 = call i32 @MakeArgv(i8* %29, i64* %30, i32* %32, i32 1, i32 %34, i32 4, i32 %36, i32 1)
  store i32 %37, i32* %9, align 4
  %38 = load i32, i32* %9, align 4
  %39 = icmp sle i32 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %27
  store i8* null, i8** %3, align 8
  br label %135

41:                                               ; preds = %27
  %42 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %8, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = icmp eq i64 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %41
  store i8* null, i8** %3, align 8
  br label %135

46:                                               ; preds = %41
  %47 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %8, i32 0, i32 1
  %48 = load i32*, i32** %47, align 8
  %49 = getelementptr inbounds i32, i32* %48, i64 0
  %50 = load i32, i32* %49, align 4
  %51 = call %struct.TYPE_7__* @GetCommandByName(i32 %50, i32 0)
  store %struct.TYPE_7__* %51, %struct.TYPE_7__** %10, align 8
  %52 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %53 = load %struct.TYPE_7__*, %struct.TYPE_7__** @kAmbiguousCommand, align 8
  %54 = icmp eq %struct.TYPE_7__* %52, %53
  br i1 %54, label %55, label %56

55:                                               ; preds = %46
  store i8* null, i8** %3, align 8
  br label %135

56:                                               ; preds = %46
  %57 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %58 = load %struct.TYPE_7__*, %struct.TYPE_7__** @kNoCommand, align 8
  %59 = icmp eq %struct.TYPE_7__* %57, %58
  br i1 %59, label %60, label %61

60:                                               ; preds = %56
  store i8* null, i8** %3, align 8
  br label %135

61:                                               ; preds = %56
  br label %62

62:                                               ; preds = %61
  %63 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %64 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  store i32 %65, i32* @CompletionFunction.flags, align 4
  br label %66

66:                                               ; preds = %62, %2
  %67 = load i32, i32* @CompletionFunction.flags, align 4
  %68 = icmp eq i32 %67, -2
  br i1 %68, label %69, label %74

69:                                               ; preds = %66
  %70 = load i8*, i8** %4, align 8
  %71 = load i32, i32* %5, align 4
  %72 = call i8* @CommandCompletionFunction(i8* %70, i32 %71)
  store i8* %72, i8** %6, align 8
  %73 = load i8*, i8** %6, align 8
  store i8* %73, i8** %3, align 8
  br label %135

74:                                               ; preds = %66
  %75 = load i32, i32* @CompletionFunction.flags, align 4
  %76 = icmp slt i32 %75, 0
  br i1 %76, label %77, label %78

77:                                               ; preds = %74
  store i8* null, i8** %3, align 8
  br label %135

78:                                               ; preds = %74
  %79 = load i32, i32* @CompletionFunction.flags, align 4
  %80 = load i32, i32* @kCompleteLocalFile, align 4
  %81 = load i32, i32* @kCompleteLocalDir, align 4
  %82 = or i32 %80, %81
  %83 = and i32 %79, %82
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %90

85:                                               ; preds = %78
  %86 = load i8*, i8** %4, align 8
  %87 = load i32, i32* %5, align 4
  %88 = call i8* @gl_local_filename_completion_proc(i8* %86, i32 %87)
  store i8* %88, i8** %6, align 8
  %89 = load i8*, i8** %6, align 8
  store i8* %89, i8** %3, align 8
  br label %135

90:                                               ; preds = %78
  %91 = load i32, i32* @CompletionFunction.flags, align 4
  %92 = load i32, i32* @kCompleteRemoteFile, align 4
  %93 = and i32 %91, %92
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %100

95:                                               ; preds = %90
  store i32 1, i32* @gl_filename_quoting_desired, align 4
  %96 = load i8*, i8** %4, align 8
  %97 = load i32, i32* %5, align 4
  %98 = call i8* @RemoteFileCompletionFunction(i8* %96, i32 %97)
  store i8* %98, i8** %6, align 8
  %99 = load i8*, i8** %6, align 8
  store i8* %99, i8** %3, align 8
  br label %135

100:                                              ; preds = %90
  %101 = load i32, i32* @CompletionFunction.flags, align 4
  %102 = load i32, i32* @kCompleteRemoteDir, align 4
  %103 = and i32 %101, %102
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %110

105:                                              ; preds = %100
  store i32 1, i32* @gl_filename_quoting_desired, align 4
  %106 = load i8*, i8** %4, align 8
  %107 = load i32, i32* %5, align 4
  %108 = call i8* @RemoteDirCompletionFunction(i8* %106, i32 %107)
  store i8* %108, i8** %6, align 8
  %109 = load i8*, i8** %6, align 8
  store i8* %109, i8** %3, align 8
  br label %135

110:                                              ; preds = %100
  %111 = load i32, i32* @CompletionFunction.flags, align 4
  %112 = load i32, i32* @kCompleteBookmark, align 4
  %113 = and i32 %111, %112
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %120

115:                                              ; preds = %110
  %116 = load i8*, i8** %4, align 8
  %117 = load i32, i32* %5, align 4
  %118 = call i8* @BookmarkCompletionFunction(i8* %116, i32 %117)
  store i8* %118, i8** %6, align 8
  %119 = load i8*, i8** %6, align 8
  store i8* %119, i8** %3, align 8
  br label %135

120:                                              ; preds = %110
  %121 = load i32, i32* @CompletionFunction.flags, align 4
  %122 = load i32, i32* @kCompletePrefOpt, align 4
  %123 = and i32 %121, %122
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %130

125:                                              ; preds = %120
  %126 = load i8*, i8** %4, align 8
  %127 = load i32, i32* %5, align 4
  %128 = call i8* @PrefOptCompletionFunction(i8* %126, i32 %127)
  store i8* %128, i8** %6, align 8
  %129 = load i8*, i8** %6, align 8
  store i8* %129, i8** %3, align 8
  br label %135

130:                                              ; preds = %120
  br label %131

131:                                              ; preds = %130
  br label %132

132:                                              ; preds = %131
  br label %133

133:                                              ; preds = %132
  br label %134

134:                                              ; preds = %133
  store i8* null, i8** %3, align 8
  br label %135

135:                                              ; preds = %134, %125, %115, %105, %95, %85, %77, %69, %60, %55, %45, %40, %22, %17
  %136 = load i8*, i8** %3, align 8
  ret i8* %136
}

declare dso_local i8* @FindStartOfCurrentCommand(...) #1

declare dso_local i64 @HaveCommandNameOnly(i8*) #1

declare dso_local i8* @CommandCompletionFunction(i8*, i32) #1

declare dso_local i32 @memset(%struct.TYPE_8__*, i32, i32) #1

declare dso_local i32 @MakeArgv(i8*, i64*, i32*, i32, i32, i32, i32, i32) #1

declare dso_local %struct.TYPE_7__* @GetCommandByName(i32, i32) #1

declare dso_local i8* @gl_local_filename_completion_proc(i8*, i32) #1

declare dso_local i8* @RemoteFileCompletionFunction(i8*, i32) #1

declare dso_local i8* @RemoteDirCompletionFunction(i8*, i32) #1

declare dso_local i8* @BookmarkCompletionFunction(i8*, i32) #1

declare dso_local i8* @PrefOptCompletionFunction(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
