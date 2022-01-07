; ModuleID = '/home/carl/AnghaBench/redis/src/extr_bitops.c_bitposCommand.c'
source_filename = "/home/carl/AnghaBench/redis/src/extr_bitops.c_bitposCommand.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32 }
%struct.TYPE_9__ = type { i32, i32*, i32 }

@LONG_STR_SIZE = common dso_local global i32 0, align 4
@C_OK = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [33 x i8] c"The bit argument must be 1 or 0.\00", align 1
@OBJ_STRING = common dso_local global i32 0, align 4
@shared = common dso_local global %struct.TYPE_10__ zeroinitializer, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bitposCommand(%struct.TYPE_9__* %0) #0 {
  %2 = alloca %struct.TYPE_9__*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %2, align 8
  %15 = load i32, i32* @LONG_STR_SIZE, align 4
  %16 = zext i32 %15 to i64
  %17 = call i8* @llvm.stacksave()
  store i8* %17, i8** %9, align 8
  %18 = alloca i8, i64 %16, align 16
  store i64 %16, i64* %10, align 8
  store i32 0, i32* %11, align 4
  %19 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %20 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %21 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %20, i32 0, i32 1
  %22 = load i32*, i32** %21, align 8
  %23 = getelementptr inbounds i32, i32* %22, i64 2
  %24 = load i32, i32* %23, align 4
  %25 = call i64 @getLongFromObjectOrReply(%struct.TYPE_9__* %19, i32 %24, i64* %4, i32* null)
  %26 = load i64, i64* @C_OK, align 8
  %27 = icmp ne i64 %25, %26
  br i1 %27, label %28, label %29

28:                                               ; preds = %1
  store i32 1, i32* %12, align 4
  br label %194

29:                                               ; preds = %1
  %30 = load i64, i64* %4, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %38

32:                                               ; preds = %29
  %33 = load i64, i64* %4, align 8
  %34 = icmp ne i64 %33, 1
  br i1 %34, label %35, label %38

