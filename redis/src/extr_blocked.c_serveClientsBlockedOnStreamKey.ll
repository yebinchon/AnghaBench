; ModuleID = '/home/carl/AnghaBench/redis/src/extr_blocked.c_serveClientsBlockedOnStreamKey.c'
source_filename = "/home/carl/AnghaBench/redis/src/extr_blocked.c_serveClientsBlockedOnStreamKey.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_40__ = type { %struct.TYPE_39__* }
%struct.TYPE_39__ = type { i32 }
%struct.TYPE_30__ = type { i32, %struct.TYPE_32__* }
%struct.TYPE_32__ = type { i32 }
%struct.TYPE_31__ = type { i64, i32, %struct.TYPE_35__ }
%struct.TYPE_35__ = type { i32, i32, %struct.TYPE_34__*, %struct.TYPE_33__*, i32 }
%struct.TYPE_34__ = type { i32 }
%struct.TYPE_33__ = type { i32 }
%struct.TYPE_37__ = type { i32 }
%struct.TYPE_38__ = type { %struct.TYPE_37__ }
%struct.TYPE_36__ = type { %struct.TYPE_34__*, i32 }

@BLOCKED_STREAM = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [72 x i8] c"-NOGROUP the consumer group this client was blocked on no longer exists\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @serveClientsBlockedOnStreamKey(%struct.TYPE_40__* %0, %struct.TYPE_30__* %1) #0 {
  %3 = alloca %struct.TYPE_40__*, align 8
  %4 = alloca %struct.TYPE_30__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_39__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_31__*, align 8
  %11 = alloca %struct.TYPE_37__*, align 8
  %12 = alloca %struct.TYPE_38__*, align 8
  %13 = alloca %struct.TYPE_37__, align 4
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca %struct.TYPE_36__, align 8
  store %struct.TYPE_40__* %0, %struct.TYPE_40__** %3, align 8
  store %struct.TYPE_30__* %1, %struct.TYPE_30__** %4, align 8
  %17 = load %struct.TYPE_30__*, %struct.TYPE_30__** %4, align 8
  %18 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %17, i32 0, i32 1
  %19 = load %struct.TYPE_32__*, %struct.TYPE_32__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.TYPE_30__*, %struct.TYPE_30__** %4, align 8
  %23 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = call i32* @dictFind(i32 %21, i32 %24)
  store i32* %25, i32** %5, align 8
  %26 = load %struct.TYPE_40__*, %struct.TYPE_40__** %3, align 8
  %27 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %26, i32 0, i32 0
  %28 = load %struct.TYPE_39__*, %struct.TYPE_39__** %27, align 8
  store %struct.TYPE_39__* %28, %struct.TYPE_39__** %6, align 8
  %29 = load i32*, i32** %5, align 8
  %30 = icmp ne i32* %29, null
  br i1 %30, label %31, label %158

31:                                               ; preds = %2
  %32 = load i32*, i32** %5, align 8
  %33 = call i32* @dictGetVal(i32* %32)
  store i32* %33, i32** %7, align 8
  %34 = load i32*, i32** %7, align 8
  %35 = call i32 @listRewind(i32* %34, i32* %9)
  br label %36

36:                                               ; preds = %156, %73, %47, %31
  %37 = call i32* @listNext(i32* %9)
  store i32* %37, i32** %8, align 8
  %38 = icmp ne i32* %37, null
  br i1 %38, label %39, label %157

39:                                               ; preds = %36
  %40 = load i32*, i32** %8, align 8
  %41 = call %struct.TYPE_31__* @listNodeValue(i32* %40)
  store %struct.TYPE_31__* %41, %struct.TYPE_31__** %10, align 8
  %42 = load %struct.TYPE_31__*, %struct.TYPE_31__** %10, align 8
  %43 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @BLOCKED_STREAM, align 8
  %46 = icmp ne i64 %44, %45
  br i1 %46, label %47, label %48

47:                                               ; preds = %39
  br label %36

48:                                               ; preds = %39
  %49 = load %struct.TYPE_31__*, %struct.TYPE_31__** %10, align 8
  %50 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %49, i32 0, i32 2
  %51 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %50, i32 0, i32 4
  %52 = load i32, i32* %51, align 8
  %53 = load %struct.TYPE_30__*, %struct.TYPE_30__** %4, align 8
  %54 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = call %struct.TYPE_37__* @dictFetchValue(i32 %52, i32 %55)
  store %struct.TYPE_37__* %56, %struct.TYPE_37__** %11, align 8
  store %struct.TYPE_38__* null, %struct.TYPE_38__** %12, align 8
  %57 = load %struct.TYPE_31__*, %struct.TYPE_31__** %10, align 8
  %58 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %57, i32 0, i32 2
  %59 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %58, i32 0, i32 2
  %60 = load %struct.TYPE_34__*, %struct.TYPE_34__** %59, align 8
  %61 = icmp ne %struct.TYPE_34__* %60, null
  br i1 %61, label %62, label %85

