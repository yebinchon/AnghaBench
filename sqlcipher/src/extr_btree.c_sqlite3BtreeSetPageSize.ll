; ModuleID = '/home/carl/AnghaBench/sqlcipher/src/extr_btree.c_sqlite3BtreeSetPageSize.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/src/extr_btree.c_sqlite3BtreeSetPageSize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32, i32, i32, i32, i32, i32 }

@SQLITE_OK = common dso_local global i32 0, align 4
@BTS_PAGESIZE_FIXED = common dso_local global i32 0, align 4
@SQLITE_READONLY = common dso_local global i32 0, align 4
@SQLITE_MAX_PAGE_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sqlite3BtreeSetPageSize(%struct.TYPE_7__* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_7__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_8__*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %12 = load i32, i32* @SQLITE_OK, align 4
  store i32 %12, i32* %10, align 4
  %13 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %14 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i32 0, i32 0
  %15 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  store %struct.TYPE_8__* %15, %struct.TYPE_8__** %11, align 8
  %16 = load i32, i32* %8, align 4
  %17 = icmp sge i32 %16, -1
  br i1 %17, label %18, label %21

18:                                               ; preds = %4
  %19 = load i32, i32* %8, align 4
  %20 = icmp sle i32 %19, 255
  br label %21

21:                                               ; preds = %18, %4
  %22 = phi i1 [ false, %4 ], [ %20, %18 ]
  %23 = zext i1 %22 to i32
  %24 = call i32 @assert(i32 %23)
  %25 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %26 = call i32 @sqlite3BtreeEnter(%struct.TYPE_7__* %25)
  %27 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %28 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @BTS_PAGESIZE_FIXED, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %37

33:                                               ; preds = %21
  %34 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %35 = call i32 @sqlite3BtreeLeave(%struct.TYPE_7__* %34)
  %36 = load i32, i32* @SQLITE_READONLY, align 4
  store i32 %36, i32* %5, align 4
  br label %115

37:                                               ; preds = %21
  %38 = load i32, i32* %8, align 4
  %39 = icmp slt i32 %38, 0
  br i1 %39, label %40, label %48

40:                                               ; preds = %37
  %41 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %42 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %45 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %44, i32 0, i32 3
  %46 = load i32, i32* %45, align 4
  %47 = sub nsw i32 %43, %46
  store i32 %47, i32* %8, align 4
  br label %48

48:                                               ; preds = %40, %37
  %49 = load i32, i32* %8, align 4
  %50 = icmp sge i32 %49, 0
  br i1 %50, label %51, label %54

51:                                               ; preds = %48
  %52 = load i32, i32* %8, align 4
  %53 = icmp sle i32 %52, 255
  br label %54

54:                                               ; preds = %51, %48
  %55 = phi i1 [ false, %48 ], [ %53, %51 ]
  %56 = zext i1 %55 to i32
  %57 = call i32 @assert(i32 %56)
  %58 = load i32, i32* %7, align 4
  %59 = icmp sge i32 %58, 512
  br i1 %59, label %60, label %88

60:                                               ; preds = %54
  %61 = load i32, i32* %7, align 4
  %62 = load i32, i32* @SQLITE_MAX_PAGE_SIZE, align 4
  %63 = icmp sle i32 %61, %62
  br i1 %63, label %64, label %88

64:                                               ; preds = %60
  %65 = load i32, i32* %7, align 4
  %66 = sub nsw i32 %65, 1
  %67 = load i32, i32* %7, align 4
  %68 = and i32 %66, %67
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %70, label %88

70:                                               ; preds = %64
  %71 = load i32, i32* %7, align 4
  %72 = and i32 %71, 7
  %73 = icmp eq i32 %72, 0
  %74 = zext i1 %73 to i32
  %75 = call i32 @assert(i32 %74)
  %76 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %77 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %76, i32 0, i32 5
  %78 = load i32, i32* %77, align 4
  %79 = icmp ne i32 %78, 0
  %80 = xor i1 %79, true
  %81 = zext i1 %80 to i32
  %82 = call i32 @assert(i32 %81)
  %83 = load i32, i32* %7, align 4
  %84 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %85 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %84, i32 0, i32 2
  store i32 %83, i32* %85, align 4
  %86 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %87 = call i32 @freeTempSpace(%struct.TYPE_8__* %86)
  br label %88

88:                                               ; preds = %70, %64, %60, %54
  %89 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %90 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %89, i32 0, i32 4
  %91 = load i32, i32* %90, align 4
  %92 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %93 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %92, i32 0, i32 2
  %94 = load i32, i32* %8, align 4
  %95 = call i32 @sqlite3PagerSetPagesize(i32 %91, i32* %93, i32 %94)
  store i32 %95, i32* %10, align 4
  %96 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %97 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %96, i32 0, i32 2
  %98 = load i32, i32* %97, align 4
  %99 = load i32, i32* %8, align 4
  %100 = sub nsw i32 %98, %99
  %101 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %102 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %101, i32 0, i32 3
  store i32 %100, i32* %102, align 4
  %103 = load i32, i32* %9, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %111

105:                                              ; preds = %88
  %106 = load i32, i32* @BTS_PAGESIZE_FIXED, align 4
  %107 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %108 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 4
  %110 = or i32 %109, %106
  store i32 %110, i32* %108, align 4
  br label %111

111:                                              ; preds = %105, %88
  %112 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %113 = call i32 @sqlite3BtreeLeave(%struct.TYPE_7__* %112)
  %114 = load i32, i32* %10, align 4
  store i32 %114, i32* %5, align 4
  br label %115

115:                                              ; preds = %111, %33
  %116 = load i32, i32* %5, align 4
  ret i32 %116
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @sqlite3BtreeEnter(%struct.TYPE_7__*) #1

declare dso_local i32 @sqlite3BtreeLeave(%struct.TYPE_7__*) #1

declare dso_local i32 @freeTempSpace(%struct.TYPE_8__*) #1

declare dso_local i32 @sqlite3PagerSetPagesize(i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
