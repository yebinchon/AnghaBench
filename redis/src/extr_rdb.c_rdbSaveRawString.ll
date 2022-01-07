; ModuleID = '/home/carl/AnghaBench/redis/src/extr_rdb.c_rdbSaveRawString.c'
source_filename = "/home/carl/AnghaBench/redis/src/extr_rdb.c_rdbSaveRawString.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }

@server = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rdbSaveRawString(i32* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca [5 x i8], align 1
  store i32* %0, i32** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  store i32 0, i32* %10, align 4
  %12 = load i64, i64* %7, align 8
  %13 = icmp ule i64 %12, 11
  br i1 %13, label %14, label %31

14:                                               ; preds = %3
  %15 = load i8*, i8** %6, align 8
  %16 = load i64, i64* %7, align 8
  %17 = getelementptr inbounds [5 x i8], [5 x i8]* %11, i64 0, i64 0
  %18 = call i32 @rdbTryIntegerEncoding(i8* %15, i64 %16, i8* %17)
  store i32 %18, i32* %8, align 4
  %19 = icmp sgt i32 %18, 0
  br i1 %19, label %20, label %30

20:                                               ; preds = %14
  %21 = load i32*, i32** %5, align 8
  %22 = getelementptr inbounds [5 x i8], [5 x i8]* %11, i64 0, i64 0
  %23 = load i32, i32* %8, align 4
  %24 = sext i32 %23 to i64
  %25 = call i32 @rdbWriteRaw(i32* %21, i8* %22, i64 %24)
  %26 = icmp eq i32 %25, -1
  br i1 %26, label %27, label %28

27:                                               ; preds = %20
  store i32 -1, i32* %4, align 4
  br label %78

28:                                               ; preds = %20
  %29 = load i32, i32* %8, align 4
  store i32 %29, i32* %4, align 4
  br label %78

30:                                               ; preds = %14
  br label %31

31:                                               ; preds = %30, %3
  %32 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @server, i32 0, i32 0), align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %51

34:                                               ; preds = %31
  %35 = load i64, i64* %7, align 8
  %36 = icmp ugt i64 %35, 20
  br i1 %36, label %37, label %51

37:                                               ; preds = %34
  %38 = load i32*, i32** %5, align 8
  %39 = load i8*, i8** %6, align 8
  %40 = load i64, i64* %7, align 8
  %41 = call i32 @rdbSaveLzfStringObject(i32* %38, i8* %39, i64 %40)
  store i32 %41, i32* %9, align 4
  %42 = load i32, i32* %9, align 4
  %43 = icmp eq i32 %42, -1
  br i1 %43, label %44, label %45

44:                                               ; preds = %37
  store i32 -1, i32* %4, align 4
  br label %78

45:                                               ; preds = %37
  %46 = load i32, i32* %9, align 4
  %47 = icmp sgt i32 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %45
  %49 = load i32, i32* %9, align 4
  store i32 %49, i32* %4, align 4
  br label %78

50:                                               ; preds = %45
  br label %51

51:                                               ; preds = %50, %34, %31
  %52 = load i32*, i32** %5, align 8
  %53 = load i64, i64* %7, align 8
  %54 = call i32 @rdbSaveLen(i32* %52, i64 %53)
  store i32 %54, i32* %9, align 4
  %55 = icmp eq i32 %54, -1
  br i1 %55, label %56, label %57

56:                                               ; preds = %51
  store i32 -1, i32* %4, align 4
  br label %78

57:                                               ; preds = %51
  %58 = load i32, i32* %9, align 4
  %59 = load i32, i32* %10, align 4
  %60 = add nsw i32 %59, %58
  store i32 %60, i32* %10, align 4
  %61 = load i64, i64* %7, align 8
  %62 = icmp ugt i64 %61, 0
  br i1 %62, label %63, label %76

63:                                               ; preds = %57
  %64 = load i32*, i32** %5, align 8
  %65 = load i8*, i8** %6, align 8
  %66 = load i64, i64* %7, align 8
  %67 = call i32 @rdbWriteRaw(i32* %64, i8* %65, i64 %66)
  %68 = icmp eq i32 %67, -1
  br i1 %68, label %69, label %70

69:                                               ; preds = %63
  store i32 -1, i32* %4, align 4
  br label %78

70:                                               ; preds = %63
  %71 = load i64, i64* %7, align 8
  %72 = load i32, i32* %10, align 4
  %73 = sext i32 %72 to i64
  %74 = add i64 %73, %71
  %75 = trunc i64 %74 to i32
  store i32 %75, i32* %10, align 4
  br label %76

76:                                               ; preds = %70, %57
  %77 = load i32, i32* %10, align 4
  store i32 %77, i32* %4, align 4
  br label %78

78:                                               ; preds = %76, %69, %56, %48, %44, %28, %27
  %79 = load i32, i32* %4, align 4
  ret i32 %79
}

declare dso_local i32 @rdbTryIntegerEncoding(i8*, i64, i8*) #1

declare dso_local i32 @rdbWriteRaw(i32*, i8*, i64) #1

declare dso_local i32 @rdbSaveLzfStringObject(i32*, i8*, i64) #1

declare dso_local i32 @rdbSaveLen(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
