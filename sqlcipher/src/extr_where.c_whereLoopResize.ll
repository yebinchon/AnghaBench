; ModuleID = '/home/carl/AnghaBench/sqlcipher/src/extr_where.c_whereLoopResize.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/src/extr_where.c_whereLoopResize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32**, i32** }

@SQLITE_OK = common dso_local global i32 0, align 4
@SQLITE_NOMEM_BKPT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.TYPE_3__*, i32)* @whereLoopResize to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @whereLoopResize(i32* %0, %struct.TYPE_3__* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_3__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32**, align 8
  store i32* %0, i32** %5, align 8
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = load i32, i32* %7, align 4
  %13 = icmp sge i32 %11, %12
  br i1 %13, label %14, label %16

14:                                               ; preds = %3
  %15 = load i32, i32* @SQLITE_OK, align 4
  store i32 %15, i32* %4, align 4
  br label %63

16:                                               ; preds = %3
  %17 = load i32, i32* %7, align 4
  %18 = add nsw i32 %17, 7
  %19 = and i32 %18, -8
  store i32 %19, i32* %7, align 4
  %20 = load i32*, i32** %5, align 8
  %21 = load i32, i32* %7, align 4
  %22 = sext i32 %21 to i64
  %23 = mul i64 8, %22
  %24 = trunc i64 %23 to i32
  %25 = call i32** @sqlite3DbMallocRawNN(i32* %20, i32 %24)
  store i32** %25, i32*** %8, align 8
  %26 = load i32**, i32*** %8, align 8
  %27 = icmp eq i32** %26, null
  br i1 %27, label %28, label %30

28:                                               ; preds = %16
  %29 = load i32, i32* @SQLITE_NOMEM_BKPT, align 4
  store i32 %29, i32* %4, align 4
  br label %63

30:                                               ; preds = %16
  %31 = load i32**, i32*** %8, align 8
  %32 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 1
  %34 = load i32**, i32*** %33, align 8
  %35 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = sext i32 %37 to i64
  %39 = mul i64 8, %38
  %40 = trunc i64 %39 to i32
  %41 = call i32 @memcpy(i32** %31, i32** %34, i32 %40)
  %42 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 1
  %44 = load i32**, i32*** %43, align 8
  %45 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 2
  %47 = load i32**, i32*** %46, align 8
  %48 = icmp ne i32** %44, %47
  br i1 %48, label %49, label %55

49:                                               ; preds = %30
  %50 = load i32*, i32** %5, align 8
  %51 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 1
  %53 = load i32**, i32*** %52, align 8
  %54 = call i32 @sqlite3DbFreeNN(i32* %50, i32** %53)
  br label %55

55:                                               ; preds = %49, %30
  %56 = load i32**, i32*** %8, align 8
  %57 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i32 0, i32 1
  store i32** %56, i32*** %58, align 8
  %59 = load i32, i32* %7, align 4
  %60 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %60, i32 0, i32 0
  store i32 %59, i32* %61, align 8
  %62 = load i32, i32* @SQLITE_OK, align 4
  store i32 %62, i32* %4, align 4
  br label %63

63:                                               ; preds = %55, %28, %14
  %64 = load i32, i32* %4, align 4
  ret i32 %64
}

declare dso_local i32** @sqlite3DbMallocRawNN(i32*, i32) #1

declare dso_local i32 @memcpy(i32**, i32**, i32) #1

declare dso_local i32 @sqlite3DbFreeNN(i32*, i32**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
