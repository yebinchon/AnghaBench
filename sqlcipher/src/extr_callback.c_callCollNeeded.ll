; ModuleID = '/home/carl/AnghaBench/sqlcipher/src/extr_callback.c_callCollNeeded.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/src/extr_callback.c_callCollNeeded.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i32 (i32, %struct.TYPE_9__*, i32, i8*)*, i32 (i32, %struct.TYPE_9__*, i32, i8*)* }

@SQLITE_UTF8 = common dso_local global i32 0, align 4
@SQLITE_STATIC = common dso_local global i32 0, align 4
@SQLITE_UTF16NATIVE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_9__*, i32, i8*)* @callCollNeeded to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @callCollNeeded(%struct.TYPE_9__* %0, i32 %1, i8* %2) #0 {
  %4 = alloca %struct.TYPE_9__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32*, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %4, align 8
  store i32 %1, i32* %5, align 4
  store i8* %2, i8** %6, align 8
  %10 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %11 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %10, i32 0, i32 2
  %12 = load i32 (i32, %struct.TYPE_9__*, i32, i8*)*, i32 (i32, %struct.TYPE_9__*, i32, i8*)** %11, align 8
  %13 = icmp ne i32 (i32, %struct.TYPE_9__*, i32, i8*)* %12, null
  br i1 %13, label %14, label %20

14:                                               ; preds = %3
  %15 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %15, i32 0, i32 1
  %17 = load i32 (i32, %struct.TYPE_9__*, i32, i8*)*, i32 (i32, %struct.TYPE_9__*, i32, i8*)** %16, align 8
  %18 = icmp ne i32 (i32, %struct.TYPE_9__*, i32, i8*)* %17, null
  %19 = xor i1 %18, true
  br label %20

20:                                               ; preds = %14, %3
  %21 = phi i1 [ true, %3 ], [ %19, %14 ]
  %22 = zext i1 %21 to i32
  %23 = call i32 @assert(i32 %22)
  %24 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %25 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %24, i32 0, i32 2
  %26 = load i32 (i32, %struct.TYPE_9__*, i32, i8*)*, i32 (i32, %struct.TYPE_9__*, i32, i8*)** %25, align 8
  %27 = icmp ne i32 (i32, %struct.TYPE_9__*, i32, i8*)* %26, null
  br i1 %27, label %28, label %49

28:                                               ; preds = %20
  %29 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %30 = load i8*, i8** %6, align 8
  %31 = call i8* @sqlite3DbStrDup(%struct.TYPE_9__* %29, i8* %30)
  store i8* %31, i8** %7, align 8
  %32 = load i8*, i8** %7, align 8
  %33 = icmp ne i8* %32, null
  br i1 %33, label %35, label %34

34:                                               ; preds = %28
  br label %83

35:                                               ; preds = %28
  %36 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %37 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %36, i32 0, i32 2
  %38 = load i32 (i32, %struct.TYPE_9__*, i32, i8*)*, i32 (i32, %struct.TYPE_9__*, i32, i8*)** %37, align 8
  %39 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %40 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %43 = load i32, i32* %5, align 4
  %44 = load i8*, i8** %7, align 8
  %45 = call i32 %38(i32 %41, %struct.TYPE_9__* %42, i32 %43, i8* %44)
  %46 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %47 = load i8*, i8** %7, align 8
  %48 = call i32 @sqlite3DbFree(%struct.TYPE_9__* %46, i8* %47)
  br label %49

49:                                               ; preds = %35, %20
  %50 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %51 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %50, i32 0, i32 1
  %52 = load i32 (i32, %struct.TYPE_9__*, i32, i8*)*, i32 (i32, %struct.TYPE_9__*, i32, i8*)** %51, align 8
  %53 = icmp ne i32 (i32, %struct.TYPE_9__*, i32, i8*)* %52, null
  br i1 %53, label %54, label %83

54:                                               ; preds = %49
  %55 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %56 = call i32* @sqlite3ValueNew(%struct.TYPE_9__* %55)
  store i32* %56, i32** %9, align 8
  %57 = load i32*, i32** %9, align 8
  %58 = load i8*, i8** %6, align 8
  %59 = load i32, i32* @SQLITE_UTF8, align 4
  %60 = load i32, i32* @SQLITE_STATIC, align 4
  %61 = call i32 @sqlite3ValueSetStr(i32* %57, i32 -1, i8* %58, i32 %59, i32 %60)
  %62 = load i32*, i32** %9, align 8
  %63 = load i32, i32* @SQLITE_UTF16NATIVE, align 4
  %64 = call i8* @sqlite3ValueText(i32* %62, i32 %63)
  store i8* %64, i8** %8, align 8
  %65 = load i8*, i8** %8, align 8
  %66 = icmp ne i8* %65, null
  br i1 %66, label %67, label %80

67:                                               ; preds = %54
  %68 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %69 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %68, i32 0, i32 1
  %70 = load i32 (i32, %struct.TYPE_9__*, i32, i8*)*, i32 (i32, %struct.TYPE_9__*, i32, i8*)** %69, align 8
  %71 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %72 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %75 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %76 = call i64 @ENC(%struct.TYPE_9__* %75)
  %77 = trunc i64 %76 to i32
  %78 = load i8*, i8** %8, align 8
  %79 = call i32 %70(i32 %73, %struct.TYPE_9__* %74, i32 %77, i8* %78)
  br label %80

80:                                               ; preds = %67, %54
  %81 = load i32*, i32** %9, align 8
  %82 = call i32 @sqlite3ValueFree(i32* %81)
  br label %83

83:                                               ; preds = %34, %80, %49
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i8* @sqlite3DbStrDup(%struct.TYPE_9__*, i8*) #1

declare dso_local i32 @sqlite3DbFree(%struct.TYPE_9__*, i8*) #1

declare dso_local i32* @sqlite3ValueNew(%struct.TYPE_9__*) #1

declare dso_local i32 @sqlite3ValueSetStr(i32*, i32, i8*, i32, i32) #1

declare dso_local i8* @sqlite3ValueText(i32*, i32) #1

declare dso_local i64 @ENC(%struct.TYPE_9__*) #1

declare dso_local i32 @sqlite3ValueFree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
