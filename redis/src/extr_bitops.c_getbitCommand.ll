; ModuleID = '/home/carl/AnghaBench/redis/src/extr_bitops.c_getbitCommand.c'
source_filename = "/home/carl/AnghaBench/redis/src/extr_bitops.c_getbitCommand.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32, i32 }
%struct.TYPE_13__ = type { i32* }
%struct.TYPE_12__ = type { i64 }

@C_OK = common dso_local global i64 0, align 8
@shared = common dso_local global %struct.TYPE_14__ zeroinitializer, align 4
@OBJ_STRING = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @getbitCommand(%struct.TYPE_13__* %0) #0 {
  %2 = alloca %struct.TYPE_13__*, align 8
  %3 = alloca %struct.TYPE_12__*, align 8
  %4 = alloca [32 x i8], align 16
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %2, align 8
  store i64 0, i64* %8, align 8
  %9 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %10 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %11 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %10, i32 0, i32 0
  %12 = load i32*, i32** %11, align 8
  %13 = getelementptr inbounds i32, i32* %12, i64 2
  %14 = load i32, i32* %13, align 4
  %15 = call i64 @getBitOffsetFromArgument(%struct.TYPE_13__* %9, i32 %14, i64* %5, i32 0, i32 0)
  %16 = load i64, i64* @C_OK, align 8
  %17 = icmp ne i64 %15, %16
  br i1 %17, label %18, label %19

18:                                               ; preds = %1
  br label %96

19:                                               ; preds = %1
  %20 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %21 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %22 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %21, i32 0, i32 0
  %23 = load i32*, i32** %22, align 8
  %24 = getelementptr inbounds i32, i32* %23, i64 1
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @shared, i32 0, i32 0), align 4
  %27 = call %struct.TYPE_12__* @lookupKeyReadOrReply(%struct.TYPE_13__* %20, i32 %25, i32 %26)
  store %struct.TYPE_12__* %27, %struct.TYPE_12__** %3, align 8
  %28 = icmp eq %struct.TYPE_12__* %27, null
  br i1 %28, label %35, label %29

29:                                               ; preds = %19
  %30 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %31 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %32 = load i32, i32* @OBJ_STRING, align 4
  %33 = call i64 @checkType(%struct.TYPE_13__* %30, %struct.TYPE_12__* %31, i32 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %29, %19
  br label %96

36:                                               ; preds = %29
  %37 = load i64, i64* %5, align 8
  %38 = lshr i64 %37, 3
  store i64 %38, i64* %6, align 8
  %39 = load i64, i64* %5, align 8
  %40 = and i64 %39, 7
  %41 = sub i64 7, %40
  store i64 %41, i64* %7, align 8
  %42 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %43 = call i64 @sdsEncodedObject(%struct.TYPE_12__* %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %66

45:                                               ; preds = %36
  %46 = load i64, i64* %6, align 8
  %47 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %48 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = call i64 @sdslen(i64 %49)
  %51 = icmp ult i64 %46, %50
  br i1 %51, label %52, label %65

52:                                               ; preds = %45
  %53 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %54 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = inttoptr i64 %55 to i32*
  %57 = load i64, i64* %6, align 8
  %58 = getelementptr inbounds i32, i32* %56, i64 %57
  %59 = load i32, i32* %58, align 4
  %60 = load i64, i64* %7, align 8
  %61 = trunc i64 %60 to i32
  %62 = shl i32 1, %61
  %63 = and i32 %59, %62
  %64 = sext i32 %63 to i64
  store i64 %64, i64* %8, align 8
  br label %65

65:                                               ; preds = %52, %45
  br label %85

66:                                               ; preds = %36
  %67 = load i64, i64* %6, align 8
  %68 = getelementptr inbounds [32 x i8], [32 x i8]* %4, i64 0, i64 0
  %69 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %70 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = call i64 @ll2string(i8* %68, i32 32, i64 %71)
  %73 = icmp ult i64 %67, %72
  br i1 %73, label %74, label %84

74:                                               ; preds = %66
  %75 = load i64, i64* %6, align 8
  %76 = getelementptr inbounds [32 x i8], [32 x i8]* %4, i64 0, i64 %75
  %77 = load i8, i8* %76, align 1
  %78 = sext i8 %77 to i32
  %79 = load i64, i64* %7, align 8
  %80 = trunc i64 %79 to i32
  %81 = shl i32 1, %80
  %82 = and i32 %78, %81
  %83 = sext i32 %82 to i64
  store i64 %83, i64* %8, align 8
  br label %84

84:                                               ; preds = %74, %66
  br label %85

85:                                               ; preds = %84, %65
  %86 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %87 = load i64, i64* %8, align 8
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %91

89:                                               ; preds = %85
  %90 = load i32, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @shared, i32 0, i32 1), align 4
  br label %93

91:                                               ; preds = %85
  %92 = load i32, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @shared, i32 0, i32 0), align 4
  br label %93

93:                                               ; preds = %91, %89
  %94 = phi i32 [ %90, %89 ], [ %92, %91 ]
  %95 = call i32 @addReply(%struct.TYPE_13__* %86, i32 %94)
  br label %96

96:                                               ; preds = %93, %35, %18
  ret void
}

declare dso_local i64 @getBitOffsetFromArgument(%struct.TYPE_13__*, i32, i64*, i32, i32) #1

declare dso_local %struct.TYPE_12__* @lookupKeyReadOrReply(%struct.TYPE_13__*, i32, i32) #1

declare dso_local i64 @checkType(%struct.TYPE_13__*, %struct.TYPE_12__*, i32) #1

declare dso_local i64 @sdsEncodedObject(%struct.TYPE_12__*) #1

declare dso_local i64 @sdslen(i64) #1

declare dso_local i64 @ll2string(i8*, i32, i64) #1

declare dso_local i32 @addReply(%struct.TYPE_13__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
