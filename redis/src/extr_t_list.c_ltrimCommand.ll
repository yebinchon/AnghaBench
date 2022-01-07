; ModuleID = '/home/carl/AnghaBench/redis/src/extr_t_list.c_ltrimCommand.c'
source_filename = "/home/carl/AnghaBench/redis/src/extr_t_list.c_ltrimCommand.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { i32 }
%struct.TYPE_19__ = type { i32 }
%struct.TYPE_16__ = type { i32*, %struct.TYPE_17__* }
%struct.TYPE_17__ = type { i32 }
%struct.TYPE_15__ = type { i64, i32 }

@C_OK = common dso_local global i64 0, align 8
@shared = common dso_local global %struct.TYPE_18__ zeroinitializer, align 4
@OBJ_LIST = common dso_local global i32 0, align 4
@OBJ_ENCODING_QUICKLIST = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [22 x i8] c"Unknown list encoding\00", align 1
@NOTIFY_LIST = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c"ltrim\00", align 1
@NOTIFY_GENERIC = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [4 x i8] c"del\00", align 1
@server = common dso_local global %struct.TYPE_19__ zeroinitializer, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ltrimCommand(%struct.TYPE_16__* %0) #0 {
  %2 = alloca %struct.TYPE_16__*, align 8
  %3 = alloca %struct.TYPE_15__*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %2, align 8
  %9 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %10 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %11 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %10, i32 0, i32 0
  %12 = load i32*, i32** %11, align 8
  %13 = getelementptr inbounds i32, i32* %12, i64 2
  %14 = load i32, i32* %13, align 4
  %15 = call i64 @getLongFromObjectOrReply(%struct.TYPE_16__* %9, i32 %14, i64* %4, i32* null)
  %16 = load i64, i64* @C_OK, align 8
  %17 = icmp ne i64 %15, %16
  br i1 %17, label %28, label %18

18:                                               ; preds = %1
  %19 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %20 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %21 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %20, i32 0, i32 0
  %22 = load i32*, i32** %21, align 8
  %23 = getelementptr inbounds i32, i32* %22, i64 3
  %24 = load i32, i32* %23, align 4
  %25 = call i64 @getLongFromObjectOrReply(%struct.TYPE_16__* %19, i32 %24, i64* %5, i32* null)
  %26 = load i64, i64* @C_OK, align 8
  %27 = icmp ne i64 %25, %26
  br i1 %27, label %28, label %29

28:                                               ; preds = %18, %1
  br label %163

29:                                               ; preds = %18
  %30 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %31 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %32 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %31, i32 0, i32 0
  %33 = load i32*, i32** %32, align 8
  %34 = getelementptr inbounds i32, i32* %33, i64 1
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @shared, i32 0, i32 0), align 4
  %37 = call %struct.TYPE_15__* @lookupKeyWriteOrReply(%struct.TYPE_16__* %30, i32 %35, i32 %36)
  store %struct.TYPE_15__* %37, %struct.TYPE_15__** %3, align 8
  %38 = icmp eq %struct.TYPE_15__* %37, null
  br i1 %38, label %45, label %39

