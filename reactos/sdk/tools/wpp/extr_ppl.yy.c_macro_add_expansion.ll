; ModuleID = '/home/carl/AnghaBench/reactos/sdk/tools/wpp/extr_ppl.yy.c_macro_add_expansion.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/tools/wpp/extr_ppl.yy.c_macro_add_expansion.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i8*, i32 }
%struct.TYPE_6__ = type { i8**, i32, i8*, i64, i64, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i64 }

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@pp_flex_debug = common dso_local global i64 0, align 8
@stderr = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [40 x i8] c"macro_add_expansion: %s:%d: %d -> '%s'\0A\00", align 1
@pp_status = common dso_local global %struct.TYPE_7__ zeroinitializer, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @macro_add_expansion to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @macro_add_expansion() #0 {
  %1 = alloca %struct.TYPE_6__*, align 8
  %2 = call %struct.TYPE_6__* (...) @top_macro()
  store %struct.TYPE_6__* %2, %struct.TYPE_6__** %1, align 8
  %3 = load %struct.TYPE_6__*, %struct.TYPE_6__** %1, align 8
  %4 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %3, i32 0, i32 5
  %5 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %6 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = icmp eq i64 %7, 0
  %9 = zext i1 %8 to i32
  %10 = call i32 @assert(i32 %9)
  %11 = load %struct.TYPE_6__*, %struct.TYPE_6__** %1, align 8
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 2
  %13 = load i8*, i8** %12, align 8
  %14 = icmp ne i8* %13, null
  br i1 %14, label %15, label %19

15:                                               ; preds = %0
  %16 = load %struct.TYPE_6__*, %struct.TYPE_6__** %1, align 8
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 2
  %18 = load i8*, i8** %17, align 8
  br label %20

19:                                               ; preds = %0
  br label %20

20:                                               ; preds = %19, %15
  %21 = phi i8* [ %18, %15 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), %19 ]
  %22 = call i8* @pp_xstrdup(i8* %21)
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** %1, align 8
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 0
  %25 = load i8**, i8*** %24, align 8
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** %1, align 8
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 8
  %29 = sub nsw i32 %28, 1
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i8*, i8** %25, i64 %30
  store i8* %22, i8** %31, align 8
  %32 = load %struct.TYPE_6__*, %struct.TYPE_6__** %1, align 8
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 2
  %34 = load i8*, i8** %33, align 8
  %35 = call i32 @free(i8* %34)
  %36 = load %struct.TYPE_6__*, %struct.TYPE_6__** %1, align 8
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 3
  store i64 0, i64* %37, align 8
  %38 = load %struct.TYPE_6__*, %struct.TYPE_6__** %1, align 8
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 4
  store i64 0, i64* %39, align 8
  %40 = load %struct.TYPE_6__*, %struct.TYPE_6__** %1, align 8
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 2
  store i8* null, i8** %41, align 8
  %42 = load i64, i64* @pp_flex_debug, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %78

44:                                               ; preds = %20
  %45 = load i32, i32* @stderr, align 4
  %46 = load i8*, i8** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @pp_status, i32 0, i32 0), align 8
  %47 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @pp_status, i32 0, i32 1), align 8
  %48 = load %struct.TYPE_6__*, %struct.TYPE_6__** %1, align 8
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 8
  %51 = sub nsw i32 %50, 1
  %52 = load %struct.TYPE_6__*, %struct.TYPE_6__** %1, align 8
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i32 0, i32 0
  %54 = load i8**, i8*** %53, align 8
  %55 = load %struct.TYPE_6__*, %struct.TYPE_6__** %1, align 8
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 8
  %58 = sub nsw i32 %57, 1
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i8*, i8** %54, i64 %59
  %61 = load i8*, i8** %60, align 8
  %62 = icmp ne i8* %61, null
  br i1 %62, label %63, label %74

63:                                               ; preds = %44
  %64 = load %struct.TYPE_6__*, %struct.TYPE_6__** %1, align 8
  %65 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %64, i32 0, i32 0
  %66 = load i8**, i8*** %65, align 8
  %67 = load %struct.TYPE_6__*, %struct.TYPE_6__** %1, align 8
  %68 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 8
  %70 = sub nsw i32 %69, 1
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds i8*, i8** %66, i64 %71
  %73 = load i8*, i8** %72, align 8
  br label %75

74:                                               ; preds = %44
  br label %75

75:                                               ; preds = %74, %63
  %76 = phi i8* [ %73, %63 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), %74 ]
  %77 = call i32 @fprintf(i32 %45, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0), i8* %46, i32 %47, i32 %51, i8* %76)
  br label %78

78:                                               ; preds = %75, %20
  ret void
}

declare dso_local %struct.TYPE_6__* @top_macro(...) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i8* @pp_xstrdup(i8*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @fprintf(i32, i8*, i8*, i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
