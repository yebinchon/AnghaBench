; ModuleID = '/home/carl/AnghaBench/redis/src/extr_aof.c_rewriteAppendOnlyFile.c'
source_filename = "/home/carl/AnghaBench/redis/src/extr_aof.c_rewriteAppendOnlyFile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32, i32, i64, i64 }

@.str = private unnamed_addr constant [23 x i8] c"temp-rewriteaof-%d.aof\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@LL_WARNING = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [69 x i8] c"Opening the temp file for AOF rewrite in rewriteAppendOnlyFile(): %s\00", align 1
@errno = common dso_local global i32 0, align 4
@C_ERR = common dso_local global i32 0, align 4
@server = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@REDIS_AUTOSYNC_BYTES = common dso_local global i32 0, align 4
@RDBFLAGS_AOF_PREAMBLE = common dso_local global i32 0, align 4
@EOF = common dso_local global i64 0, align 8
@AE_READABLE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [2 x i8] c"!\00", align 1
@ANET_OK = common dso_local global i64 0, align 8
@LL_NOTICE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [55 x i8] c"Parent agreed to stop sending diffs. Finalizing AOF...\00", align 1
@.str.5 = private unnamed_addr constant [56 x i8] c"Concatenating %.2f MB of AOF diff received from parent.\00", align 1
@.str.6 = private unnamed_addr constant [64 x i8] c"Error moving temp append only file on the final destination: %s\00", align 1
@.str.7 = private unnamed_addr constant [40 x i8] c"SYNC append only file rewrite performed\00", align 1
@C_OK = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [49 x i8] c"Write error writing append only file on disk: %s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rewriteAppendOnlyFile(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca [256 x i8], align 16
  %7 = alloca i8, align 1
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  %11 = getelementptr inbounds [256 x i8], [256 x i8]* %6, i64 0, i64 0
  %12 = call i64 (...) @getpid()
  %13 = trunc i64 %12 to i32
  %14 = call i32 @snprintf(i8* %11, i32 256, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %13)
  %15 = getelementptr inbounds [256 x i8], [256 x i8]* %6, i64 0, i64 0
  %16 = call i32* @fopen(i8* %15, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  store i32* %16, i32** %5, align 8
  %17 = load i32*, i32** %5, align 8
  %18 = icmp ne i32* %17, null
  br i1 %18, label %25, label %19

19:                                               ; preds = %1
  %20 = load i32, i32* @LL_WARNING, align 4
  %21 = load i32, i32* @errno, align 4
  %22 = call double @strerror(i32 %21)
  %23 = call i32 (i32, i8*, ...) @serverLog(i32 %20, i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.2, i64 0, i64 0), double %22)
  %24 = load i32, i32* @C_ERR, align 4
  store i32 %24, i32* %2, align 4
  br label %171

25:                                               ; preds = %1
  %26 = call i32 (...) @sdsempty()
  store i32 %26, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @server, i32 0, i32 0), align 8
  %27 = load i32*, i32** %5, align 8
  %28 = call i32 @rioInitWithFile(i32* %4, i32* %27)
  %29 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @server, i32 0, i32 5), align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %25
  %32 = load i32, i32* @REDIS_AUTOSYNC_BYTES, align 4
  %33 = call i32 @rioSetAutoSync(i32* %4, i32 %32)
  br label %34

34:                                               ; preds = %31, %25
  %35 = load i32, i32* @RDBFLAGS_AOF_PREAMBLE, align 4
  %36 = call i32 @startSaving(i32 %35)
  %37 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @server, i32 0, i32 4), align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %47

39:                                               ; preds = %34
  %40 = load i32, i32* @RDBFLAGS_AOF_PREAMBLE, align 4
  %41 = call i32 @rdbSaveRio(i32* %4, i32* %8, i32 %40, i32* null)
  %42 = load i32, i32* @C_ERR, align 4
  %43 = icmp eq i32 %41, %42
  br i1 %43, label %44, label %46

44:                                               ; preds = %39
  %45 = load i32, i32* %8, align 4
  store i32 %45, i32* @errno, align 4
  br label %160

46:                                               ; preds = %39
  br label %53

47:                                               ; preds = %34
  %48 = call i32 @rewriteAppendOnlyFileRio(i32* %4)
  %49 = load i32, i32* @C_ERR, align 4
  %50 = icmp eq i32 %48, %49
  br i1 %50, label %51, label %52

51:                                               ; preds = %47
  br label %160

52:                                               ; preds = %47
  br label %53

