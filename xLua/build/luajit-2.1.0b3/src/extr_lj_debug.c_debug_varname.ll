; ModuleID = '/home/carl/AnghaBench/xLua/build/luajit-2.1.0b3/src/extr_lj_debug.c_debug_varname.c'
source_filename = "/home/carl/AnghaBench/xLua/build/luajit-2.1.0b3/src/extr_lj_debug.c_debug_varname.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@VARNAME__MAX = common dso_local global i64 0, align 8
@VARNAME_END = common dso_local global i64 0, align 8
@VARNAMESTR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i32*, i64, i32)* @debug_varname to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @debug_varname(i32* %0, i64 %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  store i32* %0, i32** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32 %2, i32* %7, align 4
  %14 = load i32*, i32** %5, align 8
  %15 = call i64 @proto_varinfo(i32* %14)
  %16 = inttoptr i64 %15 to i8*
  store i8* %16, i8** %8, align 8
  %17 = load i8*, i8** %8, align 8
  %18 = icmp ne i8* %17, null
  br i1 %18, label %19, label %95

19:                                               ; preds = %3
  store i64 0, i64* %9, align 8
  br label %20

20:                                               ; preds = %93, %19
  %21 = load i8*, i8** %8, align 8
  store i8* %21, i8** %10, align 8
  %22 = load i8*, i8** %8, align 8
  %23 = bitcast i8* %22 to i64*
  %24 = load i64, i64* %23, align 8
  store i64 %24, i64* %11, align 8
  %25 = load i64, i64* %11, align 8
  %26 = load i64, i64* @VARNAME__MAX, align 8
  %27 = icmp slt i64 %25, %26
  br i1 %27, label %28, label %34

28:                                               ; preds = %20
  %29 = load i64, i64* %11, align 8
  %30 = load i64, i64* @VARNAME_END, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %32, label %33

32:                                               ; preds = %28
  br label %94

33:                                               ; preds = %28
  br label %44

34:                                               ; preds = %20
  br label %35

35:                                               ; preds = %38, %34
  %36 = load i8*, i8** %8, align 8
  %37 = getelementptr inbounds i8, i8* %36, i32 1
  store i8* %37, i8** %8, align 8
  br label %38

38:                                               ; preds = %35
  %39 = load i8*, i8** %8, align 8
  %40 = bitcast i8* %39 to i64*
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %35, label %43

43:                                               ; preds = %38
  br label %44

44:                                               ; preds = %43, %33
  %45 = load i8*, i8** %8, align 8
  %46 = getelementptr inbounds i8, i8* %45, i32 1
  store i8* %46, i8** %8, align 8
  %47 = load i64, i64* %9, align 8
  %48 = call i64 @lj_buf_ruleb128(i8** %8)
  %49 = add nsw i64 %47, %48
  store i64 %49, i64* %12, align 8
  store i64 %49, i64* %9, align 8
  %50 = load i64, i64* %12, align 8
  %51 = load i64, i64* %6, align 8
  %52 = icmp sgt i64 %50, %51
  br i1 %52, label %53, label %54

53:                                               ; preds = %44
  br label %94

54:                                               ; preds = %44
  %55 = load i64, i64* %12, align 8
  %56 = call i64 @lj_buf_ruleb128(i8** %8)
  %57 = add nsw i64 %55, %56
  store i64 %57, i64* %13, align 8
  %58 = load i64, i64* %6, align 8
  %59 = load i64, i64* %13, align 8
  %60 = icmp slt i64 %58, %59
  br i1 %60, label %61, label %93

61:                                               ; preds = %54
  %62 = load i32, i32* %7, align 4
  %63 = add nsw i32 %62, -1
  store i32 %63, i32* %7, align 4
  %64 = icmp eq i32 %62, 0
  br i1 %64, label %65, label %93

65:                                               ; preds = %61
  %66 = load i64, i64* %11, align 8
  %67 = load i64, i64* @VARNAME__MAX, align 8
  %68 = icmp slt i64 %66, %67
  br i1 %68, label %69, label %91

69:                                               ; preds = %65
  %70 = load i32, i32* @VARNAMESTR, align 4
  %71 = call i8* @VARNAMEDEF(i32 %70)
  store i8* %71, i8** %10, align 8
  %72 = load i64, i64* %11, align 8
  %73 = add nsw i64 %72, -1
  store i64 %73, i64* %11, align 8
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %90

75:                                               ; preds = %69
  br label %76

76:                                               ; preds = %88, %75
  %77 = load i8*, i8** %10, align 8
  %78 = getelementptr inbounds i8, i8* %77, i32 1
  store i8* %78, i8** %10, align 8
  %79 = load i8, i8* %77, align 1
  %80 = sext i8 %79 to i32
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %86, label %82

82:                                               ; preds = %76
  %83 = load i64, i64* %11, align 8
  %84 = add nsw i64 %83, -1
  store i64 %84, i64* %11, align 8
  %85 = icmp ne i64 %84, 0
  br label %86

86:                                               ; preds = %82, %76
  %87 = phi i1 [ true, %76 ], [ %85, %82 ]
  br i1 %87, label %88, label %89

88:                                               ; preds = %86
  br label %76

89:                                               ; preds = %86
  br label %90

90:                                               ; preds = %89, %69
  br label %91

91:                                               ; preds = %90, %65
  %92 = load i8*, i8** %10, align 8
  store i8* %92, i8** %4, align 8
  br label %96

93:                                               ; preds = %61, %54
  br label %20

94:                                               ; preds = %53, %32
  br label %95

95:                                               ; preds = %94, %3
  store i8* null, i8** %4, align 8
  br label %96

96:                                               ; preds = %95, %91
  %97 = load i8*, i8** %4, align 8
  ret i8* %97
}

declare dso_local i64 @proto_varinfo(i32*) #1

declare dso_local i64 @lj_buf_ruleb128(i8**) #1

declare dso_local i8* @VARNAMEDEF(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
