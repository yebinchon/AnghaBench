; ModuleID = '/home/carl/AnghaBench/redis/src/extr_object.c_compareStringObjectsWithFlags.c'
source_filename = "/home/carl/AnghaBench/redis/src/extr_object.c_compareStringObjectsWithFlags.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64, i8* }

@OBJ_STRING = common dso_local global i64 0, align 8
@REDIS_COMPARE_COLL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @compareStringObjectsWithFlags(%struct.TYPE_6__* %0, %struct.TYPE_6__* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_6__*, align 8
  %6 = alloca %struct.TYPE_6__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca [128 x i8], align 16
  %9 = alloca [128 x i8], align 16
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %5, align 8
  store %struct.TYPE_6__* %1, %struct.TYPE_6__** %6, align 8
  store i32 %2, i32* %7, align 4
  %16 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %17 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @OBJ_STRING, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %28

22:                                               ; preds = %3
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @OBJ_STRING, align 8
  %27 = icmp eq i64 %25, %26
  br label %28

28:                                               ; preds = %22, %3
  %29 = phi i1 [ false, %3 ], [ %27, %22 ]
  %30 = zext i1 %29 to i32
  %31 = call i32 @serverAssertWithInfo(i32* null, %struct.TYPE_6__* %16, i32 %30)
  %32 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %33 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %34 = icmp eq %struct.TYPE_6__* %32, %33
  br i1 %34, label %35, label %36

35:                                               ; preds = %28
  store i32 0, i32* %4, align 4
  br label %104

36:                                               ; preds = %28
  %37 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %38 = call i64 @sdsEncodedObject(%struct.TYPE_6__* %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %46

40:                                               ; preds = %36
  %41 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 1
  %43 = load i8*, i8** %42, align 8
  store i8* %43, i8** %10, align 8
  %44 = load i8*, i8** %10, align 8
  %45 = call i64 @sdslen(i8* %44)
  store i64 %45, i64* %12, align 8
  br label %54

46:                                               ; preds = %36
  %47 = getelementptr inbounds [128 x i8], [128 x i8]* %8, i64 0, i64 0
  %48 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 1
  %50 = load i8*, i8** %49, align 8
  %51 = ptrtoint i8* %50 to i64
  %52 = call i64 @ll2string(i8* %47, i32 128, i64 %51)
  store i64 %52, i64* %12, align 8
  %53 = getelementptr inbounds [128 x i8], [128 x i8]* %8, i64 0, i64 0
  store i8* %53, i8** %10, align 8
  br label %54

54:                                               ; preds = %46, %40
  %55 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %56 = call i64 @sdsEncodedObject(%struct.TYPE_6__* %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %64

58:                                               ; preds = %54
  %59 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %59, i32 0, i32 1
  %61 = load i8*, i8** %60, align 8
  store i8* %61, i8** %11, align 8
  %62 = load i8*, i8** %11, align 8
  %63 = call i64 @sdslen(i8* %62)
  store i64 %63, i64* %13, align 8
  br label %72

64:                                               ; preds = %54
  %65 = getelementptr inbounds [128 x i8], [128 x i8]* %9, i64 0, i64 0
  %66 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %67 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %66, i32 0, i32 1
  %68 = load i8*, i8** %67, align 8
  %69 = ptrtoint i8* %68 to i64
  %70 = call i64 @ll2string(i8* %65, i32 128, i64 %69)
  store i64 %70, i64* %13, align 8
  %71 = getelementptr inbounds [128 x i8], [128 x i8]* %9, i64 0, i64 0
  store i8* %71, i8** %11, align 8
  br label %72

72:                                               ; preds = %64, %58
  %73 = load i32, i32* %7, align 4
  %74 = load i32, i32* @REDIS_COMPARE_COLL, align 4
  %75 = and i32 %73, %74
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %81

77:                                               ; preds = %72
  %78 = load i8*, i8** %10, align 8
  %79 = load i8*, i8** %11, align 8
  %80 = call i32 @strcoll(i8* %78, i8* %79)
  store i32 %80, i32* %4, align 4
  br label %104

81:                                               ; preds = %72
  %82 = load i64, i64* %12, align 8
  %83 = load i64, i64* %13, align 8
  %84 = icmp ult i64 %82, %83
  br i1 %84, label %85, label %87

85:                                               ; preds = %81
  %86 = load i64, i64* %12, align 8
  br label %89

87:                                               ; preds = %81
  %88 = load i64, i64* %13, align 8
  br label %89

89:                                               ; preds = %87, %85
  %90 = phi i64 [ %86, %85 ], [ %88, %87 ]
  store i64 %90, i64* %14, align 8
  %91 = load i8*, i8** %10, align 8
  %92 = load i8*, i8** %11, align 8
  %93 = load i64, i64* %14, align 8
  %94 = call i32 @memcmp(i8* %91, i8* %92, i64 %93)
  store i32 %94, i32* %15, align 4
  %95 = load i32, i32* %15, align 4
  %96 = icmp eq i32 %95, 0
  br i1 %96, label %97, label %102

97:                                               ; preds = %89
  %98 = load i64, i64* %12, align 8
  %99 = load i64, i64* %13, align 8
  %100 = sub i64 %98, %99
  %101 = trunc i64 %100 to i32
  store i32 %101, i32* %4, align 4
  br label %104

102:                                              ; preds = %89
  %103 = load i32, i32* %15, align 4
  store i32 %103, i32* %4, align 4
  br label %104

104:                                              ; preds = %102, %97, %77, %35
  %105 = load i32, i32* %4, align 4
  ret i32 %105
}

declare dso_local i32 @serverAssertWithInfo(i32*, %struct.TYPE_6__*, i32) #1

declare dso_local i64 @sdsEncodedObject(%struct.TYPE_6__*) #1

declare dso_local i64 @sdslen(i8*) #1

declare dso_local i64 @ll2string(i8*, i32, i64) #1

declare dso_local i32 @strcoll(i8*, i8*) #1

declare dso_local i32 @memcmp(i8*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
