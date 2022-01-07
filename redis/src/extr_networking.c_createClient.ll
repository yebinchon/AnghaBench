; ModuleID = '/home/carl/AnghaBench/redis/src/extr_networking.c_createClient.c'
source_filename = "/home/carl/AnghaBench/redis/src/extr_networking.c_createClient.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32, i32, i64 }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_13__ = type { i32, i32, i32, i8*, i8*, i64, i32*, i32*, i8*, i8*, i64, %struct.TYPE_12__, i32, i8*, i64, i64, i32, i64, i64, i64, i64, i64, i64, i32, %struct.TYPE_11__*, i32, i32, i64, i64, i64, i32*, i32, i32*, i64, i64, i64, i8*, i8*, i64, i64, i32*, i32*, i32 }
%struct.TYPE_12__ = type { i64, i64, i64, i32*, i32*, i32*, i8*, i64 }

@server = common dso_local global %struct.TYPE_14__ zeroinitializer, align 8
@readQueryFromClient = common dso_local global i32 0, align 4
@DefaultUser = common dso_local global %struct.TYPE_11__* null, align 8
@USER_FLAG_NOPASS = common dso_local global i32 0, align 4
@REPL_STATE_NONE = common dso_local global i32 0, align 4
@SLAVE_CAPA_NONE = common dso_local global i32 0, align 4
@freeClientReplyValue = common dso_local global i32 0, align 4
@dupClientReplyValue = common dso_local global i32 0, align 4
@BLOCKED_NONE = common dso_local global i32 0, align 4
@objectKeyHeapPointerValueDictType = common dso_local global i32 0, align 4
@objectKeyPointerValueDictType = common dso_local global i32 0, align 4
@decrRefCountVoid = common dso_local global i32 0, align 4
@listMatchObjects = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_13__* @createClient(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca %struct.TYPE_13__*, align 8
  %4 = alloca i32, align 4
  store i32* %0, i32** %2, align 8
  %5 = call %struct.TYPE_13__* @zmalloc(i32 384)
  store %struct.TYPE_13__* %5, %struct.TYPE_13__** %3, align 8
  %6 = load i32*, i32** %2, align 8
  %7 = icmp ne i32* %6, null
  br i1 %7, label %8, label %26

8:                                                ; preds = %1
  %9 = load i32*, i32** %2, align 8
  %10 = call i32 @connNonBlock(i32* %9)
  %11 = load i32*, i32** %2, align 8
  %12 = call i32 @connEnableTcpNoDelay(i32* %11)
  %13 = load i64, i64* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @server, i32 0, i32 2), align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %19

15:                                               ; preds = %8
  %16 = load i32*, i32** %2, align 8
  %17 = load i64, i64* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @server, i32 0, i32 2), align 8
  %18 = call i32 @connKeepAlive(i32* %16, i64 %17)
  br label %19

19:                                               ; preds = %15, %8
  %20 = load i32*, i32** %2, align 8
  %21 = load i32, i32* @readQueryFromClient, align 4
  %22 = call i32 @connSetReadHandler(i32* %20, i32 %21)
  %23 = load i32*, i32** %2, align 8
  %24 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %25 = call i32 @connSetPrivateData(i32* %23, %struct.TYPE_13__* %24)
  br label %26

