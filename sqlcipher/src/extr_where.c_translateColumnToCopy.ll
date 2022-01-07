; ModuleID = '/home/carl/AnghaBench/sqlcipher/src/extr_where.c_translateColumnToCopy.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/src/extr_where.c_translateColumnToCopy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_6__*, i32* }
%struct.TYPE_6__ = type { i64 }
%struct.TYPE_7__ = type { i32, i64, i32, i32 }

@OP_Column = common dso_local global i64 0, align 8
@OP_Copy = common dso_local global i64 0, align 8
@OP_Rowid = common dso_local global i64 0, align 8
@OP_AddImm = common dso_local global i64 0, align 8
@OP_Null = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_8__*, i32, i32, i32, i32)* @translateColumnToCopy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @translateColumnToCopy(%struct.TYPE_8__* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.TYPE_8__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca %struct.TYPE_7__*, align 8
  %13 = alloca i32, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %14 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %15 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %14, i32 0, i32 1
  %16 = load i32*, i32** %15, align 8
  store i32* %16, i32** %11, align 8
  %17 = load i32*, i32** %11, align 8
  %18 = load i32, i32* %7, align 4
  %19 = call %struct.TYPE_7__* @sqlite3VdbeGetOp(i32* %17, i32 %18)
  store %struct.TYPE_7__* %19, %struct.TYPE_7__** %12, align 8
  %20 = load i32*, i32** %11, align 8
  %21 = call i32 @sqlite3VdbeCurrentAddr(i32* %20)
  store i32 %21, i32* %13, align 4
  %22 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %23 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %22, i32 0, i32 0
  %24 = load %struct.TYPE_6__*, %struct.TYPE_6__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %5
  br label %101

29:                                               ; preds = %5
  br label %30

30:                                               ; preds = %96, %29
  %31 = load i32, i32* %7, align 4
  %32 = load i32, i32* %13, align 4
  %33 = icmp slt i32 %31, %32
  br i1 %33, label %34, label %101

34:                                               ; preds = %30
  %35 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %36 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = load i32, i32* %8, align 4
  %39 = icmp ne i32 %37, %38
  br i1 %39, label %40, label %41

40:                                               ; preds = %34
  br label %96

41:                                               ; preds = %34
  %42 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %43 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @OP_Column, align 8
  %46 = icmp eq i64 %44, %45
  br i1 %46, label %47, label %65

47:                                               ; preds = %41
  %48 = load i64, i64* @OP_Copy, align 8
  %49 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %50 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %49, i32 0, i32 1
  store i64 %48, i64* %50, align 8
  %51 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %52 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 8
  %54 = load i32, i32* %9, align 4
  %55 = add nsw i32 %53, %54
  %56 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %57 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %56, i32 0, i32 0
  store i32 %55, i32* %57, align 8
  %58 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %59 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %58, i32 0, i32 3
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %62 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %61, i32 0, i32 2
  store i32 %60, i32* %62, align 8
  %63 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %64 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %63, i32 0, i32 3
  store i32 0, i32* %64, align 4
  br label %95

65:                                               ; preds = %41
  %66 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %67 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %66, i32 0, i32 1
  %68 = load i64, i64* %67, align 8
  %69 = load i64, i64* @OP_Rowid, align 8
  %70 = icmp eq i64 %68, %69
  br i1 %70, label %71, label %94

71:                                               ; preds = %65
  %72 = load i32, i32* %10, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %85

74:                                               ; preds = %71
  %75 = load i64, i64* @OP_AddImm, align 8
  %76 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %77 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %76, i32 0, i32 1
  store i64 %75, i64* %77, align 8
  %78 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %79 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %78, i32 0, i32 2
  %80 = load i32, i32* %79, align 8
  %81 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %82 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %81, i32 0, i32 0
  store i32 %80, i32* %82, align 8
  %83 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %84 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %83, i32 0, i32 2
  store i32 1, i32* %84, align 8
  br label %93

85:                                               ; preds = %71
  %86 = load i64, i64* @OP_Null, align 8
  %87 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %88 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %87, i32 0, i32 1
  store i64 %86, i64* %88, align 8
  %89 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %90 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %89, i32 0, i32 0
  store i32 0, i32* %90, align 8
  %91 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %92 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %91, i32 0, i32 3
  store i32 0, i32* %92, align 4
  br label %93

93:                                               ; preds = %85, %74
  br label %94

94:                                               ; preds = %93, %65
  br label %95

95:                                               ; preds = %94, %47
  br label %96

96:                                               ; preds = %95, %40
  %97 = load i32, i32* %7, align 4
  %98 = add nsw i32 %97, 1
  store i32 %98, i32* %7, align 4
  %99 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %100 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %99, i32 1
  store %struct.TYPE_7__* %100, %struct.TYPE_7__** %12, align 8
  br label %30

101:                                              ; preds = %28, %30
  ret void
}

declare dso_local %struct.TYPE_7__* @sqlite3VdbeGetOp(i32*, i32) #1

declare dso_local i32 @sqlite3VdbeCurrentAddr(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
