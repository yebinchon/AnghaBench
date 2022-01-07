; ModuleID = '/home/carl/AnghaBench/redis/deps/hiredis/extr_dict.c_dictAdd.c'
source_filename = "/home/carl/AnghaBench/redis/deps/hiredis/extr_dict.c_dictAdd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32, %struct.TYPE_10__** }
%struct.TYPE_10__ = type { %struct.TYPE_10__* }

@DICT_ERR = common dso_local global i32 0, align 4
@DICT_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_11__*, i8*, i8*)* @dictAdd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dictAdd(%struct.TYPE_11__* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_11__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_10__*, align 8
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  %10 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %11 = load i8*, i8** %6, align 8
  %12 = call i32 @_dictKeyIndex(%struct.TYPE_11__* %10, i8* %11)
  store i32 %12, i32* %8, align 4
  %13 = icmp eq i32 %12, -1
  br i1 %13, label %14, label %16

14:                                               ; preds = %3
  %15 = load i32, i32* @DICT_ERR, align 4
  store i32 %15, i32* %4, align 4
  br label %47

16:                                               ; preds = %3
  %17 = call %struct.TYPE_10__* @malloc(i32 8)
  store %struct.TYPE_10__* %17, %struct.TYPE_10__** %9, align 8
  %18 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %19 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %18, i32 0, i32 1
  %20 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %19, align 8
  %21 = load i32, i32* %8, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %20, i64 %22
  %24 = load %struct.TYPE_10__*, %struct.TYPE_10__** %23, align 8
  %25 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %26 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %25, i32 0, i32 0
  store %struct.TYPE_10__* %24, %struct.TYPE_10__** %26, align 8
  %27 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %28 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %29 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %28, i32 0, i32 1
  %30 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %29, align 8
  %31 = load i32, i32* %8, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %30, i64 %32
  store %struct.TYPE_10__* %27, %struct.TYPE_10__** %33, align 8
  %34 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %35 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %36 = load i8*, i8** %6, align 8
  %37 = call i32 @dictSetHashKey(%struct.TYPE_11__* %34, %struct.TYPE_10__* %35, i8* %36)
  %38 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %39 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %40 = load i8*, i8** %7, align 8
  %41 = call i32 @dictSetHashVal(%struct.TYPE_11__* %38, %struct.TYPE_10__* %39, i8* %40)
  %42 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %43 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %43, align 8
  %46 = load i32, i32* @DICT_OK, align 4
  store i32 %46, i32* %4, align 4
  br label %47

47:                                               ; preds = %16, %14
  %48 = load i32, i32* %4, align 4
  ret i32 %48
}

declare dso_local i32 @_dictKeyIndex(%struct.TYPE_11__*, i8*) #1

declare dso_local %struct.TYPE_10__* @malloc(i32) #1

declare dso_local i32 @dictSetHashKey(%struct.TYPE_11__*, %struct.TYPE_10__*, i8*) #1

declare dso_local i32 @dictSetHashVal(%struct.TYPE_11__*, %struct.TYPE_10__*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
