; ModuleID = '/home/carl/AnghaBench/reactos/sdk/tools/widl/extr_parser.yy.c_parse_uuid.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/tools/widl/extr_parser.yy.c_parse_uuid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i8**, i8*, i8*, i8* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_4__* @parse_uuid(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.TYPE_4__*, align 8
  %4 = alloca [3 x i8], align 1
  store i8* %0, i8** %2, align 8
  %5 = call %struct.TYPE_4__* @xmalloc(i32 32)
  store %struct.TYPE_4__* %5, %struct.TYPE_4__** %3, align 8
  %6 = load i8*, i8** %2, align 8
  %7 = call i8* @strtoul(i8* %6, i32* null, i32 16)
  %8 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 3
  store i8* %7, i8** %9, align 8
  %10 = load i8*, i8** %2, align 8
  %11 = getelementptr inbounds i8, i8* %10, i64 9
  %12 = call i8* @strtoul(i8* %11, i32* null, i32 16)
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 2
  store i8* %12, i8** %14, align 8
  %15 = load i8*, i8** %2, align 8
  %16 = getelementptr inbounds i8, i8* %15, i64 14
  %17 = call i8* @strtoul(i8* %16, i32* null, i32 16)
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 1
  store i8* %17, i8** %19, align 8
  %20 = getelementptr inbounds [3 x i8], [3 x i8]* %4, i64 0, i64 2
  store i8 0, i8* %20, align 1
  %21 = getelementptr inbounds [3 x i8], [3 x i8]* %4, i64 0, i64 0
  %22 = load i8*, i8** %2, align 8
  %23 = getelementptr inbounds i8, i8* %22, i64 19
  %24 = call i32 @memcpy(i8* %21, i8* %23, i32 2)
  %25 = getelementptr inbounds [3 x i8], [3 x i8]* %4, i64 0, i64 0
  %26 = call i8* @strtoul(i8* %25, i32* null, i32 16)
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = load i8**, i8*** %28, align 8
  %30 = getelementptr inbounds i8*, i8** %29, i64 0
  store i8* %26, i8** %30, align 8
  %31 = getelementptr inbounds [3 x i8], [3 x i8]* %4, i64 0, i64 0
  %32 = load i8*, i8** %2, align 8
  %33 = getelementptr inbounds i8, i8* %32, i64 21
  %34 = call i32 @memcpy(i8* %31, i8* %33, i32 2)
  %35 = getelementptr inbounds [3 x i8], [3 x i8]* %4, i64 0, i64 0
  %36 = call i8* @strtoul(i8* %35, i32* null, i32 16)
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 0
  %39 = load i8**, i8*** %38, align 8
  %40 = getelementptr inbounds i8*, i8** %39, i64 1
  store i8* %36, i8** %40, align 8
  %41 = getelementptr inbounds [3 x i8], [3 x i8]* %4, i64 0, i64 0
  %42 = load i8*, i8** %2, align 8
  %43 = getelementptr inbounds i8, i8* %42, i64 24
  %44 = call i32 @memcpy(i8* %41, i8* %43, i32 2)
  %45 = getelementptr inbounds [3 x i8], [3 x i8]* %4, i64 0, i64 0
  %46 = call i8* @strtoul(i8* %45, i32* null, i32 16)
  %47 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 0
  %49 = load i8**, i8*** %48, align 8
  %50 = getelementptr inbounds i8*, i8** %49, i64 2
  store i8* %46, i8** %50, align 8
  %51 = getelementptr inbounds [3 x i8], [3 x i8]* %4, i64 0, i64 0
  %52 = load i8*, i8** %2, align 8
  %53 = getelementptr inbounds i8, i8* %52, i64 26
  %54 = call i32 @memcpy(i8* %51, i8* %53, i32 2)
  %55 = getelementptr inbounds [3 x i8], [3 x i8]* %4, i64 0, i64 0
  %56 = call i8* @strtoul(i8* %55, i32* null, i32 16)
  %57 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 0
  %59 = load i8**, i8*** %58, align 8
  %60 = getelementptr inbounds i8*, i8** %59, i64 3
  store i8* %56, i8** %60, align 8
  %61 = getelementptr inbounds [3 x i8], [3 x i8]* %4, i64 0, i64 0
  %62 = load i8*, i8** %2, align 8
  %63 = getelementptr inbounds i8, i8* %62, i64 28
  %64 = call i32 @memcpy(i8* %61, i8* %63, i32 2)
  %65 = getelementptr inbounds [3 x i8], [3 x i8]* %4, i64 0, i64 0
  %66 = call i8* @strtoul(i8* %65, i32* null, i32 16)
  %67 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 0
  %69 = load i8**, i8*** %68, align 8
  %70 = getelementptr inbounds i8*, i8** %69, i64 4
  store i8* %66, i8** %70, align 8
  %71 = getelementptr inbounds [3 x i8], [3 x i8]* %4, i64 0, i64 0
  %72 = load i8*, i8** %2, align 8
  %73 = getelementptr inbounds i8, i8* %72, i64 30
  %74 = call i32 @memcpy(i8* %71, i8* %73, i32 2)
  %75 = getelementptr inbounds [3 x i8], [3 x i8]* %4, i64 0, i64 0
  %76 = call i8* @strtoul(i8* %75, i32* null, i32 16)
  %77 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %77, i32 0, i32 0
  %79 = load i8**, i8*** %78, align 8
  %80 = getelementptr inbounds i8*, i8** %79, i64 5
  store i8* %76, i8** %80, align 8
  %81 = getelementptr inbounds [3 x i8], [3 x i8]* %4, i64 0, i64 0
  %82 = load i8*, i8** %2, align 8
  %83 = getelementptr inbounds i8, i8* %82, i64 32
  %84 = call i32 @memcpy(i8* %81, i8* %83, i32 2)
  %85 = getelementptr inbounds [3 x i8], [3 x i8]* %4, i64 0, i64 0
  %86 = call i8* @strtoul(i8* %85, i32* null, i32 16)
  %87 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %88 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %87, i32 0, i32 0
  %89 = load i8**, i8*** %88, align 8
  %90 = getelementptr inbounds i8*, i8** %89, i64 6
  store i8* %86, i8** %90, align 8
  %91 = getelementptr inbounds [3 x i8], [3 x i8]* %4, i64 0, i64 0
  %92 = load i8*, i8** %2, align 8
  %93 = getelementptr inbounds i8, i8* %92, i64 34
  %94 = call i32 @memcpy(i8* %91, i8* %93, i32 2)
  %95 = getelementptr inbounds [3 x i8], [3 x i8]* %4, i64 0, i64 0
  %96 = call i8* @strtoul(i8* %95, i32* null, i32 16)
  %97 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %98 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %97, i32 0, i32 0
  %99 = load i8**, i8*** %98, align 8
  %100 = getelementptr inbounds i8*, i8** %99, i64 7
  store i8* %96, i8** %100, align 8
  %101 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  ret %struct.TYPE_4__* %101
}

declare dso_local %struct.TYPE_4__* @xmalloc(i32) #1

declare dso_local i8* @strtoul(i8*, i32*, i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
