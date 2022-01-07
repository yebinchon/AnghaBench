; ModuleID = '/home/carl/AnghaBench/redis/src/extr_t_string.c_setGenericCommand.c'
source_filename = "/home/carl/AnghaBench/redis/src/extr_t_string.c_setGenericCommand.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i32*, i32** }
%struct.TYPE_17__ = type { i32 }
%struct.TYPE_14__ = type { i64, %struct.TYPE_16__*, %struct.TYPE_13__* }
%struct.TYPE_16__ = type { i32 }
%struct.TYPE_13__ = type { i32 }

@C_OK = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [26 x i8] c"invalid expire time in %s\00", align 1
@UNIT_SECONDS = common dso_local global i32 0, align 4
@OBJ_SET_NX = common dso_local global i32 0, align 4
@OBJ_SET_XX = common dso_local global i32 0, align 4
@shared = common dso_local global %struct.TYPE_15__ zeroinitializer, align 8
@server = common dso_local global %struct.TYPE_17__ zeroinitializer, align 4
@NOTIFY_STRING = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [4 x i8] c"set\00", align 1
@NOTIFY_GENERIC = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [7 x i8] c"expire\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @setGenericCommand(%struct.TYPE_14__* %0, i32 %1, i32* %2, i32* %3, i32* %4, i32 %5, i32* %6, i32* %7) #0 {
  %9 = alloca %struct.TYPE_14__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i64, align 8
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %9, align 8
  store i32 %1, i32* %10, align 4
  store i32* %2, i32** %11, align 8
  store i32* %3, i32** %12, align 8
  store i32* %4, i32** %13, align 8
  store i32 %5, i32* %14, align 4
  store i32* %6, i32** %15, align 8
  store i32* %7, i32** %16, align 8
  store i64 0, i64* %17, align 8
  %18 = load i32*, i32** %13, align 8
  %19 = icmp ne i32* %18, null
  br i1 %19, label %20, label %46

20:                                               ; preds = %8
  %21 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %22 = load i32*, i32** %13, align 8
  %23 = call i64 @getLongLongFromObjectOrReply(%struct.TYPE_14__* %21, i32* %22, i64* %17, i32* null)
  %24 = load i64, i64* @C_OK, align 8
  %25 = icmp ne i64 %23, %24
  br i1 %25, label %26, label %27

26:                                               ; preds = %20
  br label %138

27:                                               ; preds = %20
  %28 = load i64, i64* %17, align 8
  %29 = icmp sle i64 %28, 0
  br i1 %29, label %30, label %38

30:                                               ; preds = %27
  %31 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %32 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %33 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %32, i32 0, i32 2
  %34 = load %struct.TYPE_13__*, %struct.TYPE_13__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @addReplyErrorFormat(%struct.TYPE_14__* %31, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %36)
  br label %138

38:                                               ; preds = %27
  %39 = load i32, i32* %14, align 4
  %40 = load i32, i32* @UNIT_SECONDS, align 4
  %41 = icmp eq i32 %39, %40
  br i1 %41, label %42, label %45

42:                                               ; preds = %38
  %43 = load i64, i64* %17, align 8
  %44 = mul nsw i64 %43, 1000
  store i64 %44, i64* %17, align 8
  br label %45

45:                                               ; preds = %42, %38
  br label %46

46:                                               ; preds = %45, %8
  %47 = load i32, i32* %10, align 4
  %48 = load i32, i32* @OBJ_SET_NX, align 4
  %49 = and i32 %47, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %58

51:                                               ; preds = %46
  %52 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %53 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %52, i32 0, i32 1
  %54 = load %struct.TYPE_16__*, %struct.TYPE_16__** %53, align 8
  %55 = load i32*, i32** %11, align 8
  %56 = call i32* @lookupKeyWrite(%struct.TYPE_16__* %54, i32* %55)
  %57 = icmp ne i32* %56, null
  br i1 %57, label %70, label %58

58:                                               ; preds = %51, %46
  %59 = load i32, i32* %10, align 4
  %60 = load i32, i32* @OBJ_SET_XX, align 4
  %61 = and i32 %59, %60
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %86

63:                                               ; preds = %58
  %64 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %65 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %64, i32 0, i32 1
  %66 = load %struct.TYPE_16__*, %struct.TYPE_16__** %65, align 8
  %67 = load i32*, i32** %11, align 8
  %68 = call i32* @lookupKeyWrite(%struct.TYPE_16__* %66, i32* %67)
  %69 = icmp eq i32* %68, null
  br i1 %69, label %70, label %86

70:                                               ; preds = %63, %51
  %71 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %72 = load i32*, i32** %16, align 8
  %73 = icmp ne i32* %72, null
  br i1 %73, label %74, label %76

