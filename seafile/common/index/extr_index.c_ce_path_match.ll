; ModuleID = '/home/carl/AnghaBench/seafile/common/index/extr_index.c_ce_path_match.c'
source_filename = "/home/carl/AnghaBench/seafile/common/index/extr_index.c_ce_path_match.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cache_entry = type { i8* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ce_path_match(%struct.cache_entry* %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.cache_entry*, align 8
  %5 = alloca i8**, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.cache_entry* %0, %struct.cache_entry** %4, align 8
  store i8** %1, i8*** %5, align 8
  %10 = load i8**, i8*** %5, align 8
  %11 = icmp ne i8** %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %2
  store i32 1, i32* %3, align 4
  br label %73

13:                                               ; preds = %2
  %14 = load %struct.cache_entry*, %struct.cache_entry** %4, align 8
  %15 = call i32 @ce_namelen(%struct.cache_entry* %14)
  store i32 %15, i32* %8, align 4
  %16 = load %struct.cache_entry*, %struct.cache_entry** %4, align 8
  %17 = getelementptr inbounds %struct.cache_entry, %struct.cache_entry* %16, i32 0, i32 0
  %18 = load i8*, i8** %17, align 8
  store i8* %18, i8** %7, align 8
  br label %19

19:                                               ; preds = %71, %37, %30, %13
  %20 = load i8**, i8*** %5, align 8
  %21 = getelementptr inbounds i8*, i8** %20, i32 1
  store i8** %21, i8*** %5, align 8
  %22 = load i8*, i8** %20, align 8
  store i8* %22, i8** %6, align 8
  %23 = icmp ne i8* %22, null
  br i1 %23, label %24, label %72

24:                                               ; preds = %19
  %25 = load i8*, i8** %6, align 8
  %26 = call i32 @strlen(i8* %25)
  store i32 %26, i32* %9, align 4
  %27 = load i32, i32* %9, align 4
  %28 = load i32, i32* %8, align 4
  %29 = icmp sgt i32 %27, %28
  br i1 %29, label %30, label %31

30:                                               ; preds = %24
  br label %19

31:                                               ; preds = %24
  %32 = load i8*, i8** %7, align 8
  %33 = load i8*, i8** %6, align 8
  %34 = load i32, i32* %9, align 4
  %35 = call i64 @memcmp(i8* %32, i8* %33, i32 %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %31
  br label %19

38:                                               ; preds = %31
  %39 = load i32, i32* %9, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %51

41:                                               ; preds = %38
  %42 = load i8*, i8** %7, align 8
  %43 = load i32, i32* %9, align 4
  %44 = sub nsw i32 %43, 1
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i8, i8* %42, i64 %45
  %47 = load i8, i8* %46, align 1
  %48 = sext i8 %47 to i32
  %49 = icmp eq i32 %48, 47
  br i1 %49, label %50, label %51

50:                                               ; preds = %41
  store i32 1, i32* %3, align 4
  br label %73

51:                                               ; preds = %41, %38
  %52 = load i8*, i8** %7, align 8
  %53 = load i32, i32* %9, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i8, i8* %52, i64 %54
  %56 = load i8, i8* %55, align 1
  %57 = sext i8 %56 to i32
  %58 = icmp eq i32 %57, 47
  br i1 %58, label %66, label %59

59:                                               ; preds = %51
  %60 = load i8*, i8** %7, align 8
  %61 = load i32, i32* %9, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i8, i8* %60, i64 %62
  %64 = load i8, i8* %63, align 1
  %65 = icmp ne i8 %64, 0
  br i1 %65, label %67, label %66

66:                                               ; preds = %59, %51
  store i32 1, i32* %3, align 4
  br label %73

67:                                               ; preds = %59
  %68 = load i32, i32* %9, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %71, label %70

70:                                               ; preds = %67
  store i32 1, i32* %3, align 4
  br label %73

71:                                               ; preds = %67
  br label %19

72:                                               ; preds = %19
  store i32 0, i32* %3, align 4
  br label %73

73:                                               ; preds = %72, %70, %66, %50, %12
  %74 = load i32, i32* %3, align 4
  ret i32 %74
}

declare dso_local i32 @ce_namelen(%struct.cache_entry*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i64 @memcmp(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
