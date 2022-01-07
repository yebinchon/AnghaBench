; ModuleID = '/home/carl/AnghaBench/redis/src/extr_quicklist.c_quicklistRotate.c'
source_filename = "/home/carl/AnghaBench/redis/src/extr_quicklist.c_quicklistRotate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @quicklistRotate(%struct.TYPE_6__* %0) #0 {
  %2 = alloca %struct.TYPE_6__*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca [32 x i8], align 16
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %2, align 8
  %8 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %9 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = icmp sle i32 %10, 1
  br i1 %11, label %12, label %13

12:                                               ; preds = %1
  br label %52

13:                                               ; preds = %1
  %14 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 2
  %16 = load %struct.TYPE_7__*, %struct.TYPE_7__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i8* @ziplistIndex(i32 %18, i32 -1)
  store i8* %19, i8** %3, align 8
  %20 = bitcast [32 x i8]* %7 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %20, i8 0, i64 32, i1 false)
  %21 = load i8*, i8** %3, align 8
  %22 = call i32 @ziplistGet(i8* %21, i8** %4, i32* %6, i64* %5)
  %23 = load i8*, i8** %4, align 8
  %24 = icmp ne i8* %23, null
  br i1 %24, label %30, label %25

25:                                               ; preds = %13
  %26 = getelementptr inbounds [32 x i8], [32 x i8]* %7, i64 0, i64 0
  %27 = load i64, i64* %5, align 8
  %28 = call i32 @ll2string(i8* %26, i32 32, i64 %27)
  store i32 %28, i32* %6, align 4
  %29 = getelementptr inbounds [32 x i8], [32 x i8]* %7, i64 0, i64 0
  store i8* %29, i8** %4, align 8
  br label %30

30:                                               ; preds = %25, %13
  %31 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %32 = load i8*, i8** %4, align 8
  %33 = load i32, i32* %6, align 4
  %34 = call i32 @quicklistPushHead(%struct.TYPE_6__* %31, i8* %32, i32 %33)
  %35 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = icmp eq i32 %37, 1
  br i1 %38, label %39, label %46

39:                                               ; preds = %30
  %40 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 2
  %42 = load %struct.TYPE_7__*, %struct.TYPE_7__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = call i8* @ziplistIndex(i32 %44, i32 -1)
  store i8* %45, i8** %3, align 8
  br label %46

46:                                               ; preds = %39, %30
  %47 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %48 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 2
  %50 = load %struct.TYPE_7__*, %struct.TYPE_7__** %49, align 8
  %51 = call i32 @quicklistDelIndex(%struct.TYPE_6__* %47, %struct.TYPE_7__* %50, i8** %3)
  br label %52

52:                                               ; preds = %46, %12
  ret void
}

declare dso_local i8* @ziplistIndex(i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @ziplistGet(i8*, i8**, i32*, i64*) #1

declare dso_local i32 @ll2string(i8*, i32, i64) #1

declare dso_local i32 @quicklistPushHead(%struct.TYPE_6__*, i8*, i32) #1

declare dso_local i32 @quicklistDelIndex(%struct.TYPE_6__*, %struct.TYPE_7__*, i8**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
