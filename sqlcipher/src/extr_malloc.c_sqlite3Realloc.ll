; ModuleID = '/home/carl/AnghaBench/sqlcipher/src/extr_malloc.c_sqlite3Realloc.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/src/extr_malloc.c_sqlite3Realloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_4__, i64 }
%struct.TYPE_4__ = type { i32 (i32)*, i8* (i8*, i32)* }
%struct.TYPE_6__ = type { i32, i32 }

@MEMTYPE_HEAP = common dso_local global i64 0, align 8
@sqlite3GlobalConfig = common dso_local global %struct.TYPE_5__ zeroinitializer, align 8
@mem0 = common dso_local global %struct.TYPE_6__ zeroinitializer, align 4
@SQLITE_STATUS_MALLOC_SIZE = common dso_local global i32 0, align 4
@SQLITE_STATUS_MEMORY_USED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @sqlite3Realloc(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load i8*, i8** %4, align 8
  %11 = load i64, i64* @MEMTYPE_HEAP, align 8
  %12 = call i32 @sqlite3MemdebugHasType(i8* %10, i64 %11)
  %13 = call i32 @assert(i32 %12)
  %14 = load i8*, i8** %4, align 8
  %15 = load i64, i64* @MEMTYPE_HEAP, align 8
  %16 = xor i64 %15, -1
  %17 = trunc i64 %16 to i32
  %18 = call i32 @sqlite3MemdebugNoType(i8* %14, i32 %17)
  %19 = call i32 @assert(i32 %18)
  %20 = load i8*, i8** %4, align 8
  %21 = icmp eq i8* %20, null
  br i1 %21, label %22, label %25

22:                                               ; preds = %2
  %23 = load i32, i32* %5, align 4
  %24 = call i8* @sqlite3Malloc(i32 %23)
  store i8* %24, i8** %3, align 8
  br label %112

25:                                               ; preds = %2
  %26 = load i32, i32* %5, align 4
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %25
  %29 = load i8*, i8** %4, align 8
  %30 = call i32 @sqlite3_free(i8* %29)
  store i8* null, i8** %3, align 8
  br label %112

31:                                               ; preds = %25
  %32 = load i32, i32* %5, align 4
  %33 = icmp sge i32 %32, 2147483392
  br i1 %33, label %34, label %35

34:                                               ; preds = %31
  store i8* null, i8** %3, align 8
  br label %112

35:                                               ; preds = %31
  %36 = load i8*, i8** %4, align 8
  %37 = call i32 @sqlite3MallocSize(i8* %36)
  store i32 %37, i32* %6, align 4
  %38 = load i32 (i32)*, i32 (i32)** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @sqlite3GlobalConfig, i32 0, i32 0, i32 0), align 8
  %39 = load i32, i32* %5, align 4
  %40 = call i32 %38(i32 %39)
  store i32 %40, i32* %7, align 4
  %41 = load i32, i32* %6, align 4
  %42 = load i32, i32* %7, align 4
  %43 = icmp eq i32 %41, %42
  br i1 %43, label %44, label %46

44:                                               ; preds = %35
  %45 = load i8*, i8** %4, align 8
  store i8* %45, i8** %9, align 8
  br label %107

46:                                               ; preds = %35
  %47 = load i64, i64* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @sqlite3GlobalConfig, i32 0, i32 1), align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %101

49:                                               ; preds = %46
  %50 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @mem0, i32 0, i32 1), align 4
  %51 = call i32 @sqlite3_mutex_enter(i32 %50)
  %52 = load i32, i32* @SQLITE_STATUS_MALLOC_SIZE, align 4
  %53 = load i32, i32* %5, align 4
  %54 = call i32 @sqlite3StatusHighwater(i32 %52, i32 %53)
  %55 = load i32, i32* %7, align 4
  %56 = load i32, i32* %6, align 4
  %57 = sub nsw i32 %55, %56
  store i32 %57, i32* %8, align 4
  %58 = load i32, i32* %8, align 4
  %59 = icmp sgt i32 %58, 0
  br i1 %59, label %60, label %70

60:                                               ; preds = %49
  %61 = load i32, i32* @SQLITE_STATUS_MEMORY_USED, align 4
  %62 = call i32 @sqlite3StatusValue(i32 %61)
  %63 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @mem0, i32 0, i32 0), align 4
  %64 = load i32, i32* %8, align 4
  %65 = sub nsw i32 %63, %64
  %66 = icmp sge i32 %62, %65
  br i1 %66, label %67, label %70

