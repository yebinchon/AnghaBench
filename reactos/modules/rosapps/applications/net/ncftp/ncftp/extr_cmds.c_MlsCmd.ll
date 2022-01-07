; ModuleID = '/home/carl/AnghaBench/reactos/modules/rosapps/applications/net/ncftp/ncftp/extr_cmds.c_MlsCmd.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rosapps/applications/net/ncftp/ncftp/extr_cmds.c_MlsCmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i8*, %struct.TYPE_4__* }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }

@gUnusedArg = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"dt\00", align 1
@gOptInd = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@gConn = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [3 x i8] c"-d\00", align 1
@.str.3 = private unnamed_addr constant [15 x i8] c"Could not MLSD\00", align 1
@.str.4 = private unnamed_addr constant [15 x i8] c"Could not MLST\00", align 1
@stdout = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @MlsCmd(i32 %0, i8** %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8**, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_4__*, align 8
  %12 = alloca %struct.TYPE_4__*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.TYPE_5__, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i8*, align 8
  store i32 %0, i32* %5, align 4
  store i8** %1, i8*** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  store i32 1, i32* %15, align 4
  %18 = load i32, i32* @gUnusedArg, align 4
  %19 = call i32 @ARGSUSED(i32 %18)
  %20 = call i32 (...) @GetoptReset()
  br label %21

21:                                               ; preds = %36, %4
  %22 = load i32, i32* %5, align 4
  %23 = load i8**, i8*** %6, align 8
  %24 = call i32 @Getopt(i32 %22, i8** %23, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  store i32 %24, i32* %10, align 4
  %25 = icmp sge i32 %24, 0
  br i1 %25, label %26, label %37

26:                                               ; preds = %21
  %27 = load i32, i32* %10, align 4
  %28 = icmp eq i32 %27, 100
  br i1 %28, label %32, label %29

29:                                               ; preds = %26
  %30 = load i32, i32* %10, align 4
  %31 = icmp eq i32 %30, 116
  br i1 %31, label %32, label %33

32:                                               ; preds = %29, %26
  store i32 0, i32* %15, align 4
  br label %36

33:                                               ; preds = %29
  %34 = load i32, i32* %7, align 4
  %35 = call i32 @PrintCmdUsage(i32 %34)
  br label %141

36:                                               ; preds = %32
  br label %21

37:                                               ; preds = %21
  %38 = load i32, i32* @gOptInd, align 4
  store i32 %38, i32* %9, align 4
  %39 = load i32, i32* %9, align 4
  %40 = load i32, i32* %5, align 4
  %41 = icmp eq i32 %39, %40
  br i1 %41, label %42, label %85

42:                                               ; preds = %37
  store i32 1, i32* %16, align 4
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), i8** %17, align 8
  %43 = load i8*, i8** %17, align 8
  %44 = load i32, i32* %15, align 4
  %45 = icmp eq i32 %44, 0
  %46 = zext i1 %45 to i64
  %47 = select i1 %45, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0)
  %48 = call i32 @FTPListToMemory2(i32* @gConn, i8* %43, %struct.TYPE_5__* %14, i8* %47, i32 1, i32* %16)
  store i32 %48, i32* %13, align 4
  %49 = icmp slt i32 %48, 0
  br i1 %49, label %50, label %62

50:                                               ; preds = %42
  %51 = load i32, i32* %15, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %57

53:                                               ; preds = %50
  %54 = load i32, i32* %13, align 4
  %55 = load i8*, i8** %17, align 8
  %56 = call i32 @FTPPerror(i32* @gConn, i32 %54, i32 0, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0), i8* %55)
  br label %61

57:                                               ; preds = %50
  %58 = load i32, i32* %13, align 4
  %59 = load i8*, i8** %17, align 8
  %60 = call i32 @FTPPerror(i32* @gConn, i32 %58, i32 0, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0), i8* %59)
  br label %61

61:                                               ; preds = %57, %53
  br label %84

62:                                               ; preds = %42
  %63 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 0
  %64 = load %struct.TYPE_4__*, %struct.TYPE_4__** %63, align 8
  store %struct.TYPE_4__* %64, %struct.TYPE_4__** %11, align 8
  br label %65

65:                                               ; preds = %81, %62
  %66 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %67 = icmp ne %struct.TYPE_4__* %66, null
  br i1 %67, label %68, label %83

