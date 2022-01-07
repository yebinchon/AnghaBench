; ModuleID = '/home/carl/AnghaBench/sqlcipher/ext/fts2/extr_fts2.c_parseQuery.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/ext/fts2/extr_fts2.c_parseQuery.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32 }
%struct.TYPE_8__ = type { i32, i32, %struct.TYPE_7__*, i64, i32*, i64 }

@SQLITE_ERROR = common dso_local global i32 0, align 4
@SQLITE_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_7__*, i8*, i32, i32, %struct.TYPE_8__*)* @parseQuery to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parseQuery(%struct.TYPE_7__* %0, i8* %1, i32 %2, i32 %3, %struct.TYPE_8__* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_7__*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_8__*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %7, align 8
  store i8* %1, i8** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store %struct.TYPE_8__* %4, %struct.TYPE_8__** %11, align 8
  store i32 0, i32* %13, align 4
  %15 = load i8*, i8** %8, align 8
  %16 = icmp eq i8* %15, null
  br i1 %16, label %17, label %18

17:                                               ; preds = %5
  store i32 0, i32* %9, align 4
  br label %18

18:                                               ; preds = %17, %5
  %19 = load i32, i32* %9, align 4
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %18
  %22 = load i8*, i8** %8, align 8
  %23 = call i32 @strlen(i8* %22)
  store i32 %23, i32* %9, align 4
  br label %24

24:                                               ; preds = %21, %18
  %25 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %26 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %25, i32 0, i32 5
  store i64 0, i64* %26, align 8
  %27 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %28 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %27, i32 0, i32 4
  store i32* null, i32** %28, align 8
  %29 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %30 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %29, i32 0, i32 3
  store i64 0, i64* %30, align 8
  %31 = load i32, i32* %10, align 4
  %32 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %33 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %32, i32 0, i32 0
  store i32 %31, i32* %33, align 8
  %34 = load i32, i32* %10, align 4
  %35 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %36 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %35, i32 0, i32 1
  store i32 %34, i32* %36, align 4
  %37 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %38 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %39 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %38, i32 0, i32 2
  store %struct.TYPE_7__* %37, %struct.TYPE_7__** %39, align 8
  store i32 0, i32* %12, align 4
  br label %40

40:                                               ; preds = %102, %24
  %41 = load i32, i32* %12, align 4
  %42 = load i32, i32* %9, align 4
  %43 = icmp slt i32 %41, %42
  br i1 %43, label %44, label %105

44:                                               ; preds = %40
  %45 = load i32, i32* %12, align 4
  store i32 %45, i32* %14, align 4
  br label %46

46:                                               ; preds = %61, %44
  %47 = load i32, i32* %14, align 4
  %48 = load i32, i32* %9, align 4
  %49 = icmp slt i32 %47, %48
  br i1 %49, label %50, label %58

50:                                               ; preds = %46
  %51 = load i8*, i8** %8, align 8
  %52 = load i32, i32* %14, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i8, i8* %51, i64 %53
  %55 = load i8, i8* %54, align 1
  %56 = sext i8 %55 to i32
  %57 = icmp ne i32 %56, 34
  br label %58

58:                                               ; preds = %50, %46
  %59 = phi i1 [ false, %46 ], [ %57, %50 ]
  br i1 %59, label %60, label %64

60:                                               ; preds = %58
  br label %61

61:                                               ; preds = %60
  %62 = load i32, i32* %14, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %14, align 4
  br label %46

64:                                               ; preds = %58
  %65 = load i32, i32* %14, align 4
  %66 = load i32, i32* %12, align 4
  %67 = icmp sgt i32 %65, %66
  br i1 %67, label %68, label %82

68:                                               ; preds = %64
  %69 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %70 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = load i8*, i8** %8, align 8
  %73 = load i32, i32* %12, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds i8, i8* %72, i64 %74
  %76 = load i32, i32* %14, align 4
  %77 = load i32, i32* %12, align 4
  %78 = sub nsw i32 %76, %77
  %79 = load i32, i32* %13, align 4
  %80 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %81 = call i32 @tokenizeSegment(i32 %71, i8* %75, i32 %78, i32 %79, %struct.TYPE_8__* %80)
  br label %82

82:                                               ; preds = %68, %64
  %83 = load i32, i32* %14, align 4
  store i32 %83, i32* %12, align 4
  %84 = load i32, i32* %14, align 4
  %85 = load i32, i32* %9, align 4
  %86 = icmp slt i32 %84, %85
  br i1 %86, label %87, label %101

87:                                               ; preds = %82
  %88 = load i8*, i8** %8, align 8
  %89 = load i32, i32* %14, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds i8, i8* %88, i64 %90
  %92 = load i8, i8* %91, align 1
  %93 = sext i8 %92 to i32
  %94 = icmp eq i32 %93, 34
  %95 = zext i1 %94 to i32
  %96 = call i32 @assert(i32 %95)
  %97 = load i32, i32* %13, align 4
  %98 = icmp ne i32 %97, 0
  %99 = xor i1 %98, true
  %100 = zext i1 %99 to i32
  store i32 %100, i32* %13, align 4
  br label %101

101:                                              ; preds = %87, %82
  br label %102

102:                                              ; preds = %101
  %103 = load i32, i32* %12, align 4
  %104 = add nsw i32 %103, 1
  store i32 %104, i32* %12, align 4
  br label %40

105:                                              ; preds = %40
  %106 = load i32, i32* %13, align 4
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %112

108:                                              ; preds = %105
  %109 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %110 = call i32 @queryClear(%struct.TYPE_8__* %109)
  %111 = load i32, i32* @SQLITE_ERROR, align 4
  store i32 %111, i32* %6, align 4
  br label %114

112:                                              ; preds = %105
  %113 = load i32, i32* @SQLITE_OK, align 4
  store i32 %113, i32* %6, align 4
  br label %114

114:                                              ; preds = %112, %108
  %115 = load i32, i32* %6, align 4
  ret i32 %115
}

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @tokenizeSegment(i32, i8*, i32, i32, %struct.TYPE_8__*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @queryClear(%struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
