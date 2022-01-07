; ModuleID = '/home/carl/AnghaBench/streem/src/extr_string.c_str_new.c'
source_filename = "/home/carl/AnghaBench/streem/src/extr_string.c_str_new.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.strm_string = type { i8*, i32 }

@STRM_TAG_STRING_I = common dso_local global i32 0, align 4
@STRM_TAG_STRING_6 = common dso_local global i32 0, align 4
@STRM_TAG_STRING_F = common dso_local global i32 0, align 4
@STRM_TAG_STRING_O = common dso_local global i32 0, align 4
@STRM_VAL_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32, i32)* @str_new to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @str_new(i8* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca %struct.strm_string*, align 8
  %11 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %12 = load i8*, i8** %4, align 8
  %13 = icmp ne i8* %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %3
  br label %59

15:                                               ; preds = %3
  %16 = load i32, i32* %5, align 4
  %17 = icmp slt i32 %16, 6
  br i1 %17, label %18, label %31

18:                                               ; preds = %15
  %19 = load i32, i32* @STRM_TAG_STRING_I, align 4
  store i32 %19, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %20 = load i32, i32* %8, align 4
  %21 = call i8* @VAL_PTR(i32 %20)
  %22 = getelementptr inbounds i8, i8* %21, i64 1
  store i8* %22, i8** %9, align 8
  %23 = load i8*, i8** %9, align 8
  %24 = load i8*, i8** %4, align 8
  %25 = load i32, i32* %5, align 4
  %26 = call i32 @memcpy(i8* %23, i8* %24, i32 %25)
  %27 = load i32, i32* %5, align 4
  %28 = trunc i32 %27 to i8
  %29 = load i8*, i8** %9, align 8
  %30 = getelementptr inbounds i8, i8* %29, i64 -1
  store i8 %28, i8* %30, align 1
  br label %96

31:                                               ; preds = %15
  %32 = load i32, i32* %5, align 4
  %33 = icmp eq i32 %32, 6
  br i1 %33, label %34, label %42

34:                                               ; preds = %31
  %35 = load i32, i32* @STRM_TAG_STRING_6, align 4
  store i32 %35, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %36 = load i32, i32* %8, align 4
  %37 = call i8* @VAL_PTR(i32 %36)
  store i8* %37, i8** %9, align 8
  %38 = load i8*, i8** %9, align 8
  %39 = load i8*, i8** %4, align 8
  %40 = load i32, i32* %5, align 4
  %41 = call i32 @memcpy(i8* %38, i8* %39, i32 %40)
  br label %95

42:                                               ; preds = %31
  %43 = load i8*, i8** %4, align 8
  %44 = icmp ne i8* %43, null
  br i1 %44, label %45, label %58

45:                                               ; preds = %42
  %46 = load i32, i32* %6, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %52, label %48

48:                                               ; preds = %45
  %49 = load i8*, i8** %4, align 8
  %50 = call i64 @readonly_data_p(i8* %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %58

52:                                               ; preds = %48, %45
  %53 = load i32, i32* @STRM_TAG_STRING_F, align 4
  store i32 %53, i32* %7, align 4
  %54 = call %struct.strm_string* @malloc(i32 16)
  store %struct.strm_string* %54, %struct.strm_string** %10, align 8
  %55 = load i8*, i8** %4, align 8
  %56 = load %struct.strm_string*, %struct.strm_string** %10, align 8
  %57 = getelementptr inbounds %struct.strm_string, %struct.strm_string* %56, i32 0, i32 0
  store i8* %55, i8** %57, align 8
  br label %89

58:                                               ; preds = %48, %42
  br label %59

59:                                               ; preds = %58, %14
  %60 = load i32, i32* @STRM_TAG_STRING_O, align 4
  store i32 %60, i32* %7, align 4
  %61 = load i32, i32* %5, align 4
  %62 = sext i32 %61 to i64
  %63 = add i64 16, %62
  %64 = add i64 %63, 1
  %65 = trunc i64 %64 to i32
  %66 = call %struct.strm_string* @malloc(i32 %65)
  store %struct.strm_string* %66, %struct.strm_string** %10, align 8
  %67 = load %struct.strm_string*, %struct.strm_string** %10, align 8
  %68 = getelementptr inbounds %struct.strm_string, %struct.strm_string* %67, i64 1
  %69 = bitcast %struct.strm_string* %68 to i8*
  store i8* %69, i8** %11, align 8
  %70 = load i8*, i8** %4, align 8
  %71 = icmp ne i8* %70, null
  br i1 %71, label %72, label %77

72:                                               ; preds = %59
  %73 = load i8*, i8** %11, align 8
  %74 = load i8*, i8** %4, align 8
  %75 = load i32, i32* %5, align 4
  %76 = call i32 @memcpy(i8* %73, i8* %74, i32 %75)
  br label %81

77:                                               ; preds = %59
  %78 = load i8*, i8** %11, align 8
  %79 = load i32, i32* %5, align 4
  %80 = call i32 @memset(i8* %78, i32 0, i32 %79)
  br label %81

81:                                               ; preds = %77, %72
  %82 = load i8*, i8** %11, align 8
  %83 = load i32, i32* %5, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds i8, i8* %82, i64 %84
  store i8 0, i8* %85, align 1
  %86 = load i8*, i8** %11, align 8
  %87 = load %struct.strm_string*, %struct.strm_string** %10, align 8
  %88 = getelementptr inbounds %struct.strm_string, %struct.strm_string* %87, i32 0, i32 0
  store i8* %86, i8** %88, align 8
  br label %89

89:                                               ; preds = %81, %52
  %90 = load i32, i32* %5, align 4
  %91 = load %struct.strm_string*, %struct.strm_string** %10, align 8
  %92 = getelementptr inbounds %struct.strm_string, %struct.strm_string* %91, i32 0, i32 1
  store i32 %90, i32* %92, align 8
  %93 = load %struct.strm_string*, %struct.strm_string** %10, align 8
  %94 = call i32 @strm_tag_vptr(%struct.strm_string* %93, i32 0)
  store i32 %94, i32* %8, align 4
  br label %95

95:                                               ; preds = %89, %34
  br label %96

96:                                               ; preds = %95, %18
  %97 = load i32, i32* %7, align 4
  %98 = load i32, i32* %8, align 4
  %99 = load i32, i32* @STRM_VAL_MASK, align 4
  %100 = and i32 %98, %99
  %101 = or i32 %97, %100
  ret i32 %101
}

declare dso_local i8* @VAL_PTR(i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i64 @readonly_data_p(i8*) #1

declare dso_local %struct.strm_string* @malloc(i32) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i32 @strm_tag_vptr(%struct.strm_string*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
