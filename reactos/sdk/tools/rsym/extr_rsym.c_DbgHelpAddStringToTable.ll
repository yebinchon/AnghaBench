; ModuleID = '/home/carl/AnghaBench/reactos/sdk/tools/rsym/extr_rsym.c_DbgHelpAddStringToTable.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/tools/rsym/extr_rsym.c_DbgHelpAddStringToTable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.DbgHelpStringTab = type { i32, i8***, i32 }

@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"realloc failed!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.DbgHelpStringTab*, i8*)* @DbgHelpAddStringToTable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @DbgHelpAddStringToTable(%struct.DbgHelpStringTab* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.DbgHelpStringTab*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8**, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8**, align 8
  store %struct.DbgHelpStringTab* %0, %struct.DbgHelpStringTab** %4, align 8
  store i8* %1, i8** %5, align 8
  %10 = load i8*, i8** %5, align 8
  %11 = call i32 @ComputeDJBHash(i8* %10)
  %12 = load %struct.DbgHelpStringTab*, %struct.DbgHelpStringTab** %4, align 8
  %13 = getelementptr inbounds %struct.DbgHelpStringTab, %struct.DbgHelpStringTab* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = urem i32 %11, %14
  store i32 %15, i32* %6, align 4
  %16 = load %struct.DbgHelpStringTab*, %struct.DbgHelpStringTab** %4, align 8
  %17 = getelementptr inbounds %struct.DbgHelpStringTab, %struct.DbgHelpStringTab* %16, i32 0, i32 1
  %18 = load i8***, i8**** %17, align 8
  %19 = load i32, i32* %6, align 4
  %20 = zext i32 %19 to i64
  %21 = getelementptr inbounds i8**, i8*** %18, i64 %20
  %22 = load i8**, i8*** %21, align 8
  store i8** %22, i8*** %7, align 8
  %23 = load i8**, i8*** %7, align 8
  %24 = icmp ne i8** %23, null
  br i1 %24, label %25, label %63

25:                                               ; preds = %2
  store i32 0, i32* %8, align 4
  br label %26

26:                                               ; preds = %45, %25
  %27 = load i8**, i8*** %7, align 8
  %28 = load i32, i32* %8, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i8*, i8** %27, i64 %29
  %31 = load i8*, i8** %30, align 8
  %32 = icmp ne i8* %31, null
  br i1 %32, label %33, label %42

33:                                               ; preds = %26
  %34 = load i8**, i8*** %7, align 8
  %35 = load i32, i32* %8, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i8*, i8** %34, i64 %36
  %38 = load i8*, i8** %37, align 8
  %39 = load i8*, i8** %5, align 8
  %40 = call i64 @strcmp(i8* %38, i8* %39)
  %41 = icmp ne i64 %40, 0
  br label %42

42:                                               ; preds = %33, %26
  %43 = phi i1 [ false, %26 ], [ %41, %33 ]
  br i1 %43, label %44, label %48

44:                                               ; preds = %42
  br label %45

45:                                               ; preds = %44
  %46 = load i32, i32* %8, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %8, align 4
  br label %26

48:                                               ; preds = %42
  %49 = load i8**, i8*** %7, align 8
  %50 = load i32, i32* %8, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i8*, i8** %49, i64 %51
  %53 = load i8*, i8** %52, align 8
  %54 = icmp ne i8* %53, null
  br i1 %54, label %55, label %62

55:                                               ; preds = %48
  %56 = load i8*, i8** %5, align 8
  %57 = call i32 @free(i8* %56)
  %58 = load i32, i32* %8, align 4
  %59 = shl i32 %58, 10
  %60 = load i32, i32* %6, align 4
  %61 = or i32 %59, %60
  store i32 %61, i32* %3, align 4
  br label %126

62:                                               ; preds = %48
  br label %64

63:                                               ; preds = %2
  store i32 0, i32* %8, align 4
  br label %64

