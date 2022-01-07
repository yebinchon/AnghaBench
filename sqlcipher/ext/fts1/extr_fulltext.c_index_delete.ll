; ModuleID = '/home/carl/AnghaBench/sqlcipher/ext/fts1/extr_fulltext.c_index_delete.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/ext/fts1/extr_fulltext.c_index_delete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }

@SQLITE_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_6__*, i32)* @index_delete to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @index_delete(%struct.TYPE_6__* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %4, align 8
  store i32 %1, i32* %5, align 4
  %11 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %12 = load i32, i32* %5, align 4
  %13 = call i32 @content_select(%struct.TYPE_6__* %11, i32 %12, i8** %6)
  store i32 %13, i32* %9, align 4
  %14 = load i32, i32* %9, align 4
  %15 = load i32, i32* @SQLITE_OK, align 4
  %16 = icmp ne i32 %14, %15
  br i1 %16, label %17, label %19

17:                                               ; preds = %2
  %18 = load i32, i32* %9, align 4
  store i32 %18, i32* %3, align 4
  br label %72

19:                                               ; preds = %2
  %20 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i8*, i8** %6, align 8
  %24 = load i32, i32* %5, align 4
  %25 = call i32 @build_terms(i32* %7, i32 %22, i8* %23, i32 %24)
  store i32 %25, i32* %9, align 4
  %26 = load i8*, i8** %6, align 8
  %27 = call i32 @free(i8* %26)
  %28 = load i32, i32* %9, align 4
  %29 = load i32, i32* @SQLITE_OK, align 4
  %30 = icmp ne i32 %28, %29
  br i1 %30, label %31, label %33

31:                                               ; preds = %19
  %32 = load i32, i32* %9, align 4
  store i32 %32, i32* %3, align 4
  br label %72

33:                                               ; preds = %19
  %34 = call i32* @HashFirst(i32* %7)
  store i32* %34, i32** %8, align 8
  br label %35

35:                                               ; preds = %51, %33
  %36 = load i32*, i32** %8, align 8
  %37 = icmp ne i32* %36, null
  br i1 %37, label %38, label %54

38:                                               ; preds = %35
  %39 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %40 = load i32*, i32** %8, align 8
  %41 = call i32 @HashKey(i32* %40)
  %42 = load i32*, i32** %8, align 8
  %43 = call i32 @HashKeysize(i32* %42)
  %44 = load i32, i32* %5, align 4
  %45 = call i32 @index_delete_term(%struct.TYPE_6__* %39, i32 %41, i32 %43, i32 %44)
  store i32 %45, i32* %9, align 4
  %46 = load i32, i32* %9, align 4
  %47 = load i32, i32* @SQLITE_OK, align 4
  %48 = icmp ne i32 %46, %47
  br i1 %48, label %49, label %50

49:                                               ; preds = %38
  br label %54

50:                                               ; preds = %38
  br label %51

51:                                               ; preds = %50
  %52 = load i32*, i32** %8, align 8
  %53 = call i32* @HashNext(i32* %52)
  store i32* %53, i32** %8, align 8
  br label %35

54:                                               ; preds = %49, %35
  %55 = call i32* @HashFirst(i32* %7)
  store i32* %55, i32** %8, align 8
  br label %56

56:                                               ; preds = %64, %54
  %57 = load i32*, i32** %8, align 8
  %58 = icmp ne i32* %57, null
  br i1 %58, label %59, label %67

59:                                               ; preds = %56
  %60 = load i32*, i32** %8, align 8
  %61 = call i32* @HashData(i32* %60)
  store i32* %61, i32** %10, align 8
  %62 = load i32*, i32** %10, align 8
  %63 = call i32 @docListDelete(i32* %62)
  br label %64

64:                                               ; preds = %59
  %65 = load i32*, i32** %8, align 8
  %66 = call i32* @HashNext(i32* %65)
  store i32* %66, i32** %8, align 8
  br label %56

67:                                               ; preds = %56
  %68 = call i32 @HashClear(i32* %7)
  %69 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %70 = load i32, i32* %5, align 4
  %71 = call i32 @content_delete(%struct.TYPE_6__* %69, i32 %70)
  store i32 %71, i32* %3, align 4
  br label %72

72:                                               ; preds = %67, %31, %17
  %73 = load i32, i32* %3, align 4
  ret i32 %73
}

declare dso_local i32 @content_select(%struct.TYPE_6__*, i32, i8**) #1

declare dso_local i32 @build_terms(i32*, i32, i8*, i32) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32* @HashFirst(i32*) #1

declare dso_local i32 @index_delete_term(%struct.TYPE_6__*, i32, i32, i32) #1

declare dso_local i32 @HashKey(i32*) #1

declare dso_local i32 @HashKeysize(i32*) #1

declare dso_local i32* @HashNext(i32*) #1

declare dso_local i32* @HashData(i32*) #1

declare dso_local i32 @docListDelete(i32*) #1

declare dso_local i32 @HashClear(i32*) #1

declare dso_local i32 @content_delete(%struct.TYPE_6__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
