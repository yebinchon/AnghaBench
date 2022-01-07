; ModuleID = '/home/carl/AnghaBench/redis/src/extr_t_set.c_setTypeAdd.c'
source_filename = "/home/carl/AnghaBench/redis/src/extr_t_set.c_setTypeAdd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64 }
%struct.TYPE_5__ = type { i64, i32* }

@OBJ_ENCODING_HT = common dso_local global i64 0, align 8
@OBJ_ENCODING_INTSET = common dso_local global i64 0, align 8
@C_OK = common dso_local global i64 0, align 8
@server = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8
@DICT_OK = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [21 x i8] c"Unknown set encoding\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @setTypeAdd(%struct.TYPE_5__* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %11 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @OBJ_ENCODING_HT, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %15, label %34

15:                                               ; preds = %2
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 1
  %18 = load i32*, i32** %17, align 8
  store i32* %18, i32** %7, align 8
  %19 = load i32*, i32** %7, align 8
  %20 = load i32, i32* %5, align 4
  %21 = call i32* @dictAddRaw(i32* %19, i32 %20, i32* null)
  store i32* %21, i32** %8, align 8
  %22 = load i32*, i32** %8, align 8
  %23 = icmp ne i32* %22, null
  br i1 %23, label %24, label %33

24:                                               ; preds = %15
  %25 = load i32*, i32** %7, align 8
  %26 = load i32*, i32** %8, align 8
  %27 = load i32, i32* %5, align 4
  %28 = call i32 @sdsdup(i32 %27)
  %29 = call i32 @dictSetKey(i32* %25, i32* %26, i32 %28)
  %30 = load i32*, i32** %7, align 8
  %31 = load i32*, i32** %8, align 8
  %32 = call i32 @dictSetVal(i32* %30, i32* %31, i32* null)
  store i32 1, i32* %3, align 4
  br label %87

33:                                               ; preds = %15
  br label %86

34:                                               ; preds = %2
  %35 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @OBJ_ENCODING_INTSET, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %40, label %83

40:                                               ; preds = %34
  %41 = load i32, i32* %5, align 4
  %42 = call i64 @isSdsRepresentableAsLongLong(i32 %41, i64* %6)
  %43 = load i64, i64* @C_OK, align 8
  %44 = icmp eq i64 %42, %43
  br i1 %44, label %45, label %68

45:                                               ; preds = %40
  store i64 0, i64* %9, align 8
  %46 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 1
  %48 = load i32*, i32** %47, align 8
  %49 = load i64, i64* %6, align 8
  %50 = call i32* @intsetAdd(i32* %48, i64 %49, i64* %9)
  %51 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i32 0, i32 1
  store i32* %50, i32** %52, align 8
  %53 = load i64, i64* %9, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %67

55:                                               ; preds = %45
  %56 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %57 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %56, i32 0, i32 1
  %58 = load i32*, i32** %57, align 8
  %59 = call i64 @intsetLen(i32* %58)
  %60 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @server, i32 0, i32 0), align 8
  %61 = icmp sgt i64 %59, %60
  br i1 %61, label %62, label %66

62:                                               ; preds = %55
  %63 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %64 = load i64, i64* @OBJ_ENCODING_HT, align 8
  %65 = call i32 @setTypeConvert(%struct.TYPE_5__* %63, i64 %64)
  br label %66

66:                                               ; preds = %62, %55
  store i32 1, i32* %3, align 4
  br label %87

67:                                               ; preds = %45
  br label %82

68:                                               ; preds = %40
  %69 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %70 = load i64, i64* @OBJ_ENCODING_HT, align 8
  %71 = call i32 @setTypeConvert(%struct.TYPE_5__* %69, i64 %70)
  %72 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %73 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %72, i32 0, i32 1
  %74 = load i32*, i32** %73, align 8
  %75 = load i32, i32* %5, align 4
  %76 = call i32 @sdsdup(i32 %75)
  %77 = call i64 @dictAdd(i32* %74, i32 %76, i32* null)
  %78 = load i64, i64* @DICT_OK, align 8
  %79 = icmp eq i64 %77, %78
  %80 = zext i1 %79 to i32
  %81 = call i32 @serverAssert(i32 %80)
  store i32 1, i32* %3, align 4
  br label %87

82:                                               ; preds = %67
  br label %85

83:                                               ; preds = %34
  %84 = call i32 @serverPanic(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  br label %85

85:                                               ; preds = %83, %82
  br label %86

86:                                               ; preds = %85, %33
  store i32 0, i32* %3, align 4
  br label %87

87:                                               ; preds = %86, %68, %66, %24
  %88 = load i32, i32* %3, align 4
  ret i32 %88
}

declare dso_local i32* @dictAddRaw(i32*, i32, i32*) #1

declare dso_local i32 @dictSetKey(i32*, i32*, i32) #1

declare dso_local i32 @sdsdup(i32) #1

declare dso_local i32 @dictSetVal(i32*, i32*, i32*) #1

declare dso_local i64 @isSdsRepresentableAsLongLong(i32, i64*) #1

declare dso_local i32* @intsetAdd(i32*, i64, i64*) #1

declare dso_local i64 @intsetLen(i32*) #1

declare dso_local i32 @setTypeConvert(%struct.TYPE_5__*, i64) #1

declare dso_local i32 @serverAssert(i32) #1

declare dso_local i64 @dictAdd(i32*, i32, i32*) #1

declare dso_local i32 @serverPanic(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
