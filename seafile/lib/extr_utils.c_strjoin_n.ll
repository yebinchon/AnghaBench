; ModuleID = '/home/carl/AnghaBench/seafile/lib/extr_utils.c_strjoin_n.c'
source_filename = "/home/carl/AnghaBench/seafile/lib/extr_utils.c_strjoin_n.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i8* }

@FALSE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @strjoin_n(i8* %0, i32 %1, i8** %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8**, align 8
  %8 = alloca %struct.TYPE_5__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8** %2, i8*** %7, align 8
  %11 = load i32, i32* %6, align 4
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %3
  store i8* null, i8** %4, align 8
  br label %45

14:                                               ; preds = %3
  %15 = load i8**, i8*** %7, align 8
  %16 = getelementptr inbounds i8*, i8** %15, i64 0
  %17 = load i8*, i8** %16, align 8
  %18 = call %struct.TYPE_5__* @g_string_new(i8* %17)
  store %struct.TYPE_5__* %18, %struct.TYPE_5__** %8, align 8
  store i32 1, i32* %9, align 4
  br label %19

19:                                               ; preds = %34, %14
  %20 = load i32, i32* %9, align 4
  %21 = load i32, i32* %6, align 4
  %22 = icmp slt i32 %20, %21
  br i1 %22, label %23, label %37

23:                                               ; preds = %19
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %25 = load i8*, i8** %5, align 8
  %26 = call i32 @g_string_append(%struct.TYPE_5__* %24, i8* %25)
  %27 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %28 = load i8**, i8*** %7, align 8
  %29 = load i32, i32* %9, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i8*, i8** %28, i64 %30
  %32 = load i8*, i8** %31, align 8
  %33 = call i32 @g_string_append(%struct.TYPE_5__* %27, i8* %32)
  br label %34

34:                                               ; preds = %23
  %35 = load i32, i32* %9, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %9, align 4
  br label %19

37:                                               ; preds = %19
  %38 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 0
  %40 = load i8*, i8** %39, align 8
  store i8* %40, i8** %10, align 8
  %41 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %42 = load i32, i32* @FALSE, align 4
  %43 = call i32 @g_string_free(%struct.TYPE_5__* %41, i32 %42)
  %44 = load i8*, i8** %10, align 8
  store i8* %44, i8** %4, align 8
  br label %45

45:                                               ; preds = %37, %13
  %46 = load i8*, i8** %4, align 8
  ret i8* %46
}

declare dso_local %struct.TYPE_5__* @g_string_new(i8*) #1

declare dso_local i32 @g_string_append(%struct.TYPE_5__*, i8*) #1

declare dso_local i32 @g_string_free(%struct.TYPE_5__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
