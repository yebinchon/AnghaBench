; ModuleID = '/home/carl/AnghaBench/vlc/src/misc/extr_fourcc.c_Lookup.c'
source_filename = "/home/carl/AnghaBench/vlc/src/misc/extr_fourcc.c_Lookup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fourcc_mapping = type { i8*, i32 }
%struct.fourcc_desc = type { i8*, i32 }

@fourcc_cmp = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8**, %struct.fourcc_mapping*, i64, %struct.fourcc_desc*, i64)* @Lookup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @Lookup(i32 %0, i8** noalias %1, %struct.fourcc_mapping* %2, i64 %3, %struct.fourcc_desc* %4, i64 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8**, align 8
  %10 = alloca %struct.fourcc_mapping*, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.fourcc_desc*, align 8
  %13 = alloca i64, align 8
  %14 = alloca %struct.fourcc_mapping*, align 8
  %15 = alloca %struct.fourcc_desc*, align 8
  store i32 %0, i32* %8, align 4
  store i8** %1, i8*** %9, align 8
  store %struct.fourcc_mapping* %2, %struct.fourcc_mapping** %10, align 8
  store i64 %3, i64* %11, align 8
  store %struct.fourcc_desc* %4, %struct.fourcc_desc** %12, align 8
  store i64 %5, i64* %13, align 8
  %16 = load %struct.fourcc_mapping*, %struct.fourcc_mapping** %10, align 8
  %17 = load i64, i64* %11, align 8
  %18 = load i32, i32* @fourcc_cmp, align 4
  %19 = call %struct.fourcc_mapping* @bsearch(i32* %8, %struct.fourcc_mapping* %16, i64 %17, i32 16, i32 %18)
  store %struct.fourcc_mapping* %19, %struct.fourcc_mapping** %14, align 8
  %20 = load %struct.fourcc_mapping*, %struct.fourcc_mapping** %14, align 8
  %21 = icmp ne %struct.fourcc_mapping* %20, null
  br i1 %21, label %22, label %47

22:                                               ; preds = %6
  %23 = load i8**, i8*** %9, align 8
  %24 = icmp ne i8** %23, null
  br i1 %24, label %25, label %43

25:                                               ; preds = %22
  %26 = load %struct.fourcc_desc*, %struct.fourcc_desc** %12, align 8
  %27 = bitcast %struct.fourcc_desc* %26 to %struct.fourcc_mapping*
  %28 = load i64, i64* %13, align 8
  %29 = load i32, i32* @fourcc_cmp, align 4
  %30 = call %struct.fourcc_mapping* @bsearch(i32* %8, %struct.fourcc_mapping* %27, i64 %28, i32 16, i32 %29)
  %31 = bitcast %struct.fourcc_mapping* %30 to %struct.fourcc_desc*
  store %struct.fourcc_desc* %31, %struct.fourcc_desc** %15, align 8
  %32 = load %struct.fourcc_desc*, %struct.fourcc_desc** %15, align 8
  %33 = icmp ne %struct.fourcc_desc* %32, null
  br i1 %33, label %34, label %42

34:                                               ; preds = %25
  %35 = load %struct.fourcc_desc*, %struct.fourcc_desc** %15, align 8
  %36 = getelementptr inbounds %struct.fourcc_desc, %struct.fourcc_desc* %35, i32 0, i32 0
  %37 = load i8*, i8** %36, align 8
  %38 = load i8**, i8*** %9, align 8
  store i8* %37, i8** %38, align 8
  %39 = load %struct.fourcc_mapping*, %struct.fourcc_mapping** %14, align 8
  %40 = getelementptr inbounds %struct.fourcc_mapping, %struct.fourcc_mapping* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 8
  store i32 %41, i32* %7, align 4
  br label %67

42:                                               ; preds = %25
  br label %43

43:                                               ; preds = %42, %22
  %44 = load %struct.fourcc_mapping*, %struct.fourcc_mapping** %14, align 8
  %45 = getelementptr inbounds %struct.fourcc_mapping, %struct.fourcc_mapping* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 8
  store i32 %46, i32* %8, align 4
  br label %47

47:                                               ; preds = %43, %6
  %48 = load %struct.fourcc_desc*, %struct.fourcc_desc** %12, align 8
  %49 = bitcast %struct.fourcc_desc* %48 to %struct.fourcc_mapping*
  %50 = load i64, i64* %13, align 8
  %51 = load i32, i32* @fourcc_cmp, align 4
  %52 = call %struct.fourcc_mapping* @bsearch(i32* %8, %struct.fourcc_mapping* %49, i64 %50, i32 16, i32 %51)
  %53 = bitcast %struct.fourcc_mapping* %52 to %struct.fourcc_desc*
  store %struct.fourcc_desc* %53, %struct.fourcc_desc** %15, align 8
  %54 = load %struct.fourcc_desc*, %struct.fourcc_desc** %15, align 8
  %55 = icmp eq %struct.fourcc_desc* %54, null
  br i1 %55, label %56, label %57

56:                                               ; preds = %47
  store i32 0, i32* %7, align 4
  br label %67

57:                                               ; preds = %47
  %58 = load i8**, i8*** %9, align 8
  %59 = icmp ne i8** %58, null
  br i1 %59, label %60, label %65

60:                                               ; preds = %57
  %61 = load %struct.fourcc_desc*, %struct.fourcc_desc** %15, align 8
  %62 = getelementptr inbounds %struct.fourcc_desc, %struct.fourcc_desc* %61, i32 0, i32 0
  %63 = load i8*, i8** %62, align 8
  %64 = load i8**, i8*** %9, align 8
  store i8* %63, i8** %64, align 8
  br label %65

65:                                               ; preds = %60, %57
  %66 = load i32, i32* %8, align 4
  store i32 %66, i32* %7, align 4
  br label %67

67:                                               ; preds = %65, %56, %34
  %68 = load i32, i32* %7, align 4
  ret i32 %68
}

declare dso_local %struct.fourcc_mapping* @bsearch(i32*, %struct.fourcc_mapping*, i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
