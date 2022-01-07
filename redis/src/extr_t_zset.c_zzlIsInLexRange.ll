; ModuleID = '/home/carl/AnghaBench/redis/src/extr_t_zset.c_zzlIsInLexRange.c'
source_filename = "/home/carl/AnghaBench/redis/src/extr_t_zset.c_zzlIsInLexRange.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64, i64, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @zzlIsInLexRange(i8* %0, %struct.TYPE_5__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.TYPE_5__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store %struct.TYPE_5__* %1, %struct.TYPE_5__** %5, align 8
  %8 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %9 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 3
  %10 = load i32, i32* %9, align 4
  %11 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 2
  %13 = load i32, i32* %12, align 8
  %14 = call i32 @sdscmplex(i32 %10, i32 %13)
  store i32 %14, i32* %7, align 4
  %15 = load i32, i32* %7, align 4
  %16 = icmp sgt i32 %15, 0
  br i1 %16, label %30, label %17

17:                                               ; preds = %2
  %18 = load i32, i32* %7, align 4
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %31

20:                                               ; preds = %17
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %30, label %25

25:                                               ; preds = %20
  %26 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %25, %20, %2
  store i32 0, i32* %3, align 4
  br label %56

31:                                               ; preds = %25, %17
  %32 = load i8*, i8** %4, align 8
  %33 = call i8* @ziplistIndex(i8* %32, i32 -2)
  store i8* %33, i8** %6, align 8
  %34 = load i8*, i8** %6, align 8
  %35 = icmp eq i8* %34, null
  br i1 %35, label %36, label %37

36:                                               ; preds = %31
  store i32 0, i32* %3, align 4
  br label %56

37:                                               ; preds = %31
  %38 = load i8*, i8** %6, align 8
  %39 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %40 = call i32 @zzlLexValueGteMin(i8* %38, %struct.TYPE_5__* %39)
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %43, label %42

42:                                               ; preds = %37
  store i32 0, i32* %3, align 4
  br label %56

43:                                               ; preds = %37
  %44 = load i8*, i8** %4, align 8
  %45 = call i8* @ziplistIndex(i8* %44, i32 0)
  store i8* %45, i8** %6, align 8
  %46 = load i8*, i8** %6, align 8
  %47 = icmp ne i8* %46, null
  %48 = zext i1 %47 to i32
  %49 = call i32 @serverAssert(i32 %48)
  %50 = load i8*, i8** %6, align 8
  %51 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %52 = call i32 @zzlLexValueLteMax(i8* %50, %struct.TYPE_5__* %51)
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %55, label %54

54:                                               ; preds = %43
  store i32 0, i32* %3, align 4
  br label %56

55:                                               ; preds = %43
  store i32 1, i32* %3, align 4
  br label %56

56:                                               ; preds = %55, %54, %42, %36, %30
  %57 = load i32, i32* %3, align 4
  ret i32 %57
}

declare dso_local i32 @sdscmplex(i32, i32) #1

declare dso_local i8* @ziplistIndex(i8*, i32) #1

declare dso_local i32 @zzlLexValueGteMin(i8*, %struct.TYPE_5__*) #1

declare dso_local i32 @serverAssert(i32) #1

declare dso_local i32 @zzlLexValueLteMax(i8*, %struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
