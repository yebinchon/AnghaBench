; ModuleID = '/home/carl/AnghaBench/redis/src/extr_t_stream.c_streamReplyWithRange.c'
source_filename = "/home/carl/AnghaBench/redis/src/extr_t_stream.c_streamReplyWithRange.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_20__ = type { i32, i32, %struct.TYPE_21__* }
%struct.TYPE_21__ = type { i32 }
%struct.TYPE_22__ = type { i32, i32 }
%struct.TYPE_19__ = type { i32, i32 }

@STREAM_RWR_HISTORY = common dso_local global i32 0, align 4
@STREAM_RWR_RAWENTRIES = common dso_local global i32 0, align 4
@STREAM_RWR_NOACK = common dso_local global i32 0, align 4
@raxNotFound = common dso_local global %struct.TYPE_20__* null, align 8
@.str = private unnamed_addr constant [43 x i8] c"NACK half-created. Should not be possible.\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @streamReplyWithRange(i32* %0, i32* %1, i32* %2, i32* %3, i64 %4, i32 %5, %struct.TYPE_22__* %6, %struct.TYPE_21__* %7, i32 %8, %struct.TYPE_19__* %9) #0 {
  %11 = alloca i64, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  %18 = alloca %struct.TYPE_22__*, align 8
  %19 = alloca %struct.TYPE_21__*, align 8
  %20 = alloca i32, align 4
  %21 = alloca %struct.TYPE_19__*, align 8
  %22 = alloca i8*, align 8
  %23 = alloca i64, align 8
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i8*, align 8
  %29 = alloca i8*, align 8
  %30 = alloca i32, align 4
  %31 = alloca i32, align 4
  %32 = alloca [4 x i8], align 1
  %33 = alloca %struct.TYPE_20__*, align 8
  %34 = alloca i32, align 4
  %35 = alloca i32, align 4
  %36 = alloca i32*, align 8
  store i32* %0, i32** %12, align 8
  store i32* %1, i32** %13, align 8
  store i32* %2, i32** %14, align 8
  store i32* %3, i32** %15, align 8
  store i64 %4, i64* %16, align 8
  store i32 %5, i32* %17, align 4
  store %struct.TYPE_22__* %6, %struct.TYPE_22__** %18, align 8
  store %struct.TYPE_21__* %7, %struct.TYPE_21__** %19, align 8
  store i32 %8, i32* %20, align 4
  store %struct.TYPE_19__* %9, %struct.TYPE_19__** %21, align 8
  store i8* null, i8** %22, align 8
  store i64 0, i64* %23, align 8
  store i32 0, i32* %27, align 4
  %37 = load %struct.TYPE_22__*, %struct.TYPE_22__** %18, align 8
  %38 = icmp ne %struct.TYPE_22__* %37, null
  br i1 %38, label %39, label %52

39:                                               ; preds = %10
  %40 = load i32, i32* %20, align 4
  %41 = load i32, i32* @STREAM_RWR_HISTORY, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %52

44:                                               ; preds = %39
  %45 = load i32*, i32** %12, align 8
  %46 = load i32*, i32** %13, align 8
  %47 = load i32*, i32** %14, align 8
  %48 = load i32*, i32** %15, align 8
  %49 = load i64, i64* %16, align 8
  %50 = load %struct.TYPE_21__*, %struct.TYPE_21__** %19, align 8
  %51 = call i64 @streamReplyWithRangeFromConsumerPEL(i32* %45, i32* %46, i32* %47, i32* %48, i64 %49, %struct.TYPE_21__* %50)
  store i64 %51, i64* %11, align 8
  br label %228

52:                                               ; preds = %39, %10
  %53 = load i32, i32* %20, align 4
  %54 = load i32, i32* @STREAM_RWR_RAWENTRIES, align 4
  %55 = and i32 %53, %54
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %60, label %57

57:                                               ; preds = %52
  %58 = load i32*, i32** %12, align 8
  %59 = call i8* @addReplyDeferredLen(i32* %58)
  store i8* %59, i8** %22, align 8
  br label %60

60:                                               ; preds = %57, %52
  %61 = load i32*, i32** %13, align 8
  %62 = load i32*, i32** %14, align 8
  %63 = load i32*, i32** %15, align 8
  %64 = load i32, i32* %17, align 4
  %65 = call i32 @streamIteratorStart(i32* %24, i32* %61, i32* %62, i32* %63, i32 %64)
  br label %66

66:                                               ; preds = %216, %60
  %67 = call i64 @streamIteratorGetID(i32* %24, i32* %26, i32* %25)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %217

