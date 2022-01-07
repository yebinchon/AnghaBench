; ModuleID = '/home/carl/AnghaBench/xLua/build/luajit-2.1.0b2/src/extr_lj_buf.c_lj_buf_puttab.c'
source_filename = "/home/carl/AnghaBench/xLua/build/luajit-2.1.0b2/src/extr_lj_buf.c_lj_buf_puttab.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64 }
%struct.TYPE_6__ = type { i64 }

@STRFMT_MAXBUF_INT = common dso_local global i64 0, align 8
@STRFMT_G14 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @lj_buf_puttab(i32* %0, i32* %1, %struct.TYPE_5__* %2, i64 %3, i64 %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_5__*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i64, align 8
  store i32* %0, i32** %7, align 8
  store i32* %1, i32** %8, align 8
  store %struct.TYPE_5__* %2, %struct.TYPE_5__** %9, align 8
  store i64 %3, i64* %10, align 8
  store i64 %4, i64* %11, align 8
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %17 = icmp ne %struct.TYPE_5__* %16, null
  br i1 %17, label %18, label %22

18:                                               ; preds = %5
  %19 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  br label %23

22:                                               ; preds = %5
  br label %23

23:                                               ; preds = %22, %18
  %24 = phi i64 [ %21, %18 ], [ 0, %22 ]
  store i64 %24, i64* %12, align 8
  %25 = load i64, i64* %10, align 8
  %26 = load i64, i64* %11, align 8
  %27 = icmp sle i64 %25, %26
  br i1 %27, label %28, label %111

28:                                               ; preds = %23
  br label %29

29:                                               ; preds = %106, %28
  %30 = load i32*, i32** %8, align 8
  %31 = load i64, i64* %10, align 8
  %32 = call i32* @lj_tab_getint(i32* %30, i64 %31)
  store i32* %32, i32** %13, align 8
  %33 = load i32*, i32** %13, align 8
  %34 = icmp ne i32* %33, null
  br i1 %34, label %41, label %35

35:                                               ; preds = %29
  br label %36

36:                                               ; preds = %84, %35
  %37 = load i32*, i32** %7, align 8
  %38 = load i64, i64* %10, align 8
  %39 = inttoptr i64 %38 to i8*
  %40 = call i32 @setsbufP(i32* %37, i8* %39)
  store i32* null, i32** %6, align 8
  br label %113

41:                                               ; preds = %29
  %42 = load i32*, i32** %13, align 8
  %43 = call i64 @tvisstr(i32* %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %59

45:                                               ; preds = %41
  %46 = load i32*, i32** %13, align 8
  %47 = call %struct.TYPE_6__* @strV(i32* %46)
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  store i64 %49, i64* %15, align 8
  %50 = load i32*, i32** %7, align 8
  %51 = load i64, i64* %15, align 8
  %52 = load i64, i64* %12, align 8
  %53 = add nsw i64 %51, %52
  %54 = call i8* @lj_buf_more(i32* %50, i64 %53)
  %55 = load i32*, i32** %13, align 8
  %56 = call i32 @strVdata(i32* %55)
  %57 = load i64, i64* %15, align 8
  %58 = call i8* @lj_buf_wmem(i8* %54, i32 %56, i64 %57)
  store i8* %58, i8** %14, align 8
  br label %87

59:                                               ; preds = %41
  %60 = load i32*, i32** %13, align 8
  %61 = call i64 @tvisint(i32* %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %72

63:                                               ; preds = %59
  %64 = load i32*, i32** %7, align 8
  %65 = load i64, i64* @STRFMT_MAXBUF_INT, align 8
  %66 = load i64, i64* %12, align 8
  %67 = add nsw i64 %65, %66
  %68 = call i8* @lj_buf_more(i32* %64, i64 %67)
  %69 = load i32*, i32** %13, align 8
  %70 = call i32 @intV(i32* %69)
  %71 = call i8* @lj_strfmt_wint(i8* %68, i32 %70)
  store i8* %71, i8** %14, align 8
  br label %86

72:                                               ; preds = %59
  %73 = load i32*, i32** %13, align 8
  %74 = call i64 @tvisnum(i32* %73)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %84

76:                                               ; preds = %72
  %77 = load i32*, i32** %7, align 8
  %78 = load i32, i32* @STRFMT_G14, align 4
  %79 = load i32*, i32** %13, align 8
  %80 = call i32 @numV(i32* %79)
  %81 = call i32* @lj_strfmt_putfnum(i32* %77, i32 %78, i32 %80)
  %82 = load i64, i64* %12, align 8
  %83 = call i8* @lj_buf_more(i32* %81, i64 %82)
  store i8* %83, i8** %14, align 8
  br label %85

84:                                               ; preds = %72
  br label %36

85:                                               ; preds = %76
  br label %86

86:                                               ; preds = %85, %63
  br label %87

87:                                               ; preds = %86, %45
  br label %88

88:                                               ; preds = %87
  %89 = load i64, i64* %10, align 8
  %90 = add nsw i64 %89, 1
  store i64 %90, i64* %10, align 8
  %91 = load i64, i64* %11, align 8
  %92 = icmp eq i64 %89, %91
  br i1 %92, label %93, label %97

93:                                               ; preds = %88
  %94 = load i32*, i32** %7, align 8
  %95 = load i8*, i8** %14, align 8
  %96 = call i32 @setsbufP(i32* %94, i8* %95)
  br label %110

97:                                               ; preds = %88
  %98 = load i64, i64* %12, align 8
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %106

100:                                              ; preds = %97
  %101 = load i8*, i8** %14, align 8
  %102 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %103 = call i32 @strdata(%struct.TYPE_5__* %102)
  %104 = load i64, i64* %12, align 8
  %105 = call i8* @lj_buf_wmem(i8* %101, i32 %103, i64 %104)
  store i8* %105, i8** %14, align 8
  br label %106

106:                                              ; preds = %100, %97
  %107 = load i32*, i32** %7, align 8
  %108 = load i8*, i8** %14, align 8
  %109 = call i32 @setsbufP(i32* %107, i8* %108)
  br label %29

110:                                              ; preds = %93
  br label %111

111:                                              ; preds = %110, %23
  %112 = load i32*, i32** %7, align 8
  store i32* %112, i32** %6, align 8
  br label %113

113:                                              ; preds = %111, %36
  %114 = load i32*, i32** %6, align 8
  ret i32* %114
}

declare dso_local i32* @lj_tab_getint(i32*, i64) #1

declare dso_local i32 @setsbufP(i32*, i8*) #1

declare dso_local i64 @tvisstr(i32*) #1

declare dso_local %struct.TYPE_6__* @strV(i32*) #1

declare dso_local i8* @lj_buf_wmem(i8*, i32, i64) #1

declare dso_local i8* @lj_buf_more(i32*, i64) #1

declare dso_local i32 @strVdata(i32*) #1

declare dso_local i64 @tvisint(i32*) #1

declare dso_local i8* @lj_strfmt_wint(i8*, i32) #1

declare dso_local i32 @intV(i32*) #1

declare dso_local i64 @tvisnum(i32*) #1

declare dso_local i32* @lj_strfmt_putfnum(i32*, i32, i32) #1

declare dso_local i32 @numV(i32*) #1

declare dso_local i32 @strdata(%struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
