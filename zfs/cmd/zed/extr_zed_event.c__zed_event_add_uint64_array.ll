; ModuleID = '/home/carl/AnghaBench/zfs/cmd/zed/extr_zed_event.c__zed_event_add_uint64_array.c'
source_filename = "/home/carl/AnghaBench/zfs/cmd/zed/extr_zed_event.c__zed_event_add_uint64_array.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MAXBUF = common dso_local global i32 0, align 4
@DATA_TYPE_UINT64_ARRAY = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [11 x i8] c"0x%.16llX \00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"%llu \00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, i32*, i8*, i32*)* @_zed_event_add_uint64_array to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_zed_event_add_uint64_array(i64 %0, i32* %1, i8* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i64*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store i64 %0, i64* %6, align 8
  store i32* %1, i32** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32* %3, i32** %9, align 8
  %21 = load i32, i32* @MAXBUF, align 4
  %22 = zext i32 %21 to i64
  %23 = call i8* @llvm.stacksave()
  store i8* %23, i8** %10, align 8
  %24 = alloca i8, i64 %22, align 16
  store i64 %22, i64* %11, align 8
  %25 = trunc i64 %22 to i32
  store i32 %25, i32* %12, align 4
  %26 = load i32*, i32** %9, align 8
  %27 = icmp ne i32* %26, null
  br i1 %27, label %28, label %33

28:                                               ; preds = %4
  %29 = load i32*, i32** %9, align 8
  %30 = call i64 @nvpair_type(i32* %29)
  %31 = load i64, i64* @DATA_TYPE_UINT64_ARRAY, align 8
  %32 = icmp eq i64 %30, %31
  br label %33

33:                                               ; preds = %28, %4
  %34 = phi i1 [ false, %4 ], [ %32, %28 ]
  %35 = zext i1 %34 to i32
  %36 = call i32 @assert(i32 %35)
  %37 = load i32*, i32** %9, align 8
  %38 = call i8* @nvpair_name(i32* %37)
  store i8* %38, i8** %13, align 8
  %39 = load i8*, i8** %13, align 8
  %40 = call i64 @_zed_event_value_is_hex(i8* %39)
  %41 = icmp ne i64 %40, 0
  %42 = zext i1 %41 to i64
  %43 = select i1 %41, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0)
  store i8* %43, i8** %14, align 8
  %44 = load i32*, i32** %9, align 8
  %45 = call i32 @nvpair_value_uint64_array(i32* %44, i64** %15, i64* %16)
  store i64 0, i64* %17, align 8
  store i8* %24, i8** %18, align 8
  br label %46

46:                                               ; preds = %83, %33
  %47 = load i64, i64* %17, align 8
  %48 = load i64, i64* %16, align 8
  %49 = icmp ult i64 %47, %48
  br i1 %49, label %50, label %53

50:                                               ; preds = %46
  %51 = load i32, i32* %12, align 4
  %52 = icmp sgt i32 %51, 0
  br label %53

53:                                               ; preds = %50, %46
  %54 = phi i1 [ false, %46 ], [ %52, %50 ]
  br i1 %54, label %55, label %86

55:                                               ; preds = %53
  %56 = load i8*, i8** %18, align 8
  %57 = load i32, i32* %12, align 4
  %58 = load i8*, i8** %14, align 8
  %59 = load i64*, i64** %15, align 8
  %60 = load i64, i64* %17, align 8
  %61 = getelementptr inbounds i64, i64* %59, i64 %60
  %62 = load i64, i64* %61, align 8
  %63 = trunc i64 %62 to i32
  %64 = call i32 @snprintf(i8* %56, i32 %57, i8* %58, i32 %63)
  store i32 %64, i32* %19, align 4
  %65 = load i32, i32* %19, align 4
  %66 = icmp slt i32 %65, 0
  br i1 %66, label %71, label %67

67:                                               ; preds = %55
  %68 = load i32, i32* %19, align 4
  %69 = load i32, i32* %12, align 4
  %70 = icmp sge i32 %68, %69
  br i1 %70, label %71, label %75

71:                                               ; preds = %67, %55
  %72 = load i64, i64* %6, align 8
  %73 = load i8*, i8** %13, align 8
  %74 = call i32 @_zed_event_add_array_err(i64 %72, i8* %73)
  store i32 %74, i32* %5, align 4
  store i32 1, i32* %20, align 4
  br label %98

75:                                               ; preds = %67
  %76 = load i32, i32* %19, align 4
  %77 = load i8*, i8** %18, align 8
  %78 = sext i32 %76 to i64
  %79 = getelementptr inbounds i8, i8* %77, i64 %78
  store i8* %79, i8** %18, align 8
  %80 = load i32, i32* %19, align 4
  %81 = load i32, i32* %12, align 4
  %82 = sub nsw i32 %81, %80
  store i32 %82, i32* %12, align 4
  br label %83

83:                                               ; preds = %75
  %84 = load i64, i64* %17, align 8
  %85 = add i64 %84, 1
  store i64 %85, i64* %17, align 8
  br label %46

86:                                               ; preds = %53
  %87 = load i64, i64* %16, align 8
  %88 = icmp ugt i64 %87, 0
  br i1 %88, label %89, label %92

89:                                               ; preds = %86
  %90 = load i8*, i8** %18, align 8
  %91 = getelementptr inbounds i8, i8* %90, i32 -1
  store i8* %91, i8** %18, align 8
  store i8 0, i8* %91, align 1
  br label %92

92:                                               ; preds = %89, %86
  %93 = load i64, i64* %6, align 8
  %94 = load i32*, i32** %7, align 8
  %95 = load i8*, i8** %8, align 8
  %96 = load i8*, i8** %13, align 8
  %97 = call i32 @_zed_event_add_var(i64 %93, i32* %94, i8* %95, i8* %96, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i8* %24)
  store i32 %97, i32* %5, align 4
  store i32 1, i32* %20, align 4
  br label %98

98:                                               ; preds = %92, %71
  %99 = load i8*, i8** %10, align 8
  call void @llvm.stackrestore(i8* %99)
  %100 = load i32, i32* %5, align 4
  ret i32 %100
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @assert(i32) #2

declare dso_local i64 @nvpair_type(i32*) #2

declare dso_local i8* @nvpair_name(i32*) #2

declare dso_local i64 @_zed_event_value_is_hex(i8*) #2

declare dso_local i32 @nvpair_value_uint64_array(i32*, i64**, i64*) #2

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #2

declare dso_local i32 @_zed_event_add_array_err(i64, i8*) #2

declare dso_local i32 @_zed_event_add_var(i64, i32*, i8*, i8*, i8*, i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