69:                                               ; preds = %66
  %70 = load %struct.TYPE_22__*, %struct.TYPE_22__** %18, align 8
  %71 = icmp ne %struct.TYPE_22__* %70, null
  br i1 %71, label %72, label %81

72:                                               ; preds = %69
  %73 = load %struct.TYPE_22__*, %struct.TYPE_22__** %18, align 8
  %74 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %73, i32 0, i32 1
  %75 = call i64 @streamCompareID(i32* %26, i32* %74)
  %76 = icmp sgt i64 %75, 0
  br i1 %76, label %77, label %81

77:                                               ; preds = %72
  %78 = load i32, i32* %26, align 4
  %79 = load %struct.TYPE_22__*, %struct.TYPE_22__** %18, align 8
  %80 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %79, i32 0, i32 1
  store i32 %78, i32* %80, align 4
  store i32 1, i32* %27, align 4
  br label %81

81:                                               ; preds = %77, %72, %69
  %82 = load i32*, i32** %12, align 8
  %83 = call i32 @addReplyArrayLen(i32* %82, i32 2)
  %84 = load i32*, i32** %12, align 8
  %85 = call i32 @addReplyStreamID(i32* %84, i32* %26)
  %86 = load i32*, i32** %12, align 8
  %87 = load i32, i32* %25, align 4
  %88 = call i32 @addReplyMapLen(i32* %86, i32 %87)
  br label %89

89:                                               ; preds = %93, %81
  %90 = load i32, i32* %25, align 4
  %91 = add nsw i32 %90, -1
  store i32 %91, i32* %25, align 4
  %92 = icmp ne i32 %90, 0
  br i1 %92, label %93, label %103

93:                                               ; preds = %89
  %94 = call i32 @streamIteratorGetField(i32* %24, i8** %28, i8** %29, i32* %30, i32* %31)
  %95 = load i32*, i32** %12, align 8
  %96 = load i8*, i8** %28, align 8
  %97 = load i32, i32* %30, align 4
  %98 = call i32 @addReplyBulkCBuffer(i32* %95, i8* %96, i32 %97)
  %99 = load i32*, i32** %12, align 8
  %100 = load i8*, i8** %29, align 8
  %101 = load i32, i32* %31, align 4
  %102 = call i32 @addReplyBulkCBuffer(i32* %99, i8* %100, i32 %101)
  br label %89

103:                                              ; preds = %89
  %104 = load %struct.TYPE_22__*, %struct.TYPE_22__** %18, align 8
  %105 = icmp ne %struct.TYPE_22__* %104, null
  br i1 %105, label %106, label %192

106:                                              ; preds = %103
  %107 = load i32, i32* %20, align 4
  %108 = load i32, i32* @STREAM_RWR_NOACK, align 4
  %109 = and i32 %107, %108
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %192, label %111

111:                                              ; preds = %106
  %112 = getelementptr inbounds [4 x i8], [4 x i8]* %32, i64 0, i64 0
  %113 = call i32 @streamEncodeID(i8* %112, i32* %26)
  %114 = load %struct.TYPE_21__*, %struct.TYPE_21__** %19, align 8
  %115 = call %struct.TYPE_20__* @streamCreateNACK(%struct.TYPE_21__* %114)
  store %struct.TYPE_20__* %115, %struct.TYPE_20__** %33, align 8
  %116 = load %struct.TYPE_22__*, %struct.TYPE_22__** %18, align 8
  %117 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 4
  %119 = getelementptr inbounds [4 x i8], [4 x i8]* %32, i64 0, i64 0
  %120 = load %struct.TYPE_20__*, %struct.TYPE_20__** %33, align 8
  %121 = call i32 @raxTryInsert(i32 %118, i8* %119, i32 4, %struct.TYPE_20__* %120, i32* null)
  store i32 %121, i32* %34, align 4
  %122 = load %struct.TYPE_21__*, %struct.TYPE_21__** %19, align 8
  %123 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 4
  %125 = getelementptr inbounds [4 x i8], [4 x i8]* %32, i64 0, i64 0
  %126 = load %struct.TYPE_20__*, %struct.TYPE_20__** %33, align 8
  %127 = call i32 @raxTryInsert(i32 %124, i8* %125, i32 4, %struct.TYPE_20__* %126, i32* null)
  store i32 %127, i32* %35, align 4
  %128 = load i32, i32* %34, align 4
  %129 = icmp eq i32 %128, 0
  br i1 %129, label %130, label %164

