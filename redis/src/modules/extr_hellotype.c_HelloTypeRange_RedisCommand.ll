; ModuleID = '/home/carl/AnghaBench/redis/src/modules/extr_hellotype.c_HelloTypeRange_RedisCommand.c'
source_filename = "/home/carl/AnghaBench/redis/src/modules/extr_hellotype.c_HelloTypeRange_RedisCommand.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.HelloTypeObject = type { %struct.HelloTypeNode* }
%struct.HelloTypeNode = type { %struct.HelloTypeNode*, i32 }

@REDISMODULE_READ = common dso_local global i32 0, align 4
@REDISMODULE_WRITE = common dso_local global i32 0, align 4
@REDISMODULE_KEYTYPE_EMPTY = common dso_local global i32 0, align 4
@HelloType = common dso_local global i64 0, align 8
@REDISMODULE_ERRORMSG_WRONGTYPE = common dso_local global i8* null, align 8
@REDISMODULE_OK = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [38 x i8] c"ERR invalid first or count parameters\00", align 1
@REDISMODULE_POSTPONED_ARRAY_LEN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @HelloTypeRange_RedisCommand(i32* %0, i32** %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32**, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.HelloTypeObject*, align 8
  %13 = alloca %struct.HelloTypeNode*, align 8
  %14 = alloca i64, align 8
  store i32* %0, i32** %5, align 8
  store i32** %1, i32*** %6, align 8
  store i32 %2, i32* %7, align 4
  %15 = load i32*, i32** %5, align 8
  %16 = call i32 @RedisModule_AutoMemory(i32* %15)
  %17 = load i32, i32* %7, align 4
  %18 = icmp ne i32 %17, 4
  br i1 %18, label %19, label %22

19:                                               ; preds = %3
  %20 = load i32*, i32** %5, align 8
  %21 = call i32 @RedisModule_WrongArity(i32* %20)
  store i32 %21, i32* %4, align 4
  br label %109

22:                                               ; preds = %3
  %23 = load i32*, i32** %5, align 8
  %24 = load i32**, i32*** %6, align 8
  %25 = getelementptr inbounds i32*, i32** %24, i64 1
  %26 = load i32*, i32** %25, align 8
  %27 = load i32, i32* @REDISMODULE_READ, align 4
  %28 = load i32, i32* @REDISMODULE_WRITE, align 4
  %29 = or i32 %27, %28
  %30 = call i32* @RedisModule_OpenKey(i32* %23, i32* %26, i32 %29)
  store i32* %30, i32** %8, align 8
  %31 = load i32*, i32** %8, align 8
  %32 = call i32 @RedisModule_KeyType(i32* %31)
  store i32 %32, i32* %9, align 4
  %33 = load i32, i32* %9, align 4
  %34 = load i32, i32* @REDISMODULE_KEYTYPE_EMPTY, align 4
  %35 = icmp ne i32 %33, %34
  br i1 %35, label %36, label %45

36:                                               ; preds = %22
  %37 = load i32*, i32** %8, align 8
  %38 = call i64 @RedisModule_ModuleTypeGetType(i32* %37)
  %39 = load i64, i64* @HelloType, align 8
  %40 = icmp ne i64 %38, %39
  br i1 %40, label %41, label %45

41:                                               ; preds = %36
  %42 = load i32*, i32** %5, align 8
  %43 = load i8*, i8** @REDISMODULE_ERRORMSG_WRONGTYPE, align 8
  %44 = call i32 @RedisModule_ReplyWithError(i32* %42, i8* %43)
  store i32 %44, i32* %4, align 4
  br label %109

45:                                               ; preds = %36, %22
  %46 = load i32**, i32*** %6, align 8
  %47 = getelementptr inbounds i32*, i32** %46, i64 2
  %48 = load i32*, i32** %47, align 8
  %49 = call i64 @RedisModule_StringToLongLong(i32* %48, i64* %10)
  %50 = load i64, i64* @REDISMODULE_OK, align 8
  %51 = icmp ne i64 %49, %50
  br i1 %51, label %65, label %52

52:                                               ; preds = %45
  %53 = load i32**, i32*** %6, align 8
  %54 = getelementptr inbounds i32*, i32** %53, i64 3
  %55 = load i32*, i32** %54, align 8
  %56 = call i64 @RedisModule_StringToLongLong(i32* %55, i64* %11)
  %57 = load i64, i64* @REDISMODULE_OK, align 8
  %58 = icmp ne i64 %56, %57
  br i1 %58, label %65, label %59

59:                                               ; preds = %52
  %60 = load i64, i64* %10, align 8
  %61 = icmp slt i64 %60, 0
  br i1 %61, label %65, label %62

62:                                               ; preds = %59
  %63 = load i64, i64* %11, align 8
  %64 = icmp slt i64 %63, 0
  br i1 %64, label %65, label %68

65:                                               ; preds = %62, %59, %52, %45
  %66 = load i32*, i32** %5, align 8
  %67 = call i32 @RedisModule_ReplyWithError(i32* %66, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  store i32 %67, i32* %4, align 4
  br label %109

68:                                               ; preds = %62
  %69 = load i32*, i32** %8, align 8
  %70 = call %struct.HelloTypeObject* @RedisModule_ModuleTypeGetValue(i32* %69)
  store %struct.HelloTypeObject* %70, %struct.HelloTypeObject** %12, align 8
  %71 = load %struct.HelloTypeObject*, %struct.HelloTypeObject** %12, align 8
  %72 = icmp ne %struct.HelloTypeObject* %71, null
  br i1 %72, label %73, label %77

73:                                               ; preds = %68
  %74 = load %struct.HelloTypeObject*, %struct.HelloTypeObject** %12, align 8
  %75 = getelementptr inbounds %struct.HelloTypeObject, %struct.HelloTypeObject* %74, i32 0, i32 0
  %76 = load %struct.HelloTypeNode*, %struct.HelloTypeNode** %75, align 8
  br label %78

77:                                               ; preds = %68
  br label %78

78:                                               ; preds = %77, %73
  %79 = phi %struct.HelloTypeNode* [ %76, %73 ], [ null, %77 ]
  store %struct.HelloTypeNode* %79, %struct.HelloTypeNode** %13, align 8
  %80 = load i32*, i32** %5, align 8
  %81 = load i32, i32* @REDISMODULE_POSTPONED_ARRAY_LEN, align 4
  %82 = call i32 @RedisModule_ReplyWithArray(i32* %80, i32 %81)
  store i64 0, i64* %14, align 8
  br label %83

83:                                               ; preds = %92, %78
  %84 = load %struct.HelloTypeNode*, %struct.HelloTypeNode** %13, align 8
  %85 = icmp ne %struct.HelloTypeNode* %84, null
  br i1 %85, label %86, label %90

86:                                               ; preds = %83
  %87 = load i64, i64* %11, align 8
  %88 = add nsw i64 %87, -1
  store i64 %88, i64* %11, align 8
  %89 = icmp ne i64 %87, 0
  br label %90

90:                                               ; preds = %86, %83
  %91 = phi i1 [ false, %83 ], [ %89, %86 ]
  br i1 %91, label %92, label %103

92:                                               ; preds = %90
  %93 = load i32*, i32** %5, align 8
  %94 = load %struct.HelloTypeNode*, %struct.HelloTypeNode** %13, align 8
  %95 = getelementptr inbounds %struct.HelloTypeNode, %struct.HelloTypeNode* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 8
  %97 = call i32 @RedisModule_ReplyWithLongLong(i32* %93, i32 %96)
  %98 = load i64, i64* %14, align 8
  %99 = add nsw i64 %98, 1
  store i64 %99, i64* %14, align 8
  %100 = load %struct.HelloTypeNode*, %struct.HelloTypeNode** %13, align 8
  %101 = getelementptr inbounds %struct.HelloTypeNode, %struct.HelloTypeNode* %100, i32 0, i32 0
  %102 = load %struct.HelloTypeNode*, %struct.HelloTypeNode** %101, align 8
  store %struct.HelloTypeNode* %102, %struct.HelloTypeNode** %13, align 8
  br label %83

103:                                              ; preds = %90
  %104 = load i32*, i32** %5, align 8
  %105 = load i64, i64* %14, align 8
  %106 = call i32 @RedisModule_ReplySetArrayLength(i32* %104, i64 %105)
  %107 = load i64, i64* @REDISMODULE_OK, align 8
  %108 = trunc i64 %107 to i32
  store i32 %108, i32* %4, align 4
  br label %109

109:                                              ; preds = %103, %65, %41, %19
  %110 = load i32, i32* %4, align 4
  ret i32 %110
}

declare dso_local i32 @RedisModule_AutoMemory(i32*) #1

declare dso_local i32 @RedisModule_WrongArity(i32*) #1

declare dso_local i32* @RedisModule_OpenKey(i32*, i32*, i32) #1

declare dso_local i32 @RedisModule_KeyType(i32*) #1

declare dso_local i64 @RedisModule_ModuleTypeGetType(i32*) #1

declare dso_local i32 @RedisModule_ReplyWithError(i32*, i8*) #1

declare dso_local i64 @RedisModule_StringToLongLong(i32*, i64*) #1

declare dso_local %struct.HelloTypeObject* @RedisModule_ModuleTypeGetValue(i32*) #1

declare dso_local i32 @RedisModule_ReplyWithArray(i32*, i32) #1

declare dso_local i32 @RedisModule_ReplyWithLongLong(i32*, i32) #1

declare dso_local i32 @RedisModule_ReplySetArrayLength(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
