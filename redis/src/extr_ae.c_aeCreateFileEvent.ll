; ModuleID = '/home/carl/AnghaBench/redis/src/extr_ae.c_aeCreateFileEvent.c'
source_filename = "/home/carl/AnghaBench/redis/src/extr_ae.c_aeCreateFileEvent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32, i8*, i32*, i32* }

@ERANGE = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@AE_ERR = common dso_local global i32 0, align 4
@AE_READABLE = common dso_local global i32 0, align 4
@AE_WRITABLE = common dso_local global i32 0, align 4
@AE_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @aeCreateFileEvent(%struct.TYPE_6__* %0, i32 %1, i32 %2, i32* %3, i8* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_6__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca %struct.TYPE_5__*, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32* %3, i32** %10, align 8
  store i8* %4, i8** %11, align 8
  %13 = load i32, i32* %8, align 4
  %14 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = icmp sge i32 %13, %16
  br i1 %17, label %18, label %21

18:                                               ; preds = %5
  %19 = load i32, i32* @ERANGE, align 4
  store i32 %19, i32* @errno, align 4
  %20 = load i32, i32* @AE_ERR, align 4
  store i32 %20, i32* %6, align 4
  br label %73

21:                                               ; preds = %5
  %22 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 2
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** %23, align 8
  %25 = load i32, i32* %8, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i64 %26
  store %struct.TYPE_5__* %27, %struct.TYPE_5__** %12, align 8
  %28 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %29 = load i32, i32* %8, align 4
  %30 = load i32, i32* %9, align 4
  %31 = call i32 @aeApiAddEvent(%struct.TYPE_6__* %28, i32 %29, i32 %30)
  %32 = icmp eq i32 %31, -1
  br i1 %32, label %33, label %35

33:                                               ; preds = %21
  %34 = load i32, i32* @AE_ERR, align 4
  store i32 %34, i32* %6, align 4
  br label %73

35:                                               ; preds = %21
  %36 = load i32, i32* %9, align 4
  %37 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = or i32 %39, %36
  store i32 %40, i32* %38, align 8
  %41 = load i32, i32* %9, align 4
  %42 = load i32, i32* @AE_READABLE, align 4
  %43 = and i32 %41, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %49

45:                                               ; preds = %35
  %46 = load i32*, i32** %10, align 8
  %47 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i32 0, i32 3
  store i32* %46, i32** %48, align 8
  br label %49

49:                                               ; preds = %45, %35
  %50 = load i32, i32* %9, align 4
  %51 = load i32, i32* @AE_WRITABLE, align 4
  %52 = and i32 %50, %51
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %58

54:                                               ; preds = %49
  %55 = load i32*, i32** %10, align 8
  %56 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %57 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %56, i32 0, i32 2
  store i32* %55, i32** %57, align 8
  br label %58

58:                                               ; preds = %54, %49
  %59 = load i8*, i8** %11, align 8
  %60 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %61 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %60, i32 0, i32 1
  store i8* %59, i8** %61, align 8
  %62 = load i32, i32* %8, align 4
  %63 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = icmp sgt i32 %62, %65
  br i1 %66, label %67, label %71

67:                                               ; preds = %58
  %68 = load i32, i32* %8, align 4
  %69 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %70 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %69, i32 0, i32 1
  store i32 %68, i32* %70, align 4
  br label %71

71:                                               ; preds = %67, %58
  %72 = load i32, i32* @AE_OK, align 4
  store i32 %72, i32* %6, align 4
  br label %73

73:                                               ; preds = %71, %33, %18
  %74 = load i32, i32* %6, align 4
  ret i32 %74
}

declare dso_local i32 @aeApiAddEvent(%struct.TYPE_6__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
