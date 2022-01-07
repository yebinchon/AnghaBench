; ModuleID = '/home/carl/AnghaBench/redis/src/extr_t_stream.c_xrangeGenericCommand.c'
source_filename = "/home/carl/AnghaBench/redis/src/extr_t_stream.c_xrangeGenericCommand.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_19__ = type { i32, i32 }
%struct.TYPE_18__ = type { i32, %struct.TYPE_17__** }
%struct.TYPE_17__ = type { i32* }

@C_ERR = common dso_local global i64 0, align 8
@UINT64_MAX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"COUNT\00", align 1
@C_OK = common dso_local global i64 0, align 8
@shared = common dso_local global %struct.TYPE_19__ zeroinitializer, align 4
@OBJ_STREAM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xrangeGenericCommand(%struct.TYPE_18__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_18__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_17__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca %struct.TYPE_17__*, align 8
  %11 = alloca %struct.TYPE_17__*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.TYPE_18__* %0, %struct.TYPE_18__** %3, align 8
  store i32 %1, i32* %4, align 4
  store i64 -1, i64* %9, align 8
  %14 = load i32, i32* %4, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %22

16:                                               ; preds = %2
  %17 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %18 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %17, i32 0, i32 1
  %19 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_17__*, %struct.TYPE_17__** %19, i64 3
  %21 = load %struct.TYPE_17__*, %struct.TYPE_17__** %20, align 8
  br label %28

22:                                               ; preds = %2
  %23 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %24 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %23, i32 0, i32 1
  %25 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_17__*, %struct.TYPE_17__** %25, i64 2
  %27 = load %struct.TYPE_17__*, %struct.TYPE_17__** %26, align 8
  br label %28

28:                                               ; preds = %22, %16
  %29 = phi %struct.TYPE_17__* [ %21, %16 ], [ %27, %22 ]
  store %struct.TYPE_17__* %29, %struct.TYPE_17__** %10, align 8
  %30 = load i32, i32* %4, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %38

32:                                               ; preds = %28
  %33 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %34 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %33, i32 0, i32 1
  %35 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_17__*, %struct.TYPE_17__** %35, i64 2
  %37 = load %struct.TYPE_17__*, %struct.TYPE_17__** %36, align 8
  br label %44

38:                                               ; preds = %28
  %39 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %40 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %39, i32 0, i32 1
  %41 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_17__*, %struct.TYPE_17__** %41, i64 3
  %43 = load %struct.TYPE_17__*, %struct.TYPE_17__** %42, align 8
  br label %44

44:                                               ; preds = %38, %32
  %45 = phi %struct.TYPE_17__* [ %37, %32 ], [ %43, %38 ]
  store %struct.TYPE_17__* %45, %struct.TYPE_17__** %11, align 8
  %46 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %47 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %48 = call i64 @streamParseIDOrReply(%struct.TYPE_18__* %46, %struct.TYPE_17__* %47, i32* %7, i32 0)
  %49 = load i64, i64* @C_ERR, align 8
  %50 = icmp eq i64 %48, %49
  br i1 %50, label %51, label %52

51:                                               ; preds = %44
  br label %159

52:                                               ; preds = %44
  %53 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %54 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %55 = load i32, i32* @UINT64_MAX, align 4
  %56 = call i64 @streamParseIDOrReply(%struct.TYPE_18__* %53, %struct.TYPE_17__* %54, i32* %8, i32 %55)
  %57 = load i64, i64* @C_ERR, align 8
  %58 = icmp eq i64 %56, %57
  br i1 %58, label %59, label %60

59:                                               ; preds = %52
  br label %159

60:                                               ; preds = %52
  %61 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %62 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = icmp sgt i32 %63, 4
  br i1 %64, label %65, label %123

65:                                               ; preds = %60
  store i32 4, i32* %12, align 4
  br label %66

66:                                               ; preds = %119, %65
  %67 = load i32, i32* %12, align 4
  %68 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %69 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = icmp slt i32 %67, %70
  br i1 %71, label %72, label %122

72:                                               ; preds = %66
  %73 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %74 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = load i32, i32* %12, align 4
  %77 = sub nsw i32 %75, %76
  %78 = sub nsw i32 %77, 1
  store i32 %78, i32* %13, align 4
  %79 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %80 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %79, i32 0, i32 1
  %81 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %80, align 8
  %82 = load i32, i32* %12, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds %struct.TYPE_17__*, %struct.TYPE_17__** %81, i64 %83
  %85 = load %struct.TYPE_17__*, %struct.TYPE_17__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %85, i32 0, i32 0
  %87 = load i32*, i32** %86, align 8
  %88 = call i64 @strcasecmp(i32* %87, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %89 = icmp eq i64 %88, 0
  br i1 %89, label %90, label %114

90:                                               ; preds = %72
  %91 = load i32, i32* %13, align 4
  %92 = icmp sge i32 %91, 1
  br i1 %92, label %93, label %114

93:                                               ; preds = %90
  %94 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %95 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %96 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %95, i32 0, i32 1
  %97 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %96, align 8
  %98 = load i32, i32* %12, align 4
  %99 = add nsw i32 %98, 1
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds %struct.TYPE_17__*, %struct.TYPE_17__** %97, i64 %100
  %102 = load %struct.TYPE_17__*, %struct.TYPE_17__** %101, align 8
  %103 = call i64 @getLongLongFromObjectOrReply(%struct.TYPE_18__* %94, %struct.TYPE_17__* %102, i64* %9, i32* null)
  %104 = load i64, i64* @C_OK, align 8
  %105 = icmp ne i64 %103, %104
  br i1 %105, label %106, label %107

106:                                              ; preds = %93
  br label %159

107:                                              ; preds = %93
  %108 = load i64, i64* %9, align 8
  %109 = icmp slt i64 %108, 0
  br i1 %109, label %110, label %111

110:                                              ; preds = %107
  store i64 0, i64* %9, align 8
  br label %111

111:                                              ; preds = %110, %107
  %112 = load i32, i32* %12, align 4
  %113 = add nsw i32 %112, 1
  store i32 %113, i32* %12, align 4
  br label %118

114:                                              ; preds = %90, %72
  %115 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %116 = load i32, i32* getelementptr inbounds (%struct.TYPE_19__, %struct.TYPE_19__* @shared, i32 0, i32 1), align 4
  %117 = call i32 @addReply(%struct.TYPE_18__* %115, i32 %116)
  br label %159

118:                                              ; preds = %111
  br label %119

119:                                              ; preds = %118
  %120 = load i32, i32* %12, align 4
  %121 = add nsw i32 %120, 1
  store i32 %121, i32* %12, align 4
  br label %66

122:                                              ; preds = %66
  br label %123

123:                                              ; preds = %122, %60
  %124 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %125 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %126 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %125, i32 0, i32 1
  %127 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %126, align 8
  %128 = getelementptr inbounds %struct.TYPE_17__*, %struct.TYPE_17__** %127, i64 1
  %129 = load %struct.TYPE_17__*, %struct.TYPE_17__** %128, align 8
  %130 = load i32, i32* getelementptr inbounds (%struct.TYPE_19__, %struct.TYPE_19__* @shared, i32 0, i32 0), align 4
  %131 = call %struct.TYPE_17__* @lookupKeyReadOrReply(%struct.TYPE_18__* %124, %struct.TYPE_17__* %129, i32 %130)
  store %struct.TYPE_17__* %131, %struct.TYPE_17__** %5, align 8
  %132 = icmp eq %struct.TYPE_17__* %131, null
  br i1 %132, label %139, label %133

133:                                              ; preds = %123
  %134 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %135 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %136 = load i32, i32* @OBJ_STREAM, align 4
  %137 = call i64 @checkType(%struct.TYPE_18__* %134, %struct.TYPE_17__* %135, i32 %136)
  %138 = icmp ne i64 %137, 0
  br i1 %138, label %139, label %140

139:                                              ; preds = %133, %123
  br label %159

140:                                              ; preds = %133
  %141 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %142 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %141, i32 0, i32 0
  %143 = load i32*, i32** %142, align 8
  store i32* %143, i32** %6, align 8
  %144 = load i64, i64* %9, align 8
  %145 = icmp eq i64 %144, 0
  br i1 %145, label %146, label %149

146:                                              ; preds = %140
  %147 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %148 = call i32 @addReplyNullArray(%struct.TYPE_18__* %147)
  br label %159

149:                                              ; preds = %140
  %150 = load i64, i64* %9, align 8
  %151 = icmp eq i64 %150, -1
  br i1 %151, label %152, label %153

152:                                              ; preds = %149
  store i64 0, i64* %9, align 8
  br label %153

153:                                              ; preds = %152, %149
  %154 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %155 = load i32*, i32** %6, align 8
  %156 = load i64, i64* %9, align 8
  %157 = load i32, i32* %4, align 4
  %158 = call i32 @streamReplyWithRange(%struct.TYPE_18__* %154, i32* %155, i32* %7, i32* %8, i64 %156, i32 %157, i32* null, i32* null, i32 0, i32* null)
  br label %159

159:                                              ; preds = %51, %59, %106, %114, %139, %153, %146
  ret void
}

declare dso_local i64 @streamParseIDOrReply(%struct.TYPE_18__*, %struct.TYPE_17__*, i32*, i32) #1

declare dso_local i64 @strcasecmp(i32*, i8*) #1

declare dso_local i64 @getLongLongFromObjectOrReply(%struct.TYPE_18__*, %struct.TYPE_17__*, i64*, i32*) #1

declare dso_local i32 @addReply(%struct.TYPE_18__*, i32) #1

declare dso_local %struct.TYPE_17__* @lookupKeyReadOrReply(%struct.TYPE_18__*, %struct.TYPE_17__*, i32) #1

declare dso_local i64 @checkType(%struct.TYPE_18__*, %struct.TYPE_17__*, i32) #1

declare dso_local i32 @addReplyNullArray(%struct.TYPE_18__*) #1

declare dso_local i32 @streamReplyWithRange(%struct.TYPE_18__*, i32*, i32*, i32*, i64, i32, i32*, i32*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
