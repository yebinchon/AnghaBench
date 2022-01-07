; ModuleID = '/home/carl/AnghaBench/sqlcipher/src/extr_bitvec.c_sqlite3BitvecTestNotNull.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/src/extr_bitvec.c_sqlite3BitvecTestNotNull.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32*, i32*, %struct.TYPE_5__** }

@BITVEC_NBIT = common dso_local global i64 0, align 8
@BITVEC_SZELEM = common dso_local global i64 0, align 8
@BITVEC_NINT = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sqlite3BitvecTestNotNull(%struct.TYPE_5__* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %4, align 8
  store i64 %1, i64* %5, align 8
  %8 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %9 = icmp ne %struct.TYPE_5__* %8, null
  %10 = zext i1 %9 to i32
  %11 = call i32 @assert(i32 %10)
  %12 = load i64, i64* %5, align 8
  %13 = add i64 %12, -1
  store i64 %13, i64* %5, align 8
  %14 = load i64, i64* %5, align 8
  %15 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp uge i64 %14, %17
  br i1 %18, label %19, label %20

19:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %107

20:                                               ; preds = %2
  br label %21

21:                                               ; preds = %49, %20
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 8
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %50

26:                                               ; preds = %21
  %27 = load i64, i64* %5, align 8
  %28 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 8
  %31 = sext i32 %30 to i64
  %32 = udiv i64 %27, %31
  store i64 %32, i64* %6, align 8
  %33 = load i64, i64* %5, align 8
  %34 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 8
  %37 = sext i32 %36 to i64
  %38 = urem i64 %33, %37
  store i64 %38, i64* %5, align 8
  %39 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 2
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 2
  %42 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %41, align 8
  %43 = load i64, i64* %6, align 8
  %44 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %42, i64 %43
  %45 = load %struct.TYPE_5__*, %struct.TYPE_5__** %44, align 8
  store %struct.TYPE_5__* %45, %struct.TYPE_5__** %4, align 8
  %46 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %47 = icmp ne %struct.TYPE_5__* %46, null
  br i1 %47, label %49, label %48

48:                                               ; preds = %26
  store i32 0, i32* %3, align 4
  br label %107

49:                                               ; preds = %26
  br label %21

50:                                               ; preds = %21
  %51 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* @BITVEC_NBIT, align 8
  %55 = icmp ule i64 %53, %54
  br i1 %55, label %56, label %75

56:                                               ; preds = %50
  %57 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %57, i32 0, i32 2
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 0
  %60 = load i32*, i32** %59, align 8
  %61 = load i64, i64* %5, align 8
  %62 = load i64, i64* @BITVEC_SZELEM, align 8
  %63 = udiv i64 %61, %62
  %64 = getelementptr inbounds i32, i32* %60, i64 %63
  %65 = load i32, i32* %64, align 4
  %66 = load i64, i64* %5, align 8
  %67 = load i64, i64* @BITVEC_SZELEM, align 8
  %68 = sub i64 %67, 1
  %69 = and i64 %66, %68
  %70 = trunc i64 %69 to i32
  %71 = shl i32 1, %70
  %72 = and i32 %65, %71
  %73 = icmp ne i32 %72, 0
  %74 = zext i1 %73 to i32
  store i32 %74, i32* %3, align 4
  br label %107

75:                                               ; preds = %50
  %76 = load i64, i64* %5, align 8
  %77 = add i64 %76, 1
  store i64 %77, i64* %5, align 8
  %78 = trunc i64 %76 to i32
  %79 = call i64 @BITVEC_HASH(i32 %78)
  store i64 %79, i64* %7, align 8
  br label %80

80:                                               ; preds = %101, %75
  %81 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %82 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %81, i32 0, i32 2
  %83 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %82, i32 0, i32 1
  %84 = load i32*, i32** %83, align 8
  %85 = load i64, i64* %7, align 8
  %86 = getelementptr inbounds i32, i32* %84, i64 %85
  %87 = load i32, i32* %86, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %106

89:                                               ; preds = %80
  %90 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %91 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %90, i32 0, i32 2
  %92 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %91, i32 0, i32 1
  %93 = load i32*, i32** %92, align 8
  %94 = load i64, i64* %7, align 8
  %95 = getelementptr inbounds i32, i32* %93, i64 %94
  %96 = load i32, i32* %95, align 4
  %97 = sext i32 %96 to i64
  %98 = load i64, i64* %5, align 8
  %99 = icmp eq i64 %97, %98
  br i1 %99, label %100, label %101

100:                                              ; preds = %89
  store i32 1, i32* %3, align 4
  br label %107

101:                                              ; preds = %89
  %102 = load i64, i64* %7, align 8
  %103 = add i64 %102, 1
  %104 = load i64, i64* @BITVEC_NINT, align 8
  %105 = urem i64 %103, %104
  store i64 %105, i64* %7, align 8
  br label %80

106:                                              ; preds = %80
  store i32 0, i32* %3, align 4
  br label %107

107:                                              ; preds = %106, %100, %56, %48, %19
  %108 = load i32, i32* %3, align 4
  ret i32 %108
}

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @BITVEC_HASH(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
