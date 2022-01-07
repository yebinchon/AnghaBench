; ModuleID = '/home/carl/AnghaBench/sqlcipher/src/extr_build.c_sqlite3AllocateIndexObject.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/src/extr_build.c_sqlite3AllocateIndexObject.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i8**, i32*, i32, i32, i32*, i32* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_4__* @sqlite3AllocateIndexObject(i32* %0, i32 %1, i32 %2, i8** %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8**, align 8
  %9 = alloca %struct.TYPE_4__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  store i32* %0, i32** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i8** %3, i8*** %8, align 8
  %12 = call i32 @ROUND8(i32 40)
  %13 = load i32, i32* %6, align 4
  %14 = sext i32 %13 to i64
  %15 = mul i64 8, %14
  %16 = trunc i64 %15 to i32
  %17 = call i32 @ROUND8(i32 %16)
  %18 = add nsw i32 %12, %17
  %19 = load i32, i32* %6, align 4
  %20 = add nsw i32 %19, 1
  %21 = sext i32 %20 to i64
  %22 = mul i64 4, %21
  %23 = load i32, i32* %6, align 4
  %24 = sext i32 %23 to i64
  %25 = mul i64 4, %24
  %26 = add i64 %22, %25
  %27 = load i32, i32* %6, align 4
  %28 = sext i32 %27 to i64
  %29 = mul i64 4, %28
  %30 = add i64 %26, %29
  %31 = trunc i64 %30 to i32
  %32 = call i32 @ROUND8(i32 %31)
  %33 = add nsw i32 %18, %32
  store i32 %33, i32* %10, align 4
  %34 = load i32*, i32** %5, align 8
  %35 = load i32, i32* %10, align 4
  %36 = load i32, i32* %7, align 4
  %37 = add nsw i32 %35, %36
  %38 = call %struct.TYPE_4__* @sqlite3DbMallocZero(i32* %34, i32 %37)
  store %struct.TYPE_4__* %38, %struct.TYPE_4__** %9, align 8
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %40 = icmp ne %struct.TYPE_4__* %39, null
  br i1 %40, label %41, label %95

41:                                               ; preds = %4
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %43 = bitcast %struct.TYPE_4__* %42 to i8*
  %44 = call i32 @ROUND8(i32 40)
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i8, i8* %43, i64 %45
  store i8* %46, i8** %11, align 8
  %47 = load i8*, i8** %11, align 8
  %48 = bitcast i8* %47 to i8**
  %49 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 0
  store i8** %48, i8*** %50, align 8
  %51 = load i32, i32* %6, align 4
  %52 = sext i32 %51 to i64
  %53 = mul i64 8, %52
  %54 = trunc i64 %53 to i32
  %55 = call i32 @ROUND8(i32 %54)
  %56 = load i8*, i8** %11, align 8
  %57 = sext i32 %55 to i64
  %58 = getelementptr inbounds i8, i8* %56, i64 %57
  store i8* %58, i8** %11, align 8
  %59 = load i8*, i8** %11, align 8
  %60 = bitcast i8* %59 to i32*
  %61 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 5
  store i32* %60, i32** %62, align 8
  %63 = load i32, i32* %6, align 4
  %64 = add nsw i32 %63, 1
  %65 = sext i32 %64 to i64
  %66 = mul i64 4, %65
  %67 = load i8*, i8** %11, align 8
  %68 = getelementptr inbounds i8, i8* %67, i64 %66
  store i8* %68, i8** %11, align 8
  %69 = load i8*, i8** %11, align 8
  %70 = bitcast i8* %69 to i32*
  %71 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i32 0, i32 1
  store i32* %70, i32** %72, align 8
  %73 = load i32, i32* %6, align 4
  %74 = sext i32 %73 to i64
  %75 = mul i64 4, %74
  %76 = load i8*, i8** %11, align 8
  %77 = getelementptr inbounds i8, i8* %76, i64 %75
  store i8* %77, i8** %11, align 8
  %78 = load i8*, i8** %11, align 8
  %79 = bitcast i8* %78 to i32*
  %80 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %81 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %80, i32 0, i32 4
  store i32* %79, i32** %81, align 8
  %82 = load i32, i32* %6, align 4
  %83 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %84 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %83, i32 0, i32 2
  store i32 %82, i32* %84, align 8
  %85 = load i32, i32* %6, align 4
  %86 = sub nsw i32 %85, 1
  %87 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %88 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %87, i32 0, i32 3
  store i32 %86, i32* %88, align 4
  %89 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %90 = bitcast %struct.TYPE_4__* %89 to i8*
  %91 = load i32, i32* %10, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds i8, i8* %90, i64 %92
  %94 = load i8**, i8*** %8, align 8
  store i8* %93, i8** %94, align 8
  br label %95

95:                                               ; preds = %41, %4
  %96 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  ret %struct.TYPE_4__* %96
}

declare dso_local i32 @ROUND8(i32) #1

declare dso_local %struct.TYPE_4__* @sqlite3DbMallocZero(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
