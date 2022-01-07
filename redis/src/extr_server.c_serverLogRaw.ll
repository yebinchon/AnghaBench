; ModuleID = '/home/carl/AnghaBench/redis/src/extr_server.c_serverLogRaw.c'
source_filename = "/home/carl/AnghaBench/redis/src/extr_server.c_serverLogRaw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i8*, i32, i64, i64, i64, i64, i32, i32 }
%struct.timeval = type { i64, i32 }
%struct.tm = type { i32 }

@LOG_DEBUG = common dso_local global i32 0, align 4
@LOG_INFO = common dso_local global i32 0, align 4
@LOG_NOTICE = common dso_local global i32 0, align 4
@LOG_WARNING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c".-*#\00", align 1
@LL_RAW = common dso_local global i32 0, align 4
@server = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@stdout = common dso_local global i32* null, align 8
@.str.1 = private unnamed_addr constant [2 x i8] c"a\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.3 = private unnamed_addr constant [19 x i8] c"%d %b %Y %H:%M:%S.\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"%03d\00", align 1
@.str.5 = private unnamed_addr constant [16 x i8] c"%d:%c %s %c %s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @serverLogRaw(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca [4 x i32], align 16
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca [64 x i8], align 16
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.timeval, align 8
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca %struct.tm, align 4
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %16 = getelementptr inbounds [4 x i32], [4 x i32]* %5, i64 0, i64 0
  %17 = load i32, i32* @LOG_DEBUG, align 4
  store i32 %17, i32* %16, align 4
  %18 = getelementptr inbounds i32, i32* %16, i64 1
  %19 = load i32, i32* @LOG_INFO, align 4
  store i32 %19, i32* %18, align 4
  %20 = getelementptr inbounds i32, i32* %18, i64 1
  %21 = load i32, i32* @LOG_NOTICE, align 4
  store i32 %21, i32* %20, align 4
  %22 = getelementptr inbounds i32, i32* %20, i64 1
  %23 = load i32, i32* @LOG_WARNING, align 4
  store i32 %23, i32* %22, align 4
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8** %6, align 8
  %24 = load i32, i32* %3, align 4
  %25 = load i32, i32* @LL_RAW, align 4
  %26 = and i32 %24, %25
  store i32 %26, i32* %9, align 4
  %27 = load i8*, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @server, i32 0, i32 0), align 8
  %28 = getelementptr inbounds i8, i8* %27, i64 0
  %29 = load i8, i8* %28, align 1
  %30 = sext i8 %29 to i32
  %31 = icmp eq i32 %30, 0
  %32 = zext i1 %31 to i32
  store i32 %32, i32* %10, align 4
  %33 = load i32, i32* %3, align 4
  %34 = and i32 %33, 255
  store i32 %34, i32* %3, align 4
  %35 = load i32, i32* %3, align 4
  %36 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @server, i32 0, i32 1), align 8
  %37 = icmp slt i32 %35, %36
  br i1 %37, label %38, label %39

38:                                               ; preds = %2
  br label %128

39:                                               ; preds = %2
  %40 = load i32, i32* %10, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %39
  %43 = load i32*, i32** @stdout, align 8
  br label %47

