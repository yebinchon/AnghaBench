; ModuleID = '/home/carl/AnghaBench/redis/src/extr_cluster.c_clusterReplyMultiBulkSlots.c'
source_filename = "/home/carl/AnghaBench/redis/src/extr_cluster.c_clusterReplyMultiBulkSlots.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_9__ = type { i64, i32, i32, %struct.TYPE_11__**, i32, i32 }
%struct.TYPE_11__ = type { i32, i32, i32 }

@server = common dso_local global %struct.TYPE_10__ zeroinitializer, align 8
@CLUSTER_SLOTS = common dso_local global i32 0, align 4
@CLUSTER_NAMELEN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @clusterReplyMultiBulkSlots(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_9__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  store i32* %0, i32** %2, align 8
  store i32 0, i32* %3, align 4
  %14 = load i32*, i32** %2, align 8
  %15 = call i8* @addReplyDeferredLen(i32* %14)
  store i8* %15, i8** %4, align 8
  %16 = load %struct.TYPE_8__*, %struct.TYPE_8__** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @server, i32 0, i32 0), align 8
  %17 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i32* @dictGetSafeIterator(i32 %18)
  store i32* %19, i32** %6, align 8
  br label %20

20:                                               ; preds = %185, %35, %1
  %21 = load i32*, i32** %6, align 8
  %22 = call i32* @dictNext(i32* %21)
  store i32* %22, i32** %5, align 8
  %23 = icmp ne i32* %22, null
  br i1 %23, label %24, label %186

24:                                               ; preds = %20
  %25 = load i32*, i32** %5, align 8
  %26 = call %struct.TYPE_9__* @dictGetVal(i32* %25)
  store %struct.TYPE_9__* %26, %struct.TYPE_9__** %7, align 8
  store i32 0, i32* %8, align 4
  store i32 -1, i32* %9, align 4
  %27 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %28 = call i32 @nodeIsMaster(%struct.TYPE_9__* %27)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %35

30:                                               ; preds = %24
  %31 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %32 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = icmp eq i64 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %30, %24
  br label %20

36:                                               ; preds = %30
  store i32 0, i32* %8, align 4
  br label %37

37:                                               ; preds = %182, %36
  %38 = load i32, i32* %8, align 4
  %39 = load i32, i32* @CLUSTER_SLOTS, align 4
  %40 = icmp slt i32 %38, %39
  br i1 %40, label %41, label %185

41:                                               ; preds = %37
  %42 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %43 = load i32, i32* %8, align 4
  %44 = call i32 @clusterNodeGetSlotBit(%struct.TYPE_9__* %42, i32 %43)
  store i32 %44, i32* %10, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %52

46:                                               ; preds = %41
  %47 = load i32, i32* %9, align 4
  %48 = icmp eq i32 %47, -1
  br i1 %48, label %49, label %51

49:                                               ; preds = %46
  %50 = load i32, i32* %8, align 4
  store i32 %50, i32* %9, align 4
  br label %51

51:                                               ; preds = %49, %46
  br label %52

52:                                               ; preds = %51, %41
  %53 = load i32, i32* %9, align 4
  %54 = icmp ne i32 %53, -1
  br i1 %54, label %55, label %181

55:                                               ; preds = %52
  %56 = load i32, i32* %10, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %63

58:                                               ; preds = %55
  %59 = load i32, i32* %8, align 4
  %60 = load i32, i32* @CLUSTER_SLOTS, align 4
  %61 = sub nsw i32 %60, 1
  %62 = icmp eq i32 %59, %61
  br i1 %62, label %63, label %181

63:                                               ; preds = %58, %55
  store i32 3, i32* %12, align 4
  %64 = load i32*, i32** %2, align 8
  %65 = call i8* @addReplyDeferredLen(i32* %64)
  store i8* %65, i8** %13, align 8
  %66 = load i32, i32* %10, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %76

68:                                               ; preds = %63
  %69 = load i32, i32* %8, align 4
  %70 = load i32, i32* @CLUSTER_SLOTS, align 4
  %71 = sub nsw i32 %70, 1
  %72 = icmp eq i32 %69, %71
  br i1 %72, label %73, label %76

73:                                               ; preds = %68
  %74 = load i32, i32* %8, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %8, align 4
  br label %76

76:                                               ; preds = %73, %68, %63
  %77 = load i32, i32* %9, align 4
  %78 = load i32, i32* %8, align 4
  %79 = sub nsw i32 %78, 1
  %80 = icmp eq i32 %77, %79
  br i1 %80, label %81, label %88

81:                                               ; preds = %76
  %82 = load i32*, i32** %2, align 8
  %83 = load i32, i32* %9, align 4
  %84 = call i32 @addReplyLongLong(i32* %82, i32 %83)
  %85 = load i32*, i32** %2, align 8
  %86 = load i32, i32* %9, align 4
  %87 = call i32 @addReplyLongLong(i32* %85, i32 %86)
  br label %96

88:                                               ; preds = %76
  %89 = load i32*, i32** %2, align 8
  %90 = load i32, i32* %9, align 4
  %91 = call i32 @addReplyLongLong(i32* %89, i32 %90)
  %92 = load i32*, i32** %2, align 8
  %93 = load i32, i32* %8, align 4
  %94 = sub nsw i32 %93, 1
  %95 = call i32 @addReplyLongLong(i32* %92, i32 %94)
  br label %96

