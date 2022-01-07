; ModuleID = '/home/carl/AnghaBench/redis/src/extr_redis-benchmark.c_writeHandler.c'
source_filename = "/home/carl/AnghaBench/redis/src/extr_redis-benchmark.c_writeHandler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, i32, i64, i64, i32 }
%struct.TYPE_9__ = type { i64, i64, i32, %struct.TYPE_8__*, i8*, i32, i32 }
%struct.TYPE_8__ = type { i32 }

@config = common dso_local global %struct.TYPE_10__ zeroinitializer, align 8
@errno = common dso_local global i64 0, align 8
@EPIPE = common dso_local global i64 0, align 8
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"Writing to socket: %s\0A\00", align 1
@AE_WRITABLE = common dso_local global i32 0, align 4
@AE_READABLE = common dso_local global i32 0, align 4
@readHandler = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, i8*, i32)* @writeHandler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @writeHandler(i32* %0, i32 %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_9__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  store i32 %3, i32* %8, align 4
  %13 = load i8*, i8** %7, align 8
  %14 = bitcast i8* %13 to %struct.TYPE_9__*
  store %struct.TYPE_9__* %14, %struct.TYPE_9__** %9, align 8
  %15 = load i32*, i32** %5, align 8
  %16 = ptrtoint i32* %15 to i32
  %17 = call i32 @UNUSED(i32 %16)
  %18 = load i32, i32* %6, align 4
  %19 = call i32 @UNUSED(i32 %18)
  %20 = load i32, i32* %8, align 4
  %21 = call i32 @UNUSED(i32 %20)
  %22 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %23 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp eq i64 %24, 0
  br i1 %25, label %26, label %64

26:                                               ; preds = %4
  store i32 0, i32* %10, align 4
  %27 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @config, i32 0, i32 4), align 8
  %28 = load i32, i32* %10, align 4
  %29 = call i32 @atomicGetIncr(i32 %27, i32 %28, i32 1)
  %30 = load i32, i32* %10, align 4
  %31 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @config, i32 0, i32 0), align 8
  %32 = icmp sge i32 %30, %31
  br i1 %32, label %33, label %36

33:                                               ; preds = %26
  %34 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %35 = call i32 @freeClient(%struct.TYPE_9__* %34)
  br label %145

36:                                               ; preds = %26
  %37 = load i64, i64* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @config, i32 0, i32 3), align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %36
  %40 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %41 = call i32 @randomizeClientKey(%struct.TYPE_9__* %40)
  br label %42

42:                                               ; preds = %39, %36
  %43 = load i64, i64* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @config, i32 0, i32 2), align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %53

45:                                               ; preds = %42
  %46 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %47 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = icmp sgt i64 %48, 0
  br i1 %49, label %50, label %53

50:                                               ; preds = %45
  %51 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %52 = call i32 @setClusterKeyHashTag(%struct.TYPE_9__* %51)
  br label %53

53:                                               ; preds = %50, %45, %42
  %54 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @config, i32 0, i32 1), align 4
  %55 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %56 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %55, i32 0, i32 6
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @atomicGet(i32 %54, i32 %57)
  %59 = call i32 (...) @ustime()
  %60 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %61 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %60, i32 0, i32 5
  store i32 %59, i32* %61, align 8
  %62 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %63 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %62, i32 0, i32 2
  store i32 -1, i32* %63, align 8
  br label %64

64:                                               ; preds = %53, %4
  %65 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %66 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %65, i32 0, i32 4
  %67 = load i8*, i8** %66, align 8
  %68 = call i64 @sdslen(i8* %67)
  %69 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %70 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = icmp sgt i64 %68, %71
  br i1 %72, label %73, label %145

