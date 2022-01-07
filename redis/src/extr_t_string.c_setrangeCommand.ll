; ModuleID = '/home/carl/AnghaBench/redis/src/extr_t_string.c_setrangeCommand.c'
source_filename = "/home/carl/AnghaBench/redis/src/extr_t_string.c_setrangeCommand.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_33__ = type { i32 }
%struct.TYPE_34__ = type { i32 }
%struct.TYPE_30__ = type { %struct.TYPE_31__*, %struct.TYPE_32__** }
%struct.TYPE_31__ = type { i32 }
%struct.TYPE_32__ = type { i64 }
%struct.TYPE_29__ = type { i64 }

@C_OK = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [23 x i8] c"offset is out of range\00", align 1
@shared = common dso_local global %struct.TYPE_33__ zeroinitializer, align 4
@OBJ_STRING = common dso_local global i32 0, align 4
@NOTIFY_STRING = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [9 x i8] c"setrange\00", align 1
@server = common dso_local global %struct.TYPE_34__ zeroinitializer, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @setrangeCommand(%struct.TYPE_30__* %0) #0 {
  %2 = alloca %struct.TYPE_30__*, align 8
  %3 = alloca %struct.TYPE_29__*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store %struct.TYPE_30__* %0, %struct.TYPE_30__** %2, align 8
  %7 = load %struct.TYPE_30__*, %struct.TYPE_30__** %2, align 8
  %8 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %7, i32 0, i32 1
  %9 = load %struct.TYPE_32__**, %struct.TYPE_32__*** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_32__*, %struct.TYPE_32__** %9, i64 3
  %11 = load %struct.TYPE_32__*, %struct.TYPE_32__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  store i64 %13, i64* %5, align 8
  %14 = load %struct.TYPE_30__*, %struct.TYPE_30__** %2, align 8
  %15 = load %struct.TYPE_30__*, %struct.TYPE_30__** %2, align 8
  %16 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %15, i32 0, i32 1
  %17 = load %struct.TYPE_32__**, %struct.TYPE_32__*** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_32__*, %struct.TYPE_32__** %17, i64 2
  %19 = load %struct.TYPE_32__*, %struct.TYPE_32__** %18, align 8
  %20 = call i64 @getLongFromObjectOrReply(%struct.TYPE_30__* %14, %struct.TYPE_32__* %19, i64* %4, i32* null)
  %21 = load i64, i64* @C_OK, align 8
  %22 = icmp ne i64 %20, %21
  br i1 %22, label %23, label %24

23:                                               ; preds = %1
  br label %171

