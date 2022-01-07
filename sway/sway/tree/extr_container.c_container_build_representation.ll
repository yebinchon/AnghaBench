; ModuleID = '/home/carl/AnghaBench/sway/sway/tree/extr_container.c_container_build_representation.c'
source_filename = "/home/carl/AnghaBench/sway/sway/tree/extr_container.c_container_build_representation.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, %struct.sway_container** }
%struct.sway_container = type { i8*, i64 }

@.str = private unnamed_addr constant [3 x i8] c"V[\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"H[\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"T[\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"S[\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"D[\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"(null)\00", align 1
@.str.7 = private unnamed_addr constant [2 x i8] c"]\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @container_build_representation(i32 %0, %struct.TYPE_3__* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_3__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.sway_container*, align 8
  %10 = alloca i8*, align 8
  store i32 %0, i32* %4, align 4
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %5, align 8
  store i8* %2, i8** %6, align 8
  store i64 2, i64* %7, align 8
  %11 = load i32, i32* %4, align 4
  switch i32 %11, label %27 [
    i32 128, label %12
    i32 132, label %15
    i32 129, label %18
    i32 130, label %21
    i32 131, label %24
  ]

12:                                               ; preds = %3
  %13 = load i8*, i8** %6, align 8
  %14 = call i32 @lenient_strcat(i8* %13, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  br label %27

15:                                               ; preds = %3
  %16 = load i8*, i8** %6, align 8
  %17 = call i32 @lenient_strcat(i8* %16, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  br label %27

18:                                               ; preds = %3
  %19 = load i8*, i8** %6, align 8
  %20 = call i32 @lenient_strcat(i8* %19, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  br label %27

21:                                               ; preds = %3
  %22 = load i8*, i8** %6, align 8
  %23 = call i32 @lenient_strcat(i8* %22, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0))
  br label %27

24:                                               ; preds = %3
  %25 = load i8*, i8** %6, align 8
  %26 = call i32 @lenient_strcat(i8* %25, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0))
  br label %27

27:                                               ; preds = %3, %24, %21, %18, %15, %12
  store i32 0, i32* %8, align 4
  br label %28

28:                                               ; preds = %88, %27
  %29 = load i32, i32* %8, align 4
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = icmp slt i32 %29, %32
  br i1 %33, label %34, label %91

34:                                               ; preds = %28
  %35 = load i32, i32* %8, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %42

37:                                               ; preds = %34
  %38 = load i64, i64* %7, align 8
  %39 = add i64 %38, 1
  store i64 %39, i64* %7, align 8
  %40 = load i8*, i8** %6, align 8
  %41 = call i32 @lenient_strcat(i8* %40, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0))
  br label %42

42:                                               ; preds = %37, %34
  %43 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 1
  %45 = load %struct.sway_container**, %struct.sway_container*** %44, align 8
  %46 = load i32, i32* %8, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds %struct.sway_container*, %struct.sway_container** %45, i64 %47
  %49 = load %struct.sway_container*, %struct.sway_container** %48, align 8
  store %struct.sway_container* %49, %struct.sway_container** %9, align 8
  store i8* null, i8** %10, align 8
  %50 = load %struct.sway_container*, %struct.sway_container** %9, align 8
  %51 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %67

54:                                               ; preds = %42
  %55 = load %struct.sway_container*, %struct.sway_container** %9, align 8
  %56 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %55, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
  %58 = call i8* @view_get_class(i64 %57)
  store i8* %58, i8** %10, align 8
  %59 = load i8*, i8** %10, align 8
  %60 = icmp ne i8* %59, null
  br i1 %60, label %66, label %61

61:                                               ; preds = %54
  %62 = load %struct.sway_container*, %struct.sway_container** %9, align 8
  %63 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %62, i32 0, i32 1
  %64 = load i64, i64* %63, align 8
  %65 = call i8* @view_get_app_id(i64 %64)
  store i8* %65, i8** %10, align 8
  br label %66

66:                                               ; preds = %61, %54
  br label %71

67:                                               ; preds = %42
  %68 = load %struct.sway_container*, %struct.sway_container** %9, align 8
  %69 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %68, i32 0, i32 0
  %70 = load i8*, i8** %69, align 8
  store i8* %70, i8** %10, align 8
  br label %71

71:                                               ; preds = %67, %66
  %72 = load i8*, i8** %10, align 8
  %73 = icmp ne i8* %72, null
  br i1 %73, label %74, label %82

74:                                               ; preds = %71
  %75 = load i8*, i8** %10, align 8
  %76 = call i64 @strlen(i8* %75)
  %77 = load i64, i64* %7, align 8
  %78 = add i64 %77, %76
  store i64 %78, i64* %7, align 8
  %79 = load i8*, i8** %6, align 8
  %80 = load i8*, i8** %10, align 8
  %81 = call i32 @lenient_strcat(i8* %79, i8* %80)
  br label %87

82:                                               ; preds = %71
  %83 = load i64, i64* %7, align 8
  %84 = add i64 %83, 6
  store i64 %84, i64* %7, align 8
  %85 = load i8*, i8** %6, align 8
  %86 = call i32 @lenient_strcat(i8* %85, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0))
  br label %87

87:                                               ; preds = %82, %74
  br label %88

88:                                               ; preds = %87
  %89 = load i32, i32* %8, align 4
  %90 = add nsw i32 %89, 1
  store i32 %90, i32* %8, align 4
  br label %28

91:                                               ; preds = %28
  %92 = load i64, i64* %7, align 8
  %93 = add i64 %92, 1
  store i64 %93, i64* %7, align 8
  %94 = load i8*, i8** %6, align 8
  %95 = call i32 @lenient_strcat(i8* %94, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0))
  %96 = load i64, i64* %7, align 8
  ret i64 %96
}

declare dso_local i32 @lenient_strcat(i8*, i8*) #1

declare dso_local i8* @view_get_class(i64) #1

declare dso_local i8* @view_get_app_id(i64) #1

declare dso_local i64 @strlen(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