44:                                               ; preds = %39
  %45 = load i8*, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @server, i32 0, i32 0), align 8
  %46 = call i32* @fopen(i8* %45, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  br label %47

47:                                               ; preds = %44, %42
  %48 = phi i32* [ %43, %42 ], [ %46, %44 ]
  store i32* %48, i32** %7, align 8
  %49 = load i32*, i32** %7, align 8
  %50 = icmp ne i32* %49, null
  br i1 %50, label %52, label %51

51:                                               ; preds = %47
  br label %128

52:                                               ; preds = %47
  %53 = load i32, i32* %9, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %59

55:                                               ; preds = %52
  %56 = load i32*, i32** %7, align 8
  %57 = load i8*, i8** %4, align 8
  %58 = call i32 (i32*, i8*, ...) @fprintf(i32* %56, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i8* %57)
  br label %110

59:                                               ; preds = %52
  %60 = call i64 (...) @getpid()
  store i64 %60, i64* %14, align 8
  %61 = call i32 @gettimeofday(%struct.timeval* %12, i32* null)
  %62 = getelementptr inbounds %struct.timeval, %struct.timeval* %12, i32 0, i32 1
  %63 = load i32, i32* %62, align 8
  %64 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @server, i32 0, i32 7), align 4
  %65 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @server, i32 0, i32 6), align 8
  %66 = call i32 @nolocks_localtime(%struct.tm* %15, i32 %63, i32 %64, i32 %65)
  %67 = getelementptr inbounds [64 x i8], [64 x i8]* %8, i64 0, i64 0
  %68 = call i32 @strftime(i8* %67, i32 64, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0), %struct.tm* %15)
  store i32 %68, i32* %11, align 4
  %69 = getelementptr inbounds [64 x i8], [64 x i8]* %8, i64 0, i64 0
  %70 = load i32, i32* %11, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds i8, i8* %69, i64 %71
  %73 = load i32, i32* %11, align 4
  %74 = sext i32 %73 to i64
  %75 = sub i64 64, %74
  %76 = trunc i64 %75 to i32
  %77 = getelementptr inbounds %struct.timeval, %struct.timeval* %12, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = trunc i64 %78 to i32
  %80 = sdiv i32 %79, 1000
  %81 = call i32 @snprintf(i8* %72, i32 %76, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i32 %80)
  %82 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @server, i32 0, i32 5), align 8
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %85

84:                                               ; preds = %59
  store i32 88, i32* %13, align 4
  br label %96

85:                                               ; preds = %59
  %86 = load i64, i64* %14, align 8
  %87 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @server, i32 0, i32 2), align 8
  %88 = icmp ne i64 %86, %87
  br i1 %88, label %89, label %90

89:                                               ; preds = %85
  store i32 67, i32* %13, align 4
  br label %95

90:                                               ; preds = %85
  %91 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @server, i32 0, i32 4), align 8
  %92 = icmp ne i64 %91, 0
  %93 = zext i1 %92 to i64
  %94 = select i1 %92, i32 83, i32 77
  store i32 %94, i32* %13, align 4
  br label %95

95:                                               ; preds = %90, %89
  br label %96

96:                                               ; preds = %95, %84
  %97 = load i32*, i32** %7, align 8
  %98 = call i64 (...) @getpid()
  %99 = trunc i64 %98 to i32
  %100 = load i32, i32* %13, align 4
  %101 = getelementptr inbounds [64 x i8], [64 x i8]* %8, i64 0, i64 0
  %102 = load i8*, i8** %6, align 8
  %103 = load i32, i32* %3, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds i8, i8* %102, i64 %104
  %106 = load i8, i8* %105, align 1
  %107 = sext i8 %106 to i32
  %108 = load i8*, i8** %4, align 8
  %109 = call i32 (i32*, i8*, ...) @fprintf(i32* %97, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i64 0, i64 0), i32 %99, i32 %100, i8* %101, i32 %107, i8* %108)
  br label %110

110:                                              ; preds = %96, %55
  %111 = load i32*, i32** %7, align 8
  %112 = call i32 @fflush(i32* %111)
  %113 = load i32, i32* %10, align 4
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %118, label %115

115:                                              ; preds = %110
  %116 = load i32*, i32** %7, align 8
  %117 = call i32 @fclose(i32* %116)
  br label %118

118:                                              ; preds = %115, %110
  %119 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @server, i32 0, i32 3), align 8
  %120 = icmp ne i64 %119, 0
  br i1 %120, label %121, label %128

121:                                              ; preds = %118
  %122 = load i32, i32* %3, align 4
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds [4 x i32], [4 x i32]* %5, i64 0, i64 %123
  %125 = load i32, i32* %124, align 4
  %126 = load i8*, i8** %4, align 8
  %127 = call i32 @syslog(i32 %125, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i8* %126)
  br label %128

128:                                              ; preds = %38, %51, %121, %118
  ret void
}

declare dso_local i32* @fopen(i8*, i8*) #1

declare dso_local i32 @fprintf(i32*, i8*, ...) #1

declare dso_local i64 @getpid(...) #1

declare dso_local i32 @gettimeofday(%struct.timeval*, i32*) #1

declare dso_local i32 @nolocks_localtime(%struct.tm*, i32, i32, i32) #1

declare dso_local i32 @strftime(i8*, i32, i8*, %struct.tm*) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #1

declare dso_local i32 @fflush(i32*) #1

declare dso_local i32 @fclose(i32*) #1

declare dso_local i32 @syslog(i32, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
