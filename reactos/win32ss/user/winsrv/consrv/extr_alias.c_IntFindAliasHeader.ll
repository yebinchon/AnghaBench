; ModuleID = '/home/carl/AnghaBench/reactos/win32ss/user/winsrv/consrv/extr_alias.c_IntFindAliasHeader.c'
source_filename = "/home/carl/AnghaBench/reactos/win32ss/user/winsrv/consrv/extr_alias.c_IntFindAliasHeader.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { %struct.TYPE_10__*, i32 }
%struct.TYPE_9__ = type { %struct.TYPE_10__* }
%struct.TYPE_8__ = type { i32*, i32, i32 }

@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_10__* (%struct.TYPE_9__*, i32*, i32, i64)* @IntFindAliasHeader to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_10__* @IntFindAliasHeader(%struct.TYPE_9__* %0, i32* %1, i32 %2, i64 %3) #0 {
  %5 = alloca %struct.TYPE_10__*, align 8
  %6 = alloca %struct.TYPE_9__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca %struct.TYPE_8__, align 8
  %11 = alloca %struct.TYPE_10__*, align 8
  %12 = alloca i64, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32 %2, i32* %8, align 4
  store i64 %3, i64* %9, align 8
  %13 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %14 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %13, i32 0, i32 0
  %15 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  store %struct.TYPE_10__* %15, %struct.TYPE_10__** %11, align 8
  %16 = load i32*, i32** %7, align 8
  %17 = icmp eq i32* %16, null
  br i1 %17, label %18, label %19

18:                                               ; preds = %4
  store %struct.TYPE_10__* null, %struct.TYPE_10__** %5, align 8
  br label %76

19:                                               ; preds = %4
  %20 = load i64, i64* %9, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %27

22:                                               ; preds = %19
  %23 = load i32*, i32** %7, align 8
  %24 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %10, i32 0, i32 0
  store i32* %23, i32** %24, align 8
  %25 = load i32, i32* %8, align 4
  %26 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %10, i32 0, i32 1
  store i32 %25, i32* %26, align 8
  br label %37

27:                                               ; preds = %19
  %28 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %29 = load i32*, i32** %7, align 8
  %30 = load i32, i32* %8, align 4
  %31 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %10, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %10, i32 0, i32 1
  %33 = call i32 @ConvertInputAnsiToUnicode(%struct.TYPE_9__* %28, i32* %29, i32 %30, i32** %31, i32* %32)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %36, label %35

35:                                               ; preds = %27
  store %struct.TYPE_10__* null, %struct.TYPE_10__** %5, align 8
  br label %76

36:                                               ; preds = %27
  br label %37

37:                                               ; preds = %36, %22
  %38 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %10, i32 0, i32 1
  %39 = load i32, i32* %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %10, i32 0, i32 2
  store i32 %39, i32* %40, align 4
  br label %41

41:                                               ; preds = %64, %37
  %42 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %43 = icmp ne %struct.TYPE_10__* %42, null
  br i1 %43, label %44, label %68

44:                                               ; preds = %41
  %45 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %46 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %45, i32 0, i32 1
  %47 = load i32, i32* @TRUE, align 4
  %48 = call i64 @RtlCompareUnicodeString(i32* %46, %struct.TYPE_8__* %10, i32 %47)
  store i64 %48, i64* %12, align 8
  %49 = load i64, i64* %12, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %60, label %51

51:                                               ; preds = %44
  %52 = load i64, i64* %9, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %58, label %54

54:                                               ; preds = %51
  %55 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %10, i32 0, i32 0
  %56 = load i32*, i32** %55, align 8
  %57 = call i32 @ConsoleFreeHeap(i32* %56)
  br label %58

58:                                               ; preds = %54, %51
  %59 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  store %struct.TYPE_10__* %59, %struct.TYPE_10__** %5, align 8
  br label %76

60:                                               ; preds = %44
  %61 = load i64, i64* %12, align 8
  %62 = icmp sgt i64 %61, 0
  br i1 %62, label %63, label %64

63:                                               ; preds = %60
  br label %68

64:                                               ; preds = %60
  %65 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %66 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %65, i32 0, i32 0
  %67 = load %struct.TYPE_10__*, %struct.TYPE_10__** %66, align 8
  store %struct.TYPE_10__* %67, %struct.TYPE_10__** %11, align 8
  br label %41

68:                                               ; preds = %63, %41
  %69 = load i64, i64* %9, align 8
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %75, label %71

71:                                               ; preds = %68
  %72 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %10, i32 0, i32 0
  %73 = load i32*, i32** %72, align 8
  %74 = call i32 @ConsoleFreeHeap(i32* %73)
  br label %75

75:                                               ; preds = %71, %68
  store %struct.TYPE_10__* null, %struct.TYPE_10__** %5, align 8
  br label %76

76:                                               ; preds = %75, %58, %35, %18
  %77 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  ret %struct.TYPE_10__* %77
}

declare dso_local i32 @ConvertInputAnsiToUnicode(%struct.TYPE_9__*, i32*, i32, i32**, i32*) #1

declare dso_local i64 @RtlCompareUnicodeString(i32*, %struct.TYPE_8__*, i32) #1

declare dso_local i32 @ConsoleFreeHeap(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
