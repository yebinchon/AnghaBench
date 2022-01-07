; ModuleID = '/home/carl/AnghaBench/redis/src/extr_redis-cli.c_getKeyTypes.c'
source_filename = "/home/carl/AnghaBench/redis/src/extr_redis-cli.c_getKeyTypes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, i8* }
%struct.TYPE_9__ = type { i32, i64, i8*, %struct.TYPE_8__** }
%struct.TYPE_8__ = type { i8* }

@context = common dso_local global %struct.TYPE_10__* null, align 8
@.str = private unnamed_addr constant [8 x i8] c"TYPE %s\00", align 1
@REDIS_OK = common dso_local global i64 0, align 8
@stderr = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [42 x i8] c"Error getting type for key '%s' (%d: %s)\0A\00", align 1
@REDIS_REPLY_STATUS = common dso_local global i64 0, align 8
@REDIS_REPLY_ERROR = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [28 x i8] c"TYPE returned an error: %s\0A\00", align 1
@.str.3 = private unnamed_addr constant [47 x i8] c"Invalid reply type (%d) for TYPE on key '%s'!\0A\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"none\00", align 1
@type_other = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.TYPE_9__*, i32**)* @getKeyTypes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @getKeyTypes(i32* %0, %struct.TYPE_9__* %1, i32** %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_9__*, align 8
  %6 = alloca i32**, align 8
  %7 = alloca %struct.TYPE_9__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  store i32* %0, i32** %4, align 8
  store %struct.TYPE_9__* %1, %struct.TYPE_9__** %5, align 8
  store i32** %2, i32*** %6, align 8
  store i32 0, i32* %8, align 4
  br label %12

12:                                               ; preds = %30, %3
  %13 = load i32, i32* %8, align 4
  %14 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %15 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = icmp ult i32 %13, %16
  br i1 %17, label %18, label %33

18:                                               ; preds = %12
  %19 = load %struct.TYPE_10__*, %struct.TYPE_10__** @context, align 8
  %20 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %21 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %20, i32 0, i32 3
  %22 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %21, align 8
  %23 = load i32, i32* %8, align 4
  %24 = zext i32 %23 to i64
  %25 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %22, i64 %24
  %26 = load %struct.TYPE_8__*, %struct.TYPE_8__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %26, i32 0, i32 0
  %28 = load i8*, i8** %27, align 8
  %29 = call i32 @redisAppendCommand(%struct.TYPE_10__* %19, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8* %28)
  br label %30

30:                                               ; preds = %18
  %31 = load i32, i32* %8, align 4
  %32 = add i32 %31, 1
  store i32 %32, i32* %8, align 4
  br label %12

33:                                               ; preds = %12
  store i32 0, i32* %8, align 4
  br label %34

34:                                               ; preds = %139, %33
  %35 = load i32, i32* %8, align 4
  %36 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %37 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = icmp ult i32 %35, %38
  br i1 %39, label %40, label %142

40:                                               ; preds = %34
  %41 = load %struct.TYPE_10__*, %struct.TYPE_10__** @context, align 8
  %42 = bitcast %struct.TYPE_9__** %7 to i8**
  %43 = call i64 @redisGetReply(%struct.TYPE_10__* %41, i8** %42)
  %44 = load i64, i64* @REDIS_OK, align 8
  %45 = icmp ne i64 %43, %44
  br i1 %45, label %46, label %66

46:                                               ; preds = %40
  %47 = load i32, i32* @stderr, align 4
  %48 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %49 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %48, i32 0, i32 3
  %50 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %49, align 8
  %51 = load i32, i32* %8, align 4
  %52 = zext i32 %51 to i64
  %53 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %50, i64 %52
  %54 = load %struct.TYPE_8__*, %struct.TYPE_8__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %54, i32 0, i32 0
  %56 = load i8*, i8** %55, align 8
  %57 = ptrtoint i8* %56 to i64
  %58 = load %struct.TYPE_10__*, %struct.TYPE_10__** @context, align 8
  %59 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = load %struct.TYPE_10__*, %struct.TYPE_10__** @context, align 8
  %62 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %61, i32 0, i32 1
  %63 = load i8*, i8** %62, align 8
  %64 = call i32 (i32, i8*, i64, ...) @fprintf(i32 %47, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0), i64 %57, i32 %60, i8* %63)
  %65 = call i32 @exit(i32 1) #3
  unreachable

66:                                               ; preds = %40
  %67 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %68 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %67, i32 0, i32 1
  %69 = load i64, i64* %68, align 8
  %70 = load i64, i64* @REDIS_REPLY_STATUS, align 8
  %71 = icmp ne i64 %69, %70
  br i1 %71, label %72, label %102

