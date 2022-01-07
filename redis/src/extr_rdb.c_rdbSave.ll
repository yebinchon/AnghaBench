; ModuleID = '/home/carl/AnghaBench/redis/src/extr_rdb.c_rdbSave.c'
source_filename = "/home/carl/AnghaBench/redis/src/extr_rdb.c_rdbSave.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i64, i64 }

@MAXPATHLEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"temp-%d.rdb\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@LL_WARNING = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [70 x i8] c"Failed opening the RDB file %s (in server root dir %s) for saving: %s\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"unknown\00", align 1
@errno = common dso_local global i32 0, align 4
@C_ERR = common dso_local global i32 0, align 4
@RDBFLAGS_NONE = common dso_local global i32 0, align 4
@server = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@REDIS_AUTOSYNC_BYTES = common dso_local global i32 0, align 4
@EOF = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [85 x i8] c"Error moving temp DB file %s on the final destination %s (in server root dir %s): %s\00", align 1
@LL_NOTICE = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [17 x i8] c"DB saved on disk\00", align 1
@C_OK = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [34 x i8] c"Write error saving DB on disk: %s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rdbSave(i8* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca [256 x i8], align 16
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  store i32* %1, i32** %5, align 8
  %15 = load i32, i32* @MAXPATHLEN, align 4
  %16 = zext i32 %15 to i64
  %17 = call i8* @llvm.stacksave()
  store i8* %17, i8** %7, align 8
  %18 = alloca i8, i64 %16, align 16
  store i64 %16, i64* %8, align 8
  store i32 0, i32* %11, align 4
  %19 = getelementptr inbounds [256 x i8], [256 x i8]* %6, i64 0, i64 0
  %20 = call i64 (...) @getpid()
  %21 = trunc i64 %20 to i32
  %22 = call i32 @snprintf(i8* %19, i32 256, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 %21)
  %23 = getelementptr inbounds [256 x i8], [256 x i8]* %6, i64 0, i64 0
  %24 = call i32* @fopen(i8* %23, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  store i32* %24, i32** %9, align 8
  %25 = load i32*, i32** %9, align 8
  %26 = icmp ne i32* %25, null
  br i1 %26, label %43, label %27

27:                                               ; preds = %2
  %28 = load i32, i32* @MAXPATHLEN, align 4
  %29 = call i8* @getcwd(i8* %18, i32 %28)
  store i8* %29, i8** %12, align 8
  %30 = load i32, i32* @LL_WARNING, align 4
  %31 = load i8*, i8** %4, align 8
  %32 = load i8*, i8** %12, align 8
  %33 = icmp ne i8* %32, null
  br i1 %33, label %34, label %36

34:                                               ; preds = %27
  %35 = load i8*, i8** %12, align 8
  br label %37

36:                                               ; preds = %27
  br label %37

37:                                               ; preds = %36, %34
  %38 = phi i8* [ %35, %34 ], [ getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), %36 ]
  %39 = load i32, i32* @errno, align 4
  %40 = call i32 @strerror(i32 %39)
  %41 = call i32 (i32, i8*, ...) @serverLog(i32 %30, i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.2, i64 0, i64 0), i8* %31, i8* %38, i32 %40)
  %42 = load i32, i32* @C_ERR, align 4
  store i32 %42, i32* %3, align 4
  store i32 1, i32* %13, align 4
  br label %122

43:                                               ; preds = %2
  %44 = load i32*, i32** %9, align 8
  %45 = call i32 @rioInitWithFile(i32* %10, i32* %44)
  %46 = load i32, i32* @RDBFLAGS_NONE, align 4
  %47 = call i32 @startSaving(i32 %46)
  %48 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @server, i32 0, i32 3), align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %53

50:                                               ; preds = %43
  %51 = load i32, i32* @REDIS_AUTOSYNC_BYTES, align 4
  %52 = call i32 @rioSetAutoSync(i32* %10, i32 %51)
  br label %53

53:                                               ; preds = %50, %43
  %54 = load i32, i32* @RDBFLAGS_NONE, align 4
  %55 = load i32*, i32** %5, align 8
  %56 = call i32 @rdbSaveRio(i32* %10, i32* %11, i32 %54, i32* %55)
  %57 = load i32, i32* @C_ERR, align 4
  %58 = icmp eq i32 %56, %57
  br i1 %58, label %59, label %61

59:                                               ; preds = %53
  %60 = load i32, i32* %11, align 4
  store i32 %60, i32* @errno, align 4
  br label %111

61:                                               ; preds = %53
  %62 = load i32*, i32** %9, align 8
  %63 = call i64 @fflush(i32* %62)
  %64 = load i64, i64* @EOF, align 8
  %65 = icmp eq i64 %63, %64
  br i1 %65, label %66, label %67

66:                                               ; preds = %61
  br label %111

67:                                               ; preds = %61
  %68 = load i32*, i32** %9, align 8
  %69 = call i32 @fileno(i32* %68)
  %70 = call i32 @fsync(i32 %69)
  %71 = icmp eq i32 %70, -1
  br i1 %71, label %72, label %73

