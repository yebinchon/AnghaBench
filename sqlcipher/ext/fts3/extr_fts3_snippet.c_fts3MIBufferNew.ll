; ModuleID = '/home/carl/AnghaBench/sqlcipher/ext/fts3/extr_fts3_snippet.c_fts3MIBufferNew.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/ext/fts3/extr_fts3_snippet.c_fts3MIBufferNew.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32*, i32, i8*, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_5__* (i64, i8*)* @fts3MIBufferNew to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_5__* @fts3MIBufferNew(i64 %0, i8* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.TYPE_5__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i64 %0, i64* %3, align 8
  store i8* %1, i8** %4, align 8
  %8 = load i64, i64* %3, align 8
  %9 = trunc i64 %8 to i32
  %10 = mul nsw i32 2, %9
  %11 = add nsw i32 %10, 1
  %12 = sext i32 %11 to i64
  %13 = mul i64 4, %12
  %14 = add i64 %13, 32
  %15 = trunc i64 %14 to i32
  store i32 %15, i32* %6, align 4
  %16 = load i8*, i8** %4, align 8
  %17 = call i32 @strlen(i8* %16)
  store i32 %17, i32* %7, align 4
  %18 = load i32, i32* %6, align 4
  %19 = load i32, i32* %7, align 4
  %20 = add nsw i32 %18, %19
  %21 = add nsw i32 %20, 1
  %22 = call %struct.TYPE_5__* @sqlite3_malloc64(i32 %21)
  store %struct.TYPE_5__* %22, %struct.TYPE_5__** %5, align 8
  %23 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %24 = icmp ne %struct.TYPE_5__* %23, null
  br i1 %24, label %25, label %85

25:                                               ; preds = %2
  %26 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %27 = load i32, i32* %6, align 4
  %28 = call i32 @memset(%struct.TYPE_5__* %26, i32 0, i32 %27)
  %29 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 0
  %31 = load i32*, i32** %30, align 8
  %32 = getelementptr inbounds i32, i32* %31, i64 1
  %33 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %34 = bitcast %struct.TYPE_5__* %33 to i32*
  %35 = ptrtoint i32* %32 to i64
  %36 = ptrtoint i32* %34 to i64
  %37 = sub i64 %35, %36
  %38 = sdiv exact i64 %37, 4
  %39 = trunc i64 %38 to i32
  %40 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 0
  %42 = load i32*, i32** %41, align 8
  %43 = getelementptr inbounds i32, i32* %42, i64 0
  store i32 %39, i32* %43, align 4
  %44 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 0
  %46 = load i32*, i32** %45, align 8
  %47 = getelementptr inbounds i32, i32* %46, i64 0
  %48 = load i32, i32* %47, align 4
  %49 = sext i32 %48 to i64
  %50 = load i64, i64* %3, align 8
  %51 = trunc i64 %50 to i32
  %52 = add nsw i32 %51, 1
  %53 = sext i32 %52 to i64
  %54 = mul i64 4, %53
  %55 = add i64 %49, %54
  %56 = trunc i64 %55 to i32
  %57 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %57, i32 0, i32 0
  %59 = load i32*, i32** %58, align 8
  %60 = load i64, i64* %3, align 8
  %61 = add i64 1, %60
  %62 = getelementptr inbounds i32, i32* %59, i64 %61
  store i32 %56, i32* %62, align 4
  %63 = load i64, i64* %3, align 8
  %64 = trunc i64 %63 to i32
  %65 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %66 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %65, i32 0, i32 1
  store i32 %64, i32* %66, align 8
  %67 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %68 = bitcast %struct.TYPE_5__* %67 to i8*
  %69 = load i32, i32* %6, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i8, i8* %68, i64 %70
  %72 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %73 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %72, i32 0, i32 2
  store i8* %71, i8** %73, align 8
  %74 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %75 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %74, i32 0, i32 2
  %76 = load i8*, i8** %75, align 8
  %77 = load i8*, i8** %4, align 8
  %78 = load i32, i32* %7, align 4
  %79 = add nsw i32 %78, 1
  %80 = call i32 @memcpy(i8* %76, i8* %77, i32 %79)
  %81 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %82 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %81, i32 0, i32 3
  %83 = load i32*, i32** %82, align 8
  %84 = getelementptr inbounds i32, i32* %83, i64 0
  store i32 1, i32* %84, align 4
  br label %85

85:                                               ; preds = %25, %2
  %86 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  ret %struct.TYPE_5__* %86
}

declare dso_local i32 @strlen(i8*) #1

declare dso_local %struct.TYPE_5__* @sqlite3_malloc64(i32) #1

declare dso_local i32 @memset(%struct.TYPE_5__*, i32, i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
