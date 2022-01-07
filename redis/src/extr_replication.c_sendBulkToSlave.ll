; ModuleID = '/home/carl/AnghaBench/redis/src/extr_replication.c_sendBulkToSlave.c'
source_filename = "/home/carl/AnghaBench/redis/src/extr_replication.c_sendBulkToSlave.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i8*, i32, i64, i64, i32 }

@PROTO_IOBUF_LEN = common dso_local global i32 0, align 4
@LL_VERBOSE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [48 x i8] c"Write error sending RDB preamble to replica: %s\00", align 1
@server = common dso_local global %struct.TYPE_7__ zeroinitializer, align 4
@SEEK_SET = common dso_local global i32 0, align 4
@LL_WARNING = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [37 x i8] c"Read error sending DB to replica: %s\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"premature EOF\00", align 1
@errno = common dso_local global i32 0, align 4
@CONN_STATE_CONNECTED = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [38 x i8] c"Write error sending DB to replica: %s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sendBulkToSlave(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca %struct.TYPE_6__*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32* %0, i32** %2, align 8
  %9 = load i32*, i32** %2, align 8
  %10 = call %struct.TYPE_6__* @connGetPrivateData(i32* %9)
  store %struct.TYPE_6__* %10, %struct.TYPE_6__** %3, align 8
  %11 = load i32, i32* @PROTO_IOBUF_LEN, align 4
  %12 = zext i32 %11 to i64
  %13 = call i8* @llvm.stacksave()
  store i8* %13, i8** %4, align 8
  %14 = alloca i8, i64 %12, align 16
  store i64 %12, i64* %5, align 8
  %15 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 0
  %17 = load i8*, i8** %16, align 8
  %18 = icmp ne i8* %17, null
  br i1 %18, label %19, label %62

19:                                               ; preds = %1
  %20 = load i32*, i32** %2, align 8
  %21 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 0
  %23 = load i8*, i8** %22, align 8
  %24 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 0
  %26 = load i8*, i8** %25, align 8
  %27 = call i64 @sdslen(i8* %26)
  %28 = trunc i64 %27 to i32
  %29 = call i32 @connWrite(i32* %20, i8* %23, i32 %28)
  store i32 %29, i32* %6, align 4
  %30 = load i32, i32* %6, align 4
  %31 = icmp eq i32 %30, -1
  br i1 %31, label %32, label %39

32:                                               ; preds = %19
  %33 = load i32, i32* @LL_VERBOSE, align 4
  %34 = load i32*, i32** %2, align 8
  %35 = call i8* @connGetLastError(i32* %34)
  %36 = call i32 @serverLog(i32 %33, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0), i8* %35)
  %37 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %38 = call i32 @freeClient(%struct.TYPE_6__* %37)
  store i32 1, i32* %8, align 4
  br label %140

39:                                               ; preds = %19
  %40 = load i32, i32* %6, align 4
  %41 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @server, i32 0, i32 0), align 4
  %42 = add nsw i32 %41, %40
  store i32 %42, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @server, i32 0, i32 0), align 4
  %43 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 0
  %45 = load i8*, i8** %44, align 8
  %46 = load i32, i32* %6, align 4
  %47 = call i32 @sdsrange(i8* %45, i32 %46, i32 -1)
  %48 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 0
  %50 = load i8*, i8** %49, align 8
  %51 = call i64 @sdslen(i8* %50)
  %52 = icmp eq i64 %51, 0
  br i1 %52, label %53, label %60

53:                                               ; preds = %39
  %54 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i32 0, i32 0
  %56 = load i8*, i8** %55, align 8
  %57 = call i32 @sdsfree(i8* %56)
  %58 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i32 0, i32 0
  store i8* null, i8** %59, align 8
  br label %61

60:                                               ; preds = %39
  store i32 1, i32* %8, align 4
  br label %140

61:                                               ; preds = %53
  br label %62

62:                                               ; preds = %61, %1
  %63 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 8
  %66 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %67 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %66, i32 0, i32 2
  %68 = load i64, i64* %67, align 8
  %69 = load i32, i32* @SEEK_SET, align 4
  %70 = call i32 @lseek(i32 %65, i64 %68, i32 %69)
  %71 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %72 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 8
  %74 = load i32, i32* @PROTO_IOBUF_LEN, align 4
  %75 = call i32 @read(i32 %73, i8* %14, i32 %74)
  store i32 %75, i32* %7, align 4
  %76 = load i32, i32* %7, align 4
  %77 = icmp sle i32 %76, 0
  br i1 %77, label %78, label %91

78:                                               ; preds = %62
  %79 = load i32, i32* @LL_WARNING, align 4
  %80 = load i32, i32* %7, align 4
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %82, label %83

