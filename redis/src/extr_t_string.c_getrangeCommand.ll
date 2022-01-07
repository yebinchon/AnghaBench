; ModuleID = '/home/carl/AnghaBench/redis/src/extr_t_string.c_getrangeCommand.c'
source_filename = "/home/carl/AnghaBench/redis/src/extr_t_string.c_getrangeCommand.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32 }
%struct.TYPE_13__ = type { i32* }
%struct.TYPE_12__ = type { i64, i8* }

@C_OK = common dso_local global i64 0, align 8
@shared = common dso_local global %struct.TYPE_14__ zeroinitializer, align 4
@OBJ_STRING = common dso_local global i32 0, align 4
@OBJ_ENCODING_INT = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @getrangeCommand(%struct.TYPE_13__* %0) #0 {
  %2 = alloca %struct.TYPE_13__*, align 8
  %3 = alloca %struct.TYPE_12__*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca [32 x i8], align 16
  %8 = alloca i64, align 8
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %2, align 8
  %9 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %10 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %11 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %10, i32 0, i32 0
  %12 = load i32*, i32** %11, align 8
  %13 = getelementptr inbounds i32, i32* %12, i64 2
  %14 = load i32, i32* %13, align 4
  %15 = call i64 @getLongLongFromObjectOrReply(%struct.TYPE_13__* %9, i32 %14, i64* %4, i32* null)
  %16 = load i64, i64* @C_OK, align 8
  %17 = icmp ne i64 %15, %16
  br i1 %17, label %18, label %19

18:                                               ; preds = %1
  br label %131

19:                                               ; preds = %1
  %20 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %21 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %22 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %21, i32 0, i32 0
  %23 = load i32*, i32** %22, align 8
  %24 = getelementptr inbounds i32, i32* %23, i64 3
  %25 = load i32, i32* %24, align 4
  %26 = call i64 @getLongLongFromObjectOrReply(%struct.TYPE_13__* %20, i32 %25, i64* %5, i32* null)
  %27 = load i64, i64* @C_OK, align 8
  %28 = icmp ne i64 %26, %27
  br i1 %28, label %29, label %30

29:                                               ; preds = %19
  br label %131

30:                                               ; preds = %19
  %31 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %32 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %33 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %32, i32 0, i32 0
  %34 = load i32*, i32** %33, align 8
  %35 = getelementptr inbounds i32, i32* %34, i64 1
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @shared, i32 0, i32 0), align 4
  %38 = call %struct.TYPE_12__* @lookupKeyReadOrReply(%struct.TYPE_13__* %31, i32 %36, i32 %37)
  store %struct.TYPE_12__* %38, %struct.TYPE_12__** %3, align 8
  %39 = icmp eq %struct.TYPE_12__* %38, null
  br i1 %39, label %46, label %40

40:                                               ; preds = %30
  %41 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %42 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %43 = load i32, i32* @OBJ_STRING, align 4
  %44 = call i64 @checkType(%struct.TYPE_13__* %41, %struct.TYPE_12__* %42, i32 %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %40, %30
  br label %131

47:                                               ; preds = %40
  %48 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %49 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* @OBJ_ENCODING_INT, align 8
  %52 = icmp eq i64 %50, %51
  br i1 %52, label %53, label %61

53:                                               ; preds = %47
  %54 = getelementptr inbounds [32 x i8], [32 x i8]* %7, i64 0, i64 0
  store i8* %54, i8** %6, align 8
  %55 = getelementptr inbounds [32 x i8], [32 x i8]* %7, i64 0, i64 0
  %56 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %57 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %56, i32 0, i32 1
  %58 = load i8*, i8** %57, align 8
  %59 = ptrtoint i8* %58 to i64
  %60 = call i64 @ll2string(i8* %55, i32 32, i64 %59)
  store i64 %60, i64* %8, align 8
  br label %67

61:                                               ; preds = %47
  %62 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %63 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %62, i32 0, i32 1
  %64 = load i8*, i8** %63, align 8
  store i8* %64, i8** %6, align 8
  %65 = load i8*, i8** %6, align 8
  %66 = call i64 @sdslen(i8* %65)
  store i64 %66, i64* %8, align 8
  br label %67

67:                                               ; preds = %61, %53
  %68 = load i64, i64* %4, align 8
  %69 = icmp slt i64 %68, 0
  br i1 %69, label %70, label %81

70:                                               ; preds = %67
  %71 = load i64, i64* %5, align 8
  %72 = icmp slt i64 %71, 0
  br i1 %72, label %73, label %81

73:                                               ; preds = %70
  %74 = load i64, i64* %4, align 8
  %75 = load i64, i64* %5, align 8
  %76 = icmp sgt i64 %74, %75
  br i1 %76, label %77, label %81

77:                                               ; preds = %73
  %78 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %79 = load i32, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @shared, i32 0, i32 0), align 4
  %80 = call i32 @addReply(%struct.TYPE_13__* %78, i32 %79)
  br label %131

