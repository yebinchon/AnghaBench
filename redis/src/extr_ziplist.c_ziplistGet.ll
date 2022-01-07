; ModuleID = '/home/carl/AnghaBench/redis/src/extr_ziplist.c_ziplistGet.c'
source_filename = "/home/carl/AnghaBench/redis/src/extr_ziplist.c_ziplistGet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32 }

@ZIP_END = common dso_local global i8 0, align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ziplistGet(i8* %0, i8** %1, i32* %2, i64* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8**, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i64*, align 8
  %10 = alloca %struct.TYPE_3__, align 4
  store i8* %0, i8** %6, align 8
  store i8** %1, i8*** %7, align 8
  store i32* %2, i32** %8, align 8
  store i64* %3, i64** %9, align 8
  %11 = load i8*, i8** %6, align 8
  %12 = icmp eq i8* %11, null
  br i1 %12, label %21, label %13

13:                                               ; preds = %4
  %14 = load i8*, i8** %6, align 8
  %15 = getelementptr inbounds i8, i8* %14, i64 0
  %16 = load i8, i8* %15, align 1
  %17 = zext i8 %16 to i32
  %18 = load i8, i8* @ZIP_END, align 1
  %19 = zext i8 %18 to i32
  %20 = icmp eq i32 %17, %19
  br i1 %20, label %21, label %22

21:                                               ; preds = %13, %4
  store i32 0, i32* %5, align 4
  br label %63

22:                                               ; preds = %13
  %23 = load i8**, i8*** %7, align 8
  %24 = icmp ne i8** %23, null
  br i1 %24, label %25, label %27

25:                                               ; preds = %22
  %26 = load i8**, i8*** %7, align 8
  store i8* null, i8** %26, align 8
  br label %27

27:                                               ; preds = %25, %22
  %28 = load i8*, i8** %6, align 8
  %29 = call i32 @zipEntry(i8* %28, %struct.TYPE_3__* %10)
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 2
  %31 = load i32, i32* %30, align 4
  %32 = call i64 @ZIP_IS_STR(i32 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %48

34:                                               ; preds = %27
  %35 = load i8**, i8*** %7, align 8
  %36 = icmp ne i8** %35, null
  br i1 %36, label %37, label %47

37:                                               ; preds = %34
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load i32*, i32** %8, align 8
  store i32 %39, i32* %40, align 4
  %41 = load i8*, i8** %6, align 8
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i8, i8* %41, i64 %44
  %46 = load i8**, i8*** %7, align 8
  store i8* %45, i8** %46, align 8
  br label %47

47:                                               ; preds = %37, %34
  br label %62

48:                                               ; preds = %27
  %49 = load i64*, i64** %9, align 8
  %50 = icmp ne i64* %49, null
  br i1 %50, label %51, label %61

51:                                               ; preds = %48
  %52 = load i8*, i8** %6, align 8
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i8, i8* %52, i64 %55
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 2
  %58 = load i32, i32* %57, align 4
  %59 = call i64 @zipLoadInteger(i8* %56, i32 %58)
  %60 = load i64*, i64** %9, align 8
  store i64 %59, i64* %60, align 8
  br label %61

61:                                               ; preds = %51, %48
  br label %62

62:                                               ; preds = %61, %47
  store i32 1, i32* %5, align 4
  br label %63

63:                                               ; preds = %62, %21
  %64 = load i32, i32* %5, align 4
  ret i32 %64
}

declare dso_local i32 @zipEntry(i8*, %struct.TYPE_3__*) #1

declare dso_local i64 @ZIP_IS_STR(i32) #1

declare dso_local i64 @zipLoadInteger(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