82:                                               ; preds = %78
  br label %86

83:                                               ; preds = %78
  %84 = load i32, i32* @errno, align 4
  %85 = call i8* @strerror(i32 %84)
  br label %86

86:                                               ; preds = %83, %82
  %87 = phi i8* [ getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0), %82 ], [ %85, %83 ]
  %88 = call i32 @serverLog(i32 %79, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i8* %87)
  %89 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %90 = call i32 @freeClient(%struct.TYPE_6__* %89)
  store i32 1, i32* %8, align 4
  br label %140

91:                                               ; preds = %62
  %92 = load i32*, i32** %2, align 8
  %93 = load i32, i32* %7, align 4
  %94 = call i32 @connWrite(i32* %92, i8* %14, i32 %93)
  store i32 %94, i32* %6, align 4
  %95 = icmp eq i32 %94, -1
  br i1 %95, label %96, label %109

96:                                               ; preds = %91
  %97 = load i32*, i32** %2, align 8
  %98 = call i64 @connGetState(i32* %97)
  %99 = load i64, i64* @CONN_STATE_CONNECTED, align 8
  %100 = icmp ne i64 %98, %99
  br i1 %100, label %101, label %108

101:                                              ; preds = %96
  %102 = load i32, i32* @LL_WARNING, align 4
  %103 = load i32*, i32** %2, align 8
  %104 = call i8* @connGetLastError(i32* %103)
  %105 = call i32 @serverLog(i32 %102, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.3, i64 0, i64 0), i8* %104)
  %106 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %107 = call i32 @freeClient(%struct.TYPE_6__* %106)
  br label %108

108:                                              ; preds = %101, %96
  store i32 1, i32* %8, align 4
  br label %140

109:                                              ; preds = %91
  %110 = load i32, i32* %6, align 4
  %111 = sext i32 %110 to i64
  %112 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %113 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %112, i32 0, i32 2
  %114 = load i64, i64* %113, align 8
  %115 = add nsw i64 %114, %111
  store i64 %115, i64* %113, align 8
  %116 = load i32, i32* %6, align 4
  %117 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @server, i32 0, i32 0), align 4
  %118 = add nsw i32 %117, %116
  store i32 %118, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @server, i32 0, i32 0), align 4
  %119 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %120 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %119, i32 0, i32 2
  %121 = load i64, i64* %120, align 8
  %122 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %123 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %122, i32 0, i32 3
  %124 = load i64, i64* %123, align 8
  %125 = icmp eq i64 %121, %124
  br i1 %125, label %126, label %139

126:                                              ; preds = %109
  %127 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %128 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %127, i32 0, i32 1
  %129 = load i32, i32* %128, align 8
  %130 = call i32 @close(i32 %129)
  %131 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %132 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %131, i32 0, i32 1
  store i32 -1, i32* %132, align 8
  %133 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %134 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %133, i32 0, i32 4
  %135 = load i32, i32* %134, align 8
  %136 = call i32 @connSetWriteHandler(i32 %135, i32* null)
  %137 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %138 = call i32 @putSlaveOnline(%struct.TYPE_6__* %137)
  br label %139

139:                                              ; preds = %126, %109
  store i32 0, i32* %8, align 4
  br label %140

140:                                              ; preds = %139, %108, %86, %60, %32
  %141 = load i8*, i8** %4, align 8
  call void @llvm.stackrestore(i8* %141)
  %142 = load i32, i32* %8, align 4
  switch i32 %142, label %144 [
    i32 0, label %143
    i32 1, label %143
  ]

143:                                              ; preds = %140, %140
  ret void

144:                                              ; preds = %140
  unreachable
}

declare dso_local %struct.TYPE_6__* @connGetPrivateData(i32*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @connWrite(i32*, i8*, i32) #1

declare dso_local i64 @sdslen(i8*) #1

declare dso_local i32 @serverLog(i32, i8*, i8*) #1

declare dso_local i8* @connGetLastError(i32*) #1

declare dso_local i32 @freeClient(%struct.TYPE_6__*) #1

declare dso_local i32 @sdsrange(i8*, i32, i32) #1

declare dso_local i32 @sdsfree(i8*) #1

declare dso_local i32 @lseek(i32, i64, i32) #1

declare dso_local i32 @read(i32, i8*, i32) #1

declare dso_local i8* @strerror(i32) #1

declare dso_local i64 @connGetState(i32*) #1

declare dso_local i32 @close(i32) #1

declare dso_local i32 @connSetWriteHandler(i32, i32*) #1

declare dso_local i32 @putSlaveOnline(%struct.TYPE_6__*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
