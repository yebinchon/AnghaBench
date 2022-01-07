; ModuleID = '/home/carl/AnghaBench/redis/src/extr_object.c_createEmbeddedStringObject.c'
source_filename = "/home/carl/AnghaBench/redis/src/extr_object.c_createEmbeddedStringObject.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32, i32, %struct.sdshdr8*, i32, i32 }
%struct.sdshdr8 = type { i64, i64, i8*, i32 }

@OBJ_STRING = common dso_local global i32 0, align 4
@OBJ_ENCODING_EMBSTR = common dso_local global i32 0, align 4
@server = common dso_local global %struct.TYPE_6__ zeroinitializer, align 4
@MAXMEMORY_FLAG_LFU = common dso_local global i32 0, align 4
@LFU_INIT_VAL = common dso_local global i32 0, align 4
@SDS_TYPE_8 = common dso_local global i32 0, align 4
@SDS_NOINIT = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_5__* @createEmbeddedStringObject(i8* %0, i64 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.TYPE_5__*, align 8
  %6 = alloca %struct.sdshdr8*, align 8
  store i8* %0, i8** %3, align 8
  store i64 %1, i64* %4, align 8
  %7 = load i64, i64* %4, align 8
  %8 = add i64 56, %7
  %9 = add i64 %8, 1
  %10 = trunc i64 %9 to i32
  %11 = call %struct.TYPE_5__* @zmalloc(i32 %10)
  store %struct.TYPE_5__* %11, %struct.TYPE_5__** %5, align 8
  %12 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i64 1
  %14 = bitcast %struct.TYPE_5__* %13 to i8*
  %15 = bitcast i8* %14 to %struct.sdshdr8*
  store %struct.sdshdr8* %15, %struct.sdshdr8** %6, align 8
  %16 = load i32, i32* @OBJ_STRING, align 4
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 4
  store i32 %16, i32* %18, align 4
  %19 = load i32, i32* @OBJ_ENCODING_EMBSTR, align 4
  %20 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 3
  store i32 %19, i32* %21, align 8
  %22 = load %struct.sdshdr8*, %struct.sdshdr8** %6, align 8
  %23 = getelementptr inbounds %struct.sdshdr8, %struct.sdshdr8* %22, i64 1
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 2
  store %struct.sdshdr8* %23, %struct.sdshdr8** %25, align 8
  %26 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 0
  store i32 1, i32* %27, align 8
  %28 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @server, i32 0, i32 0), align 4
  %29 = load i32, i32* @MAXMEMORY_FLAG_LFU, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %39

32:                                               ; preds = %2
  %33 = call i32 (...) @LFUGetTimeInMinutes()
  %34 = shl i32 %33, 8
  %35 = load i32, i32* @LFU_INIT_VAL, align 4
  %36 = or i32 %34, %35
  %37 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 1
  store i32 %36, i32* %38, align 4
  br label %43

39:                                               ; preds = %2
  %40 = call i32 (...) @LRU_CLOCK()
  %41 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 1
  store i32 %40, i32* %42, align 4
  br label %43

43:                                               ; preds = %39, %32
  %44 = load i64, i64* %4, align 8
  %45 = load %struct.sdshdr8*, %struct.sdshdr8** %6, align 8
  %46 = getelementptr inbounds %struct.sdshdr8, %struct.sdshdr8* %45, i32 0, i32 0
  store i64 %44, i64* %46, align 8
  %47 = load i64, i64* %4, align 8
  %48 = load %struct.sdshdr8*, %struct.sdshdr8** %6, align 8
  %49 = getelementptr inbounds %struct.sdshdr8, %struct.sdshdr8* %48, i32 0, i32 1
  store i64 %47, i64* %49, align 8
  %50 = load i32, i32* @SDS_TYPE_8, align 4
  %51 = load %struct.sdshdr8*, %struct.sdshdr8** %6, align 8
  %52 = getelementptr inbounds %struct.sdshdr8, %struct.sdshdr8* %51, i32 0, i32 3
  store i32 %50, i32* %52, align 8
  %53 = load i8*, i8** %3, align 8
  %54 = load i8*, i8** @SDS_NOINIT, align 8
  %55 = icmp eq i8* %53, %54
  br i1 %55, label %56, label %62

56:                                               ; preds = %43
  %57 = load %struct.sdshdr8*, %struct.sdshdr8** %6, align 8
  %58 = getelementptr inbounds %struct.sdshdr8, %struct.sdshdr8* %57, i32 0, i32 2
  %59 = load i8*, i8** %58, align 8
  %60 = load i64, i64* %4, align 8
  %61 = getelementptr inbounds i8, i8* %59, i64 %60
  store i8 0, i8* %61, align 1
  br label %85

62:                                               ; preds = %43
  %63 = load i8*, i8** %3, align 8
  %64 = icmp ne i8* %63, null
  br i1 %64, label %65, label %77

65:                                               ; preds = %62
  %66 = load %struct.sdshdr8*, %struct.sdshdr8** %6, align 8
  %67 = getelementptr inbounds %struct.sdshdr8, %struct.sdshdr8* %66, i32 0, i32 2
  %68 = load i8*, i8** %67, align 8
  %69 = load i8*, i8** %3, align 8
  %70 = load i64, i64* %4, align 8
  %71 = call i32 @memcpy(i8* %68, i8* %69, i64 %70)
  %72 = load %struct.sdshdr8*, %struct.sdshdr8** %6, align 8
  %73 = getelementptr inbounds %struct.sdshdr8, %struct.sdshdr8* %72, i32 0, i32 2
  %74 = load i8*, i8** %73, align 8
  %75 = load i64, i64* %4, align 8
  %76 = getelementptr inbounds i8, i8* %74, i64 %75
  store i8 0, i8* %76, align 1
  br label %84

77:                                               ; preds = %62
  %78 = load %struct.sdshdr8*, %struct.sdshdr8** %6, align 8
  %79 = getelementptr inbounds %struct.sdshdr8, %struct.sdshdr8* %78, i32 0, i32 2
  %80 = load i8*, i8** %79, align 8
  %81 = load i64, i64* %4, align 8
  %82 = add i64 %81, 1
  %83 = call i32 @memset(i8* %80, i32 0, i64 %82)
  br label %84

84:                                               ; preds = %77, %65
  br label %85

85:                                               ; preds = %84, %56
  %86 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  ret %struct.TYPE_5__* %86
}

declare dso_local %struct.TYPE_5__* @zmalloc(i32) #1

declare dso_local i32 @LFUGetTimeInMinutes(...) #1

declare dso_local i32 @LRU_CLOCK(...) #1

declare dso_local i32 @memcpy(i8*, i8*, i64) #1

declare dso_local i32 @memset(i8*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
