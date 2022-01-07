; ModuleID = '/home/carl/AnghaBench/rufus/src/extr_stdfn.c_StrArrayAdd.c'
source_filename = "/home/carl/AnghaBench/rufus/src/extr_stdfn.c_StrArrayAdd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i8**, i64, i64 }

@.str = private unnamed_addr constant [35 x i8] c"Could not reallocate string array\0A\00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"Could not store string in array\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @StrArrayAdd(%struct.TYPE_3__* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_3__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8**, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %9 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %10 = icmp eq %struct.TYPE_3__* %9, null
  br i1 %10, label %19, label %11

11:                                               ; preds = %3
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %14 = load i8**, i8*** %13, align 8
  %15 = icmp eq i8** %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %11
  %17 = load i8*, i8** %6, align 8
  %18 = icmp eq i8* %17, null
  br i1 %18, label %19, label %20

19:                                               ; preds = %16, %11, %3
  store i32 -1, i32* %4, align 4
  br label %91

20:                                               ; preds = %16
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 2
  %26 = load i64, i64* %25, align 8
  %27 = icmp eq i64 %23, %26
  br i1 %27, label %28, label %57

28:                                               ; preds = %20
  %29 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 2
  %31 = load i64, i64* %30, align 8
  %32 = mul i64 %31, 2
  store i64 %32, i64* %30, align 8
  %33 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 0
  %35 = load i8**, i8*** %34, align 8
  store i8** %35, i8*** %8, align 8
  %36 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 0
  %38 = load i8**, i8*** %37, align 8
  %39 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 2
  %41 = load i64, i64* %40, align 8
  %42 = mul i64 %41, 8
  %43 = trunc i64 %42 to i32
  %44 = call i64 @realloc(i8** %38, i32 %43)
  %45 = inttoptr i64 %44 to i8**
  %46 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 0
  store i8** %45, i8*** %47, align 8
  %48 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 0
  %50 = load i8**, i8*** %49, align 8
  %51 = icmp eq i8** %50, null
  br i1 %51, label %52, label %56

52:                                               ; preds = %28
  %53 = load i8**, i8*** %8, align 8
  %54 = call i32 @free(i8** %53)
  %55 = call i32 @uprintf(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %4, align 4
  br label %91

56:                                               ; preds = %28
  br label %57

57:                                               ; preds = %56, %20
  %58 = load i64, i64* %7, align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %63

60:                                               ; preds = %57
  %61 = load i8*, i8** %6, align 8
  %62 = call i8* @safe_strdup(i8* %61)
  br label %65

63:                                               ; preds = %57
  %64 = load i8*, i8** %6, align 8
  br label %65

65:                                               ; preds = %63, %60
  %66 = phi i8* [ %62, %60 ], [ %64, %63 ]
  %67 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %68 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %67, i32 0, i32 0
  %69 = load i8**, i8*** %68, align 8
  %70 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %71 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %70, i32 0, i32 1
  %72 = load i64, i64* %71, align 8
  %73 = getelementptr inbounds i8*, i8** %69, i64 %72
  store i8* %66, i8** %73, align 8
  %74 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %75 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %74, i32 0, i32 0
  %76 = load i8**, i8*** %75, align 8
  %77 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %78 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %77, i32 0, i32 1
  %79 = load i64, i64* %78, align 8
  %80 = getelementptr inbounds i8*, i8** %76, i64 %79
  %81 = load i8*, i8** %80, align 8
  %82 = icmp eq i8* %81, null
  br i1 %82, label %83, label %85

83:                                               ; preds = %65
  %84 = call i32 @uprintf(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  store i32 -1, i32* %4, align 4
  br label %91

85:                                               ; preds = %65
  %86 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %87 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %86, i32 0, i32 1
  %88 = load i64, i64* %87, align 8
  %89 = add i64 %88, 1
  store i64 %89, i64* %87, align 8
  %90 = trunc i64 %88 to i32
  store i32 %90, i32* %4, align 4
  br label %91

91:                                               ; preds = %85, %83, %52, %19
  %92 = load i32, i32* %4, align 4
  ret i32 %92
}

declare dso_local i64 @realloc(i8**, i32) #1

declare dso_local i32 @free(i8**) #1

declare dso_local i32 @uprintf(i8*) #1

declare dso_local i8* @safe_strdup(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
