; ModuleID = '/home/carl/AnghaBench/redis/src/extr_rdb.c_rdbLoadCheckModuleValue.c'
source_filename = "/home/carl/AnghaBench/redis/src/extr_rdb.c_rdbLoadCheckModuleValue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@RDB_MODULE_OPCODE_EOF = common dso_local global i64 0, align 8
@RDB_MODULE_OPCODE_SINT = common dso_local global i64 0, align 8
@RDB_MODULE_OPCODE_UINT = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [43 x i8] c"Error reading integer from module %s value\00", align 1
@RDB_MODULE_OPCODE_STRING = common dso_local global i64 0, align 8
@RDB_LOAD_NONE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [42 x i8] c"Error reading string from module %s value\00", align 1
@RDB_MODULE_OPCODE_FLOAT = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [41 x i8] c"Error reading float from module %s value\00", align 1
@RDB_MODULE_OPCODE_DOUBLE = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [42 x i8] c"Error reading double from module %s value\00", align 1
@.str.4 = private unnamed_addr constant [19 x i8] c"module-dummy-value\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @rdbLoadCheckModuleValue(i32* %0, i8* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32*, align 8
  %8 = alloca float, align 4
  %9 = alloca double, align 8
  store i32* %0, i32** %3, align 8
  store i8* %1, i8** %4, align 8
  br label %10

10:                                               ; preds = %74, %2
  %11 = load i32*, i32** %3, align 8
  %12 = call i64 @rdbLoadLen(i32* %11, i32* null)
  store i64 %12, i64* %5, align 8
  %13 = load i64, i64* @RDB_MODULE_OPCODE_EOF, align 8
  %14 = icmp ne i64 %12, %13
  br i1 %14, label %15, label %75

15:                                               ; preds = %10
  %16 = load i64, i64* %5, align 8
  %17 = load i64, i64* @RDB_MODULE_OPCODE_SINT, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %23, label %19

19:                                               ; preds = %15
  %20 = load i64, i64* %5, align 8
  %21 = load i64, i64* @RDB_MODULE_OPCODE_UINT, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %31

23:                                               ; preds = %19, %15
  %24 = load i32*, i32** %3, align 8
  %25 = call i32 @rdbLoadLenByRef(i32* %24, i32* null, i64* %6)
  %26 = icmp eq i32 %25, -1
  br i1 %26, label %27, label %30

27:                                               ; preds = %23
  %28 = load i8*, i8** %4, align 8
  %29 = call i32 @rdbExitReportCorruptRDB(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i8* %28)
  br label %30

30:                                               ; preds = %27, %23
  br label %74

31:                                               ; preds = %19
  %32 = load i64, i64* %5, align 8
  %33 = load i64, i64* @RDB_MODULE_OPCODE_STRING, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %35, label %47

35:                                               ; preds = %31
  %36 = load i32*, i32** %3, align 8
  %37 = load i32, i32* @RDB_LOAD_NONE, align 4
  %38 = call i32* @rdbGenericLoadStringObject(i32* %36, i32 %37, i32* null)
  store i32* %38, i32** %7, align 8
  %39 = load i32*, i32** %7, align 8
  %40 = icmp eq i32* %39, null
  br i1 %40, label %41, label %44

41:                                               ; preds = %35
  %42 = load i8*, i8** %4, align 8
  %43 = call i32 @rdbExitReportCorruptRDB(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0), i8* %42)
  br label %44

44:                                               ; preds = %41, %35
  %45 = load i32*, i32** %7, align 8
  %46 = call i32 @decrRefCount(i32* %45)
  br label %73

47:                                               ; preds = %31
  %48 = load i64, i64* %5, align 8
  %49 = load i64, i64* @RDB_MODULE_OPCODE_FLOAT, align 8
  %50 = icmp eq i64 %48, %49
  br i1 %50, label %51, label %59

51:                                               ; preds = %47
  %52 = load i32*, i32** %3, align 8
  %53 = call i32 @rdbLoadBinaryFloatValue(i32* %52, float* %8)
  %54 = icmp eq i32 %53, -1
  br i1 %54, label %55, label %58

55:                                               ; preds = %51
  %56 = load i8*, i8** %4, align 8
  %57 = call i32 @rdbExitReportCorruptRDB(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0), i8* %56)
  br label %58

58:                                               ; preds = %55, %51
  br label %72

59:                                               ; preds = %47
  %60 = load i64, i64* %5, align 8
  %61 = load i64, i64* @RDB_MODULE_OPCODE_DOUBLE, align 8
  %62 = icmp eq i64 %60, %61
  br i1 %62, label %63, label %71

63:                                               ; preds = %59
  %64 = load i32*, i32** %3, align 8
  %65 = call i32 @rdbLoadBinaryDoubleValue(i32* %64, double* %9)
  %66 = icmp eq i32 %65, -1
  br i1 %66, label %67, label %70

67:                                               ; preds = %63
  %68 = load i8*, i8** %4, align 8
  %69 = call i32 @rdbExitReportCorruptRDB(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.3, i64 0, i64 0), i8* %68)
  br label %70

70:                                               ; preds = %67, %63
  br label %71

71:                                               ; preds = %70, %59
  br label %72

72:                                               ; preds = %71, %58
  br label %73

73:                                               ; preds = %72, %44
  br label %74

74:                                               ; preds = %73, %30
  br label %10

75:                                               ; preds = %10
  %76 = call i32* @createStringObject(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.4, i64 0, i64 0), i32 18)
  ret i32* %76
}

declare dso_local i64 @rdbLoadLen(i32*, i32*) #1

declare dso_local i32 @rdbLoadLenByRef(i32*, i32*, i64*) #1

declare dso_local i32 @rdbExitReportCorruptRDB(i8*, i8*) #1

declare dso_local i32* @rdbGenericLoadStringObject(i32*, i32, i32*) #1

declare dso_local i32 @decrRefCount(i32*) #1

declare dso_local i32 @rdbLoadBinaryFloatValue(i32*, float*) #1

declare dso_local i32 @rdbLoadBinaryDoubleValue(i32*, double*) #1

declare dso_local i32* @createStringObject(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