62:                                               ; preds = %48
  %63 = load %struct.TYPE_39__*, %struct.TYPE_39__** %6, align 8
  %64 = load %struct.TYPE_31__*, %struct.TYPE_31__** %10, align 8
  %65 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %64, i32 0, i32 2
  %66 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %65, i32 0, i32 2
  %67 = load %struct.TYPE_34__*, %struct.TYPE_34__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = call %struct.TYPE_38__* @streamLookupCG(%struct.TYPE_39__* %63, i32 %69)
  store %struct.TYPE_38__* %70, %struct.TYPE_38__** %12, align 8
  %71 = load %struct.TYPE_38__*, %struct.TYPE_38__** %12, align 8
  %72 = icmp ne %struct.TYPE_38__* %71, null
  br i1 %72, label %78, label %73

73:                                               ; preds = %62
  %74 = load %struct.TYPE_31__*, %struct.TYPE_31__** %10, align 8
  %75 = call i32 @addReplyError(%struct.TYPE_31__* %74, i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str, i64 0, i64 0))
  %76 = load %struct.TYPE_31__*, %struct.TYPE_31__** %10, align 8
  %77 = call i32 @unblockClient(%struct.TYPE_31__* %76)
  br label %36

78:                                               ; preds = %62
  %79 = load %struct.TYPE_37__*, %struct.TYPE_37__** %11, align 8
  %80 = load %struct.TYPE_38__*, %struct.TYPE_38__** %12, align 8
  %81 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %80, i32 0, i32 0
  %82 = bitcast %struct.TYPE_37__* %79 to i8*
  %83 = bitcast %struct.TYPE_37__* %81 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %82, i8* align 4 %83, i64 4, i1 false)
  br label %84

84:                                               ; preds = %78
  br label %85

85:                                               ; preds = %84, %48
  %86 = load %struct.TYPE_39__*, %struct.TYPE_39__** %6, align 8
  %87 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %86, i32 0, i32 0
  %88 = load %struct.TYPE_37__*, %struct.TYPE_37__** %11, align 8
  %89 = call i64 @streamCompareID(i32* %87, %struct.TYPE_37__* %88)
  %90 = icmp sgt i64 %89, 0
  br i1 %90, label %91, label %156

91:                                               ; preds = %85
  %92 = load %struct.TYPE_37__*, %struct.TYPE_37__** %11, align 8
  %93 = bitcast %struct.TYPE_37__* %13 to i8*
  %94 = bitcast %struct.TYPE_37__* %92 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %93, i8* align 4 %94, i64 4, i1 false)
  %95 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %13, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = add nsw i32 %96, 1
  store i32 %97, i32* %95, align 4
  store i32* null, i32** %14, align 8
  store i32 0, i32* %15, align 4
  %98 = load %struct.TYPE_38__*, %struct.TYPE_38__** %12, align 8
  %99 = icmp ne %struct.TYPE_38__* %98, null
  br i1 %99, label %100, label %113

100:                                              ; preds = %91
  %101 = load %struct.TYPE_38__*, %struct.TYPE_38__** %12, align 8
  %102 = load %struct.TYPE_31__*, %struct.TYPE_31__** %10, align 8
  %103 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %102, i32 0, i32 2
  %104 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %103, i32 0, i32 3
  %105 = load %struct.TYPE_33__*, %struct.TYPE_33__** %104, align 8
  %106 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  %108 = call i32* @streamLookupConsumer(%struct.TYPE_38__* %101, i32 %107, i32 1)
  store i32* %108, i32** %14, align 8
  %109 = load %struct.TYPE_31__*, %struct.TYPE_31__** %10, align 8
  %110 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %109, i32 0, i32 2
  %111 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 8
  store i32 %112, i32* %15, align 4
  br label %113

113:                                              ; preds = %100, %91
  %114 = load %struct.TYPE_31__*, %struct.TYPE_31__** %10, align 8
  %115 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %114, i32 0, i32 1
  %116 = load i32, i32* %115, align 8
  %117 = icmp eq i32 %116, 2
  br i1 %117, label %118, label %123

