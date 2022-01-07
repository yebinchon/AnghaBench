; ModuleID = '/home/carl/AnghaBench/rofi/source/dialogs/extr_combi.c_combi_get_completion.c'
source_filename = "/home/carl/AnghaBench/rofi/source/dialogs/extr_combi.c_combi_get_completion.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32*, i32*, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }

@.str = private unnamed_addr constant [7 x i8] c"!%s %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i32*, i32)* @combi_get_completion to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @combi_get_completion(i32* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_5__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load i32*, i32** %4, align 8
  %11 = call %struct.TYPE_5__* @mode_get_private_data(i32* %10)
  store %struct.TYPE_5__* %11, %struct.TYPE_5__** %6, align 8
  store i32 0, i32* %7, align 4
  br label %12

12:                                               ; preds = %80, %2
  %13 = load i32, i32* %7, align 4
  %14 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = icmp ult i32 %13, %16
  br i1 %17, label %18, label %83

18:                                               ; preds = %12
  %19 = load i32, i32* %5, align 4
  %20 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 1
  %22 = load i32*, i32** %21, align 8
  %23 = load i32, i32* %7, align 4
  %24 = zext i32 %23 to i64
  %25 = getelementptr inbounds i32, i32* %22, i64 %24
  %26 = load i32, i32* %25, align 4
  %27 = icmp uge i32 %19, %26
  br i1 %27, label %28, label %79

28:                                               ; preds = %18
  %29 = load i32, i32* %5, align 4
  %30 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 1
  %32 = load i32*, i32** %31, align 8
  %33 = load i32, i32* %7, align 4
  %34 = zext i32 %33 to i64
  %35 = getelementptr inbounds i32, i32* %32, i64 %34
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 2
  %39 = load i32*, i32** %38, align 8
  %40 = load i32, i32* %7, align 4
  %41 = zext i32 %40 to i64
  %42 = getelementptr inbounds i32, i32* %39, i64 %41
  %43 = load i32, i32* %42, align 4
  %44 = add i32 %36, %43
  %45 = icmp ult i32 %29, %44
  br i1 %45, label %46, label %79

46:                                               ; preds = %28
  %47 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i32 0, i32 3
  %49 = load %struct.TYPE_4__*, %struct.TYPE_4__** %48, align 8
  %50 = load i32, i32* %7, align 4
  %51 = zext i32 %50 to i64
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i64 %51
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* %5, align 4
  %56 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %57 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %56, i32 0, i32 1
  %58 = load i32*, i32** %57, align 8
  %59 = load i32, i32* %7, align 4
  %60 = zext i32 %59 to i64
  %61 = getelementptr inbounds i32, i32* %58, i64 %60
  %62 = load i32, i32* %61, align 4
  %63 = sub i32 %55, %62
  %64 = call i8* @mode_get_completion(i32 %54, i32 %63)
  store i8* %64, i8** %8, align 8
  %65 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %66 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %65, i32 0, i32 3
  %67 = load %struct.TYPE_4__*, %struct.TYPE_4__** %66, align 8
  %68 = load i32, i32* %7, align 4
  %69 = zext i32 %68 to i64
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i64 %69
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @mode_get_name(i32 %72)
  %74 = load i8*, i8** %8, align 8
  %75 = call i8* @g_strdup_printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 %73, i8* %74)
  store i8* %75, i8** %9, align 8
  %76 = load i8*, i8** %8, align 8
  %77 = call i32 @g_free(i8* %76)
  %78 = load i8*, i8** %9, align 8
  store i8* %78, i8** %3, align 8
  br label %85

79:                                               ; preds = %28, %18
  br label %80

80:                                               ; preds = %79
  %81 = load i32, i32* %7, align 4
  %82 = add i32 %81, 1
  store i32 %82, i32* %7, align 4
  br label %12

83:                                               ; preds = %12
  %84 = call i32 (...) @g_assert_not_reached()
  store i8* null, i8** %3, align 8
  br label %85

85:                                               ; preds = %83, %46
  %86 = load i8*, i8** %3, align 8
  ret i8* %86
}

declare dso_local %struct.TYPE_5__* @mode_get_private_data(i32*) #1

declare dso_local i8* @mode_get_completion(i32, i32) #1

declare dso_local i8* @g_strdup_printf(i8*, i32, i8*) #1

declare dso_local i32 @mode_get_name(i32) #1

declare dso_local i32 @g_free(i8*) #1

declare dso_local i32 @g_assert_not_reached(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