73:                                               ; preds = %64
  %74 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %75 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %74, i32 0, i32 4
  %76 = load i8*, i8** %75, align 8
  %77 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %78 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = getelementptr i8, i8* %76, i64 %79
  store i8* %80, i8** %11, align 8
  %81 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %82 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %81, i32 0, i32 3
  %83 = load %struct.TYPE_8__*, %struct.TYPE_8__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = load i8*, i8** %11, align 8
  %87 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %88 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %87, i32 0, i32 4
  %89 = load i8*, i8** %88, align 8
  %90 = call i64 @sdslen(i8* %89)
  %91 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %92 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %91, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = sub nsw i64 %90, %93
  %95 = call i32 @write(i32 %85, i8* %86, i64 %94)
  store i32 %95, i32* %12, align 4
  %96 = load i32, i32* %12, align 4
  %97 = icmp eq i32 %96, -1
  br i1 %97, label %98, label %110

98:                                               ; preds = %73
  %99 = load i64, i64* @errno, align 8
  %100 = load i64, i64* @EPIPE, align 8
  %101 = icmp ne i64 %99, %100
  br i1 %101, label %102, label %107

102:                                              ; preds = %98
  %103 = load i32, i32* @stderr, align 4
  %104 = load i64, i64* @errno, align 8
  %105 = call i8* @strerror(i64 %104)
  %106 = call i32 @fprintf(i32 %103, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i8* %105)
  br label %107

107:                                              ; preds = %102, %98
  %108 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %109 = call i32 @freeClient(%struct.TYPE_9__* %108)
  br label %145

110:                                              ; preds = %73
  %111 = load i32, i32* %12, align 4
  %112 = sext i32 %111 to i64
  %113 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %114 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %113, i32 0, i32 0
  %115 = load i64, i64* %114, align 8
  %116 = add nsw i64 %115, %112
  store i64 %116, i64* %114, align 8
  %117 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %118 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %117, i32 0, i32 4
  %119 = load i8*, i8** %118, align 8
  %120 = call i64 @sdslen(i8* %119)
  %121 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %122 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %121, i32 0, i32 0
  %123 = load i64, i64* %122, align 8
  %124 = icmp eq i64 %120, %123
  br i1 %124, label %125, label %144

125:                                              ; preds = %110
  %126 = load i32*, i32** %5, align 8
  %127 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %128 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %127, i32 0, i32 3
  %129 = load %struct.TYPE_8__*, %struct.TYPE_8__** %128, align 8
  %130 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 4
  %132 = load i32, i32* @AE_WRITABLE, align 4
  %133 = call i32 @aeDeleteFileEvent(i32* %126, i32 %131, i32 %132)
  %134 = load i32*, i32** %5, align 8
  %135 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %136 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %135, i32 0, i32 3
  %137 = load %struct.TYPE_8__*, %struct.TYPE_8__** %136, align 8
  %138 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 4
  %140 = load i32, i32* @AE_READABLE, align 4
  %141 = load i32, i32* @readHandler, align 4
  %142 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %143 = call i32 @aeCreateFileEvent(i32* %134, i32 %139, i32 %140, i32 %141, %struct.TYPE_9__* %142)
  br label %144

144:                                              ; preds = %125, %110
  br label %145

145:                                              ; preds = %33, %107, %144, %64
  ret void
}

declare dso_local i32 @UNUSED(i32) #1

declare dso_local i32 @atomicGetIncr(i32, i32, i32) #1

declare dso_local i32 @freeClient(%struct.TYPE_9__*) #1

declare dso_local i32 @randomizeClientKey(%struct.TYPE_9__*) #1

declare dso_local i32 @setClusterKeyHashTag(%struct.TYPE_9__*) #1

declare dso_local i32 @atomicGet(i32, i32) #1

declare dso_local i32 @ustime(...) #1

declare dso_local i64 @sdslen(i8*) #1

declare dso_local i32 @write(i32, i8*, i64) #1

declare dso_local i32 @fprintf(i32, i8*, i8*) #1

declare dso_local i8* @strerror(i64) #1

declare dso_local i32 @aeDeleteFileEvent(i32*, i32, i32) #1

declare dso_local i32 @aeCreateFileEvent(i32*, i32, i32, i32, %struct.TYPE_9__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
