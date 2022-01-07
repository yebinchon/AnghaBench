; ModuleID = '/home/carl/AnghaBench/sqlcipher/src/extr_build.c_sqlite3DefaultRowEst.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/src/extr_build.c_sqlite3DefaultRowEst.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32*, i32, i64, %struct.TYPE_5__*, i32 }
%struct.TYPE_5__ = type { i32 }

@__const.sqlite3DefaultRowEst.aVal = private unnamed_addr constant [5 x i32] [i32 33, i32 32, i32 30, i32 28, i32 26], align 16

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sqlite3DefaultRowEst(%struct.TYPE_6__* %0) #0 {
  %2 = alloca %struct.TYPE_6__*, align 8
  %3 = alloca [5 x i32], align 16
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %2, align 8
  %7 = bitcast [5 x i32]* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %7, i8* align 16 bitcast ([5 x i32]* @__const.sqlite3DefaultRowEst.aVal to i8*), i64 20, i1 false)
  %8 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %9 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 0
  %10 = load i32*, i32** %9, align 8
  store i32* %10, i32** %4, align 8
  %11 = getelementptr inbounds [5 x i32], [5 x i32]* %3, i64 0, i64 0
  %12 = call i32 @ArraySize(i32* %11)
  %13 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 8
  %16 = call i32 @MIN(i32 %12, i32 %15)
  store i32 %16, i32* %5, align 4
  %17 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 4
  %19 = load i32, i32* %18, align 8
  %20 = icmp ne i32 %19, 0
  %21 = xor i1 %20, true
  %22 = zext i1 %21 to i32
  %23 = call i32 @assert(i32 %22)
  %24 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 3
  %26 = load %struct.TYPE_5__*, %struct.TYPE_5__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32*, i32** %4, align 8
  %30 = getelementptr inbounds i32, i32* %29, i64 0
  store i32 %28, i32* %30, align 4
  %31 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 2
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %40

35:                                               ; preds = %1
  %36 = load i32*, i32** %4, align 8
  %37 = getelementptr inbounds i32, i32* %36, i64 0
  %38 = load i32, i32* %37, align 4
  %39 = sub nsw i32 %38, 10
  store i32 %39, i32* %37, align 4
  br label %40

40:                                               ; preds = %35, %1
  %41 = call i32 @sqlite3LogEst(i32 2)
  %42 = icmp eq i32 10, %41
  %43 = zext i1 %42 to i32
  %44 = call i32 @assert(i32 %43)
  %45 = load i32*, i32** %4, align 8
  %46 = getelementptr inbounds i32, i32* %45, i64 0
  %47 = load i32, i32* %46, align 4
  %48 = icmp slt i32 %47, 33
  br i1 %48, label %49, label %52

49:                                               ; preds = %40
  %50 = load i32*, i32** %4, align 8
  %51 = getelementptr inbounds i32, i32* %50, i64 0
  store i32 33, i32* %51, align 4
  br label %52

52:                                               ; preds = %49, %40
  %53 = call i32 @sqlite3LogEst(i32 10)
  %54 = icmp eq i32 33, %53
  %55 = zext i1 %54 to i32
  %56 = call i32 @assert(i32 %55)
  %57 = load i32*, i32** %4, align 8
  %58 = getelementptr inbounds i32, i32* %57, i64 1
  %59 = getelementptr inbounds [5 x i32], [5 x i32]* %3, i64 0, i64 0
  %60 = load i32, i32* %5, align 4
  %61 = sext i32 %60 to i64
  %62 = mul i64 %61, 4
  %63 = trunc i64 %62 to i32
  %64 = call i32 @memcpy(i32* %58, i32* %59, i32 %63)
  %65 = load i32, i32* %5, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %6, align 4
  br label %67

67:                                               ; preds = %82, %52
  %68 = load i32, i32* %6, align 4
  %69 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %70 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 8
  %72 = icmp sle i32 %68, %71
  br i1 %72, label %73, label %85

73:                                               ; preds = %67
  %74 = load i32*, i32** %4, align 8
  %75 = load i32, i32* %6, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds i32, i32* %74, i64 %76
  store i32 23, i32* %77, align 4
  %78 = call i32 @sqlite3LogEst(i32 5)
  %79 = icmp eq i32 23, %78
  %80 = zext i1 %79 to i32
  %81 = call i32 @assert(i32 %80)
  br label %82

82:                                               ; preds = %73
  %83 = load i32, i32* %6, align 4
  %84 = add nsw i32 %83, 1
  store i32 %84, i32* %6, align 4
  br label %67

85:                                               ; preds = %67
  %86 = call i32 @sqlite3LogEst(i32 1)
  %87 = icmp eq i32 0, %86
  %88 = zext i1 %87 to i32
  %89 = call i32 @assert(i32 %88)
  %90 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %91 = call i64 @IsUniqueIndex(%struct.TYPE_6__* %90)
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %100

93:                                               ; preds = %85
  %94 = load i32*, i32** %4, align 8
  %95 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %96 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 8
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds i32, i32* %94, i64 %98
  store i32 0, i32* %99, align 4
  br label %100

100:                                              ; preds = %93, %85
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @MIN(i32, i32) #2

declare dso_local i32 @ArraySize(i32*) #2

declare dso_local i32 @assert(i32) #2

declare dso_local i32 @sqlite3LogEst(i32) #2

declare dso_local i32 @memcpy(i32*, i32*, i32) #2

declare dso_local i64 @IsUniqueIndex(%struct.TYPE_6__*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