35:                                               ; preds = %32
  %36 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %37 = call i32 @addReplyError(%struct.TYPE_9__* %36, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  store i32 1, i32* %12, align 4
  br label %194

38:                                               ; preds = %32, %29
  %39 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %40 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 8
  %42 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %43 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %42, i32 0, i32 1
  %44 = load i32*, i32** %43, align 8
  %45 = getelementptr inbounds i32, i32* %44, i64 1
  %46 = load i32, i32* %45, align 4
  %47 = call i32* @lookupKeyRead(i32 %41, i32 %46)
  store i32* %47, i32** %3, align 8
  %48 = icmp eq i32* %47, null
  br i1 %48, label %49, label %57

49:                                               ; preds = %38
  %50 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %51 = load i64, i64* %4, align 8
  %52 = icmp ne i64 %51, 0
  %53 = zext i1 %52 to i64
  %54 = select i1 %52, i32 -1, i32 0
  %55 = sext i32 %54 to i64
  %56 = call i32 @addReplyLongLong(%struct.TYPE_9__* %50, i64 %55)
  store i32 1, i32* %12, align 4
  br label %194

57:                                               ; preds = %38
  %58 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %59 = load i32*, i32** %3, align 8
  %60 = load i32, i32* @OBJ_STRING, align 4
  %61 = call i64 @checkType(%struct.TYPE_9__* %58, i32* %59, i32 %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %64

63:                                               ; preds = %57
  store i32 1, i32* %12, align 4
  br label %194

64:                                               ; preds = %57
  %65 = load i32*, i32** %3, align 8
  %66 = call i8* @getObjectReadOnlyString(i32* %65, i64* %7, i8* %18)
  store i8* %66, i8** %8, align 8
  %67 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %68 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = icmp eq i32 %69, 4
  br i1 %70, label %76, label %71

71:                                               ; preds = %64
  %72 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %73 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = icmp eq i32 %74, 5
  br i1 %75, label %76, label %137

76:                                               ; preds = %71, %64
  %77 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %78 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %79 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %78, i32 0, i32 1
  %80 = load i32*, i32** %79, align 8
  %81 = getelementptr inbounds i32, i32* %80, i64 3
  %82 = load i32, i32* %81, align 4
  %83 = call i64 @getLongFromObjectOrReply(%struct.TYPE_9__* %77, i32 %82, i64* %5, i32* null)
  %84 = load i64, i64* @C_OK, align 8
  %85 = icmp ne i64 %83, %84
  br i1 %85, label %86, label %87

86:                                               ; preds = %76
  store i32 1, i32* %12, align 4
  br label %194

87:                                               ; preds = %76
  %88 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %89 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = icmp eq i32 %90, 5
  br i1 %91, label %92, label %104

92:                                               ; preds = %87
  %93 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %94 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %95 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %94, i32 0, i32 1
  %96 = load i32*, i32** %95, align 8
  %97 = getelementptr inbounds i32, i32* %96, i64 4
  %98 = load i32, i32* %97, align 4
  %99 = call i64 @getLongFromObjectOrReply(%struct.TYPE_9__* %93, i32 %98, i64* %6, i32* null)
  %100 = load i64, i64* @C_OK, align 8
  %101 = icmp ne i64 %99, %100
  br i1 %101, label %102, label %103

102:                                              ; preds = %92
  store i32 1, i32* %12, align 4
  br label %194

103:                                              ; preds = %92
  store i32 1, i32* %11, align 4
  br label %107

104:                                              ; preds = %87
  %105 = load i64, i64* %7, align 8
  %106 = sub nsw i64 %105, 1
  store i64 %106, i64* %6, align 8
  br label %107

107:                                              ; preds = %104, %103
  %108 = load i64, i64* %5, align 8
  %109 = icmp slt i64 %108, 0
  br i1 %109, label %110, label %114

110:                                              ; preds = %107
  %111 = load i64, i64* %7, align 8
  %112 = load i64, i64* %5, align 8
  %113 = add nsw i64 %111, %112
  store i64 %113, i64* %5, align 8
  br label %114

114:                                              ; preds = %110, %107
  %115 = load i64, i64* %6, align 8
  %116 = icmp slt i64 %115, 0
  br i1 %116, label %117, label %121

117:                                              ; preds = %114
  %118 = load i64, i64* %7, align 8
  %119 = load i64, i64* %6, align 8
  %120 = add nsw i64 %118, %119
  store i64 %120, i64* %6, align 8
  br label %121

121:                                              ; preds = %117, %114
  %122 = load i64, i64* %5, align 8
  %123 = icmp slt i64 %122, 0
  br i1 %123, label %124, label %125

124:                                              ; preds = %121
  store i64 0, i64* %5, align 8
  br label %125

125:                                              ; preds = %124, %121
  %126 = load i64, i64* %6, align 8
  %127 = icmp slt i64 %126, 0
  br i1 %127, label %128, label %129

128:                                              ; preds = %125
  store i64 0, i64* %6, align 8
  br label %129

129:                                              ; preds = %128, %125
  %130 = load i64, i64* %6, align 8
  %131 = load i64, i64* %7, align 8
  %132 = icmp sge i64 %130, %131
  br i1 %132, label %133, label %136

133:                                              ; preds = %129
  %134 = load i64, i64* %7, align 8
  %135 = sub nsw i64 %134, 1
  store i64 %135, i64* %6, align 8
  br label %136

136:                                              ; preds = %133, %129
  br label %150

137:                                              ; preds = %71
  %138 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %139 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 8
  %141 = icmp eq i32 %140, 3
  br i1 %141, label %142, label %145

142:                                              ; preds = %137
  store i64 0, i64* %5, align 8
  %143 = load i64, i64* %7, align 8
  %144 = sub nsw i64 %143, 1
  store i64 %144, i64* %6, align 8
  br label %149

145:                                              ; preds = %137
  %146 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %147 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @shared, i32 0, i32 0), align 4
  %148 = call i32 @addReply(%struct.TYPE_9__* %146, i32 %147)
  store i32 1, i32* %12, align 4
  br label %194

149:                                              ; preds = %142
  br label %150

150:                                              ; preds = %149, %136
  %151 = load i64, i64* %5, align 8
  %152 = load i64, i64* %6, align 8
  %153 = icmp sgt i64 %151, %152
  br i1 %153, label %154, label %157

154:                                              ; preds = %150
  %155 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %156 = call i32 @addReplyLongLong(%struct.TYPE_9__* %155, i64 -1)
  br label %193

157:                                              ; preds = %150
  %158 = load i64, i64* %6, align 8
  %159 = load i64, i64* %5, align 8
  %160 = sub nsw i64 %158, %159
  %161 = add nsw i64 %160, 1
  store i64 %161, i64* %13, align 8
  %162 = load i8*, i8** %8, align 8
  %163 = load i64, i64* %5, align 8
  %164 = getelementptr inbounds i8, i8* %162, i64 %163
  %165 = load i64, i64* %13, align 8
  %166 = load i64, i64* %4, align 8
  %167 = call i64 @redisBitpos(i8* %164, i64 %165, i64 %166)
  store i64 %167, i64* %14, align 8
  %168 = load i32, i32* %11, align 4
  %169 = icmp ne i32 %168, 0
  br i1 %169, label %170, label %181

170:                                              ; preds = %157
  %171 = load i64, i64* %4, align 8
  %172 = icmp eq i64 %171, 0
  br i1 %172, label %173, label %181

173:                                              ; preds = %170
  %174 = load i64, i64* %14, align 8
  %175 = load i64, i64* %13, align 8
  %176 = mul nsw i64 %175, 8
  %177 = icmp eq i64 %174, %176
  br i1 %177, label %178, label %181

178:                                              ; preds = %173
  %179 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %180 = call i32 @addReplyLongLong(%struct.TYPE_9__* %179, i64 -1)
  store i32 1, i32* %12, align 4
  br label %194

181:                                              ; preds = %173, %170, %157
  %182 = load i64, i64* %14, align 8
  %183 = icmp ne i64 %182, -1
  br i1 %183, label %184, label %189

184:                                              ; preds = %181
  %185 = load i64, i64* %5, align 8
  %186 = mul nsw i64 %185, 8
  %187 = load i64, i64* %14, align 8
  %188 = add nsw i64 %187, %186
  store i64 %188, i64* %14, align 8
  br label %189

189:                                              ; preds = %184, %181
  %190 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %191 = load i64, i64* %14, align 8
  %192 = call i32 @addReplyLongLong(%struct.TYPE_9__* %190, i64 %191)
  br label %193

193:                                              ; preds = %189, %154
  store i32 0, i32* %12, align 4
  br label %194

194:                                              ; preds = %193, %178, %145, %102, %86, %63, %49, %35, %28
  %195 = load i8*, i8** %9, align 8
  call void @llvm.stackrestore(i8* %195)
  %196 = load i32, i32* %12, align 4
  switch i32 %196, label %198 [
    i32 0, label %197
    i32 1, label %197
  ]

197:                                              ; preds = %194, %194
  ret void

198:                                              ; preds = %194
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @getLongFromObjectOrReply(%struct.TYPE_9__*, i32, i64*, i32*) #2

declare dso_local i32 @addReplyError(%struct.TYPE_9__*, i8*) #2

declare dso_local i32* @lookupKeyRead(i32, i32) #2

declare dso_local i32 @addReplyLongLong(%struct.TYPE_9__*, i64) #2

declare dso_local i64 @checkType(%struct.TYPE_9__*, i32*, i32) #2

declare dso_local i8* @getObjectReadOnlyString(i32*, i64*, i8*) #2

declare dso_local i32 @addReply(%struct.TYPE_9__*, i32) #2

declare dso_local i64 @redisBitpos(i8*, i64, i64) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
