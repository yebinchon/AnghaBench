; ModuleID = '/home/carl/AnghaBench/redis/src/extr_t_hash.c_hincrbyfloatCommand.c'
source_filename = "/home/carl/AnghaBench/redis/src/extr_t_hash.c_hincrbyfloatCommand.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { i32 }
%struct.TYPE_14__ = type { %struct.TYPE_15__*, %struct.TYPE_16__** }
%struct.TYPE_15__ = type { i32 }
%struct.TYPE_16__ = type { i32 }

@C_OK = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [26 x i8] c"hash value is not a float\00", align 1
@.str.1 = private unnamed_addr constant [40 x i8] c"increment would produce NaN or Infinity\00", align 1
@MAX_LONG_DOUBLE_CHARS = common dso_local global i32 0, align 4
@LD_STR_HUMAN = common dso_local global i32 0, align 4
@HASH_SET_TAKE_VALUE = common dso_local global i32 0, align 4
@NOTIFY_HASH = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [13 x i8] c"hincrbyfloat\00", align 1
@server = common dso_local global %struct.TYPE_17__ zeroinitializer, align 4
@.str.3 = private unnamed_addr constant [5 x i8] c"HSET\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @hincrbyfloatCommand(%struct.TYPE_14__* %0) #0 {
  %2 = alloca %struct.TYPE_14__*, align 8
  %3 = alloca x86_fp80, align 16
  %4 = alloca x86_fp80, align 16
  %5 = alloca i64, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %2, align 8
  %15 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %16 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %17 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %16, i32 0, i32 1
  %18 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_16__*, %struct.TYPE_16__** %18, i64 3
  %20 = load %struct.TYPE_16__*, %struct.TYPE_16__** %19, align 8
  %21 = call i64 @getLongDoubleFromObjectOrReply(%struct.TYPE_14__* %15, %struct.TYPE_16__* %20, x86_fp80* %4, i32* null)
  %22 = load i64, i64* @C_OK, align 8
  %23 = icmp ne i64 %21, %22
  br i1 %23, label %24, label %25

24:                                               ; preds = %1
  br label %140

25:                                               ; preds = %1
  %26 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %27 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %28 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %27, i32 0, i32 1
  %29 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_16__*, %struct.TYPE_16__** %29, i64 1
  %31 = load %struct.TYPE_16__*, %struct.TYPE_16__** %30, align 8
  %32 = call i32* @hashTypeLookupWriteOrCreate(%struct.TYPE_14__* %26, %struct.TYPE_16__* %31)
  store i32* %32, i32** %6, align 8
  %33 = icmp eq i32* %32, null
  br i1 %33, label %34, label %35

34:                                               ; preds = %25
  br label %140

35:                                               ; preds = %25
  %36 = load i32*, i32** %6, align 8
  %37 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %38 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %37, i32 0, i32 1
  %39 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_16__*, %struct.TYPE_16__** %39, i64 2
  %41 = load %struct.TYPE_16__*, %struct.TYPE_16__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call i64 @hashTypeGetValue(i32* %36, i32 %43, i8** %8, i32* %9, i64* %5)
  %45 = load i64, i64* @C_OK, align 8
  %46 = icmp eq i64 %44, %45
  br i1 %46, label %47, label %63

47:                                               ; preds = %35
  %48 = load i8*, i8** %8, align 8
  %49 = icmp ne i8* %48, null
  br i1 %49, label %50, label %59

50:                                               ; preds = %47
  %51 = load i8*, i8** %8, align 8
  %52 = load i32, i32* %9, align 4
  %53 = call i64 @string2ld(i8* %51, i32 %52, x86_fp80* %3)
  %54 = icmp eq i64 %53, 0
  br i1 %54, label %55, label %58

