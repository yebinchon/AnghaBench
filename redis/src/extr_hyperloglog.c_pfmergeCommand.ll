; ModuleID = '/home/carl/AnghaBench/redis/src/extr_hyperloglog.c_pfmergeCommand.c'
source_filename = "/home/carl/AnghaBench/redis/src/extr_hyperloglog.c_pfmergeCommand.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_28__ = type { i32 }
%struct.TYPE_27__ = type { i32 }
%struct.TYPE_25__ = type { i32, %struct.TYPE_26__*, i32* }
%struct.TYPE_26__ = type { i32 }
%struct.hllhdr = type { i32, i32 }
%struct.TYPE_24__ = type { %struct.hllhdr* }

@HLL_REGISTERS = common dso_local global i32 0, align 4
@C_OK = common dso_local global i64 0, align 8
@C_ERR = common dso_local global i64 0, align 8
@invalid_hll_err = common dso_local global i32 0, align 4
@NOTIFY_STRING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"pfadd\00", align 1
@server = common dso_local global %struct.TYPE_28__ zeroinitializer, align 4
@shared = common dso_local global %struct.TYPE_27__ zeroinitializer, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pfmergeCommand(%struct.TYPE_25__* %0) #0 {
  %2 = alloca %struct.TYPE_25__*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.hllhdr*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_24__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_24__*, align 8
  store %struct.TYPE_25__* %0, %struct.TYPE_25__** %2, align 8
  %11 = load i32, i32* @HLL_REGISTERS, align 4
  %12 = zext i32 %11 to i64
  %13 = call i8* @llvm.stacksave()
  store i8* %13, i8** %3, align 8
  %14 = alloca i64, i64 %12, align 16
  store i64 %12, i64* %4, align 8
  store i32 0, i32* %7, align 4
  %15 = mul nuw i64 8, %12
  %16 = trunc i64 %15 to i32
  %17 = call i32 @memset(i64* %14, i32 0, i32 %16)
  store i32 1, i32* %6, align 4
  br label %18

18:                                               ; preds = %66, %1
  %19 = load i32, i32* %6, align 4
  %20 = load %struct.TYPE_25__*, %struct.TYPE_25__** %2, align 8
  %21 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = icmp slt i32 %19, %22
  br i1 %23, label %24, label %69

24:                                               ; preds = %18
  %25 = load %struct.TYPE_25__*, %struct.TYPE_25__** %2, align 8
  %26 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %25, i32 0, i32 1
  %27 = load %struct.TYPE_26__*, %struct.TYPE_26__** %26, align 8
  %28 = load %struct.TYPE_25__*, %struct.TYPE_25__** %2, align 8
  %29 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %28, i32 0, i32 2
  %30 = load i32*, i32** %29, align 8
  %31 = load i32, i32* %6, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i32, i32* %30, i64 %32
  %34 = load i32, i32* %33, align 4
  %35 = call %struct.TYPE_24__* @lookupKeyRead(%struct.TYPE_26__* %27, i32 %34)
  store %struct.TYPE_24__* %35, %struct.TYPE_24__** %8, align 8
  %36 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %37 = icmp eq %struct.TYPE_24__* %36, null
  br i1 %37, label %38, label %39

38:                                               ; preds = %24
  br label %66

39:                                               ; preds = %24
  %40 = load %struct.TYPE_25__*, %struct.TYPE_25__** %2, align 8
  %41 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %42 = call i64 @isHLLObjectOrReply(%struct.TYPE_25__* %40, %struct.TYPE_24__* %41)
  %43 = load i64, i64* @C_OK, align 8
  %44 = icmp ne i64 %42, %43
  br i1 %44, label %45, label %46

45:                                               ; preds = %39
  store i32 1, i32* %9, align 4
  br label %190

46:                                               ; preds = %39
  %47 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %48 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %47, i32 0, i32 0
  %49 = load %struct.hllhdr*, %struct.hllhdr** %48, align 8
  store %struct.hllhdr* %49, %struct.hllhdr** %5, align 8
  %50 = load %struct.hllhdr*, %struct.hllhdr** %5, align 8
  %51 = getelementptr inbounds %struct.hllhdr, %struct.hllhdr* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = icmp eq i32 %52, 129
  br i1 %53, label %54, label %55

