; ModuleID = '/home/carl/AnghaBench/systemd/src/journal/extr_journal-authenticate.c_journal_file_append_first_tag.c'
source_filename = "/home/carl/AnghaBench/systemd/src/journal/extr_journal-authenticate.c_journal_file_append_first_tag.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32 }
%struct.TYPE_9__ = type { %struct.TYPE_8__*, i32 }
%struct.TYPE_8__ = type { i32, i32 }

@.str = private unnamed_addr constant [25 x i8] c"Calculating first tag...\00", align 1
@Object = common dso_local global i32 0, align 4
@hash_table = common dso_local global %struct.TYPE_10__ zeroinitializer, align 4
@EINVAL = common dso_local global i32 0, align 4
@OBJECT_FIELD_HASH_TABLE = common dso_local global i32 0, align 4
@OBJECT_DATA_HASH_TABLE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @journal_file_append_first_tag(%struct.TYPE_9__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_9__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %3, align 8
  %6 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %7 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %6, i32 0, i32 1
  %8 = load i32, i32* %7, align 8
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %11, label %10

10:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %85

11:                                               ; preds = %1
  %12 = call i32 @log_debug(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %13 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %14 = call i32 @journal_file_hmac_put_header(%struct.TYPE_9__* %13)
  store i32 %14, i32* %4, align 4
  %15 = load i32, i32* %4, align 4
  %16 = icmp slt i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %11
  %18 = load i32, i32* %4, align 4
  store i32 %18, i32* %2, align 4
  br label %85

19:                                               ; preds = %11
  %20 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %21 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %20, i32 0, i32 0
  %22 = load %struct.TYPE_8__*, %struct.TYPE_8__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = call i64 @le64toh(i32 %24)
  store i64 %25, i64* %5, align 8
  %26 = load i64, i64* %5, align 8
  %27 = load i32, i32* @Object, align 4
  %28 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @hash_table, i32 0, i32 0), align 4
  %29 = call i64 @offsetof(i32 %27, i32 %28)
  %30 = icmp slt i64 %26, %29
  br i1 %30, label %31, label %34

31:                                               ; preds = %19
  %32 = load i32, i32* @EINVAL, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %2, align 4
  br label %85

34:                                               ; preds = %19
  %35 = load i32, i32* @Object, align 4
  %36 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @hash_table, i32 0, i32 0), align 4
  %37 = call i64 @offsetof(i32 %35, i32 %36)
  %38 = load i64, i64* %5, align 8
  %39 = sub nsw i64 %38, %37
  store i64 %39, i64* %5, align 8
  %40 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %41 = load i32, i32* @OBJECT_FIELD_HASH_TABLE, align 4
  %42 = load i64, i64* %5, align 8
  %43 = call i32 @journal_file_hmac_put_object(%struct.TYPE_9__* %40, i32 %41, i32* null, i64 %42)
  store i32 %43, i32* %4, align 4
  %44 = load i32, i32* %4, align 4
  %45 = icmp slt i32 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %34
  %47 = load i32, i32* %4, align 4
  store i32 %47, i32* %2, align 4
  br label %85

48:                                               ; preds = %34
  %49 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %50 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %49, i32 0, i32 0
  %51 = load %struct.TYPE_8__*, %struct.TYPE_8__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = call i64 @le64toh(i32 %53)
  store i64 %54, i64* %5, align 8
  %55 = load i64, i64* %5, align 8
  %56 = load i32, i32* @Object, align 4
  %57 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @hash_table, i32 0, i32 0), align 4
  %58 = call i64 @offsetof(i32 %56, i32 %57)
  %59 = icmp slt i64 %55, %58
  br i1 %59, label %60, label %63

60:                                               ; preds = %48
  %61 = load i32, i32* @EINVAL, align 4
  %62 = sub nsw i32 0, %61
  store i32 %62, i32* %2, align 4
  br label %85

63:                                               ; preds = %48
  %64 = load i32, i32* @Object, align 4
  %65 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @hash_table, i32 0, i32 0), align 4
  %66 = call i64 @offsetof(i32 %64, i32 %65)
  %67 = load i64, i64* %5, align 8
  %68 = sub nsw i64 %67, %66
  store i64 %68, i64* %5, align 8
  %69 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %70 = load i32, i32* @OBJECT_DATA_HASH_TABLE, align 4
  %71 = load i64, i64* %5, align 8
  %72 = call i32 @journal_file_hmac_put_object(%struct.TYPE_9__* %69, i32 %70, i32* null, i64 %71)
  store i32 %72, i32* %4, align 4
  %73 = load i32, i32* %4, align 4
  %74 = icmp slt i32 %73, 0
  br i1 %74, label %75, label %77

75:                                               ; preds = %63
  %76 = load i32, i32* %4, align 4
  store i32 %76, i32* %2, align 4
  br label %85

77:                                               ; preds = %63
  %78 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %79 = call i32 @journal_file_append_tag(%struct.TYPE_9__* %78)
  store i32 %79, i32* %4, align 4
  %80 = load i32, i32* %4, align 4
  %81 = icmp slt i32 %80, 0
  br i1 %81, label %82, label %84

82:                                               ; preds = %77
  %83 = load i32, i32* %4, align 4
  store i32 %83, i32* %2, align 4
  br label %85

84:                                               ; preds = %77
  store i32 0, i32* %2, align 4
  br label %85

85:                                               ; preds = %84, %82, %75, %60, %46, %31, %17, %10
  %86 = load i32, i32* %2, align 4
  ret i32 %86
}

declare dso_local i32 @log_debug(i8*) #1

declare dso_local i32 @journal_file_hmac_put_header(%struct.TYPE_9__*) #1

declare dso_local i64 @le64toh(i32) #1

declare dso_local i64 @offsetof(i32, i32) #1

declare dso_local i32 @journal_file_hmac_put_object(%struct.TYPE_9__*, i32, i32*, i64) #1

declare dso_local i32 @journal_file_append_tag(%struct.TYPE_9__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
