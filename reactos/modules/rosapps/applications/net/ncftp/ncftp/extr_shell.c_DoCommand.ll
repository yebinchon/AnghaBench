; ModuleID = '/home/carl/AnghaBench/reactos/modules/rosapps/applications/net/ncftp/ncftp/extr_shell.c_DoCommand.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rosapps/applications/net/ncftp/ncftp/extr_shell.c_DoCommand.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32, i32, i32, i32 (i32, i8**, %struct.TYPE_11__*, %struct.TYPE_12__*)* }
%struct.TYPE_12__ = type { i8**, i32 }
%struct.TYPE_13__ = type { i64 }

@kAmbiguousCommand = common dso_local global %struct.TYPE_11__* null, align 8
@.str = private unnamed_addr constant [29 x i8] c"%s: ambiguous command name.\0A\00", align 1
@kNoCommand = common dso_local global %struct.TYPE_11__* null, align 8
@.str.1 = private unnamed_addr constant [22 x i8] c"%s: no such command.\0A\00", align 1
@kCmdMustBeConnected = common dso_local global i32 0, align 4
@gConn = common dso_local global %struct.TYPE_13__ zeroinitializer, align 8
@.str.2 = private unnamed_addr constant [35 x i8] c"%s: must be connected to do that.\0A\00", align 1
@kCmdMustBeDisconnected = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [38 x i8] c"%s: must be disconnected to do that.\0A\00", align 1
@kNoMin = common dso_local global i32 0, align 4
@kNoMax = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_12__*)* @DoCommand to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @DoCommand(%struct.TYPE_12__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_12__*, align 8
  %4 = alloca %struct.TYPE_11__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %3, align 8
  %8 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %9 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %8, i32 0, i32 0
  %10 = load i8**, i8*** %9, align 8
  %11 = getelementptr inbounds i8*, i8** %10, i64 0
  %12 = load i8*, i8** %11, align 8
  %13 = call %struct.TYPE_11__* @GetCommandByName(i8* %12, i32 0)
  store %struct.TYPE_11__* %13, %struct.TYPE_11__** %4, align 8
  %14 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %15 = load %struct.TYPE_11__*, %struct.TYPE_11__** @kAmbiguousCommand, align 8
  %16 = icmp eq %struct.TYPE_11__* %14, %15
  br i1 %16, label %17, label %24

17:                                               ; preds = %1
  %18 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %19 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %18, i32 0, i32 0
  %20 = load i8**, i8*** %19, align 8
  %21 = getelementptr inbounds i8*, i8** %20, i64 0
  %22 = load i8*, i8** %21, align 8
  %23 = call i32 @printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i8* %22)
  store i32 -1, i32* %2, align 4
  br label %119

24:                                               ; preds = %1
  %25 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %26 = load %struct.TYPE_11__*, %struct.TYPE_11__** @kNoCommand, align 8
  %27 = icmp eq %struct.TYPE_11__* %25, %26
  br i1 %27, label %28, label %35

28:                                               ; preds = %24
  %29 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %30 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %29, i32 0, i32 0
  %31 = load i8**, i8*** %30, align 8
  %32 = getelementptr inbounds i8*, i8** %31, i64 0
  %33 = load i8*, i8** %32, align 8
  %34 = call i32 @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i8* %33)
  store i32 -1, i32* %2, align 4
  br label %119

35:                                               ; preds = %24
  br label %36

36:                                               ; preds = %35
  %37 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %38 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 8
  store i32 %39, i32* %6, align 4
  %40 = load i32, i32* %6, align 4
  %41 = sub nsw i32 %40, 1
  store i32 %41, i32* %7, align 4
  %42 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %43 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  store i32 %44, i32* %5, align 4
  %45 = load i32, i32* %5, align 4
  %46 = load i32, i32* @kCmdMustBeConnected, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %59

49:                                               ; preds = %36
  %50 = load i64, i64* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @gConn, i32 0, i32 0), align 8
  %51 = icmp eq i64 %50, 0
  br i1 %51, label %52, label %59

52:                                               ; preds = %49
  %53 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %54 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %53, i32 0, i32 0
  %55 = load i8**, i8*** %54, align 8
  %56 = getelementptr inbounds i8*, i8** %55, i64 0
  %57 = load i8*, i8** %56, align 8
  %58 = call i32 @printf(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0), i8* %57)
  br label %118

59:                                               ; preds = %49, %36
  %60 = load i32, i32* %5, align 4
  %61 = load i32, i32* @kCmdMustBeDisconnected, align 4
  %62 = and i32 %60, %61
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %74

64:                                               ; preds = %59
  %65 = load i64, i64* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @gConn, i32 0, i32 0), align 8
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %74

67:                                               ; preds = %64
  %68 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %69 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %68, i32 0, i32 0
  %70 = load i8**, i8*** %69, align 8
  %71 = getelementptr inbounds i8*, i8** %70, i64 0
  %72 = load i8*, i8** %71, align 8
  %73 = call i32 @printf(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.3, i64 0, i64 0), i8* %72)
  br label %117

74:                                               ; preds = %64, %59
  %75 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %76 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = load i32, i32* @kNoMin, align 4
  %79 = icmp ne i32 %77, %78
  br i1 %79, label %80, label %89

80:                                               ; preds = %74
  %81 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %82 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = load i32, i32* %7, align 4
  %85 = icmp sgt i32 %83, %84
  br i1 %85, label %86, label %89

86:                                               ; preds = %80
  %87 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %88 = call i32 @PrintCmdUsage(%struct.TYPE_11__* %87)
  br label %116

89:                                               ; preds = %80, %74
  %90 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %91 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %90, i32 0, i32 2
  %92 = load i32, i32* %91, align 8
  %93 = load i32, i32* @kNoMax, align 4
  %94 = icmp ne i32 %92, %93
  br i1 %94, label %95, label %104

95:                                               ; preds = %89
  %96 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %97 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %96, i32 0, i32 2
  %98 = load i32, i32* %97, align 8
  %99 = load i32, i32* %7, align 4
  %100 = icmp slt i32 %98, %99
  br i1 %100, label %101, label %104

101:                                              ; preds = %95
  %102 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %103 = call i32 @PrintCmdUsage(%struct.TYPE_11__* %102)
  br label %115

104:                                              ; preds = %95, %89
  %105 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %106 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %105, i32 0, i32 3
  %107 = load i32 (i32, i8**, %struct.TYPE_11__*, %struct.TYPE_12__*)*, i32 (i32, i8**, %struct.TYPE_11__*, %struct.TYPE_12__*)** %106, align 8
  %108 = load i32, i32* %6, align 4
  %109 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %110 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %109, i32 0, i32 0
  %111 = load i8**, i8*** %110, align 8
  %112 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %113 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %114 = call i32 %107(i32 %108, i8** %111, %struct.TYPE_11__* %112, %struct.TYPE_12__* %113)
  br label %115

115:                                              ; preds = %104, %101
  br label %116

116:                                              ; preds = %115, %86
  br label %117

117:                                              ; preds = %116, %67
  br label %118

118:                                              ; preds = %117, %52
  store i32 0, i32* %2, align 4
  br label %119

119:                                              ; preds = %118, %28, %17
  %120 = load i32, i32* %2, align 4
  ret i32 %120
}

declare dso_local %struct.TYPE_11__* @GetCommandByName(i8*, i32) #1

declare dso_local i32 @printf(i8*, i8*) #1

declare dso_local i32 @PrintCmdUsage(%struct.TYPE_11__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
