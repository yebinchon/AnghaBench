; ModuleID = '/home/carl/AnghaBench/stb/tools/extr_..stb.h_stb_malloc_validate.c'
source_filename = "/home/carl/AnghaBench/stb/tools/extr_..stb.h_stb_malloc_validate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i8**, i8* }
%struct.TYPE_4__ = type { i8**, i8*, i8* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @stb_malloc_validate(i8* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.TYPE_3__*, align 8
  %6 = alloca %struct.TYPE_4__*, align 8
  store i8* %0, i8** %3, align 8
  store i8* %1, i8** %4, align 8
  %7 = load i8*, i8** %3, align 8
  %8 = icmp eq i8* %7, null
  br i1 %8, label %9, label %10

9:                                                ; preds = %2
  br label %111

10:                                               ; preds = %2
  %11 = load i8*, i8** %3, align 8
  %12 = call i32 @stb__identify(i8* %11)
  switch i32 %12, label %109 [
    i32 129, label %13
    i32 128, label %14
    i32 130, label %51
  ]

13:                                               ; preds = %10
  br label %111

14:                                               ; preds = %10
  %15 = load i8*, i8** %3, align 8
  %16 = bitcast i8* %15 to %struct.TYPE_3__*
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i64 -1
  store %struct.TYPE_3__* %17, %struct.TYPE_3__** %5, align 8
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = load i8**, i8*** %19, align 8
  %21 = icmp ne i8** %20, null
  br i1 %21, label %22, label %31

22:                                               ; preds = %14
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  %25 = load i8**, i8*** %24, align 8
  %26 = load i8*, i8** %25, align 8
  %27 = load i8*, i8** %3, align 8
  %28 = icmp eq i8* %26, %27
  %29 = zext i1 %28 to i32
  %30 = call i32 @assert(i32 %29)
  br label %31

31:                                               ; preds = %22, %14
  %32 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 1
  %34 = load i8*, i8** %33, align 8
  %35 = icmp ne i8* %34, null
  br i1 %35, label %36, label %50

36:                                               ; preds = %31
  %37 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 1
  %39 = load i8*, i8** %38, align 8
  %40 = call i8*** @stb__prevn(i8* %39)
  %41 = load i8**, i8*** %40, align 8
  %42 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 1
  %44 = icmp eq i8** %41, %43
  %45 = zext i1 %44 to i32
  %46 = call i32 @assert(i32 %45)
  %47 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %48 = bitcast %struct.TYPE_3__* %47 to i8*
  %49 = load i8*, i8** %4, align 8
  call void @stb_malloc_validate(i8* %48, i8* %49)
  br label %50

50:                                               ; preds = %36, %31
  br label %111

51:                                               ; preds = %10
  %52 = load i8*, i8** %3, align 8
  %53 = bitcast i8* %52 to %struct.TYPE_4__*
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i64 -1
  store %struct.TYPE_4__* %54, %struct.TYPE_4__** %6, align 8
  %55 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 0
  %57 = load i8**, i8*** %56, align 8
  %58 = icmp ne i8** %57, null
  br i1 %58, label %59, label %68

59:                                               ; preds = %51
  %60 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 0
  %62 = load i8**, i8*** %61, align 8
  %63 = load i8*, i8** %62, align 8
  %64 = load i8*, i8** %3, align 8
  %65 = icmp eq i8* %63, %64
  %66 = zext i1 %65 to i32
  %67 = call i32 @assert(i32 %66)
  br label %68

68:                                               ; preds = %59, %51
  %69 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 2
  %71 = load i8*, i8** %70, align 8
  %72 = icmp ne i8* %71, null
  br i1 %72, label %73, label %88

73:                                               ; preds = %68
  %74 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i32 0, i32 2
  %76 = load i8*, i8** %75, align 8
  %77 = call i8*** @stb__prevn(i8* %76)
  %78 = load i8**, i8*** %77, align 8
  %79 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %79, i32 0, i32 2
  %81 = icmp eq i8** %78, %80
  %82 = zext i1 %81 to i32
  %83 = call i32 @assert(i32 %82)
  %84 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %85 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %84, i32 0, i32 2
  %86 = load i8*, i8** %85, align 8
  %87 = load i8*, i8** %3, align 8
  call void @stb_malloc_validate(i8* %86, i8* %87)
  br label %88

88:                                               ; preds = %73, %68
  %89 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %90 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %89, i32 0, i32 1
  %91 = load i8*, i8** %90, align 8
  %92 = icmp ne i8* %91, null
  br i1 %92, label %93, label %108

93:                                               ; preds = %88
  %94 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %95 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %94, i32 0, i32 1
  %96 = load i8*, i8** %95, align 8
  %97 = call i8*** @stb__prevn(i8* %96)
  %98 = load i8**, i8*** %97, align 8
  %99 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %100 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %99, i32 0, i32 1
  %101 = icmp eq i8** %98, %100
  %102 = zext i1 %101 to i32
  %103 = call i32 @assert(i32 %102)
  %104 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %105 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %104, i32 0, i32 1
  %106 = load i8*, i8** %105, align 8
  %107 = load i8*, i8** %4, align 8
  call void @stb_malloc_validate(i8* %106, i8* %107)
  br label %108

108:                                              ; preds = %93, %88
  br label %111

109:                                              ; preds = %10
  %110 = call i32 @assert(i32 0)
  br label %111

111:                                              ; preds = %9, %13, %50, %108, %109
  ret void
}

declare dso_local i32 @stb__identify(i8*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i8*** @stb__prevn(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
