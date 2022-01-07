; ModuleID = '/home/carl/AnghaBench/redis/tests/modules/extr_testrdb.c_RedisModule_OnLoad.c'
source_filename = "/home/carl/AnghaBench/redis/tests/modules/extr_testrdb.c_RedisModule_OnLoad.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32, i32, i32, i32*, i32*, i32, i32 }

@.str = private unnamed_addr constant [8 x i8] c"testrdb\00", align 1
@REDISMODULE_APIVER_1 = common dso_local global i32 0, align 4
@REDISMODULE_ERR = common dso_local global i64 0, align 8
@REDISMODULE_OPTIONS_HANDLE_IO_ERRORS = common dso_local global i32 0, align 4
@conf_aux_count = common dso_local global i64 0, align 8
@testrdb_type_free = common dso_local global i32 0, align 4
@testrdb_type_save = common dso_local global i32 0, align 4
@testrdb_type_load = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [10 x i8] c"test__rdb\00", align 1
@testrdb_type = common dso_local global i32* null, align 8
@REDISMODULE_TYPE_METHOD_VERSION = common dso_local global i32 0, align 4
@REDISMODULE_AUX_AFTER_RDB = common dso_local global i32 0, align 4
@REDISMODULE_AUX_BEFORE_RDB = common dso_local global i32 0, align 4
@testrdb_aux_save = common dso_local global i32 0, align 4
@testrdb_aux_load = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [19 x i8] c"testrdb.set.before\00", align 1
@testrdb_set_before = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [9 x i8] c"deny-oom\00", align 1
@.str.4 = private unnamed_addr constant [19 x i8] c"testrdb.get.before\00", align 1
@testrdb_get_before = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.6 = private unnamed_addr constant [18 x i8] c"testrdb.set.after\00", align 1
@testrdb_set_after = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [18 x i8] c"testrdb.get.after\00", align 1
@testrdb_get_after = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [16 x i8] c"testrdb.set.key\00", align 1
@testrdb_set_key = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [16 x i8] c"testrdb.get.key\00", align 1
@testrdb_get_key = common dso_local global i32 0, align 4
@REDISMODULE_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @RedisModule_OnLoad(i32* %0, i32** %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32**, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_3__, align 8
  %9 = alloca %struct.TYPE_3__, align 8
  store i32* %0, i32** %5, align 8
  store i32** %1, i32*** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load i32**, i32*** %6, align 8
  %11 = ptrtoint i32** %10 to i32
  %12 = call i32 @REDISMODULE_NOT_USED(i32 %11)
  %13 = load i32, i32* %7, align 4
  %14 = call i32 @REDISMODULE_NOT_USED(i32 %13)
  %15 = load i32*, i32** %5, align 8
  %16 = load i32, i32* @REDISMODULE_APIVER_1, align 4
  %17 = call i64 @RedisModule_Init(i32* %15, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 1, i32 %16)
  %18 = load i64, i64* @REDISMODULE_ERR, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %23

20:                                               ; preds = %3
  %21 = load i64, i64* @REDISMODULE_ERR, align 8
  %22 = trunc i64 %21 to i32
  store i32 %22, i32* %4, align 4
  br label %148

23:                                               ; preds = %3
  %24 = load i32*, i32** %5, align 8
  %25 = load i32, i32* @REDISMODULE_OPTIONS_HANDLE_IO_ERRORS, align 4
  %26 = call i32 @RedisModule_SetModuleOptions(i32* %24, i32 %25)
  %27 = load i32, i32* %7, align 4
  %28 = icmp sgt i32 %27, 0
  br i1 %28, label %29, label %34

29:                                               ; preds = %23
  %30 = load i32**, i32*** %6, align 8
  %31 = getelementptr inbounds i32*, i32** %30, i64 0
  %32 = load i32*, i32** %31, align 8
  %33 = call i32 @RedisModule_StringToLongLong(i32* %32, i64* @conf_aux_count)
  br label %34

34:                                               ; preds = %29, %23
  %35 = load i64, i64* @conf_aux_count, align 8
  %36 = icmp eq i64 %35, 0
  br i1 %36, label %37, label %58

37:                                               ; preds = %34
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 0
  store i32 1, i32* %38, align 8
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 1
  store i32 0, i32* %39, align 4
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 2
  store i32 0, i32* %40, align 8
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 3
  store i32 0, i32* %41, align 4
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 4
  %43 = load i32, i32* @testrdb_type_free, align 4
  store i32 %43, i32* %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 5
  store i32* null, i32** %44, align 8
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 6
  store i32* null, i32** %45, align 8
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 7
  %47 = load i32, i32* @testrdb_type_save, align 4
  store i32 %47, i32* %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 8
  %49 = load i32, i32* @testrdb_type_load, align 4
  store i32 %49, i32* %48, align 4
  %50 = load i32*, i32** %5, align 8
  %51 = call i32* @RedisModule_CreateDataType(i32* %50, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i32 1, %struct.TYPE_3__* %8)
  store i32* %51, i32** @testrdb_type, align 8
  %52 = load i32*, i32** @testrdb_type, align 8
  %53 = icmp eq i32* %52, null
  br i1 %53, label %54, label %57

54:                                               ; preds = %37
  %55 = load i64, i64* @REDISMODULE_ERR, align 8
  %56 = trunc i64 %55 to i32
  store i32 %56, i32* %4, align 4
  br label %148

57:                                               ; preds = %37
  br label %92

58:                                               ; preds = %34
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  %60 = load i32, i32* @REDISMODULE_TYPE_METHOD_VERSION, align 4
  store i32 %60, i32* %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 1
  %62 = load i64, i64* @conf_aux_count, align 8
  %63 = icmp eq i64 %62, 1
  br i1 %63, label %64, label %66

64:                                               ; preds = %58
  %65 = load i32, i32* @REDISMODULE_AUX_AFTER_RDB, align 4
  br label %70

66:                                               ; preds = %58
  %67 = load i32, i32* @REDISMODULE_AUX_BEFORE_RDB, align 4
  %68 = load i32, i32* @REDISMODULE_AUX_AFTER_RDB, align 4
  %69 = or i32 %67, %68
  br label %70

70:                                               ; preds = %66, %64
  %71 = phi i32 [ %65, %64 ], [ %69, %66 ]
  store i32 %71, i32* %61, align 4
  %72 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 2
  %73 = load i32, i32* @testrdb_aux_save, align 4
  store i32 %73, i32* %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 3
  %75 = load i32, i32* @testrdb_aux_load, align 4
  store i32 %75, i32* %74, align 4
  %76 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 4
  %77 = load i32, i32* @testrdb_type_free, align 4
  store i32 %77, i32* %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 5
  store i32* null, i32** %78, align 8
  %79 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 6
  store i32* null, i32** %79, align 8
  %80 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 7
  %81 = load i32, i32* @testrdb_type_save, align 4
  store i32 %81, i32* %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 8
  %83 = load i32, i32* @testrdb_type_load, align 4
  store i32 %83, i32* %82, align 4
  %84 = load i32*, i32** %5, align 8
  %85 = call i32* @RedisModule_CreateDataType(i32* %84, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i32 1, %struct.TYPE_3__* %9)
  store i32* %85, i32** @testrdb_type, align 8
  %86 = load i32*, i32** @testrdb_type, align 8
  %87 = icmp eq i32* %86, null
  br i1 %87, label %88, label %91

88:                                               ; preds = %70
  %89 = load i64, i64* @REDISMODULE_ERR, align 8
  %90 = trunc i64 %89 to i32
  store i32 %90, i32* %4, align 4
  br label %148

91:                                               ; preds = %70
  br label %92

92:                                               ; preds = %91, %57
  %93 = load i32*, i32** %5, align 8
  %94 = load i32, i32* @testrdb_set_before, align 4
  %95 = call i64 @RedisModule_CreateCommand(i32* %93, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0), i32 %94, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), i32 0, i32 0, i32 0)
  %96 = load i64, i64* @REDISMODULE_ERR, align 8
  %97 = icmp eq i64 %95, %96
  br i1 %97, label %98, label %101

