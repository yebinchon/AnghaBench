; ModuleID = '/home/carl/AnghaBench/redis/src/extr_lolwut.c_lolwutCommand.c'
source_filename = "/home/carl/AnghaBench/redis/src/extr_lolwut.c_lolwutCommand.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, %struct.TYPE_9__** }
%struct.TYPE_9__ = type { i32 }

@REDIS_VERSION = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [8 x i8] c"version\00", align 1
@C_OK = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [7 x i8] c"%u.0.0\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @lolwutCommand(%struct.TYPE_8__* %0) #0 {
  %2 = alloca %struct.TYPE_8__*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca [64 x i8], align 16
  %5 = alloca i64, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %2, align 8
  %6 = load i8*, i8** @REDIS_VERSION, align 8
  store i8* %6, i8** %3, align 8
  %7 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %8 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = icmp sge i32 %9, 3
  br i1 %10, label %11, label %46

11:                                               ; preds = %1
  %12 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %13 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %12, i32 0, i32 1
  %14 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %14, i64 1
  %16 = load %struct.TYPE_9__*, %struct.TYPE_9__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @strcasecmp(i32 %18, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %46, label %21

21:                                               ; preds = %11
  %22 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %23 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %24 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %23, i32 0, i32 1
  %25 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %25, i64 2
  %27 = load %struct.TYPE_9__*, %struct.TYPE_9__** %26, align 8
  %28 = call i64 @getLongFromObjectOrReply(%struct.TYPE_8__* %22, %struct.TYPE_9__* %27, i64* %5, i32* null)
  %29 = load i64, i64* @C_OK, align 8
  %30 = icmp ne i64 %28, %29
  br i1 %30, label %31, label %32

31:                                               ; preds = %21
  br label %141

32:                                               ; preds = %21
  %33 = getelementptr inbounds [64 x i8], [64 x i8]* %4, i64 0, i64 0
  %34 = load i64, i64* %5, align 8
  %35 = trunc i64 %34 to i32
  %36 = call i32 @snprintf(i8* %33, i32 64, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32 %35)
  %37 = getelementptr inbounds [64 x i8], [64 x i8]* %4, i64 0, i64 0
  store i8* %37, i8** %3, align 8
  %38 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %39 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %38, i32 0, i32 1
  %40 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %40, i64 2
  store %struct.TYPE_9__** %41, %struct.TYPE_9__*** %39, align 8
  %42 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %43 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = sub nsw i32 %44, 2
  store i32 %45, i32* %43, align 8
  br label %46

46:                                               ; preds = %32, %11, %1
  %47 = load i8*, i8** %3, align 8
  %48 = getelementptr inbounds i8, i8* %47, i64 0
  %49 = load i8, i8* %48, align 1
  %50 = sext i8 %49 to i32
  %51 = icmp eq i32 %50, 53
  br i1 %51, label %52, label %64

52:                                               ; preds = %46
  %53 = load i8*, i8** %3, align 8
  %54 = getelementptr inbounds i8, i8* %53, i64 1
  %55 = load i8, i8* %54, align 1
  %56 = sext i8 %55 to i32
  %57 = icmp eq i32 %56, 46
  br i1 %57, label %58, label %64

58:                                               ; preds = %52
  %59 = load i8*, i8** %3, align 8
  %60 = getelementptr inbounds i8, i8* %59, i64 2
  %61 = load i8, i8* %60, align 1
  %62 = sext i8 %61 to i32
  %63 = icmp ne i32 %62, 57
  br i1 %63, label %82, label %64

64:                                               ; preds = %58, %52, %46
  %65 = load i8*, i8** %3, align 8
  %66 = getelementptr inbounds i8, i8* %65, i64 0
  %67 = load i8, i8* %66, align 1
  %68 = sext i8 %67 to i32
  %69 = icmp eq i32 %68, 52
  br i1 %69, label %70, label %85

70:                                               ; preds = %64
  %71 = load i8*, i8** %3, align 8
  %72 = getelementptr inbounds i8, i8* %71, i64 1
  %73 = load i8, i8* %72, align 1
  %74 = sext i8 %73 to i32
  %75 = icmp eq i32 %74, 46
  br i1 %75, label %76, label %85

76:                                               ; preds = %70
  %77 = load i8*, i8** %3, align 8
  %78 = getelementptr inbounds i8, i8* %77, i64 2
  %79 = load i8, i8* %78, align 1
  %80 = sext i8 %79 to i32
  %81 = icmp eq i32 %80, 57
  br i1 %81, label %82, label %85

82:                                               ; preds = %76, %58
  %83 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %84 = call i32 @lolwut5Command(%struct.TYPE_8__* %83)
  br label %128

85:                                               ; preds = %76, %70, %64
  %86 = load i8*, i8** %3, align 8
  %87 = getelementptr inbounds i8, i8* %86, i64 0
  %88 = load i8, i8* %87, align 1
  %89 = sext i8 %88 to i32
  %90 = icmp eq i32 %89, 54
  br i1 %90, label %91, label %103

91:                                               ; preds = %85
  %92 = load i8*, i8** %3, align 8
  %93 = getelementptr inbounds i8, i8* %92, i64 1
  %94 = load i8, i8* %93, align 1
  %95 = sext i8 %94 to i32
  %96 = icmp eq i32 %95, 46
  br i1 %96, label %97, label %103

97:                                               ; preds = %91
  %98 = load i8*, i8** %3, align 8
  %99 = getelementptr inbounds i8, i8* %98, i64 2
  %100 = load i8, i8* %99, align 1
  %101 = sext i8 %100 to i32
  %102 = icmp ne i32 %101, 57
  br i1 %102, label %121, label %103

103:                                              ; preds = %97, %91, %85
  %104 = load i8*, i8** %3, align 8
  %105 = getelementptr inbounds i8, i8* %104, i64 0
  %106 = load i8, i8* %105, align 1
  %107 = sext i8 %106 to i32
  %108 = icmp eq i32 %107, 53
  br i1 %108, label %109, label %124

109:                                              ; preds = %103
  %110 = load i8*, i8** %3, align 8
  %111 = getelementptr inbounds i8, i8* %110, i64 1
  %112 = load i8, i8* %111, align 1
  %113 = sext i8 %112 to i32
  %114 = icmp eq i32 %113, 46
  br i1 %114, label %115, label %124

115:                                              ; preds = %109
  %116 = load i8*, i8** %3, align 8
  %117 = getelementptr inbounds i8, i8* %116, i64 2
  %118 = load i8, i8* %117, align 1
  %119 = sext i8 %118 to i32
  %120 = icmp eq i32 %119, 57
  br i1 %120, label %121, label %124

121:                                              ; preds = %115, %97
  %122 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %123 = call i32 @lolwut6Command(%struct.TYPE_8__* %122)
  br label %127

124:                                              ; preds = %115, %109, %103
  %125 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %126 = call i32 @lolwutUnstableCommand(%struct.TYPE_8__* %125)
  br label %127

127:                                              ; preds = %124, %121
  br label %128

128:                                              ; preds = %127, %82
  %129 = load i8*, i8** %3, align 8
  %130 = getelementptr inbounds [64 x i8], [64 x i8]* %4, i64 0, i64 0
  %131 = icmp eq i8* %129, %130
  br i1 %131, label %132, label %141

132:                                              ; preds = %128
  %133 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %134 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %133, i32 0, i32 1
  %135 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %134, align 8
  %136 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %135, i64 -2
  store %struct.TYPE_9__** %136, %struct.TYPE_9__*** %134, align 8
  %137 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %138 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 8
  %140 = add nsw i32 %139, 2
  store i32 %140, i32* %138, align 8
  br label %141

141:                                              ; preds = %31, %132, %128
  ret void
}

declare dso_local i32 @strcasecmp(i32, i8*) #1

declare dso_local i64 @getLongFromObjectOrReply(%struct.TYPE_8__*, %struct.TYPE_9__*, i64*, i32*) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #1

declare dso_local i32 @lolwut5Command(%struct.TYPE_8__*) #1

declare dso_local i32 @lolwut6Command(%struct.TYPE_8__*) #1

declare dso_local i32 @lolwutUnstableCommand(%struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