130:                                              ; preds = %111
  %131 = load %struct.TYPE_20__*, %struct.TYPE_20__** %33, align 8
  %132 = call i32 @streamFreeNACK(%struct.TYPE_20__* %131)
  %133 = load %struct.TYPE_22__*, %struct.TYPE_22__** %18, align 8
  %134 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 4
  %136 = getelementptr inbounds [4 x i8], [4 x i8]* %32, i64 0, i64 0
  %137 = call %struct.TYPE_20__* @raxFind(i32 %135, i8* %136, i32 4)
  store %struct.TYPE_20__* %137, %struct.TYPE_20__** %33, align 8
  %138 = load %struct.TYPE_20__*, %struct.TYPE_20__** %33, align 8
  %139 = load %struct.TYPE_20__*, %struct.TYPE_20__** @raxNotFound, align 8
  %140 = icmp ne %struct.TYPE_20__* %138, %139
  %141 = zext i1 %140 to i32
  %142 = call i32 @serverAssert(i32 %141)
  %143 = load %struct.TYPE_20__*, %struct.TYPE_20__** %33, align 8
  %144 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %143, i32 0, i32 2
  %145 = load %struct.TYPE_21__*, %struct.TYPE_21__** %144, align 8
  %146 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %145, i32 0, i32 0
  %147 = load i32, i32* %146, align 4
  %148 = getelementptr inbounds [4 x i8], [4 x i8]* %32, i64 0, i64 0
  %149 = call i32 @raxRemove(i32 %147, i8* %148, i32 4, i32* null)
  %150 = load %struct.TYPE_21__*, %struct.TYPE_21__** %19, align 8
  %151 = load %struct.TYPE_20__*, %struct.TYPE_20__** %33, align 8
  %152 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %151, i32 0, i32 2
  store %struct.TYPE_21__* %150, %struct.TYPE_21__** %152, align 8
  %153 = call i32 (...) @mstime()
  %154 = load %struct.TYPE_20__*, %struct.TYPE_20__** %33, align 8
  %155 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %154, i32 0, i32 1
  store i32 %153, i32* %155, align 4
  %156 = load %struct.TYPE_20__*, %struct.TYPE_20__** %33, align 8
  %157 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %156, i32 0, i32 0
  store i32 1, i32* %157, align 8
  %158 = load %struct.TYPE_21__*, %struct.TYPE_21__** %19, align 8
  %159 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %158, i32 0, i32 0
  %160 = load i32, i32* %159, align 4
  %161 = getelementptr inbounds [4 x i8], [4 x i8]* %32, i64 0, i64 0
  %162 = load %struct.TYPE_20__*, %struct.TYPE_20__** %33, align 8
  %163 = call i32 @raxInsert(i32 %160, i8* %161, i32 4, %struct.TYPE_20__* %162, i32* null)
  br label %173

164:                                              ; preds = %111
  %165 = load i32, i32* %34, align 4
  %166 = icmp eq i32 %165, 1
  br i1 %166, label %167, label %172

167:                                              ; preds = %164
  %168 = load i32, i32* %35, align 4
  %169 = icmp eq i32 %168, 0
  br i1 %169, label %170, label %172

170:                                              ; preds = %167
  %171 = call i32 @serverPanic(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0))
  br label %172

172:                                              ; preds = %170, %167, %164
  br label %173

173:                                              ; preds = %172, %130
  %174 = load %struct.TYPE_19__*, %struct.TYPE_19__** %21, align 8
  %175 = icmp ne %struct.TYPE_19__* %174, null
  br i1 %175, label %176, label %191

176:                                              ; preds = %173
  %177 = call i32* @createObjectFromStreamID(i32* %26)
  store i32* %177, i32** %36, align 8
  %178 = load i32*, i32** %12, align 8
  %179 = load %struct.TYPE_19__*, %struct.TYPE_19__** %21, align 8
  %180 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %179, i32 0, i32 1
  %181 = load i32, i32* %180, align 4
  %182 = load %struct.TYPE_22__*, %struct.TYPE_22__** %18, align 8
  %183 = load %struct.TYPE_19__*, %struct.TYPE_19__** %21, align 8
  %184 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %183, i32 0, i32 0
  %185 = load i32, i32* %184, align 4
  %186 = load i32*, i32** %36, align 8
  %187 = load %struct.TYPE_20__*, %struct.TYPE_20__** %33, align 8
  %188 = call i32 @streamPropagateXCLAIM(i32* %178, i32 %181, %struct.TYPE_22__* %182, i32 %185, i32* %186, %struct.TYPE_20__* %187)
  %189 = load i32*, i32** %36, align 8
  %190 = call i32 @decrRefCount(i32* %189)
  br label %191

191:                                              ; preds = %176, %173
  br label %206

