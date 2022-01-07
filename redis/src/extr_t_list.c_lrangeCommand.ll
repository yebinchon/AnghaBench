; ModuleID = '/home/carl/AnghaBench/redis/src/extr_t_list.c_lrangeCommand.c'
source_filename = "/home/carl/AnghaBench/redis/src/extr_t_list.c_lrangeCommand.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_23__ = type { i32 }
%struct.TYPE_22__ = type { i32* }
%struct.TYPE_19__ = type { i64 }
%struct.TYPE_21__ = type { %struct.TYPE_20__ }
%struct.TYPE_20__ = type { i32, i32, i64 }

@C_OK = common dso_local global i64 0, align 8
@shared = common dso_local global %struct.TYPE_23__ zeroinitializer, align 4
@OBJ_LIST = common dso_local global i32 0, align 4
@OBJ_ENCODING_QUICKLIST = common dso_local global i64 0, align 8
@LIST_TAIL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"List encoding is not QUICKLIST!\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @lrangeCommand(%struct.TYPE_22__* %0) #0 {
  %2 = alloca %struct.TYPE_22__*, align 8
  %3 = alloca %struct.TYPE_19__*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_21__, align 8
  %10 = alloca %struct.TYPE_20__*, align 8
  store %struct.TYPE_22__* %0, %struct.TYPE_22__** %2, align 8
  %11 = load %struct.TYPE_22__*, %struct.TYPE_22__** %2, align 8
  %12 = load %struct.TYPE_22__*, %struct.TYPE_22__** %2, align 8
  %13 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %12, i32 0, i32 0
  %14 = load i32*, i32** %13, align 8
  %15 = getelementptr inbounds i32, i32* %14, i64 2
  %16 = load i32, i32* %15, align 4
  %17 = call i64 @getLongFromObjectOrReply(%struct.TYPE_22__* %11, i32 %16, i64* %4, i32* null)
  %18 = load i64, i64* @C_OK, align 8
  %19 = icmp ne i64 %17, %18
  br i1 %19, label %30, label %20

20:                                               ; preds = %1
  %21 = load %struct.TYPE_22__*, %struct.TYPE_22__** %2, align 8
  %22 = load %struct.TYPE_22__*, %struct.TYPE_22__** %2, align 8
  %23 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %22, i32 0, i32 0
  %24 = load i32*, i32** %23, align 8
  %25 = getelementptr inbounds i32, i32* %24, i64 3
  %26 = load i32, i32* %25, align 4
  %27 = call i64 @getLongFromObjectOrReply(%struct.TYPE_22__* %21, i32 %26, i64* %5, i32* null)
  %28 = load i64, i64* @C_OK, align 8
  %29 = icmp ne i64 %27, %28
  br i1 %29, label %30, label %31

30:                                               ; preds = %20, %1
  br label %138

31:                                               ; preds = %20
  %32 = load %struct.TYPE_22__*, %struct.TYPE_22__** %2, align 8
  %33 = load %struct.TYPE_22__*, %struct.TYPE_22__** %2, align 8
  %34 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %33, i32 0, i32 0
  %35 = load i32*, i32** %34, align 8
  %36 = getelementptr inbounds i32, i32* %35, i64 1
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* getelementptr inbounds (%struct.TYPE_23__, %struct.TYPE_23__* @shared, i32 0, i32 0), align 4
  %39 = call %struct.TYPE_19__* @lookupKeyReadOrReply(%struct.TYPE_22__* %32, i32 %37, i32 %38)
  store %struct.TYPE_19__* %39, %struct.TYPE_19__** %3, align 8
  %40 = icmp eq %struct.TYPE_19__* %39, null
  br i1 %40, label %47, label %41

