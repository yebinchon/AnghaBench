; ModuleID = '/home/carl/AnghaBench/reactos/win32ss/user/winsrv/consrv/extr_alias.c_IntGetAliasEntry.c'
source_filename = "/home/carl/AnghaBench/reactos/win32ss/user/winsrv/consrv/extr_alias.c_IntGetAliasEntry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { %struct.TYPE_9__*, i32 }
%struct.TYPE_8__ = type { %struct.TYPE_9__* }
%struct.TYPE_7__ = type { i32*, i32, i32 }

@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_9__* (i32, %struct.TYPE_8__*, i32*, i32, i64)* @IntGetAliasEntry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_9__* @IntGetAliasEntry(i32 %0, %struct.TYPE_8__* %1, i32* %2, i32 %3, i64 %4) #0 {
  %6 = alloca %struct.TYPE_9__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_8__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca %struct.TYPE_7__, align 8
  %13 = alloca %struct.TYPE_9__*, align 8
  %14 = alloca i64, align 8
  store i32 %0, i32* %7, align 4
  store %struct.TYPE_8__* %1, %struct.TYPE_8__** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32 %3, i32* %10, align 4
  store i64 %4, i64* %11, align 8
  %15 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %16 = icmp eq %struct.TYPE_8__* %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %5
  %18 = load i32*, i32** %9, align 8
  %19 = icmp eq i32* %18, null
  br i1 %19, label %20, label %21

20:                                               ; preds = %17, %5
  store %struct.TYPE_9__* null, %struct.TYPE_9__** %6, align 8
  br label %81

21:                                               ; preds = %17
  %22 = load i64, i64* %11, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %29

24:                                               ; preds = %21
  %25 = load i32*, i32** %9, align 8
  %26 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %12, i32 0, i32 0
  store i32* %25, i32** %26, align 8
  %27 = load i32, i32* %10, align 4
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %12, i32 0, i32 1
  store i32 %27, i32* %28, align 8
  br label %39

29:                                               ; preds = %21
  %30 = load i32, i32* %7, align 4
  %31 = load i32*, i32** %9, align 8
  %32 = load i32, i32* %10, align 4
  %33 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %12, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %12, i32 0, i32 1
  %35 = call i32 @ConvertInputAnsiToUnicode(i32 %30, i32* %31, i32 %32, i32** %33, i32* %34)
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %38, label %37

37:                                               ; preds = %29
  store %struct.TYPE_9__* null, %struct.TYPE_9__** %6, align 8
  br label %81

38:                                               ; preds = %29
  br label %39

39:                                               ; preds = %38, %24
  %40 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %12, i32 0, i32 1
  %41 = load i32, i32* %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %12, i32 0, i32 2
  store i32 %41, i32* %42, align 4
  %43 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %44 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %43, i32 0, i32 0
  %45 = load %struct.TYPE_9__*, %struct.TYPE_9__** %44, align 8
  store %struct.TYPE_9__* %45, %struct.TYPE_9__** %13, align 8
  br label %46

46:                                               ; preds = %69, %39
  %47 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %48 = icmp ne %struct.TYPE_9__* %47, null
  br i1 %48, label %49, label %73

49:                                               ; preds = %46
  %50 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %51 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %50, i32 0, i32 1
  %52 = load i32, i32* @TRUE, align 4
  %53 = call i64 @RtlCompareUnicodeString(i32* %51, %struct.TYPE_7__* %12, i32 %52)
  store i64 %53, i64* %14, align 8
  %54 = load i64, i64* %14, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %65, label %56

56:                                               ; preds = %49
  %57 = load i64, i64* %11, align 8
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %63, label %59

59:                                               ; preds = %56
  %60 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %12, i32 0, i32 0
  %61 = load i32*, i32** %60, align 8
  %62 = call i32 @ConsoleFreeHeap(i32* %61)
  br label %63

63:                                               ; preds = %59, %56
  %64 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  store %struct.TYPE_9__* %64, %struct.TYPE_9__** %6, align 8
  br label %81

65:                                               ; preds = %49
  %66 = load i64, i64* %14, align 8
  %67 = icmp sgt i64 %66, 0
  br i1 %67, label %68, label %69

68:                                               ; preds = %65
  br label %73

69:                                               ; preds = %65
  %70 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %71 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %70, i32 0, i32 0
  %72 = load %struct.TYPE_9__*, %struct.TYPE_9__** %71, align 8
  store %struct.TYPE_9__* %72, %struct.TYPE_9__** %13, align 8
  br label %46

73:                                               ; preds = %68, %46
  %74 = load i64, i64* %11, align 8
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %80, label %76

76:                                               ; preds = %73
  %77 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %12, i32 0, i32 0
  %78 = load i32*, i32** %77, align 8
  %79 = call i32 @ConsoleFreeHeap(i32* %78)
  br label %80

80:                                               ; preds = %76, %73
  store %struct.TYPE_9__* null, %struct.TYPE_9__** %6, align 8
  br label %81

81:                                               ; preds = %80, %63, %37, %20
  %82 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  ret %struct.TYPE_9__* %82
}

declare dso_local i32 @ConvertInputAnsiToUnicode(i32, i32*, i32, i32**, i32*) #1

declare dso_local i64 @RtlCompareUnicodeString(i32*, %struct.TYPE_7__*, i32) #1

declare dso_local i32 @ConsoleFreeHeap(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