54:                                               ; preds = %46
  store i32 1, i32* %7, align 4
  br label %55

55:                                               ; preds = %54, %46
  %56 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %57 = call i64 @hllMerge(i64* %14, %struct.TYPE_24__* %56)
  %58 = load i64, i64* @C_ERR, align 8
  %59 = icmp eq i64 %57, %58
  br i1 %59, label %60, label %65

60:                                               ; preds = %55
  %61 = load %struct.TYPE_25__*, %struct.TYPE_25__** %2, align 8
  %62 = load i32, i32* @invalid_hll_err, align 4
  %63 = call i32 @sdsnew(i32 %62)
  %64 = call i32 @addReplySds(%struct.TYPE_25__* %61, i32 %63)
  store i32 1, i32* %9, align 4
  br label %190

65:                                               ; preds = %55
  br label %66

66:                                               ; preds = %65, %38
  %67 = load i32, i32* %6, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %6, align 4
  br label %18

69:                                               ; preds = %18
  %70 = load %struct.TYPE_25__*, %struct.TYPE_25__** %2, align 8
  %71 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %70, i32 0, i32 1
  %72 = load %struct.TYPE_26__*, %struct.TYPE_26__** %71, align 8
  %73 = load %struct.TYPE_25__*, %struct.TYPE_25__** %2, align 8
  %74 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %73, i32 0, i32 2
  %75 = load i32*, i32** %74, align 8
  %76 = getelementptr inbounds i32, i32* %75, i64 1
  %77 = load i32, i32* %76, align 4
  %78 = call %struct.TYPE_24__* @lookupKeyWrite(%struct.TYPE_26__* %72, i32 %77)
  store %struct.TYPE_24__* %78, %struct.TYPE_24__** %10, align 8
  %79 = load %struct.TYPE_24__*, %struct.TYPE_24__** %10, align 8
  %80 = icmp eq %struct.TYPE_24__* %79, null
  br i1 %80, label %81, label %93

81:                                               ; preds = %69
  %82 = call %struct.TYPE_24__* (...) @createHLLObject()
  store %struct.TYPE_24__* %82, %struct.TYPE_24__** %10, align 8
  %83 = load %struct.TYPE_25__*, %struct.TYPE_25__** %2, align 8
  %84 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %83, i32 0, i32 1
  %85 = load %struct.TYPE_26__*, %struct.TYPE_26__** %84, align 8
  %86 = load %struct.TYPE_25__*, %struct.TYPE_25__** %2, align 8
  %87 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %86, i32 0, i32 2
  %88 = load i32*, i32** %87, align 8
  %89 = getelementptr inbounds i32, i32* %88, i64 1
  %90 = load i32, i32* %89, align 4
  %91 = load %struct.TYPE_24__*, %struct.TYPE_24__** %10, align 8
  %92 = call i32 @dbAdd(%struct.TYPE_26__* %85, i32 %90, %struct.TYPE_24__* %91)
  br label %104

93:                                               ; preds = %69
  %94 = load %struct.TYPE_25__*, %struct.TYPE_25__** %2, align 8
  %95 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %94, i32 0, i32 1
  %96 = load %struct.TYPE_26__*, %struct.TYPE_26__** %95, align 8
  %97 = load %struct.TYPE_25__*, %struct.TYPE_25__** %2, align 8
  %98 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %97, i32 0, i32 2
  %99 = load i32*, i32** %98, align 8
  %100 = getelementptr inbounds i32, i32* %99, i64 1
  %101 = load i32, i32* %100, align 4
  %102 = load %struct.TYPE_24__*, %struct.TYPE_24__** %10, align 8
  %103 = call %struct.TYPE_24__* @dbUnshareStringValue(%struct.TYPE_26__* %96, i32 %101, %struct.TYPE_24__* %102)
  store %struct.TYPE_24__* %103, %struct.TYPE_24__** %10, align 8
  br label %104

104:                                              ; preds = %93, %81
  %105 = load i32, i32* %7, align 4
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %117