53:                                               ; preds = %52, %46
  %54 = load i32*, i32** %5, align 8
  %55 = call i64 @fflush(i32* %54)
  %56 = load i64, i64* @EOF, align 8
  %57 = icmp eq i64 %55, %56
  br i1 %57, label %58, label %59

58:                                               ; preds = %53
  br label %160

59:                                               ; preds = %53
  %60 = load i32*, i32** %5, align 8
  %61 = call i32 @fileno(i32* %60)
  %62 = call i32 @fsync(i32 %61)
  %63 = icmp eq i32 %62, -1
  br i1 %63, label %64, label %65

64:                                               ; preds = %59
  br label %160

65:                                               ; preds = %59
  store i32 0, i32* %9, align 4
  %66 = call i32 (...) @mstime()
  store i32 %66, i32* %10, align 4
  br label %67

67:                                               ; preds = %85, %82, %65
  %68 = call i32 (...) @mstime()
  %69 = load i32, i32* %10, align 4
  %70 = sub nsw i32 %68, %69
  %71 = icmp slt i32 %70, 1000
  br i1 %71, label %72, label %75

72:                                               ; preds = %67
  %73 = load i32, i32* %9, align 4
  %74 = icmp slt i32 %73, 20
  br label %75

75:                                               ; preds = %72, %67
  %76 = phi i1 [ false, %67 ], [ %74, %72 ]
  br i1 %76, label %77, label %87

77:                                               ; preds = %75
  %78 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @server, i32 0, i32 3), align 4
  %79 = load i32, i32* @AE_READABLE, align 4
  %80 = call i64 @aeWait(i32 %78, i32 %79, i32 1)
  %81 = icmp sle i64 %80, 0
  br i1 %81, label %82, label %85

82:                                               ; preds = %77
  %83 = load i32, i32* %9, align 4
  %84 = add nsw i32 %83, 1
  store i32 %84, i32* %9, align 4
  br label %67

85:                                               ; preds = %77
  store i32 0, i32* %9, align 4
  %86 = call i32 (...) @aofReadDiffFromParent()
  br label %67

87:                                               ; preds = %75
  %88 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @server, i32 0, i32 2), align 8
  %89 = call i32 @write(i32 %88, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0), i32 1)
  %90 = icmp ne i32 %89, 1
  br i1 %90, label %91, label %92

91:                                               ; preds = %87
  br label %160

92:                                               ; preds = %87
  %93 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @server, i32 0, i32 1), align 4
  %94 = call i64 @anetNonBlock(i32* null, i32 %93)
  %95 = load i64, i64* @ANET_OK, align 8
  %96 = icmp ne i64 %94, %95
  br i1 %96, label %97, label %98

97:                                               ; preds = %92
  br label %160

98:                                               ; preds = %92
  %99 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @server, i32 0, i32 1), align 4
  %100 = call i32 @syncRead(i32 %99, i8* %7, i32 1, i32 5000)
  %101 = icmp ne i32 %100, 1
  br i1 %101, label %106, label %102

102:                                              ; preds = %98
  %103 = load i8, i8* %7, align 1
  %104 = sext i8 %103 to i32
  %105 = icmp ne i32 %104, 33
  br i1 %105, label %106, label %107

106:                                              ; preds = %102, %98
  br label %160

107:                                              ; preds = %102
  %108 = load i32, i32* @LL_NOTICE, align 4
  %109 = call i32 (i32, i8*, ...) @serverLog(i32 %108, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.4, i64 0, i64 0))
  %110 = call i32 (...) @aofReadDiffFromParent()
  %111 = load i32, i32* @LL_NOTICE, align 4
  %112 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @server, i32 0, i32 0), align 8
  %113 = call i64 @sdslen(i32 %112)
  %114 = sitofp i64 %113 to double
  %115 = fdiv double %114, 0x4130000000000000
  %116 = call i32 (i32, i8*, ...) @serverLog(i32 %111, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.5, i64 0, i64 0), double %115)
  %117 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @server, i32 0, i32 0), align 8
  %118 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @server, i32 0, i32 0), align 8
  %119 = call i64 @sdslen(i32 %118)
  %120 = call i64 @rioWrite(i32* %4, i32 %117, i64 %119)
  %121 = icmp eq i64 %120, 0
  br i1 %121, label %122, label %123

122:                                              ; preds = %107
  br label %160

123:                                              ; preds = %107
  %124 = load i32*, i32** %5, align 8
  %125 = call i64 @fflush(i32* %124)
  %126 = load i64, i64* @EOF, align 8
  %127 = icmp eq i64 %125, %126
  br i1 %127, label %128, label %129

128:                                              ; preds = %123
  br label %160

