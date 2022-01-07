; ModuleID = '/home/carl/AnghaBench/redis/src/extr_rdb.c_rdbSaveObjectType.c'
source_filename = "/home/carl/AnghaBench/redis/src/extr_rdb.c_rdbSaveObjectType.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32 }

@RDB_TYPE_STRING = common dso_local global i32 0, align 4
@OBJ_ENCODING_QUICKLIST = common dso_local global i32 0, align 4
@RDB_TYPE_LIST_QUICKLIST = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"Unknown list encoding\00", align 1
@OBJ_ENCODING_INTSET = common dso_local global i32 0, align 4
@RDB_TYPE_SET_INTSET = common dso_local global i32 0, align 4
@OBJ_ENCODING_HT = common dso_local global i32 0, align 4
@RDB_TYPE_SET = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"Unknown set encoding\00", align 1
@OBJ_ENCODING_ZIPLIST = common dso_local global i32 0, align 4
@RDB_TYPE_ZSET_ZIPLIST = common dso_local global i32 0, align 4
@OBJ_ENCODING_SKIPLIST = common dso_local global i32 0, align 4
@RDB_TYPE_ZSET_2 = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [28 x i8] c"Unknown sorted set encoding\00", align 1
@RDB_TYPE_HASH_ZIPLIST = common dso_local global i32 0, align 4
@RDB_TYPE_HASH = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [22 x i8] c"Unknown hash encoding\00", align 1
@RDB_TYPE_STREAM_LISTPACKS = common dso_local global i32 0, align 4
@RDB_TYPE_MODULE_2 = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [20 x i8] c"Unknown object type\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rdbSaveObjectType(i32* %0, %struct.TYPE_3__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_3__*, align 8
  store i32* %0, i32** %4, align 8
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %5, align 8
  %6 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %7 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  switch i32 %8, label %106 [
    i32 129, label %9
    i32 133, label %13
    i32 131, label %26
    i32 128, label %50
    i32 134, label %74
    i32 130, label %98
    i32 132, label %102
  ]

9:                                                ; preds = %2
  %10 = load i32*, i32** %4, align 8
  %11 = load i32, i32* @RDB_TYPE_STRING, align 4
  %12 = call i32 @rdbSaveType(i32* %10, i32 %11)
  store i32 %12, i32* %3, align 4
  br label %109

13:                                               ; preds = %2
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @OBJ_ENCODING_QUICKLIST, align 4
  %18 = icmp eq i32 %16, %17
  br i1 %18, label %19, label %23

19:                                               ; preds = %13
  %20 = load i32*, i32** %4, align 8
  %21 = load i32, i32* @RDB_TYPE_LIST_QUICKLIST, align 4
  %22 = call i32 @rdbSaveType(i32* %20, i32 %21)
  store i32 %22, i32* %3, align 4
  br label %109

