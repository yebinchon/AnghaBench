; ModuleID = '/home/carl/AnghaBench/redis/src/extr_module.c_RM_StringTruncate.c'
source_filename = "/home/carl/AnghaBench/redis/src/extr_module.c_RM_StringTruncate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, %struct.TYPE_9__*, i32, i32 }
%struct.TYPE_9__ = type { i64, i32 }

@REDISMODULE_WRITE = common dso_local global i32 0, align 4
@REDISMODULE_ERR = common dso_local global i32 0, align 4
@OBJ_STRING = common dso_local global i64 0, align 8
@REDISMODULE_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @RM_StringTruncate(%struct.TYPE_10__* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_10__*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_9__*, align 8
  %7 = alloca i64, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %4, align 8
  store i64 %1, i64* %5, align 8
  %8 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %9 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = load i32, i32* @REDISMODULE_WRITE, align 4
  %12 = and i32 %10, %11
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %16, label %14

14:                                               ; preds = %2
  %15 = load i32, i32* @REDISMODULE_ERR, align 4
  store i32 %15, i32* %3, align 4
  br label %145

16:                                               ; preds = %2
  %17 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %18 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %17, i32 0, i32 1
  %19 = load %struct.TYPE_9__*, %struct.TYPE_9__** %18, align 8
  %20 = icmp ne %struct.TYPE_9__* %19, null
  br i1 %20, label %21, label %31

21:                                               ; preds = %16
  %22 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %23 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %22, i32 0, i32 1
  %24 = load %struct.TYPE_9__*, %struct.TYPE_9__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @OBJ_STRING, align 8
  %28 = icmp ne i64 %26, %27
  br i1 %28, label %29, label %31

29:                                               ; preds = %21
  %30 = load i32, i32* @REDISMODULE_ERR, align 4
  store i32 %30, i32* %3, align 4
  br label %145

31:                                               ; preds = %21, %16
  %32 = load i64, i64* %5, align 8
  %33 = icmp ugt i64 %32, 536870912
  br i1 %33, label %34, label %36

34:                                               ; preds = %31
  %35 = load i32, i32* @REDISMODULE_ERR, align 4
  store i32 %35, i32* %3, align 4
  br label %145

36:                                               ; preds = %31
  %37 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %38 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %37, i32 0, i32 1
  %39 = load %struct.TYPE_9__*, %struct.TYPE_9__** %38, align 8
  %40 = icmp eq %struct.TYPE_9__* %39, null
  br i1 %40, label %41, label %46

41:                                               ; preds = %36
  %42 = load i64, i64* %5, align 8
  %43 = icmp eq i64 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %41
  %45 = load i32, i32* @REDISMODULE_OK, align 4
  store i32 %45, i32* %3, align 4
  br label %145

46:                                               ; preds = %41, %36
  %47 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %48 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %47, i32 0, i32 1
  %49 = load %struct.TYPE_9__*, %struct.TYPE_9__** %48, align 8
  %50 = icmp eq %struct.TYPE_9__* %49, null
  br i1 %50, label %51, label %69

51:                                               ; preds = %46
  %52 = load i64, i64* @OBJ_STRING, align 8
  %53 = load i64, i64* %5, align 8
  %54 = call i32 @sdsnewlen(i32* null, i64 %53)
  %55 = call %struct.TYPE_9__* @createObject(i64 %52, i32 %54)
  store %struct.TYPE_9__* %55, %struct.TYPE_9__** %6, align 8
  %56 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %57 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %56, i32 0, i32 3
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %60 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 8
  %62 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %63 = call i32 @setKey(i32 %58, i32 %61, %struct.TYPE_9__* %62)
  %64 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %65 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %66 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %65, i32 0, i32 1
  store %struct.TYPE_9__* %64, %struct.TYPE_9__** %66, align 8
  %67 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %68 = call i32 @decrRefCount(%struct.TYPE_9__* %67)
  br label %143

69:                                               ; preds = %46
  %70 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %71 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %70, i32 0, i32 3
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %74 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %73, i32 0, i32 2
  %75 = load i32, i32* %74, align 8
  %76 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %77 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %76, i32 0, i32 1
  %78 = load %struct.TYPE_9__*, %struct.TYPE_9__** %77, align 8
  %79 = call %struct.TYPE_9__* @dbUnshareStringValue(i32 %72, i32 %75, %struct.TYPE_9__* %78)
  %80 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %81 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %80, i32 0, i32 1
  store %struct.TYPE_9__* %79, %struct.TYPE_9__** %81, align 8
  %82 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %83 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %82, i32 0, i32 1
  %84 = load %struct.TYPE_9__*, %struct.TYPE_9__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 8
  %87 = call i64 @sdslen(i32 %86)
  store i64 %87, i64* %7, align 8
  %88 = load i64, i64* %5, align 8
  %89 = load i64, i64* %7, align 8
  %90 = icmp ugt i64 %88, %89
  br i1 %90, label %91, label %103

91:                                               ; preds = %69
  %92 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %93 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %92, i32 0, i32 1
  %94 = load %struct.TYPE_9__*, %struct.TYPE_9__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 8
  %97 = load i64, i64* %5, align 8
  %98 = call i32 @sdsgrowzero(i32 %96, i64 %97)
  %99 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %100 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %99, i32 0, i32 1
  %101 = load %struct.TYPE_9__*, %struct.TYPE_9__** %100, align 8
  %102 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %101, i32 0, i32 1
  store i32 %98, i32* %102, align 8
  br label %142

103:                                              ; preds = %69
  %104 = load i64, i64* %5, align 8
  %105 = load i64, i64* %7, align 8
  %106 = icmp ult i64 %104, %105
  br i1 %106, label %107, label %141

107:                                              ; preds = %103
  %108 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %109 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %108, i32 0, i32 1
  %110 = load %struct.TYPE_9__*, %struct.TYPE_9__** %109, align 8
  %111 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 8
  %113 = load i64, i64* %5, align 8
  %114 = sub i64 %113, 1
  %115 = call i32 @sdsrange(i32 %112, i32 0, i64 %114)
  %116 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %117 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %116, i32 0, i32 1
  %118 = load %struct.TYPE_9__*, %struct.TYPE_9__** %117, align 8
  %119 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %118, i32 0, i32 1
  %120 = load i32, i32* %119, align 8
  %121 = call i64 @sdslen(i32 %120)
  %122 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %123 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %122, i32 0, i32 1
  %124 = load %struct.TYPE_9__*, %struct.TYPE_9__** %123, align 8
  %125 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %124, i32 0, i32 1
  %126 = load i32, i32* %125, align 8
  %127 = call i64 @sdsavail(i32 %126)
  %128 = icmp ult i64 %121, %127
  br i1 %128, label %129, label %140

129:                                              ; preds = %107
  %130 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %131 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %130, i32 0, i32 1
  %132 = load %struct.TYPE_9__*, %struct.TYPE_9__** %131, align 8
  %133 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %132, i32 0, i32 1
  %134 = load i32, i32* %133, align 8
  %135 = call i32 @sdsRemoveFreeSpace(i32 %134)
  %136 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %137 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %136, i32 0, i32 1
  %138 = load %struct.TYPE_9__*, %struct.TYPE_9__** %137, align 8
  %139 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %138, i32 0, i32 1
  store i32 %135, i32* %139, align 8
  br label %140

140:                                              ; preds = %129, %107
  br label %141

141:                                              ; preds = %140, %103
  br label %142

142:                                              ; preds = %141, %91
  br label %143

143:                                              ; preds = %142, %51
  %144 = load i32, i32* @REDISMODULE_OK, align 4
  store i32 %144, i32* %3, align 4
  br label %145

145:                                              ; preds = %143, %44, %34, %29, %14
  %146 = load i32, i32* %3, align 4
  ret i32 %146
}

declare dso_local %struct.TYPE_9__* @createObject(i64, i32) #1

declare dso_local i32 @sdsnewlen(i32*, i64) #1

declare dso_local i32 @setKey(i32, i32, %struct.TYPE_9__*) #1

declare dso_local i32 @decrRefCount(%struct.TYPE_9__*) #1

declare dso_local %struct.TYPE_9__* @dbUnshareStringValue(i32, i32, %struct.TYPE_9__*) #1

declare dso_local i64 @sdslen(i32) #1

declare dso_local i32 @sdsgrowzero(i32, i64) #1

declare dso_local i32 @sdsrange(i32, i32, i64) #1

declare dso_local i64 @sdsavail(i32) #1

declare dso_local i32 @sdsRemoveFreeSpace(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
