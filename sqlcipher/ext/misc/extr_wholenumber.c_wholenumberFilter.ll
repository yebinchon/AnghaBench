; ModuleID = '/home/carl/AnghaBench/sqlcipher/ext/misc/extr_wholenumber.c_wholenumberFilter.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/ext/misc/extr_wholenumber.c_wholenumberFilter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32 }

@SQLITE_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32, i8*, i32, i32**)* @wholenumberFilter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wholenumberFilter(i32* %0, i32 %1, i8* %2, i32 %3, i32** %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32**, align 8
  %11 = alloca %struct.TYPE_2__*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32** %4, i32*** %10, align 8
  %14 = load i32*, i32** %6, align 8
  %15 = bitcast i32* %14 to %struct.TYPE_2__*
  store %struct.TYPE_2__* %15, %struct.TYPE_2__** %11, align 8
  store i32 0, i32* %13, align 4
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  store i32 1, i32* %17, align 4
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 1
  store i32 -1, i32* %19, align 4
  %20 = load i32, i32* %7, align 4
  %21 = and i32 %20, 3
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %56

23:                                               ; preds = %5
  %24 = load i32**, i32*** %10, align 8
  %25 = getelementptr inbounds i32*, i32** %24, i64 0
  %26 = load i32*, i32** %25, align 8
  %27 = call i32 @sqlite3_value_int64(i32* %26)
  %28 = load i32, i32* %7, align 4
  %29 = and i32 %28, 1
  %30 = add nsw i32 %27, %29
  %31 = sext i32 %30 to i64
  %32 = inttoptr i64 %31 to i8*
  store i8* %32, i8** %12, align 8
  %33 = load i8*, i8** %12, align 8
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = sext i32 %36 to i64
  %38 = inttoptr i64 %37 to i8*
  %39 = icmp ugt i8* %33, %38
  br i1 %39, label %40, label %53

40:                                               ; preds = %23
  %41 = load i8*, i8** %12, align 8
  %42 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = sext i32 %44 to i64
  %46 = inttoptr i64 %45 to i8*
  %47 = icmp ule i8* %41, %46
  br i1 %47, label %48, label %53

48:                                               ; preds = %40
  %49 = load i8*, i8** %12, align 8
  %50 = ptrtoint i8* %49 to i32
  %51 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 0
  store i32 %50, i32* %52, align 4
  br label %53

53:                                               ; preds = %48, %40, %23
  %54 = load i32, i32* %13, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %13, align 4
  br label %56

56:                                               ; preds = %53, %5
  %57 = load i32, i32* %7, align 4
  %58 = and i32 %57, 12
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %94

60:                                               ; preds = %56
  %61 = load i32**, i32*** %10, align 8
  %62 = load i32, i32* %13, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i32*, i32** %61, i64 %63
  %65 = load i32*, i32** %64, align 8
  %66 = call i32 @sqlite3_value_int64(i32* %65)
  %67 = load i32, i32* %7, align 4
  %68 = ashr i32 %67, 2
  %69 = and i32 %68, 1
  %70 = sub nsw i32 %66, %69
  %71 = sext i32 %70 to i64
  %72 = inttoptr i64 %71 to i8*
  store i8* %72, i8** %12, align 8
  %73 = load i8*, i8** %12, align 8
  %74 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = sext i32 %76 to i64
  %78 = inttoptr i64 %77 to i8*
  %79 = icmp uge i8* %73, %78
  br i1 %79, label %80, label %93

80:                                               ; preds = %60
  %81 = load i8*, i8** %12, align 8
  %82 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %83 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = sext i32 %84 to i64
  %86 = inttoptr i64 %85 to i8*
  %87 = icmp ult i8* %81, %86
  br i1 %87, label %88, label %93

88:                                               ; preds = %80
  %89 = load i8*, i8** %12, align 8
  %90 = ptrtoint i8* %89 to i32
  %91 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %92 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %91, i32 0, i32 1
  store i32 %90, i32* %92, align 4
  br label %93

93:                                               ; preds = %88, %80, %60
  br label %94

94:                                               ; preds = %93, %56
  %95 = load i32, i32* @SQLITE_OK, align 4
  ret i32 %95
}

declare dso_local i32 @sqlite3_value_int64(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