72:                                               ; preds = %67
  br label %111

73:                                               ; preds = %67
  %74 = load i32*, i32** %9, align 8
  %75 = call i64 @fclose(i32* %74)
  %76 = load i64, i64* @EOF, align 8
  %77 = icmp eq i64 %75, %76
  br i1 %77, label %78, label %79

78:                                               ; preds = %73
  br label %111

79:                                               ; preds = %73
  %80 = getelementptr inbounds [256 x i8], [256 x i8]* %6, i64 0, i64 0
  %81 = load i8*, i8** %4, align 8
  %82 = call i32 @rename(i8* %80, i8* %81)
  %83 = icmp eq i32 %82, -1
  br i1 %83, label %84, label %104

84:                                               ; preds = %79
  %85 = load i32, i32* @MAXPATHLEN, align 4
  %86 = call i8* @getcwd(i8* %18, i32 %85)
  store i8* %86, i8** %14, align 8
  %87 = load i32, i32* @LL_WARNING, align 4
  %88 = getelementptr inbounds [256 x i8], [256 x i8]* %6, i64 0, i64 0
  %89 = load i8*, i8** %4, align 8
  %90 = load i8*, i8** %14, align 8
  %91 = icmp ne i8* %90, null
  br i1 %91, label %92, label %94

92:                                               ; preds = %84
  %93 = load i8*, i8** %14, align 8
  br label %95

94:                                               ; preds = %84
  br label %95

95:                                               ; preds = %94, %92
  %96 = phi i8* [ %93, %92 ], [ getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), %94 ]
  %97 = load i32, i32* @errno, align 4
  %98 = call i32 @strerror(i32 %97)
  %99 = call i32 (i32, i8*, ...) @serverLog(i32 %87, i8* getelementptr inbounds ([85 x i8], [85 x i8]* @.str.4, i64 0, i64 0), i8* %88, i8* %89, i8* %96, i32 %98)
  %100 = getelementptr inbounds [256 x i8], [256 x i8]* %6, i64 0, i64 0
  %101 = call i32 @unlink(i8* %100)
  %102 = call i32 @stopSaving(i32 0)
  %103 = load i32, i32* @C_ERR, align 4
  store i32 %103, i32* %3, align 4
  store i32 1, i32* %13, align 4
  br label %122

104:                                              ; preds = %79
  %105 = load i32, i32* @LL_NOTICE, align 4
  %106 = call i32 (i32, i8*, ...) @serverLog(i32 %105, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i64 0, i64 0))
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @server, i32 0, i32 2), align 8
  %107 = call i32 @time(i32* null)
  store i32 %107, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @server, i32 0, i32 1), align 4
  %108 = load i32, i32* @C_OK, align 4
  store i32 %108, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @server, i32 0, i32 0), align 8
  %109 = call i32 @stopSaving(i32 1)
  %110 = load i32, i32* @C_OK, align 4
  store i32 %110, i32* %3, align 4
  store i32 1, i32* %13, align 4
  br label %122

111:                                              ; preds = %78, %72, %66, %59
  %112 = load i32, i32* @LL_WARNING, align 4
  %113 = load i32, i32* @errno, align 4
  %114 = call i32 @strerror(i32 %113)
  %115 = call i32 (i32, i8*, ...) @serverLog(i32 %112, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.6, i64 0, i64 0), i32 %114)
  %116 = load i32*, i32** %9, align 8
  %117 = call i64 @fclose(i32* %116)
  %118 = getelementptr inbounds [256 x i8], [256 x i8]* %6, i64 0, i64 0
  %119 = call i32 @unlink(i8* %118)
  %120 = call i32 @stopSaving(i32 0)
  %121 = load i32, i32* @C_ERR, align 4
  store i32 %121, i32* %3, align 4
  store i32 1, i32* %13, align 4
  br label %122

122:                                              ; preds = %111, %104, %95, %37
  %123 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %123)
  %124 = load i32, i32* %3, align 4
  ret i32 %124
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #2

declare dso_local i64 @getpid(...) #2

declare dso_local i32* @fopen(i8*, i8*) #2

declare dso_local i8* @getcwd(i8*, i32) #2

declare dso_local i32 @serverLog(i32, i8*, ...) #2

declare dso_local i32 @strerror(i32) #2

declare dso_local i32 @rioInitWithFile(i32*, i32*) #2

declare dso_local i32 @startSaving(i32) #2

declare dso_local i32 @rioSetAutoSync(i32*, i32) #2

declare dso_local i32 @rdbSaveRio(i32*, i32*, i32, i32*) #2

declare dso_local i64 @fflush(i32*) #2

declare dso_local i32 @fsync(i32) #2

declare dso_local i32 @fileno(i32*) #2

declare dso_local i64 @fclose(i32*) #2

declare dso_local i32 @rename(i8*, i8*) #2

declare dso_local i32 @unlink(i8*) #2

declare dso_local i32 @stopSaving(i32) #2

declare dso_local i32 @time(i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
