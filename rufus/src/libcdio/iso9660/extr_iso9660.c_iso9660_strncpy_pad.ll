; ModuleID = '/home/carl/AnghaBench/rufus/src/libcdio/iso9660/extr_iso9660.c_iso9660_strncpy_pad.c'
source_filename = "/home/carl/AnghaBench/rufus/src/libcdio/iso9660/extr_iso9660.c_iso9660_strncpy_pad.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [45 x i8] c"string '%s' fails 7bit constraint (pos = %d)\00", align 1
@.str.1 = private unnamed_addr constant [52 x i8] c"string '%s' fails a-character constraint (pos = %d)\00", align 1
@.str.2 = private unnamed_addr constant [52 x i8] c"string '%s' fails d-character constraint (pos = %d)\00", align 1
@.str.3 = private unnamed_addr constant [50 x i8] c"string '%s' is getting truncated to %d characters\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @iso9660_strncpy_pad(i8* %0, i8* %1, i64 %2, i32 %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  store i32 %3, i32* %8, align 4
  %11 = load i8*, i8** %5, align 8
  %12 = icmp ne i8* %11, null
  %13 = zext i1 %12 to i32
  %14 = call i32 @cdio_assert(i32 %13)
  %15 = load i8*, i8** %6, align 8
  %16 = icmp ne i8* %15, null
  %17 = zext i1 %16 to i32
  %18 = call i32 @cdio_assert(i32 %17)
  %19 = load i64, i64* %7, align 8
  %20 = icmp ugt i64 %19, 0
  %21 = zext i1 %20 to i32
  %22 = call i32 @cdio_assert(i32 %21)
  %23 = load i32, i32* %8, align 4
  switch i32 %23, label %100 [
    i32 128, label %24
    i32 131, label %25
    i32 130, label %50
    i32 129, label %75
  ]

24:                                               ; preds = %4
  br label %102

25:                                               ; preds = %4
  store i32 0, i32* %10, align 4
  br label %26

26:                                               ; preds = %46, %25
  %27 = load i8*, i8** %6, align 8
  %28 = load i32, i32* %10, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i8, i8* %27, i64 %29
  %31 = load i8, i8* %30, align 1
  %32 = icmp ne i8 %31, 0
  br i1 %32, label %33, label %49

33:                                               ; preds = %26
  %34 = load i8*, i8** %6, align 8
  %35 = load i32, i32* %10, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i8, i8* %34, i64 %36
  %38 = load i8, i8* %37, align 1
  %39 = sext i8 %38 to i32
  %40 = icmp slt i32 %39, 0
  br i1 %40, label %41, label %45

41:                                               ; preds = %33
  %42 = load i8*, i8** %6, align 8
  %43 = load i32, i32* %10, align 4
  %44 = call i32 @cdio_warn(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i8* %42, i32 %43)
  br label %49

45:                                               ; preds = %33
  br label %46

46:                                               ; preds = %45
  %47 = load i32, i32* %10, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %10, align 4
  br label %26

49:                                               ; preds = %41, %26
  br label %102

50:                                               ; preds = %4
  store i32 0, i32* %10, align 4
  br label %51

51:                                               ; preds = %71, %50
  %52 = load i8*, i8** %6, align 8
  %53 = load i32, i32* %10, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i8, i8* %52, i64 %54
  %56 = load i8, i8* %55, align 1
  %57 = icmp ne i8 %56, 0
  br i1 %57, label %58, label %74

58:                                               ; preds = %51
  %59 = load i8*, i8** %6, align 8
  %60 = load i32, i32* %10, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i8, i8* %59, i64 %61
  %63 = load i8, i8* %62, align 1
  %64 = call i32 @iso9660_is_achar(i8 signext %63)
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %70, label %66

66:                                               ; preds = %58
  %67 = load i8*, i8** %6, align 8
  %68 = load i32, i32* %10, align 4
  %69 = call i32 @cdio_warn(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.1, i64 0, i64 0), i8* %67, i32 %68)
  br label %74

