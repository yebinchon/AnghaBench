; ModuleID = '/home/carl/AnghaBench/winfile/src/extr_wfinfo.c_DocFind.c'
source_filename = "/home/carl/AnghaBench/winfile/src/extr_wfinfo.c_DocFind.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, %struct.TYPE_6__* }

@EXTSIZ = common dso_local global i32 0, align 4
@FALSE = common dso_local global %struct.TYPE_6__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_6__* @DocFind(%struct.TYPE_6__** %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_6__*, align 8
  %4 = alloca %struct.TYPE_6__**, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_6__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store %struct.TYPE_6__** %0, %struct.TYPE_6__*** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load i32, i32* @EXTSIZ, align 4
  %11 = zext i32 %10 to i64
  %12 = call i8* @llvm.stacksave()
  store i8* %12, i8** %7, align 8
  %13 = alloca i32, i64 %11, align 16
  store i64 %11, i64* %8, align 8
  %14 = load i32, i32* %5, align 4
  %15 = call i32 @lstrlen(i32 %14)
  %16 = load i32, i32* @EXTSIZ, align 4
  %17 = icmp sge i32 %15, %16
  br i1 %17, label %21, label %18

18:                                               ; preds = %2
  %19 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %4, align 8
  %20 = icmp ne %struct.TYPE_6__** %19, null
  br i1 %20, label %23, label %21

21:                                               ; preds = %18, %2
  %22 = load %struct.TYPE_6__*, %struct.TYPE_6__** @FALSE, align 8
  store %struct.TYPE_6__* %22, %struct.TYPE_6__** %3, align 8
  store i32 1, i32* %9, align 4
  br label %49

23:                                               ; preds = %18
  %24 = load i32, i32* %5, align 4
  %25 = call i32 @lstrcpy(i32* %13, i32 %24)
  %26 = call i32 @CharLower(i32* %13)
  %27 = call i32 @RemoveEndQuote(i32* %13)
  %28 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %4, align 8
  %29 = call i64 @DOCHASHFUNC(i32* %13)
  %30 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %28, i64 %29
  %31 = load %struct.TYPE_6__*, %struct.TYPE_6__** %30, align 8
  store %struct.TYPE_6__* %31, %struct.TYPE_6__** %6, align 8
  br label %32

32:                                               ; preds = %44, %23
  %33 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %34 = icmp ne %struct.TYPE_6__* %33, null
  br i1 %34, label %35, label %48

35:                                               ; preds = %32
  %36 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = call i32 @lstrcmp(i32 %38, i32* %13)
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %43, label %41

41:                                               ; preds = %35
  %42 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  store %struct.TYPE_6__* %42, %struct.TYPE_6__** %3, align 8
  store i32 1, i32* %9, align 4
  br label %49

43:                                               ; preds = %35
  br label %44

44:                                               ; preds = %43
  %45 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 1
  %47 = load %struct.TYPE_6__*, %struct.TYPE_6__** %46, align 8
  store %struct.TYPE_6__* %47, %struct.TYPE_6__** %6, align 8
  br label %32

48:                                               ; preds = %32
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %3, align 8
  store i32 1, i32* %9, align 4
  br label %49

49:                                               ; preds = %48, %41, %21
  %50 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %50)
  %51 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  ret %struct.TYPE_6__* %51
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @lstrlen(i32) #2

declare dso_local i32 @lstrcpy(i32*, i32) #2

declare dso_local i32 @CharLower(i32*) #2

declare dso_local i32 @RemoveEndQuote(i32*) #2

declare dso_local i64 @DOCHASHFUNC(i32*) #2

declare dso_local i32 @lstrcmp(i32, i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
