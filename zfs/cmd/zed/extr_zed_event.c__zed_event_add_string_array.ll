; ModuleID = '/home/carl/AnghaBench/zfs/cmd/zed/extr_zed_event.c__zed_event_add_string_array.c'
source_filename = "/home/carl/AnghaBench/zfs/cmd/zed/extr_zed_event.c__zed_event_add_string_array.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MAXBUF = common dso_local global i32 0, align 4
@DATA_TYPE_STRING_ARRAY = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [4 x i8] c"%s \00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"<NULL>\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32*, i8*, i32*)* @_zed_event_add_string_array to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_zed_event_add_string_array(i32 %0, i32* %1, i8* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i8**, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i32* %1, i32** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32* %3, i32** %9, align 8
  %20 = load i32, i32* @MAXBUF, align 4
  %21 = zext i32 %20 to i64
  %22 = call i8* @llvm.stacksave()
  store i8* %22, i8** %10, align 8
  %23 = alloca i8, i64 %21, align 16
  store i64 %21, i64* %11, align 8
  %24 = trunc i64 %21 to i32
  store i32 %24, i32* %12, align 4
  %25 = load i32*, i32** %9, align 8
  %26 = icmp ne i32* %25, null
  br i1 %26, label %27, label %32

27:                                               ; preds = %4
  %28 = load i32*, i32** %9, align 8
  %29 = call i64 @nvpair_type(i32* %28)
  %30 = load i64, i64* @DATA_TYPE_STRING_ARRAY, align 8
  %31 = icmp eq i64 %29, %30
  br label %32

32:                                               ; preds = %27, %4
  %33 = phi i1 [ false, %4 ], [ %31, %27 ]
  %34 = zext i1 %33 to i32
  %35 = call i32 @assert(i32 %34)
  %36 = load i32*, i32** %9, align 8
  %37 = call i8* @nvpair_name(i32* %36)
  store i8* %37, i8** %13, align 8
  %38 = load i32*, i32** %9, align 8
  %39 = call i32 @nvpair_value_string_array(i32* %38, i8*** %14, i64* %15)
  store i64 0, i64* %16, align 8
  store i8* %23, i8** %17, align 8
  br label %40

40:                                               ; preds = %84, %32
  %41 = load i64, i64* %16, align 8
  %42 = load i64, i64* %15, align 8
  %43 = icmp ult i64 %41, %42
  br i1 %43, label %44, label %47

44:                                               ; preds = %40
  %45 = load i32, i32* %12, align 4
  %46 = icmp sgt i32 %45, 0
  br label %47

47:                                               ; preds = %44, %40
  %48 = phi i1 [ false, %40 ], [ %46, %44 ]
  br i1 %48, label %49, label %87

49:                                               ; preds = %47
  %50 = load i8*, i8** %17, align 8
  %51 = load i32, i32* %12, align 4
  %52 = load i8**, i8*** %14, align 8
  %53 = load i64, i64* %16, align 8
  %54 = getelementptr inbounds i8*, i8** %52, i64 %53
  %55 = load i8*, i8** %54, align 8
  %56 = icmp ne i8* %55, null
  br i1 %56, label %57, label %62

57:                                               ; preds = %49
  %58 = load i8**, i8*** %14, align 8
  %59 = load i64, i64* %16, align 8
  %60 = getelementptr inbounds i8*, i8** %58, i64 %59
  %61 = load i8*, i8** %60, align 8
  br label %63

62:                                               ; preds = %49
  br label %63

63:                                               ; preds = %62, %57
  %64 = phi i8* [ %61, %57 ], [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), %62 ]
  %65 = call i32 @snprintf(i8* %50, i32 %51, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8* %64)
  store i32 %65, i32* %18, align 4
  %66 = load i32, i32* %18, align 4
  %67 = icmp slt i32 %66, 0
  br i1 %67, label %72, label %68

68:                                               ; preds = %63
  %69 = load i32, i32* %18, align 4
  %70 = load i32, i32* %12, align 4
  %71 = icmp sge i32 %69, %70
  br i1 %71, label %72, label %76

72:                                               ; preds = %68, %63
  %73 = load i32, i32* %6, align 4
  %74 = load i8*, i8** %13, align 8
  %75 = call i32 @_zed_event_add_array_err(i32 %73, i8* %74)
  store i32 %75, i32* %5, align 4
  store i32 1, i32* %19, align 4
  br label %99

76:                                               ; preds = %68
  %77 = load i32, i32* %18, align 4
  %78 = load i8*, i8** %17, align 8
  %79 = sext i32 %77 to i64
  %80 = getelementptr inbounds i8, i8* %78, i64 %79
  store i8* %80, i8** %17, align 8
  %81 = load i32, i32* %18, align 4
  %82 = load i32, i32* %12, align 4
  %83 = sub nsw i32 %82, %81
  store i32 %83, i32* %12, align 4
  br label %84

84:                                               ; preds = %76
  %85 = load i64, i64* %16, align 8
  %86 = add i64 %85, 1
  store i64 %86, i64* %16, align 8
  br label %40

87:                                               ; preds = %47
  %88 = load i64, i64* %15, align 8
  %89 = icmp ugt i64 %88, 0
  br i1 %89, label %90, label %93

90:                                               ; preds = %87
  %91 = load i8*, i8** %17, align 8
  %92 = getelementptr inbounds i8, i8* %91, i32 -1
  store i8* %92, i8** %17, align 8
  store i8 0, i8* %92, align 1
  br label %93

93:                                               ; preds = %90, %87
  %94 = load i32, i32* %6, align 4
  %95 = load i32*, i32** %7, align 8
  %96 = load i8*, i8** %8, align 8
  %97 = load i8*, i8** %13, align 8
  %98 = call i32 @_zed_event_add_var(i32 %94, i32* %95, i8* %96, i8* %97, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i8* %23)
  store i32 %98, i32* %5, align 4
  store i32 1, i32* %19, align 4
  br label %99

99:                                               ; preds = %93, %72
  %100 = load i8*, i8** %10, align 8
  call void @llvm.stackrestore(i8* %100)
  %101 = load i32, i32* %5, align 4
  ret i32 %101
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @assert(i32) #2

declare dso_local i64 @nvpair_type(i32*) #2

declare dso_local i8* @nvpair_name(i32*) #2

declare dso_local i32 @nvpair_value_string_array(i32*, i8***, i64*) #2

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*) #2

declare dso_local i32 @_zed_event_add_array_err(i32, i8*) #2

declare dso_local i32 @_zed_event_add_var(i32, i32*, i8*, i8*, i8*, i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
