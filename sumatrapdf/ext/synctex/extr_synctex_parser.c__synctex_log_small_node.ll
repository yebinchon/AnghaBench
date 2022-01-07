; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/synctex/extr_synctex_parser.c__synctex_log_small_node.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/synctex/extr_synctex_parser.c__synctex_log_small_node.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [16 x i8] c"%s:%i,%i:%i,%i\0A\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"SELF:%p\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c" SYNCTEX_PARENT:%p\00", align 1
@.str.3 = private unnamed_addr constant [18 x i8] c" SYNCTEX_CHILD:%p\00", align 1
@.str.4 = private unnamed_addr constant [20 x i8] c" SYNCTEX_SIBLING:%p\00", align 1
@.str.5 = private unnamed_addr constant [20 x i8] c" SYNCTEX_FRIEND:%p\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @_synctex_log_small_node(i64 %0) #0 {
  %2 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  %3 = load i64, i64* %2, align 8
  %4 = call i8* @synctex_node_isa(i64 %3)
  %5 = load i64, i64* %2, align 8
  %6 = call i32 @SYNCTEX_TAG(i64 %5)
  %7 = load i64, i64* %2, align 8
  %8 = call i32 @SYNCTEX_LINE(i64 %7)
  %9 = load i64, i64* %2, align 8
  %10 = call i32 @SYNCTEX_HORIZ(i64 %9)
  %11 = load i64, i64* %2, align 8
  %12 = call i32 @SYNCTEX_VERT(i64 %11)
  %13 = call i32 (i8*, i8*, ...) @printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i8* %4, i32 %6, i32 %8, i32 %10, i32 %12)
  %14 = load i64, i64* %2, align 8
  %15 = inttoptr i64 %14 to i8*
  %16 = call i32 (i8*, i8*, ...) @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i8* %15)
  %17 = load i64, i64* %2, align 8
  %18 = call i64 @SYNCTEX_PARENT(i64 %17)
  %19 = inttoptr i64 %18 to i8*
  %20 = call i32 (i8*, i8*, ...) @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0), i8* %19)
  %21 = load i64, i64* %2, align 8
  %22 = call i64 @SYNCTEX_CHILD(i64 %21)
  %23 = inttoptr i64 %22 to i8*
  %24 = call i32 (i8*, i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0), i8* %23)
  %25 = load i64, i64* %2, align 8
  %26 = call i64 @SYNCTEX_SIBLING(i64 %25)
  %27 = inttoptr i64 %26 to i8*
  %28 = call i32 (i8*, i8*, ...) @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i64 0, i64 0), i8* %27)
  %29 = load i64, i64* %2, align 8
  %30 = call i64 @SYNCTEX_FRIEND(i64 %29)
  %31 = inttoptr i64 %30 to i8*
  %32 = call i32 (i8*, i8*, ...) @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.5, i64 0, i64 0), i8* %31)
  ret void
}

declare dso_local i32 @printf(i8*, i8*, ...) #1

declare dso_local i8* @synctex_node_isa(i64) #1

declare dso_local i32 @SYNCTEX_TAG(i64) #1

declare dso_local i32 @SYNCTEX_LINE(i64) #1

declare dso_local i32 @SYNCTEX_HORIZ(i64) #1

declare dso_local i32 @SYNCTEX_VERT(i64) #1

declare dso_local i64 @SYNCTEX_PARENT(i64) #1

declare dso_local i64 @SYNCTEX_CHILD(i64) #1

declare dso_local i64 @SYNCTEX_SIBLING(i64) #1

declare dso_local i64 @SYNCTEX_FRIEND(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
