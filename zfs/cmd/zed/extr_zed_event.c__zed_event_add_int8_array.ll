; ModuleID = '/home/carl/AnghaBench/zfs/cmd/zed/extr_zed_event.c__zed_event_add_int8_array.c'
source_filename = "/home/carl/AnghaBench/zfs/cmd/zed/extr_zed_event.c__zed_event_add_int8_array.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MAXBUF = common dso_local global i32 0, align 4
@DATA_TYPE_INT8_ARRAY = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [4 x i8] c"%d \00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32*, i8*, i32*)* @_zed_event_add_int8_array to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_zed_event_add_int8_array(i32 %0, i32* %1, i8* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i32*, align 8
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
  %30 = load i64, i64* @DATA_TYPE_INT8_ARRAY, align 8
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
  %39 = call i32 @nvpair_value_int8_array(i32* %38, i32** %14, i64* %15)
  store i64 0, i64* %16, align 8
  store i8* %23, i8** %17, align 8
  br label %40

40:                                               ; preds = %75, %32
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
  br i1 %48, label %49, label %78

49:                                               ; preds = %47
  %50 = load i8*, i8** %17, align 8
  %51 = load i32, i32* %12, align 4
  %52 = load i32*, i32** %14, align 8
  %53 = load i64, i64* %16, align 8
  %54 = getelementptr inbounds i32, i32* %52, i64 %53
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @snprintf(i8* %50, i32 %51, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %55)
  store i32 %56, i32* %18, align 4
  %57 = load i32, i32* %18, align 4
  %58 = icmp slt i32 %57, 0
  br i1 %58, label %63, label %59

59:                                               ; preds = %49
  %60 = load i32, i32* %18, align 4
  %61 = load i32, i32* %12, align 4
  %62 = icmp sge i32 %60, %61
  br i1 %62, label %63, label %67

63:                                               ; preds = %59, %49
  %64 = load i32, i32* %6, align 4
  %65 = load i8*, i8** %13, align 8
  %66 = call i32 @_zed_event_add_array_err(i32 %64, i8* %65)
  store i32 %66, i32* %5, align 4
  store i32 1, i32* %19, align 4
  br label %90

67:                                               ; preds = %59
  %68 = load i32, i32* %18, align 4
  %69 = load i8*, i8** %17, align 8
  %70 = sext i32 %68 to i64
  %71 = getelementptr inbounds i8, i8* %69, i64 %70
  store i8* %71, i8** %17, align 8
  %72 = load i32, i32* %18, align 4
  %73 = load i32, i32* %12, align 4
  %74 = sub nsw i32 %73, %72
  store i32 %74, i32* %12, align 4
  br label %75

75:                                               ; preds = %67
  %76 = load i64, i64* %16, align 8
  %77 = add i64 %76, 1
  store i64 %77, i64* %16, align 8
  br label %40

78:                                               ; preds = %47
  %79 = load i64, i64* %15, align 8
  %80 = icmp ugt i64 %79, 0
  br i1 %80, label %81, label %84

81:                                               ; preds = %78
  %82 = load i8*, i8** %17, align 8
  %83 = getelementptr inbounds i8, i8* %82, i32 -1
  store i8* %83, i8** %17, align 8
  store i8 0, i8* %83, align 1
  br label %84

84:                                               ; preds = %81, %78
  %85 = load i32, i32* %6, align 4
  %86 = load i32*, i32** %7, align 8
  %87 = load i8*, i8** %8, align 8
  %88 = load i8*, i8** %13, align 8
  %89 = call i32 @_zed_event_add_var(i32 %85, i32* %86, i8* %87, i8* %88, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* %23)
  store i32 %89, i32* %5, align 4
  store i32 1, i32* %19, align 4
  br label %90

90:                                               ; preds = %84, %63
  %91 = load i8*, i8** %10, align 8
  call void @llvm.stackrestore(i8* %91)
  %92 = load i32, i32* %5, align 4
  ret i32 %92
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @assert(i32) #2

declare dso_local i64 @nvpair_type(i32*) #2

declare dso_local i8* @nvpair_name(i32*) #2

declare dso_local i32 @nvpair_value_int8_array(i32*, i32**, i64*) #2

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #2

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
