; ModuleID = '/home/carl/AnghaBench/redis/src/extr_rdb.c_rdbSaveRioWithEOFMark.c'
source_filename = "/home/carl/AnghaBench/redis/src/extr_rdb.c_rdbSaveRioWithEOFMark.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@RDB_EOF_MARK_SIZE = common dso_local global i32 0, align 4
@RDBFLAGS_REPLICATION = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"$EOF:\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"\0D\0A\00", align 1
@RDBFLAGS_NONE = common dso_local global i32 0, align 4
@C_ERR = common dso_local global i64 0, align 8
@C_OK = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rdbSaveRioWithEOFMark(i32* %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  %11 = load i32, i32* @RDB_EOF_MARK_SIZE, align 4
  %12 = zext i32 %11 to i64
  %13 = call i8* @llvm.stacksave()
  store i8* %13, i8** %8, align 8
  %14 = alloca i8, i64 %12, align 16
  store i64 %12, i64* %9, align 8
  %15 = load i32, i32* @RDBFLAGS_REPLICATION, align 4
  %16 = call i32 @startSaving(i32 %15)
  %17 = load i32, i32* @RDB_EOF_MARK_SIZE, align 4
  %18 = call i32 @getRandomHexChars(i8* %14, i32 %17)
  %19 = load i32*, i32** %6, align 8
  %20 = icmp ne i32* %19, null
  br i1 %20, label %21, label %23

21:                                               ; preds = %3
  %22 = load i32*, i32** %6, align 8
  store i32 0, i32* %22, align 4
  br label %23

23:                                               ; preds = %21, %3
  %24 = load i32*, i32** %5, align 8
  %25 = call i64 @rioWrite(i32* %24, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 5)
  %26 = icmp eq i64 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %23
  br label %57

28:                                               ; preds = %23
  %29 = load i32*, i32** %5, align 8
  %30 = load i32, i32* @RDB_EOF_MARK_SIZE, align 4
  %31 = call i64 @rioWrite(i32* %29, i8* %14, i32 %30)
  %32 = icmp eq i64 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %28
  br label %57

34:                                               ; preds = %28
  %35 = load i32*, i32** %5, align 8
  %36 = call i64 @rioWrite(i32* %35, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32 2)
  %37 = icmp eq i64 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %34
  br label %57

39:                                               ; preds = %34
  %40 = load i32*, i32** %5, align 8
  %41 = load i32*, i32** %6, align 8
  %42 = load i32, i32* @RDBFLAGS_NONE, align 4
  %43 = load i32*, i32** %7, align 8
  %44 = call i64 @rdbSaveRio(i32* %40, i32* %41, i32 %42, i32* %43)
  %45 = load i64, i64* @C_ERR, align 8
  %46 = icmp eq i64 %44, %45
  br i1 %46, label %47, label %48

47:                                               ; preds = %39
  br label %57

48:                                               ; preds = %39
  %49 = load i32*, i32** %5, align 8
  %50 = load i32, i32* @RDB_EOF_MARK_SIZE, align 4
  %51 = call i64 @rioWrite(i32* %49, i8* %14, i32 %50)
  %52 = icmp eq i64 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %48
  br label %57

54:                                               ; preds = %48
  %55 = call i32 @stopSaving(i32 1)
  %56 = load i32, i32* @C_OK, align 4
  store i32 %56, i32* %4, align 4
  store i32 1, i32* %10, align 4
  br label %71

57:                                               ; preds = %53, %47, %38, %33, %27
  %58 = load i32*, i32** %6, align 8
  %59 = icmp ne i32* %58, null
  br i1 %59, label %60, label %67

60:                                               ; preds = %57
  %61 = load i32*, i32** %6, align 8
  %62 = load i32, i32* %61, align 4
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %64, label %67

64:                                               ; preds = %60
  %65 = load i32, i32* @errno, align 4
  %66 = load i32*, i32** %6, align 8
  store i32 %65, i32* %66, align 4
  br label %67

67:                                               ; preds = %64, %60, %57
  %68 = call i32 @stopSaving(i32 0)
  %69 = load i64, i64* @C_ERR, align 8
  %70 = trunc i64 %69 to i32
  store i32 %70, i32* %4, align 4
  store i32 1, i32* %10, align 4
  br label %71

71:                                               ; preds = %67, %54
  %72 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %72)
  %73 = load i32, i32* %4, align 4
  ret i32 %73
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @startSaving(i32) #2

declare dso_local i32 @getRandomHexChars(i8*, i32) #2

declare dso_local i64 @rioWrite(i32*, i8*, i32) #2

declare dso_local i64 @rdbSaveRio(i32*, i32*, i32, i32*) #2

declare dso_local i32 @stopSaving(i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