23:                                               ; preds = %13
  %24 = call i32 @serverPanic(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  br label %25

25:                                               ; preds = %23
  br label %26

26:                                               ; preds = %2, %25
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @OBJ_ENCODING_INTSET, align 4
  %31 = icmp eq i32 %29, %30
  br i1 %31, label %32, label %36

32:                                               ; preds = %26
  %33 = load i32*, i32** %4, align 8
  %34 = load i32, i32* @RDB_TYPE_SET_INTSET, align 4
  %35 = call i32 @rdbSaveType(i32* %33, i32 %34)
  store i32 %35, i32* %3, align 4
  br label %109

36:                                               ; preds = %26
  %37 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* @OBJ_ENCODING_HT, align 4
  %41 = icmp eq i32 %39, %40
  br i1 %41, label %42, label %46

42:                                               ; preds = %36
  %43 = load i32*, i32** %4, align 8
  %44 = load i32, i32* @RDB_TYPE_SET, align 4
  %45 = call i32 @rdbSaveType(i32* %43, i32 %44)
  store i32 %45, i32* %3, align 4
  br label %109

46:                                               ; preds = %36
  %47 = call i32 @serverPanic(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  br label %48

48:                                               ; preds = %46
  br label %49

49:                                               ; preds = %48
  br label %50

50:                                               ; preds = %2, %49
  %51 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* @OBJ_ENCODING_ZIPLIST, align 4
  %55 = icmp eq i32 %53, %54
  br i1 %55, label %56, label %60

56:                                               ; preds = %50
  %57 = load i32*, i32** %4, align 8
  %58 = load i32, i32* @RDB_TYPE_ZSET_ZIPLIST, align 4
  %59 = call i32 @rdbSaveType(i32* %57, i32 %58)
  store i32 %59, i32* %3, align 4
  br label %109

60:                                               ; preds = %50
  %61 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* @OBJ_ENCODING_SKIPLIST, align 4
  %65 = icmp eq i32 %63, %64
  br i1 %65, label %66, label %70

66:                                               ; preds = %60
  %67 = load i32*, i32** %4, align 8
  %68 = load i32, i32* @RDB_TYPE_ZSET_2, align 4
  %69 = call i32 @rdbSaveType(i32* %67, i32 %68)
  store i32 %69, i32* %3, align 4
  br label %109

70:                                               ; preds = %60
  %71 = call i32 @serverPanic(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0))
  br label %72

72:                                               ; preds = %70
  br label %73

73:                                               ; preds = %72
  br label %74

74:                                               ; preds = %2, %73
  %75 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %76 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = load i32, i32* @OBJ_ENCODING_ZIPLIST, align 4
  %79 = icmp eq i32 %77, %78
  br i1 %79, label %80, label %84

80:                                               ; preds = %74
  %81 = load i32*, i32** %4, align 8
  %82 = load i32, i32* @RDB_TYPE_HASH_ZIPLIST, align 4
  %83 = call i32 @rdbSaveType(i32* %81, i32 %82)
  store i32 %83, i32* %3, align 4
  br label %109

84:                                               ; preds = %74
  %85 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %86 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 4
  %88 = load i32, i32* @OBJ_ENCODING_HT, align 4
  %89 = icmp eq i32 %87, %88
  br i1 %89, label %90, label %94

90:                                               ; preds = %84
  %91 = load i32*, i32** %4, align 8
  %92 = load i32, i32* @RDB_TYPE_HASH, align 4
  %93 = call i32 @rdbSaveType(i32* %91, i32 %92)
  store i32 %93, i32* %3, align 4
  br label %109

94:                                               ; preds = %84
  %95 = call i32 @serverPanic(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0))
  br label %96

96:                                               ; preds = %94
  br label %97

97:                                               ; preds = %96
  br label %98

98:                                               ; preds = %2, %97
  %99 = load i32*, i32** %4, align 8
  %100 = load i32, i32* @RDB_TYPE_STREAM_LISTPACKS, align 4
  %101 = call i32 @rdbSaveType(i32* %99, i32 %100)
  store i32 %101, i32* %3, align 4
  br label %109

102:                                              ; preds = %2
  %103 = load i32*, i32** %4, align 8
  %104 = load i32, i32* @RDB_TYPE_MODULE_2, align 4
  %105 = call i32 @rdbSaveType(i32* %103, i32 %104)
  store i32 %105, i32* %3, align 4
  br label %109

106:                                              ; preds = %2
  %107 = call i32 @serverPanic(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i64 0, i64 0))
  br label %108

108:                                              ; preds = %106
  store i32 -1, i32* %3, align 4
  br label %109

109:                                              ; preds = %108, %102, %98, %90, %80, %66, %56, %42, %32, %19, %9
  %110 = load i32, i32* %3, align 4
  ret i32 %110
}

declare dso_local i32 @rdbSaveType(i32*, i32) #1

declare dso_local i32 @serverPanic(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
