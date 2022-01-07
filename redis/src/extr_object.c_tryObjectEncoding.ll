; ModuleID = '/home/carl/AnghaBench/redis/src/extr_object.c_tryObjectEncoding.c'
source_filename = "/home/carl/AnghaBench/redis/src/extr_object.c_tryObjectEncoding.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i64, i32 }
%struct.TYPE_14__ = type { %struct.TYPE_13__** }
%struct.TYPE_13__ = type { i64, i32, i64, i8* }

@OBJ_STRING = common dso_local global i64 0, align 8
@server = common dso_local global %struct.TYPE_15__ zeroinitializer, align 8
@MAXMEMORY_FLAG_NO_SHARED_INTEGERS = common dso_local global i32 0, align 4
@OBJ_SHARED_INTEGERS = common dso_local global i64 0, align 8
@shared = common dso_local global %struct.TYPE_14__ zeroinitializer, align 8
@OBJ_ENCODING_RAW = common dso_local global i64 0, align 8
@OBJ_ENCODING_INT = common dso_local global i64 0, align 8
@OBJ_ENCODING_EMBSTR = common dso_local global i64 0, align 8
@OBJ_ENCODING_EMBSTR_SIZE_LIMIT = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_13__* @tryObjectEncoding(%struct.TYPE_13__* %0) #0 {
  %2 = alloca %struct.TYPE_13__*, align 8
  %3 = alloca %struct.TYPE_13__*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.TYPE_13__*, align 8
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %3, align 8
  %8 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %9 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %8, i32 0, i32 3
  %10 = load i8*, i8** %9, align 8
  store i8* %10, i8** %5, align 8
  %11 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %12 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %13 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @OBJ_STRING, align 8
  %16 = icmp eq i64 %14, %15
  %17 = zext i1 %16 to i32
  %18 = call i32 @serverAssertWithInfo(i32* null, %struct.TYPE_13__* %11, i32 %17)
  %19 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %20 = call i32 @sdsEncodedObject(%struct.TYPE_13__* %19)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %24, label %22

22:                                               ; preds = %1
  %23 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  store %struct.TYPE_13__* %23, %struct.TYPE_13__** %2, align 8
  br label %125

24:                                               ; preds = %1
  %25 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %26 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 8
  %28 = icmp sgt i32 %27, 1
  br i1 %28, label %29, label %31

29:                                               ; preds = %24
  %30 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  store %struct.TYPE_13__* %30, %struct.TYPE_13__** %2, align 8
  br label %125

31:                                               ; preds = %24
  %32 = load i8*, i8** %5, align 8
  %33 = call i64 @sdslen(i8* %32)
  store i64 %33, i64* %6, align 8
  %34 = load i64, i64* %6, align 8
  %35 = icmp ule i64 %34, 20
  br i1 %35, label %36, label %101

36:                                               ; preds = %31
  %37 = load i8*, i8** %5, align 8
  %38 = load i64, i64* %6, align 8
  %39 = call i64 @string2l(i8* %37, i64 %38, i64* %4)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %101

41:                                               ; preds = %36
  %42 = load i64, i64* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @server, i32 0, i32 0), align 8
  %43 = icmp eq i64 %42, 0
  br i1 %43, label %49, label %44

44:                                               ; preds = %41
  %45 = load i32, i32* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @server, i32 0, i32 1), align 8
  %46 = load i32, i32* @MAXMEMORY_FLAG_NO_SHARED_INTEGERS, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %68, label %49

49:                                               ; preds = %44, %41
  %50 = load i64, i64* %4, align 8
  %51 = icmp sge i64 %50, 0
  br i1 %51, label %52, label %68

52:                                               ; preds = %49
  %53 = load i64, i64* %4, align 8
  %54 = load i64, i64* @OBJ_SHARED_INTEGERS, align 8
  %55 = icmp slt i64 %53, %54
  br i1 %55, label %56, label %68

56:                                               ; preds = %52
  %57 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %58 = call i32 @decrRefCount(%struct.TYPE_13__* %57)
  %59 = load %struct.TYPE_13__**, %struct.TYPE_13__*** getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @shared, i32 0, i32 0), align 8
  %60 = load i64, i64* %4, align 8
  %61 = getelementptr inbounds %struct.TYPE_13__*, %struct.TYPE_13__** %59, i64 %60
  %62 = load %struct.TYPE_13__*, %struct.TYPE_13__** %61, align 8
  %63 = call i32 @incrRefCount(%struct.TYPE_13__* %62)
  %64 = load %struct.TYPE_13__**, %struct.TYPE_13__*** getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @shared, i32 0, i32 0), align 8
  %65 = load i64, i64* %4, align 8
  %66 = getelementptr inbounds %struct.TYPE_13__*, %struct.TYPE_13__** %64, i64 %65
  %67 = load %struct.TYPE_13__*, %struct.TYPE_13__** %66, align 8
  store %struct.TYPE_13__* %67, %struct.TYPE_13__** %2, align 8
  br label %125