98:                                               ; preds = %92
  %99 = load i64, i64* @REDISMODULE_ERR, align 8
  %100 = trunc i64 %99 to i32
  store i32 %100, i32* %4, align 4
  br label %148

101:                                              ; preds = %92
  %102 = load i32*, i32** %5, align 8
  %103 = load i32, i32* @testrdb_get_before, align 4
  %104 = call i64 @RedisModule_CreateCommand(i32* %102, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.4, i64 0, i64 0), i32 %103, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.5, i64 0, i64 0), i32 0, i32 0, i32 0)
  %105 = load i64, i64* @REDISMODULE_ERR, align 8
  %106 = icmp eq i64 %104, %105
  br i1 %106, label %107, label %110

107:                                              ; preds = %101
  %108 = load i64, i64* @REDISMODULE_ERR, align 8
  %109 = trunc i64 %108 to i32
  store i32 %109, i32* %4, align 4
  br label %148

110:                                              ; preds = %101
  %111 = load i32*, i32** %5, align 8
  %112 = load i32, i32* @testrdb_set_after, align 4
  %113 = call i64 @RedisModule_CreateCommand(i32* %111, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.6, i64 0, i64 0), i32 %112, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), i32 0, i32 0, i32 0)
  %114 = load i64, i64* @REDISMODULE_ERR, align 8
  %115 = icmp eq i64 %113, %114
  br i1 %115, label %116, label %119

