; ModuleID = '/home/carl/AnghaBench/sqlcipher/ext/fts5/extr_fts5_aux.c_fts5SentenceFinderCb.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/ext/fts5/extr_fts5_aux.c_fts5SentenceFinderCb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i8* }

@SQLITE_OK = common dso_local global i32 0, align 4
@FTS5_TOKEN_COLOCATED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32, i8*, i32, i32, i32)* @fts5SentenceFinderCb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fts5SentenceFinderCb(i8* %0, i32 %1, i8* %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.TYPE_3__*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i8, align 1
  store i8* %0, i8** %7, align 8
  store i32 %1, i32* %8, align 4
  store i8* %2, i8** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  %17 = load i32, i32* @SQLITE_OK, align 4
  store i32 %17, i32* %13, align 4
  %18 = load i8*, i8** %9, align 8
  %19 = load i32, i32* %10, align 4
  %20 = call i32 @UNUSED_PARAM2(i8* %18, i32 %19)
  %21 = load i32, i32* %12, align 4
  %22 = call i32 @UNUSED_PARAM(i32 %21)
  %23 = load i32, i32* %8, align 4
  %24 = load i32, i32* @FTS5_TOKEN_COLOCATED, align 4
  %25 = and i32 %23, %24
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %96

27:                                               ; preds = %6
  %28 = load i8*, i8** %7, align 8
  %29 = bitcast i8* %28 to %struct.TYPE_3__*
  store %struct.TYPE_3__* %29, %struct.TYPE_3__** %14, align 8
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = icmp sgt i64 %32, 0
  br i1 %33, label %34, label %88

34:                                               ; preds = %27
  store i8 0, i8* %16, align 1
  %35 = load i32, i32* %11, align 4
  %36 = sub nsw i32 %35, 1
  store i32 %36, i32* %15, align 4
  br label %37

37:                                               ; preds = %65, %34
  %38 = load i32, i32* %15, align 4
  %39 = icmp sge i32 %38, 0
  br i1 %39, label %40, label %68

40:                                               ; preds = %37
  %41 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 1
  %43 = load i8*, i8** %42, align 8
  %44 = load i32, i32* %15, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i8, i8* %43, i64 %45
  %47 = load i8, i8* %46, align 1
  store i8 %47, i8* %16, align 1
  %48 = load i8, i8* %16, align 1
  %49 = sext i8 %48 to i32
  %50 = icmp ne i32 %49, 32
  br i1 %50, label %51, label %64

51:                                               ; preds = %40
  %52 = load i8, i8* %16, align 1
  %53 = sext i8 %52 to i32
  %54 = icmp ne i32 %53, 9
  br i1 %54, label %55, label %64

55:                                               ; preds = %51
  %56 = load i8, i8* %16, align 1
  %57 = sext i8 %56 to i32
  %58 = icmp ne i32 %57, 10
  br i1 %58, label %59, label %64

59:                                               ; preds = %55
  %60 = load i8, i8* %16, align 1
  %61 = sext i8 %60 to i32
  %62 = icmp ne i32 %61, 13
  br i1 %62, label %63, label %64

63:                                               ; preds = %59
  br label %68

64:                                               ; preds = %59, %55, %51, %40
  br label %65

65:                                               ; preds = %64
  %66 = load i32, i32* %15, align 4
  %67 = add nsw i32 %66, -1
  store i32 %67, i32* %15, align 4
  br label %37

68:                                               ; preds = %63, %37
  %69 = load i32, i32* %15, align 4
  %70 = load i32, i32* %11, align 4
  %71 = sub nsw i32 %70, 1
  %72 = icmp ne i32 %69, %71
  br i1 %72, label %73, label %87

73:                                               ; preds = %68
  %74 = load i8, i8* %16, align 1
  %75 = sext i8 %74 to i32
  %76 = icmp eq i32 %75, 46
  br i1 %76, label %81, label %77

77:                                               ; preds = %73
  %78 = load i8, i8* %16, align 1
  %79 = sext i8 %78 to i32
  %80 = icmp eq i32 %79, 58
  br i1 %80, label %81, label %87

81:                                               ; preds = %77, %73
  %82 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %83 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %84 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = call i32 @fts5SentenceFinderAdd(%struct.TYPE_3__* %82, i64 %85)
  store i32 %86, i32* %13, align 4
  br label %87

87:                                               ; preds = %81, %77, %68
  br label %91

88:                                               ; preds = %27
  %89 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %90 = call i32 @fts5SentenceFinderAdd(%struct.TYPE_3__* %89, i64 0)
  store i32 %90, i32* %13, align 4
  br label %91

91:                                               ; preds = %88, %87
  %92 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %93 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %92, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  %95 = add nsw i64 %94, 1
  store i64 %95, i64* %93, align 8
  br label %96

96:                                               ; preds = %91, %6
  %97 = load i32, i32* %13, align 4
  ret i32 %97
}

declare dso_local i32 @UNUSED_PARAM2(i8*, i32) #1

declare dso_local i32 @UNUSED_PARAM(i32) #1

declare dso_local i32 @fts5SentenceFinderAdd(%struct.TYPE_3__*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
