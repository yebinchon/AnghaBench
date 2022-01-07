; ModuleID = '/home/carl/AnghaBench/rofi/source/dialogs/extr_run.c_get_apps_external.c'
source_filename = "/home/carl/AnghaBench/rofi/source/dialogs/extr_run.c_get_apps_external.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@config = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@.str = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.1 = private unnamed_addr constant [49 x i8] c"Failed to close stdout off executor script: '%s'\00", align 1
@errno = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8** (i8**, i32*, i32)* @get_apps_external to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8** @get_apps_external(i8** %0, i32* %1, i32 %2) #0 {
  %4 = alloca i8**, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i8** %0, i8*** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %13 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @config, i32 0, i32 0), align 4
  %14 = call i32 @execute_generator(i32 %13)
  store i32 %14, i32* %7, align 4
  %15 = load i32, i32* %7, align 4
  %16 = icmp sge i32 %15, 0
  br i1 %16, label %17, label %107

17:                                               ; preds = %3
  %18 = load i32, i32* %7, align 4
  %19 = call i32* @fdopen(i32 %18, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i32* %19, i32** %8, align 8
  %20 = load i32*, i32** %8, align 8
  %21 = icmp ne i32* %20, null
  br i1 %21, label %22, label %106

22:                                               ; preds = %17
  store i8* null, i8** %9, align 8
  store i64 0, i64* %10, align 8
  br label %23

23:                                               ; preds = %72, %71, %22
  %24 = load i32*, i32** %8, align 8
  %25 = call i64 @getline(i8** %9, i64* %10, i32* %24)
  %26 = icmp sgt i64 %25, 0
  br i1 %26, label %27, label %91

27:                                               ; preds = %23
  store i32 0, i32* %11, align 4
  %28 = load i8*, i8** %9, align 8
  %29 = load i8*, i8** %9, align 8
  %30 = call i32 @strlen(i8* %29)
  %31 = sub nsw i32 %30, 1
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i8, i8* %28, i64 %32
  %34 = load i8, i8* %33, align 1
  %35 = sext i8 %34 to i32
  %36 = icmp eq i32 %35, 10
  br i1 %36, label %37, label %44

37:                                               ; preds = %27
  %38 = load i8*, i8** %9, align 8
  %39 = load i8*, i8** %9, align 8
  %40 = call i32 @strlen(i8* %39)
  %41 = sub nsw i32 %40, 1
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i8, i8* %38, i64 %42
  store i8 0, i8* %43, align 1
  br label %44

44:                                               ; preds = %37, %27
  store i32 0, i32* %12, align 4
  br label %45

45:                                               ; preds = %65, %44
  %46 = load i32, i32* %11, align 4
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %52

48:                                               ; preds = %45
  %49 = load i32, i32* %12, align 4
  %50 = load i32, i32* %6, align 4
  %51 = icmp ult i32 %49, %50
  br label %52

52:                                               ; preds = %48, %45
  %53 = phi i1 [ false, %45 ], [ %51, %48 ]
  br i1 %53, label %54, label %68

54:                                               ; preds = %52
  %55 = load i8*, i8** %9, align 8
  %56 = load i8**, i8*** %4, align 8
  %57 = load i32, i32* %12, align 4
  %58 = zext i32 %57 to i64
  %59 = getelementptr inbounds i8*, i8** %56, i64 %58
  %60 = load i8*, i8** %59, align 8
  %61 = call i64 @strcasecmp(i8* %55, i8* %60)
  %62 = icmp eq i64 %61, 0
  br i1 %62, label %63, label %64

63:                                               ; preds = %54
  store i32 1, i32* %11, align 4
  br label %64

64:                                               ; preds = %63, %54
  br label %65

65:                                               ; preds = %64
  %66 = load i32, i32* %12, align 4
  %67 = add i32 %66, 1
  store i32 %67, i32* %12, align 4
  br label %45

68:                                               ; preds = %52
  %69 = load i32, i32* %11, align 4
  %70 = icmp eq i32 %69, 1
  br i1 %70, label %71, label %72

71:                                               ; preds = %68
  br label %23

72:                                               ; preds = %68
  %73 = load i8**, i8*** %4, align 8
  %74 = load i32*, i32** %5, align 8
  %75 = load i32, i32* %74, align 4
  %76 = add i32 %75, 2
  %77 = zext i32 %76 to i64
  %78 = mul i64 %77, 8
  %79 = trunc i64 %78 to i32
  %80 = call i8** @g_realloc(i8** %73, i32 %79)
  store i8** %80, i8*** %4, align 8
  %81 = load i8*, i8** %9, align 8
  %82 = call i8* @g_strdup(i8* %81)
  %83 = load i8**, i8*** %4, align 8
  %84 = load i32*, i32** %5, align 8
  %85 = load i32, i32* %84, align 4
  %86 = zext i32 %85 to i64
  %87 = getelementptr inbounds i8*, i8** %83, i64 %86
  store i8* %82, i8** %87, align 8
  %88 = load i32*, i32** %5, align 8
  %89 = load i32, i32* %88, align 4
  %90 = add i32 %89, 1
  store i32 %90, i32* %88, align 4
  br label %23

91:                                               ; preds = %23
  %92 = load i8*, i8** %9, align 8
  %93 = icmp ne i8* %92, null
  br i1 %93, label %94, label %97

94:                                               ; preds = %91
  %95 = load i8*, i8** %9, align 8
  %96 = call i32 @free(i8* %95)
  br label %97

97:                                               ; preds = %94, %91
  %98 = load i32*, i32** %8, align 8
  %99 = call i64 @fclose(i32* %98)
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %105

101:                                              ; preds = %97
  %102 = load i32, i32* @errno, align 4
  %103 = call i32 @g_strerror(i32 %102)
  %104 = call i32 @g_warning(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.1, i64 0, i64 0), i32 %103)
  br label %105

105:                                              ; preds = %101, %97
  br label %106

106:                                              ; preds = %105, %17
  br label %107

107:                                              ; preds = %106, %3
  %108 = load i8**, i8*** %4, align 8
  %109 = load i32*, i32** %5, align 8
  %110 = load i32, i32* %109, align 4
  %111 = zext i32 %110 to i64
  %112 = getelementptr inbounds i8*, i8** %108, i64 %111
  store i8* null, i8** %112, align 8
  %113 = load i8**, i8*** %4, align 8
  ret i8** %113
}

declare dso_local i32 @execute_generator(i32) #1

declare dso_local i32* @fdopen(i32, i8*) #1

declare dso_local i64 @getline(i8**, i64*, i32*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i64 @strcasecmp(i8*, i8*) #1

declare dso_local i8** @g_realloc(i8**, i32) #1

declare dso_local i8* @g_strdup(i8*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i64 @fclose(i32*) #1

declare dso_local i32 @g_warning(i8*, i32) #1

declare dso_local i32 @g_strerror(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