24:                                               ; preds = %1
  %25 = load i64, i64* %4, align 8
  %26 = icmp slt i64 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %24
  %28 = load %struct.TYPE_30__*, %struct.TYPE_30__** %2, align 8
  %29 = call i32 @addReplyError(%struct.TYPE_30__* %28, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  br label %171

30:                                               ; preds = %24
  %31 = load %struct.TYPE_30__*, %struct.TYPE_30__** %2, align 8
  %32 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %31, i32 0, i32 0
  %33 = load %struct.TYPE_31__*, %struct.TYPE_31__** %32, align 8
  %34 = load %struct.TYPE_30__*, %struct.TYPE_30__** %2, align 8
  %35 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %34, i32 0, i32 1
  %36 = load %struct.TYPE_32__**, %struct.TYPE_32__*** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_32__*, %struct.TYPE_32__** %36, i64 1
  %38 = load %struct.TYPE_32__*, %struct.TYPE_32__** %37, align 8
  %39 = call %struct.TYPE_29__* @lookupKeyWrite(%struct.TYPE_31__* %33, %struct.TYPE_32__* %38)
  store %struct.TYPE_29__* %39, %struct.TYPE_29__** %3, align 8
  %40 = load %struct.TYPE_29__*, %struct.TYPE_29__** %3, align 8
  %41 = icmp eq %struct.TYPE_29__* %40, null
  br i1 %41, label %42, label %78

42:                                               ; preds = %30
  %43 = load i64, i64* %5, align 8
  %44 = call i64 @sdslen(i64 %43)
  %45 = icmp eq i64 %44, 0
  br i1 %45, label %46, label %50

46:                                               ; preds = %42
  %47 = load %struct.TYPE_30__*, %struct.TYPE_30__** %2, align 8
  %48 = load i32, i32* getelementptr inbounds (%struct.TYPE_33__, %struct.TYPE_33__* @shared, i32 0, i32 0), align 4
  %49 = call i32 @addReply(%struct.TYPE_30__* %47, i32 %48)
  br label %171

50:                                               ; preds = %42
  %51 = load %struct.TYPE_30__*, %struct.TYPE_30__** %2, align 8
  %52 = load i64, i64* %4, align 8
  %53 = load i64, i64* %5, align 8
  %54 = call i64 @sdslen(i64 %53)
  %55 = add nsw i64 %52, %54
  %56 = call i64 @checkStringLength(%struct.TYPE_30__* %51, i64 %55)
  %57 = load i64, i64* @C_OK, align 8
  %58 = icmp ne i64 %56, %57
  br i1 %58, label %59, label %60

59:                                               ; preds = %50
  br label %171

60:                                               ; preds = %50
  %61 = load i32, i32* @OBJ_STRING, align 4
  %62 = load i64, i64* %4, align 8
  %63 = load i64, i64* %5, align 8
  %64 = call i64 @sdslen(i64 %63)
  %65 = add nsw i64 %62, %64
  %66 = call i32 @sdsnewlen(i32* null, i64 %65)
  %67 = call %struct.TYPE_29__* @createObject(i32 %61, i32 %66)
  store %struct.TYPE_29__* %67, %struct.TYPE_29__** %3, align 8
  %68 = load %struct.TYPE_30__*, %struct.TYPE_30__** %2, align 8
  %69 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %68, i32 0, i32 0
  %70 = load %struct.TYPE_31__*, %struct.TYPE_31__** %69, align 8
  %71 = load %struct.TYPE_30__*, %struct.TYPE_30__** %2, align 8
  %72 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %71, i32 0, i32 1
  %73 = load %struct.TYPE_32__**, %struct.TYPE_32__*** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_32__*, %struct.TYPE_32__** %73, i64 1
  %75 = load %struct.TYPE_32__*, %struct.TYPE_32__** %74, align 8
  %76 = load %struct.TYPE_29__*, %struct.TYPE_29__** %3, align 8
  %77 = call i32 @dbAdd(%struct.TYPE_31__* %70, %struct.TYPE_32__* %75, %struct.TYPE_29__* %76)
  br label %116

78:                                               ; preds = %30
  %79 = load %struct.TYPE_30__*, %struct.TYPE_30__** %2, align 8
  %80 = load %struct.TYPE_29__*, %struct.TYPE_29__** %3, align 8
  %81 = load i32, i32* @OBJ_STRING, align 4
  %82 = call i64 @checkType(%struct.TYPE_30__* %79, %struct.TYPE_29__* %80, i32 %81)
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %85

84:                                               ; preds = %78
  br label %171

85:                                               ; preds = %78
  %86 = load %struct.TYPE_29__*, %struct.TYPE_29__** %3, align 8
  %87 = call i64 @stringObjectLen(%struct.TYPE_29__* %86)
  store i64 %87, i64* %6, align 8
  %88 = load i64, i64* %5, align 8
  %89 = call i64 @sdslen(i64 %88)
  %90 = icmp eq i64 %89, 0
  br i1 %90, label %91, label %95

91:                                               ; preds = %85
  %92 = load %struct.TYPE_30__*, %struct.TYPE_30__** %2, align 8
  %93 = load i64, i64* %6, align 8
  %94 = call i32 @addReplyLongLong(%struct.TYPE_30__* %92, i64 %93)
  br label %171

95:                                               ; preds = %85
  %96 = load %struct.TYPE_30__*, %struct.TYPE_30__** %2, align 8
  %97 = load i64, i64* %4, align 8
  %98 = load i64, i64* %5, align 8
  %99 = call i64 @sdslen(i64 %98)
  %100 = add nsw i64 %97, %99
  %101 = call i64 @checkStringLength(%struct.TYPE_30__* %96, i64 %100)
  %102 = load i64, i64* @C_OK, align 8
  %103 = icmp ne i64 %101, %102
  br i1 %103, label %104, label %105

104:                                              ; preds = %95
  br label %171

105:                                              ; preds = %95
  %106 = load %struct.TYPE_30__*, %struct.TYPE_30__** %2, align 8
  %107 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %106, i32 0, i32 0
  %108 = load %struct.TYPE_31__*, %struct.TYPE_31__** %107, align 8
  %109 = load %struct.TYPE_30__*, %struct.TYPE_30__** %2, align 8
  %110 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %109, i32 0, i32 1
  %111 = load %struct.TYPE_32__**, %struct.TYPE_32__*** %110, align 8
  %112 = getelementptr inbounds %struct.TYPE_32__*, %struct.TYPE_32__** %111, i64 1
  %113 = load %struct.TYPE_32__*, %struct.TYPE_32__** %112, align 8
  %114 = load %struct.TYPE_29__*, %struct.TYPE_29__** %3, align 8
  %115 = call %struct.TYPE_29__* @dbUnshareStringValue(%struct.TYPE_31__* %108, %struct.TYPE_32__* %113, %struct.TYPE_29__* %114)
  store %struct.TYPE_29__* %115, %struct.TYPE_29__** %3, align 8
  br label %116

116:                                              ; preds = %105, %60
  %117 = load i64, i64* %5, align 8
  %118 = call i64 @sdslen(i64 %117)
  %119 = icmp sgt i64 %118, 0
  br i1 %119, label %120, label %164

120:                                              ; preds = %116
  %121 = load %struct.TYPE_29__*, %struct.TYPE_29__** %3, align 8
  %122 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %121, i32 0, i32 0
  %123 = load i64, i64* %122, align 8
  %124 = load i64, i64* %4, align 8
  %125 = load i64, i64* %5, align 8
  %126 = call i64 @sdslen(i64 %125)
  %127 = add nsw i64 %124, %126
  %128 = call i64 @sdsgrowzero(i64 %123, i64 %127)
  %129 = load %struct.TYPE_29__*, %struct.TYPE_29__** %3, align 8
  %130 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %129, i32 0, i32 0
  store i64 %128, i64* %130, align 8
  %131 = load %struct.TYPE_29__*, %struct.TYPE_29__** %3, align 8
  %132 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %131, i32 0, i32 0
  %133 = load i64, i64* %132, align 8
  %134 = inttoptr i64 %133 to i8*
  %135 = load i64, i64* %4, align 8
  %136 = getelementptr inbounds i8, i8* %134, i64 %135
  %137 = load i64, i64* %5, align 8
  %138 = load i64, i64* %5, align 8
  %139 = call i64 @sdslen(i64 %138)
  %140 = call i32 @memcpy(i8* %136, i64 %137, i64 %139)
  %141 = load %struct.TYPE_30__*, %struct.TYPE_30__** %2, align 8
  %142 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %141, i32 0, i32 0
  %143 = load %struct.TYPE_31__*, %struct.TYPE_31__** %142, align 8
  %144 = load %struct.TYPE_30__*, %struct.TYPE_30__** %2, align 8
  %145 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %144, i32 0, i32 1
  %146 = load %struct.TYPE_32__**, %struct.TYPE_32__*** %145, align 8
  %147 = getelementptr inbounds %struct.TYPE_32__*, %struct.TYPE_32__** %146, i64 1
  %148 = load %struct.TYPE_32__*, %struct.TYPE_32__** %147, align 8
  %149 = call i32 @signalModifiedKey(%struct.TYPE_31__* %143, %struct.TYPE_32__* %148)
  %150 = load i32, i32* @NOTIFY_STRING, align 4
  %151 = load %struct.TYPE_30__*, %struct.TYPE_30__** %2, align 8
  %152 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %151, i32 0, i32 1
  %153 = load %struct.TYPE_32__**, %struct.TYPE_32__*** %152, align 8
  %154 = getelementptr inbounds %struct.TYPE_32__*, %struct.TYPE_32__** %153, i64 1
  %155 = load %struct.TYPE_32__*, %struct.TYPE_32__** %154, align 8
  %156 = load %struct.TYPE_30__*, %struct.TYPE_30__** %2, align 8
  %157 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %156, i32 0, i32 0
  %158 = load %struct.TYPE_31__*, %struct.TYPE_31__** %157, align 8
  %159 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %158, i32 0, i32 0
  %160 = load i32, i32* %159, align 4
  %161 = call i32 @notifyKeyspaceEvent(i32 %150, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), %struct.TYPE_32__* %155, i32 %160)
  %162 = load i32, i32* getelementptr inbounds (%struct.TYPE_34__, %struct.TYPE_34__* @server, i32 0, i32 0), align 4
  %163 = add nsw i32 %162, 1
  store i32 %163, i32* getelementptr inbounds (%struct.TYPE_34__, %struct.TYPE_34__* @server, i32 0, i32 0), align 4
  br label %164