41:                                               ; preds = %31
  %42 = load %struct.TYPE_22__*, %struct.TYPE_22__** %2, align 8
  %43 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %44 = load i32, i32* @OBJ_LIST, align 4
  %45 = call i64 @checkType(%struct.TYPE_22__* %42, %struct.TYPE_19__* %43, i32 %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %41, %31
  br label %138

48:                                               ; preds = %41
  %49 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %50 = call i64 @listTypeLength(%struct.TYPE_19__* %49)
  store i64 %50, i64* %6, align 8
  %51 = load i64, i64* %4, align 8
  %52 = icmp slt i64 %51, 0
  br i1 %52, label %53, label %57

53:                                               ; preds = %48
  %54 = load i64, i64* %6, align 8
  %55 = load i64, i64* %4, align 8
  %56 = add nsw i64 %54, %55
  store i64 %56, i64* %4, align 8
  br label %57

57:                                               ; preds = %53, %48
  %58 = load i64, i64* %5, align 8
  %59 = icmp slt i64 %58, 0
  br i1 %59, label %60, label %64

60:                                               ; preds = %57
  %61 = load i64, i64* %6, align 8
  %62 = load i64, i64* %5, align 8
  %63 = add nsw i64 %61, %62
  store i64 %63, i64* %5, align 8
  br label %64

64:                                               ; preds = %60, %57
  %65 = load i64, i64* %4, align 8
  %66 = icmp slt i64 %65, 0
  br i1 %66, label %67, label %68

67:                                               ; preds = %64
  store i64 0, i64* %4, align 8
  br label %68

68:                                               ; preds = %67, %64
  %69 = load i64, i64* %4, align 8
  %70 = load i64, i64* %5, align 8
  %71 = icmp sgt i64 %69, %70
  br i1 %71, label %76, label %72

72:                                               ; preds = %68
  %73 = load i64, i64* %4, align 8
  %74 = load i64, i64* %6, align 8
  %75 = icmp sge i64 %73, %74
  br i1 %75, label %76, label %80

76:                                               ; preds = %72, %68
  %77 = load %struct.TYPE_22__*, %struct.TYPE_22__** %2, align 8
  %78 = load i32, i32* getelementptr inbounds (%struct.TYPE_23__, %struct.TYPE_23__* @shared, i32 0, i32 0), align 4
  %79 = call i32 @addReply(%struct.TYPE_22__* %77, i32 %78)
  br label %138

80:                                               ; preds = %72
  %81 = load i64, i64* %5, align 8
  %82 = load i64, i64* %6, align 8
  %83 = icmp sge i64 %81, %82
  br i1 %83, label %84, label %87

84:                                               ; preds = %80
  %85 = load i64, i64* %6, align 8
  %86 = sub nsw i64 %85, 1
  store i64 %86, i64* %5, align 8
  br label %87

87:                                               ; preds = %84, %80
  %88 = load i64, i64* %5, align 8
  %89 = load i64, i64* %4, align 8
  %90 = sub nsw i64 %88, %89
  %91 = add nsw i64 %90, 1
  store i64 %91, i64* %7, align 8
  %92 = load %struct.TYPE_22__*, %struct.TYPE_22__** %2, align 8
  %93 = load i64, i64* %7, align 8
  %94 = call i32 @addReplyArrayLen(%struct.TYPE_22__* %92, i64 %93)
  %95 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %96 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %95, i32 0, i32 0
  %97 = load i64, i64* %96, align 8
  %98 = load i64, i64* @OBJ_ENCODING_QUICKLIST, align 8
  %99 = icmp eq i64 %97, %98
  br i1 %99, label %100, label %136

100:                                              ; preds = %87
  %101 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %102 = load i64, i64* %4, align 8
  %103 = load i32, i32* @LIST_TAIL, align 4
  %104 = call i32* @listTypeInitIterator(%struct.TYPE_19__* %101, i64 %102, i32 %103)
  store i32* %104, i32** %8, align 8
  br label %105

105:                                              ; preds = %132, %100
  %106 = load i64, i64* %7, align 8
  %107 = add nsw i64 %106, -1
  store i64 %107, i64* %7, align 8
  %108 = icmp ne i64 %106, 0
  br i1 %108, label %109, label %133

109:                                              ; preds = %105
  %110 = load i32*, i32** %8, align 8
  %111 = call i32 @listTypeNext(i32* %110, %struct.TYPE_21__* %9)
  %112 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %9, i32 0, i32 0
  store %struct.TYPE_20__* %112, %struct.TYPE_20__** %10, align 8
  %113 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %114 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %113, i32 0, i32 2
  %115 = load i64, i64* %114, align 8
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %117, label %126

117:                                              ; preds = %109
  %118 = load %struct.TYPE_22__*, %struct.TYPE_22__** %2, align 8
  %119 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %120 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %119, i32 0, i32 2
  %121 = load i64, i64* %120, align 8
  %122 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %123 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %122, i32 0, i32 1
  %124 = load i32, i32* %123, align 4
  %125 = call i32 @addReplyBulkCBuffer(%struct.TYPE_22__* %118, i64 %121, i32 %124)
  br label %132

126:                                              ; preds = %109
  %127 = load %struct.TYPE_22__*, %struct.TYPE_22__** %2, align 8
  %128 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %129 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 8
  %131 = call i32 @addReplyBulkLongLong(%struct.TYPE_22__* %127, i32 %130)
  br label %132

132:                                              ; preds = %126, %117
  br label %105

133:                                              ; preds = %105
  %134 = load i32*, i32** %8, align 8
  %135 = call i32 @listTypeReleaseIterator(i32* %134)
  br label %138

136:                                              ; preds = %87
  %137 = call i32 @serverPanic(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  br label %138

138:                                              ; preds = %30, %47, %76, %136, %133
  ret void
}

declare dso_local i64 @getLongFromObjectOrReply(%struct.TYPE_22__*, i32, i64*, i32*) #1

declare dso_local %struct.TYPE_19__* @lookupKeyReadOrReply(%struct.TYPE_22__*, i32, i32) #1

declare dso_local i64 @checkType(%struct.TYPE_22__*, %struct.TYPE_19__*, i32) #1

declare dso_local i64 @listTypeLength(%struct.TYPE_19__*) #1

declare dso_local i32 @addReply(%struct.TYPE_22__*, i32) #1

declare dso_local i32 @addReplyArrayLen(%struct.TYPE_22__*, i64) #1

declare dso_local i32* @listTypeInitIterator(%struct.TYPE_19__*, i64, i32) #1

declare dso_local i32 @listTypeNext(i32*, %struct.TYPE_21__*) #1

declare dso_local i32 @addReplyBulkCBuffer(%struct.TYPE_22__*, i64, i32) #1

declare dso_local i32 @addReplyBulkLongLong(%struct.TYPE_22__*, i32) #1

declare dso_local i32 @listTypeReleaseIterator(i32*) #1

declare dso_local i32 @serverPanic(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
