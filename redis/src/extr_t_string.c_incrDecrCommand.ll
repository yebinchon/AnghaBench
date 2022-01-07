; ModuleID = '/home/carl/AnghaBench/redis/src/extr_t_string.c_incrDecrCommand.c'
source_filename = "/home/carl/AnghaBench/redis/src/extr_t_string.c_incrDecrCommand.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_25__ = type { i32 }
%struct.TYPE_24__ = type { %struct.TYPE_21__*, %struct.TYPE_21__* }
%struct.TYPE_21__ = type { i32, i64, i8* }
%struct.TYPE_22__ = type { %struct.TYPE_23__*, i32* }
%struct.TYPE_23__ = type { i32 }

@OBJ_STRING = common dso_local global i32 0, align 4
@C_OK = common dso_local global i64 0, align 8
@LLONG_MIN = common dso_local global i64 0, align 8
@LLONG_MAX = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [38 x i8] c"increment or decrement would overflow\00", align 1
@OBJ_ENCODING_INT = common dso_local global i64 0, align 8
@OBJ_SHARED_INTEGERS = common dso_local global i64 0, align 8
@LONG_MIN = common dso_local global i64 0, align 8
@LONG_MAX = common dso_local global i64 0, align 8
@NOTIFY_STRING = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [7 x i8] c"incrby\00", align 1
@server = common dso_local global %struct.TYPE_25__ zeroinitializer, align 4
@shared = common dso_local global %struct.TYPE_24__ zeroinitializer, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @incrDecrCommand(%struct.TYPE_22__* %0, i64 %1) #0 {
  %3 = alloca %struct.TYPE_22__*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.TYPE_21__*, align 8
  %8 = alloca %struct.TYPE_21__*, align 8
  store %struct.TYPE_22__* %0, %struct.TYPE_22__** %3, align 8
  store i64 %1, i64* %4, align 8
  %9 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %10 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %9, i32 0, i32 0
  %11 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %12 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %13 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %12, i32 0, i32 1
  %14 = load i32*, i32** %13, align 8
  %15 = getelementptr inbounds i32, i32* %14, i64 1
  %16 = load i32, i32* %15, align 4
  %17 = call %struct.TYPE_21__* @lookupKeyWrite(%struct.TYPE_23__* %11, i32 %16)
  store %struct.TYPE_21__* %17, %struct.TYPE_21__** %7, align 8
  %18 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %19 = icmp ne %struct.TYPE_21__* %18, null
  br i1 %19, label %20, label %27

