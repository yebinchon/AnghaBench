; ModuleID = '/home/carl/AnghaBench/zfs/lib/libnvpair/extr_libnvpair.c_nvaprint_nvlist_array.c'
source_filename = "/home/carl/AnghaBench/zfs/lib/libnvpair/extr_libnvpair.c_nvaprint_nvlist_array.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64, i32, i32* }

@.str = private unnamed_addr constant [34 x i8] c"%s = (array of embedded nvlists)\0A\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"(start %s[%d])\0A\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"(end %s[%d])\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_5__*, i8*, i32*, i8*, i32**, i32)* @nvaprint_nvlist_array to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nvaprint_nvlist_array(%struct.TYPE_5__* %0, i8* %1, i32* %2, i8* %3, i32** %4, i32 %5) #0 {
  %7 = alloca %struct.TYPE_5__*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32**, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %7, align 8
  store i8* %1, i8** %8, align 8
  store i32* %2, i32** %9, align 8
  store i8* %3, i8** %10, align 8
  store i32** %4, i32*** %11, align 8
  store i32 %5, i32* %12, align 4
  %15 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 2
  %17 = load i32*, i32** %16, align 8
  store i32* %17, i32** %13, align 8
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %19 = call i32 @indent(%struct.TYPE_5__* %18, i32 1)
  %20 = load i32*, i32** %13, align 8
  %21 = load i8*, i8** %10, align 8
  %22 = call i32 (i32*, i8*, i8*, ...) @fprintf(i32* %20, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i8* %21)
  store i32 0, i32* %14, align 4
  br label %23

23:                                               ; preds = %65, %6
  %24 = load i32, i32* %14, align 4
  %25 = load i32, i32* %12, align 4
  %26 = icmp slt i32 %24, %25
  br i1 %26, label %27, label %68

27:                                               ; preds = %23
  %28 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %29 = call i32 @indent(%struct.TYPE_5__* %28, i32 1)
  %30 = load i32*, i32** %13, align 8
  %31 = load i8*, i8** %10, align 8
  %32 = load i32, i32* %14, align 4
  %33 = call i32 (i32*, i8*, i8*, ...) @fprintf(i32* %30, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i8* %31, i32 %32)
  %34 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 8
  %40 = sext i32 %39 to i64
  %41 = add nsw i64 %40, %36
  %42 = trunc i64 %41 to i32
  store i32 %42, i32* %38, align 8
  %43 = load i32**, i32*** %11, align 8
  %44 = load i32, i32* %14, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i32*, i32** %43, i64 %45
  %47 = load i32*, i32** %46, align 8
  %48 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %49 = call i32 @nvlist_print_with_indent(i32* %47, %struct.TYPE_5__* %48)
  %50 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 8
  %56 = sext i32 %55 to i64
  %57 = sub nsw i64 %56, %52
  %58 = trunc i64 %57 to i32
  store i32 %58, i32* %54, align 8
  %59 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %60 = call i32 @indent(%struct.TYPE_5__* %59, i32 1)
  %61 = load i32*, i32** %13, align 8
  %62 = load i8*, i8** %10, align 8
  %63 = load i32, i32* %14, align 4
  %64 = call i32 (i32*, i8*, i8*, ...) @fprintf(i32* %61, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0), i8* %62, i32 %63)
  br label %65

65:                                               ; preds = %27
  %66 = load i32, i32* %14, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %14, align 4
  br label %23

68:                                               ; preds = %23
  ret i32 1
}

declare dso_local i32 @indent(%struct.TYPE_5__*, i32) #1

declare dso_local i32 @fprintf(i32*, i8*, i8*, ...) #1

declare dso_local i32 @nvlist_print_with_indent(i32*, %struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
