; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/source/html/extr_css-parse.c_parse_expr.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/source/html/extr_css-parse.c_parse_expr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { %struct.TYPE_3__* }
%struct.lexbuf = type { i8, i32, i32 }

@EOF = common dso_local global i8 0, align 1
@.str = private unnamed_addr constant [2 x i8] c",\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"/\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_3__* (%struct.lexbuf*)* @parse_expr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_3__* @parse_expr(%struct.lexbuf* %0) #0 {
  %2 = alloca %struct.lexbuf*, align 8
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = alloca %struct.TYPE_3__*, align 8
  store %struct.lexbuf* %0, %struct.lexbuf** %2, align 8
  %5 = load %struct.lexbuf*, %struct.lexbuf** %2, align 8
  %6 = call i8* @parse_term(%struct.lexbuf* %5)
  %7 = bitcast i8* %6 to %struct.TYPE_3__*
  store %struct.TYPE_3__* %7, %struct.TYPE_3__** %4, align 8
  store %struct.TYPE_3__* %7, %struct.TYPE_3__** %3, align 8
  br label %8

8:                                                ; preds = %93, %1
  %9 = load %struct.lexbuf*, %struct.lexbuf** %2, align 8
  %10 = getelementptr inbounds %struct.lexbuf, %struct.lexbuf* %9, i32 0, i32 0
  %11 = load i8, i8* %10, align 4
  %12 = sext i8 %11 to i32
  %13 = icmp ne i32 %12, 125
  br i1 %13, label %14, label %40

14:                                               ; preds = %8
  %15 = load %struct.lexbuf*, %struct.lexbuf** %2, align 8
  %16 = getelementptr inbounds %struct.lexbuf, %struct.lexbuf* %15, i32 0, i32 0
  %17 = load i8, i8* %16, align 4
  %18 = sext i8 %17 to i32
  %19 = icmp ne i32 %18, 59
  br i1 %19, label %20, label %40

20:                                               ; preds = %14
  %21 = load %struct.lexbuf*, %struct.lexbuf** %2, align 8
  %22 = getelementptr inbounds %struct.lexbuf, %struct.lexbuf* %21, i32 0, i32 0
  %23 = load i8, i8* %22, align 4
  %24 = sext i8 %23 to i32
  %25 = icmp ne i32 %24, 33
  br i1 %25, label %26, label %40

26:                                               ; preds = %20
  %27 = load %struct.lexbuf*, %struct.lexbuf** %2, align 8
  %28 = getelementptr inbounds %struct.lexbuf, %struct.lexbuf* %27, i32 0, i32 0
  %29 = load i8, i8* %28, align 4
  %30 = sext i8 %29 to i32
  %31 = icmp ne i32 %30, 41
  br i1 %31, label %32, label %40

32:                                               ; preds = %26
  %33 = load %struct.lexbuf*, %struct.lexbuf** %2, align 8
  %34 = getelementptr inbounds %struct.lexbuf, %struct.lexbuf* %33, i32 0, i32 0
  %35 = load i8, i8* %34, align 4
  %36 = sext i8 %35 to i32
  %37 = load i8, i8* @EOF, align 1
  %38 = sext i8 %37 to i32
  %39 = icmp ne i32 %36, %38
  br label %40

40:                                               ; preds = %32, %26, %20, %14, %8
  %41 = phi i1 [ false, %26 ], [ false, %20 ], [ false, %14 ], [ false, %8 ], [ %39, %32 ]
  br i1 %41, label %42, label %94

42:                                               ; preds = %40
  %43 = load %struct.lexbuf*, %struct.lexbuf** %2, align 8
  %44 = call i64 @accept(%struct.lexbuf* %43, i8 signext 44)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %64