20:                                               ; preds = %2
  %21 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %22 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %23 = load i32, i32* @OBJ_STRING, align 4
  %24 = call i64 @checkType(%struct.TYPE_22__* %21, %struct.TYPE_21__* %22, i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %20
  br label %161

27:                                               ; preds = %20, %2
  %28 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %29 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %30 = call i64 @getLongLongFromObjectOrReply(%struct.TYPE_22__* %28, %struct.TYPE_21__* %29, i64* %5, i32* null)
  %31 = load i64, i64* @C_OK, align 8
  %32 = icmp ne i64 %30, %31
  br i1 %32, label %33, label %34

33:                                               ; preds = %27
  br label %161

34:                                               ; preds = %27
  %35 = load i64, i64* %5, align 8
  store i64 %35, i64* %6, align 8
  %36 = load i64, i64* %4, align 8
  %37 = icmp slt i64 %36, 0
  br i1 %37, label %38, label %47

38:                                               ; preds = %34
  %39 = load i64, i64* %6, align 8
  %40 = icmp slt i64 %39, 0
  br i1 %40, label %41, label %47

41:                                               ; preds = %38
  %42 = load i64, i64* %4, align 8
  %43 = load i64, i64* @LLONG_MIN, align 8
  %44 = load i64, i64* %6, align 8
  %45 = sub nsw i64 %43, %44
  %46 = icmp slt i64 %42, %45
  br i1 %46, label %59, label %47

47:                                               ; preds = %41, %38, %34
  %48 = load i64, i64* %4, align 8
  %49 = icmp sgt i64 %48, 0
  br i1 %49, label %50, label %62

50:                                               ; preds = %47
  %51 = load i64, i64* %6, align 8
  %52 = icmp sgt i64 %51, 0
  br i1 %52, label %53, label %62

53:                                               ; preds = %50
  %54 = load i64, i64* %4, align 8
  %55 = load i64, i64* @LLONG_MAX, align 8
  %56 = load i64, i64* %6, align 8
  %57 = sub nsw i64 %55, %56
  %58 = icmp sgt i64 %54, %57
  br i1 %58, label %59, label %62

59:                                               ; preds = %53, %41
  %60 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %61 = call i32 @addReplyError(%struct.TYPE_22__* %60, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  br label %161

62:                                               ; preds = %53, %50, %47
  %63 = load i64, i64* %4, align 8
  %64 = load i64, i64* %5, align 8
  %65 = add nsw i64 %64, %63
  store i64 %65, i64* %5, align 8
  %66 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %67 = icmp ne %struct.TYPE_21__* %66, null
  br i1 %67, label %68, label %100

68:                                               ; preds = %62
  %69 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %70 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = icmp eq i32 %71, 1
  br i1 %72, label %73, label %100

73:                                               ; preds = %68
  %74 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %75 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %74, i32 0, i32 1
  %76 = load i64, i64* %75, align 8
  %77 = load i64, i64* @OBJ_ENCODING_INT, align 8
  %78 = icmp eq i64 %76, %77
  br i1 %78, label %79, label %100

79:                                               ; preds = %73
  %80 = load i64, i64* %5, align 8
  %81 = icmp slt i64 %80, 0
  br i1 %81, label %86, label %82

82:                                               ; preds = %79
  %83 = load i64, i64* %5, align 8
  %84 = load i64, i64* @OBJ_SHARED_INTEGERS, align 8
  %85 = icmp sge i64 %83, %84
  br i1 %85, label %86, label %100

86:                                               ; preds = %82, %79
  %87 = load i64, i64* %5, align 8
  %88 = load i64, i64* @LONG_MIN, align 8
  %89 = icmp sge i64 %87, %88
  br i1 %89, label %90, label %100

90:                                               ; preds = %86
  %91 = load i64, i64* %5, align 8
  %92 = load i64, i64* @LONG_MAX, align 8
  %93 = icmp sle i64 %91, %92
  br i1 %93, label %94, label %100

94:                                               ; preds = %90
  %95 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  store %struct.TYPE_21__* %95, %struct.TYPE_21__** %8, align 8
  %96 = load i64, i64* %5, align 8
  %97 = inttoptr i64 %96 to i8*
  %98 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %99 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %98, i32 0, i32 2
  store i8* %97, i8** %99, align 8
  br label %128

100:                                              ; preds = %90, %86, %82, %73, %68, %62
  %101 = load i64, i64* %5, align 8
  %102 = call %struct.TYPE_21__* @createStringObjectFromLongLongForValue(i64 %101)
  store %struct.TYPE_21__* %102, %struct.TYPE_21__** %8, align 8
  %103 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %104 = icmp ne %struct.TYPE_21__* %103, null
  br i1 %104, label %105, label %116

105:                                              ; preds = %100
  %106 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %107 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %106, i32 0, i32 0
  %108 = load %struct.TYPE_23__*, %struct.TYPE_23__** %107, align 8
  %109 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %110 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %109, i32 0, i32 1
  %111 = load i32*, i32** %110, align 8
  %112 = getelementptr inbounds i32, i32* %111, i64 1
  %113 = load i32, i32* %112, align 4
  %114 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %115 = call i32 @dbOverwrite(%struct.TYPE_23__* %108, i32 %113, %struct.TYPE_21__* %114)
  br label %127

116:                                              ; preds = %100
  %117 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %118 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %117, i32 0, i32 0
  %119 = load %struct.TYPE_23__*, %struct.TYPE_23__** %118, align 8
  %120 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %121 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %120, i32 0, i32 1
  %122 = load i32*, i32** %121, align 8
  %123 = getelementptr inbounds i32, i32* %122, i64 1
  %124 = load i32, i32* %123, align 4
  %125 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %126 = call i32 @dbAdd(%struct.TYPE_23__* %119, i32 %124, %struct.TYPE_21__* %125)
  br label %127

127:                                              ; preds = %116, %105
  br label %128

128:                                              ; preds = %127, %94
  %129 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %130 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %129, i32 0, i32 0
  %131 = load %struct.TYPE_23__*, %struct.TYPE_23__** %130, align 8
  %132 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %133 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %132, i32 0, i32 1
  %134 = load i32*, i32** %133, align 8
  %135 = getelementptr inbounds i32, i32* %134, i64 1
  %136 = load i32, i32* %135, align 4
  %137 = call i32 @signalModifiedKey(%struct.TYPE_23__* %131, i32 %136)
  %138 = load i32, i32* @NOTIFY_STRING, align 4
  %139 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %140 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %139, i32 0, i32 1
  %141 = load i32*, i32** %140, align 8
  %142 = getelementptr inbounds i32, i32* %141, i64 1
  %143 = load i32, i32* %142, align 4
  %144 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %145 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %144, i32 0, i32 0
  %146 = load %struct.TYPE_23__*, %struct.TYPE_23__** %145, align 8
  %147 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 4
  %149 = call i32 @notifyKeyspaceEvent(i32 %138, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32 %143, i32 %148)
  %150 = load i32, i32* getelementptr inbounds (%struct.TYPE_25__, %struct.TYPE_25__* @server, i32 0, i32 0), align 4
  %151 = add nsw i32 %150, 1
  store i32 %151, i32* getelementptr inbounds (%struct.TYPE_25__, %struct.TYPE_25__* @server, i32 0, i32 0), align 4
  %152 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %153 = load %struct.TYPE_21__*, %struct.TYPE_21__** getelementptr inbounds (%struct.TYPE_24__, %struct.TYPE_24__* @shared, i32 0, i32 1), align 8
  %154 = call i32 @addReply(%struct.TYPE_22__* %152, %struct.TYPE_21__* %153)
  %155 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %156 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %157 = call i32 @addReply(%struct.TYPE_22__* %155, %struct.TYPE_21__* %156)
  %158 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %159 = load %struct.TYPE_21__*, %struct.TYPE_21__** getelementptr inbounds (%struct.TYPE_24__, %struct.TYPE_24__* @shared, i32 0, i32 0), align 8
  %160 = call i32 @addReply(%struct.TYPE_22__* %158, %struct.TYPE_21__* %159)
  br label %161

161:                                              ; preds = %128, %59, %33, %26
  ret void
}

declare dso_local %struct.TYPE_21__* @lookupKeyWrite(%struct.TYPE_23__*, i32) #1

declare dso_local i64 @checkType(%struct.TYPE_22__*, %struct.TYPE_21__*, i32) #1

declare dso_local i64 @getLongLongFromObjectOrReply(%struct.TYPE_22__*, %struct.TYPE_21__*, i64*, i32*) #1

declare dso_local i32 @addReplyError(%struct.TYPE_22__*, i8*) #1

declare dso_local %struct.TYPE_21__* @createStringObjectFromLongLongForValue(i64) #1

declare dso_local i32 @dbOverwrite(%struct.TYPE_23__*, i32, %struct.TYPE_21__*) #1

declare dso_local i32 @dbAdd(%struct.TYPE_23__*, i32, %struct.TYPE_21__*) #1

declare dso_local i32 @signalModifiedKey(%struct.TYPE_23__*, i32) #1

declare dso_local i32 @notifyKeyspaceEvent(i32, i8*, i32, i32) #1

declare dso_local i32 @addReply(%struct.TYPE_22__*, %struct.TYPE_21__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
