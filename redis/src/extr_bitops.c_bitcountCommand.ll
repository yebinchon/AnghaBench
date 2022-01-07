; ModuleID = '/home/carl/AnghaBench/redis/src/extr_bitops.c_bitcountCommand.c'
source_filename = "/home/carl/AnghaBench/redis/src/extr_bitops.c_bitcountCommand.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, i32 }
%struct.TYPE_9__ = type { i32, i32* }

@LONG_STR_SIZE = common dso_local global i32 0, align 4
@shared = common dso_local global %struct.TYPE_10__ zeroinitializer, align 4
@OBJ_STRING = common dso_local global i32 0, align 4
@C_OK = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bitcountCommand(%struct.TYPE_9__* %0) #0 {
  %2 = alloca %struct.TYPE_9__*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %2, align 8
  %12 = load i32, i32* @LONG_STR_SIZE, align 4
  %13 = zext i32 %12 to i64
  %14 = call i8* @llvm.stacksave()
  store i8* %14, i8** %8, align 8
  %15 = alloca i8, i64 %13, align 16
  store i64 %13, i64* %9, align 8
  %16 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %17 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %18 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %17, i32 0, i32 1
  %19 = load i32*, i32** %18, align 8
  %20 = getelementptr inbounds i32, i32* %19, i64 1
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @shared, i32 0, i32 0), align 4
  %23 = call i32* @lookupKeyReadOrReply(%struct.TYPE_9__* %16, i32 %21, i32 %22)
  store i32* %23, i32** %3, align 8
  %24 = icmp eq i32* %23, null
  br i1 %24, label %31, label %25

25:                                               ; preds = %1
  %26 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %27 = load i32*, i32** %3, align 8
  %28 = load i32, i32* @OBJ_STRING, align 4
  %29 = call i64 @checkType(%struct.TYPE_9__* %26, i32* %27, i32 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %25, %1
  store i32 1, i32* %10, align 4
  br label %139

32:                                               ; preds = %25
  %33 = load i32*, i32** %3, align 8
  %34 = call i8* @getObjectReadOnlyString(i32* %33, i64* %6, i8* %15)
  store i8* %34, i8** %7, align 8
  %35 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %36 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = icmp eq i32 %37, 4
  br i1 %38, label %39, label %105

39:                                               ; preds = %32
  %40 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %41 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %42 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %41, i32 0, i32 1
  %43 = load i32*, i32** %42, align 8
  %44 = getelementptr inbounds i32, i32* %43, i64 2
  %45 = load i32, i32* %44, align 4
  %46 = call i64 @getLongFromObjectOrReply(%struct.TYPE_9__* %40, i32 %45, i64* %4, i32* null)
  %47 = load i64, i64* @C_OK, align 8
  %48 = icmp ne i64 %46, %47
  br i1 %48, label %49, label %50

49:                                               ; preds = %39
  store i32 1, i32* %10, align 4
  br label %139

50:                                               ; preds = %39
  %51 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %52 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %53 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %52, i32 0, i32 1
  %54 = load i32*, i32** %53, align 8
  %55 = getelementptr inbounds i32, i32* %54, i64 3
  %56 = load i32, i32* %55, align 4
  %57 = call i64 @getLongFromObjectOrReply(%struct.TYPE_9__* %51, i32 %56, i64* %5, i32* null)
  %58 = load i64, i64* @C_OK, align 8
  %59 = icmp ne i64 %57, %58
  br i1 %59, label %60, label %61

60:                                               ; preds = %50
  store i32 1, i32* %10, align 4
  br label %139

61:                                               ; preds = %50
  %62 = load i64, i64* %4, align 8
  %63 = icmp slt i64 %62, 0
  br i1 %63, label %64, label %75

64:                                               ; preds = %61
  %65 = load i64, i64* %5, align 8
  %66 = icmp slt i64 %65, 0
  br i1 %66, label %67, label %75

67:                                               ; preds = %64
  %68 = load i64, i64* %4, align 8
  %69 = load i64, i64* %5, align 8
  %70 = icmp sgt i64 %68, %69
  br i1 %70, label %71, label %75

71:                                               ; preds = %67
  %72 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %73 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @shared, i32 0, i32 0), align 4
  %74 = call i32 @addReply(%struct.TYPE_9__* %72, i32 %73)
  store i32 1, i32* %10, align 4
  br label %139

75:                                               ; preds = %67, %64, %61
  %76 = load i64, i64* %4, align 8
  %77 = icmp slt i64 %76, 0
  br i1 %77, label %78, label %82