96:                                               ; preds = %88, %81
  store i32 -1, i32* %9, align 4
  %97 = load i32*, i32** %2, align 8
  %98 = call i32 @addReplyArrayLen(i32* %97, i32 3)
  %99 = load i32*, i32** %2, align 8
  %100 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %101 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %100, i32 0, i32 5
  %102 = load i32, i32* %101, align 4
  %103 = call i32 @addReplyBulkCString(i32* %99, i32 %102)
  %104 = load i32*, i32** %2, align 8
  %105 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %106 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 8
  %108 = call i32 @addReplyLongLong(i32* %104, i32 %107)
  %109 = load i32*, i32** %2, align 8
  %110 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %111 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %110, i32 0, i32 4
  %112 = load i32, i32* %111, align 8
  %113 = load i32, i32* @CLUSTER_NAMELEN, align 4
  %114 = call i32 @addReplyBulkCBuffer(i32* %109, i32 %112, i32 %113)
  store i32 0, i32* %11, align 4
  br label %115

115:                                              ; preds = %171, %96
  %116 = load i32, i32* %11, align 4
  %117 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %118 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %117, i32 0, i32 2
  %119 = load i32, i32* %118, align 4
  %120 = icmp slt i32 %116, %119
  br i1 %120, label %121, label %174

121:                                              ; preds = %115
  %122 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %123 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %122, i32 0, i32 3
  %124 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %123, align 8
  %125 = load i32, i32* %11, align 4
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %124, i64 %126
  %128 = load %struct.TYPE_11__*, %struct.TYPE_11__** %127, align 8
  %129 = call i64 @nodeFailed(%struct.TYPE_11__* %128)
  %130 = icmp ne i64 %129, 0
  br i1 %130, label %131, label %132

131:                                              ; preds = %121
  br label %171

132:                                              ; preds = %121
  %133 = load i32*, i32** %2, align 8
  %134 = call i32 @addReplyArrayLen(i32* %133, i32 3)
  %135 = load i32*, i32** %2, align 8
  %136 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %137 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %136, i32 0, i32 3
  %138 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %137, align 8
  %139 = load i32, i32* %11, align 4
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %138, i64 %140
  %142 = load %struct.TYPE_11__*, %struct.TYPE_11__** %141, align 8
  %143 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %142, i32 0, i32 2
  %144 = load i32, i32* %143, align 4
  %145 = call i32 @addReplyBulkCString(i32* %135, i32 %144)
  %146 = load i32*, i32** %2, align 8
  %147 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %148 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %147, i32 0, i32 3
  %149 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %148, align 8
  %150 = load i32, i32* %11, align 4
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %149, i64 %151
  %153 = load %struct.TYPE_11__*, %struct.TYPE_11__** %152, align 8
  %154 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %153, i32 0, i32 0
  %155 = load i32, i32* %154, align 4
  %156 = call i32 @addReplyLongLong(i32* %146, i32 %155)
  %157 = load i32*, i32** %2, align 8
  %158 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %159 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %158, i32 0, i32 3
  %160 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %159, align 8
  %161 = load i32, i32* %11, align 4
  %162 = sext i32 %161 to i64
  %163 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %160, i64 %162
  %164 = load %struct.TYPE_11__*, %struct.TYPE_11__** %163, align 8
  %165 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %164, i32 0, i32 1
  %166 = load i32, i32* %165, align 4
  %167 = load i32, i32* @CLUSTER_NAMELEN, align 4
  %168 = call i32 @addReplyBulkCBuffer(i32* %157, i32 %166, i32 %167)
  %169 = load i32, i32* %12, align 4
  %170 = add nsw i32 %169, 1
  store i32 %170, i32* %12, align 4
  br label %171

171:                                              ; preds = %132, %131
  %172 = load i32, i32* %11, align 4
  %173 = add nsw i32 %172, 1
  store i32 %173, i32* %11, align 4
  br label %115

174:                                              ; preds = %115
  %175 = load i32*, i32** %2, align 8
  %176 = load i8*, i8** %13, align 8
  %177 = load i32, i32* %12, align 4
  %178 = call i32 @setDeferredArrayLen(i32* %175, i8* %176, i32 %177)
  %179 = load i32, i32* %3, align 4
  %180 = add nsw i32 %179, 1
  store i32 %180, i32* %3, align 4
  br label %181

181:                                              ; preds = %174, %58, %52
  br label %182

182:                                              ; preds = %181
  %183 = load i32, i32* %8, align 4
  %184 = add nsw i32 %183, 1
  store i32 %184, i32* %8, align 4
  br label %37

185:                                              ; preds = %37
  br label %20

186:                                              ; preds = %20
  %187 = load i32*, i32** %6, align 8
  %188 = call i32 @dictReleaseIterator(i32* %187)
  %189 = load i32*, i32** %2, align 8
  %190 = load i8*, i8** %4, align 8
  %191 = load i32, i32* %3, align 4
  %192 = call i32 @setDeferredArrayLen(i32* %189, i8* %190, i32 %191)
  ret void
}

declare dso_local i8* @addReplyDeferredLen(i32*) #1

declare dso_local i32* @dictGetSafeIterator(i32) #1

declare dso_local i32* @dictNext(i32*) #1

declare dso_local %struct.TYPE_9__* @dictGetVal(i32*) #1

declare dso_local i32 @nodeIsMaster(%struct.TYPE_9__*) #1

declare dso_local i32 @clusterNodeGetSlotBit(%struct.TYPE_9__*, i32) #1

declare dso_local i32 @addReplyLongLong(i32*, i32) #1

declare dso_local i32 @addReplyArrayLen(i32*, i32) #1

declare dso_local i32 @addReplyBulkCString(i32*, i32) #1

declare dso_local i32 @addReplyBulkCBuffer(i32*, i32, i32) #1

declare dso_local i64 @nodeFailed(%struct.TYPE_11__*) #1

declare dso_local i32 @setDeferredArrayLen(i32*, i8*, i32) #1

declare dso_local i32 @dictReleaseIterator(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