26:                                               ; preds = %19, %1
  %27 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %28 = call i32 @selectDb(%struct.TYPE_13__* %27, i32 0)
  %29 = load i32, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @server, i32 0, i32 1), align 4
  %30 = add nsw i32 %29, 1
  store i32 %30, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @server, i32 0, i32 1), align 4
  store i32 %30, i32* %4, align 4
  %31 = load i32, i32* %4, align 4
  %32 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %33 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %32, i32 0, i32 42
  store i32 %31, i32* %33, align 8
  %34 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %35 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %34, i32 0, i32 0
  store i32 2, i32* %35, align 8
  %36 = load i32*, i32** %2, align 8
  %37 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %38 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %37, i32 0, i32 41
  store i32* %36, i32** %38, align 8
  %39 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %40 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %39, i32 0, i32 40
  store i32* null, i32** %40, align 8
  %41 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %42 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %41, i32 0, i32 39
  store i64 0, i64* %42, align 8
  %43 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %44 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %43, i32 0, i32 38
  store i64 0, i64* %44, align 8
  %45 = call i8* (...) @sdsempty()
  %46 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %47 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %46, i32 0, i32 37
  store i8* %45, i8** %47, align 8
  %48 = call i8* (...) @sdsempty()
  %49 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %50 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %49, i32 0, i32 36
  store i8* %48, i8** %50, align 8
  %51 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %52 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %51, i32 0, i32 35
  store i64 0, i64* %52, align 8
  %53 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %54 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %53, i32 0, i32 34
  store i64 0, i64* %54, align 8
  %55 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %56 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %55, i32 0, i32 33
  store i64 0, i64* %56, align 8
  %57 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %58 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %57, i32 0, i32 32
  store i32* null, i32** %58, align 8
  %59 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %60 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %59, i32 0, i32 30
  store i32* null, i32** %60, align 8
  %61 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %62 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %61, i32 0, i32 31
  store i32 0, i32* %62, align 8
  %63 = load %struct.TYPE_11__*, %struct.TYPE_11__** @DefaultUser, align 8
  %64 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %65 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %64, i32 0, i32 24
  store %struct.TYPE_11__* %63, %struct.TYPE_11__** %65, align 8
  %66 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %67 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %66, i32 0, i32 29
  store i64 0, i64* %67, align 8
  %68 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %69 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %68, i32 0, i32 1
  store i32 -1, i32* %69, align 4
  %70 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %71 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %70, i32 0, i32 28
  store i64 0, i64* %71, align 8
  %72 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %73 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %72, i32 0, i32 27
  store i64 0, i64* %73, align 8
  %74 = load i32, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @server, i32 0, i32 0), align 8
  %75 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %76 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %75, i32 0, i32 25
  store i32 %74, i32* %76, align 8
  %77 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %78 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %77, i32 0, i32 26
  store i32 %74, i32* %78, align 4
  %79 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %80 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %79, i32 0, i32 24
  %81 = load %struct.TYPE_11__*, %struct.TYPE_11__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = load i32, i32* @USER_FLAG_NOPASS, align 4
  %85 = and i32 %83, %84
  %86 = icmp ne i32 %85, 0
  %87 = zext i1 %86 to i32
  %88 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %89 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %88, i32 0, i32 2
  store i32 %87, i32* %89, align 8
  %90 = load i32, i32* @REPL_STATE_NONE, align 4
  %91 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %92 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %91, i32 0, i32 23
  store i32 %90, i32* %92, align 8
  %93 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %94 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %93, i32 0, i32 22
  store i64 0, i64* %94, align 8
  %95 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %96 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %95, i32 0, i32 21
  store i64 0, i64* %96, align 8
  %97 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %98 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %97, i32 0, i32 20
  store i64 0, i64* %98, align 8
  %99 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %100 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %99, i32 0, i32 19
  store i64 0, i64* %100, align 8
  %101 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %102 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %101, i32 0, i32 18
  store i64 0, i64* %102, align 8
  %103 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %104 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %103, i32 0, i32 17
  store i64 0, i64* %104, align 8
  %105 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %106 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %105, i32 0, i32 3
  %107 = load i8*, i8** %106, align 8
  %108 = getelementptr inbounds i8, i8* %107, i64 0
  store i8 0, i8* %108, align 1
  %109 = load i32, i32* @SLAVE_CAPA_NONE, align 4
  %110 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %111 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %110, i32 0, i32 16
  store i32 %109, i32* %111, align 8
  %112 = call i8* (...) @listCreate()
  %113 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %114 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %113, i32 0, i32 13
  store i8* %112, i8** %114, align 8
  %115 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %116 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %115, i32 0, i32 15
  store i64 0, i64* %116, align 8
  %117 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %118 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %117, i32 0, i32 14
  store i64 0, i64* %118, align 8
  %119 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %120 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %119, i32 0, i32 13
  %121 = load i8*, i8** %120, align 8
  %122 = load i32, i32* @freeClientReplyValue, align 4
  %123 = call i32 @listSetFreeMethod(i8* %121, i32 %122)
  %124 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %125 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %124, i32 0, i32 13
  %126 = load i8*, i8** %125, align 8
  %127 = load i32, i32* @dupClientReplyValue, align 4
  %128 = call i32 @listSetDupMethod(i8* %126, i32 %127)
  %129 = load i32, i32* @BLOCKED_NONE, align 4
  %130 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %131 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %130, i32 0, i32 12
  store i32 %129, i32* %131, align 8
  %132 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %133 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %132, i32 0, i32 11
  %134 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %133, i32 0, i32 7
  store i64 0, i64* %134, align 8
  %135 = call i8* @dictCreate(i32* @objectKeyHeapPointerValueDictType, i32* null)
  %136 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %137 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %136, i32 0, i32 11
  %138 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %137, i32 0, i32 6
  store i8* %135, i8** %138, align 8
  %139 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %140 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %139, i32 0, i32 11
  %141 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %140, i32 0, i32 5
  store i32* null, i32** %141, align 8
  %142 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %143 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %142, i32 0, i32 11
  %144 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %143, i32 0, i32 4
  store i32* null, i32** %144, align 8
  %145 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %146 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %145, i32 0, i32 11
  %147 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %146, i32 0, i32 3
  store i32* null, i32** %147, align 8
  %148 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %149 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %148, i32 0, i32 11
  %150 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %149, i32 0, i32 2
  store i64 0, i64* %150, align 8
  %151 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %152 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %151, i32 0, i32 11
  %153 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %152, i32 0, i32 1
  store i64 0, i64* %153, align 8
  %154 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %155 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %154, i32 0, i32 11
  %156 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %155, i32 0, i32 0
  store i64 0, i64* %156, align 8
  %157 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %158 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %157, i32 0, i32 10
  store i64 0, i64* %158, align 8
  %159 = call i8* (...) @listCreate()
  %160 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %161 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %160, i32 0, i32 9
  store i8* %159, i8** %161, align 8
  %162 = call i8* @dictCreate(i32* @objectKeyPointerValueDictType, i32* null)
  %163 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %164 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %163, i32 0, i32 8
  store i8* %162, i8** %164, align 8
  %165 = call i8* (...) @listCreate()
  %166 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %167 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %166, i32 0, i32 4
  store i8* %165, i8** %167, align 8
  %168 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %169 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %168, i32 0, i32 7
  store i32* null, i32** %169, align 8
  %170 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %171 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %170, i32 0, i32 6
  store i32* null, i32** %171, align 8
  %172 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %173 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %172, i32 0, i32 5
  store i64 0, i64* %173, align 8
  %174 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %175 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %174, i32 0, i32 4
  %176 = load i8*, i8** %175, align 8
  %177 = load i32, i32* @decrRefCountVoid, align 4
  %178 = call i32 @listSetFreeMethod(i8* %176, i32 %177)
  %179 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %180 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %179, i32 0, i32 4
  %181 = load i8*, i8** %180, align 8
  %182 = load i32, i32* @listMatchObjects, align 4
  %183 = call i32 @listSetMatchMethod(i8* %181, i32 %182)
  %184 = load i32*, i32** %2, align 8
  %185 = icmp ne i32* %184, null
  br i1 %185, label %186, label %189