116:                                              ; preds = %110
  %117 = load i64, i64* @REDISMODULE_ERR, align 8
  %118 = trunc i64 %117 to i32
  store i32 %118, i32* %4, align 4
  br label %148

119:                                              ; preds = %110
  %120 = load i32*, i32** %5, align 8
  %121 = load i32, i32* @testrdb_get_after, align 4
  %122 = call i64 @RedisModule_CreateCommand(i32* %120, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.7, i64 0, i64 0), i32 %121, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.5, i64 0, i64 0), i32 0, i32 0, i32 0)
  %123 = load i64, i64* @REDISMODULE_ERR, align 8
  %124 = icmp eq i64 %122, %123
  br i1 %124, label %125, label %128

125:                                              ; preds = %119
  %126 = load i64, i64* @REDISMODULE_ERR, align 8
  %127 = trunc i64 %126 to i32
  store i32 %127, i32* %4, align 4
  br label %148

128:                                              ; preds = %119
  %129 = load i32*, i32** %5, align 8
  %130 = load i32, i32* @testrdb_set_key, align 4
  %131 = call i64 @RedisModule_CreateCommand(i32* %129, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.8, i64 0, i64 0), i32 %130, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), i32 1, i32 1, i32 1)
  %132 = load i64, i64* @REDISMODULE_ERR, align 8
  %133 = icmp eq i64 %131, %132
  br i1 %133, label %134, label %137

134:                                              ; preds = %128
  %135 = load i64, i64* @REDISMODULE_ERR, align 8
  %136 = trunc i64 %135 to i32
  store i32 %136, i32* %4, align 4
  br label %148

137:                                              ; preds = %128
  %138 = load i32*, i32** %5, align 8
  %139 = load i32, i32* @testrdb_get_key, align 4
  %140 = call i64 @RedisModule_CreateCommand(i32* %138, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.9, i64 0, i64 0), i32 %139, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.5, i64 0, i64 0), i32 1, i32 1, i32 1)
  %141 = load i64, i64* @REDISMODULE_ERR, align 8
  %142 = icmp eq i64 %140, %141
  br i1 %142, label %143, label %146

143:                                              ; preds = %137
  %144 = load i64, i64* @REDISMODULE_ERR, align 8
  %145 = trunc i64 %144 to i32
  store i32 %145, i32* %4, align 4
  br label %148

146:                                              ; preds = %137
  %147 = load i32, i32* @REDISMODULE_OK, align 4
  store i32 %147, i32* %4, align 4
  br label %148

148:                                              ; preds = %146, %143, %134, %125, %116, %107, %98, %88, %54, %20
  %149 = load i32, i32* %4, align 4
  ret i32 %149
}

declare dso_local i32 @REDISMODULE_NOT_USED(i32) #1

declare dso_local i64 @RedisModule_Init(i32*, i8*, i32, i32) #1

declare dso_local i32 @RedisModule_SetModuleOptions(i32*, i32) #1

declare dso_local i32 @RedisModule_StringToLongLong(i32*, i64*) #1

declare dso_local i32* @RedisModule_CreateDataType(i32*, i8*, i32, %struct.TYPE_3__*) #1

declare dso_local i64 @RedisModule_CreateCommand(i32*, i8*, i32, i8*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