129:                                              ; preds = %123
  %130 = load i32*, i32** %5, align 8
  %131 = call i32 @fileno(i32* %130)
  %132 = call i32 @fsync(i32 %131)
  %133 = icmp eq i32 %132, -1
  br i1 %133, label %134, label %135

134:                                              ; preds = %129
  br label %160

135:                                              ; preds = %129
  %136 = load i32*, i32** %5, align 8
  %137 = call i64 @fclose(i32* %136)
  %138 = load i64, i64* @EOF, align 8
  %139 = icmp eq i64 %137, %138
  br i1 %139, label %140, label %141

140:                                              ; preds = %135
  br label %160

141:                                              ; preds = %135
  %142 = getelementptr inbounds [256 x i8], [256 x i8]* %6, i64 0, i64 0
  %143 = load i8*, i8** %3, align 8
  %144 = call i32 @rename(i8* %142, i8* %143)
  %145 = icmp eq i32 %144, -1
  br i1 %145, label %146, label %155

146:                                              ; preds = %141
  %147 = load i32, i32* @LL_WARNING, align 4
  %148 = load i32, i32* @errno, align 4
  %149 = call double @strerror(i32 %148)
  %150 = call i32 (i32, i8*, ...) @serverLog(i32 %147, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.6, i64 0, i64 0), double %149)
  %151 = getelementptr inbounds [256 x i8], [256 x i8]* %6, i64 0, i64 0
  %152 = call i32 @unlink(i8* %151)
  %153 = call i32 @stopSaving(i32 0)
  %154 = load i32, i32* @C_ERR, align 4
  store i32 %154, i32* %2, align 4
  br label %171

155:                                              ; preds = %141
  %156 = load i32, i32* @LL_NOTICE, align 4
  %157 = call i32 (i32, i8*, ...) @serverLog(i32 %156, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.7, i64 0, i64 0))
  %158 = call i32 @stopSaving(i32 1)
  %159 = load i32, i32* @C_OK, align 4
  store i32 %159, i32* %2, align 4
  br label %171

160:                                              ; preds = %140, %134, %128, %122, %106, %97, %91, %64, %58, %51, %44
  %161 = load i32, i32* @LL_WARNING, align 4
  %162 = load i32, i32* @errno, align 4
  %163 = call double @strerror(i32 %162)
  %164 = call i32 (i32, i8*, ...) @serverLog(i32 %161, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.8, i64 0, i64 0), double %163)
  %165 = load i32*, i32** %5, align 8
  %166 = call i64 @fclose(i32* %165)
  %167 = getelementptr inbounds [256 x i8], [256 x i8]* %6, i64 0, i64 0
  %168 = call i32 @unlink(i8* %167)
  %169 = call i32 @stopSaving(i32 0)
  %170 = load i32, i32* @C_ERR, align 4
  store i32 %170, i32* %2, align 4
  br label %171

171:                                              ; preds = %160, %155, %146, %19
  %172 = load i32, i32* %2, align 4
  ret i32 %172
}

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #1

declare dso_local i64 @getpid(...) #1

declare dso_local i32* @fopen(i8*, i8*) #1

declare dso_local i32 @serverLog(i32, i8*, ...) #1

declare dso_local double @strerror(i32) #1

declare dso_local i32 @sdsempty(...) #1

declare dso_local i32 @rioInitWithFile(i32*, i32*) #1

declare dso_local i32 @rioSetAutoSync(i32*, i32) #1

declare dso_local i32 @startSaving(i32) #1

declare dso_local i32 @rdbSaveRio(i32*, i32*, i32, i32*) #1

declare dso_local i32 @rewriteAppendOnlyFileRio(i32*) #1

declare dso_local i64 @fflush(i32*) #1

declare dso_local i32 @fsync(i32) #1

declare dso_local i32 @fileno(i32*) #1

declare dso_local i32 @mstime(...) #1

declare dso_local i64 @aeWait(i32, i32, i32) #1

declare dso_local i32 @aofReadDiffFromParent(...) #1

declare dso_local i32 @write(i32, i8*, i32) #1

declare dso_local i64 @anetNonBlock(i32*, i32) #1

declare dso_local i32 @syncRead(i32, i8*, i32, i32) #1

declare dso_local i64 @sdslen(i32) #1

declare dso_local i64 @rioWrite(i32*, i32, i64) #1

declare dso_local i64 @fclose(i32*) #1

declare dso_local i32 @rename(i8*, i8*) #1

declare dso_local i32 @unlink(i8*) #1

declare dso_local i32 @stopSaving(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