186:                                              ; preds = %26
  %187 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %188 = call i32 @linkClient(%struct.TYPE_13__* %187)
  br label %189

189:                                              ; preds = %186, %26
  %190 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %191 = call i32 @initClientMultiState(%struct.TYPE_13__* %190)
  %192 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  ret %struct.TYPE_13__* %192
}

declare dso_local %struct.TYPE_13__* @zmalloc(i32) #1

declare dso_local i32 @connNonBlock(i32*) #1

declare dso_local i32 @connEnableTcpNoDelay(i32*) #1

declare dso_local i32 @connKeepAlive(i32*, i64) #1

declare dso_local i32 @connSetReadHandler(i32*, i32) #1

declare dso_local i32 @connSetPrivateData(i32*, %struct.TYPE_13__*) #1

declare dso_local i32 @selectDb(%struct.TYPE_13__*, i32) #1

declare dso_local i8* @sdsempty(...) #1

declare dso_local i8* @listCreate(...) #1

declare dso_local i32 @listSetFreeMethod(i8*, i32) #1

declare dso_local i32 @listSetDupMethod(i8*, i32) #1

declare dso_local i8* @dictCreate(i32*, i32*) #1

declare dso_local i32 @listSetMatchMethod(i8*, i32) #1

declare dso_local i32 @linkClient(%struct.TYPE_13__*) #1

declare dso_local i32 @initClientMultiState(%struct.TYPE_13__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