68:                                               ; preds = %65
  %69 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 1
  %71 = load %struct.TYPE_4__*, %struct.TYPE_4__** %70, align 8
  store %struct.TYPE_4__* %71, %struct.TYPE_4__** %12, align 8
  %72 = load i32, i32* @stdout, align 4
  %73 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i32 0, i32 0
  %75 = load i8*, i8** %74, align 8
  %76 = call i32 @fprintf(i32 %72, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0), i8* %75)
  %77 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %77, i32 0, i32 0
  %79 = load i8*, i8** %78, align 8
  %80 = call i32 @Trace(i32 0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0), i8* %79)
  br label %81

81:                                               ; preds = %68
  %82 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  store %struct.TYPE_4__* %82, %struct.TYPE_4__** %11, align 8
  br label %65

83:                                               ; preds = %65
  br label %84

84:                                               ; preds = %83, %61
  br label %85

85:                                               ; preds = %84, %37
  br label %86

86:                                               ; preds = %138, %85
  %87 = load i32, i32* %9, align 4
  %88 = load i32, i32* %5, align 4
  %89 = icmp slt i32 %87, %88
  br i1 %89, label %90, label %141

90:                                               ; preds = %86
  store i32 1, i32* %16, align 4
  %91 = load i8**, i8*** %6, align 8
  %92 = load i32, i32* %9, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds i8*, i8** %91, i64 %93
  %95 = load i8*, i8** %94, align 8
  store i8* %95, i8** %17, align 8
  %96 = load i8*, i8** %17, align 8
  %97 = load i32, i32* %15, align 4
  %98 = icmp eq i32 %97, 0
  %99 = zext i1 %98 to i64
  %100 = select i1 %98, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0)
  %101 = call i32 @FTPListToMemory2(i32* @gConn, i8* %96, %struct.TYPE_5__* %14, i8* %100, i32 1, i32* %16)
  store i32 %101, i32* %13, align 4
  %102 = icmp slt i32 %101, 0
  br i1 %102, label %103, label %115

103:                                              ; preds = %90
  %104 = load i32, i32* %15, align 4
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %110

106:                                              ; preds = %103
  %107 = load i32, i32* %13, align 4
  %108 = load i8*, i8** %17, align 8
  %109 = call i32 @FTPPerror(i32* @gConn, i32 %107, i32 0, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0), i8* %108)
  br label %114

110:                                              ; preds = %103
  %111 = load i32, i32* %13, align 4
  %112 = load i8*, i8** %17, align 8
  %113 = call i32 @FTPPerror(i32* @gConn, i32 %111, i32 0, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0), i8* %112)
  br label %114

114:                                              ; preds = %110, %106
  br label %137

115:                                              ; preds = %90
  %116 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 0
  %117 = load %struct.TYPE_4__*, %struct.TYPE_4__** %116, align 8
  store %struct.TYPE_4__* %117, %struct.TYPE_4__** %11, align 8
  br label %118

118:                                              ; preds = %134, %115
  %119 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %120 = icmp ne %struct.TYPE_4__* %119, null
  br i1 %120, label %121, label %136

121:                                              ; preds = %118
  %122 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %123 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %122, i32 0, i32 1
  %124 = load %struct.TYPE_4__*, %struct.TYPE_4__** %123, align 8
  store %struct.TYPE_4__* %124, %struct.TYPE_4__** %12, align 8
  %125 = load i32, i32* @stdout, align 4
  %126 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %127 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %126, i32 0, i32 0
  %128 = load i8*, i8** %127, align 8
  %129 = call i32 @fprintf(i32 %125, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0), i8* %128)
  %130 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %131 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %130, i32 0, i32 0
  %132 = load i8*, i8** %131, align 8
  %133 = call i32 @Trace(i32 0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0), i8* %132)
  br label %134

134:                                              ; preds = %121
  %135 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  store %struct.TYPE_4__* %135, %struct.TYPE_4__** %11, align 8
  br label %118

136:                                              ; preds = %118
  br label %137

137:                                              ; preds = %136, %114
  br label %138

138:                                              ; preds = %137
  %139 = load i32, i32* %9, align 4
  %140 = add nsw i32 %139, 1
  store i32 %140, i32* %9, align 4
  br label %86

141:                                              ; preds = %33, %86
  ret void
}

declare dso_local i32 @ARGSUSED(i32) #1

declare dso_local i32 @GetoptReset(...) #1

declare dso_local i32 @Getopt(i32, i8**, i8*) #1

declare dso_local i32 @PrintCmdUsage(i32) #1

declare dso_local i32 @FTPListToMemory2(i32*, i8*, %struct.TYPE_5__*, i8*, i32, i32*) #1

declare dso_local i32 @FTPPerror(i32*, i32, i32, i8*, i8*) #1

declare dso_local i32 @fprintf(i32, i8*, i8*) #1

declare dso_local i32 @Trace(i32, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