192:                                              ; preds = %106, %103
  %193 = load i32, i32* %27, align 4
  %194 = icmp ne i32 %193, 0
  br i1 %194, label %195, label %205

195:                                              ; preds = %192
  %196 = load i32*, i32** %12, align 8
  %197 = load %struct.TYPE_19__*, %struct.TYPE_19__** %21, align 8
  %198 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %197, i32 0, i32 1
  %199 = load i32, i32* %198, align 4
  %200 = load %struct.TYPE_22__*, %struct.TYPE_22__** %18, align 8
  %201 = load %struct.TYPE_19__*, %struct.TYPE_19__** %21, align 8
  %202 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %201, i32 0, i32 0
  %203 = load i32, i32* %202, align 4
  %204 = call i32 @streamPropagateGroupID(i32* %196, i32 %199, %struct.TYPE_22__* %200, i32 %203)
  br label %205

205:                                              ; preds = %195, %192
  br label %206

206:                                              ; preds = %205, %191
  %207 = load i64, i64* %23, align 8
  %208 = add i64 %207, 1
  store i64 %208, i64* %23, align 8
  %209 = load i64, i64* %16, align 8
  %210 = icmp ne i64 %209, 0
  br i1 %210, label %211, label %216

211:                                              ; preds = %206
  %212 = load i64, i64* %16, align 8
  %213 = load i64, i64* %23, align 8
  %214 = icmp eq i64 %212, %213
  br i1 %214, label %215, label %216

215:                                              ; preds = %211
  br label %217

216:                                              ; preds = %211, %206
  br label %66

217:                                              ; preds = %215, %66
  %218 = call i32 @streamIteratorStop(i32* %24)
  %219 = load i8*, i8** %22, align 8
  %220 = icmp ne i8* %219, null
  br i1 %220, label %221, label %226

221:                                              ; preds = %217
  %222 = load i32*, i32** %12, align 8
  %223 = load i8*, i8** %22, align 8
  %224 = load i64, i64* %23, align 8
  %225 = call i32 @setDeferredArrayLen(i32* %222, i8* %223, i64 %224)
  br label %226

226:                                              ; preds = %221, %217
  %227 = load i64, i64* %23, align 8
  store i64 %227, i64* %11, align 8
  br label %228

228:                                              ; preds = %226, %44
  %229 = load i64, i64* %11, align 8
  ret i64 %229
}

declare dso_local i64 @streamReplyWithRangeFromConsumerPEL(i32*, i32*, i32*, i32*, i64, %struct.TYPE_21__*) #1

declare dso_local i8* @addReplyDeferredLen(i32*) #1

declare dso_local i32 @streamIteratorStart(i32*, i32*, i32*, i32*, i32) #1

declare dso_local i64 @streamIteratorGetID(i32*, i32*, i32*) #1

declare dso_local i64 @streamCompareID(i32*, i32*) #1

declare dso_local i32 @addReplyArrayLen(i32*, i32) #1

declare dso_local i32 @addReplyStreamID(i32*, i32*) #1

declare dso_local i32 @addReplyMapLen(i32*, i32) #1

declare dso_local i32 @streamIteratorGetField(i32*, i8**, i8**, i32*, i32*) #1

declare dso_local i32 @addReplyBulkCBuffer(i32*, i8*, i32) #1

declare dso_local i32 @streamEncodeID(i8*, i32*) #1

declare dso_local %struct.TYPE_20__* @streamCreateNACK(%struct.TYPE_21__*) #1

declare dso_local i32 @raxTryInsert(i32, i8*, i32, %struct.TYPE_20__*, i32*) #1

declare dso_local i32 @streamFreeNACK(%struct.TYPE_20__*) #1

declare dso_local %struct.TYPE_20__* @raxFind(i32, i8*, i32) #1

declare dso_local i32 @serverAssert(i32) #1

declare dso_local i32 @raxRemove(i32, i8*, i32, i32*) #1

declare dso_local i32 @mstime(...) #1

declare dso_local i32 @raxInsert(i32, i8*, i32, %struct.TYPE_20__*, i32*) #1

declare dso_local i32 @serverPanic(i8*) #1

declare dso_local i32* @createObjectFromStreamID(i32*) #1

declare dso_local i32 @streamPropagateXCLAIM(i32*, i32, %struct.TYPE_22__*, i32, i32*, %struct.TYPE_20__*) #1

declare dso_local i32 @decrRefCount(i32*) #1

declare dso_local i32 @streamPropagateGroupID(i32*, i32, %struct.TYPE_22__*, i32) #1

declare dso_local i32 @streamIteratorStop(i32*) #1

declare dso_local i32 @setDeferredArrayLen(i32*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
