; ModuleID = '/home/carl/AnghaBench/reactos/sdk/lib/3rdparty/libxml2/extr_uri.c_xmlParse3986Query.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/lib/3rdparty/libxml2/extr_uri.c_xmlParse3986Query.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32*, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_3__*, i8**)* @xmlParse3986Query to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xmlParse3986Query(%struct.TYPE_3__* %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca i8**, align 8
  %6 = alloca i8*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %4, align 8
  store i8** %1, i8*** %5, align 8
  %7 = load i8**, i8*** %5, align 8
  %8 = icmp eq i8** %7, null
  br i1 %8, label %9, label %10

9:                                                ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %120

10:                                               ; preds = %2
  %11 = load i8**, i8*** %5, align 8
  %12 = load i8*, i8** %11, align 8
  store i8* %12, i8** %6, align 8
  br label %13

13:                                               ; preds = %44, %10
  %14 = load i8*, i8** %6, align 8
  %15 = call i64 @ISA_PCHAR(i8* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %42, label %17

17:                                               ; preds = %13
  %18 = load i8*, i8** %6, align 8
  %19 = load i8, i8* %18, align 1
  %20 = sext i8 %19 to i32
  %21 = icmp eq i32 %20, 47
  br i1 %21, label %42, label %22

22:                                               ; preds = %17
  %23 = load i8*, i8** %6, align 8
  %24 = load i8, i8* %23, align 1
  %25 = sext i8 %24 to i32
  %26 = icmp eq i32 %25, 63
  br i1 %26, label %42, label %27

27:                                               ; preds = %22
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %29 = icmp ne %struct.TYPE_3__* %28, null
  br i1 %29, label %30, label %40

30:                                               ; preds = %27
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = and i32 %33, 1
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %40

36:                                               ; preds = %30
  %37 = load i8*, i8** %6, align 8
  %38 = call i64 @IS_UNWISE(i8* %37)
  %39 = icmp ne i64 %38, 0
  br label %40

40:                                               ; preds = %36, %30, %27
  %41 = phi i1 [ false, %30 ], [ false, %27 ], [ %39, %36 ]
  br label %42

42:                                               ; preds = %40, %22, %17, %13
  %43 = phi i1 [ true, %22 ], [ true, %17 ], [ true, %13 ], [ %41, %40 ]
  br i1 %43, label %44, label %47

44:                                               ; preds = %42
  %45 = load i8*, i8** %6, align 8
  %46 = call i32 @NEXT(i8* %45)
  br label %13

47:                                               ; preds = %42
  %48 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %49 = icmp ne %struct.TYPE_3__* %48, null
  br i1 %49, label %50, label %117

50:                                               ; preds = %47
  %51 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 2
  %53 = load i32*, i32** %52, align 8
  %54 = icmp ne i32* %53, null
  br i1 %54, label %55, label %60

55:                                               ; preds = %50
  %56 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 2
  %58 = load i32*, i32** %57, align 8
  %59 = call i32 @xmlFree(i32* %58)
  br label %60

60:                                               ; preds = %55, %50
  %61 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = and i32 %63, 2
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %80

66:                                               ; preds = %60
  %67 = load i8**, i8*** %5, align 8
  %68 = load i8*, i8** %67, align 8
  %69 = load i8*, i8** %6, align 8
  %70 = load i8**, i8*** %5, align 8
  %71 = load i8*, i8** %70, align 8
  %72 = ptrtoint i8* %69 to i64
  %73 = ptrtoint i8* %71 to i64
  %74 = sub i64 %72, %73
  %75 = trunc i64 %74 to i32
  %76 = call i8* @STRNDUP(i8* %68, i32 %75)
  %77 = bitcast i8* %76 to i32*
  %78 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %79 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %78, i32 0, i32 2
  store i32* %77, i32** %79, align 8
  br label %93

80:                                               ; preds = %60
  %81 = load i8**, i8*** %5, align 8
  %82 = load i8*, i8** %81, align 8
  %83 = load i8*, i8** %6, align 8
  %84 = load i8**, i8*** %5, align 8
  %85 = load i8*, i8** %84, align 8
  %86 = ptrtoint i8* %83 to i64
  %87 = ptrtoint i8* %85 to i64
  %88 = sub i64 %86, %87
  %89 = trunc i64 %88 to i32
  %90 = call i32* @xmlURIUnescapeString(i8* %82, i32 %89, i32* null)
  %91 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %92 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %91, i32 0, i32 2
  store i32* %90, i32** %92, align 8
  br label %93

93:                                               ; preds = %80, %66
  %94 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %95 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %94, i32 0, i32 1
  %96 = load i32*, i32** %95, align 8
  %97 = icmp ne i32* %96, null
  br i1 %97, label %98, label %103

98:                                               ; preds = %93
  %99 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %100 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %99, i32 0, i32 1
  %101 = load i32*, i32** %100, align 8
  %102 = call i32 @xmlFree(i32* %101)
  br label %103

103:                                              ; preds = %98, %93
  %104 = load i8**, i8*** %5, align 8
  %105 = load i8*, i8** %104, align 8
  %106 = load i8*, i8** %6, align 8
  %107 = load i8**, i8*** %5, align 8
  %108 = load i8*, i8** %107, align 8
  %109 = ptrtoint i8* %106 to i64
  %110 = ptrtoint i8* %108 to i64
  %111 = sub i64 %109, %110
  %112 = trunc i64 %111 to i32
  %113 = call i8* @STRNDUP(i8* %105, i32 %112)
  %114 = bitcast i8* %113 to i32*
  %115 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %116 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %115, i32 0, i32 1
  store i32* %114, i32** %116, align 8
  br label %117

117:                                              ; preds = %103, %47
  %118 = load i8*, i8** %6, align 8
  %119 = load i8**, i8*** %5, align 8
  store i8* %118, i8** %119, align 8
  store i32 0, i32* %3, align 4
  br label %120

120:                                              ; preds = %117, %9
  %121 = load i32, i32* %3, align 4
  ret i32 %121
}

declare dso_local i64 @ISA_PCHAR(i8*) #1

declare dso_local i64 @IS_UNWISE(i8*) #1

declare dso_local i32 @NEXT(i8*) #1

declare dso_local i32 @xmlFree(i32*) #1

declare dso_local i8* @STRNDUP(i8*, i32) #1

declare dso_local i32* @xmlURIUnescapeString(i8*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
