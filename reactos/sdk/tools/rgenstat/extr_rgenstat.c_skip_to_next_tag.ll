; ModuleID = '/home/carl/AnghaBench/reactos/sdk/tools/rgenstat/extr_rgenstat.c_skip_to_next_tag.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/tools/rgenstat/extr_rgenstat.c_skip_to_next_tag.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@tagname = common dso_local global i64* null, align 8
@file_pointer = common dso_local global i64 0, align 8
@file_size = common dso_local global i64 0, align 8
@file_buffer = common dso_local global i8* null, align 8
@TAG_UNKNOWN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @skip_to_next_tag to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @skip_to_next_tag() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 0, i32* %4, align 4
  %7 = load i64*, i64** @tagname, align 8
  %8 = getelementptr inbounds i64, i64* %7, i64 0
  store i64 0, i64* %8, align 8
  br label %9

9:                                                ; preds = %83, %0
  %10 = load i64, i64* @file_pointer, align 8
  %11 = load i64, i64* @file_size, align 8
  %12 = icmp ult i64 %10, %11
  br i1 %12, label %13, label %17

13:                                               ; preds = %9
  %14 = load i32, i32* %4, align 4
  %15 = icmp ne i32 %14, 0
  %16 = xor i1 %15, true
  br label %17

17:                                               ; preds = %13, %9
  %18 = phi i1 [ false, %9 ], [ %16, %13 ]
  br i1 %18, label %19, label %86

19:                                               ; preds = %17
  %20 = load i8*, i8** @file_buffer, align 8
  %21 = load i64, i64* @file_pointer, align 8
  %22 = getelementptr inbounds i8, i8* %20, i64 %21
  %23 = load i8, i8* %22, align 1
  %24 = sext i8 %23 to i32
  %25 = icmp eq i32 %24, 64
  br i1 %25, label %26, label %83

26:                                               ; preds = %19
  %27 = load i64, i64* @file_pointer, align 8
  %28 = add i64 %27, 1
  store i64 %28, i64* @file_pointer, align 8
  %29 = load i64, i64* @file_pointer, align 8
  %30 = trunc i64 %29 to i32
  store i32 %30, i32* %2, align 4
  store i32 0, i32* %3, align 4
  br label %31

31:                                               ; preds = %41, %26
  %32 = load i64, i64* @file_pointer, align 8
  %33 = load i64, i64* @file_size, align 8
  %34 = icmp ult i64 %32, %33
  br i1 %34, label %35, label %39

35:                                               ; preds = %31
  %36 = load i32, i32* %3, align 4
  %37 = icmp ne i32 %36, 0
  %38 = xor i1 %37, true
  br label %39

39:                                               ; preds = %35, %31
  %40 = phi i1 [ false, %31 ], [ %38, %35 ]
  br i1 %40, label %41, label %49

41:                                               ; preds = %39
  %42 = load i8*, i8** @file_buffer, align 8
  %43 = load i64, i64* @file_pointer, align 8
  %44 = getelementptr inbounds i8, i8* %42, i64 %43
  %45 = load i8, i8* %44, align 1
  %46 = call i32 @is_end_of_tag(i8 signext %45)
  store i32 %46, i32* %3, align 4
  %47 = load i64, i64* @file_pointer, align 8
  %48 = add i64 %47, 1
  store i64 %48, i64* @file_pointer, align 8
  br label %31

49:                                               ; preds = %39
  %50 = load i64, i64* @file_pointer, align 8
  %51 = load i32, i32* %2, align 4
  %52 = zext i32 %51 to i64
  %53 = icmp ugt i64 %50, %52
  br i1 %53, label %54, label %60

54:                                               ; preds = %49
  %55 = load i64, i64* @file_pointer, align 8
  %56 = load i32, i32* %2, align 4
  %57 = zext i32 %56 to i64
  %58 = sub i64 %55, %57
  %59 = sub i64 %58, 1
  br label %61

60:                                               ; preds = %49
  br label %61

61:                                               ; preds = %60, %54
  %62 = phi i64 [ %59, %54 ], [ 0, %60 ]
  %63 = trunc i64 %62 to i32
  store i32 %63, i32* %6, align 4
  %64 = load i64*, i64** @tagname, align 8
  %65 = load i8*, i8** @file_buffer, align 8
  %66 = load i32, i32* %2, align 4
  %67 = zext i32 %66 to i64
  %68 = getelementptr inbounds i8, i8* %65, i64 %67
  %69 = load i32, i32* %6, align 4
  %70 = call i32 @strncpy(i64* %64, i8* %68, i32 %69)
  %71 = load i64*, i64** @tagname, align 8
  %72 = load i32, i32* %6, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds i64, i64* %71, i64 %73
  store i64 0, i64* %74, align 8
  %75 = load i64*, i64** @tagname, align 8
  %76 = call i32 @get_tag_id(i64* %75)
  store i32 %76, i32* %5, align 4
  %77 = load i32, i32* %5, align 4
  %78 = load i32, i32* @TAG_UNKNOWN, align 4
  %79 = icmp ne i32 %77, %78
  br i1 %79, label %80, label %82

80:                                               ; preds = %61
  %81 = load i32, i32* %5, align 4
  store i32 %81, i32* %1, align 4
  br label %88

82:                                               ; preds = %61
  br label %83

83:                                               ; preds = %82, %19
  %84 = load i64, i64* @file_pointer, align 8
  %85 = add i64 %84, 1
  store i64 %85, i64* @file_pointer, align 8
  br label %9

86:                                               ; preds = %17
  %87 = load i32, i32* @TAG_UNKNOWN, align 4
  store i32 %87, i32* %1, align 4
  br label %88

88:                                               ; preds = %86, %80
  %89 = load i32, i32* %1, align 4
  ret i32 %89
}

declare dso_local i32 @is_end_of_tag(i8 signext) #1

declare dso_local i32 @strncpy(i64*, i8*, i32) #1

declare dso_local i32 @get_tag_id(i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