39:                                               ; preds = %29
  %40 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %41 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %42 = load i32, i32* @OBJ_LIST, align 4
  %43 = call i64 @checkType(%struct.TYPE_16__* %40, %struct.TYPE_15__* %41, i32 %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %39, %29
  br label %163

46:                                               ; preds = %39
  %47 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %48 = call i64 @listTypeLength(%struct.TYPE_15__* %47)
  store i64 %48, i64* %6, align 8
  %49 = load i64, i64* %4, align 8
  %50 = icmp slt i64 %49, 0
  br i1 %50, label %51, label %55

51:                                               ; preds = %46
  %52 = load i64, i64* %6, align 8
  %53 = load i64, i64* %4, align 8
  %54 = add nsw i64 %52, %53
  store i64 %54, i64* %4, align 8
  br label %55

55:                                               ; preds = %51, %46
  %56 = load i64, i64* %5, align 8
  %57 = icmp slt i64 %56, 0
  br i1 %57, label %58, label %62

58:                                               ; preds = %55
  %59 = load i64, i64* %6, align 8
  %60 = load i64, i64* %5, align 8
  %61 = add nsw i64 %59, %60
  store i64 %61, i64* %5, align 8
  br label %62

62:                                               ; preds = %58, %55
  %63 = load i64, i64* %4, align 8
  %64 = icmp slt i64 %63, 0
  br i1 %64, label %65, label %66

65:                                               ; preds = %62
  store i64 0, i64* %4, align 8
  br label %66

66:                                               ; preds = %65, %62
  %67 = load i64, i64* %4, align 8
  %68 = load i64, i64* %5, align 8
  %69 = icmp sgt i64 %67, %68
  br i1 %69, label %74, label %70

70:                                               ; preds = %66
  %71 = load i64, i64* %4, align 8
  %72 = load i64, i64* %6, align 8
  %73 = icmp sge i64 %71, %72
  br i1 %73, label %74, label %76

74:                                               ; preds = %70, %66
  %75 = load i64, i64* %6, align 8
  store i64 %75, i64* %7, align 8
  store i64 0, i64* %8, align 8
  br label %89

76:                                               ; preds = %70
  %77 = load i64, i64* %5, align 8
  %78 = load i64, i64* %6, align 8
  %79 = icmp sge i64 %77, %78
  br i1 %79, label %80, label %83

80:                                               ; preds = %76
  %81 = load i64, i64* %6, align 8
  %82 = sub nsw i64 %81, 1
  store i64 %82, i64* %5, align 8
  br label %83

83:                                               ; preds = %80, %76
  %84 = load i64, i64* %4, align 8
  store i64 %84, i64* %7, align 8
  %85 = load i64, i64* %6, align 8
  %86 = load i64, i64* %5, align 8
  %87 = sub nsw i64 %85, %86
  %88 = sub nsw i64 %87, 1
  store i64 %88, i64* %8, align 8
  br label %89

89:                                               ; preds = %83, %74
  %90 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %91 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = load i64, i64* @OBJ_ENCODING_QUICKLIST, align 8
  %94 = icmp eq i64 %92, %93
  br i1 %94, label %95, label %108

95:                                               ; preds = %89
  %96 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %97 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 8
  %99 = load i64, i64* %7, align 8
  %100 = call i32 @quicklistDelRange(i32 %98, i64 0, i64 %99)
  %101 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %102 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 8
  %104 = load i64, i64* %8, align 8
  %105 = sub nsw i64 0, %104
  %106 = load i64, i64* %8, align 8
  %107 = call i32 @quicklistDelRange(i32 %103, i64 %105, i64 %106)
  br label %110

108:                                              ; preds = %89
  %109 = call i32 @serverPanic(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  br label %110

110:                                              ; preds = %108, %95
  %111 = load i32, i32* @NOTIFY_LIST, align 4
  %112 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %113 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %112, i32 0, i32 0
  %114 = load i32*, i32** %113, align 8
  %115 = getelementptr inbounds i32, i32* %114, i64 1
  %116 = load i32, i32* %115, align 4
  %117 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %118 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %117, i32 0, i32 1
  %119 = load %struct.TYPE_17__*, %struct.TYPE_17__** %118, align 8
  %120 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 4
  %122 = call i32 @notifyKeyspaceEvent(i32 %111, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 %116, i32 %121)
  %123 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %124 = call i64 @listTypeLength(%struct.TYPE_15__* %123)
  %125 = icmp eq i64 %124, 0
  br i1 %125, label %126, label %148

126:                                              ; preds = %110
  %127 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %128 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %127, i32 0, i32 1
  %129 = load %struct.TYPE_17__*, %struct.TYPE_17__** %128, align 8
  %130 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %131 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %130, i32 0, i32 0
  %132 = load i32*, i32** %131, align 8
  %133 = getelementptr inbounds i32, i32* %132, i64 1
  %134 = load i32, i32* %133, align 4
  %135 = call i32 @dbDelete(%struct.TYPE_17__* %129, i32 %134)
  %136 = load i32, i32* @NOTIFY_GENERIC, align 4
  %137 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %138 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %137, i32 0, i32 0
  %139 = load i32*, i32** %138, align 8
  %140 = getelementptr inbounds i32, i32* %139, i64 1
  %141 = load i32, i32* %140, align 4
  %142 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %143 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %142, i32 0, i32 1
  %144 = load %struct.TYPE_17__*, %struct.TYPE_17__** %143, align 8
  %145 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 4
  %147 = call i32 @notifyKeyspaceEvent(i32 %136, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i32 %141, i32 %146)
  br label %148

148:                                              ; preds = %126, %110
  %149 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %150 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %149, i32 0, i32 1
  %151 = load %struct.TYPE_17__*, %struct.TYPE_17__** %150, align 8
  %152 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %153 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %152, i32 0, i32 0
  %154 = load i32*, i32** %153, align 8
  %155 = getelementptr inbounds i32, i32* %154, i64 1
  %156 = load i32, i32* %155, align 4
  %157 = call i32 @signalModifiedKey(%struct.TYPE_17__* %151, i32 %156)
  %158 = load i32, i32* getelementptr inbounds (%struct.TYPE_19__, %struct.TYPE_19__* @server, i32 0, i32 0), align 4
  %159 = add nsw i32 %158, 1
  store i32 %159, i32* getelementptr inbounds (%struct.TYPE_19__, %struct.TYPE_19__* @server, i32 0, i32 0), align 4
  %160 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %161 = load i32, i32* getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @shared, i32 0, i32 0), align 4
  %162 = call i32 @addReply(%struct.TYPE_16__* %160, i32 %161)
  br label %163

163:                                              ; preds = %148, %45, %28
  ret void
}

declare dso_local i64 @getLongFromObjectOrReply(%struct.TYPE_16__*, i32, i64*, i32*) #1

declare dso_local %struct.TYPE_15__* @lookupKeyWriteOrReply(%struct.TYPE_16__*, i32, i32) #1

declare dso_local i64 @checkType(%struct.TYPE_16__*, %struct.TYPE_15__*, i32) #1

declare dso_local i64 @listTypeLength(%struct.TYPE_15__*) #1

declare dso_local i32 @quicklistDelRange(i32, i64, i64) #1

declare dso_local i32 @serverPanic(i8*) #1

declare dso_local i32 @notifyKeyspaceEvent(i32, i8*, i32, i32) #1

declare dso_local i32 @dbDelete(%struct.TYPE_17__*, i32) #1

declare dso_local i32 @signalModifiedKey(%struct.TYPE_17__*, i32) #1

declare dso_local i32 @addReply(%struct.TYPE_16__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
