; ModuleID = '/home/carl/AnghaBench/winfile/src/extr_wfinfo.c_DocInsert.c'
source_filename = "/home/carl/AnghaBench/winfile/src/extr_wfinfo.c_DocInsert.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32*, i32*, i32*, %struct.TYPE_5__* }

@EXTSIZ = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@LPTR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @DocInsert(%struct.TYPE_5__** %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_5__**, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_5__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store %struct.TYPE_5__** %0, %struct.TYPE_5__*** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  %13 = load i32, i32* @EXTSIZ, align 4
  %14 = zext i32 %13 to i64
  %15 = call i8* @llvm.stacksave()
  store i8* %15, i8** %10, align 8
  %16 = alloca i32, i64 %14, align 16
  store i64 %14, i64* %11, align 8
  %17 = load i32*, i32** %6, align 8
  %18 = call i32 @lstrlen(i32* %17)
  %19 = load i32, i32* @EXTSIZ, align 4
  %20 = icmp sge i32 %18, %19
  br i1 %20, label %24, label %21

21:                                               ; preds = %3
  %22 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %5, align 8
  %23 = icmp ne %struct.TYPE_5__** %22, null
  br i1 %23, label %26, label %24

24:                                               ; preds = %21, %3
  %25 = load i32, i32* @FALSE, align 4
  store i32 %25, i32* %4, align 4
  store i32 1, i32* %12, align 4
  br label %91

26:                                               ; preds = %21
  %27 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %5, align 8
  %28 = load i32*, i32** %6, align 8
  %29 = call i64 @DocFind(%struct.TYPE_5__** %27, i32* %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %26
  store i32 -1, i32* %4, align 4
  store i32 1, i32* %12, align 4
  br label %91

32:                                               ; preds = %26
  %33 = load i32, i32* @LPTR, align 4
  %34 = call i64 @LocalAlloc(i32 %33, i32 4)
  %35 = inttoptr i64 %34 to %struct.TYPE_5__*
  store %struct.TYPE_5__* %35, %struct.TYPE_5__** %8, align 8
  %36 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %37 = icmp ne %struct.TYPE_5__* %36, null
  br i1 %37, label %39, label %38

38:                                               ; preds = %32
  store i32 0, i32* %4, align 4
  store i32 1, i32* %12, align 4
  br label %91

39:                                               ; preds = %32
  %40 = load i32*, i32** %6, align 8
  %41 = call i32 @DOCHASHFUNC(i32* %40)
  store i32 %41, i32* %9, align 4
  %42 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %5, align 8
  %43 = load i32, i32* %9, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %42, i64 %44
  %46 = load %struct.TYPE_5__*, %struct.TYPE_5__** %45, align 8
  %47 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i32 0, i32 3
  store %struct.TYPE_5__* %46, %struct.TYPE_5__** %48, align 8
  %49 = load i32*, i32** %6, align 8
  %50 = call i32 @CharLower(i32* %49)
  %51 = load i32*, i32** %6, align 8
  %52 = call i32 @lstrcpy(i32* %16, i32* %51)
  %53 = call i32 @RemoveEndQuote(i32* %16)
  %54 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %55 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %54, i32 0, i32 2
  %56 = load i32*, i32** %55, align 8
  %57 = call i32 @lstrcpy(i32* %56, i32* %16)
  %58 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %59 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %58, i32 0, i32 1
  store i32* null, i32** %59, align 8
  %60 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %61 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %60, i32 0, i32 0
  store i32* null, i32** %61, align 8
  %62 = load i32*, i32** %7, align 8
  %63 = icmp ne i32* %62, null
  br i1 %63, label %64, label %74

64:                                               ; preds = %39
  %65 = load i32, i32* @LPTR, align 4
  %66 = load i32*, i32** %7, align 8
  %67 = call i32 @lstrlen(i32* %66)
  %68 = add nsw i32 %67, 1
  %69 = call i32 @ByteCountOf(i32 %68)
  %70 = call i64 @LocalAlloc(i32 %65, i32 %69)
  %71 = inttoptr i64 %70 to i32*
  %72 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %73 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %72, i32 0, i32 0
  store i32* %71, i32** %73, align 8
  br label %74

74:                                               ; preds = %64, %39
  %75 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %76 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %75, i32 0, i32 0
  %77 = load i32*, i32** %76, align 8
  %78 = icmp ne i32* %77, null
  br i1 %78, label %79, label %85

79:                                               ; preds = %74
  %80 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %81 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %80, i32 0, i32 0
  %82 = load i32*, i32** %81, align 8
  %83 = load i32*, i32** %7, align 8
  %84 = call i32 @lstrcpy(i32* %82, i32* %83)
  br label %85

85:                                               ; preds = %79, %74
  %86 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %87 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %5, align 8
  %88 = load i32, i32* %9, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %87, i64 %89
  store %struct.TYPE_5__* %86, %struct.TYPE_5__** %90, align 8
  store i32 1, i32* %4, align 4
  store i32 1, i32* %12, align 4
  br label %91

91:                                               ; preds = %85, %38, %31, %24
  %92 = load i8*, i8** %10, align 8
  call void @llvm.stackrestore(i8* %92)
  %93 = load i32, i32* %4, align 4
  ret i32 %93
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @lstrlen(i32*) #2

declare dso_local i64 @DocFind(%struct.TYPE_5__**, i32*) #2

declare dso_local i64 @LocalAlloc(i32, i32) #2

declare dso_local i32 @DOCHASHFUNC(i32*) #2

declare dso_local i32 @CharLower(i32*) #2

declare dso_local i32 @lstrcpy(i32*, i32*) #2

declare dso_local i32 @RemoveEndQuote(i32*) #2

declare dso_local i32 @ByteCountOf(i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
