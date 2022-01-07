; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/source/html/extr_css-parse.c_parse_declaration_list.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/source/html/extr_css-parse.c_parse_declaration_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { %struct.TYPE_3__* }
%struct.lexbuf = type { i8 }

@EOF = common dso_local global i8 0, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_3__* (%struct.lexbuf*)* @parse_declaration_list to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_3__* @parse_declaration_list(%struct.lexbuf* %0) #0 {
  %2 = alloca %struct.TYPE_3__*, align 8
  %3 = alloca %struct.lexbuf*, align 8
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca %struct.TYPE_3__*, align 8
  store %struct.lexbuf* %0, %struct.lexbuf** %3, align 8
  %6 = load %struct.lexbuf*, %struct.lexbuf** %3, align 8
  %7 = call i32 @white(%struct.lexbuf* %6)
  %8 = load %struct.lexbuf*, %struct.lexbuf** %3, align 8
  %9 = getelementptr inbounds %struct.lexbuf, %struct.lexbuf* %8, i32 0, i32 0
  %10 = load i8, i8* %9, align 1
  %11 = sext i8 %10 to i32
  %12 = icmp eq i32 %11, 125
  br i1 %12, label %21, label %13

13:                                               ; preds = %1
  %14 = load %struct.lexbuf*, %struct.lexbuf** %3, align 8
  %15 = getelementptr inbounds %struct.lexbuf, %struct.lexbuf* %14, i32 0, i32 0
  %16 = load i8, i8* %15, align 1
  %17 = sext i8 %16 to i32
  %18 = load i8, i8* @EOF, align 1
  %19 = sext i8 %18 to i32
  %20 = icmp eq i32 %17, %19
  br i1 %20, label %21, label %22

21:                                               ; preds = %13, %1
  store %struct.TYPE_3__* null, %struct.TYPE_3__** %2, align 8
  br label %61

22:                                               ; preds = %13
  %23 = load %struct.lexbuf*, %struct.lexbuf** %3, align 8
  %24 = call i8* @parse_declaration(%struct.lexbuf* %23)
  %25 = bitcast i8* %24 to %struct.TYPE_3__*
  store %struct.TYPE_3__* %25, %struct.TYPE_3__** %5, align 8
  store %struct.TYPE_3__* %25, %struct.TYPE_3__** %4, align 8
  br label %26

26:                                               ; preds = %58, %22
  %27 = load %struct.lexbuf*, %struct.lexbuf** %3, align 8
  %28 = call i64 @accept(%struct.lexbuf* %27, i8 signext 59)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %59

30:                                               ; preds = %26
  %31 = load %struct.lexbuf*, %struct.lexbuf** %3, align 8
  %32 = call i32 @white(%struct.lexbuf* %31)
  %33 = load %struct.lexbuf*, %struct.lexbuf** %3, align 8
  %34 = getelementptr inbounds %struct.lexbuf, %struct.lexbuf* %33, i32 0, i32 0
  %35 = load i8, i8* %34, align 1
  %36 = sext i8 %35 to i32
  %37 = icmp ne i32 %36, 125
  br i1 %37, label %38, label %58

38:                                               ; preds = %30
  %39 = load %struct.lexbuf*, %struct.lexbuf** %3, align 8
  %40 = getelementptr inbounds %struct.lexbuf, %struct.lexbuf* %39, i32 0, i32 0
  %41 = load i8, i8* %40, align 1
  %42 = sext i8 %41 to i32
  %43 = icmp ne i32 %42, 59
  br i1 %43, label %44, label %58

44:                                               ; preds = %38
  %45 = load %struct.lexbuf*, %struct.lexbuf** %3, align 8
  %46 = getelementptr inbounds %struct.lexbuf, %struct.lexbuf* %45, i32 0, i32 0
  %47 = load i8, i8* %46, align 1
  %48 = sext i8 %47 to i32
  %49 = load i8, i8* @EOF, align 1
  %50 = sext i8 %49 to i32
  %51 = icmp ne i32 %48, %50
  br i1 %51, label %52, label %58

52:                                               ; preds = %44
  %53 = load %struct.lexbuf*, %struct.lexbuf** %3, align 8
  %54 = call i8* @parse_declaration(%struct.lexbuf* %53)
  %55 = bitcast i8* %54 to %struct.TYPE_3__*
  %56 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 0
  store %struct.TYPE_3__* %55, %struct.TYPE_3__** %57, align 8
  store %struct.TYPE_3__* %55, %struct.TYPE_3__** %5, align 8
  br label %58

58:                                               ; preds = %52, %44, %38, %30
  br label %26

59:                                               ; preds = %26
  %60 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  store %struct.TYPE_3__* %60, %struct.TYPE_3__** %2, align 8
  br label %61

61:                                               ; preds = %59, %21
  %62 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  ret %struct.TYPE_3__* %62
}

declare dso_local i32 @white(%struct.lexbuf*) #1

declare dso_local i8* @parse_declaration(%struct.lexbuf*) #1

declare dso_local i64 @accept(%struct.lexbuf*, i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