74:                                               ; preds = %70
  %75 = load i32*, i32** %16, align 8
  br label %83

76:                                               ; preds = %70
  %77 = load i32**, i32*** getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @shared, i32 0, i32 1), align 8
  %78 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %79 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = getelementptr inbounds i32*, i32** %77, i64 %80
  %82 = load i32*, i32** %81, align 8
  br label %83

83:                                               ; preds = %76, %74
  %84 = phi i32* [ %75, %74 ], [ %82, %76 ]
  %85 = call i32 @addReply(%struct.TYPE_14__* %71, i32* %84)
  br label %138

86:                                               ; preds = %63, %58
  %87 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %88 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %87, i32 0, i32 1
  %89 = load %struct.TYPE_16__*, %struct.TYPE_16__** %88, align 8
  %90 = load i32*, i32** %11, align 8
  %91 = load i32*, i32** %12, align 8
  %92 = call i32 @setKey(%struct.TYPE_16__* %89, i32* %90, i32* %91)
  %93 = load i32, i32* getelementptr inbounds (%struct.TYPE_17__, %struct.TYPE_17__* @server, i32 0, i32 0), align 4
  %94 = add nsw i32 %93, 1
  store i32 %94, i32* getelementptr inbounds (%struct.TYPE_17__, %struct.TYPE_17__* @server, i32 0, i32 0), align 4
  %95 = load i32*, i32** %13, align 8
  %96 = icmp ne i32* %95, null
  br i1 %96, label %97, label %107

97:                                               ; preds = %86
  %98 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %99 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %100 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %99, i32 0, i32 1
  %101 = load %struct.TYPE_16__*, %struct.TYPE_16__** %100, align 8
  %102 = load i32*, i32** %11, align 8
  %103 = call i64 (...) @mstime()
  %104 = load i64, i64* %17, align 8
  %105 = add nsw i64 %103, %104
  %106 = call i32 @setExpire(%struct.TYPE_14__* %98, %struct.TYPE_16__* %101, i32* %102, i64 %105)
  br label %107

107:                                              ; preds = %97, %86
  %108 = load i32, i32* @NOTIFY_STRING, align 4
  %109 = load i32*, i32** %11, align 8
  %110 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %111 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %110, i32 0, i32 1
  %112 = load %struct.TYPE_16__*, %struct.TYPE_16__** %111, align 8
  %113 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 4
  %115 = call i32 @notifyKeyspaceEvent(i32 %108, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32* %109, i32 %114)
  %116 = load i32*, i32** %13, align 8
  %117 = icmp ne i32* %116, null
  br i1 %117, label %118, label %127

118:                                              ; preds = %107
  %119 = load i32, i32* @NOTIFY_GENERIC, align 4
  %120 = load i32*, i32** %11, align 8
  %121 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %122 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %121, i32 0, i32 1
  %123 = load %struct.TYPE_16__*, %struct.TYPE_16__** %122, align 8
  %124 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 4
  %126 = call i32 @notifyKeyspaceEvent(i32 %119, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i32* %120, i32 %125)
  br label %127

127:                                              ; preds = %118, %107
  %128 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %129 = load i32*, i32** %15, align 8
  %130 = icmp ne i32* %129, null
  br i1 %130, label %131, label %133

131:                                              ; preds = %127
  %132 = load i32*, i32** %15, align 8
  br label %135

133:                                              ; preds = %127
  %134 = load i32*, i32** getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @shared, i32 0, i32 0), align 8
  br label %135

135:                                              ; preds = %133, %131
  %136 = phi i32* [ %132, %131 ], [ %134, %133 ]
  %137 = call i32 @addReply(%struct.TYPE_14__* %128, i32* %136)
  br label %138

138:                                              ; preds = %135, %83, %30, %26
  ret void
}

declare dso_local i64 @getLongLongFromObjectOrReply(%struct.TYPE_14__*, i32*, i64*, i32*) #1

declare dso_local i32 @addReplyErrorFormat(%struct.TYPE_14__*, i8*, i32) #1

declare dso_local i32* @lookupKeyWrite(%struct.TYPE_16__*, i32*) #1

declare dso_local i32 @addReply(%struct.TYPE_14__*, i32*) #1

declare dso_local i32 @setKey(%struct.TYPE_16__*, i32*, i32*) #1

declare dso_local i32 @setExpire(%struct.TYPE_14__*, %struct.TYPE_16__*, i32*, i64) #1

declare dso_local i64 @mstime(...) #1

declare dso_local i32 @notifyKeyspaceEvent(i32, i8*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
