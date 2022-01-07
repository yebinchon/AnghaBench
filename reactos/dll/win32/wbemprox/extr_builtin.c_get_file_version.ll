; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/wbemprox/extr_builtin.c_get_file_version.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/wbemprox/extr_builtin.c_get_file_version.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32 }

@get_file_version.slashW = internal constant [2 x i8] c"\\\00", align 1
@get_file_version.fmtW = internal constant [12 x i8] c"%u.%u.%u.%u\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*)* @get_file_version to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @get_file_version(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca %struct.TYPE_2__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  %8 = call i32 @ARRAY_SIZE(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @get_file_version.fmtW, i64 0, i64 0))
  %9 = add nsw i32 20, %8
  %10 = sext i32 %9 to i64
  %11 = mul i64 %10, 1
  %12 = trunc i64 %11 to i32
  %13 = call i8* @heap_alloc(i32 %12)
  store i8* %13, i8** %7, align 8
  %14 = icmp ne i8* %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %1
  store i8* null, i8** %2, align 8
  br label %65

16:                                               ; preds = %1
  %17 = load i8*, i8** %3, align 8
  %18 = call i32 @GetFileVersionInfoSizeW(i8* %17, i32* null)
  store i32 %18, i32* %5, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %24

20:                                               ; preds = %16
  %21 = load i32, i32* %5, align 4
  %22 = call i8* @heap_alloc(i32 %21)
  store i8* %22, i8** %6, align 8
  %23 = icmp ne i8* %22, null
  br i1 %23, label %27, label %24

24:                                               ; preds = %20, %16
  %25 = load i8*, i8** %7, align 8
  %26 = call i32 @heap_free(i8* %25)
  store i8* null, i8** %2, align 8
  br label %65

27:                                               ; preds = %20
  %28 = load i8*, i8** %3, align 8
  %29 = load i32, i32* %5, align 4
  %30 = load i8*, i8** %6, align 8
  %31 = call i32 @GetFileVersionInfoW(i8* %28, i32 0, i32 %29, i8* %30)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %38

33:                                               ; preds = %27
  %34 = load i8*, i8** %6, align 8
  %35 = bitcast %struct.TYPE_2__** %4 to i8**
  %36 = call i32 @VerQueryValueW(i8* %34, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @get_file_version.slashW, i64 0, i64 0), i8** %35, i32* %5)
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %43, label %38

38:                                               ; preds = %33, %27
  %39 = load i8*, i8** %6, align 8
  %40 = call i32 @heap_free(i8* %39)
  %41 = load i8*, i8** %7, align 8
  %42 = call i32 @heap_free(i8* %41)
  store i8* null, i8** %2, align 8
  br label %65

43:                                               ; preds = %33
  %44 = load i8*, i8** %7, align 8
  %45 = load %struct.TYPE_2__*, %struct.TYPE_2__** %4, align 8
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = ashr i32 %47, 16
  %49 = load %struct.TYPE_2__*, %struct.TYPE_2__** %4, align 8
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = and i32 %51, 65535
  %53 = load %struct.TYPE_2__*, %struct.TYPE_2__** %4, align 8
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = ashr i32 %55, 16
  %57 = load %struct.TYPE_2__*, %struct.TYPE_2__** %4, align 8
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = and i32 %59, 65535
  %61 = call i32 @sprintfW(i8* %44, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @get_file_version.fmtW, i64 0, i64 0), i32 %48, i32 %52, i32 %56, i32 %60)
  %62 = load i8*, i8** %6, align 8
  %63 = call i32 @heap_free(i8* %62)
  %64 = load i8*, i8** %7, align 8
  store i8* %64, i8** %2, align 8
  br label %65

65:                                               ; preds = %43, %38, %24, %15
  %66 = load i8*, i8** %2, align 8
  ret i8* %66
}

declare dso_local i8* @heap_alloc(i32) #1

declare dso_local i32 @ARRAY_SIZE(i8*) #1

declare dso_local i32 @GetFileVersionInfoSizeW(i8*, i32*) #1

declare dso_local i32 @heap_free(i8*) #1

declare dso_local i32 @GetFileVersionInfoW(i8*, i32, i32, i8*) #1

declare dso_local i32 @VerQueryValueW(i8*, i8*, i8**, i32*) #1

declare dso_local i32 @sprintfW(i8*, i8*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