70:                                               ; preds = %58
  br label %71

71:                                               ; preds = %70
  %72 = load i32, i32* %10, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %10, align 4
  br label %51

74:                                               ; preds = %66, %51
  br label %102

75:                                               ; preds = %4
  store i32 0, i32* %10, align 4
  br label %76

76:                                               ; preds = %96, %75
  %77 = load i8*, i8** %6, align 8
  %78 = load i32, i32* %10, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds i8, i8* %77, i64 %79
  %81 = load i8, i8* %80, align 1
  %82 = icmp ne i8 %81, 0
  br i1 %82, label %83, label %99

83:                                               ; preds = %76
  %84 = load i8*, i8** %6, align 8
  %85 = load i32, i32* %10, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds i8, i8* %84, i64 %86
  %88 = load i8, i8* %87, align 1
  %89 = call i32 @iso9660_is_dchar(i8 signext %88)
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %95, label %91

91:                                               ; preds = %83
  %92 = load i8*, i8** %6, align 8
  %93 = load i32, i32* %10, align 4
  %94 = call i32 @cdio_warn(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.2, i64 0, i64 0), i8* %92, i32 %93)
  br label %99

95:                                               ; preds = %83
  br label %96

96:                                               ; preds = %95
  %97 = load i32, i32* %10, align 4
  %98 = add nsw i32 %97, 1
  store i32 %98, i32* %10, align 4
  br label %76

99:                                               ; preds = %91, %76
  br label %102

100:                                              ; preds = %4
  %101 = call i32 (...) @cdio_assert_not_reached()
  br label %102

102:                                              ; preds = %100, %99, %74, %49, %24
  %103 = load i8*, i8** %6, align 8
  %104 = call i64 @strlen(i8* %103)
  store i64 %104, i64* %9, align 8
  %105 = load i64, i64* %9, align 8
  %106 = load i64, i64* %7, align 8
  %107 = icmp ugt i64 %105, %106
  br i1 %107, label %108, label %113

108:                                              ; preds = %102
  %109 = load i8*, i8** %6, align 8
  %110 = load i64, i64* %7, align 8
  %111 = trunc i64 %110 to i32
  %112 = call i32 @cdio_warn(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.3, i64 0, i64 0), i8* %109, i32 %111)
  br label %113

113:                                              ; preds = %108, %102
  %114 = load i8*, i8** %5, align 8
  %115 = load i8*, i8** %6, align 8
  %116 = load i64, i64* %7, align 8
  %117 = call i32 @strncpy(i8* %114, i8* %115, i64 %116)
  %118 = load i64, i64* %9, align 8
  %119 = load i64, i64* %7, align 8
  %120 = icmp ult i64 %118, %119
  br i1 %120, label %121, label %129

121:                                              ; preds = %113
  %122 = load i8*, i8** %5, align 8
  %123 = load i64, i64* %9, align 8
  %124 = getelementptr inbounds i8, i8* %122, i64 %123
  %125 = load i64, i64* %7, align 8
  %126 = load i64, i64* %9, align 8
  %127 = sub i64 %125, %126
  %128 = call i32 @memset(i8* %124, i8 signext 32, i64 %127)
  br label %129

129:                                              ; preds = %121, %113
  %130 = load i8*, i8** %5, align 8
  ret i8* %130
}

declare dso_local i32 @cdio_assert(i32) #1

declare dso_local i32 @cdio_warn(i8*, i8*, i32) #1

declare dso_local i32 @iso9660_is_achar(i8 signext) #1

declare dso_local i32 @iso9660_is_dchar(i8 signext) #1

declare dso_local i32 @cdio_assert_not_reached(...) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @strncpy(i8*, i8*, i64) #1

declare dso_local i32 @memset(i8*, i8 signext, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