81:                                               ; preds = %73, %70, %67
  %82 = load i64, i64* %4, align 8
  %83 = icmp slt i64 %82, 0
  br i1 %83, label %84, label %88

84:                                               ; preds = %81
  %85 = load i64, i64* %8, align 8
  %86 = load i64, i64* %4, align 8
  %87 = add i64 %85, %86
  store i64 %87, i64* %4, align 8
  br label %88

88:                                               ; preds = %84, %81
  %89 = load i64, i64* %5, align 8
  %90 = icmp slt i64 %89, 0
  br i1 %90, label %91, label %95

91:                                               ; preds = %88
  %92 = load i64, i64* %8, align 8
  %93 = load i64, i64* %5, align 8
  %94 = add i64 %92, %93
  store i64 %94, i64* %5, align 8
  br label %95

95:                                               ; preds = %91, %88
  %96 = load i64, i64* %4, align 8
  %97 = icmp slt i64 %96, 0
  br i1 %97, label %98, label %99

98:                                               ; preds = %95
  store i64 0, i64* %4, align 8
  br label %99

99:                                               ; preds = %98, %95
  %100 = load i64, i64* %5, align 8
  %101 = icmp slt i64 %100, 0
  br i1 %101, label %102, label %103

102:                                              ; preds = %99
  store i64 0, i64* %5, align 8
  br label %103

103:                                              ; preds = %102, %99
  %104 = load i64, i64* %5, align 8
  %105 = load i64, i64* %8, align 8
  %106 = icmp uge i64 %104, %105
  br i1 %106, label %107, label %110

107:                                              ; preds = %103
  %108 = load i64, i64* %8, align 8
  %109 = sub i64 %108, 1
  store i64 %109, i64* %5, align 8
  br label %110

110:                                              ; preds = %107, %103
  %111 = load i64, i64* %4, align 8
  %112 = load i64, i64* %5, align 8
  %113 = icmp sgt i64 %111, %112
  br i1 %113, label %117, label %114

114:                                              ; preds = %110
  %115 = load i64, i64* %8, align 8
  %116 = icmp eq i64 %115, 0
  br i1 %116, label %117, label %121

117:                                              ; preds = %114, %110
  %118 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %119 = load i32, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @shared, i32 0, i32 0), align 4
  %120 = call i32 @addReply(%struct.TYPE_13__* %118, i32 %119)
  br label %131

121:                                              ; preds = %114
  %122 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %123 = load i8*, i8** %6, align 8
  %124 = load i64, i64* %4, align 8
  %125 = getelementptr inbounds i8, i8* %123, i64 %124
  %126 = load i64, i64* %5, align 8
  %127 = load i64, i64* %4, align 8
  %128 = sub nsw i64 %126, %127
  %129 = add nsw i64 %128, 1
  %130 = call i32 @addReplyBulkCBuffer(%struct.TYPE_13__* %122, i8* %125, i64 %129)
  br label %131

131:                                              ; preds = %18, %29, %46, %77, %121, %117
  ret void
}

declare dso_local i64 @getLongLongFromObjectOrReply(%struct.TYPE_13__*, i32, i64*, i32*) #1

declare dso_local %struct.TYPE_12__* @lookupKeyReadOrReply(%struct.TYPE_13__*, i32, i32) #1

declare dso_local i64 @checkType(%struct.TYPE_13__*, %struct.TYPE_12__*, i32) #1

declare dso_local i64 @ll2string(i8*, i32, i64) #1

declare dso_local i64 @sdslen(i8*) #1

declare dso_local i32 @addReply(%struct.TYPE_13__*, i32) #1

declare dso_local i32 @addReplyBulkCBuffer(%struct.TYPE_13__*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