118:                                              ; preds = %113
  %119 = load %struct.TYPE_31__*, %struct.TYPE_31__** %10, align 8
  %120 = call i32 @addReplyArrayLen(%struct.TYPE_31__* %119, i32 1)
  %121 = load %struct.TYPE_31__*, %struct.TYPE_31__** %10, align 8
  %122 = call i32 @addReplyArrayLen(%struct.TYPE_31__* %121, i32 2)
  br label %126

123:                                              ; preds = %113
  %124 = load %struct.TYPE_31__*, %struct.TYPE_31__** %10, align 8
  %125 = call i32 @addReplyMapLen(%struct.TYPE_31__* %124, i32 1)
  br label %126

126:                                              ; preds = %123, %118
  %127 = load %struct.TYPE_31__*, %struct.TYPE_31__** %10, align 8
  %128 = load %struct.TYPE_30__*, %struct.TYPE_30__** %4, align 8
  %129 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 8
  %131 = call i32 @addReplyBulk(%struct.TYPE_31__* %127, i32 %130)
  %132 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %16, i32 0, i32 0
  %133 = load %struct.TYPE_30__*, %struct.TYPE_30__** %4, align 8
  %134 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 8
  %136 = sext i32 %135 to i64
  %137 = inttoptr i64 %136 to %struct.TYPE_34__*
  store %struct.TYPE_34__* %137, %struct.TYPE_34__** %132, align 8
  %138 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %16, i32 0, i32 1
  %139 = load %struct.TYPE_31__*, %struct.TYPE_31__** %10, align 8
  %140 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %139, i32 0, i32 2
  %141 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %140, i32 0, i32 2
  %142 = load %struct.TYPE_34__*, %struct.TYPE_34__** %141, align 8
  %143 = ptrtoint %struct.TYPE_34__* %142 to i32
  store i32 %143, i32* %138, align 8
  %144 = load %struct.TYPE_31__*, %struct.TYPE_31__** %10, align 8
  %145 = load %struct.TYPE_39__*, %struct.TYPE_39__** %6, align 8
  %146 = load %struct.TYPE_31__*, %struct.TYPE_31__** %10, align 8
  %147 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %146, i32 0, i32 2
  %148 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %147, i32 0, i32 1
  %149 = load i32, i32* %148, align 4
  %150 = load %struct.TYPE_38__*, %struct.TYPE_38__** %12, align 8
  %151 = load i32*, i32** %14, align 8
  %152 = load i32, i32* %15, align 4
  %153 = call i32 @streamReplyWithRange(%struct.TYPE_31__* %144, %struct.TYPE_39__* %145, %struct.TYPE_37__* %13, i32* null, i32 %149, i32 0, %struct.TYPE_38__* %150, i32* %151, i32 %152, %struct.TYPE_36__* %16)
  %154 = load %struct.TYPE_31__*, %struct.TYPE_31__** %10, align 8
  %155 = call i32 @unblockClient(%struct.TYPE_31__* %154)
  br label %156

156:                                              ; preds = %126, %85
  br label %36

157:                                              ; preds = %36
  br label %158

158:                                              ; preds = %157, %2
  ret void
}

declare dso_local i32* @dictFind(i32, i32) #1

declare dso_local i32* @dictGetVal(i32*) #1

declare dso_local i32 @listRewind(i32*, i32*) #1

declare dso_local i32* @listNext(i32*) #1

declare dso_local %struct.TYPE_31__* @listNodeValue(i32*) #1

declare dso_local %struct.TYPE_37__* @dictFetchValue(i32, i32) #1

declare dso_local %struct.TYPE_38__* @streamLookupCG(%struct.TYPE_39__*, i32) #1

declare dso_local i32 @addReplyError(%struct.TYPE_31__*, i8*) #1

declare dso_local i32 @unblockClient(%struct.TYPE_31__*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i64 @streamCompareID(i32*, %struct.TYPE_37__*) #1

declare dso_local i32* @streamLookupConsumer(%struct.TYPE_38__*, i32, i32) #1

declare dso_local i32 @addReplyArrayLen(%struct.TYPE_31__*, i32) #1

declare dso_local i32 @addReplyMapLen(%struct.TYPE_31__*, i32) #1

declare dso_local i32 @addReplyBulk(%struct.TYPE_31__*, i32) #1

declare dso_local i32 @streamReplyWithRange(%struct.TYPE_31__*, %struct.TYPE_39__*, %struct.TYPE_37__*, i32*, i32, i32, %struct.TYPE_38__*, i32*, i32, %struct.TYPE_36__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
