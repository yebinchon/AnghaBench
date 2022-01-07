; ModuleID = '/home/carl/AnghaBench/redis/src/extr_t_list.c_lindexCommand.c'
source_filename = "/home/carl/AnghaBench/redis/src/extr_t_list.c_lindexCommand.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_21__ = type { i32* }
%struct.TYPE_20__ = type { i64, i32* }
%struct.TYPE_18__ = type { i64, i32 }
%struct.TYPE_19__ = type { i32, i32, i64 }

@shared = common dso_local global %struct.TYPE_21__ zeroinitializer, align 8
@OBJ_LIST = common dso_local global i32 0, align 4
@C_OK = common dso_local global i64 0, align 8
@OBJ_ENCODING_QUICKLIST = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [22 x i8] c"Unknown list encoding\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @lindexCommand(%struct.TYPE_20__* %0) #0 {
  %2 = alloca %struct.TYPE_20__*, align 8
  %3 = alloca %struct.TYPE_18__*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.TYPE_18__*, align 8
  %6 = alloca %struct.TYPE_19__, align 8
  store %struct.TYPE_20__* %0, %struct.TYPE_20__** %2, align 8
  %7 = load %struct.TYPE_20__*, %struct.TYPE_20__** %2, align 8
  %8 = load %struct.TYPE_20__*, %struct.TYPE_20__** %2, align 8
  %9 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %8, i32 0, i32 1
  %10 = load i32*, i32** %9, align 8
  %11 = getelementptr inbounds i32, i32* %10, i64 1
  %12 = load i32, i32* %11, align 4
  %13 = load i32*, i32** getelementptr inbounds (%struct.TYPE_21__, %struct.TYPE_21__* @shared, i32 0, i32 0), align 8
  %14 = load %struct.TYPE_20__*, %struct.TYPE_20__** %2, align 8
  %15 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = getelementptr inbounds i32, i32* %13, i64 %16
  %18 = load i32, i32* %17, align 4
  %19 = call %struct.TYPE_18__* @lookupKeyReadOrReply(%struct.TYPE_20__* %7, i32 %12, i32 %18)
  store %struct.TYPE_18__* %19, %struct.TYPE_18__** %3, align 8
  %20 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %21 = icmp eq %struct.TYPE_18__* %20, null
  br i1 %21, label %28, label %22

22:                                               ; preds = %1
  %23 = load %struct.TYPE_20__*, %struct.TYPE_20__** %2, align 8
  %24 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %25 = load i32, i32* @OBJ_LIST, align 4
  %26 = call i64 @checkType(%struct.TYPE_20__* %23, %struct.TYPE_18__* %24, i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %22, %1
  br label %80

29:                                               ; preds = %22
  store %struct.TYPE_18__* null, %struct.TYPE_18__** %5, align 8
  %30 = load %struct.TYPE_20__*, %struct.TYPE_20__** %2, align 8
  %31 = load %struct.TYPE_20__*, %struct.TYPE_20__** %2, align 8
  %32 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %31, i32 0, i32 1
  %33 = load i32*, i32** %32, align 8
  %34 = getelementptr inbounds i32, i32* %33, i64 2
  %35 = load i32, i32* %34, align 4
  %36 = call i64 @getLongFromObjectOrReply(%struct.TYPE_20__* %30, i32 %35, i64* %4, i32* null)
  %37 = load i64, i64* @C_OK, align 8
  %38 = icmp ne i64 %36, %37
  br i1 %38, label %39, label %40

39:                                               ; preds = %29
  br label %80

40:                                               ; preds = %29
  %41 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %42 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* @OBJ_ENCODING_QUICKLIST, align 8
  %45 = icmp eq i64 %43, %44
  br i1 %45, label %46, label %78

46:                                               ; preds = %40
  %47 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %48 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 8
  %50 = load i64, i64* %4, align 8
  %51 = call i64 @quicklistIndex(i32 %49, i64 %50, %struct.TYPE_19__* %6)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %74

53:                                               ; preds = %46
  %54 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %6, i32 0, i32 2
  %55 = load i64, i64* %54, align 8
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %64

57:                                               ; preds = %53
  %58 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %6, i32 0, i32 2
  %59 = load i64, i64* %58, align 8
  %60 = inttoptr i64 %59 to i8*
  %61 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %6, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = call %struct.TYPE_18__* @createStringObject(i8* %60, i32 %62)
  store %struct.TYPE_18__* %63, %struct.TYPE_18__** %5, align 8
  br label %68

64:                                               ; preds = %53
  %65 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %6, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = call %struct.TYPE_18__* @createStringObjectFromLongLong(i32 %66)
  store %struct.TYPE_18__* %67, %struct.TYPE_18__** %5, align 8
  br label %68

68:                                               ; preds = %64, %57
  %69 = load %struct.TYPE_20__*, %struct.TYPE_20__** %2, align 8
  %70 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %71 = call i32 @addReplyBulk(%struct.TYPE_20__* %69, %struct.TYPE_18__* %70)
  %72 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %73 = call i32 @decrRefCount(%struct.TYPE_18__* %72)
  br label %77

74:                                               ; preds = %46
  %75 = load %struct.TYPE_20__*, %struct.TYPE_20__** %2, align 8
  %76 = call i32 @addReplyNull(%struct.TYPE_20__* %75)
  br label %77

77:                                               ; preds = %74, %68
  br label %80

78:                                               ; preds = %40
  %79 = call i32 @serverPanic(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  br label %80

80:                                               ; preds = %28, %39, %78, %77
  ret void
}

declare dso_local %struct.TYPE_18__* @lookupKeyReadOrReply(%struct.TYPE_20__*, i32, i32) #1

declare dso_local i64 @checkType(%struct.TYPE_20__*, %struct.TYPE_18__*, i32) #1

declare dso_local i64 @getLongFromObjectOrReply(%struct.TYPE_20__*, i32, i64*, i32*) #1

declare dso_local i64 @quicklistIndex(i32, i64, %struct.TYPE_19__*) #1

declare dso_local %struct.TYPE_18__* @createStringObject(i8*, i32) #1

declare dso_local %struct.TYPE_18__* @createStringObjectFromLongLong(i32) #1

declare dso_local i32 @addReplyBulk(%struct.TYPE_20__*, %struct.TYPE_18__*) #1

declare dso_local i32 @decrRefCount(%struct.TYPE_18__*) #1

declare dso_local i32 @addReplyNull(%struct.TYPE_20__*) #1

declare dso_local i32 @serverPanic(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