46:                                               ; preds = %42
  %47 = load %struct.lexbuf*, %struct.lexbuf** %2, align 8
  %48 = call i32 @white(%struct.lexbuf* %47)
  %49 = load %struct.lexbuf*, %struct.lexbuf** %2, align 8
  %50 = getelementptr inbounds %struct.lexbuf, %struct.lexbuf* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.lexbuf*, %struct.lexbuf** %2, align 8
  %53 = getelementptr inbounds %struct.lexbuf, %struct.lexbuf* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = call i8* @fz_new_css_value(i32 %51, i32 %54, i8 signext 44, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %56 = bitcast i8* %55 to %struct.TYPE_3__*
  %57 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i32 0, i32 0
  store %struct.TYPE_3__* %56, %struct.TYPE_3__** %58, align 8
  store %struct.TYPE_3__* %56, %struct.TYPE_3__** %4, align 8
  %59 = load %struct.lexbuf*, %struct.lexbuf** %2, align 8
  %60 = call i8* @parse_term(%struct.lexbuf* %59)
  %61 = bitcast i8* %60 to %struct.TYPE_3__*
  %62 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %62, i32 0, i32 0
  store %struct.TYPE_3__* %61, %struct.TYPE_3__** %63, align 8
  store %struct.TYPE_3__* %61, %struct.TYPE_3__** %4, align 8
  br label %93

64:                                               ; preds = %42
  %65 = load %struct.lexbuf*, %struct.lexbuf** %2, align 8
  %66 = call i64 @accept(%struct.lexbuf* %65, i8 signext 47)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %86

68:                                               ; preds = %64
  %69 = load %struct.lexbuf*, %struct.lexbuf** %2, align 8
  %70 = call i32 @white(%struct.lexbuf* %69)
  %71 = load %struct.lexbuf*, %struct.lexbuf** %2, align 8
  %72 = getelementptr inbounds %struct.lexbuf, %struct.lexbuf* %71, i32 0, i32 2
  %73 = load i32, i32* %72, align 4
  %74 = load %struct.lexbuf*, %struct.lexbuf** %2, align 8
  %75 = getelementptr inbounds %struct.lexbuf, %struct.lexbuf* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = call i8* @fz_new_css_value(i32 %73, i32 %76, i8 signext 47, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %78 = bitcast i8* %77 to %struct.TYPE_3__*
  %79 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %80 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %79, i32 0, i32 0
  store %struct.TYPE_3__* %78, %struct.TYPE_3__** %80, align 8
  store %struct.TYPE_3__* %78, %struct.TYPE_3__** %4, align 8
  %81 = load %struct.lexbuf*, %struct.lexbuf** %2, align 8
  %82 = call i8* @parse_term(%struct.lexbuf* %81)
  %83 = bitcast i8* %82 to %struct.TYPE_3__*
  %84 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %85 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %84, i32 0, i32 0
  store %struct.TYPE_3__* %83, %struct.TYPE_3__** %85, align 8
  store %struct.TYPE_3__* %83, %struct.TYPE_3__** %4, align 8
  br label %92

86:                                               ; preds = %64
  %87 = load %struct.lexbuf*, %struct.lexbuf** %2, align 8
  %88 = call i8* @parse_term(%struct.lexbuf* %87)
  %89 = bitcast i8* %88 to %struct.TYPE_3__*
  %90 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %91 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %90, i32 0, i32 0
  store %struct.TYPE_3__* %89, %struct.TYPE_3__** %91, align 8
  store %struct.TYPE_3__* %89, %struct.TYPE_3__** %4, align 8
  br label %92

92:                                               ; preds = %86, %68
  br label %93

93:                                               ; preds = %92, %46
  br label %8

94:                                               ; preds = %40
  %95 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  ret %struct.TYPE_3__* %95
}

declare dso_local i8* @parse_term(%struct.lexbuf*) #1

declare dso_local i64 @accept(%struct.lexbuf*, i8 signext) #1

declare dso_local i32 @white(%struct.lexbuf*) #1

declare dso_local i8* @fz_new_css_value(i32, i32, i8 signext, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