64:                                               ; preds = %63, %62
  %65 = load i8*, i8** %5, align 8
  %66 = call i64 @strlen(i8* %65)
  %67 = add nsw i64 %66, 1
  %68 = load %struct.DbgHelpStringTab*, %struct.DbgHelpStringTab** %4, align 8
  %69 = getelementptr inbounds %struct.DbgHelpStringTab, %struct.DbgHelpStringTab* %68, i32 0, i32 2
  %70 = load i32, i32* %69, align 8
  %71 = sext i32 %70 to i64
  %72 = add nsw i64 %71, %67
  %73 = trunc i64 %72 to i32
  store i32 %73, i32* %69, align 8
  %74 = load %struct.DbgHelpStringTab*, %struct.DbgHelpStringTab** %4, align 8
  %75 = getelementptr inbounds %struct.DbgHelpStringTab, %struct.DbgHelpStringTab* %74, i32 0, i32 1
  %76 = load i8***, i8**** %75, align 8
  %77 = load i32, i32* %6, align 4
  %78 = zext i32 %77 to i64
  %79 = getelementptr inbounds i8**, i8*** %76, i64 %78
  %80 = load i8**, i8*** %79, align 8
  %81 = load i32, i32* %8, align 4
  %82 = add nsw i32 %81, 2
  %83 = sext i32 %82 to i64
  %84 = mul i64 %83, 8
  %85 = trunc i64 %84 to i32
  %86 = call i8** @realloc(i8** %80, i32 %85)
  store i8** %86, i8*** %9, align 8
  %87 = load i8**, i8*** %9, align 8
  %88 = icmp ne i8** %87, null
  br i1 %88, label %92, label %89

89:                                               ; preds = %64
  %90 = load i32, i32* @stderr, align 4
  %91 = call i32 @fprintf(i32 %90, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  br label %126

92:                                               ; preds = %64
  %93 = load i8**, i8*** %9, align 8
  %94 = load %struct.DbgHelpStringTab*, %struct.DbgHelpStringTab** %4, align 8
  %95 = getelementptr inbounds %struct.DbgHelpStringTab, %struct.DbgHelpStringTab* %94, i32 0, i32 1
  %96 = load i8***, i8**** %95, align 8
  %97 = load i32, i32* %6, align 4
  %98 = zext i32 %97 to i64
  %99 = getelementptr inbounds i8**, i8*** %96, i64 %98
  store i8** %93, i8*** %99, align 8
  %100 = load %struct.DbgHelpStringTab*, %struct.DbgHelpStringTab** %4, align 8
  %101 = getelementptr inbounds %struct.DbgHelpStringTab, %struct.DbgHelpStringTab* %100, i32 0, i32 1
  %102 = load i8***, i8**** %101, align 8
  %103 = load i32, i32* %6, align 4
  %104 = zext i32 %103 to i64
  %105 = getelementptr inbounds i8**, i8*** %102, i64 %104
  %106 = load i8**, i8*** %105, align 8
  %107 = load i32, i32* %8, align 4
  %108 = add nsw i32 %107, 1
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds i8*, i8** %106, i64 %109
  store i8* null, i8** %110, align 8
  %111 = load i8*, i8** %5, align 8
  %112 = load %struct.DbgHelpStringTab*, %struct.DbgHelpStringTab** %4, align 8
  %113 = getelementptr inbounds %struct.DbgHelpStringTab, %struct.DbgHelpStringTab* %112, i32 0, i32 1
  %114 = load i8***, i8**** %113, align 8
  %115 = load i32, i32* %6, align 4
  %116 = zext i32 %115 to i64
  %117 = getelementptr inbounds i8**, i8*** %114, i64 %116
  %118 = load i8**, i8*** %117, align 8
  %119 = load i32, i32* %8, align 4
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds i8*, i8** %118, i64 %120
  store i8* %111, i8** %121, align 8
  %122 = load i32, i32* %8, align 4
  %123 = shl i32 %122, 10
  %124 = load i32, i32* %6, align 4
  %125 = or i32 %123, %124
  store i32 %125, i32* %3, align 4
  br label %126

126:                                              ; preds = %92, %89, %55
  %127 = load i32, i32* %3, align 4
  ret i32 %127
}

declare dso_local i32 @ComputeDJBHash(i8*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i8** @realloc(i8**, i32) #1

declare dso_local i32 @fprintf(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
