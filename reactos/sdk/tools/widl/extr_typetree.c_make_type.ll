; ModuleID = '/home/carl/AnghaBench/reactos/sdk/tools/widl/extr_typetree.c_make_type.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/tools/widl/extr_typetree.c_make_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i32, i32, i8*, i8*, i8*, i8*, i8*, i8*, i64, i64, i32, i32*, i32*, i32*, i32*, i32* }

@parse_only = common dso_local global i64 0, align 8
@FALSE = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_4__* @make_type(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_4__*, align 8
  store i32 %0, i32* %2, align 4
  %4 = call %struct.TYPE_4__* (...) @alloc_type()
  store %struct.TYPE_4__* %4, %struct.TYPE_4__** %3, align 8
  %5 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %6 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i32 0, i32 17
  store i32* null, i32** %6, align 8
  %7 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 16
  store i32* null, i32** %8, align 8
  %9 = load i32, i32* %2, align 4
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  store i32 %9, i32* %11, align 8
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 15
  store i32* null, i32** %13, align 8
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 14
  store i32* null, i32** %15, align 8
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 13
  store i32* null, i32** %17, align 8
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 12
  %20 = call i32 @memset(i32* %19, i32 0, i32 4)
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 11
  store i64 0, i64* %22, align 8
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 10
  store i64 0, i64* %24, align 8
  %25 = load i64, i64* @parse_only, align 8
  %26 = icmp ne i64 %25, 0
  %27 = zext i1 %26 to i32
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 1
  store i32 %27, i32* %29, align 4
  %30 = load i8*, i8** @FALSE, align 8
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 9
  store i8* %30, i8** %32, align 8
  %33 = load i8*, i8** @FALSE, align 8
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 8
  store i8* %33, i8** %35, align 8
  %36 = load i8*, i8** @FALSE, align 8
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 7
  store i8* %36, i8** %38, align 8
  %39 = load i8*, i8** @FALSE, align 8
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 6
  store i8* %39, i8** %41, align 8
  %42 = load i8*, i8** @FALSE, align 8
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 5
  store i8* %42, i8** %44, align 8
  %45 = load i8*, i8** @FALSE, align 8
  %46 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 4
  store i8* %45, i8** %47, align 8
  %48 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 2
  store i32 -1, i32* %49, align 8
  %50 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 3
  %52 = call i32 @init_loc_info(i32* %51)
  %53 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  ret %struct.TYPE_4__* %53
}

declare dso_local %struct.TYPE_4__* @alloc_type(...) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @init_loc_info(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