107:                                              ; preds = %104
  %108 = load %struct.TYPE_24__*, %struct.TYPE_24__** %10, align 8
  %109 = call i64 @hllSparseToDense(%struct.TYPE_24__* %108)
  %110 = load i64, i64* @C_ERR, align 8
  %111 = icmp eq i64 %109, %110
  br i1 %111, label %112, label %117

112:                                              ; preds = %107
  %113 = load %struct.TYPE_25__*, %struct.TYPE_25__** %2, align 8
  %114 = load i32, i32* @invalid_hll_err, align 4
  %115 = call i32 @sdsnew(i32 %114)
  %116 = call i32 @addReplySds(%struct.TYPE_25__* %113, i32 %115)
  store i32 1, i32* %9, align 4
  br label %190

117:                                              ; preds = %107, %104
  store i32 0, i32* %6, align 4
  br label %118

118:                                              ; preds = %155, %117
  %119 = load i32, i32* %6, align 4
  %120 = load i32, i32* @HLL_REGISTERS, align 4
  %121 = icmp slt i32 %119, %120
  br i1 %121, label %122, label %158

122:                                              ; preds = %118
  %123 = load i32, i32* %6, align 4
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds i64, i64* %14, i64 %124
  %126 = load i64, i64* %125, align 8
  %127 = icmp eq i64 %126, 0
  br i1 %127, label %128, label %129

128:                                              ; preds = %122
  br label %155

129:                                              ; preds = %122
  %130 = load %struct.TYPE_24__*, %struct.TYPE_24__** %10, align 8
  %131 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %130, i32 0, i32 0
  %132 = load %struct.hllhdr*, %struct.hllhdr** %131, align 8
  store %struct.hllhdr* %132, %struct.hllhdr** %5, align 8
  %133 = load %struct.hllhdr*, %struct.hllhdr** %5, align 8
  %134 = getelementptr inbounds %struct.hllhdr, %struct.hllhdr* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 4
  switch i32 %135, label %154 [
    i32 129, label %136
    i32 128, label %146
  ]

136:                                              ; preds = %129
  %137 = load %struct.hllhdr*, %struct.hllhdr** %5, align 8
  %138 = getelementptr inbounds %struct.hllhdr, %struct.hllhdr* %137, i32 0, i32 1
  %139 = load i32, i32* %138, align 4
  %140 = load i32, i32* %6, align 4
  %141 = load i32, i32* %6, align 4
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds i64, i64* %14, i64 %142
  %144 = load i64, i64* %143, align 8
  %145 = call i32 @hllDenseSet(i32 %139, i32 %140, i64 %144)
  br label %154

146:                                              ; preds = %129
  %147 = load %struct.TYPE_24__*, %struct.TYPE_24__** %10, align 8
  %148 = load i32, i32* %6, align 4
  %149 = load i32, i32* %6, align 4
  %150 = sext i32 %149 to i64
  %151 = getelementptr inbounds i64, i64* %14, i64 %150
  %152 = load i64, i64* %151, align 8
  %153 = call i32 @hllSparseSet(%struct.TYPE_24__* %147, i32 %148, i64 %152)
  br label %154

154:                                              ; preds = %129, %146, %136
  br label %155

155:                                              ; preds = %154, %128
  %156 = load i32, i32* %6, align 4
  %157 = add nsw i32 %156, 1
  store i32 %157, i32* %6, align 4
  br label %118

