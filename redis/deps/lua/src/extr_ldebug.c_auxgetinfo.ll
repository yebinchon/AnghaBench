; ModuleID = '/home/carl/AnghaBench/redis/deps/lua/src/extr_ldebug.c_auxgetinfo.c'
source_filename = "/home/carl/AnghaBench/redis/deps/lua/src/extr_ldebug.c_auxgetinfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, i8*, i32*, i32 }
%struct.TYPE_11__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32 }

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i8*, %struct.TYPE_10__*, %struct.TYPE_11__*, i32*)* @auxgetinfo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @auxgetinfo(i32* %0, i8* %1, %struct.TYPE_10__* %2, %struct.TYPE_11__* %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.TYPE_10__*, align 8
  %10 = alloca %struct.TYPE_11__*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  store i32* %0, i32** %7, align 8
  store i8* %1, i8** %8, align 8
  store %struct.TYPE_10__* %2, %struct.TYPE_10__** %9, align 8
  store %struct.TYPE_11__* %3, %struct.TYPE_11__** %10, align 8
  store i32* %4, i32** %11, align 8
  store i32 1, i32* %12, align 4
  %13 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %14 = icmp eq %struct.TYPE_11__* %13, null
  br i1 %14, label %15, label %19

15:                                               ; preds = %5
  %16 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %17 = call i32 @info_tailcall(%struct.TYPE_10__* %16)
  %18 = load i32, i32* %12, align 4
  store i32 %18, i32* %6, align 4
  br label %83

19:                                               ; preds = %5
  br label %20

20:                                               ; preds = %78, %19
  %21 = load i8*, i8** %8, align 8
  %22 = load i8, i8* %21, align 1
  %23 = icmp ne i8 %22, 0
  br i1 %23, label %24, label %81

24:                                               ; preds = %20
  %25 = load i8*, i8** %8, align 8
  %26 = load i8, i8* %25, align 1
  %27 = sext i8 %26 to i32
  switch i32 %27, label %76 [
    i32 83, label %28
    i32 108, label %32
    i32 117, label %44
    i32 110, label %51
    i32 76, label %75
    i32 102, label %75
  ]

28:                                               ; preds = %24
  %29 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %30 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %31 = call i32 @funcinfo(%struct.TYPE_10__* %29, %struct.TYPE_11__* %30)
  br label %77

32:                                               ; preds = %24
  %33 = load i32*, i32** %11, align 8
  %34 = icmp ne i32* %33, null
  br i1 %34, label %35, label %39

35:                                               ; preds = %32
  %36 = load i32*, i32** %7, align 8
  %37 = load i32*, i32** %11, align 8
  %38 = call i32 @currentline(i32* %36, i32* %37)
  br label %40

39:                                               ; preds = %32
  br label %40

40:                                               ; preds = %39, %35
  %41 = phi i32 [ %38, %35 ], [ -1, %39 ]
  %42 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %43 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %42, i32 0, i32 0
  store i32 %41, i32* %43, align 8
  br label %77

44:                                               ; preds = %24
  %45 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %46 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %50 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %49, i32 0, i32 3
  store i32 %48, i32* %50, align 8
  br label %77

51:                                               ; preds = %24
  %52 = load i32*, i32** %11, align 8
  %53 = icmp ne i32* %52, null
  br i1 %53, label %54, label %60

54:                                               ; preds = %51
  %55 = load i32*, i32** %7, align 8
  %56 = load i32*, i32** %11, align 8
  %57 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %58 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %57, i32 0, i32 2
  %59 = call i8* @getfuncname(i32* %55, i32* %56, i32** %58)
  br label %61

60:                                               ; preds = %51
  br label %61

61:                                               ; preds = %60, %54
  %62 = phi i8* [ %59, %54 ], [ null, %60 ]
  %63 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %64 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %63, i32 0, i32 1
  store i8* %62, i8** %64, align 8
  %65 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %66 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %65, i32 0, i32 1
  %67 = load i8*, i8** %66, align 8
  %68 = icmp eq i8* %67, null
  br i1 %68, label %69, label %74

69:                                               ; preds = %61
  %70 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %71 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %70, i32 0, i32 1
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i8** %71, align 8
  %72 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %73 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %72, i32 0, i32 2
  store i32* null, i32** %73, align 8
  br label %74

74:                                               ; preds = %69, %61
  br label %77

75:                                               ; preds = %24, %24
  br label %77

76:                                               ; preds = %24
  store i32 0, i32* %12, align 4
  br label %77

77:                                               ; preds = %76, %75, %74, %44, %40, %28
  br label %78

78:                                               ; preds = %77
  %79 = load i8*, i8** %8, align 8
  %80 = getelementptr inbounds i8, i8* %79, i32 1
  store i8* %80, i8** %8, align 8
  br label %20

81:                                               ; preds = %20
  %82 = load i32, i32* %12, align 4
  store i32 %82, i32* %6, align 4
  br label %83

83:                                               ; preds = %81, %15
  %84 = load i32, i32* %6, align 4
  ret i32 %84
}

declare dso_local i32 @info_tailcall(%struct.TYPE_10__*) #1

declare dso_local i32 @funcinfo(%struct.TYPE_10__*, %struct.TYPE_11__*) #1

declare dso_local i32 @currentline(i32*, i32*) #1

declare dso_local i8* @getfuncname(i32*, i32*, i32**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