55:                                               ; preds = %50
  %56 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %57 = call i32 @addReplyError(%struct.TYPE_14__* %56, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  br label %140

58:                                               ; preds = %50
  br label %62

59:                                               ; preds = %47
  %60 = load i64, i64* %5, align 8
  %61 = sitofp i64 %60 to x86_fp80
  store x86_fp80 %61, x86_fp80* %3, align 16
  br label %62

62:                                               ; preds = %59, %58
  br label %64

63:                                               ; preds = %35
  store x86_fp80 0xK00000000000000000000, x86_fp80* %3, align 16
  br label %64

64:                                               ; preds = %63, %62
  %65 = load x86_fp80, x86_fp80* %4, align 16
  %66 = load x86_fp80, x86_fp80* %3, align 16
  %67 = fadd x86_fp80 %66, %65
  store x86_fp80 %67, x86_fp80* %3, align 16
  %68 = load x86_fp80, x86_fp80* %3, align 16
  %69 = call i64 @isnan(x86_fp80 %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %75, label %71

71:                                               ; preds = %64
  %72 = load x86_fp80, x86_fp80* %3, align 16
  %73 = call i64 @isinf(x86_fp80 %72)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %78

75:                                               ; preds = %71, %64
  %76 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %77 = call i32 @addReplyError(%struct.TYPE_14__* %76, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0))
  br label %140

78:                                               ; preds = %71
  %79 = load i32, i32* @MAX_LONG_DOUBLE_CHARS, align 4
  %80 = zext i32 %79 to i64
  %81 = call i8* @llvm.stacksave()
  store i8* %81, i8** %10, align 8
  %82 = alloca i8, i64 %80, align 16
  store i64 %80, i64* %11, align 8
  %83 = trunc i64 %80 to i32
  %84 = load x86_fp80, x86_fp80* %3, align 16
  %85 = load i32, i32* @LD_STR_HUMAN, align 4
  %86 = call i32 @ld2string(i8* %82, i32 %83, x86_fp80 %84, i32 %85)
  store i32 %86, i32* %12, align 4
  %87 = load i32, i32* %12, align 4
  %88 = call i32 @sdsnewlen(i8* %82, i32 %87)
  store i32 %88, i32* %7, align 4
  %89 = load i32*, i32** %6, align 8
  %90 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %91 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %90, i32 0, i32 1
  %92 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_16__*, %struct.TYPE_16__** %92, i64 2
  %94 = load %struct.TYPE_16__*, %struct.TYPE_16__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = load i32, i32* %7, align 4
  %98 = load i32, i32* @HASH_SET_TAKE_VALUE, align 4
  %99 = call i32 @hashTypeSet(i32* %89, i32 %96, i32 %97, i32 %98)
  %100 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %101 = load i32, i32* %12, align 4
  %102 = call i32 @addReplyBulkCBuffer(%struct.TYPE_14__* %100, i8* %82, i32 %101)
  %103 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %104 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %103, i32 0, i32 0
  %105 = load %struct.TYPE_15__*, %struct.TYPE_15__** %104, align 8
  %106 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %107 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %106, i32 0, i32 1
  %108 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %107, align 8
  %109 = getelementptr inbounds %struct.TYPE_16__*, %struct.TYPE_16__** %108, i64 1
  %110 = load %struct.TYPE_16__*, %struct.TYPE_16__** %109, align 8
  %111 = call i32 @signalModifiedKey(%struct.TYPE_15__* %105, %struct.TYPE_16__* %110)
  %112 = load i32, i32* @NOTIFY_HASH, align 4
  %113 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %114 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %113, i32 0, i32 1
  %115 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %114, align 8
  %116 = getelementptr inbounds %struct.TYPE_16__*, %struct.TYPE_16__** %115, i64 1
  %117 = load %struct.TYPE_16__*, %struct.TYPE_16__** %116, align 8
  %118 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %119 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %118, i32 0, i32 0
  %120 = load %struct.TYPE_15__*, %struct.TYPE_15__** %119, align 8
  %121 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 4
  %123 = call i32 @notifyKeyspaceEvent(i32 %112, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), %struct.TYPE_16__* %117, i32 %122)
  %124 = load i32, i32* getelementptr inbounds (%struct.TYPE_17__, %struct.TYPE_17__* @server, i32 0, i32 0), align 4
  %125 = add nsw i32 %124, 1
  store i32 %125, i32* getelementptr inbounds (%struct.TYPE_17__, %struct.TYPE_17__* @server, i32 0, i32 0), align 4
  %126 = call i32* @createStringObject(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i32 4)
  store i32* %126, i32** %13, align 8
  %127 = load i32, i32* %12, align 4
  %128 = call i32* @createRawStringObject(i8* %82, i32 %127)
  store i32* %128, i32** %14, align 8
  %129 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %130 = load i32*, i32** %13, align 8
  %131 = call i32 @rewriteClientCommandArgument(%struct.TYPE_14__* %129, i32 0, i32* %130)
  %132 = load i32*, i32** %13, align 8
  %133 = call i32 @decrRefCount(i32* %132)
  %134 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %135 = load i32*, i32** %14, align 8
  %136 = call i32 @rewriteClientCommandArgument(%struct.TYPE_14__* %134, i32 3, i32* %135)
  %137 = load i32*, i32** %14, align 8
  %138 = call i32 @decrRefCount(i32* %137)
  %139 = load i8*, i8** %10, align 8
  call void @llvm.stackrestore(i8* %139)
  br label %140

140:                                              ; preds = %78, %75, %55, %34, %24
  ret void
}

declare dso_local i64 @getLongDoubleFromObjectOrReply(%struct.TYPE_14__*, %struct.TYPE_16__*, x86_fp80*, i32*) #1

declare dso_local i32* @hashTypeLookupWriteOrCreate(%struct.TYPE_14__*, %struct.TYPE_16__*) #1

declare dso_local i64 @hashTypeGetValue(i32*, i32, i8**, i32*, i64*) #1

declare dso_local i64 @string2ld(i8*, i32, x86_fp80*) #1

declare dso_local i32 @addReplyError(%struct.TYPE_14__*, i8*) #1

declare dso_local i64 @isnan(x86_fp80) #1

declare dso_local i64 @isinf(x86_fp80) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @ld2string(i8*, i32, x86_fp80, i32) #1

declare dso_local i32 @sdsnewlen(i8*, i32) #1

declare dso_local i32 @hashTypeSet(i32*, i32, i32, i32) #1

declare dso_local i32 @addReplyBulkCBuffer(%struct.TYPE_14__*, i8*, i32) #1

declare dso_local i32 @signalModifiedKey(%struct.TYPE_15__*, %struct.TYPE_16__*) #1

declare dso_local i32 @notifyKeyspaceEvent(i32, i8*, %struct.TYPE_16__*, i32) #1

declare dso_local i32* @createStringObject(i8*, i32) #1

declare dso_local i32* @createRawStringObject(i8*, i32) #1

declare dso_local i32 @rewriteClientCommandArgument(%struct.TYPE_14__*, i32, i32*) #1

declare dso_local i32 @decrRefCount(i32*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
