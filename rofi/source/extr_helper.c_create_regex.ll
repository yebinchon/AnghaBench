; ModuleID = '/home/carl/AnghaBench/rofi/source/extr_helper.c_create_regex.c'
source_filename = "/home/carl/AnghaBench/rofi/source/extr_helper.c_create_regex.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i8, i32 }
%struct.TYPE_5__ = type { i32, i32* }

@config = common dso_local global %struct.TYPE_6__ zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_5__* (i8*, i32)* @create_regex to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_5__* @create_regex(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.TYPE_5__*, align 8
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32* null, i32** %5, align 8
  %8 = call %struct.TYPE_5__* @g_malloc0(i32 16)
  store %struct.TYPE_5__* %8, %struct.TYPE_5__** %7, align 8
  %9 = load i8*, i8** %3, align 8
  %10 = icmp ne i8* %9, null
  br i1 %10, label %11, label %24

11:                                               ; preds = %2
  %12 = load i8*, i8** %3, align 8
  %13 = getelementptr inbounds i8, i8* %12, i64 0
  %14 = load i8, i8* %13, align 1
  %15 = sext i8 %14 to i32
  %16 = load i8, i8* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @config, i32 0, i32 0), align 4
  %17 = sext i8 %16 to i32
  %18 = icmp eq i32 %15, %17
  br i1 %18, label %19, label %24

19:                                               ; preds = %11
  %20 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 0
  store i32 1, i32* %21, align 8
  %22 = load i8*, i8** %3, align 8
  %23 = getelementptr inbounds i8, i8* %22, i32 1
  store i8* %23, i8** %3, align 8
  br label %24

24:                                               ; preds = %19, %11, %2
  %25 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @config, i32 0, i32 1), align 4
  switch i32 %25, label %57 [
    i32 129, label %26
    i32 128, label %34
    i32 130, label %49
  ]

26:                                               ; preds = %24
  %27 = load i8*, i8** %3, align 8
  %28 = call i8* @glob_to_regex(i8* %27)
  store i8* %28, i8** %6, align 8
  %29 = load i8*, i8** %6, align 8
  %30 = load i32, i32* %4, align 4
  %31 = call i32* @R(i8* %29, i32 %30)
  store i32* %31, i32** %5, align 8
  %32 = load i8*, i8** %6, align 8
  %33 = call i32 @g_free(i8* %32)
  br label %65

34:                                               ; preds = %24
  %35 = load i8*, i8** %3, align 8
  %36 = load i32, i32* %4, align 4
  %37 = call i32* @R(i8* %35, i32 %36)
  store i32* %37, i32** %5, align 8
  %38 = load i32*, i32** %5, align 8
  %39 = icmp eq i32* %38, null
  br i1 %39, label %40, label %48

40:                                               ; preds = %34
  %41 = load i8*, i8** %3, align 8
  %42 = call i8* @g_regex_escape_string(i8* %41, i32 -1)
  store i8* %42, i8** %6, align 8
  %43 = load i8*, i8** %6, align 8
  %44 = load i32, i32* %4, align 4
  %45 = call i32* @R(i8* %43, i32 %44)
  store i32* %45, i32** %5, align 8
  %46 = load i8*, i8** %6, align 8
  %47 = call i32 @g_free(i8* %46)
  br label %48

48:                                               ; preds = %40, %34
  br label %65

49:                                               ; preds = %24
  %50 = load i8*, i8** %3, align 8
  %51 = call i8* @fuzzy_to_regex(i8* %50)
  store i8* %51, i8** %6, align 8
  %52 = load i8*, i8** %6, align 8
  %53 = load i32, i32* %4, align 4
  %54 = call i32* @R(i8* %52, i32 %53)
  store i32* %54, i32** %5, align 8
  %55 = load i8*, i8** %6, align 8
  %56 = call i32 @g_free(i8* %55)
  br label %65

57:                                               ; preds = %24
  %58 = load i8*, i8** %3, align 8
  %59 = call i8* @g_regex_escape_string(i8* %58, i32 -1)
  store i8* %59, i8** %6, align 8
  %60 = load i8*, i8** %6, align 8
  %61 = load i32, i32* %4, align 4
  %62 = call i32* @R(i8* %60, i32 %61)
  store i32* %62, i32** %5, align 8
  %63 = load i8*, i8** %6, align 8
  %64 = call i32 @g_free(i8* %63)
  br label %65

65:                                               ; preds = %57, %49, %48, %26
  %66 = load i32*, i32** %5, align 8
  %67 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %68 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %67, i32 0, i32 1
  store i32* %66, i32** %68, align 8
  %69 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  ret %struct.TYPE_5__* %69
}

declare dso_local %struct.TYPE_5__* @g_malloc0(i32) #1

declare dso_local i8* @glob_to_regex(i8*) #1

declare dso_local i32* @R(i8*, i32) #1

declare dso_local i32 @g_free(i8*) #1

declare dso_local i8* @g_regex_escape_string(i8*, i32) #1

declare dso_local i8* @fuzzy_to_regex(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
