; ModuleID = '/home/carl/AnghaBench/redis/deps/jemalloc/test/unit/extr_emitter.c_forwarding_cb.c'
source_filename = "/home/carl/AnghaBench/redis/deps/jemalloc/test/unit/extr_emitter.c_forwarding_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i64, i64 }

@print_raw = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@print_escaped = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [2 x i8] c"\22\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"\\\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"\\\22\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"\\t\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"\\n\22\0A\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c"%c\00", align 1
@.str.7 = private unnamed_addr constant [17 x i8] c"Buffer overflow!\00", align 1
@.str.8 = private unnamed_addr constant [21 x i8] c"Buffer out of space!\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i8*)* @forwarding_cb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @forwarding_cb(i8* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.TYPE_2__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  store i8* %1, i8** %4, align 8
  %8 = load i8*, i8** %3, align 8
  %9 = bitcast i8* %8 to %struct.TYPE_2__*
  store %struct.TYPE_2__* %9, %struct.TYPE_2__** %5, align 8
  %10 = load i64, i64* @print_raw, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %15

12:                                               ; preds = %2
  %13 = load i8*, i8** %4, align 8
  %14 = call i32 (i8*, ...) @malloc_printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* %13)
  br label %15

15:                                               ; preds = %12, %2
  %16 = load i64, i64* @print_escaped, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %57

18:                                               ; preds = %15
  %19 = load i8*, i8** %4, align 8
  store i8* %19, i8** %6, align 8
  br label %20

20:                                               ; preds = %53, %18
  %21 = load i8*, i8** %6, align 8
  %22 = load i8, i8* %21, align 1
  %23 = sext i8 %22 to i32
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %56

25:                                               ; preds = %20
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %34, label %30

30:                                               ; preds = %25
  %31 = call i32 (i8*, ...) @malloc_printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  store i32 1, i32* %33, align 8
  br label %34

34:                                               ; preds = %30, %25
  %35 = load i8*, i8** %6, align 8
  %36 = load i8, i8* %35, align 1
  %37 = sext i8 %36 to i32
  switch i32 %37, label %48 [
    i32 92, label %38
    i32 34, label %40
    i32 9, label %42
    i32 10, label %44
  ]

38:                                               ; preds = %34
  %39 = call i32 (i8*, ...) @malloc_printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  br label %53

40:                                               ; preds = %34
  %41 = call i32 (i8*, ...) @malloc_printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0))
  br label %53

42:                                               ; preds = %34
  %43 = call i32 (i8*, ...) @malloc_printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0))
  br label %53

44:                                               ; preds = %34
  %45 = call i32 (i8*, ...) @malloc_printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0))
  %46 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 0
  store i32 0, i32* %47, align 8
  br label %53

48:                                               ; preds = %34
  %49 = load i8*, i8** %6, align 8
  %50 = load i8, i8* %49, align 1
  %51 = sext i8 %50 to i32
  %52 = call i32 (i8*, ...) @malloc_printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0), i32 %51)
  br label %53

53:                                               ; preds = %48, %44, %42, %40, %38
  %54 = load i8*, i8** %6, align 8
  %55 = getelementptr inbounds i8, i8* %54, i32 1
  store i8* %55, i8** %6, align 8
  br label %20

56:                                               ; preds = %20
  br label %57

57:                                               ; preds = %56, %15
  %58 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 1
  %60 = load i64, i64* %59, align 8
  %61 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 2
  %63 = load i64, i64* %62, align 8
  %64 = load i8*, i8** %4, align 8
  %65 = call i64 @malloc_snprintf(i64 %60, i64 %63, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* %64)
  store i64 %65, i64* %7, align 8
  %66 = load i64, i64* %7, align 8
  %67 = load i8*, i8** %4, align 8
  %68 = call i32 @strlen(i8* %67)
  %69 = call i32 @assert_zu_eq(i64 %66, i32 %68, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.7, i64 0, i64 0))
  %70 = load i64, i64* %7, align 8
  %71 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i32 0, i32 1
  %73 = load i64, i64* %72, align 8
  %74 = add i64 %73, %70
  store i64 %74, i64* %72, align 8
  %75 = load i64, i64* %7, align 8
  %76 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %77 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %76, i32 0, i32 2
  %78 = load i64, i64* %77, align 8
  %79 = sub i64 %78, %75
  store i64 %79, i64* %77, align 8
  %80 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %81 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %80, i32 0, i32 2
  %82 = load i64, i64* %81, align 8
  %83 = call i32 @assert_zu_gt(i64 %82, i32 0, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.8, i64 0, i64 0))
  ret void
}

declare dso_local i32 @malloc_printf(i8*, ...) #1

declare dso_local i64 @malloc_snprintf(i64, i64, i8*, i8*) #1

declare dso_local i32 @assert_zu_eq(i64, i32, i8*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @assert_zu_gt(i64, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