72:                                               ; preds = %66
  %73 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %74 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %73, i32 0, i32 1
  %75 = load i64, i64* %74, align 8
  %76 = load i64, i64* @REDIS_REPLY_ERROR, align 8
  %77 = icmp eq i64 %75, %76
  br i1 %77, label %78, label %85

78:                                               ; preds = %72
  %79 = load i32, i32* @stderr, align 4
  %80 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %81 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %80, i32 0, i32 2
  %82 = load i8*, i8** %81, align 8
  %83 = ptrtoint i8* %82 to i64
  %84 = call i32 (i32, i8*, i64, ...) @fprintf(i32 %79, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0), i64 %83)
  br label %100

85:                                               ; preds = %72
  %86 = load i32, i32* @stderr, align 4
  %87 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %88 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %87, i32 0, i32 1
  %89 = load i64, i64* %88, align 8
  %90 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %91 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %90, i32 0, i32 3
  %92 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %91, align 8
  %93 = load i32, i32* %8, align 4
  %94 = zext i32 %93 to i64
  %95 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %92, i64 %94
  %96 = load %struct.TYPE_8__*, %struct.TYPE_8__** %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %96, i32 0, i32 0
  %98 = load i8*, i8** %97, align 8
  %99 = call i32 (i32, i8*, i64, ...) @fprintf(i32 %86, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.3, i64 0, i64 0), i64 %89, i8* %98)
  br label %100

100:                                              ; preds = %85, %78
  %101 = call i32 @exit(i32 1) #3
  unreachable

102:                                              ; preds = %66
  br label %103

103:                                              ; preds = %102
  %104 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %105 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %104, i32 0, i32 2
  %106 = load i8*, i8** %105, align 8
  %107 = call i32 @sdsnew(i8* %106)
  store i32 %107, i32* %9, align 4
  %108 = load i32*, i32** %4, align 8
  %109 = load i32, i32* %9, align 4
  %110 = call i32* @dictFind(i32* %108, i32 %109)
  store i32* %110, i32** %10, align 8
  %111 = load i32, i32* %9, align 4
  %112 = call i32 @sdsfree(i32 %111)
  store i32* null, i32** %11, align 8
  %113 = load i32*, i32** %10, align 8
  %114 = icmp ne i32* %113, null
  br i1 %114, label %115, label %118

115:                                              ; preds = %103
  %116 = load i32*, i32** %10, align 8
  %117 = call i32* @dictGetVal(i32* %116)
  store i32* %117, i32** %11, align 8
  br label %131

118:                                              ; preds = %103
  %119 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %120 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %119, i32 0, i32 2
  %121 = load i8*, i8** %120, align 8
  %122 = call i64 @strcmp(i8* %121, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0))
  %123 = icmp ne i64 %122, 0
  br i1 %123, label %124, label %130

124:                                              ; preds = %118
  %125 = load i32*, i32** %4, align 8
  %126 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %127 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %126, i32 0, i32 2
  %128 = load i8*, i8** %127, align 8
  %129 = call i32* @typeinfo_add(i32* %125, i8* %128, i32* @type_other)
  store i32* %129, i32** %11, align 8
  br label %130

130:                                              ; preds = %124, %118
  br label %131

131:                                              ; preds = %130, %115
  %132 = load i32*, i32** %11, align 8
  %133 = load i32**, i32*** %6, align 8
  %134 = load i32, i32* %8, align 4
  %135 = zext i32 %134 to i64
  %136 = getelementptr inbounds i32*, i32** %133, i64 %135
  store i32* %132, i32** %136, align 8
  %137 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %138 = call i32 @freeReplyObject(%struct.TYPE_9__* %137)
  br label %139

139:                                              ; preds = %131
  %140 = load i32, i32* %8, align 4
  %141 = add i32 %140, 1
  store i32 %141, i32* %8, align 4
  br label %34

142:                                              ; preds = %34
  ret void
}

declare dso_local i32 @redisAppendCommand(%struct.TYPE_10__*, i8*, i8*) #1

declare dso_local i64 @redisGetReply(%struct.TYPE_10__*, i8**) #1

declare dso_local i32 @fprintf(i32, i8*, i64, ...) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @sdsnew(i8*) #1

declare dso_local i32* @dictFind(i32*, i32) #1

declare dso_local i32 @sdsfree(i32) #1

declare dso_local i32* @dictGetVal(i32*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32* @typeinfo_add(i32*, i8*, i32*) #1

declare dso_local i32 @freeReplyObject(%struct.TYPE_9__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
