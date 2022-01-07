; ModuleID = '/home/carl/AnghaBench/redis/src/extr_rdb.c_rdbSaveLongLongAsStringObject.c'
source_filename = "/home/carl/AnghaBench/redis/src/extr_rdb.c_rdbSaveLongLongAsStringObject.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rdbSaveLongLongAsStringObject(i32* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i64, align 8
  %6 = alloca [32 x i8], align 16
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i64 %1, i64* %5, align 8
  store i32 0, i32* %8, align 4
  %10 = load i64, i64* %5, align 8
  %11 = getelementptr inbounds [32 x i8], [32 x i8]* %6, i64 0, i64 0
  %12 = call i32 @rdbEncodeInteger(i64 %10, i8* %11)
  store i32 %12, i32* %9, align 4
  %13 = load i32, i32* %9, align 4
  %14 = icmp sgt i32 %13, 0
  br i1 %14, label %15, label %20

15:                                               ; preds = %2
  %16 = load i32*, i32** %4, align 8
  %17 = getelementptr inbounds [32 x i8], [32 x i8]* %6, i64 0, i64 0
  %18 = load i32, i32* %9, align 4
  %19 = call i32 @rdbWriteRaw(i32* %16, i8* %17, i32 %18)
  store i32 %19, i32* %3, align 4
  br label %49

20:                                               ; preds = %2
  %21 = getelementptr inbounds [32 x i8], [32 x i8]* %6, i64 0, i64 0
  %22 = load i64, i64* %5, align 8
  %23 = call i32 @ll2string(i8* %21, i32 32, i64 %22)
  store i32 %23, i32* %9, align 4
  %24 = load i32, i32* %9, align 4
  %25 = icmp slt i32 %24, 32
  %26 = zext i1 %25 to i32
  %27 = call i32 @serverAssert(i32 %26)
  %28 = load i32*, i32** %4, align 8
  %29 = load i32, i32* %9, align 4
  %30 = call i32 @rdbSaveLen(i32* %28, i32 %29)
  store i32 %30, i32* %7, align 4
  %31 = icmp eq i32 %30, -1
  br i1 %31, label %32, label %33

32:                                               ; preds = %20
  store i32 -1, i32* %3, align 4
  br label %49

33:                                               ; preds = %20
  %34 = load i32, i32* %7, align 4
  %35 = load i32, i32* %8, align 4
  %36 = add nsw i32 %35, %34
  store i32 %36, i32* %8, align 4
  %37 = load i32*, i32** %4, align 8
  %38 = getelementptr inbounds [32 x i8], [32 x i8]* %6, i64 0, i64 0
  %39 = load i32, i32* %9, align 4
  %40 = call i32 @rdbWriteRaw(i32* %37, i8* %38, i32 %39)
  store i32 %40, i32* %7, align 4
  %41 = icmp eq i32 %40, -1
  br i1 %41, label %42, label %43

42:                                               ; preds = %33
  store i32 -1, i32* %3, align 4
  br label %49

43:                                               ; preds = %33
  %44 = load i32, i32* %7, align 4
  %45 = load i32, i32* %8, align 4
  %46 = add nsw i32 %45, %44
  store i32 %46, i32* %8, align 4
  br label %47

47:                                               ; preds = %43
  %48 = load i32, i32* %8, align 4
  store i32 %48, i32* %3, align 4
  br label %49

49:                                               ; preds = %47, %42, %32, %15
  %50 = load i32, i32* %3, align 4
  ret i32 %50
}

declare dso_local i32 @rdbEncodeInteger(i64, i8*) #1

declare dso_local i32 @rdbWriteRaw(i32*, i8*, i32) #1

declare dso_local i32 @ll2string(i8*, i32, i64) #1

declare dso_local i32 @serverAssert(i32) #1

declare dso_local i32 @rdbSaveLen(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
