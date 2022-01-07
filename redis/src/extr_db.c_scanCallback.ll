; ModuleID = '/home/carl/AnghaBench/redis/src/extr_db.c_scanCallback.c'
source_filename = "/home/carl/AnghaBench/redis/src/extr_db.c_scanCallback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64 }

@OBJ_SET = common dso_local global i64 0, align 8
@OBJ_HASH = common dso_local global i64 0, align 8
@OBJ_ZSET = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [35 x i8] c"Type not handled in SCAN callback.\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @scanCallback(i8* %0, i32* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i8**, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_5__*, align 8
  %8 = alloca %struct.TYPE_5__*, align 8
  %9 = alloca %struct.TYPE_5__*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  store i32* %1, i32** %4, align 8
  %15 = load i8*, i8** %3, align 8
  %16 = bitcast i8* %15 to i8**
  store i8** %16, i8*** %5, align 8
  %17 = load i8**, i8*** %5, align 8
  %18 = getelementptr inbounds i8*, i8** %17, i64 0
  %19 = load i8*, i8** %18, align 8
  %20 = bitcast i8* %19 to i32*
  store i32* %20, i32** %6, align 8
  %21 = load i8**, i8*** %5, align 8
  %22 = getelementptr inbounds i8*, i8** %21, i64 1
  %23 = load i8*, i8** %22, align 8
  %24 = bitcast i8* %23 to %struct.TYPE_5__*
  store %struct.TYPE_5__* %24, %struct.TYPE_5__** %7, align 8
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %9, align 8
  %25 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %26 = icmp eq %struct.TYPE_5__* %25, null
  br i1 %26, label %27, label %34

27:                                               ; preds = %2
  %28 = load i32*, i32** %4, align 8
  %29 = call i64 @dictGetKey(i32* %28)
  store i64 %29, i64* %10, align 8
  %30 = load i64, i64* %10, align 8
  %31 = load i64, i64* %10, align 8
  %32 = call i32 @sdslen(i64 %31)
  %33 = call %struct.TYPE_5__* @createStringObject(i64 %30, i32 %32)
  store %struct.TYPE_5__* %33, %struct.TYPE_5__** %8, align 8
  br label %89

34:                                               ; preds = %2
  %35 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @OBJ_SET, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %40, label %47

40:                                               ; preds = %34
  %41 = load i32*, i32** %4, align 8
  %42 = call i64 @dictGetKey(i32* %41)
  store i64 %42, i64* %11, align 8
  %43 = load i64, i64* %11, align 8
  %44 = load i64, i64* %11, align 8
  %45 = call i32 @sdslen(i64 %44)
  %46 = call %struct.TYPE_5__* @createStringObject(i64 %43, i32 %45)
  store %struct.TYPE_5__* %46, %struct.TYPE_5__** %8, align 8
  br label %88

47:                                               ; preds = %34
  %48 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* @OBJ_HASH, align 8
  %52 = icmp eq i64 %50, %51
  br i1 %52, label %53, label %66

53:                                               ; preds = %47
  %54 = load i32*, i32** %4, align 8
  %55 = call i64 @dictGetKey(i32* %54)
  store i64 %55, i64* %12, align 8
  %56 = load i32*, i32** %4, align 8
  %57 = call i64 @dictGetVal(i32* %56)
  store i64 %57, i64* %13, align 8
  %58 = load i64, i64* %12, align 8
  %59 = load i64, i64* %12, align 8
  %60 = call i32 @sdslen(i64 %59)
  %61 = call %struct.TYPE_5__* @createStringObject(i64 %58, i32 %60)
  store %struct.TYPE_5__* %61, %struct.TYPE_5__** %8, align 8
  %62 = load i64, i64* %13, align 8
  %63 = load i64, i64* %13, align 8
  %64 = call i32 @sdslen(i64 %63)
  %65 = call %struct.TYPE_5__* @createStringObject(i64 %62, i32 %64)
  store %struct.TYPE_5__* %65, %struct.TYPE_5__** %9, align 8
  br label %87

66:                                               ; preds = %47
  %67 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %68 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = load i64, i64* @OBJ_ZSET, align 8
  %71 = icmp eq i64 %69, %70
  br i1 %71, label %72, label %84

72:                                               ; preds = %66
  %73 = load i32*, i32** %4, align 8
  %74 = call i64 @dictGetKey(i32* %73)
  store i64 %74, i64* %14, align 8
  %75 = load i64, i64* %14, align 8
  %76 = load i64, i64* %14, align 8
  %77 = call i32 @sdslen(i64 %76)
  %78 = call %struct.TYPE_5__* @createStringObject(i64 %75, i32 %77)
  store %struct.TYPE_5__* %78, %struct.TYPE_5__** %8, align 8
  %79 = load i32*, i32** %4, align 8
  %80 = call i64 @dictGetVal(i32* %79)
  %81 = inttoptr i64 %80 to double*
  %82 = load double, double* %81, align 8
  %83 = call %struct.TYPE_5__* @createStringObjectFromLongDouble(double %82, i32 0)
  store %struct.TYPE_5__* %83, %struct.TYPE_5__** %9, align 8
  br label %86

84:                                               ; preds = %66
  %85 = call i32 @serverPanic(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  br label %86

86:                                               ; preds = %84, %72
  br label %87

87:                                               ; preds = %86, %53
  br label %88

88:                                               ; preds = %87, %40
  br label %89

89:                                               ; preds = %88, %27
  %90 = load i32*, i32** %6, align 8
  %91 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %92 = call i32 @listAddNodeTail(i32* %90, %struct.TYPE_5__* %91)
  %93 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %94 = icmp ne %struct.TYPE_5__* %93, null
  br i1 %94, label %95, label %99

95:                                               ; preds = %89
  %96 = load i32*, i32** %6, align 8
  %97 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %98 = call i32 @listAddNodeTail(i32* %96, %struct.TYPE_5__* %97)
  br label %99

99:                                               ; preds = %95, %89
  ret void
}

declare dso_local i64 @dictGetKey(i32*) #1

declare dso_local %struct.TYPE_5__* @createStringObject(i64, i32) #1

declare dso_local i32 @sdslen(i64) #1

declare dso_local i64 @dictGetVal(i32*) #1

declare dso_local %struct.TYPE_5__* @createStringObjectFromLongDouble(double, i32) #1

declare dso_local i32 @serverPanic(i8*) #1

declare dso_local i32 @listAddNodeTail(i32*, %struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
