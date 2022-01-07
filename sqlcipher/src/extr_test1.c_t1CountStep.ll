; ModuleID = '/home/carl/AnghaBench/sqlcipher/src/extr_test1.c_t1CountStep.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/src/extr_test1.c_t1CountStep.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@SQLITE_NULL = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [30 x i8] c"value of 40 handed to x_count\00", align 1
@__const.t1CountStep.zUtf16ErrMsg = private unnamed_addr constant [9 x i8] c"\00a\00b\00c\00\00\00", align 1
@SQLITE_BIGENDIAN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, i32**)* @t1CountStep to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @t1CountStep(i32* %0, i32 %1, i32** %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32**, align 8
  %7 = alloca %struct.TYPE_3__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca [9 x i8], align 1
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32** %2, i32*** %6, align 8
  %10 = load i32*, i32** %4, align 8
  %11 = call %struct.TYPE_3__* @sqlite3_aggregate_context(i32* %10, i32 4)
  store %struct.TYPE_3__* %11, %struct.TYPE_3__** %7, align 8
  %12 = load i32, i32* %5, align 4
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %21, label %14

14:                                               ; preds = %3
  %15 = load i64, i64* @SQLITE_NULL, align 8
  %16 = load i32**, i32*** %6, align 8
  %17 = getelementptr inbounds i32*, i32** %16, i64 0
  %18 = load i32*, i32** %17, align 8
  %19 = call i64 @sqlite3_value_type(i32* %18)
  %20 = icmp ne i64 %15, %19
  br i1 %20, label %21, label %29

21:                                               ; preds = %14, %3
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %23 = icmp ne %struct.TYPE_3__* %22, null
  br i1 %23, label %24, label %29

24:                                               ; preds = %21
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = add nsw i32 %27, 1
  store i32 %28, i32* %26, align 4
  br label %29

29:                                               ; preds = %24, %21, %14
  %30 = load i32, i32* %5, align 4
  %31 = icmp sgt i32 %30, 0
  br i1 %31, label %32, label %55

32:                                               ; preds = %29
  %33 = load i32**, i32*** %6, align 8
  %34 = getelementptr inbounds i32*, i32** %33, i64 0
  %35 = load i32*, i32** %34, align 8
  %36 = call i32 @sqlite3_value_int(i32* %35)
  store i32 %36, i32* %8, align 4
  %37 = load i32, i32* %8, align 4
  %38 = icmp eq i32 %37, 40
  br i1 %38, label %39, label %42

39:                                               ; preds = %32
  %40 = load i32*, i32** %4, align 8
  %41 = call i32 @sqlite3_result_error(i32* %40, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 -1)
  br label %54

42:                                               ; preds = %32
  %43 = load i32, i32* %8, align 4
  %44 = icmp eq i32 %43, 41
  br i1 %44, label %45, label %53

45:                                               ; preds = %42
  %46 = bitcast [9 x i8]* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %46, i8* align 1 getelementptr inbounds ([9 x i8], [9 x i8]* @__const.t1CountStep.zUtf16ErrMsg, i32 0, i32 0), i64 9, i1 false)
  %47 = load i32*, i32** %4, align 8
  %48 = load i32, i32* @SQLITE_BIGENDIAN, align 4
  %49 = sub nsw i32 1, %48
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds [9 x i8], [9 x i8]* %9, i64 0, i64 %50
  %52 = call i32 @sqlite3_result_error16(i32* %47, i8* %51, i32 -1)
  br label %53

53:                                               ; preds = %45, %42
  br label %54

54:                                               ; preds = %53, %39
  br label %55

55:                                               ; preds = %54, %29
  ret void
}

declare dso_local %struct.TYPE_3__* @sqlite3_aggregate_context(i32*, i32) #1

declare dso_local i64 @sqlite3_value_type(i32*) #1

declare dso_local i32 @sqlite3_value_int(i32*) #1

declare dso_local i32 @sqlite3_result_error(i32*, i8*, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @sqlite3_result_error16(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