164:                                              ; preds = %120, %116
  %165 = load %struct.TYPE_30__*, %struct.TYPE_30__** %2, align 8
  %166 = load %struct.TYPE_29__*, %struct.TYPE_29__** %3, align 8
  %167 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %166, i32 0, i32 0
  %168 = load i64, i64* %167, align 8
  %169 = call i64 @sdslen(i64 %168)
  %170 = call i32 @addReplyLongLong(%struct.TYPE_30__* %165, i64 %169)
  br label %171

171:                                              ; preds = %164, %104, %91, %84, %59, %46, %27, %23
  ret void
}

declare dso_local i64 @getLongFromObjectOrReply(%struct.TYPE_30__*, %struct.TYPE_32__*, i64*, i32*) #1

declare dso_local i32 @addReplyError(%struct.TYPE_30__*, i8*) #1

declare dso_local %struct.TYPE_29__* @lookupKeyWrite(%struct.TYPE_31__*, %struct.TYPE_32__*) #1

declare dso_local i64 @sdslen(i64) #1

declare dso_local i32 @addReply(%struct.TYPE_30__*, i32) #1

declare dso_local i64 @checkStringLength(%struct.TYPE_30__*, i64) #1

declare dso_local %struct.TYPE_29__* @createObject(i32, i32) #1

declare dso_local i32 @sdsnewlen(i32*, i64) #1

declare dso_local i32 @dbAdd(%struct.TYPE_31__*, %struct.TYPE_32__*, %struct.TYPE_29__*) #1

declare dso_local i64 @checkType(%struct.TYPE_30__*, %struct.TYPE_29__*, i32) #1

declare dso_local i64 @stringObjectLen(%struct.TYPE_29__*) #1

declare dso_local i32 @addReplyLongLong(%struct.TYPE_30__*, i64) #1

declare dso_local %struct.TYPE_29__* @dbUnshareStringValue(%struct.TYPE_31__*, %struct.TYPE_32__*, %struct.TYPE_29__*) #1

declare dso_local i64 @sdsgrowzero(i64, i64) #1

declare dso_local i32 @memcpy(i8*, i64, i64) #1

declare dso_local i32 @signalModifiedKey(%struct.TYPE_31__*, %struct.TYPE_32__*) #1

declare dso_local i32 @notifyKeyspaceEvent(i32, i8*, %struct.TYPE_32__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