158:                                              ; preds = %118
  %159 = load %struct.TYPE_24__*, %struct.TYPE_24__** %10, align 8
  %160 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %159, i32 0, i32 0
  %161 = load %struct.hllhdr*, %struct.hllhdr** %160, align 8
  store %struct.hllhdr* %161, %struct.hllhdr** %5, align 8
  %162 = load %struct.hllhdr*, %struct.hllhdr** %5, align 8
  %163 = call i32 @HLL_INVALIDATE_CACHE(%struct.hllhdr* %162)
  %164 = load %struct.TYPE_25__*, %struct.TYPE_25__** %2, align 8
  %165 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %164, i32 0, i32 1
  %166 = load %struct.TYPE_26__*, %struct.TYPE_26__** %165, align 8
  %167 = load %struct.TYPE_25__*, %struct.TYPE_25__** %2, align 8
  %168 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %167, i32 0, i32 2
  %169 = load i32*, i32** %168, align 8
  %170 = getelementptr inbounds i32, i32* %169, i64 1
  %171 = load i32, i32* %170, align 4
  %172 = call i32 @signalModifiedKey(%struct.TYPE_26__* %166, i32 %171)
  %173 = load i32, i32* @NOTIFY_STRING, align 4
  %174 = load %struct.TYPE_25__*, %struct.TYPE_25__** %2, align 8
  %175 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %174, i32 0, i32 2
  %176 = load i32*, i32** %175, align 8
  %177 = getelementptr inbounds i32, i32* %176, i64 1
  %178 = load i32, i32* %177, align 4
  %179 = load %struct.TYPE_25__*, %struct.TYPE_25__** %2, align 8
  %180 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %179, i32 0, i32 1
  %181 = load %struct.TYPE_26__*, %struct.TYPE_26__** %180, align 8
  %182 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %181, i32 0, i32 0
  %183 = load i32, i32* %182, align 4
  %184 = call i32 @notifyKeyspaceEvent(i32 %173, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 %178, i32 %183)
  %185 = load i32, i32* getelementptr inbounds (%struct.TYPE_28__, %struct.TYPE_28__* @server, i32 0, i32 0), align 4
  %186 = add nsw i32 %185, 1
  store i32 %186, i32* getelementptr inbounds (%struct.TYPE_28__, %struct.TYPE_28__* @server, i32 0, i32 0), align 4
  %187 = load %struct.TYPE_25__*, %struct.TYPE_25__** %2, align 8
  %188 = load i32, i32* getelementptr inbounds (%struct.TYPE_27__, %struct.TYPE_27__* @shared, i32 0, i32 0), align 4
  %189 = call i32 @addReply(%struct.TYPE_25__* %187, i32 %188)
  store i32 0, i32* %9, align 4
  br label %190

190:                                              ; preds = %158, %112, %60, %45
  %191 = load i8*, i8** %3, align 8
  call void @llvm.stackrestore(i8* %191)
  %192 = load i32, i32* %9, align 4
  switch i32 %192, label %194 [
    i32 0, label %193
    i32 1, label %193
  ]

193:                                              ; preds = %190, %190
  ret void

194:                                              ; preds = %190
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @memset(i64*, i32, i32) #2

declare dso_local %struct.TYPE_24__* @lookupKeyRead(%struct.TYPE_26__*, i32) #2

declare dso_local i64 @isHLLObjectOrReply(%struct.TYPE_25__*, %struct.TYPE_24__*) #2

declare dso_local i64 @hllMerge(i64*, %struct.TYPE_24__*) #2

declare dso_local i32 @addReplySds(%struct.TYPE_25__*, i32) #2

declare dso_local i32 @sdsnew(i32) #2

declare dso_local %struct.TYPE_24__* @lookupKeyWrite(%struct.TYPE_26__*, i32) #2

declare dso_local %struct.TYPE_24__* @createHLLObject(...) #2

declare dso_local i32 @dbAdd(%struct.TYPE_26__*, i32, %struct.TYPE_24__*) #2

declare dso_local %struct.TYPE_24__* @dbUnshareStringValue(%struct.TYPE_26__*, i32, %struct.TYPE_24__*) #2

declare dso_local i64 @hllSparseToDense(%struct.TYPE_24__*) #2

declare dso_local i32 @hllDenseSet(i32, i32, i64) #2

declare dso_local i32 @hllSparseSet(%struct.TYPE_24__*, i32, i64) #2

declare dso_local i32 @HLL_INVALIDATE_CACHE(%struct.hllhdr*) #2

declare dso_local i32 @signalModifiedKey(%struct.TYPE_26__*, i32) #2

declare dso_local i32 @notifyKeyspaceEvent(i32, i8*, i32, i32) #2

declare dso_local i32 @addReply(%struct.TYPE_25__*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