78:                                               ; preds = %75
  %79 = load i64, i64* %6, align 8
  %80 = load i64, i64* %4, align 8
  %81 = add nsw i64 %79, %80
  store i64 %81, i64* %4, align 8
  br label %82

82:                                               ; preds = %78, %75
  %83 = load i64, i64* %5, align 8
  %84 = icmp slt i64 %83, 0
  br i1 %84, label %85, label %89

85:                                               ; preds = %82
  %86 = load i64, i64* %6, align 8
  %87 = load i64, i64* %5, align 8
  %88 = add nsw i64 %86, %87
  store i64 %88, i64* %5, align 8
  br label %89

89:                                               ; preds = %85, %82
  %90 = load i64, i64* %4, align 8
  %91 = icmp slt i64 %90, 0
  br i1 %91, label %92, label %93

92:                                               ; preds = %89
  store i64 0, i64* %4, align 8
  br label %93

93:                                               ; preds = %92, %89
  %94 = load i64, i64* %5, align 8
  %95 = icmp slt i64 %94, 0
  br i1 %95, label %96, label %97

96:                                               ; preds = %93
  store i64 0, i64* %5, align 8
  br label %97

97:                                               ; preds = %96, %93
  %98 = load i64, i64* %5, align 8
  %99 = load i64, i64* %6, align 8
  %100 = icmp sge i64 %98, %99
  br i1 %100, label %101, label %104

101:                                              ; preds = %97
  %102 = load i64, i64* %6, align 8
  %103 = sub nsw i64 %102, 1
  store i64 %103, i64* %5, align 8
  br label %104

104:                                              ; preds = %101, %97
  br label %118

105:                                              ; preds = %32
  %106 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %107 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 8
  %109 = icmp eq i32 %108, 2
  br i1 %109, label %110, label %113

110:                                              ; preds = %105
  store i64 0, i64* %4, align 8
  %111 = load i64, i64* %6, align 8
  %112 = sub nsw i64 %111, 1
  store i64 %112, i64* %5, align 8
  br label %117

113:                                              ; preds = %105
  %114 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %115 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @shared, i32 0, i32 1), align 4
  %116 = call i32 @addReply(%struct.TYPE_9__* %114, i32 %115)
  store i32 1, i32* %10, align 4
  br label %139

117:                                              ; preds = %110
  br label %118

118:                                              ; preds = %117, %104
  %119 = load i64, i64* %4, align 8
  %120 = load i64, i64* %5, align 8
  %121 = icmp sgt i64 %119, %120
  br i1 %121, label %122, label %126

122:                                              ; preds = %118
  %123 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %124 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @shared, i32 0, i32 0), align 4
  %125 = call i32 @addReply(%struct.TYPE_9__* %123, i32 %124)
  br label %138

126:                                              ; preds = %118
  %127 = load i64, i64* %5, align 8
  %128 = load i64, i64* %4, align 8
  %129 = sub nsw i64 %127, %128
  %130 = add nsw i64 %129, 1
  store i64 %130, i64* %11, align 8
  %131 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %132 = load i8*, i8** %7, align 8
  %133 = load i64, i64* %4, align 8
  %134 = getelementptr inbounds i8, i8* %132, i64 %133
  %135 = load i64, i64* %11, align 8
  %136 = call i32 @redisPopcount(i8* %134, i64 %135)
  %137 = call i32 @addReplyLongLong(%struct.TYPE_9__* %131, i32 %136)
  br label %138

138:                                              ; preds = %126, %122
  store i32 0, i32* %10, align 4
  br label %139

139:                                              ; preds = %138, %113, %71, %60, %49, %31
  %140 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %140)
  %141 = load i32, i32* %10, align 4
  switch i32 %141, label %143 [
    i32 0, label %142
    i32 1, label %142
  ]

142:                                              ; preds = %139, %139
  ret void

143:                                              ; preds = %139
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32* @lookupKeyReadOrReply(%struct.TYPE_9__*, i32, i32) #2

declare dso_local i64 @checkType(%struct.TYPE_9__*, i32*, i32) #2

declare dso_local i8* @getObjectReadOnlyString(i32*, i64*, i8*) #2

declare dso_local i64 @getLongFromObjectOrReply(%struct.TYPE_9__*, i32, i64*, i32*) #2

declare dso_local i32 @addReply(%struct.TYPE_9__*, i32) #2

declare dso_local i32 @addReplyLongLong(%struct.TYPE_9__*, i32) #2

declare dso_local i32 @redisPopcount(i8*, i64) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