68:                                               ; preds = %52, %49, %44
  %69 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %70 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %69, i32 0, i32 2
  %71 = load i64, i64* %70, align 8
  %72 = load i64, i64* @OBJ_ENCODING_RAW, align 8
  %73 = icmp eq i64 %71, %72
  br i1 %73, label %74, label %87

74:                                               ; preds = %68
  %75 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %76 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %75, i32 0, i32 3
  %77 = load i8*, i8** %76, align 8
  %78 = call i32 @sdsfree(i8* %77)
  %79 = load i64, i64* @OBJ_ENCODING_INT, align 8
  %80 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %81 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %80, i32 0, i32 2
  store i64 %79, i64* %81, align 8
  %82 = load i64, i64* %4, align 8
  %83 = inttoptr i64 %82 to i8*
  %84 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %85 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %84, i32 0, i32 3
  store i8* %83, i8** %85, align 8
  %86 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  store %struct.TYPE_13__* %86, %struct.TYPE_13__** %2, align 8
  br label %125

87:                                               ; preds = %68
  %88 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %89 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %88, i32 0, i32 2
  %90 = load i64, i64* %89, align 8
  %91 = load i64, i64* @OBJ_ENCODING_EMBSTR, align 8
  %92 = icmp eq i64 %90, %91
  br i1 %92, label %93, label %98

93:                                               ; preds = %87
  %94 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %95 = call i32 @decrRefCount(%struct.TYPE_13__* %94)
  %96 = load i64, i64* %4, align 8
  %97 = call %struct.TYPE_13__* @createStringObjectFromLongLongForValue(i64 %96)
  store %struct.TYPE_13__* %97, %struct.TYPE_13__** %2, align 8
  br label %125

98:                                               ; preds = %87
  br label %99

99:                                               ; preds = %98
  br label %100

100:                                              ; preds = %99
  br label %101

101:                                              ; preds = %100, %36, %31
  %102 = load i64, i64* %6, align 8
  %103 = load i64, i64* @OBJ_ENCODING_EMBSTR_SIZE_LIMIT, align 8
  %104 = icmp ule i64 %102, %103
  br i1 %104, label %105, label %121

105:                                              ; preds = %101
  %106 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %107 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %106, i32 0, i32 2
  %108 = load i64, i64* %107, align 8
  %109 = load i64, i64* @OBJ_ENCODING_EMBSTR, align 8
  %110 = icmp eq i64 %108, %109
  br i1 %110, label %111, label %113

111:                                              ; preds = %105
  %112 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  store %struct.TYPE_13__* %112, %struct.TYPE_13__** %2, align 8
  br label %125

113:                                              ; preds = %105
  %114 = load i8*, i8** %5, align 8
  %115 = load i8*, i8** %5, align 8
  %116 = call i64 @sdslen(i8* %115)
  %117 = call %struct.TYPE_13__* @createEmbeddedStringObject(i8* %114, i64 %116)
  store %struct.TYPE_13__* %117, %struct.TYPE_13__** %7, align 8
  %118 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %119 = call i32 @decrRefCount(%struct.TYPE_13__* %118)
  %120 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  store %struct.TYPE_13__* %120, %struct.TYPE_13__** %2, align 8
  br label %125

121:                                              ; preds = %101
  %122 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %123 = call i32 @trimStringObjectIfNeeded(%struct.TYPE_13__* %122)
  %124 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  store %struct.TYPE_13__* %124, %struct.TYPE_13__** %2, align 8
  br label %125

125:                                              ; preds = %121, %113, %111, %93, %74, %56, %29, %22
  %126 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  ret %struct.TYPE_13__* %126
}

declare dso_local i32 @serverAssertWithInfo(i32*, %struct.TYPE_13__*, i32) #1

declare dso_local i32 @sdsEncodedObject(%struct.TYPE_13__*) #1

declare dso_local i64 @sdslen(i8*) #1

declare dso_local i64 @string2l(i8*, i64, i64*) #1

declare dso_local i32 @decrRefCount(%struct.TYPE_13__*) #1

declare dso_local i32 @incrRefCount(%struct.TYPE_13__*) #1

declare dso_local i32 @sdsfree(i8*) #1

declare dso_local %struct.TYPE_13__* @createStringObjectFromLongLongForValue(i64) #1

declare dso_local %struct.TYPE_13__* @createEmbeddedStringObject(i8*, i64) #1

declare dso_local i32 @trimStringObjectIfNeeded(%struct.TYPE_13__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
