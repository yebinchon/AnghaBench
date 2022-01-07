; ModuleID = '/home/carl/AnghaBench/stb/tools/extr_..stb.h_stb_wrapper_realloc.c'
source_filename = "/home/carl/AnghaBench/stb/tools/extr_..stb.h_stb_wrapper_realloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i32 }
%struct.TYPE_3__ = type { i64, i8*, i32 }

@.str = private unnamed_addr constant [83 x i8] c"Attempted to realloc %d-byte block %p at %s:%d previously freed/realloced at %s:%d\00", align 1
@stb__alloc_history = common dso_local global %struct.TYPE_4__* null, align 8
@.str.1 = private unnamed_addr constant [47 x i8] c"Attempted to realloc unknown block %p at %s:%d\00", align 1
@stb__allocations = common dso_local global %struct.TYPE_3__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @stb_wrapper_realloc(i8* %0, i8* %1, i64 %2, i8* %3, i32 %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store i8* %1, i8** %7, align 8
  store i64 %2, i64* %8, align 8
  store i8* %3, i8** %9, align 8
  store i32 %4, i32* %10, align 4
  %12 = load i8*, i8** %6, align 8
  %13 = icmp eq i8* %12, null
  br i1 %13, label %14, label %20

14:                                               ; preds = %5
  %15 = load i8*, i8** %7, align 8
  %16 = load i64, i64* %8, align 8
  %17 = load i8*, i8** %9, align 8
  %18 = load i32, i32* %10, align 4
  %19 = call i32 @stb_wrapper_malloc(i8* %15, i64 %16, i8* %17, i32 %18)
  br label %100

20:                                               ; preds = %5
  %21 = load i8*, i8** %7, align 8
  %22 = icmp eq i8* %21, null
  br i1 %22, label %23, label %24

23:                                               ; preds = %20
  br label %100

24:                                               ; preds = %20
  %25 = load i8*, i8** %6, align 8
  %26 = call i32 @stb__hashfind(i8* %25)
  store i32 %26, i32* %11, align 4
  %27 = load i32, i32* %11, align 4
  %28 = icmp eq i32 %27, -1
  br i1 %28, label %29, label %66

29:                                               ; preds = %24
  %30 = load i8*, i8** %6, align 8
  %31 = call i32 @stb__historyfind(i8* %30)
  store i32 %31, i32* %11, align 4
  %32 = call i32 @assert(i32 0)
  %33 = load i32, i32* %11, align 4
  %34 = icmp sge i32 %33, 0
  br i1 %34, label %35, label %60

35:                                               ; preds = %29
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** @stb__alloc_history, align 8
  %37 = load i32, i32* %11, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i64 %38
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 4
  %42 = sext i32 %41 to i64
  %43 = inttoptr i64 %42 to i8*
  %44 = load i8*, i8** %6, align 8
  %45 = load i8*, i8** %9, align 8
  %46 = load i32, i32* %10, align 4
  %47 = load %struct.TYPE_4__*, %struct.TYPE_4__** @stb__alloc_history, align 8
  %48 = load i32, i32* %11, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i64 %49
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.TYPE_4__*, %struct.TYPE_4__** @stb__alloc_history, align 8
  %54 = load i32, i32* %11, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i64 %55
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = call i32 (i8*, i8*, i8*, ...) @stb_fatal(i8* getelementptr inbounds ([83 x i8], [83 x i8]* @.str, i64 0, i64 0), i8* %43, i8* %44, i8* %45, i32 %46, i32 %52, i32 %58)
  br label %65

60:                                               ; preds = %29
  %61 = load i8*, i8** %6, align 8
  %62 = load i8*, i8** %9, align 8
  %63 = load i32, i32* %10, align 4
  %64 = call i32 (i8*, i8*, i8*, ...) @stb_fatal(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0), i8* %61, i8* %62, i32 %63)
  br label %65

65:                                               ; preds = %60, %35
  br label %100

66:                                               ; preds = %24
  %67 = load i8*, i8** %7, align 8
  %68 = load i8*, i8** %6, align 8
  %69 = icmp eq i8* %67, %68
  br i1 %69, label %70, label %89

70:                                               ; preds = %66
  %71 = load i64, i64* %8, align 8
  %72 = load %struct.TYPE_3__*, %struct.TYPE_3__** @stb__allocations, align 8
  %73 = load i32, i32* %11, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %72, i64 %74
  %76 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %75, i32 0, i32 0
  store i64 %71, i64* %76, align 8
  %77 = load i8*, i8** %9, align 8
  %78 = load %struct.TYPE_3__*, %struct.TYPE_3__** @stb__allocations, align 8
  %79 = load i32, i32* %11, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %78, i64 %80
  %82 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %81, i32 0, i32 1
  store i8* %77, i8** %82, align 8
  %83 = load i32, i32* %10, align 4
  %84 = load %struct.TYPE_3__*, %struct.TYPE_3__** @stb__allocations, align 8
  %85 = load i32, i32* %11, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %84, i64 %86
  %88 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %87, i32 0, i32 2
  store i32 %83, i32* %88, align 8
  br label %99

89:                                               ; preds = %66
  %90 = load i32, i32* %11, align 4
  %91 = load i8*, i8** %9, align 8
  %92 = load i32, i32* %10, align 4
  %93 = call i32 @stb__remove_alloc(i32 %90, i8* %91, i32 %92)
  %94 = load i8*, i8** %7, align 8
  %95 = load i64, i64* %8, align 8
  %96 = load i8*, i8** %9, align 8
  %97 = load i32, i32* %10, align 4
  %98 = call i32 @stb__add_alloc(i8* %94, i64 %95, i8* %96, i32 %97)
  br label %99

99:                                               ; preds = %89, %70
  br label %100

100:                                              ; preds = %14, %23, %99, %65
  ret void
}

declare dso_local i32 @stb_wrapper_malloc(i8*, i64, i8*, i32) #1

declare dso_local i32 @stb__hashfind(i8*) #1

declare dso_local i32 @stb__historyfind(i8*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @stb_fatal(i8*, i8*, i8*, ...) #1

declare dso_local i32 @stb__remove_alloc(i32, i8*, i32) #1

declare dso_local i32 @stb__add_alloc(i8*, i64, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
