; ModuleID = '/home/carl/AnghaBench/reactos/sdk/lib/3rdparty/adns/src/extr_general.c_adns__diag_domain.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/lib/3rdparty/adns/src/extr_general.c_adns__diag_domain.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64, i64 }

@pdf_quoteok = common dso_local global i32 0, align 4
@adns_s_nomemory = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [40 x i8] c"<cannot report domain... out of memory>\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"<bad format... \00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c">\00", align 1
@.str.3 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.4 = private unnamed_addr constant [44 x i8] c"<cannot report bad format... out of memory>\00", align 1
@.str.5 = private unnamed_addr constant [16 x i8] c"<truncated ...>\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @adns__diag_domain(i32 %0, i32 %1, i32 %2, %struct.TYPE_6__* %3, i32* %4, i32 %5, i32 %6) #0 {
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_6__*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  store i32 %0, i32* %9, align 4
  store i32 %1, i32* %10, align 4
  store i32 %2, i32* %11, align 4
  store %struct.TYPE_6__* %3, %struct.TYPE_6__** %12, align 8
  store i32* %4, i32** %13, align 8
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  %17 = load i32, i32* %9, align 4
  %18 = load i32, i32* %10, align 4
  %19 = load i32, i32* %11, align 4
  %20 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %21 = load i32, i32* @pdf_quoteok, align 4
  %22 = load i32*, i32** %13, align 8
  %23 = load i32, i32* %14, align 4
  %24 = load i32, i32* %14, align 4
  %25 = call i64 @adns__parse_domain(i32 %17, i32 %18, i32 %19, %struct.TYPE_6__* %20, i32 %21, i32* %22, i32 %23, i32* %15, i32 %24)
  store i64 %25, i64* %16, align 8
  %26 = load i64, i64* %16, align 8
  %27 = load i64, i64* @adns_s_nomemory, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %30

29:                                               ; preds = %7
  store i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i8** %8, align 8
  br label %70

30:                                               ; preds = %7
  %31 = load i64, i64* %16, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %55

33:                                               ; preds = %30
  %34 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 1
  store i64 0, i64* %35, align 8
  %36 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %37 = call i64 @adns__vbuf_appendstr(%struct.TYPE_6__* %36, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %53

39:                                               ; preds = %33
  %40 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %41 = load i64, i64* %16, align 8
  %42 = call i8* @adns_strerror(i64 %41)
  %43 = call i64 @adns__vbuf_appendstr(%struct.TYPE_6__* %40, i8* %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %53

45:                                               ; preds = %39
  %46 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %47 = call i64 @adns__vbuf_appendstr(%struct.TYPE_6__* %46, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %53

49:                                               ; preds = %45
  %50 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %51 = call i64 @adns__vbuf_append(%struct.TYPE_6__* %50, i32* bitcast ([1 x i8]* @.str.3 to i32*), i32 1)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %54, label %53

53:                                               ; preds = %49, %45, %39, %33
  store i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.4, i64 0, i64 0), i8** %8, align 8
  br label %70

54:                                               ; preds = %49
  br label %55

55:                                               ; preds = %54, %30
  %56 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 1
  %58 = load i64, i64* %57, align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %65, label %60

60:                                               ; preds = %55
  %61 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %62 = call i64 @adns__vbuf_appendstr(%struct.TYPE_6__* %61, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i64 0, i64 0))
  %63 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %64 = call i64 @adns__vbuf_append(%struct.TYPE_6__* %63, i32* bitcast ([1 x i8]* @.str.3 to i32*), i32 1)
  br label %65

65:                                               ; preds = %60, %55
  %66 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %67 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = inttoptr i64 %68 to i8*
  store i8* %69, i8** %8, align 8
  br label %70

70:                                               ; preds = %65, %53, %29
  %71 = load i8*, i8** %8, align 8
  ret i8* %71
}

declare dso_local i64 @adns__parse_domain(i32, i32, i32, %struct.TYPE_6__*, i32, i32*, i32, i32*, i32) #1

declare dso_local i64 @adns__vbuf_appendstr(%struct.TYPE_6__*, i8*) #1

declare dso_local i8* @adns_strerror(i64) #1

declare dso_local i64 @adns__vbuf_append(%struct.TYPE_6__*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
