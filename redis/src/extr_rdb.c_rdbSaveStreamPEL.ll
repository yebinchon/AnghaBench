; ModuleID = '/home/carl/AnghaBench/redis/src/extr_rdb.c_rdbSaveStreamPEL.c'
source_filename = "/home/carl/AnghaBench/redis/src/extr_rdb.c_rdbSaveStreamPEL.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_7__*, i32 }
%struct.TYPE_7__ = type { i32, i32 }

@.str = private unnamed_addr constant [2 x i8] c"^\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rdbSaveStreamPEL(i32* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_8__, align 8
  %11 = alloca %struct.TYPE_7__*, align 8
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %9, align 4
  %12 = load i32*, i32** %5, align 8
  %13 = load i32*, i32** %6, align 8
  %14 = call i32 @raxSize(i32* %13)
  %15 = call i32 @rdbSaveLen(i32* %12, i32 %14)
  store i32 %15, i32* %8, align 4
  %16 = icmp eq i32 %15, -1
  br i1 %16, label %17, label %18

17:                                               ; preds = %3
  store i32 -1, i32* %4, align 4
  br label %70

18:                                               ; preds = %3
  %19 = load i32, i32* %8, align 4
  %20 = load i32, i32* %9, align 4
  %21 = add nsw i32 %20, %19
  store i32 %21, i32* %9, align 4
  %22 = load i32*, i32** %6, align 8
  %23 = call i32 @raxStart(%struct.TYPE_8__* %10, i32* %22)
  %24 = call i32 @raxSeek(%struct.TYPE_8__* %10, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i32* null, i32 0)
  br label %25

25:                                               ; preds = %66, %18
  %26 = call i64 @raxNext(%struct.TYPE_8__* %10)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %67

28:                                               ; preds = %25
  %29 = load i32*, i32** %5, align 8
  %30 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %10, i32 0, i32 1
  %31 = load i32, i32* %30, align 8
  %32 = call i32 @rdbWriteRaw(i32* %29, i32 %31, i32 4)
  store i32 %32, i32* %8, align 4
  %33 = icmp eq i32 %32, -1
  br i1 %33, label %34, label %35

34:                                               ; preds = %28
  store i32 -1, i32* %4, align 4
  br label %70

35:                                               ; preds = %28
  %36 = load i32, i32* %8, align 4
  %37 = load i32, i32* %9, align 4
  %38 = add nsw i32 %37, %36
  store i32 %38, i32* %9, align 4
  %39 = load i32, i32* %7, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %66

41:                                               ; preds = %35
  %42 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %10, i32 0, i32 0
  %43 = load %struct.TYPE_7__*, %struct.TYPE_7__** %42, align 8
  store %struct.TYPE_7__* %43, %struct.TYPE_7__** %11, align 8
  %44 = load i32*, i32** %5, align 8
  %45 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %46 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @rdbSaveMillisecondTime(i32* %44, i32 %47)
  store i32 %48, i32* %8, align 4
  %49 = icmp eq i32 %48, -1
  br i1 %49, label %50, label %51

50:                                               ; preds = %41
  store i32 -1, i32* %4, align 4
  br label %70

51:                                               ; preds = %41
  %52 = load i32, i32* %8, align 4
  %53 = load i32, i32* %9, align 4
  %54 = add nsw i32 %53, %52
  store i32 %54, i32* %9, align 4
  %55 = load i32*, i32** %5, align 8
  %56 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %57 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @rdbSaveLen(i32* %55, i32 %58)
  store i32 %59, i32* %8, align 4
  %60 = icmp eq i32 %59, -1
  br i1 %60, label %61, label %62

61:                                               ; preds = %51
  store i32 -1, i32* %4, align 4
  br label %70

62:                                               ; preds = %51
  %63 = load i32, i32* %8, align 4
  %64 = load i32, i32* %9, align 4
  %65 = add nsw i32 %64, %63
  store i32 %65, i32* %9, align 4
  br label %66

66:                                               ; preds = %62, %35
  br label %25

67:                                               ; preds = %25
  %68 = call i32 @raxStop(%struct.TYPE_8__* %10)
  %69 = load i32, i32* %9, align 4
  store i32 %69, i32* %4, align 4
  br label %70

70:                                               ; preds = %67, %61, %50, %34, %17
  %71 = load i32, i32* %4, align 4
  ret i32 %71
}

declare dso_local i32 @rdbSaveLen(i32*, i32) #1

declare dso_local i32 @raxSize(i32*) #1

declare dso_local i32 @raxStart(%struct.TYPE_8__*, i32*) #1

declare dso_local i32 @raxSeek(%struct.TYPE_8__*, i8*, i32*, i32) #1

declare dso_local i64 @raxNext(%struct.TYPE_8__*) #1

declare dso_local i32 @rdbWriteRaw(i32*, i32, i32) #1

declare dso_local i32 @rdbSaveMillisecondTime(i32*, i32) #1

declare dso_local i32 @raxStop(%struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