67:                                               ; preds = %60
  %68 = load i32, i32* %8, align 4
  %69 = call i32 @sqlite3MallocAlarm(i32 %68)
  br label %70

70:                                               ; preds = %67, %60, %49
  %71 = load i8* (i8*, i32)*, i8* (i8*, i32)** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @sqlite3GlobalConfig, i32 0, i32 0, i32 1), align 8
  %72 = load i8*, i8** %4, align 8
  %73 = load i32, i32* %7, align 4
  %74 = call i8* %71(i8* %72, i32 %73)
  store i8* %74, i8** %9, align 8
  %75 = load i8*, i8** %9, align 8
  %76 = icmp eq i8* %75, null
  br i1 %76, label %77, label %87

77:                                               ; preds = %70
  %78 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @mem0, i32 0, i32 0), align 4
  %79 = icmp sgt i32 %78, 0
  br i1 %79, label %80, label %87

80:                                               ; preds = %77
  %81 = load i32, i32* %5, align 4
  %82 = call i32 @sqlite3MallocAlarm(i32 %81)
  %83 = load i8* (i8*, i32)*, i8* (i8*, i32)** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @sqlite3GlobalConfig, i32 0, i32 0, i32 1), align 8
  %84 = load i8*, i8** %4, align 8
  %85 = load i32, i32* %7, align 4
  %86 = call i8* %83(i8* %84, i32 %85)
  store i8* %86, i8** %9, align 8
  br label %87

87:                                               ; preds = %80, %77, %70
  %88 = load i8*, i8** %9, align 8
  %89 = icmp ne i8* %88, null
  br i1 %89, label %90, label %98

90:                                               ; preds = %87
  %91 = load i8*, i8** %9, align 8
  %92 = call i32 @sqlite3MallocSize(i8* %91)
  store i32 %92, i32* %7, align 4
  %93 = load i32, i32* @SQLITE_STATUS_MEMORY_USED, align 4
  %94 = load i32, i32* %7, align 4
  %95 = load i32, i32* %6, align 4
  %96 = sub nsw i32 %94, %95
  %97 = call i32 @sqlite3StatusUp(i32 %93, i32 %96)
  br label %98

98:                                               ; preds = %90, %87
  %99 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @mem0, i32 0, i32 1), align 4
  %100 = call i32 @sqlite3_mutex_leave(i32 %99)
  br label %106

101:                                              ; preds = %46
  %102 = load i8* (i8*, i32)*, i8* (i8*, i32)** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @sqlite3GlobalConfig, i32 0, i32 0, i32 1), align 8
  %103 = load i8*, i8** %4, align 8
  %104 = load i32, i32* %7, align 4
  %105 = call i8* %102(i8* %103, i32 %104)
  store i8* %105, i8** %9, align 8
  br label %106

106:                                              ; preds = %101, %98
  br label %107

107:                                              ; preds = %106, %44
  %108 = load i8*, i8** %9, align 8
  %109 = call i32 @EIGHT_BYTE_ALIGNMENT(i8* %108)
  %110 = call i32 @assert(i32 %109)
  %111 = load i8*, i8** %9, align 8
  store i8* %111, i8** %3, align 8
  br label %112

112:                                              ; preds = %107, %34, %28, %22
  %113 = load i8*, i8** %3, align 8
  ret i8* %113
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @sqlite3MemdebugHasType(i8*, i64) #1

declare dso_local i32 @sqlite3MemdebugNoType(i8*, i32) #1

declare dso_local i8* @sqlite3Malloc(i32) #1

declare dso_local i32 @sqlite3_free(i8*) #1

declare dso_local i32 @sqlite3MallocSize(i8*) #1

declare dso_local i32 @sqlite3_mutex_enter(i32) #1

declare dso_local i32 @sqlite3StatusHighwater(i32, i32) #1

declare dso_local i32 @sqlite3StatusValue(i32) #1

declare dso_local i32 @sqlite3MallocAlarm(i32) #1

declare dso_local i32 @sqlite3StatusUp(i32, i32) #1

declare dso_local i32 @sqlite3_mutex_leave(i32) #1

declare dso_local i32 @EIGHT_BYTE_ALIGNMENT(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
